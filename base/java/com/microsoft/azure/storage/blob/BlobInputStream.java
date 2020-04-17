package com.microsoft.azure.storage.blob;

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

public final class BlobInputStream extends InputStream {
    public AccessCondition accessCondition;
    public final long blobRangeOffset;
    public int bufferSize;
    public long bufferStartOffset;
    public long currentAbsoluteReadPosition;
    public ByteArrayInputStream currentBuffer;
    public IOException lastError;
    public int markExpiry;
    public long markedPosition;
    public MessageDigest md5Digest;
    public final OperationContext opContext;
    public final BlobRequestOptions options;
    public final CloudBlob parentBlobRef;
    public final int readSize;
    public final String retrievedContentMD5Value;
    public volatile boolean streamFaulted;
    public long streamLength;
    public boolean validateBlobMd5;

    @DoesServiceRequest
    public BlobInputStream(CloudBlob cloudBlob, AccessCondition accessCondition2, BlobRequestOptions blobRequestOptions, OperationContext operationContext) {
        this(0, (Long) null, cloudBlob, accessCondition2, blobRequestOptions, operationContext);
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
            this.parentBlobRef.downloadRangeInternal(this.currentAbsoluteReadPosition, Long.valueOf((long) i2), bArr, 0, this.accessCondition, this.options, this.opContext);
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
        if ((this.currentBuffer == null || this.currentBuffer.available() == 0) && this.currentAbsoluteReadPosition < this.streamLength + this.blobRangeOffset) {
            dispatchRead((int) Math.min((long) this.readSize, (this.streamLength + this.blobRangeOffset) - this.currentAbsoluteReadPosition));
        }
        read = this.currentBuffer.read(bArr, i2, Math.min(i3, this.readSize));
        if (read > 0) {
            this.currentAbsoluteReadPosition += (long) read;
            if (this.validateBlobMd5) {
                this.md5Digest.update(bArr, i2, read);
                if (this.currentAbsoluteReadPosition == this.streamLength + this.blobRangeOffset) {
                    String encode = Base64.encode(this.md5Digest.digest());
                    if (!encode.equals(this.retrievedContentMD5Value)) {
                        this.lastError = Utility.initIOException(new StorageException(StorageErrorCodeStrings.INVALID_MD5, String.format(SR.BLOB_DATA_CORRUPTED, new Object[]{this.retrievedContentMD5Value, encode}), Constants.HeaderConstants.HTTP_UNUSED_306, (StorageExtendedErrorInformation) null, (Exception) null));
                        this.streamFaulted = true;
                        throw this.lastError;
                    }
                }
            }
        }
        if (this.markExpiry > 0 && this.markedPosition + ((long) this.markExpiry) < this.currentAbsoluteReadPosition) {
            this.markedPosition = this.blobRangeOffset;
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
            this.validateBlobMd5 = false;
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
            if (this.currentAbsoluteReadPosition + j2 <= this.streamLength + this.blobRangeOffset) {
                this.validateBlobMd5 = false;
                this.md5Digest = null;
                reposition(this.currentAbsoluteReadPosition + j2);
                return j2;
            }
        }
        throw new IndexOutOfBoundsException();
    }

    @DoesServiceRequest
    public BlobInputStream(long j2, Long l2, CloudBlob cloudBlob, AccessCondition accessCondition2, BlobRequestOptions blobRequestOptions, OperationContext operationContext) {
        long j3;
        long j4 = j2;
        CloudBlob cloudBlob2 = cloudBlob;
        AccessCondition accessCondition3 = accessCondition2;
        String str = null;
        this.accessCondition = null;
        this.blobRangeOffset = j4;
        this.parentBlobRef = cloudBlob2;
        cloudBlob.assertCorrectBlobType();
        this.options = new BlobRequestOptions(blobRequestOptions);
        this.opContext = operationContext;
        this.streamFaulted = false;
        this.currentAbsoluteReadPosition = j4;
        this.readSize = cloudBlob.getStreamMinimumReadSizeInBytes();
        if (!blobRequestOptions.getUseTransactionalContentMD5().booleanValue() || this.readSize <= 4194304) {
            cloudBlob2.downloadAttributes(accessCondition3, this.options, this.opContext);
            Utility.assertInBounds("blobRangeOffset", j2, 0, cloudBlob.getProperties().getLength() - 1);
            if (l2 != null) {
                Utility.assertGreaterThanOrEqual("blobRangeLength", l2.longValue(), 0);
            }
            this.retrievedContentMD5Value = cloudBlob.getProperties().getContentMD5();
            this.validateBlobMd5 = !blobRequestOptions.getDisableContentMD5Validation().booleanValue() && !Utility.isNullOrEmpty(this.retrievedContentMD5Value);
            if (!(j4 == 0 && l2 == null)) {
                this.validateBlobMd5 = false;
            }
            if (accessCondition3 != null) {
                str = accessCondition2.getLeaseID();
                if (!accessCondition3.verifyConditional(this.parentBlobRef.getProperties().getEtag(), this.parentBlobRef.getProperties().getLastModified())) {
                    StorageErrorCode storageErrorCode = StorageErrorCode.CONDITION_FAILED;
                    throw new StorageException("CONDITION_FAILED", SR.INVALID_CONDITIONAL_HEADERS, 412, (StorageExtendedErrorInformation) null, (Exception) null);
                }
            }
            AccessCondition accessCondition4 = new AccessCondition();
            this.accessCondition = accessCondition4;
            accessCondition4.setLeaseID(str);
            if (!blobRequestOptions.getSkipEtagLocking()) {
                this.accessCondition.setIfMatch(this.parentBlobRef.getProperties().getEtag());
            }
            if (l2 == null) {
                j3 = this.parentBlobRef.getProperties().getLength() - this.blobRangeOffset;
            } else {
                j3 = Math.min(this.parentBlobRef.getProperties().getLength() - this.blobRangeOffset, l2.longValue());
            }
            this.streamLength = j3;
            if (this.validateBlobMd5) {
                try {
                    this.md5Digest = MessageDigest.getInstance(DigestProxyChallengeProcessorImpl.DEFAULT_ALGORITHM);
                } catch (NoSuchAlgorithmException e2) {
                    throw Utility.generateNewUnexpectedStorageException(e2);
                }
            }
            reposition(j2);
            return;
        }
        throw new IllegalArgumentException(SR.INVALID_RANGE_CONTENT_MD5_HEADER);
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
