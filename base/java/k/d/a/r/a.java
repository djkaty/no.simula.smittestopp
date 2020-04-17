package k.d.a.r;

import android.util.Log;
import java.util.logging.Level;
import k.d.a.g;

public class a implements g {
    public static final boolean b;
    public final String a;

    static {
        boolean z;
        try {
            Class.forName("android.util.Log");
            z = true;
        } catch (ClassNotFoundException unused) {
            z = false;
        }
        b = z;
    }

    public a(String str) {
        this.a = str;
    }

    public void a(Level level, String str) {
        if (level != Level.OFF) {
            Log.println(a(level), this.a, str);
        }
    }

    public void a(Level level, String str, Throwable th) {
        if (level != Level.OFF) {
            int a2 = a(level);
            String str2 = this.a;
            StringBuilder a3 = e.a.a.a.a.a(str, "\n");
            a3.append(Log.getStackTraceString(th));
            Log.println(a2, str2, a3.toString());
        }
    }

    public final int a(Level level) {
        int intValue = level.intValue();
        if (intValue < 800) {
            return intValue < 500 ? 2 : 3;
        }
        if (intValue < 900) {
            return 4;
        }
        return intValue < 1000 ? 5 : 6;
    }
}
