package l.a;

import java.io.PrintWriter;
import java.io.StringWriter;
import java.util.ArrayList;
import java.util.List;

public final class a {
    public static final b[] a = new b[0];
    public static final List<b> b = new ArrayList();

    /* renamed from: c  reason: collision with root package name */
    public static volatile b[] f2454c = a;

    /* renamed from: d  reason: collision with root package name */
    public static final b f2455d = new C0107a();

    public static abstract class b {
        public final ThreadLocal<String> a = new ThreadLocal<>();

        public abstract void a(int i2, String str, String str2, Throwable th);

        public final void a(int i2, Throwable th, String str, Object... objArr) {
            String str2 = this.a.get();
            if (str2 != null) {
                this.a.remove();
            }
            if (str != null && str.length() == 0) {
                str = null;
            }
            if (str != null) {
                if (objArr != null && objArr.length > 0) {
                    str = String.format(str, objArr);
                }
                if (th != null) {
                    StringBuilder a2 = e.a.a.a.a.a(str, "\n");
                    a2.append(b(th));
                    str = a2.toString();
                }
            } else if (th != null) {
                str = b(th);
            } else {
                return;
            }
            a(i2, str2, str, th);
        }

        public void b(String str, Object... objArr) {
            a(6, (Throwable) null, str, objArr);
        }

        public void c(String str, Object... objArr) {
            a(4, (Throwable) null, str, objArr);
        }

        public void d(String str, Object... objArr) {
            a(5, (Throwable) null, str, objArr);
        }

        public final String b(Throwable th) {
            StringWriter stringWriter = new StringWriter(256);
            PrintWriter printWriter = new PrintWriter(stringWriter, false);
            th.printStackTrace(printWriter);
            printWriter.flush();
            return stringWriter.toString();
        }

        public void a(String str, Object... objArr) {
            a(3, (Throwable) null, str, objArr);
        }

        public void a(Throwable th) {
            a(6, th, (String) null, new Object[0]);
        }
    }

    public static void a(b bVar) {
        if (bVar == null) {
            throw new NullPointerException("tree == null");
        } else if (bVar != f2455d) {
            synchronized (b) {
                b.add(bVar);
                f2454c = (b[]) b.toArray(new b[b.size()]);
            }
        } else {
            throw new IllegalArgumentException("Cannot plant Timber into itself.");
        }
    }

    /* renamed from: l.a.a$a  reason: collision with other inner class name */
    public static class C0107a extends b {
        public void a(String str, Object... objArr) {
            for (b a : a.f2454c) {
                a.a(str, objArr);
            }
        }

        public void b(String str, Object... objArr) {
            for (b b : a.f2454c) {
                b.b(str, objArr);
            }
        }

        public void c(String str, Object... objArr) {
            for (b c2 : a.f2454c) {
                c2.c(str, objArr);
            }
        }

        public void d(String str, Object... objArr) {
            for (b d2 : a.f2454c) {
                d2.d(str, objArr);
            }
        }

        public void a(Throwable th) {
            for (b a : a.f2454c) {
                a.a(th);
            }
        }

        public void a(int i2, String str, String str2, Throwable th) {
            throw new AssertionError("Missing override for log method.");
        }
    }
}
