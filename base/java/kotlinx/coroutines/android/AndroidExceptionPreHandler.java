package kotlinx.coroutines.android;

import android.os.Build;
import androidx.annotation.Keep;
import com.microsoft.identity.client.PublicClientApplication;
import h.b;
import h.d;
import h.j.a;
import h.k.b.g;
import h.k.b.i;
import h.k.b.l;
import h.m.e;
import java.lang.Thread;
import java.lang.reflect.Method;
import java.lang.reflect.Modifier;
import kotlinx.coroutines.CoroutineExceptionHandler;

@Keep
public final class AndroidExceptionPreHandler extends a implements CoroutineExceptionHandler, h.k.a.a<Method> {
    public static final /* synthetic */ e[] $$delegatedProperties;
    public final b preHandler$delegate = new d(this, (Object) null, 2);

    static {
        e[] eVarArr = new e[1];
        Class<AndroidExceptionPreHandler> cls = AndroidExceptionPreHandler.class;
        if (l.a != null) {
            i iVar = new i(new h.k.b.d(cls), "preHandler", "getPreHandler()Ljava/lang/reflect/Method;");
            if (l.a != null) {
                eVarArr[0] = iVar;
                $$delegatedProperties = eVarArr;
                return;
            }
            throw null;
        }
        throw null;
    }

    public AndroidExceptionPreHandler() {
        super(CoroutineExceptionHandler.f2453d);
    }

    private final Method getPreHandler() {
        b bVar = this.preHandler$delegate;
        e eVar = $$delegatedProperties[0];
        return (Method) bVar.getValue();
    }

    public void handleException(h.j.d dVar, Throwable th) {
        Object obj = null;
        if (dVar == null) {
            g.a(PublicClientApplication.NONNULL_CONSTANTS.CONTEXT);
            throw null;
        } else if (th != null) {
            Thread currentThread = Thread.currentThread();
            if (Build.VERSION.SDK_INT >= 28) {
                g.a((Object) currentThread, "thread");
                currentThread.getUncaughtExceptionHandler().uncaughtException(currentThread, th);
                return;
            }
            Method preHandler = getPreHandler();
            Object invoke = preHandler != null ? preHandler.invoke((Object) null, new Object[0]) : null;
            if (invoke instanceof Thread.UncaughtExceptionHandler) {
                obj = invoke;
            }
            Thread.UncaughtExceptionHandler uncaughtExceptionHandler = (Thread.UncaughtExceptionHandler) obj;
            if (uncaughtExceptionHandler != null) {
                uncaughtExceptionHandler.uncaughtException(currentThread, th);
            }
        } else {
            g.a("exception");
            throw null;
        }
    }

    public Method invoke() {
        boolean z = false;
        try {
            Method declaredMethod = Thread.class.getDeclaredMethod("getUncaughtExceptionPreHandler", new Class[0]);
            g.a((Object) declaredMethod, "it");
            if (Modifier.isPublic(declaredMethod.getModifiers()) && Modifier.isStatic(declaredMethod.getModifiers())) {
                z = true;
            }
            if (z) {
                return declaredMethod;
            }
            return null;
        } catch (Throwable unused) {
            return null;
        }
    }
}
