package k.a.b.a.b.k;

import com.microsoft.identity.client.claims.WWWAuthenticateHeader;
import java.util.Date;
import k.a.b.a.b.a;
import k.a.b.a.b.f;
import k.a.b.a.b.h;

public final class p implements t {
    public Object a;
    public a b;

    /* renamed from: c  reason: collision with root package name */
    public String f1575c;

    /* renamed from: d  reason: collision with root package name */
    public String f1576d;

    /* renamed from: e  reason: collision with root package name */
    public String f1577e;

    /* renamed from: f  reason: collision with root package name */
    public Object f1578f;

    /* renamed from: g  reason: collision with root package name */
    public f f1579g;

    /* renamed from: h  reason: collision with root package name */
    public f f1580h;

    /* renamed from: i  reason: collision with root package name */
    public Date f1581i;

    /* renamed from: j  reason: collision with root package name */
    public Date f1582j;

    /* renamed from: k  reason: collision with root package name */
    public String f1583k;

    /* renamed from: l  reason: collision with root package name */
    public h f1584l;
    public String m;

    public String toString() {
        StringBuilder a2 = e.a.a.a.a.a("Properties{messageId=");
        a2.append(this.a);
        a2.append(", userId=");
        a2.append(this.b);
        a2.append(", to='");
        e.a.a.a.a.a(a2, this.f1575c, (char) WWWAuthenticateHeader.SINGLE_QUOTE, ", subject='");
        e.a.a.a.a.a(a2, this.f1576d, (char) WWWAuthenticateHeader.SINGLE_QUOTE, ", replyTo='");
        e.a.a.a.a.a(a2, this.f1577e, (char) WWWAuthenticateHeader.SINGLE_QUOTE, ", correlationId=");
        a2.append(this.f1578f);
        a2.append(", contentType=");
        a2.append(this.f1579g);
        a2.append(", contentEncoding=");
        a2.append(this.f1580h);
        a2.append(", absoluteExpiryTime=");
        a2.append(this.f1581i);
        a2.append(", creationTime=");
        a2.append(this.f1582j);
        a2.append(", groupId='");
        e.a.a.a.a.a(a2, this.f1583k, (char) WWWAuthenticateHeader.SINGLE_QUOTE, ", groupSequence=");
        a2.append(this.f1584l);
        a2.append(", replyToGroupId='");
        a2.append(this.m);
        a2.append(WWWAuthenticateHeader.SINGLE_QUOTE);
        a2.append('}');
        return a2.toString();
    }
}
