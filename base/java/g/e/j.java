package g.e;

import java.net.SocketOption;

public final class j {
    public static final SocketOption<Integer> a;
    public static final SocketOption<Integer> b;

    /* renamed from: c  reason: collision with root package name */
    public static final SocketOption<Integer> f1380c;

    /* renamed from: d  reason: collision with root package name */
    public static final SocketOption<Integer> f1381d;

    /* renamed from: e  reason: collision with root package name */
    public static final SocketOption<Boolean> f1382e;

    /* renamed from: f  reason: collision with root package name */
    public static final SocketOption<c> f1383f = new a("SO_PEERCRED", c.class);

    /* renamed from: g  reason: collision with root package name */
    public static final SocketOption<Boolean> f1384g;

    public static class a<T> implements SocketOption<T> {
        public final String a;
        public final Class<T> b;

        public a(String str, Class<T> cls) {
            this.a = str;
            this.b = cls;
        }

        public String name() {
            return this.a;
        }

        public String toString() {
            return this.a;
        }

        public Class<T> type() {
            return this.b;
        }
    }

    static {
        Class<Boolean> cls = Boolean.class;
        Class<Integer> cls2 = Integer.class;
        a = new a("SO_SNDBUF", cls2);
        b = new a("SO_SNDTIMEO", cls2);
        f1380c = new a("SO_RCVBUF", cls2);
        f1381d = new a("SO_RCVTIMEO", cls2);
        f1382e = new a("SO_KEEPALIVE", cls);
        f1384g = new a("SO_PASSCRED", cls);
    }
}
