package d.s;

import android.os.Bundle;
import android.os.Parcelable;
import com.microsoft.appcenter.ingestion.models.properties.LongTypedProperty;
import com.microsoft.appcenter.utils.crypto.CryptoConstants;
import java.io.Serializable;

public abstract class o<T> {
    public static final o<Integer> b = new c(false);

    /* renamed from: c  reason: collision with root package name */
    public static final o<Integer> f744c = new d(false);

    /* renamed from: d  reason: collision with root package name */
    public static final o<int[]> f745d = new e(true);

    /* renamed from: e  reason: collision with root package name */
    public static final o<Long> f746e = new f(false);

    /* renamed from: f  reason: collision with root package name */
    public static final o<long[]> f747f = new g(true);

    /* renamed from: g  reason: collision with root package name */
    public static final o<Float> f748g = new h(false);

    /* renamed from: h  reason: collision with root package name */
    public static final o<float[]> f749h = new i(true);

    /* renamed from: i  reason: collision with root package name */
    public static final o<Boolean> f750i = new j(false);

    /* renamed from: j  reason: collision with root package name */
    public static final o<boolean[]> f751j = new k(true);

    /* renamed from: k  reason: collision with root package name */
    public static final o<String> f752k = new a(true);

    /* renamed from: l  reason: collision with root package name */
    public static final o<String[]> f753l = new b(true);
    public final boolean a;

    public static class p<D extends Serializable> extends o<D> {
        public final Class<D> m;

        public p(Class<D> cls) {
            super(true);
            if (!Serializable.class.isAssignableFrom(cls)) {
                throw new IllegalArgumentException(cls + " does not implement Serializable.");
            } else if (!cls.isEnum()) {
                this.m = cls;
            } else {
                throw new IllegalArgumentException(cls + " is an Enum. You should use EnumType instead.");
            }
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof p)) {
                return false;
            }
            return this.m.equals(((p) obj).m);
        }

        public int hashCode() {
            return this.m.hashCode();
        }

        public void a(Bundle bundle, String str, Object obj) {
            Serializable serializable = (Serializable) obj;
            this.m.cast(serializable);
            bundle.putSerializable(str, serializable);
        }

        public Object a(Bundle bundle, String str) {
            return (Serializable) bundle.get(str);
        }

        public D a(String str) {
            throw new UnsupportedOperationException("Serializables don't support default values.");
        }

        public p(boolean z, Class<D> cls) {
            super(z);
            if (Serializable.class.isAssignableFrom(cls)) {
                this.m = cls;
                return;
            }
            throw new IllegalArgumentException(cls + " does not implement Serializable.");
        }

        public String a() {
            return this.m.getName();
        }
    }

    public o(boolean z) {
        this.a = z;
    }

    public static o a(Object obj) {
        if (obj instanceof Integer) {
            return b;
        }
        if (obj instanceof int[]) {
            return f745d;
        }
        if (obj instanceof Long) {
            return f746e;
        }
        if (obj instanceof long[]) {
            return f747f;
        }
        if (obj instanceof Float) {
            return f748g;
        }
        if (obj instanceof float[]) {
            return f749h;
        }
        if (obj instanceof Boolean) {
            return f750i;
        }
        if (obj instanceof boolean[]) {
            return f751j;
        }
        if ((obj instanceof String) || obj == null) {
            return f752k;
        }
        if (obj instanceof String[]) {
            return f753l;
        }
        if (obj.getClass().isArray() && Parcelable.class.isAssignableFrom(obj.getClass().getComponentType())) {
            return new m(obj.getClass().getComponentType());
        }
        if (obj.getClass().isArray() && Serializable.class.isAssignableFrom(obj.getClass().getComponentType())) {
            return new C0039o(obj.getClass().getComponentType());
        }
        if (obj instanceof Parcelable) {
            return new n(obj.getClass());
        }
        if (obj instanceof Enum) {
            return new l(obj.getClass());
        }
        if (obj instanceof Serializable) {
            return new p(obj.getClass());
        }
        StringBuilder a2 = e.a.a.a.a.a("Object of type ");
        a2.append(obj.getClass().getName());
        a2.append(" is not supported for navigation arguments.");
        throw new IllegalArgumentException(a2.toString());
    }

    public abstract T a(Bundle bundle, String str);

    public abstract T a(String str);

    public abstract String a();

    public abstract void a(Bundle bundle, String str, T t);

    public String toString() {
        return a();
    }

    public static class a extends o<String> {
        public a(boolean z) {
            super(z);
        }

        public Object a(String str) {
            return str;
        }

        public String a() {
            return "string";
        }

        public void a(Bundle bundle, String str, Object obj) {
            bundle.putString(str, (String) obj);
        }

        public Object a(Bundle bundle, String str) {
            return (String) bundle.get(str);
        }
    }

    public static class b extends o<String[]> {
        public b(boolean z) {
            super(z);
        }

        public String a() {
            return "string[]";
        }

        public void a(Bundle bundle, String str, Object obj) {
            bundle.putStringArray(str, (String[]) obj);
        }

        public Object a(Bundle bundle, String str) {
            return (String[]) bundle.get(str);
        }

        public Object a(String str) {
            throw new UnsupportedOperationException("Arrays don't support default values.");
        }
    }

    public static class c extends o<Integer> {
        public c(boolean z) {
            super(z);
        }

        public String a() {
            return "integer";
        }

        public void a(Bundle bundle, String str, Object obj) {
            bundle.putInt(str, ((Integer) obj).intValue());
        }

        public Object a(Bundle bundle, String str) {
            return (Integer) bundle.get(str);
        }

        public Object a(String str) {
            if (str.startsWith("0x")) {
                return Integer.valueOf(Integer.parseInt(str.substring(2), 16));
            }
            return Integer.valueOf(Integer.parseInt(str));
        }
    }

    public static class d extends o<Integer> {
        public d(boolean z) {
            super(z);
        }

        public String a() {
            return "reference";
        }

        public void a(Bundle bundle, String str, Object obj) {
            bundle.putInt(str, ((Integer) obj).intValue());
        }

        public Object a(Bundle bundle, String str) {
            return (Integer) bundle.get(str);
        }

        public Object a(String str) {
            throw new UnsupportedOperationException("References don't support parsing string values.");
        }
    }

    public static class e extends o<int[]> {
        public e(boolean z) {
            super(z);
        }

        public String a() {
            return "integer[]";
        }

        public void a(Bundle bundle, String str, Object obj) {
            bundle.putIntArray(str, (int[]) obj);
        }

        public Object a(Bundle bundle, String str) {
            return (int[]) bundle.get(str);
        }

        public Object a(String str) {
            throw new UnsupportedOperationException("Arrays don't support default values.");
        }
    }

    public static class f extends o<Long> {
        public f(boolean z) {
            super(z);
        }

        public String a() {
            return LongTypedProperty.TYPE;
        }

        public void a(Bundle bundle, String str, Object obj) {
            bundle.putLong(str, ((Long) obj).longValue());
        }

        public Object a(Bundle bundle, String str) {
            return (Long) bundle.get(str);
        }

        public Object a(String str) {
            if (str.endsWith("L")) {
                str = str.substring(0, str.length() - 1);
            }
            if (str.startsWith("0x")) {
                return Long.valueOf(Long.parseLong(str.substring(2), 16));
            }
            return Long.valueOf(Long.parseLong(str));
        }
    }

    public static class g extends o<long[]> {
        public g(boolean z) {
            super(z);
        }

        public String a() {
            return "long[]";
        }

        public void a(Bundle bundle, String str, Object obj) {
            bundle.putLongArray(str, (long[]) obj);
        }

        public Object a(Bundle bundle, String str) {
            return (long[]) bundle.get(str);
        }

        public Object a(String str) {
            throw new UnsupportedOperationException("Arrays don't support default values.");
        }
    }

    public static class h extends o<Float> {
        public h(boolean z) {
            super(z);
        }

        public String a() {
            return "float";
        }

        public void a(Bundle bundle, String str, Object obj) {
            bundle.putFloat(str, ((Float) obj).floatValue());
        }

        public Object a(Bundle bundle, String str) {
            return (Float) bundle.get(str);
        }

        public Object a(String str) {
            return Float.valueOf(Float.parseFloat(str));
        }
    }

    public static class i extends o<float[]> {
        public i(boolean z) {
            super(z);
        }

        public String a() {
            return "float[]";
        }

        public void a(Bundle bundle, String str, Object obj) {
            bundle.putFloatArray(str, (float[]) obj);
        }

        public Object a(Bundle bundle, String str) {
            return (float[]) bundle.get(str);
        }

        public Object a(String str) {
            throw new UnsupportedOperationException("Arrays don't support default values.");
        }
    }

    public static class j extends o<Boolean> {
        public j(boolean z) {
            super(z);
        }

        public String a() {
            return "boolean";
        }

        public void a(Bundle bundle, String str, Object obj) {
            bundle.putBoolean(str, ((Boolean) obj).booleanValue());
        }

        public Object a(Bundle bundle, String str) {
            return (Boolean) bundle.get(str);
        }

        public Object a(String str) {
            if ("true".equals(str)) {
                return true;
            }
            if ("false".equals(str)) {
                return false;
            }
            throw new IllegalArgumentException("A boolean NavType only accepts \"true\" or \"false\" values.");
        }
    }

    public static class k extends o<boolean[]> {
        public k(boolean z) {
            super(z);
        }

        public String a() {
            return "boolean[]";
        }

        public void a(Bundle bundle, String str, Object obj) {
            bundle.putBooleanArray(str, (boolean[]) obj);
        }

        public Object a(Bundle bundle, String str) {
            return (boolean[]) bundle.get(str);
        }

        public Object a(String str) {
            throw new UnsupportedOperationException("Arrays don't support default values.");
        }
    }

    public static final class l<D extends Enum> extends p<D> {
        public final Class<D> n;

        public l(Class<D> cls) {
            super(false, cls);
            if (cls.isEnum()) {
                this.n = cls;
                return;
            }
            throw new IllegalArgumentException(cls + " is not an Enum type.");
        }

        public D a(String str) {
            for (D d2 : (Enum[]) this.n.getEnumConstants()) {
                if (d2.name().equals(str)) {
                    return d2;
                }
            }
            throw new IllegalArgumentException("Enum value " + str + " not found for type " + this.n.getName() + CryptoConstants.ALIAS_SEPARATOR);
        }

        public String a() {
            return this.n.getName();
        }
    }

    public static final class m<D extends Parcelable> extends o<D[]> {
        public final Class<D[]> m;

        public m(Class<D> cls) {
            super(true);
            if (Parcelable.class.isAssignableFrom(cls)) {
                try {
                    this.m = Class.forName("[L" + cls.getName() + ";");
                } catch (ClassNotFoundException e2) {
                    throw new RuntimeException(e2);
                }
            } else {
                throw new IllegalArgumentException(cls + " does not implement Parcelable.");
            }
        }

        public void a(Bundle bundle, String str, Object obj) {
            Parcelable[] parcelableArr = (Parcelable[]) obj;
            this.m.cast(parcelableArr);
            bundle.putParcelableArray(str, parcelableArr);
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj == null || m.class != obj.getClass()) {
                return false;
            }
            return this.m.equals(((m) obj).m);
        }

        public int hashCode() {
            return this.m.hashCode();
        }

        public Object a(Bundle bundle, String str) {
            return (Parcelable[]) bundle.get(str);
        }

        public Object a(String str) {
            throw new UnsupportedOperationException("Arrays don't support default values.");
        }

        public String a() {
            return this.m.getName();
        }
    }

    /* renamed from: d.s.o$o  reason: collision with other inner class name */
    public static final class C0039o<D extends Serializable> extends o<D[]> {
        public final Class<D[]> m;

        public C0039o(Class<D> cls) {
            super(true);
            if (Serializable.class.isAssignableFrom(cls)) {
                try {
                    this.m = Class.forName("[L" + cls.getName() + ";");
                } catch (ClassNotFoundException e2) {
                    throw new RuntimeException(e2);
                }
            } else {
                throw new IllegalArgumentException(cls + " does not implement Serializable.");
            }
        }

        /* JADX WARNING: type inference failed for: r4v1, types: [java.lang.Object, java.io.Serializable[], java.io.Serializable] */
        public void a(Bundle bundle, String str, Object obj) {
            ? r4 = (Serializable[]) obj;
            this.m.cast(r4);
            bundle.putSerializable(str, r4);
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj == null || C0039o.class != obj.getClass()) {
                return false;
            }
            return this.m.equals(((C0039o) obj).m);
        }

        public int hashCode() {
            return this.m.hashCode();
        }

        public Object a(Bundle bundle, String str) {
            return (Serializable[]) bundle.get(str);
        }

        public Object a(String str) {
            throw new UnsupportedOperationException("Arrays don't support default values.");
        }

        public String a() {
            return this.m.getName();
        }
    }

    public static final class n<D> extends o<D> {
        public final Class<D> m;

        public n(Class<D> cls) {
            super(true);
            if (Parcelable.class.isAssignableFrom(cls) || Serializable.class.isAssignableFrom(cls)) {
                this.m = cls;
                return;
            }
            throw new IllegalArgumentException(cls + " does not implement Parcelable or Serializable.");
        }

        public void a(Bundle bundle, String str, D d2) {
            this.m.cast(d2);
            if (d2 == null || (d2 instanceof Parcelable)) {
                bundle.putParcelable(str, (Parcelable) d2);
            } else if (d2 instanceof Serializable) {
                bundle.putSerializable(str, (Serializable) d2);
            }
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj == null || n.class != obj.getClass()) {
                return false;
            }
            return this.m.equals(((n) obj).m);
        }

        public int hashCode() {
            return this.m.hashCode();
        }

        public D a(Bundle bundle, String str) {
            return bundle.get(str);
        }

        public D a(String str) {
            throw new UnsupportedOperationException("Parcelables don't support default values.");
        }

        public String a() {
            return this.m.getName();
        }
    }
}
