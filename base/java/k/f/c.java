package k.f;

import com.microsoft.identity.common.internal.telemetry.TelemetryEventStrings;
import e.a.a.a.a;
import java.io.IOException;
import java.lang.reflect.InvocationTargetException;
import java.net.URL;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Enumeration;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.Set;
import java.util.concurrent.LinkedBlockingQueue;
import k.f.e.b;
import k.f.e.d;
import k.f.e.e;
import k.f.e.f;
import org.slf4j.impl.StaticLoggerBinder;

public final class c {
    public static volatile int a;
    public static final e b = new e();

    /* renamed from: c  reason: collision with root package name */
    public static final k.f.e.c f2448c = new k.f.e.c();

    /* renamed from: d  reason: collision with root package name */
    public static boolean f2449d;

    /* renamed from: e  reason: collision with root package name */
    public static final String[] f2450e = {"1.6", "1.7"};

    /* renamed from: f  reason: collision with root package name */
    public static String f2451f = "org/slf4j/impl/StaticLoggerBinder.class";

    static {
        boolean z;
        String str = null;
        try {
            str = System.getProperty("slf4j.detectLoggerNameMismatch");
        } catch (SecurityException unused) {
        }
        if (str == null) {
            z = false;
        } else {
            z = str.equalsIgnoreCase("true");
        }
        f2449d = z;
    }

    public static final void a() {
        Set<URL> set;
        try {
            if (!e()) {
                set = b();
                b(set);
            } else {
                set = null;
            }
            StaticLoggerBinder.getSingleton();
            a = 3;
            a(set);
            c();
            f();
            e eVar = b;
            eVar.b.clear();
            eVar.f2452c.clear();
        } catch (NoClassDefFoundError e2) {
            String message = e2.getMessage();
            boolean z = false;
            if (message != null && (message.contains("org/slf4j/impl/StaticLoggerBinder") || message.contains("org.slf4j.impl.StaticLoggerBinder"))) {
                z = true;
            }
            if (z) {
                a = 4;
                f.a("Failed to load class \"org.slf4j.impl.StaticLoggerBinder\".");
                f.a("Defaulting to no-operation (NOP) logger implementation");
                f.a("See http://www.slf4j.org/codes.html#StaticLoggerBinder for further details.");
                return;
            }
            a = 2;
            f.a("Failed to instantiate SLF4J LoggerFactory", e2);
            throw e2;
        } catch (NoSuchMethodError e3) {
            String message2 = e3.getMessage();
            if (message2 != null && message2.contains("org.slf4j.impl.StaticLoggerBinder.getSingleton()")) {
                a = 2;
                f.a("slf4j-api 1.6.x (or later) is incompatible with this binding.");
                f.a("Your binding is version 1.5.5 or earlier.");
                f.a("Upgrade your binding to version 1.6.x.");
            }
            throw e3;
        } catch (Exception e4) {
            a = 2;
            f.a("Failed to instantiate SLF4J LoggerFactory", e4);
            throw new IllegalStateException("Unexpected initialization failure", e4);
        }
    }

    public static Set<URL> b() {
        Enumeration<URL> enumeration;
        LinkedHashSet linkedHashSet = new LinkedHashSet();
        try {
            ClassLoader classLoader = c.class.getClassLoader();
            if (classLoader == null) {
                enumeration = ClassLoader.getSystemResources(f2451f);
            } else {
                enumeration = classLoader.getResources(f2451f);
            }
            while (enumeration.hasMoreElements()) {
                linkedHashSet.add(enumeration.nextElement());
            }
        } catch (IOException e2) {
            f.a("Error getting resources from path", e2);
        }
        return linkedHashSet;
    }

    public static void c() {
        synchronized (b) {
            b.a = true;
            e eVar = b;
            if (eVar != null) {
                Iterator it = new ArrayList(eVar.b.values()).iterator();
                while (it.hasNext()) {
                    d dVar = (d) it.next();
                    dVar.y = a(dVar.x);
                }
            } else {
                throw null;
            }
        }
    }

    public static a d() {
        if (a == 0) {
            synchronized (c.class) {
                if (a == 0) {
                    a = 1;
                    a();
                    if (a == 3) {
                        g();
                    }
                }
            }
        }
        int i2 = a;
        if (i2 == 1) {
            return b;
        }
        if (i2 == 2) {
            throw new IllegalStateException("org.slf4j.LoggerFactory in failed state. Original exception was thrown EARLIER. See also http://www.slf4j.org/codes.html#unsuccessfulInit");
        } else if (i2 == 3) {
            return StaticLoggerBinder.getSingleton().getLoggerFactory();
        } else {
            if (i2 == 4) {
                return f2448c;
            }
            throw new IllegalStateException("Unreachable code");
        }
    }

    public static boolean e() {
        String str;
        try {
            str = System.getProperty("java.vendor.url");
        } catch (SecurityException unused) {
            str = null;
        }
        if (str == null) {
            return false;
        }
        return str.toLowerCase().contains(TelemetryEventStrings.Os.OS_NAME);
    }

    public static void f() {
        LinkedBlockingQueue<k.f.d.d> linkedBlockingQueue = b.f2452c;
        int size = linkedBlockingQueue.size();
        ArrayList arrayList = new ArrayList(128);
        int i2 = 0;
        while (linkedBlockingQueue.drainTo(arrayList, 128) != 0) {
            Iterator it = arrayList.iterator();
            while (it.hasNext()) {
                k.f.d.d dVar = (k.f.d.d) it.next();
                if (dVar != null) {
                    d dVar2 = dVar.a;
                    String str = dVar2.x;
                    if (dVar2.y == null) {
                        throw new IllegalStateException("Delegate logger cannot be null at this state.");
                    } else if (!(dVar2.y instanceof b)) {
                        if (!dVar2.g()) {
                            f.a(str);
                        } else if (dVar2.g()) {
                            try {
                                dVar2.A.invoke(dVar2.y, new Object[]{dVar});
                            } catch (IllegalAccessException | IllegalArgumentException | InvocationTargetException unused) {
                            }
                        }
                    }
                }
                int i3 = i2 + 1;
                if (i2 == 0) {
                    if (dVar.a.g()) {
                        f.a("A number (" + size + ") of logging calls during the initialization phase have been intercepted and are");
                        f.a("now being replayed. These are subject to the filtering rules of the underlying logging system.");
                        f.a("See also http://www.slf4j.org/codes.html#replay");
                    } else if (!(dVar.a.y instanceof b)) {
                        f.a("The following set of substitute loggers may have been accessed");
                        f.a("during the initialization phase. Logging calls during this");
                        f.a("phase were not honored. However, subsequent logging calls to these");
                        f.a("loggers will work as normally expected.");
                        f.a("See also http://www.slf4j.org/codes.html#substituteLogger");
                    }
                }
                i2 = i3;
            }
            arrayList.clear();
        }
    }

    public static final void g() {
        try {
            String str = StaticLoggerBinder.REQUESTED_API_VERSION;
            boolean z = false;
            for (String startsWith : f2450e) {
                if (str.startsWith(startsWith)) {
                    z = true;
                }
            }
            if (!z) {
                f.a("The requested version " + str + " by your slf4j binding is not compatible with " + Arrays.asList(f2450e).toString());
                f.a("See http://www.slf4j.org/codes.html#version_mismatch for further details.");
            }
        } catch (NoSuchFieldError unused) {
        } catch (Throwable th) {
            f.a("Unexpected problem occured during version sanity check", th);
        }
    }

    public static void b(Set<URL> set) {
        boolean z = true;
        if (set.size() <= 1) {
            z = false;
        }
        if (z) {
            f.a("Class path contains multiple SLF4J bindings.");
            for (URL url : set) {
                f.a("Found binding in [" + url + "]");
            }
            f.a("See http://www.slf4j.org/codes.html#multiple_bindings for an explanation.");
        }
    }

    public static void a(Set<URL> set) {
        if (set != null) {
            boolean z = true;
            if (set.size() <= 1) {
                z = false;
            }
            if (z) {
                StringBuilder a2 = a.a("Actual binding is of type [");
                a2.append(StaticLoggerBinder.getSingleton().getLoggerFactoryClassStr());
                a2.append("]");
                f.a(a2.toString());
            }
        }
    }

    public static b a(String str) {
        return d().a(str);
    }

    public static b a(Class<?> cls) {
        int i2;
        b a2 = a(cls.getName());
        if (f2449d) {
            f.b bVar = f.a;
            Class cls2 = null;
            if (bVar == null) {
                if (f.b) {
                    bVar = null;
                } else {
                    try {
                        bVar = new f.b((f.a) null);
                    } catch (SecurityException unused) {
                        bVar = null;
                    }
                    f.a = bVar;
                    f.b = true;
                }
            }
            if (bVar != null) {
                Class[] classContext = bVar.getClassContext();
                String name = f.class.getName();
                int i3 = 0;
                while (i3 < classContext.length && !name.equals(classContext[i3].getName())) {
                    i3++;
                }
                if (i3 >= classContext.length || (i2 = i3 + 2) >= classContext.length) {
                    throw new IllegalStateException("Failed to find org.slf4j.helpers.Util or its caller in the stack; this should not happen");
                }
                cls2 = classContext[i2];
            }
            if (cls2 != null && (!cls2.isAssignableFrom(cls))) {
                f.a(String.format("Detected logger name mismatch. Given name: \"%s\"; computed name: \"%s\".", new Object[]{a2.getName(), cls2.getName()}));
                f.a("See http://www.slf4j.org/codes.html#loggerNameMismatch for an explanation");
            }
        }
        return a2;
    }
}
