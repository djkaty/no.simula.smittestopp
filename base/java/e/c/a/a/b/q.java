package e.c.a.a.b;

import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import android.util.Log;
import com.android.volley.toolbox.HttpHeaderParser;
import d.b.a.r;
import e.c.a.a.b.j.g0;
import e.c.a.a.c.a;
import e.c.a.a.d.b.b;
import e.c.a.a.d.b.c;
import java.io.UnsupportedEncodingException;
import java.util.Arrays;

public abstract class q extends b implements g0 {
    public int a;

    public q(byte[] bArr) {
        super("com.google.android.gms.common.internal.ICertData");
        r.a(bArr.length == 25);
        this.a = Arrays.hashCode(bArr);
    }

    public final boolean a(int i2, Parcel parcel, Parcel parcel2, int i3) {
        if (i2 == 1) {
            a a2 = a();
            parcel2.writeNoException();
            c.a(parcel2, (IInterface) a2);
            return true;
        } else if (i2 != 2) {
            return false;
        } else {
            int b = b();
            parcel2.writeNoException();
            parcel2.writeInt(b);
            return true;
        }
    }

    public final int b() {
        return this.a;
    }

    public abstract byte[] c();

    public boolean equals(Object obj) {
        a a2;
        if (obj != null && (obj instanceof g0)) {
            try {
                g0 g0Var = (g0) obj;
                if (g0Var.b() != this.a || (a2 = g0Var.a()) == null) {
                    return false;
                }
                return Arrays.equals(c(), (byte[]) e.c.a.a.c.b.a(a2));
            } catch (RemoteException e2) {
                Log.e("GoogleCertificates", "Failed to get Google certificates from remote", e2);
            }
        }
        return false;
    }

    public int hashCode() {
        return this.a;
    }

    public final a a() {
        return new e.c.a.a.c.b(c());
    }

    public static byte[] a(String str) {
        try {
            return str.getBytes(HttpHeaderParser.DEFAULT_CONTENT_CHARSET);
        } catch (UnsupportedEncodingException e2) {
            throw new AssertionError(e2);
        }
    }
}
