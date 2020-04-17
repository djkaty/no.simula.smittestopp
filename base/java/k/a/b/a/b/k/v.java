package k.a.b.a.b.k;

import com.microsoft.identity.client.claims.WWWAuthenticateHeader;
import e.a.a.a.a;
import java.util.Arrays;
import java.util.List;
import k.a.b.a.b.f;
import k.a.b.a.b.n.r;

public final class v extends w implements r {
    public v(v vVar) {
        super(vVar);
    }

    public r a() {
        return new v(this);
    }

    public String toString() {
        List list;
        StringBuilder a = a.a("Target{address='");
        a.a(a, this.a, (char) WWWAuthenticateHeader.SINGLE_QUOTE, ", durable=");
        a.append(this.b);
        a.append(", expiryPolicy=");
        a.append(this.f1589c);
        a.append(", timeout=");
        a.append(this.f1590d);
        a.append(", dynamic=");
        a.append(this.f1591e);
        a.append(", dynamicNodeProperties=");
        a.append(this.f1592f);
        a.append(", capabilities=");
        f[] fVarArr = this.f1593g;
        if (fVarArr == null) {
            list = null;
        } else {
            list = Arrays.asList(fVarArr);
        }
        a.append(list);
        a.append('}');
        return a.toString();
    }

    public v() {
    }
}
