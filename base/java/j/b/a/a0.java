package j.b.a;

import android.content.Context;
import android.content.SharedPreferences;
import com.microsoft.appcenter.ingestion.models.AbstractLog;
import com.microsoft.identity.client.PublicClientApplication;
import com.microsoft.identity.common.internal.providers.oauth2.ResponseType;
import d.i.b.a;
import h.k.b.g;
import java.util.UUID;

public final class a0 {
    public static final UUID a;
    public static final UUID b;

    /* renamed from: c  reason: collision with root package name */
    public static final int f1487c = 1;

    static {
        UUID fromString = UUID.fromString("e45c1747-a0a4-44ab-8c06-a956df58d93a");
        g.a((Object) fromString, "UUID.fromString(\n       …6-a956df58d93a\"\n        )");
        a = fromString;
        UUID fromString2 = UUID.fromString("64b81e3c-d60c-4f08-8396-9351b04f7591");
        g.a((Object) fromString2, "UUID.fromString(\n       …6-9351b04f7591\"\n        )");
        b = fromString2;
    }

    public static final long a(long j2) {
        return j2 * ((long) 1000);
    }

    public static final boolean a(Context context, String str) {
        if (context == null) {
            g.a(PublicClientApplication.NONNULL_CONSTANTS.CONTEXT);
            throw null;
        } else if (str != null) {
            return a.a(context, str) == 0;
        } else {
            g.a("permission");
            throw null;
        }
    }

    public static final void b(Context context, boolean z) {
        if (context != null) {
            SharedPreferences.Editor edit = context.getSharedPreferences("settings", 0).edit();
            edit.putBoolean("did-user-start-loc", z);
            edit.apply();
            return;
        }
        g.a(PublicClientApplication.NONNULL_CONSTANTS.CONTEXT);
        throw null;
    }

    public static final void c(Context context, boolean z) {
        if (context != null) {
            SharedPreferences.Editor edit = context.getSharedPreferences("settings", 0).edit();
            edit.putBoolean("dont-ask-again", z);
            edit.apply();
            return;
        }
        g.a(PublicClientApplication.NONNULL_CONSTANTS.CONTEXT);
        throw null;
    }

    public static final boolean d(Context context) {
        if (context != null) {
            return context.getSharedPreferences("settings", 0).getBoolean("did-user-start-loc", true);
        }
        g.a(PublicClientApplication.NONNULL_CONSTANTS.CONTEXT);
        throw null;
    }

    public static final String e(Context context) {
        if (context != null) {
            String string = context.getSharedPreferences("settings", 0).getString("device-id-string", "");
            if (string == null || h.o.g.b(string)) {
                return "";
            }
            return string;
        }
        g.a(PublicClientApplication.NONNULL_CONSTANTS.CONTEXT);
        throw null;
    }

    public static final String f(Context context) {
        if (context != null) {
            String string = context.getSharedPreferences("settings", 0).getString(ResponseType.TOKEN, "");
            if (string != null) {
                return string;
            }
            return "";
        }
        g.a(PublicClientApplication.NONNULL_CONSTANTS.CONTEXT);
        throw null;
    }

    public static final boolean g(Context context) {
        if (context != null) {
            return context.getSharedPreferences("settings", 0).getBoolean("consented", false);
        }
        g.a(PublicClientApplication.NONNULL_CONSTANTS.CONTEXT);
        throw null;
    }

    public static final boolean h(Context context) {
        if (context == null) {
            g.a(PublicClientApplication.NONNULL_CONSTANTS.CONTEXT);
            throw null;
        } else if (j(context)) {
            return true;
        } else {
            if (!(!h.o.g.b(f(context))) || k(context)) {
                return false;
            }
            return true;
        }
    }

    public static final boolean i(Context context) {
        if (context != null) {
            return context.getSharedPreferences("settings", 0).getBoolean("firstland", true);
        }
        g.a(PublicClientApplication.NONNULL_CONSTANTS.CONTEXT);
        throw null;
    }

    public static final boolean j(Context context) {
        if (context != null) {
            String e2 = e(context);
            Boolean valueOf = e2 != null ? Boolean.valueOf(!h.o.g.b(e2)) : null;
            if (valueOf != null) {
                return valueOf.booleanValue();
            }
            g.a();
            throw null;
        }
        g.a(PublicClientApplication.NONNULL_CONSTANTS.CONTEXT);
        throw null;
    }

    public static final boolean k(Context context) {
        if (context != null) {
            long j2 = (long) 60;
            if (System.currentTimeMillis() - context.getSharedPreferences("settings", 0).getLong(AbstractLog.TIMESTAMP, 0) >= 12 * j2 * j2 * ((long) 1000)) {
                return true;
            }
            return false;
        }
        g.a(PublicClientApplication.NONNULL_CONSTANTS.CONTEXT);
        throw null;
    }

    public static final void a(Context context, boolean z) {
        if (context != null) {
            SharedPreferences.Editor edit = context.getSharedPreferences("settings", 0).edit();
            edit.putBoolean("did-user-start-bt", z);
            edit.apply();
            return;
        }
        g.a(PublicClientApplication.NONNULL_CONSTANTS.CONTEXT);
        throw null;
    }

    public static final void b(Context context) {
        if (context != null) {
            context.getSharedPreferences("settings", 0).edit().clear().apply();
        } else {
            g.a(PublicClientApplication.NONNULL_CONSTANTS.CONTEXT);
            throw null;
        }
    }

    public static final boolean c(Context context) {
        if (context != null) {
            return context.getSharedPreferences("settings", 0).getBoolean("did-user-start-bt", true);
        }
        g.a(PublicClientApplication.NONNULL_CONSTANTS.CONTEXT);
        throw null;
    }

    public static final String a(Context context) {
        if (context != null) {
            String string = context.getSharedPreferences("settings", 0).getString("connection-data", "");
            if (string != null) {
                return string;
            }
            return "";
        }
        g.a(PublicClientApplication.NONNULL_CONSTANTS.CONTEXT);
        throw null;
    }

    public static final long a() {
        return System.currentTimeMillis() / ((long) 1000);
    }
}
