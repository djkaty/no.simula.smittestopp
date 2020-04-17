package i.a.b.l;

public class d extends c {
    public String x;

    public d(int i2) {
        super(i2);
    }

    public void a(int i2, int i3) {
        while (i2 < i3 - 1 && Character.isWhitespace(this.x.charAt(i2))) {
            i2++;
        }
        while (true) {
            int i4 = i3 - 1;
            if (i4 <= i2 || !Character.isWhitespace(this.x.charAt(i4))) {
                this.f1417e = this.x.substring(i2, i3);
            } else {
                i3 = i4;
            }
        }
        this.f1417e = this.x.substring(i2, i3);
    }

    public void c() {
        int i2 = this.f1418f + 1;
        this.f1418f = i2;
        if (i2 >= this.w) {
            this.a = 26;
        } else {
            this.a = this.x.charAt(i2);
        }
    }

    public void d() {
        int i2 = this.f1418f + 1;
        this.f1418f = i2;
        if (i2 >= this.w) {
            this.a = 26;
        } else {
            this.a = this.x.charAt(i2);
        }
    }
}
