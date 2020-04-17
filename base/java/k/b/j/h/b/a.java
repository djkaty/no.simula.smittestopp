package k.b.j.h.b;

public class a {
    public String a;
    public String b;

    public a(String str, String str2) {
        this.a = str;
        this.b = str2;
    }

    public final boolean a(String str, String str2) {
        if (str == str2) {
            return true;
        }
        if (str == null || str2 == null) {
            return false;
        }
        return str.equals(str2);
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof a)) {
            return false;
        }
        a aVar = (a) obj;
        return aVar == this || (a(this.a, aVar.a) && a(this.b, aVar.b));
    }

    public int hashCode() {
        String str = this.a;
        int i2 = 1;
        int hashCode = str == null ? 1 : str.hashCode();
        String str2 = this.b;
        if (str2 != null) {
            i2 = str2.hashCode();
        }
        return (i2 * 31) + hashCode;
    }
}
