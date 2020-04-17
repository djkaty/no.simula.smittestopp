package d.i.h;

import android.util.Log;
import java.io.Writer;

public class a extends Writer {
    public final String x;
    public StringBuilder y = new StringBuilder(128);

    public a(String str) {
        this.x = str;
    }

    public final void a() {
        if (this.y.length() > 0) {
            Log.d(this.x, this.y.toString());
            StringBuilder sb = this.y;
            sb.delete(0, sb.length());
        }
    }

    public void close() {
        a();
    }

    public void flush() {
        a();
    }

    public void write(char[] cArr, int i2, int i3) {
        for (int i4 = 0; i4 < i3; i4++) {
            char c2 = cArr[i2 + i4];
            if (c2 == 10) {
                a();
            } else {
                this.y.append(c2);
            }
        }
    }
}
