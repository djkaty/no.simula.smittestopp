package k.a.b.a.b.k;

import com.microsoft.identity.client.claims.WWWAuthenticateHeader;
import e.a.a.a.a;
import java.util.Arrays;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import k.a.b.a.b.f;
import k.a.b.a.b.n.q;

public final class u extends w implements q {

    /* renamed from: h  reason: collision with root package name */
    public f f1585h;

    /* renamed from: i  reason: collision with root package name */
    public Map f1586i;

    /* renamed from: j  reason: collision with root package name */
    public o f1587j;

    /* renamed from: k  reason: collision with root package name */
    public f[] f1588k;

    public u(u uVar) {
        super(uVar);
        this.f1585h = uVar.f1585h;
        if (uVar.f1586i != null) {
            this.f1586i = new HashMap(uVar.f1586i);
        }
        this.f1587j = uVar.f1587j;
        f[] fVarArr = uVar.f1588k;
        if (fVarArr != null) {
            this.f1588k = (f[]) fVarArr.clone();
        }
    }

    public q a() {
        return new u(this);
    }

    public String toString() {
        List list;
        StringBuilder a = a.a("Source{address='");
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
        a.append(", distributionMode=");
        a.append(this.f1585h);
        a.append(", filter=");
        a.append(this.f1586i);
        a.append(", defaultOutcome=");
        a.append(this.f1587j);
        a.append(", outcomes=");
        f[] fVarArr = this.f1588k;
        List list2 = null;
        if (fVarArr == null) {
            list = null;
        } else {
            list = Arrays.asList(fVarArr);
        }
        a.append(list);
        a.append(", capabilities=");
        f[] fVarArr2 = this.f1593g;
        if (fVarArr2 != null) {
            list2 = Arrays.asList(fVarArr2);
        }
        a.append(list2);
        a.append('}');
        return a.toString();
    }

    public u() {
    }
}
