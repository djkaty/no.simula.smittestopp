package h.k.b;

import com.microsoft.appcenter.utils.crypto.CryptoConstants;
import h.a;
import java.util.Arrays;

public class g {
    public static void a() {
        a aVar = new a();
        a(aVar);
        throw aVar;
    }

    public static void b(String str) {
        h.g gVar = new h.g(e.a.a.a.a.a("lateinit property ", str, " has not been initialized"));
        a(gVar);
        throw gVar;
    }

    public static void a(Object obj, String str) {
        if (obj == null) {
            IllegalStateException illegalStateException = new IllegalStateException(e.a.a.a.a.b(str, " must not be null"));
            a(illegalStateException);
            throw illegalStateException;
        }
    }

    public static void a(String str) {
        StackTraceElement stackTraceElement = Thread.currentThread().getStackTrace()[3];
        String className = stackTraceElement.getClassName();
        String methodName = stackTraceElement.getMethodName();
        IllegalArgumentException illegalArgumentException = new IllegalArgumentException("Parameter specified as non-null is null: method " + className + CryptoConstants.ALIAS_SEPARATOR + methodName + ", parameter " + str);
        a(illegalArgumentException);
        throw illegalArgumentException;
    }

    public static boolean a(Object obj, Object obj2) {
        if (obj == null) {
            return obj2 == null;
        }
        return obj.equals(obj2);
    }

    public static <T extends Throwable> T a(T t) {
        String name = g.class.getName();
        StackTraceElement[] stackTrace = t.getStackTrace();
        int length = stackTrace.length;
        int i2 = -1;
        for (int i3 = 0; i3 < length; i3++) {
            if (name.equals(stackTrace[i3].getClassName())) {
                i2 = i3;
            }
        }
        t.setStackTrace((StackTraceElement[]) Arrays.copyOfRange(stackTrace, i2 + 1, length));
        return t;
    }
}
