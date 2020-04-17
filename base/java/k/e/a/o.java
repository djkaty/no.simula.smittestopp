package k.e.a;

public final class o {
    public final int a;
    public final String b;

    /* renamed from: c  reason: collision with root package name */
    public final String f2379c;

    /* renamed from: d  reason: collision with root package name */
    public final String f2380d;

    /* renamed from: e  reason: collision with root package name */
    public final boolean f2381e;

    public o(int i2, String str, String str2, String str3, boolean z) {
        this.a = i2;
        this.b = str;
        this.f2379c = str2;
        this.f2380d = str3;
        this.f2381e = z;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof o)) {
            return false;
        }
        o oVar = (o) obj;
        if (this.a != oVar.a || this.f2381e != oVar.f2381e || !this.b.equals(oVar.b) || !this.f2379c.equals(oVar.f2379c) || !this.f2380d.equals(oVar.f2380d)) {
            return false;
        }
        return true;
    }

    public int hashCode() {
        return (this.f2380d.hashCode() * this.f2379c.hashCode() * this.b.hashCode()) + this.a + (this.f2381e ? 64 : 0);
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append(this.b);
        sb.append('.');
        sb.append(this.f2379c);
        sb.append(this.f2380d);
        sb.append(" (");
        sb.append(this.a);
        sb.append(this.f2381e ? " itf" : "");
        sb.append(')');
        return sb.toString();
    }
}
