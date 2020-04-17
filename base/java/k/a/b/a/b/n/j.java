package k.a.b.a.b.n;

import com.microsoft.identity.client.claims.WWWAuthenticateHeader;
import e.a.a.a.a;
import java.util.Map;
import k.a.b.a.b.f;

public final class j {
    public f a;
    public String b;

    /* renamed from: c  reason: collision with root package name */
    public Map f1616c;

    public j() {
    }

    public void a(f fVar) {
        if (fVar != null) {
            this.a = fVar;
            return;
        }
        throw new NullPointerException("the condition field is mandatory");
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || j.class != obj.getClass()) {
            return false;
        }
        j jVar = (j) obj;
        f fVar = this.a;
        if (fVar == null ? jVar.a != null : !fVar.equals(jVar.a)) {
            return false;
        }
        String str = this.b;
        if (str == null ? jVar.b != null : !str.equals(jVar.b)) {
            return false;
        }
        Map map = this.f1616c;
        Map map2 = jVar.f1616c;
        return map == null ? map2 == null : map.equals(map2);
    }

    public int hashCode() {
        f fVar = this.a;
        int i2 = 0;
        int hashCode = (fVar != null ? fVar.hashCode() : 0) * 31;
        String str = this.b;
        int hashCode2 = (hashCode + (str != null ? str.hashCode() : 0)) * 31;
        Map map = this.f1616c;
        if (map != null) {
            i2 = map.hashCode();
        }
        return hashCode2 + i2;
    }

    public String toString() {
        StringBuilder a2 = a.a("Error{condition=");
        a2.append(this.a);
        a2.append(", description='");
        a.a(a2, this.b, (char) WWWAuthenticateHeader.SINGLE_QUOTE, ", info=");
        a2.append(this.f1616c);
        a2.append('}');
        return a2.toString();
    }

    public j(f fVar, String str) {
        this.a = fVar;
        this.b = str;
    }

    public void a(j jVar) {
        this.a = jVar.a;
        this.b = jVar.b;
        this.f1616c = jVar.f1616c;
    }
}
