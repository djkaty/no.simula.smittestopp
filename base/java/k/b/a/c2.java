package k.b.a;

public class c2 {
    public String a;
    public int b = 0;

    public c2(String str) {
        this.a = str;
    }

    public String a() {
        int i2 = this.b;
        if (i2 == -1) {
            return null;
        }
        int indexOf = this.a.indexOf(46, i2);
        if (indexOf == -1) {
            String substring = this.a.substring(this.b);
            this.b = -1;
            return substring;
        }
        String substring2 = this.a.substring(this.b, indexOf);
        this.b = indexOf + 1;
        return substring2;
    }
}
