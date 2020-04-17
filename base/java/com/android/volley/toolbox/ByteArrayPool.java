package com.android.volley.toolbox;

import java.util.ArrayList;
import java.util.Comparator;
import java.util.List;

public class ByteArrayPool {
    public static final Comparator<byte[]> BUF_COMPARATOR = new Comparator<byte[]>() {
        public int compare(byte[] bArr, byte[] bArr2) {
            return bArr.length - bArr2.length;
        }
    };
    public final List<byte[]> mBuffersByLastUse = new ArrayList();
    public final List<byte[]> mBuffersBySize = new ArrayList(64);
    public int mCurrentSize = 0;
    public final int mSizeLimit;

    public ByteArrayPool(int i2) {
        this.mSizeLimit = i2;
    }

    private synchronized void trim() {
        while (this.mCurrentSize > this.mSizeLimit) {
            byte[] remove = this.mBuffersByLastUse.remove(0);
            this.mBuffersBySize.remove(remove);
            this.mCurrentSize -= remove.length;
        }
    }

    public synchronized byte[] getBuf(int i2) {
        for (int i3 = 0; i3 < this.mBuffersBySize.size(); i3++) {
            byte[] bArr = this.mBuffersBySize.get(i3);
            if (bArr.length >= i2) {
                this.mCurrentSize -= bArr.length;
                this.mBuffersBySize.remove(i3);
                this.mBuffersByLastUse.remove(bArr);
                return bArr;
            }
        }
        return new byte[i2];
    }

    /* JADX WARNING: Code restructure failed: missing block: B:16:0x002f, code lost:
        return;
     */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public synchronized void returnBuf(byte[] r3) {
        /*
            r2 = this;
            monitor-enter(r2)
            if (r3 == 0) goto L_0x002e
            int r0 = r3.length     // Catch:{ all -> 0x002b }
            int r1 = r2.mSizeLimit     // Catch:{ all -> 0x002b }
            if (r0 <= r1) goto L_0x0009
            goto L_0x002e
        L_0x0009:
            java.util.List<byte[]> r0 = r2.mBuffersByLastUse     // Catch:{ all -> 0x002b }
            r0.add(r3)     // Catch:{ all -> 0x002b }
            java.util.List<byte[]> r0 = r2.mBuffersBySize     // Catch:{ all -> 0x002b }
            java.util.Comparator<byte[]> r1 = BUF_COMPARATOR     // Catch:{ all -> 0x002b }
            int r0 = java.util.Collections.binarySearch(r0, r3, r1)     // Catch:{ all -> 0x002b }
            if (r0 >= 0) goto L_0x001b
            int r0 = -r0
            int r0 = r0 + -1
        L_0x001b:
            java.util.List<byte[]> r1 = r2.mBuffersBySize     // Catch:{ all -> 0x002b }
            r1.add(r0, r3)     // Catch:{ all -> 0x002b }
            int r0 = r2.mCurrentSize     // Catch:{ all -> 0x002b }
            int r3 = r3.length     // Catch:{ all -> 0x002b }
            int r0 = r0 + r3
            r2.mCurrentSize = r0     // Catch:{ all -> 0x002b }
            r2.trim()     // Catch:{ all -> 0x002b }
            monitor-exit(r2)
            return
        L_0x002b:
            r3 = move-exception
            monitor-exit(r2)
            throw r3
        L_0x002e:
            monitor-exit(r2)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.volley.toolbox.ByteArrayPool.returnBuf(byte[]):void");
    }
}
