package k.a.b.a.g.i;

public class a {
    public String a = null;
    public String b = null;

    /* renamed from: c  reason: collision with root package name */
    public String f1938c = null;

    /* renamed from: d  reason: collision with root package name */
    public String f1939d = null;

    /* renamed from: e  reason: collision with root package name */
    public String f1940e = null;

    /* renamed from: f  reason: collision with root package name */
    public String f1941f = null;

    public String toString() {
        String str = new String();
        if (this.a != null) {
            str = e.a.a.a.a.a(e.a.a.a.a.a(str), this.a, "://");
        }
        if (this.b != null) {
            StringBuilder a2 = e.a.a.a.a.a(str);
            a2.append(this.b);
            str = a2.toString();
        }
        if (this.f1938c != null) {
            StringBuilder a3 = e.a.a.a.a.a(str, ":");
            a3.append(this.f1938c);
            str = a3.toString();
        }
        if (!(this.b == null && this.f1938c == null)) {
            str = e.a.a.a.a.b(str, "@");
        }
        String str2 = this.f1939d;
        if (str2 != null) {
            if (str2.contains(":")) {
                str = e.a.a.a.a.a(e.a.a.a.a.a(str, "["), this.f1939d, "]");
            } else {
                StringBuilder a4 = e.a.a.a.a.a(str);
                a4.append(this.f1939d);
                str = a4.toString();
            }
        }
        if (this.f1940e != null) {
            StringBuilder a5 = e.a.a.a.a.a(str, ":");
            a5.append(this.f1940e);
            str = a5.toString();
        }
        if (this.f1941f == null) {
            return str;
        }
        StringBuilder a6 = e.a.a.a.a.a(str, "/");
        a6.append(this.f1941f);
        return a6.toString();
    }
}
