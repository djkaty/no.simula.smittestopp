package com.microsoft.azure.storage.file;

import com.microsoft.azure.proton.transport.proxy.impl.DigestProxyChallengeProcessorImpl;
import com.microsoft.azure.storage.AccessCondition;
import com.microsoft.azure.storage.Constants;
import com.microsoft.azure.storage.DoesServiceRequest;
import com.microsoft.azure.storage.OperationContext;
import com.microsoft.azure.storage.StorageErrorCode;
import com.microsoft.azure.storage.StorageErrorCodeStrings;
import com.microsoft.azure.storage.StorageException;
import com.microsoft.azure.storage.StorageExtendedErrorInformation;
import com.microsoft.azure.storage.core.Base64;
import com.microsoft.azure.storage.core.SR;
import com.microsoft.azure.storage.core.Utility;
import java.io.ByteArrayInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;

public class FileInputStream extends InputStream {
    public AccessCondition accessCondition;
    public int bufferSize;
    public long bufferStartOffset;
    public long currentAbsoluteReadPosition;
    public ByteArrayInputStream currentBuffer;
    public IOException lastError;
    public int markExpiry;
    public long markedPosition;
    public MessageDigest md5Digest;
    public final OperationContext opContext;
    public final FileRequestOptions options;
    public final CloudFile parentFileRef;
    public final int readSize;
    public final String retrievedContentMD5Value;
    public volatile boolean streamFaulted;
    public long streamLength = -1;
    public boolean validateFileMd5;

    @DoesServiceRequest
    public FileInputStream(CloudFile cloudFile, AccessCondition accessCondition2, FileRequestOptions fileRequestOptions, OperationContext operationContext) {
        String str = null;
        this.accessCondition = null;
        this.parentFileRef = cloudFile;
        this.options = new FileRequestOptions(fileRequestOptions);
        this.opContext = operationContext;
        boolean z = false;
        this.streamFaulted = false;
        this.currentAbsoluteReadPosition = 0;
        this.readSize = cloudFile.getStreamMinimumReadSizeInBytes();
        if (!fileRequestOptions.getUseTransactionalContentMD5().booleanValue() || this.readSize <= 4194304) {
            cloudFile.downloadAttributes(accessCondition2, this.options, this.opContext);
            this.retrievedContentMD5Value = cloudFile.getProperties().getContentMD5();
            if (!fileRequestOptions.getDisableContentMD5Validation().booleanValue() && !Utility.isNullOrEmpty(this.retrievedContentMD5Value)) {
                z = true;
            }
            this.validateFileMd5 = z;
            str = accessCondition2 != null ? accessCondition2.getLeaseID() : str;
            AccessCondition generateIfMatchCondition = AccessCondition.generateIfMatchCondition(this.parentFileRef.getProperties().getEtag());
            this.accessCondition = generateIfMatchCondition;
            generateIfMatchCondition.setLeaseID(str);
            this.streamLength = cloudFile.getProperties().getLength();
            if (this.validateFileMd5) {
                try {
                    this.md5Digest = MessageDigest.getInstance(DigestProxyChallengeProcessorImpl.DEFAULT_ALGORITHM);
                } catch (NoSuchAlgorithmException e2) {
                    throw Utility.generateNewUnexpectedStorageException(e2);
                }
            }
            reposition(0);
            return;
        }
        throw new IllegalArgumentException(SR.INVALID_RANGE_CONTENT_MD5_HEADER);
    }

    private synchronized void checkStreamState() {
        if (this.streamFaulted) {
            throw this.lastError;
        }
    }

    @DoesServiceRequest
    private synchronized void dispatchRead(int i2) {
        try {
            byte[] bArr = new byte[i2];
            this.parentFileRef.downloadRangeInternal(this.currentAbsoluteReadPosition, Long.valueOf((long) i2), bArr, 0, (AccessCondition) null, this.options, this.opContext);
            if (this.accessCondition != null) {
                if (!this.accessCondition.getIfMatch().equals(this.parentFileRef.getProperties().getEtag())) {
                    StorageErrorCode storageErrorCode = StorageErrorCode.CONDITION_FAILED;
                    throw new StorageException("CONDITION_FAILED", SR.INVALID_CONDITIONAL_HEADERS, 412, (StorageExtendedErrorInformation) null, (Exception) null);
                }
            }
            this.currentBuffer = new ByteArrayInputStream(bArr);
            this.bufferSize = i2;
            this.bufferStartOffset = this.currentAbsoluteReadPosition;
        } catch (StorageException e2) {
            this.streamFaulted = true;
            IOException initIOException = Utility.initIOException(e2);
            this.lastError = initIOException;
            throw initIOException;
        }
    }

    @DoesServiceRequest
    private synchronized int readInternal(byte[] bArr, int i2, int i3) {
        int read;
        checkStreamState();
        if ((this.currentBuffer == null || this.currentBuffer.available() == 0) && this.currentAbsoluteReadPosition < this.streamLength) {
            dispatchRead((int) Math.min((long) this.readSize, this.streamLength - this.currentAbsoluteReadPosition));
        }
        read = this.currentBuffer.read(bArr, i2, Math.min(i3, this.readSize));
        if (read > 0) {
            this.currentAbsoluteReadPosition += (long) read;
            if (this.validateFileMd5) {
                this.md5Digest.update(bArr, i2, read);
                if (this.currentAbsoluteReadPosition == this.streamLength) {
                    String encode = Base64.encode(this.md5Digest.digest());
                    if (!encode.equals(this.retrievedContentMD5Value)) {
                        this.lastError = Utility.initIOException(new StorageException(StorageErrorCodeStrings.INVALID_MD5, String.format("File data corrupted (integrity check failed), Expected value is %s, retrieved %s", new Object[]{this.retrievedContentMD5Value, encode}), Constants.HeaderConstants.HTTP_UNUSED_306, (StorageExtendedErrorInformation) null, (Exception) null));
                        this.streamFaulted = true;
                        throw this.lastError;
                    }
                }
            }
        }
        if (this.markExpiry > 0 && this.markedPosition + ((long) this.markExpiry) < this.currentAbsoluteReadPosition) {
            this.markedPosition = 0;
            this.markExpiry = 0;
        }
        return read;
    }

    private synchronized void reposition(long j2) {
        this.currentAbsoluteReadPosition = j2;
        this.currentBuffer = new ByteArrayInputStream(new byte[0]);
    }

    public synchronized int available() {
        return this.bufferSize - ((int) (this.currentAbsoluteReadPosition - this.bufferStartOffset));
    }

    public synchronized void close() {
        this.currentBuffer = null;
        this.streamFaulted = true;
        this.lastError = new IOException(SR.STREAM_CLOSED);
    }

    public synchronized void mark(int i2) {
        this.markedPosition = this.currentAbsoluteReadPosition;
        this.markExpiry = i2;
    }

    public boolean markSupported() {
        return true;
    }

    @DoesServiceRequest
    public int read() {
        byte[] bArr = new byte[1];
        int read = read(bArr, 0, 1);
        if (read > 0) {
            return bArr[0] & 255;
        }
        if (read != 0) {
            return -1;
        }
        throw new IOException(SR.UNEXPECTED_STREAM_READ_ERROR);
    }

    public synchronized void reset() {
        if (this.markedPosition + ((long) this.markExpiry) >= this.currentAbsoluteReadPosition) {
            this.validateFileMd5 = false;
            this.md5Digest = null;
            reposition(this.markedPosition);
        } else {
            throw new IOException(SR.MARK_EXPIRED);
        }
    }

    public synchronized long skip(long j2) {
        int i2 = (j2 > 0 ? 1 : (j2 == 0 ? 0 : -1));
        if (i2 == 0) {
            return 0;
        }
        if (i2 >= 0) {
            if (this.currentAbsoluteReadPosition + j2 <= this.streamLength) {
                this.validateFileMd5 = false;
                this.md5Digest = null;
                reposition(this.currentAbsoluteReadPosition + j2);
                return j2;
            }
        }
        throw new IndexOutOfBoundsException();
    }

    @DoesServiceRequest
    public int read(byte[] bArr) {
        return read(bArr, 0, bArr.length);
    }

    @DoesServiceRequest
    public int read(byte[] bArr, int i2, int i3) {
        if (i2 >= 0 && i3 >= 0 && i3 <= bArr.length - i2) {
            return readInternal(bArr, i2, i3);
        }
        throw new IndexOutOfBoundsException();
    }
}
