package k.e.a;

import com.microsoft.identity.client.claims.WWWAuthenticateHeader;
import java.util.Arrays;

public final class h {
    public final String a;
    public final String b;

    /* renamed from: c  reason: collision with root package name */
    public final o f2349c;

    /* renamed from: d  reason: collision with root package name */
    public final Object[] f2350d;

    public h(String str, String str2, o oVar, Object... objArr) {
        this.a = str;
        this.b = str2;
        this.f2349c = oVar;
        this.f2350d = objArr;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof h)) {
            return false;
        }
        h hVar = (h) obj;
        if (!this.a.equals(hVar.a) || !this.b.equals(hVar.b) || !this.f2349c.equals(hVar.f2349c) || !Arrays.equals(this.f2350d, hVar.f2350d)) {
            return false;
        }
        return true;
    }

    public int hashCode() {
        return ((this.a.hashCode() ^ Integer.rotateLeft(this.b.hashCode(), 8)) ^ Integer.rotateLeft(this.f2349c.hashCode(), 16)) ^ Integer.rotateLeft(Arrays.hashCode(this.f2350d), 24);
    }

    public String toString() {
        return this.a + " : " + this.b + WWWAuthenticateHeader.SPACE + this.f2349c + WWWAuthenticateHeader.SPACE + Arrays.toString(this.f2350d);
    }
}
