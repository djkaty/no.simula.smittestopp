package k.c.a.a.a.t;

import com.microsoft.identity.common.internal.eststelemetry.Schema;
import java.text.MessageFormat;
import java.util.MissingResourceException;
import java.util.ResourceBundle;
import java.util.logging.Level;
import java.util.logging.LogRecord;
import java.util.logging.Logger;

public class a implements b {
    public Logger a = null;
    public ResourceBundle b = null;

    /* renamed from: c  reason: collision with root package name */
    public ResourceBundle f2286c = null;

    /* renamed from: d  reason: collision with root package name */
    public String f2287d = null;

    /* renamed from: e  reason: collision with root package name */
    public String f2288e = null;

    /* renamed from: f  reason: collision with root package name */
    public String f2289f = null;

    public void a(ResourceBundle resourceBundle, String str, String str2) {
        this.f2286c = this.b;
        this.f2288e = str2;
        this.f2289f = str;
        this.a = Logger.getLogger(str);
        this.b = resourceBundle;
        this.f2286c = resourceBundle;
        this.f2287d = resourceBundle.getString(Schema.Value.FALSE);
    }

    public void b(String str, String str2, String str3, Object[] objArr, Throwable th) {
        a(2, str, str2, str3, objArr, th);
    }

    public void b(String str, String str2, String str3) {
        b(5, str, str2, str3, (Object[]) null, (Throwable) null);
    }

    public void b(String str, String str2, String str3, Object[] objArr) {
        b(5, str, str2, str3, objArr, (Throwable) null);
    }

    public void b(int i2, String str, String str2, String str3, Object[] objArr, Throwable th) {
        Level b2 = b(i2);
        if (this.a.isLoggable(b2)) {
            a(b2, str, str2, this.f2286c, str3, objArr, th);
        }
    }

    public final Level b(int i2) {
        switch (i2) {
            case 1:
                return Level.SEVERE;
            case 2:
                return Level.WARNING;
            case 3:
                return Level.INFO;
            case 4:
                return Level.CONFIG;
            case 5:
                return Level.FINE;
            case 6:
                return Level.FINER;
            case 7:
                return Level.FINEST;
            default:
                return null;
        }
    }

    public void a(String str) {
        this.f2288e = str;
    }

    public boolean a(int i2) {
        return this.a.isLoggable(b(i2));
    }

    public void a(String str, String str2, String str3, Object[] objArr) {
        a(1, str, str2, str3, objArr, (Throwable) null);
    }

    public void a(int i2, String str, String str2, String str3, Object[] objArr, Throwable th) {
        Level b2 = b(i2);
        if (this.a.isLoggable(b2)) {
            a(b2, str, str2, this.b, str3, objArr, th);
        }
    }

    public void a(String str, String str2, String str3, Object[] objArr, Throwable th) {
        b(5, str, str2, str3, objArr, th);
    }

    public void a(String str, String str2, String str3) {
        b(6, str, str2, str3, (Object[]) null, (Throwable) null);
    }

    public final void a(Level level, String str, String str2, ResourceBundle resourceBundle, String str3, Object[] objArr, Throwable th) {
        if (!str3.contains("=====")) {
            try {
                str3 = resourceBundle.getString(str3);
            } catch (MissingResourceException unused) {
            }
            str3 = MessageFormat.format(str3, objArr);
        }
        LogRecord logRecord = new LogRecord(level, e.a.a.a.a.a(new StringBuilder(String.valueOf(this.f2288e)), ": ", str3));
        logRecord.setSourceClassName(str);
        logRecord.setSourceMethodName(str2);
        logRecord.setLoggerName(this.f2289f);
        if (th != null) {
            logRecord.setThrown(th);
        }
        this.a.log(logRecord);
    }
}
