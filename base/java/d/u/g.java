package d.u;

import android.annotation.SuppressLint;
import android.app.ActivityManager;
import android.content.Context;
import android.database.Cursor;
import android.os.CancellationSignal;
import android.os.Looper;
import com.microsoft.appcenter.utils.crypto.CryptoConstants;
import com.microsoft.identity.client.PublicClientApplication;
import d.w.a.c;
import d.w.a.e;
import d.w.a.f.f;
import j.b.a.u;
import java.io.File;
import java.util.ArrayDeque;
import java.util.HashMap;
import java.util.List;
import java.util.Set;
import java.util.TreeMap;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.Executor;
import java.util.concurrent.locks.ReentrantReadWriteLock;
import no.simula.corona.MeasurementDatabase_Impl;

public abstract class g {
    @Deprecated
    public volatile d.w.a.b a;
    public Executor b;

    /* renamed from: c  reason: collision with root package name */
    public d.w.a.c f901c;

    /* renamed from: d  reason: collision with root package name */
    public final e f902d;

    /* renamed from: e  reason: collision with root package name */
    public boolean f903e;

    /* renamed from: f  reason: collision with root package name */
    public boolean f904f;
    @Deprecated

    /* renamed from: g  reason: collision with root package name */
    public List<b> f905g;

    /* renamed from: h  reason: collision with root package name */
    public final ReentrantReadWriteLock f906h = new ReentrantReadWriteLock();

    /* renamed from: i  reason: collision with root package name */
    public final ThreadLocal<Integer> f907i = new ThreadLocal<>();

    public static class a<T extends g> {
        public final Class<T> a;
        public final String b;

        /* renamed from: c  reason: collision with root package name */
        public final Context f908c;

        /* renamed from: d  reason: collision with root package name */
        public Executor f909d;

        /* renamed from: e  reason: collision with root package name */
        public Executor f910e;

        /* renamed from: f  reason: collision with root package name */
        public c.C0049c f911f;

        /* renamed from: g  reason: collision with root package name */
        public boolean f912g;

        /* renamed from: h  reason: collision with root package name */
        public c f913h = c.AUTOMATIC;

        /* renamed from: i  reason: collision with root package name */
        public boolean f914i = true;

        /* renamed from: j  reason: collision with root package name */
        public boolean f915j;

        /* renamed from: k  reason: collision with root package name */
        public final d f916k = new d();

        public a(Context context, Class<T> cls, String str) {
            this.f908c = context;
            this.a = cls;
            this.b = str;
        }

        @SuppressLint({"RestrictedApi"})
        public T a() {
            String str;
            Executor executor;
            if (this.f908c == null) {
                throw new IllegalArgumentException("Cannot provide null context for the database.");
            } else if (this.a != null) {
                if (this.f909d == null && this.f910e == null) {
                    Executor executor2 = d.c.a.a.a.f415d;
                    this.f910e = executor2;
                    this.f909d = executor2;
                } else {
                    Executor executor3 = this.f909d;
                    if (executor3 != null && this.f910e == null) {
                        this.f910e = executor3;
                    } else if (this.f909d == null && (executor = this.f910e) != null) {
                        this.f909d = executor;
                    }
                }
                if (this.f911f == null) {
                    this.f911f = new d.w.a.f.d();
                }
                Context context = this.f908c;
                a aVar = new a(context, this.b, this.f911f, this.f916k, (List<b>) null, this.f912g, this.f913h.resolve(context), this.f909d, this.f910e, false, this.f914i, this.f915j, (Set<Integer>) null, (String) null, (File) null);
                Class<T> cls = this.a;
                String name = cls.getPackage().getName();
                String canonicalName = cls.getCanonicalName();
                boolean z = true;
                if (!name.isEmpty()) {
                    canonicalName = canonicalName.substring(name.length() + 1);
                }
                String str2 = canonicalName.replace('.', '_') + "_Impl";
                try {
                    if (name.isEmpty()) {
                        str = str2;
                    } else {
                        str = name + CryptoConstants.ALIAS_SEPARATOR + str2;
                    }
                    T t = (g) Class.forName(str).newInstance();
                    if (t != null) {
                        h hVar = new h(aVar, new u((MeasurementDatabase_Impl) t, 7), "8260d2f713a01361d6ce911d0c7159cc", "d0c844f687e96ba35d4d3a97249d2973");
                        Context context2 = aVar.b;
                        String str3 = aVar.f867c;
                        if (context2 != null) {
                            d.w.a.c a2 = aVar.a.a(new c.b(context2, str3, hVar));
                            t.f901c = a2;
                            if (a2 instanceof j) {
                                ((j) a2).f923f = aVar;
                            }
                            if (aVar.f871g != c.WRITE_AHEAD_LOGGING) {
                                z = false;
                            }
                            t.f901c.a(z);
                            t.f905g = aVar.f869e;
                            t.b = aVar.f872h;
                            new ArrayDeque();
                            t.f903e = aVar.f870f;
                            t.f904f = z;
                            if (aVar.f874j) {
                                e eVar = t.f902d;
                                new f(aVar.b, aVar.f867c, eVar, eVar.f879d.b);
                            }
                            return t;
                        }
                        throw new IllegalArgumentException("Must set a non-null context to create the configuration.");
                    }
                    throw null;
                } catch (ClassNotFoundException unused) {
                    StringBuilder a3 = e.a.a.a.a.a("cannot find implementation for ");
                    a3.append(cls.getCanonicalName());
                    a3.append(". ");
                    a3.append(str2);
                    a3.append(" does not exist");
                    throw new RuntimeException(a3.toString());
                } catch (IllegalAccessException unused2) {
                    StringBuilder a4 = e.a.a.a.a.a("Cannot access the constructor");
                    a4.append(cls.getCanonicalName());
                    throw new RuntimeException(a4.toString());
                } catch (InstantiationException unused3) {
                    StringBuilder a5 = e.a.a.a.a.a("Failed to create an instance of ");
                    a5.append(cls.getCanonicalName());
                    throw new RuntimeException(a5.toString());
                }
            } else {
                throw new IllegalArgumentException("Must provide an abstract class that extends RoomDatabase");
            }
        }
    }

    public static abstract class b {
        public void a() {
        }

        public void b() {
        }

        public void c() {
        }
    }

    public enum c {
        AUTOMATIC,
        TRUNCATE,
        WRITE_AHEAD_LOGGING;

        public static boolean isLowRamDevice(ActivityManager activityManager) {
            return activityManager.isLowRamDevice();
        }

        @SuppressLint({"NewApi"})
        public c resolve(Context context) {
            if (this != AUTOMATIC) {
                return this;
            }
            ActivityManager activityManager = (ActivityManager) context.getSystemService(PublicClientApplication.NONNULL_CONSTANTS.ACTIVITY);
            if (activityManager == null || isLowRamDevice(activityManager)) {
                return TRUNCATE;
            }
            return WRITE_AHEAD_LOGGING;
        }
    }

    public static class d {
        public HashMap<Integer, TreeMap<Integer, d.u.l.a>> a = new HashMap<>();
    }

    public g() {
        new ConcurrentHashMap();
        this.f902d = new e((MeasurementDatabase_Impl) this, new HashMap(0), new HashMap(0), "Measurement", "BluetoothContact");
    }

    public void a() {
        if (!this.f903e) {
            if (Looper.getMainLooper().getThread() == Thread.currentThread()) {
                throw new IllegalStateException("Cannot access database on the main thread since it may potentially lock the UI for a long period of time.");
            }
        }
    }

    public void b() {
        if (!e() && this.f907i.get() != null) {
            throw new IllegalStateException("Cannot access database on a different coroutine context inherited from a suspending transaction.");
        }
    }

    @Deprecated
    public void c() {
        a();
        d.w.a.b a2 = this.f901c.a();
        this.f902d.b(a2);
        ((d.w.a.f.a) a2).x.beginTransaction();
    }

    @Deprecated
    public void d() {
        ((d.w.a.f.a) this.f901c.a()).x.endTransaction();
        if (!e()) {
            e eVar = this.f902d;
            if (eVar.f880e.compareAndSet(false, true)) {
                eVar.f879d.b.execute(eVar.f885j);
            }
        }
    }

    public boolean e() {
        return ((d.w.a.f.a) this.f901c.a()).x.inTransaction();
    }

    public boolean f() {
        d.w.a.b bVar = this.a;
        return bVar != null && ((d.w.a.f.a) bVar).x.isOpen();
    }

    @Deprecated
    public void g() {
        ((d.w.a.f.a) this.f901c.a()).x.setTransactionSuccessful();
    }

    public Cursor a(e eVar, CancellationSignal cancellationSignal) {
        a();
        b();
        if (cancellationSignal == null) {
            return ((d.w.a.f.a) this.f901c.a()).a(eVar);
        }
        d.w.a.f.a aVar = (d.w.a.f.a) this.f901c.a();
        return aVar.x.rawQueryWithFactory(new d.w.a.f.b(aVar, eVar), eVar.a(), d.w.a.f.a.y, (String) null, cancellationSignal);
    }

    public f a(String str) {
        a();
        b();
        return new f(((d.w.a.f.a) this.f901c.a()).x.compileStatement(str));
    }
}
