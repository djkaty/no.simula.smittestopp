package k.b.d.a.b.a;

import java.security.PrivilegedAction;

public final class a implements PrivilegedAction {
    public final /* synthetic */ String a;

    public a(String str) {
        this.a = str;
    }

    public Object run() {
        try {
            return Class.forName(this.a);
        } catch (Exception unused) {
            return null;
        }
    }
}
