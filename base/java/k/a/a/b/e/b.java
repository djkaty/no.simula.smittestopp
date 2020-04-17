package k.a.a.b.e;

import com.microsoft.identity.client.claims.WWWAuthenticateHeader;
import java.io.Serializable;
import java.util.Comparator;
import java.util.Map;
import k.a.a.b.c.a;

public abstract class b<L, R> implements Map.Entry<L, R>, Comparable<b<L, R>>, Serializable {
    public int compareTo(Object obj) {
        a aVar = new a();
        a aVar2 = (a) this;
        a aVar3 = (a) ((b) obj);
        aVar.a(aVar2.x, aVar3.x, (Comparator<?>) null);
        aVar.a(aVar2.y, aVar3.y, (Comparator<?>) null);
        return aVar.a;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof Map.Entry)) {
            return false;
        }
        Map.Entry entry = (Map.Entry) obj;
        if (!k.a.a.b.a.a(getKey(), entry.getKey()) || !k.a.a.b.a.a(getValue(), entry.getValue())) {
            return false;
        }
        return true;
    }

    public final L getKey() {
        return ((a) this).x;
    }

    public R getValue() {
        return ((a) this).y;
    }

    public int hashCode() {
        int i2 = 0;
        int hashCode = getKey() == null ? 0 : getKey().hashCode();
        if (getValue() != null) {
            i2 = getValue().hashCode();
        }
        return hashCode ^ i2;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append('(');
        a aVar = (a) this;
        sb.append(aVar.x);
        sb.append(WWWAuthenticateHeader.COMMA);
        sb.append(aVar.y);
        sb.append(')');
        return sb.toString();
    }
}
