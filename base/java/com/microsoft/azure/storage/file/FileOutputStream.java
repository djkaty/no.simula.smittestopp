package com.microsoft.azure.storage.file;

import com.microsoft.azure.proton.transport.proxy.impl.DigestProxyChallengeProcessorImpl;
import com.microsoft.azure.storage.AccessCondition;
import com.microsoft.azure.storage.DoesServiceRequest;
import com.microsoft.azure.storage.OperationContext;
import com.microsoft.azure.storage.StorageException;
import com.microsoft.azure.storage.core.Base64;
import com.microsoft.azure.storage.core.SR;
import com.microsoft.azure.storage.core.Utility;
import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.net.URISyntaxException;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.concurrent.Callable;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.ExecutorCompletionService;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;

public class FileOutputStream extends OutputStream {
    public AccessCondition accessCondition = null;
    public final ExecutorCompletionService<Void> completionService;
    public int currentBufferedBytes;
    public long currentOffset;
    public int internalWriteThreshold = -1;
    public IOException lastError;
    public Object lastErrorLock = new Object();
    public MessageDigest md5Digest;
    public OperationContext opContext;
    public FileRequestOptions options;
    public ByteArrayOutputStream outBuffer;
    public volatile int outstandingRequests;
    public final CloudFile parentFileRef;
    public volatile boolean streamFaulted;
    public final ExecutorService threadExecutor;

    @DoesServiceRequest
    public FileOutputStream(CloudFile cloudFile, long j2, AccessCondition accessCondition2, FileRequestOptions fileRequestOptions, OperationContext operationContext) {
        this.accessCondition = accessCondition2;
        this.parentFileRef = cloudFile;
        this.options = new FileRequestOptions(fileRequestOptions);
        this.outBuffer = new ByteArrayOutputStream();
        this.opContext = operationContext;
        this.streamFaulted = false;
        if (this.options.getConcurrentRequestCount().intValue() >= 1) {
            if (this.options.getStoreFileContentMD5().booleanValue()) {
                try {
                    this.md5Digest = MessageDigest.getInstance(DigestProxyChallengeProcessorImpl.DEFAULT_ALGORITHM);
                } catch (NoSuchAlgorithmException e2) {
                    throw Utility.generateNewUnexpectedStorageException(e2);
                }
            }
            this.threadExecutor = Executors.newFixedThreadPool(this.options.getConcurrentRequestCount().intValue());
            this.completionService = new ExecutorCompletionService<>(this.threadExecutor);
            this.internalWriteThreshold = (int) Math.min((long) this.parentFileRef.getStreamWriteSizeInBytes(), j2);
            return;
        }
        throw new IllegalArgumentException("ConcurrentRequestCount");
    }

    private void checkStreamState() {
        synchronized (this.lastErrorLock) {
            if (this.streamFaulted) {
                throw this.lastError;
            }
        }
    }

    @DoesServiceRequest
    private void commit() {
        if (this.options.getStoreFileContentMD5().booleanValue()) {
            this.parentFileRef.getProperties().setContentMD5(Base64.encode(this.md5Digest.digest()));
        }
        this.parentFileRef.uploadProperties(this.accessCondition, this.options, this.opContext);
    }

    @DoesServiceRequest
    private synchronized void dispatchWrite(int i2) {
        if (i2 != 0) {
            if (this.outstandingRequests > this.options.getConcurrentRequestCount().intValue() * 2) {
                waitForTaskToComplete();
            }
            final ByteArrayInputStream byteArrayInputStream = new ByteArrayInputStream(this.outBuffer.toByteArray());
            final CloudFile cloudFile = this.parentFileRef;
            final long j2 = this.currentOffset;
            final long j3 = (long) i2;
            this.currentOffset += j3;
            this.completionService.submit(new Callable<Void>() {
                /* JADX WARNING: No exception handlers in catch block: Catch:{  } */
                /* Code decompiled incorrectly, please refer to instructions dump. */
                public java.lang.Void call() {
                    /*
                        r10 = this;
                        r0 = 1
                        com.microsoft.azure.storage.file.CloudFile r1 = r2     // Catch:{ IOException -> 0x0030, StorageException -> 0x0019 }
                        java.io.ByteArrayInputStream r2 = r3     // Catch:{ IOException -> 0x0030, StorageException -> 0x0019 }
                        long r3 = r4     // Catch:{ IOException -> 0x0030, StorageException -> 0x0019 }
                        long r5 = r6     // Catch:{ IOException -> 0x0030, StorageException -> 0x0019 }
                        com.microsoft.azure.storage.file.FileOutputStream r7 = com.microsoft.azure.storage.file.FileOutputStream.this     // Catch:{ IOException -> 0x0030, StorageException -> 0x0019 }
                        com.microsoft.azure.storage.AccessCondition r7 = r7.accessCondition     // Catch:{ IOException -> 0x0030, StorageException -> 0x0019 }
                        com.microsoft.azure.storage.file.FileOutputStream r8 = com.microsoft.azure.storage.file.FileOutputStream.this     // Catch:{ IOException -> 0x0030, StorageException -> 0x0019 }
                        com.microsoft.azure.storage.file.FileRequestOptions r8 = r8.options     // Catch:{ IOException -> 0x0030, StorageException -> 0x0019 }
                        com.microsoft.azure.storage.file.FileOutputStream r9 = com.microsoft.azure.storage.file.FileOutputStream.this     // Catch:{ IOException -> 0x0030, StorageException -> 0x0019 }
                        com.microsoft.azure.storage.OperationContext r9 = r9.opContext     // Catch:{ IOException -> 0x0030, StorageException -> 0x0019 }
                        r1.uploadRange(r2, r3, r5, r7, r8, r9)     // Catch:{ IOException -> 0x0030, StorageException -> 0x0019 }
                        goto L_0x003f
                    L_0x0019:
                        r1 = move-exception
                        com.microsoft.azure.storage.file.FileOutputStream r2 = com.microsoft.azure.storage.file.FileOutputStream.this
                        java.lang.Object r2 = r2.lastErrorLock
                        monitor-enter(r2)
                        com.microsoft.azure.storage.file.FileOutputStream r3 = com.microsoft.azure.storage.file.FileOutputStream.this     // Catch:{ all -> 0x002d }
                        r3.streamFaulted = r0     // Catch:{ all -> 0x002d }
                        com.microsoft.azure.storage.file.FileOutputStream r0 = com.microsoft.azure.storage.file.FileOutputStream.this     // Catch:{ all -> 0x002d }
                        java.io.IOException r1 = com.microsoft.azure.storage.core.Utility.initIOException(r1)     // Catch:{ all -> 0x002d }
                        r0.lastError = r1     // Catch:{ all -> 0x002d }
                        monitor-exit(r2)     // Catch:{ all -> 0x002d }
                        goto L_0x003f
                    L_0x002d:
                        r0 = move-exception
                        monitor-exit(r2)     // Catch:{ all -> 0x002d }
                        throw r0
                    L_0x0030:
                        r1 = move-exception
                        com.microsoft.azure.storage.file.FileOutputStream r2 = com.microsoft.azure.storage.file.FileOutputStream.this
                        java.lang.Object r2 = r2.lastErrorLock
                        monitor-enter(r2)
                        com.microsoft.azure.storage.file.FileOutputStream r3 = com.microsoft.azure.storage.file.FileOutputStream.this     // Catch:{ all -> 0x0041 }
                        r3.streamFaulted = r0     // Catch:{ all -> 0x0041 }
                        com.microsoft.azure.storage.file.FileOutputStream r0 = com.microsoft.azure.storage.file.FileOutputStream.this     // Catch:{ all -> 0x0041 }
                        r0.lastError = r1     // Catch:{ all -> 0x0041 }
                        monitor-exit(r2)     // Catch:{ all -> 0x0041 }
                    L_0x003f:
                        r0 = 0
                        return r0
                    L_0x0041:
                        r0 = move-exception
                        monitor-exit(r2)     // Catch:{ all -> 0x0041 }
                        throw r0
                    */
                    throw new UnsupportedOperationException("Method not decompiled: com.microsoft.azure.storage.file.FileOutputStream.AnonymousClass1.call():java.lang.Void");
                }
            });
            this.outstandingRequests++;
            this.currentBufferedBytes = 0;
            this.outBuffer = new ByteArrayOutputStream();
        }
    }

    private void waitForTaskToComplete() {
        try {
            this.completionService.take().get();
            this.outstandingRequests--;
        } catch (InterruptedException e2) {
            throw Utility.initIOException(e2);
        } catch (ExecutionException e3) {
            throw Utility.initIOException(e3);
        }
    }

    @DoesServiceRequest
    private synchronized void writeInternal(byte[] bArr, int i2, int i3) {
        while (i3 > 0) {
            checkStreamState();
            int min = Math.min(this.internalWriteThreshold - this.currentBufferedBytes, i3);
            if (this.options.getStoreFileContentMD5().booleanValue()) {
                this.md5Digest.update(bArr, i2, min);
            }
            this.outBuffer.write(bArr, i2, min);
            int i4 = this.currentBufferedBytes + min;
            this.currentBufferedBytes = i4;
            i2 += min;
            i3 -= min;
            if (i4 == this.internalWriteThreshold) {
                dispatchWrite(this.internalWriteThreshold);
            }
        }
    }

    @DoesServiceRequest
    public void close() {
        try {
            checkStreamState();
            flush();
            this.threadExecutor.shutdown();
            commit();
            synchronized (this.lastErrorLock) {
                this.streamFaulted = true;
                this.lastError = new IOException(SR.STREAM_CLOSED);
            }
            if (!this.threadExecutor.isShutdown()) {
                this.threadExecutor.shutdownNow();
            }
        } catch (StorageException e2) {
            throw Utility.initIOException(e2);
        } catch (URISyntaxException e3) {
            throw Utility.initIOException(e3);
        } catch (Throwable th) {
            synchronized (this.lastErrorLock) {
                this.streamFaulted = true;
                this.lastError = new IOException(SR.STREAM_CLOSED);
                if (!this.threadExecutor.isShutdown()) {
                    this.threadExecutor.shutdownNow();
                }
                throw th;
            }
        }
    }

    @DoesServiceRequest
    public synchronized void flush() {
        checkStreamState();
        dispatchWrite(this.currentBufferedBytes);
        while (this.outstandingRequests > 0) {
            waitForTaskToComplete();
            checkStreamState();
        }
    }

    @DoesServiceRequest
    public void write(byte[] bArr) {
        write(bArr, 0, bArr.length);
    }

    @DoesServiceRequest
    public void write(byte[] bArr, int i2, int i3) {
        if (i2 < 0 || i3 < 0 || i3 > bArr.length - i2) {
            throw new IndexOutOfBoundsException();
        }
        writeInternal(bArr, i2, i3);
    }

    @DoesServiceRequest
    public void write(InputStream inputStream, long j2) {
        Utility.writeToOutputStream(inputStream, this, j2, false, false, this.opContext, this.options, false);
    }

    @DoesServiceRequest
    public void write(int i2) {
        write(new byte[]{(byte) (i2 & 255)});
    }
}
