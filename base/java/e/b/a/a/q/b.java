package e.b.a.a.q;

import java.util.HashSet;

public class b {
    public final Object a;
    public String b;

    /* renamed from: c  reason: collision with root package name */
    public String f1068c;

    /* renamed from: d  reason: collision with root package name */
    public HashSet<String> f1069d;

    public b(Object obj) {
        this.a = obj;
    }

    public b a() {
        return new b(this.a);
    }

    public boolean a(String str) {
        String str2 = this.b;
        if (str2 == null) {
            this.b = str;
            return false;
        } else if (str.equals(str2)) {
            return true;
        } else {
            String str3 = this.f1068c;
            if (str3 == null) {
                this.f1068c = str;
                return false;
            } else if (str.equals(str3)) {
                return true;
            } else {
                if (this.f1069d == null) {
                    HashSet<String> hashSet = new HashSet<>(16);
                    this.f1069d = hashSet;
                    hashSet.add(this.b);
                    this.f1069d.add(this.f1068c);
                }
                return !this.f1069d.add(str);
            }
        }
    }
}
