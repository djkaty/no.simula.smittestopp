package k.a.b.a.b;

import java.nio.charset.StandardCharsets;
import java.util.concurrent.ConcurrentHashMap;
import k.a.b.a.c.y0;

public final class f implements Comparable<f>, CharSequence {
    public static final ConcurrentHashMap<String, f> z = new ConcurrentHashMap<>(2048);
    public final String x;
    public final byte[] y;

    public f(String str) {
        this.x = str;
        this.y = str.getBytes(StandardCharsets.US_ASCII);
    }

    public static f a(String str) {
        if (str == null) {
            return null;
        }
        f fVar = z.get(str);
        if (fVar != null) {
            return fVar;
        }
        String intern = str.intern();
        f fVar2 = new f(intern);
        f putIfAbsent = z.putIfAbsent(intern, fVar2);
        return putIfAbsent != null ? putIfAbsent : fVar2;
    }

    public char charAt(int i2) {
        return this.x.charAt(i2);
    }

    public int compareTo(Object obj) {
        return this.x.compareTo(((f) obj).x);
    }

    public int hashCode() {
        return this.x.hashCode();
    }

    public int length() {
        return this.x.length();
    }

    public CharSequence subSequence(int i2, int i3) {
        return this.x.subSequence(i2, i3);
    }

    public String toString() {
        return this.x;
    }

    public void a(y0 y0Var) {
        byte[] bArr = this.y;
        y0Var.a(bArr, 0, bArr.length);
    }
}
