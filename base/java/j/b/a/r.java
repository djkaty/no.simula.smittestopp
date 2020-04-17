package j.b.a;

import com.microsoft.azure.storage.core.Utility;
import e.a.a.a.a;
import h.k.b.g;
import java.text.SimpleDateFormat;
import java.util.TimeZone;
import org.json.JSONObject;

public final class r {
    public Integer a;
    public long b;

    /* renamed from: c  reason: collision with root package name */
    public long f1517c;

    /* renamed from: d  reason: collision with root package name */
    public final long f1518d;

    /* renamed from: e  reason: collision with root package name */
    public final Double f1519e;

    /* renamed from: f  reason: collision with root package name */
    public final Double f1520f;

    /* renamed from: g  reason: collision with root package name */
    public final Double f1521g;

    /* renamed from: h  reason: collision with root package name */
    public final Double f1522h;

    /* renamed from: i  reason: collision with root package name */
    public final Double f1523i;

    /* renamed from: j  reason: collision with root package name */
    public final Double f1524j;

    /* renamed from: k  reason: collision with root package name */
    public final Double f1525k;

    /* renamed from: l  reason: collision with root package name */
    public final boolean f1526l;

    public r(long j2, Double d2, Double d3, Double d4, Double d5, Double d6, Double d7, Double d8, boolean z) {
        this.f1518d = j2;
        this.f1519e = d2;
        this.f1520f = d3;
        this.f1521g = d4;
        this.f1522h = d5;
        this.f1523i = d6;
        this.f1524j = d7;
        this.f1525k = d8;
        this.f1526l = z;
        this.b = j2;
        this.f1517c = j2;
    }

    public final JSONObject a() {
        SimpleDateFormat simpleDateFormat = new SimpleDateFormat(Utility.ISO8601_PATTERN);
        simpleDateFormat.setTimeZone(TimeZone.getTimeZone("UTC"));
        JSONObject jSONObject = new JSONObject();
        jSONObject.put("timeFrom", simpleDateFormat.format(Long.valueOf(a0.a(this.b))));
        jSONObject.put("timeTo", simpleDateFormat.format(Long.valueOf(a0.a(this.f1517c))));
        jSONObject.put("latitude", this.f1519e);
        jSONObject.put("longitude", this.f1520f);
        jSONObject.put("accuracy", this.f1521g);
        jSONObject.put("altitude", this.f1522h);
        jSONObject.put("altitudeAccuracy", this.f1523i);
        jSONObject.put("speed", this.f1524j);
        jSONObject.put("speedAccuracy", this.f1525k);
        return jSONObject;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof r)) {
            return false;
        }
        r rVar = (r) obj;
        return this.f1518d == rVar.f1518d && g.a((Object) this.f1519e, (Object) rVar.f1519e) && g.a((Object) this.f1520f, (Object) rVar.f1520f) && g.a((Object) this.f1521g, (Object) rVar.f1521g) && g.a((Object) this.f1522h, (Object) rVar.f1522h) && g.a((Object) this.f1523i, (Object) rVar.f1523i) && g.a((Object) this.f1524j, (Object) rVar.f1524j) && g.a((Object) this.f1525k, (Object) rVar.f1525k) && this.f1526l == rVar.f1526l;
    }

    public int hashCode() {
        int a2 = a.a(this.f1518d) * 31;
        Double d2 = this.f1519e;
        int i2 = 0;
        int hashCode = (a2 + (d2 != null ? d2.hashCode() : 0)) * 31;
        Double d3 = this.f1520f;
        int hashCode2 = (hashCode + (d3 != null ? d3.hashCode() : 0)) * 31;
        Double d4 = this.f1521g;
        int hashCode3 = (hashCode2 + (d4 != null ? d4.hashCode() : 0)) * 31;
        Double d5 = this.f1522h;
        int hashCode4 = (hashCode3 + (d5 != null ? d5.hashCode() : 0)) * 31;
        Double d6 = this.f1523i;
        int hashCode5 = (hashCode4 + (d6 != null ? d6.hashCode() : 0)) * 31;
        Double d7 = this.f1524j;
        int hashCode6 = (hashCode5 + (d7 != null ? d7.hashCode() : 0)) * 31;
        Double d8 = this.f1525k;
        if (d8 != null) {
            i2 = d8.hashCode();
        }
        int i3 = (hashCode6 + i2) * 31;
        boolean z = this.f1526l;
        if (z) {
            z = true;
        }
        return i3 + (z ? 1 : 0);
    }

    public String toString() {
        StringBuilder a2 = a.a("Measurement(timestamp=");
        a2.append(this.f1518d);
        a2.append(", latitude=");
        a2.append(this.f1519e);
        a2.append(", longitude=");
        a2.append(this.f1520f);
        a2.append(", latLongAccuracy=");
        a2.append(this.f1521g);
        a2.append(", altitude=");
        a2.append(this.f1522h);
        a2.append(", altitudeAccuracy=");
        a2.append(this.f1523i);
        a2.append(", speed=");
        a2.append(this.f1524j);
        a2.append(", speedAccuracy=");
        a2.append(this.f1525k);
        a2.append(", isUploaded=");
        a2.append(this.f1526l);
        a2.append(")");
        return a2.toString();
    }
}
