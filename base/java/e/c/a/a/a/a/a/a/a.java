package e.c.a.a.a.a.a.a;

import android.content.Context;
import android.content.SharedPreferences;
import android.text.TextUtils;
import com.google.android.gms.auth.api.signin.GoogleSignInAccount;
import d.b.a.r;
import java.util.concurrent.locks.Lock;
import java.util.concurrent.locks.ReentrantLock;
import javax.annotation.Nullable;
import javax.annotation.concurrent.GuardedBy;
import org.json.JSONException;

public class a {

    /* renamed from: c  reason: collision with root package name */
    public static final Lock f1121c = new ReentrantLock();
    @GuardedBy("sLk")

    /* renamed from: d  reason: collision with root package name */
    public static a f1122d;
    public final Lock a = new ReentrantLock();
    @GuardedBy("mLk")
    public final SharedPreferences b;

    public a(Context context) {
        this.b = context.getSharedPreferences("com.google.android.gms.signin", 0);
    }

    public static a a(Context context) {
        r.a(context);
        f1121c.lock();
        try {
            if (f1122d == null) {
                f1122d = new a(context.getApplicationContext());
            }
            return f1122d;
        } finally {
            f1121c.unlock();
        }
    }

    @Nullable
    public GoogleSignInAccount a() {
        String a2 = a("defaultGoogleSignInAccount");
        if (TextUtils.isEmpty(a2)) {
            return null;
        }
        StringBuilder sb = new StringBuilder(String.valueOf(a2).length() + 20);
        sb.append("googleSignInAccount");
        sb.append(":");
        sb.append(a2);
        String a3 = a(sb.toString());
        if (a3 == null) {
            return null;
        }
        try {
            return GoogleSignInAccount.a(a3);
        } catch (JSONException unused) {
            return null;
        }
    }

    @Nullable
    public final String a(String str) {
        this.a.lock();
        try {
            return this.b.getString(str, (String) null);
        } finally {
            this.a.unlock();
        }
    }
}
