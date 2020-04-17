package com.microsoft.azure.storage.blob;

import com.microsoft.azure.proton.transport.proxy.impl.DigestProxyChallengeProcessorImpl;
import com.microsoft.azure.storage.AccessCondition;
import com.microsoft.azure.storage.DoesServiceRequest;
import com.microsoft.azure.storage.OperationContext;
import com.microsoft.azure.storage.StorageErrorCodeStrings;
import com.microsoft.azure.storage.StorageException;
import com.microsoft.azure.storage.core.Base64;
import com.microsoft.azure.storage.core.Logger;
import com.microsoft.azure.storage.core.SR;
import com.microsoft.azure.storage.core.Utility;
import com.microsoft.identity.common.internal.cache.CacheKeyValueDelegate;
import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.UnsupportedEncodingException;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Set;
import java.util.UUID;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.ExecutorCompletionService;
import java.util.concurrent.Future;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicInteger;

public final class BlobOutputStreamInternal extends BlobOutputStream {
    public AccessCondition accessCondition;
    public String blockIdPrefix;
    public ArrayList<BlockEntry> blockList;
    public final ExecutorCompletionService<Void> completionService;
    public long currentBlobOffset;
    public final Set<Future<Void>> futureSet;
    public int internalWriteThreshold;
    public volatile IOException lastError;
    public MessageDigest md5Digest;
    public final OperationContext opContext;
    public final BlobRequestOptions options;
    public volatile ByteArrayOutputStream outBuffer;
    public final CloudBlob parentBlobRef;
    public BlobType streamType;
    public final ThreadPoolExecutor threadExecutor;

    public static class BlobOutputStreamThreadFactory implements ThreadFactory {
        public final ThreadGroup group;
        public final String namePrefix;
        public final AtomicInteger threadNumber = new AtomicInteger(1);

        public BlobOutputStreamThreadFactory() {
            ThreadGroup threadGroup;
            SecurityManager securityManager = System.getSecurityManager();
            if (securityManager != null) {
                threadGroup = securityManager.getThreadGroup();
            } else {
                threadGroup = Thread.currentThread().getThreadGroup();
            }
            this.group = threadGroup;
            this.namePrefix = "azure-storage-bloboutputstream-thread-";
        }

        public Thread newThread(Runnable runnable) {
            ThreadGroup threadGroup = this.group;
            Thread thread = new Thread(threadGroup, runnable, this.namePrefix + this.threadNumber.getAndIncrement(), 0);
            thread.setDaemon(true);
            if (thread.getPriority() != 5) {
                thread.setPriority(5);
            }
            return thread;
        }
    }

    public BlobOutputStreamInternal(CloudBlob cloudBlob, AccessCondition accessCondition2, BlobRequestOptions blobRequestOptions, OperationContext operationContext) {
        this.internalWriteThreshold = -1;
        this.lastError = null;
        this.streamType = BlobType.UNSPECIFIED;
        this.accessCondition = accessCondition2;
        this.parentBlobRef = cloudBlob;
        cloudBlob.assertCorrectBlobType();
        this.options = new BlobRequestOptions(blobRequestOptions);
        this.outBuffer = new ByteArrayOutputStream();
        this.opContext = operationContext;
        int i2 = 1;
        if (this.options.getConcurrentRequestCount().intValue() >= 1) {
            this.futureSet = Collections.newSetFromMap(new ConcurrentHashMap(this.options.getConcurrentRequestCount() != null ? this.options.getConcurrentRequestCount().intValue() * 2 : i2));
            if (this.options.getStoreBlobContentMD5().booleanValue()) {
                try {
                    this.md5Digest = MessageDigest.getInstance(DigestProxyChallengeProcessorImpl.DEFAULT_ALGORITHM);
                } catch (NoSuchAlgorithmException e2) {
                    throw Utility.generateNewUnexpectedStorageException(e2);
                }
            }
            this.threadExecutor = new ThreadPoolExecutor(this.options.getConcurrentRequestCount().intValue(), this.options.getConcurrentRequestCount().intValue(), 10, TimeUnit.SECONDS, new LinkedBlockingQueue(), new BlobOutputStreamThreadFactory());
            this.completionService = new ExecutorCompletionService<>(this.threadExecutor);
            return;
        }
        throw new IllegalArgumentException("ConcurrentRequestCount");
    }

    /* access modifiers changed from: private */
    public void appendBlock(ByteArrayInputStream byteArrayInputStream, long j2, long j3) {
        CloudAppendBlob cloudAppendBlob = (CloudAppendBlob) this.parentBlobRef;
        this.accessCondition.setIfAppendPositionEqual(Long.valueOf(j2));
        int size = this.opContext.getRequestResults().size();
        try {
            cloudAppendBlob.appendBlock(byteArrayInputStream, j3, this.accessCondition, this.options, this.opContext);
        } catch (IOException e2) {
            this.lastError = e2;
        } catch (StorageException e3) {
            if (!this.options.getAbsorbConditionalErrorsOnRetry().booleanValue() || e3.getHttpStatusCode() != 412 || e3.getExtendedErrorInformation() == null || e3.getErrorCode() == null || ((!e3.getErrorCode().equals(StorageErrorCodeStrings.INVALID_APPEND_POSITION) && !e3.getErrorCode().equals(StorageErrorCodeStrings.INVALID_MAX_BLOB_SIZE_CONDITION)) || this.opContext.getRequestResults().size() - size <= 1)) {
                this.lastError = Utility.initIOException(e3);
            } else {
                Logger.info(this.opContext, SR.PRECONDITION_FAILURE_IGNORED);
            }
        }
    }

    private void checkStreamState() {
        if (this.lastError != null) {
            throw this.lastError;
        }
    }

    private void clearCompletedFutures() {
        for (Future next : this.futureSet) {
            if (next.isDone()) {
                this.futureSet.remove(next);
            }
        }
    }

    @DoesServiceRequest
    private synchronized void commit() {
        if (this.options.getStoreBlobContentMD5().booleanValue()) {
            this.parentBlobRef.getProperties().setContentMD5(Base64.encode(this.md5Digest.digest()));
        }
        if (this.streamType == BlobType.BLOCK_BLOB) {
            ((CloudBlockBlob) this.parentBlobRef).commitBlockList(this.blockList, this.accessCondition, this.options, this.opContext);
        } else if (this.options.getStoreBlobContentMD5().booleanValue()) {
            this.parentBlobRef.uploadProperties(this.accessCondition, this.options, this.opContext);
        }
    }

    /* JADX WARNING: type inference failed for: r0v3 */
    /* JADX WARNING: type inference failed for: r0v4, types: [java.util.concurrent.Callable] */
    /* JADX WARNING: type inference failed for: r0v19 */
    /* JADX WARNING: type inference failed for: r1v19, types: [com.microsoft.azure.storage.blob.BlobOutputStreamInternal$3] */
    /* JADX WARNING: type inference failed for: r1v20, types: [com.microsoft.azure.storage.blob.BlobOutputStreamInternal$2] */
    /* JADX WARNING: Multi-variable type inference failed */
    @com.microsoft.azure.storage.DoesServiceRequest
    /* Code decompiled incorrectly, please refer to instructions dump. */
    private synchronized void dispatchWrite() {
        /*
            r9 = this;
            monitor-enter(r9)
            java.io.ByteArrayOutputStream r0 = r9.outBuffer     // Catch:{ all -> 0x00eb }
            int r6 = r0.size()     // Catch:{ all -> 0x00eb }
            if (r6 != 0) goto L_0x000b
            monitor-exit(r9)
            return
        L_0x000b:
            com.microsoft.azure.storage.blob.BlobType r0 = r9.streamType     // Catch:{ all -> 0x00eb }
            com.microsoft.azure.storage.blob.BlobType r1 = com.microsoft.azure.storage.blob.BlobType.PAGE_BLOB     // Catch:{ all -> 0x00eb }
            if (r0 != r1) goto L_0x002c
            int r0 = r6 % 512
            if (r0 != 0) goto L_0x0016
            goto L_0x002c
        L_0x0016:
            java.io.IOException r0 = new java.io.IOException     // Catch:{ all -> 0x00eb }
            java.lang.String r1 = "Page data must be a multiple of 512 bytes. Buffer currently contains %d bytes."
            r2 = 1
            java.lang.Object[] r2 = new java.lang.Object[r2]     // Catch:{ all -> 0x00eb }
            r3 = 0
            java.lang.Integer r4 = java.lang.Integer.valueOf(r6)     // Catch:{ all -> 0x00eb }
            r2[r3] = r4     // Catch:{ all -> 0x00eb }
            java.lang.String r1 = java.lang.String.format(r1, r2)     // Catch:{ all -> 0x00eb }
            r0.<init>(r1)     // Catch:{ all -> 0x00eb }
            throw r0     // Catch:{ all -> 0x00eb }
        L_0x002c:
            r0 = 0
            java.util.concurrent.ThreadPoolExecutor r1 = r9.threadExecutor     // Catch:{ all -> 0x00eb }
            java.util.concurrent.BlockingQueue r1 = r1.getQueue()     // Catch:{ all -> 0x00eb }
            int r1 = r1.size()     // Catch:{ all -> 0x00eb }
            com.microsoft.azure.storage.blob.BlobRequestOptions r2 = r9.options     // Catch:{ all -> 0x00eb }
            java.lang.Integer r2 = r2.getConcurrentRequestCount()     // Catch:{ all -> 0x00eb }
            int r2 = r2.intValue()     // Catch:{ all -> 0x00eb }
            int r2 = r2 * 2
            if (r1 < r2) goto L_0x0048
            r9.waitForTaskToComplete()     // Catch:{ all -> 0x00eb }
        L_0x0048:
            java.util.Set<java.util.concurrent.Future<java.lang.Void>> r1 = r9.futureSet     // Catch:{ all -> 0x00eb }
            int r1 = r1.size()     // Catch:{ all -> 0x00eb }
            com.microsoft.azure.storage.blob.BlobRequestOptions r2 = r9.options     // Catch:{ all -> 0x00eb }
            java.lang.Integer r2 = r2.getConcurrentRequestCount()     // Catch:{ all -> 0x00eb }
            int r2 = r2.intValue()     // Catch:{ all -> 0x00eb }
            int r2 = r2 * 2
            if (r1 < r2) goto L_0x005f
            r9.clearCompletedFutures()     // Catch:{ all -> 0x00eb }
        L_0x005f:
            java.io.ByteArrayInputStream r3 = new java.io.ByteArrayInputStream     // Catch:{ all -> 0x00eb }
            java.io.ByteArrayOutputStream r1 = r9.outBuffer     // Catch:{ all -> 0x00eb }
            byte[] r1 = r1.toByteArray()     // Catch:{ all -> 0x00eb }
            r3.<init>(r1)     // Catch:{ all -> 0x00eb }
            com.microsoft.azure.storage.blob.BlobType r1 = r9.streamType     // Catch:{ all -> 0x00eb }
            com.microsoft.azure.storage.blob.BlobType r2 = com.microsoft.azure.storage.blob.BlobType.BLOCK_BLOB     // Catch:{ all -> 0x00eb }
            if (r1 != r2) goto L_0x0087
            java.lang.String r0 = r9.getCurrentBlockId()     // Catch:{ all -> 0x00eb }
            java.util.ArrayList<com.microsoft.azure.storage.blob.BlockEntry> r1 = r9.blockList     // Catch:{ all -> 0x00eb }
            com.microsoft.azure.storage.blob.BlockEntry r2 = new com.microsoft.azure.storage.blob.BlockEntry     // Catch:{ all -> 0x00eb }
            com.microsoft.azure.storage.blob.BlockSearchMode r4 = com.microsoft.azure.storage.blob.BlockSearchMode.LATEST     // Catch:{ all -> 0x00eb }
            r2.<init>(r0, r4)     // Catch:{ all -> 0x00eb }
            r1.add(r2)     // Catch:{ all -> 0x00eb }
            com.microsoft.azure.storage.blob.BlobOutputStreamInternal$1 r1 = new com.microsoft.azure.storage.blob.BlobOutputStreamInternal$1     // Catch:{ all -> 0x00eb }
            r1.<init>(r3, r0, r6)     // Catch:{ all -> 0x00eb }
            r0 = r1
            goto L_0x00d7
        L_0x0087:
            com.microsoft.azure.storage.blob.BlobType r1 = r9.streamType     // Catch:{ all -> 0x00eb }
            com.microsoft.azure.storage.blob.BlobType r2 = com.microsoft.azure.storage.blob.BlobType.PAGE_BLOB     // Catch:{ all -> 0x00eb }
            if (r1 != r2) goto L_0x009d
            long r4 = r9.currentBlobOffset     // Catch:{ all -> 0x00eb }
            long r0 = r9.currentBlobOffset     // Catch:{ all -> 0x00eb }
            long r7 = (long) r6     // Catch:{ all -> 0x00eb }
            long r0 = r0 + r7
            r9.currentBlobOffset = r0     // Catch:{ all -> 0x00eb }
            com.microsoft.azure.storage.blob.BlobOutputStreamInternal$2 r0 = new com.microsoft.azure.storage.blob.BlobOutputStreamInternal$2     // Catch:{ all -> 0x00eb }
            r1 = r0
            r2 = r9
            r1.<init>(r3, r4, r6)     // Catch:{ all -> 0x00eb }
            goto L_0x00d7
        L_0x009d:
            com.microsoft.azure.storage.blob.BlobType r1 = r9.streamType     // Catch:{ all -> 0x00eb }
            com.microsoft.azure.storage.blob.BlobType r2 = com.microsoft.azure.storage.blob.BlobType.APPEND_BLOB     // Catch:{ all -> 0x00eb }
            if (r1 != r2) goto L_0x00d7
            long r4 = r9.currentBlobOffset     // Catch:{ all -> 0x00eb }
            long r0 = r9.currentBlobOffset     // Catch:{ all -> 0x00eb }
            long r7 = (long) r6     // Catch:{ all -> 0x00eb }
            long r0 = r0 + r7
            r9.currentBlobOffset = r0     // Catch:{ all -> 0x00eb }
            com.microsoft.azure.storage.AccessCondition r0 = r9.accessCondition     // Catch:{ all -> 0x00eb }
            java.lang.Long r0 = r0.getIfMaxSizeLessThanOrEqual()     // Catch:{ all -> 0x00eb }
            if (r0 == 0) goto L_0x00d0
            long r0 = r9.currentBlobOffset     // Catch:{ all -> 0x00eb }
            com.microsoft.azure.storage.AccessCondition r2 = r9.accessCondition     // Catch:{ all -> 0x00eb }
            java.lang.Long r2 = r2.getIfMaxSizeLessThanOrEqual()     // Catch:{ all -> 0x00eb }
            long r7 = r2.longValue()     // Catch:{ all -> 0x00eb }
            int r2 = (r0 > r7 ? 1 : (r0 == r7 ? 0 : -1))
            if (r2 > 0) goto L_0x00c4
            goto L_0x00d0
        L_0x00c4:
            java.io.IOException r0 = new java.io.IOException     // Catch:{ all -> 0x00eb }
            java.lang.String r1 = "Append block data should not exceed the maximum blob size condition value."
            r0.<init>(r1)     // Catch:{ all -> 0x00eb }
            r9.lastError = r0     // Catch:{ all -> 0x00eb }
            java.io.IOException r0 = r9.lastError     // Catch:{ all -> 0x00eb }
            throw r0     // Catch:{ all -> 0x00eb }
        L_0x00d0:
            com.microsoft.azure.storage.blob.BlobOutputStreamInternal$3 r0 = new com.microsoft.azure.storage.blob.BlobOutputStreamInternal$3     // Catch:{ all -> 0x00eb }
            r1 = r0
            r2 = r9
            r1.<init>(r3, r4, r6)     // Catch:{ all -> 0x00eb }
        L_0x00d7:
            java.util.Set<java.util.concurrent.Future<java.lang.Void>> r1 = r9.futureSet     // Catch:{ all -> 0x00eb }
            java.util.concurrent.ExecutorCompletionService<java.lang.Void> r2 = r9.completionService     // Catch:{ all -> 0x00eb }
            java.util.concurrent.Future r0 = r2.submit(r0)     // Catch:{ all -> 0x00eb }
            r1.add(r0)     // Catch:{ all -> 0x00eb }
            java.io.ByteArrayOutputStream r0 = new java.io.ByteArrayOutputStream     // Catch:{ all -> 0x00eb }
            r0.<init>()     // Catch:{ all -> 0x00eb }
            r9.outBuffer = r0     // Catch:{ all -> 0x00eb }
            monitor-exit(r9)
            return
        L_0x00eb:
            r0 = move-exception
            monitor-exit(r9)
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.microsoft.azure.storage.blob.BlobOutputStreamInternal.dispatchWrite():void");
    }

    private String getCurrentBlockId() {
        String format = String.format("%06d", new Object[]{Integer.valueOf(this.blockList.size())});
        try {
            return Base64.encode((this.blockIdPrefix + format).getBytes("UTF-8"));
        } catch (UnsupportedEncodingException e2) {
            throw new IOException(e2);
        }
    }

    private void waitForTaskToComplete() {
        boolean z = false;
        while (this.completionService.poll() != null) {
            z = true;
        }
        if (!z) {
            try {
                this.completionService.take();
            } catch (InterruptedException e2) {
                throw Utility.initIOException(e2);
            }
        }
    }

    /* access modifiers changed from: private */
    public void writeBlock(ByteArrayInputStream byteArrayInputStream, String str, long j2) {
        try {
            ((CloudBlockBlob) this.parentBlobRef).uploadBlock(str, byteArrayInputStream, j2, this.accessCondition, this.options, this.opContext);
        } catch (IOException e2) {
            this.lastError = e2;
        } catch (StorageException e3) {
            this.lastError = Utility.initIOException(e3);
        }
    }

    @DoesServiceRequest
    private synchronized void writeInternal(byte[] bArr, int i2, int i3) {
        while (i3 > 0) {
            checkStreamState();
            int min = Math.min(this.internalWriteThreshold - this.outBuffer.size(), i3);
            if (this.options.getStoreBlobContentMD5().booleanValue()) {
                this.md5Digest.update(bArr, i2, min);
            }
            this.outBuffer.write(bArr, i2, min);
            i2 += min;
            i3 -= min;
            if (this.outBuffer.size() == this.internalWriteThreshold) {
                dispatchWrite();
            }
        }
    }

    /* access modifiers changed from: private */
    public void writePages(ByteArrayInputStream byteArrayInputStream, long j2, long j3) {
        try {
            ((CloudPageBlob) this.parentBlobRef).uploadPages(byteArrayInputStream, j2, j3, this.accessCondition, this.options, this.opContext);
        } catch (IOException e2) {
            this.lastError = e2;
        } catch (StorageException e3) {
            this.lastError = Utility.initIOException(e3);
        }
    }

    @DoesServiceRequest
    public synchronized void close() {
        try {
            checkStreamState();
            flush();
            this.threadExecutor.shutdown();
            commit();
            this.lastError = new IOException(SR.STREAM_CLOSED);
            if (!this.threadExecutor.isShutdown()) {
                this.threadExecutor.shutdownNow();
            }
        } catch (StorageException e2) {
            throw Utility.initIOException(e2);
        } catch (Throwable th) {
            this.lastError = new IOException(SR.STREAM_CLOSED);
            if (!this.threadExecutor.isShutdown()) {
                this.threadExecutor.shutdownNow();
            }
            throw th;
        }
    }

    @DoesServiceRequest
    public void flush() {
        checkStreamState();
        dispatchWrite();
        Iterator it = new HashSet(this.futureSet).iterator();
        while (it.hasNext()) {
            try {
                ((Future) it.next()).get();
                checkStreamState();
            } catch (Exception e2) {
                throw Utility.initIOException(e2);
            }
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

    public BlobOutputStreamInternal(CloudBlockBlob cloudBlockBlob, AccessCondition accessCondition2, BlobRequestOptions blobRequestOptions, OperationContext operationContext) {
        this((CloudBlob) cloudBlockBlob, accessCondition2, blobRequestOptions, operationContext);
        this.blockList = new ArrayList<>();
        this.blockIdPrefix = UUID.randomUUID().toString() + CacheKeyValueDelegate.CACHE_VALUE_SEPARATOR;
        this.streamType = BlobType.BLOCK_BLOB;
        this.internalWriteThreshold = this.parentBlobRef.getStreamWriteSizeInBytes();
    }

    @DoesServiceRequest
    public BlobOutputStreamInternal(CloudPageBlob cloudPageBlob, long j2, AccessCondition accessCondition2, BlobRequestOptions blobRequestOptions, OperationContext operationContext) {
        this((CloudBlob) cloudPageBlob, accessCondition2, blobRequestOptions, operationContext);
        this.streamType = BlobType.PAGE_BLOB;
        this.internalWriteThreshold = (int) Math.min((long) this.parentBlobRef.getStreamWriteSizeInBytes(), j2);
    }

    @DoesServiceRequest
    public BlobOutputStreamInternal(CloudAppendBlob cloudAppendBlob, AccessCondition accessCondition2, BlobRequestOptions blobRequestOptions, OperationContext operationContext) {
        this((CloudBlob) cloudAppendBlob, accessCondition2, blobRequestOptions, operationContext);
        this.streamType = BlobType.APPEND_BLOB;
        accessCondition2 = accessCondition2 == null ? new AccessCondition() : accessCondition2;
        this.accessCondition = accessCondition2;
        if (accessCondition2.getIfAppendPositionEqual() != null) {
            this.currentBlobOffset = this.accessCondition.getIfAppendPositionEqual().longValue();
        } else {
            this.currentBlobOffset = cloudAppendBlob.getProperties().getLength();
        }
        this.internalWriteThreshold = this.parentBlobRef.getStreamWriteSizeInBytes();
    }
}
