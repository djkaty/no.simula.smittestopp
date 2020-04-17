package e.c.a.a.b;

import java.lang.ref.WeakReference;

public abstract class s extends q {

    /* renamed from: c  reason: collision with root package name */
    public static final WeakReference<byte[]> f1208c = new WeakReference<>((Object) null);
    public WeakReference<byte[]> b = f1208c;

    public s(byte[] bArr) {
        super(bArr);
    }

    public final byte[] c() {
        byte[] bArr;
        synchronized (this) {
            bArr = (byte[]) this.b.get();
            if (bArr == null) {
                bArr = d();
                this.b = new WeakReference<>(bArr);
            }
        }
        return bArr;
    }

    public abstract byte[] d();
}
