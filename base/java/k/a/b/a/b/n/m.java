package k.a.b.a.b.n;

import com.microsoft.identity.client.claims.WWWAuthenticateHeader;
import e.a.a.a.a;
import java.util.Arrays;
import java.util.List;
import java.util.Map;
import k.a.b.a.b.f;
import k.a.b.a.b.h;
import k.a.b.a.b.j;
import k.a.b.a.b.n.l;
import k.a.b.a.d.g;
import k.a.b.a.d.g0.a0;
import k.a.b.a.d.g0.d;
import k.a.b.a.d.h;

public final class m implements l {
    public String a;
    public String b;

    /* renamed from: c  reason: collision with root package name */
    public h f1626c = h.a(-1);

    /* renamed from: d  reason: collision with root package name */
    public j f1627d = j.a(-1);

    /* renamed from: e  reason: collision with root package name */
    public h f1628e;

    /* renamed from: f  reason: collision with root package name */
    public f[] f1629f;

    /* renamed from: g  reason: collision with root package name */
    public f[] f1630g;

    /* renamed from: h  reason: collision with root package name */
    public f[] f1631h;

    /* renamed from: i  reason: collision with root package name */
    public f[] f1632i;

    /* renamed from: j  reason: collision with root package name */
    public Map f1633j;

    public void a(String str) {
        if (str != null) {
            this.a = str;
            return;
        }
        throw new NullPointerException("the container-id field is mandatory");
    }

    public String toString() {
        List list;
        List list2;
        List list3;
        StringBuilder a2 = a.a("Open{ containerId='");
        a.a(a2, this.a, (char) WWWAuthenticateHeader.SINGLE_QUOTE, ", hostname='");
        a.a(a2, this.b, (char) WWWAuthenticateHeader.SINGLE_QUOTE, ", maxFrameSize=");
        a2.append(this.f1626c);
        a2.append(", channelMax=");
        a2.append(this.f1627d);
        a2.append(", idleTimeOut=");
        a2.append(this.f1628e);
        a2.append(", outgoingLocales=");
        f[] fVarArr = this.f1629f;
        List list4 = null;
        if (fVarArr == null) {
            list = null;
        } else {
            list = Arrays.asList(fVarArr);
        }
        a2.append(list);
        a2.append(", incomingLocales=");
        f[] fVarArr2 = this.f1630g;
        if (fVarArr2 == null) {
            list2 = null;
        } else {
            list2 = Arrays.asList(fVarArr2);
        }
        a2.append(list2);
        a2.append(", offeredCapabilities=");
        f[] fVarArr3 = this.f1631h;
        if (fVarArr3 == null) {
            list3 = null;
        } else {
            list3 = Arrays.asList(fVarArr3);
        }
        a2.append(list3);
        a2.append(", desiredCapabilities=");
        f[] fVarArr4 = this.f1632i;
        if (fVarArr4 != null) {
            list4 = Arrays.asList(fVarArr4);
        }
        a2.append(list4);
        a2.append(", properties=");
        a2.append(this.f1633j);
        a2.append('}');
        return a2.toString();
    }

    public <E> void a(l.a<E> aVar, k.a.b.a.b.a aVar2, E e2) {
        a0 a0Var = (a0) aVar;
        if (a0Var != null) {
            Integer num = (Integer) e2;
            g gVar = g.ACTIVE;
            a0Var.y = gVar;
            d dVar = a0Var.J;
            if (dVar != null) {
                dVar.y = gVar;
                dVar.a(h.b.CONNECTION_REMOTE_OPEN, dVar);
            } else {
                a0Var.Z = this;
            }
            int i2 = a0Var.U;
            if (this.f1626c.longValue() > 0) {
                a0Var.U = (int) this.f1626c.longValue();
                i2 = (int) Math.min(this.f1626c.longValue(), 2147483647L);
            }
            if (a0Var.V > 0) {
                i2 = (int) Math.min(this.f1626c.longValue(), (long) a0Var.V);
            }
            a0Var.X.f1866d = i2;
            if (this.f1627d.longValue() > 0) {
                this.f1627d.longValue();
            }
            k.a.b.a.b.h hVar = this.f1628e;
            if (hVar != null && hVar.longValue() > 0) {
                a0Var.o0 = this.f1628e.x;
                return;
            }
            return;
        }
        throw null;
    }
}
