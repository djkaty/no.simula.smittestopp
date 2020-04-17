package k.a.b.a.f.d;

import java.nio.ByteBuffer;
import java.util.Date;
import k.a.b.a.b.f;
import k.a.b.a.b.g;
import k.a.b.a.b.h;
import k.a.b.a.b.k.d;
import k.a.b.a.b.k.j;
import k.a.b.a.b.k.k;
import k.a.b.a.b.k.l;
import k.a.b.a.b.k.m;
import k.a.b.a.b.k.p;
import k.a.b.a.b.k.t;
import k.a.b.a.c.i;
import k.a.b.a.c.k0;
import k.a.b.a.c.r;
import k.a.b.a.c.u;
import k.a.b.a.c.x;
import k.a.b.a.c.y0;
import k.a.b.a.f.c;

public class a implements c {
    public static final ThreadLocal<b> tlsCodec = new C0096a();
    public d _applicationProperties;
    public t _body;
    public j _deliveryAnnotations;
    public k _footer;
    public l _header;
    public m _messageAnnotations;
    public p _properties;

    /* renamed from: k.a.b.a.f.d.a$a  reason: collision with other inner class name */
    public static class C0096a extends ThreadLocal<b> {
        public Object initialValue() {
            return new b((C0096a) null);
        }
    }

    public a() {
    }

    public void clear() {
        this._body = null;
    }

    public void decode(ByteBuffer byteBuffer) {
        decode((k0) new k0.a(byteBuffer));
    }

    public int encode(byte[] bArr, int i2, int i3) {
        return encode(new y0.a(ByteBuffer.wrap(bArr, i2, i3)));
    }

    public int encode2(byte[] bArr, int i2, int i3) {
        k.a.b.a.c.m mVar = new k.a.b.a.c.m(new y0.a(ByteBuffer.wrap(bArr, i2, i3)), new u());
        int position = mVar.position();
        encode(mVar);
        return mVar.position() - position;
    }

    public String getAddress() {
        p pVar = this._properties;
        if (pVar == null) {
            return null;
        }
        return pVar.f1575c;
    }

    public d getApplicationProperties() {
        return this._applicationProperties;
    }

    public t getBody() {
        return this._body;
    }

    public String getContentEncoding() {
        f fVar;
        p pVar = this._properties;
        if (pVar == null || (fVar = pVar.f1580h) == null) {
            return null;
        }
        return fVar.x;
    }

    public String getContentType() {
        f fVar;
        p pVar = this._properties;
        if (pVar == null || (fVar = pVar.f1579g) == null) {
            return null;
        }
        return fVar.x;
    }

    public Object getCorrelationId() {
        p pVar = this._properties;
        if (pVar == null) {
            return null;
        }
        return pVar.f1578f;
    }

    public long getCreationTime() {
        Date date;
        p pVar = this._properties;
        if (pVar == null || (date = pVar.f1582j) == null) {
            return 0;
        }
        return date.getTime();
    }

    public j getDeliveryAnnotations() {
        return this._deliveryAnnotations;
    }

    public long getDeliveryCount() {
        h hVar;
        l lVar = this._header;
        if (lVar == null || (hVar = lVar.f1573e) == null) {
            return 0;
        }
        return hVar.longValue();
    }

    public k.a.b.a.f.b getError() {
        return k.a.b.a.f.b.OK;
    }

    public long getExpiryTime() {
        Date date;
        p pVar = this._properties;
        if (pVar == null || (date = pVar.f1581i) == null) {
            return 0;
        }
        return date.getTime();
    }

    public k getFooter() {
        return this._footer;
    }

    public String getGroupId() {
        p pVar = this._properties;
        if (pVar == null) {
            return null;
        }
        return pVar.f1583k;
    }

    public long getGroupSequence() {
        h hVar;
        p pVar = this._properties;
        if (pVar == null || (hVar = pVar.f1584l) == null) {
            return 0;
        }
        return (long) hVar.x;
    }

    public l getHeader() {
        return this._header;
    }

    public m getMessageAnnotations() {
        return this._messageAnnotations;
    }

    public Object getMessageId() {
        p pVar = this._properties;
        if (pVar == null) {
            return null;
        }
        return pVar.a;
    }

    public short getPriority() {
        g gVar;
        l lVar = this._header;
        if (lVar == null || (gVar = lVar.b) == null) {
            return 4;
        }
        return gVar.shortValue();
    }

    public p getProperties() {
        return this._properties;
    }

    public String getReplyTo() {
        p pVar = this._properties;
        if (pVar == null) {
            return null;
        }
        return pVar.f1577e;
    }

    public String getReplyToGroupId() {
        p pVar = this._properties;
        if (pVar == null) {
            return null;
        }
        return pVar.m;
    }

    public String getSubject() {
        p pVar = this._properties;
        if (pVar == null) {
            return null;
        }
        return pVar.f1576d;
    }

    public long getTtl() {
        h hVar;
        l lVar = this._header;
        if (lVar == null || (hVar = lVar.f1571c) == null) {
            return 0;
        }
        return hVar.longValue();
    }

    public byte[] getUserId() {
        k.a.b.a.b.a aVar;
        p pVar = this._properties;
        if (pVar == null || (aVar = pVar.b) == null) {
            return null;
        }
        int i2 = aVar.f1569c;
        byte[] bArr = new byte[i2];
        System.arraycopy(aVar.a, aVar.b, bArr, 0, i2);
        return bArr;
    }

    public boolean isDurable() {
        Boolean bool;
        l lVar = this._header;
        if (lVar == null || (bool = lVar.a) == null) {
            return false;
        }
        return bool.booleanValue();
    }

    public boolean isFirstAcquirer() {
        Boolean bool;
        l lVar = this._header;
        if (lVar == null || (bool = lVar.f1572d) == null) {
            return false;
        }
        return bool.booleanValue();
    }

    public void setAddress(String str) {
        if (this._properties == null) {
            if (str != null) {
                this._properties = new p();
            } else {
                return;
            }
        }
        this._properties.f1575c = str;
    }

    public void setApplicationProperties(d dVar) {
        this._applicationProperties = dVar;
    }

    public void setBody(t tVar) {
        this._body = tVar;
    }

    public void setContentEncoding(String str) {
        if (this._properties == null) {
            if (str != null) {
                this._properties = new p();
            } else {
                return;
            }
        }
        this._properties.f1580h = f.a(str);
    }

    public void setContentType(String str) {
        if (this._properties == null) {
            if (str != null) {
                this._properties = new p();
            } else {
                return;
            }
        }
        this._properties.f1579g = f.a(str);
    }

    public void setCorrelationId(Object obj) {
        if (this._properties == null) {
            if (obj != null) {
                this._properties = new p();
            } else {
                return;
            }
        }
        this._properties.f1578f = obj;
    }

    public void setCreationTime(long j2) {
        if (this._properties == null) {
            if (j2 != 0) {
                this._properties = new p();
            } else {
                return;
            }
        }
        this._properties.f1582j = new Date(j2);
    }

    public void setDeliveryAnnotations(j jVar) {
        this._deliveryAnnotations = jVar;
    }

    public void setDeliveryCount(long j2) {
        if (this._header == null) {
            if (j2 != 0) {
                this._header = new l();
            } else {
                return;
            }
        }
        this._header.f1573e = h.a(j2);
    }

    public void setDurable(boolean z) {
        if (this._header == null) {
            if (z) {
                this._header = new l();
            } else {
                return;
            }
        }
        this._header.a = Boolean.valueOf(z);
    }

    public void setExpiryTime(long j2) {
        if (this._properties == null) {
            if (j2 != 0) {
                this._properties = new p();
            } else {
                return;
            }
        }
        this._properties.f1581i = new Date(j2);
    }

    public void setFirstAcquirer(boolean z) {
        if (this._header == null) {
            if (z) {
                this._header = new l();
            } else {
                return;
            }
        }
        this._header.f1572d = Boolean.valueOf(z);
    }

    public void setFooter(k kVar) {
        this._footer = kVar;
    }

    public void setGroupId(String str) {
        if (this._properties == null) {
            if (str != null) {
                this._properties = new p();
            } else {
                return;
            }
        }
        this._properties.f1583k = str;
    }

    public void setGroupSequence(long j2) {
        if (this._properties == null) {
            if (j2 != 0) {
                this._properties = new p();
            } else {
                return;
            }
        }
        this._properties.f1584l = h.a((int) j2);
    }

    public void setHeader(l lVar) {
        this._header = lVar;
    }

    public void setMessageAnnotations(m mVar) {
        this._messageAnnotations = mVar;
    }

    public void setMessageId(Object obj) {
        if (this._properties == null) {
            if (obj != null) {
                this._properties = new p();
            } else {
                return;
            }
        }
        this._properties.a = obj;
    }

    public void setPriority(short s) {
        if (this._header == null) {
            if (s != 4) {
                this._header = new l();
            } else {
                return;
            }
        }
        this._header.b = g.a((byte) s);
    }

    public void setProperties(p pVar) {
        this._properties = pVar;
    }

    public void setReplyTo(String str) {
        if (this._properties == null) {
            if (str != null) {
                this._properties = new p();
            } else {
                return;
            }
        }
        this._properties.f1577e = str;
    }

    public void setReplyToGroupId(String str) {
        if (this._properties == null) {
            if (str != null) {
                this._properties = new p();
            } else {
                return;
            }
        }
        this._properties.m = str;
    }

    public void setSubject(String str) {
        if (this._properties == null) {
            if (str != null) {
                this._properties = new p();
            } else {
                return;
            }
        }
        this._properties.f1576d = str;
    }

    public void setTtl(long j2) {
        if (this._header == null) {
            if (j2 != 0) {
                this._header = new l();
            } else {
                return;
            }
        }
        this._header.f1571c = h.a(j2);
    }

    public void setUserId(byte[] bArr) {
        if (bArr == null) {
            p pVar = this._properties;
            if (pVar != null) {
                pVar.b = null;
                return;
            }
            return;
        }
        if (this._properties == null) {
            this._properties = new p();
        }
        byte[] bArr2 = new byte[bArr.length];
        System.arraycopy(bArr, 0, bArr2, 0, bArr.length);
        this._properties.b = new k.a.b.a.b.a(bArr2);
    }

    public String toString() {
        StringBuilder a = e.a.a.a.a.a("Message{");
        if (this._header != null) {
            a.append("header=");
            a.append(this._header);
        }
        if (this._properties != null) {
            a.append("properties=");
            a.append(this._properties);
        }
        if (this._messageAnnotations != null) {
            a.append("message_annotations=");
            a.append(this._messageAnnotations);
        }
        if (this._body != null) {
            a.append("body=");
            a.append(this._body);
        }
        a.append("}");
        return a.toString();
    }

    public a(l lVar, j jVar, m mVar, p pVar, d dVar, t tVar, k kVar) {
        this._header = lVar;
        this._deliveryAnnotations = jVar;
        this._messageAnnotations = mVar;
        this._properties = pVar;
        this._applicationProperties = dVar;
        this._body = tVar;
        this._footer = kVar;
    }

    public int decode(byte[] bArr, int i2, int i3) {
        ByteBuffer wrap = ByteBuffer.wrap(bArr, i2, i3);
        decode(wrap);
        return i3 - wrap.remaining();
    }

    public int encode(y0 y0Var) {
        int c2 = y0Var.c();
        x xVar = tlsCodec.get().b;
        xVar.a = y0Var;
        if (getHeader() != null) {
            xVar.b(getHeader());
        }
        if (getDeliveryAnnotations() != null) {
            xVar.b(getDeliveryAnnotations());
        }
        if (getMessageAnnotations() != null) {
            xVar.b(getMessageAnnotations());
        }
        if (getProperties() != null) {
            xVar.b(getProperties());
        }
        if (getApplicationProperties() != null) {
            xVar.b(getApplicationProperties());
        }
        if (getBody() != null) {
            xVar.b(getBody());
        }
        if (getFooter() != null) {
            xVar.b(getFooter());
        }
        xVar.a = null;
        return c2 - y0Var.c();
    }

    public static class b {
        public r a;
        public x b;

        public b() {
            r rVar = new r();
            this.a = rVar;
            x xVar = new x(rVar);
            this.b = xVar;
            e.c.a.a.b.l.c.a((i) this.a, xVar);
        }

        public /* synthetic */ b(C0096a aVar) {
            r rVar = new r();
            this.a = rVar;
            x xVar = new x(rVar);
            this.b = xVar;
            e.c.a.a.b.l.c.a((i) this.a, xVar);
        }
    }

    /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r5v3, resolved type: java.lang.Object} */
    /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r2v10, resolved type: k.a.b.a.b.k.t} */
    /* JADX WARNING: Multi-variable type inference failed */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public void decode(k.a.b.a.c.k0 r5) {
        /*
            r4 = this;
            java.lang.ThreadLocal<k.a.b.a.f.d.a$b> r0 = tlsCodec
            java.lang.Object r0 = r0.get()
            k.a.b.a.f.d.a$b r0 = (k.a.b.a.f.d.a.b) r0
            k.a.b.a.c.r r0 = r0.a
            r0.a = r5
            r1 = 0
            r4._header = r1
            r4._deliveryAnnotations = r1
            r4._messageAnnotations = r1
            r4._properties = r1
            r4._applicationProperties = r1
            r4._body = r1
            r4._footer = r1
            boolean r2 = r5.b()
            if (r2 == 0) goto L_0x0028
            java.lang.Object r2 = r0.d()
            k.a.b.a.b.k.t r2 = (k.a.b.a.b.k.t) r2
            goto L_0x0029
        L_0x0028:
            r2 = r1
        L_0x0029:
            boolean r3 = r2 instanceof k.a.b.a.b.k.l
            if (r3 == 0) goto L_0x003f
            k.a.b.a.b.k.l r2 = (k.a.b.a.b.k.l) r2
            r4._header = r2
            boolean r2 = r5.b()
            if (r2 == 0) goto L_0x003e
            java.lang.Object r2 = r0.d()
            k.a.b.a.b.k.t r2 = (k.a.b.a.b.k.t) r2
            goto L_0x003f
        L_0x003e:
            r2 = r1
        L_0x003f:
            boolean r3 = r2 instanceof k.a.b.a.b.k.j
            if (r3 == 0) goto L_0x0055
            k.a.b.a.b.k.j r2 = (k.a.b.a.b.k.j) r2
            r4._deliveryAnnotations = r2
            boolean r2 = r5.b()
            if (r2 == 0) goto L_0x0054
            java.lang.Object r2 = r0.d()
            k.a.b.a.b.k.t r2 = (k.a.b.a.b.k.t) r2
            goto L_0x0055
        L_0x0054:
            r2 = r1
        L_0x0055:
            boolean r3 = r2 instanceof k.a.b.a.b.k.m
            if (r3 == 0) goto L_0x006b
            k.a.b.a.b.k.m r2 = (k.a.b.a.b.k.m) r2
            r4._messageAnnotations = r2
            boolean r2 = r5.b()
            if (r2 == 0) goto L_0x006a
            java.lang.Object r2 = r0.d()
            k.a.b.a.b.k.t r2 = (k.a.b.a.b.k.t) r2
            goto L_0x006b
        L_0x006a:
            r2 = r1
        L_0x006b:
            boolean r3 = r2 instanceof k.a.b.a.b.k.p
            if (r3 == 0) goto L_0x0081
            k.a.b.a.b.k.p r2 = (k.a.b.a.b.k.p) r2
            r4._properties = r2
            boolean r2 = r5.b()
            if (r2 == 0) goto L_0x0080
            java.lang.Object r2 = r0.d()
            k.a.b.a.b.k.t r2 = (k.a.b.a.b.k.t) r2
            goto L_0x0081
        L_0x0080:
            r2 = r1
        L_0x0081:
            boolean r3 = r2 instanceof k.a.b.a.b.k.d
            if (r3 == 0) goto L_0x0097
            k.a.b.a.b.k.d r2 = (k.a.b.a.b.k.d) r2
            r4._applicationProperties = r2
            boolean r2 = r5.b()
            if (r2 == 0) goto L_0x0096
            java.lang.Object r2 = r0.d()
            k.a.b.a.b.k.t r2 = (k.a.b.a.b.k.t) r2
            goto L_0x0097
        L_0x0096:
            r2 = r1
        L_0x0097:
            if (r2 == 0) goto L_0x00ae
            boolean r3 = r2 instanceof k.a.b.a.b.k.k
            if (r3 != 0) goto L_0x00ae
            r4._body = r2
            boolean r5 = r5.b()
            if (r5 == 0) goto L_0x00ad
            java.lang.Object r5 = r0.d()
            r2 = r5
            k.a.b.a.b.k.t r2 = (k.a.b.a.b.k.t) r2
            goto L_0x00ae
        L_0x00ad:
            r2 = r1
        L_0x00ae:
            boolean r5 = r2 instanceof k.a.b.a.b.k.k
            if (r5 == 0) goto L_0x00b6
            k.a.b.a.b.k.k r2 = (k.a.b.a.b.k.k) r2
            r4._footer = r2
        L_0x00b6:
            r0.a = r1
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: k.a.b.a.f.d.a.decode(k.a.b.a.c.k0):void");
    }
}
