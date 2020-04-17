package d.z;

import android.os.Parcelable;
import android.text.TextUtils;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;

public abstract class a {
    public final d.f.a<String, Method> a;
    public final d.f.a<String, Method> b;

    /* renamed from: c  reason: collision with root package name */
    public final d.f.a<String, Class> f1039c;

    public a(d.f.a<String, Method> aVar, d.f.a<String, Method> aVar2, d.f.a<String, Class> aVar3) {
        this.a = aVar;
        this.b = aVar2;
        this.f1039c = aVar3;
    }

    public abstract void a();

    public abstract boolean a(int i2);

    public boolean a(boolean z, int i2) {
        if (!a(i2)) {
            return z;
        }
        return ((b) this).f1041e.readInt() != 0;
    }

    public abstract a b();

    public abstract void b(int i2);

    public void b(int i2, int i3) {
        b(i3);
        ((b) this).f1041e.writeInt(i2);
    }

    public <T extends c> T c() {
        String readString = ((b) this).f1041e.readString();
        if (readString == null) {
            return null;
        }
        a b2 = b();
        try {
            return (c) a(readString).invoke((Object) null, new Object[]{b2});
        } catch (IllegalAccessException e2) {
            throw new RuntimeException("VersionedParcel encountered IllegalAccessException", e2);
        } catch (InvocationTargetException e3) {
            if (e3.getCause() instanceof RuntimeException) {
                throw ((RuntimeException) e3.getCause());
            }
            throw new RuntimeException("VersionedParcel encountered InvocationTargetException", e3);
        } catch (NoSuchMethodException e4) {
            throw new RuntimeException("VersionedParcel encountered NoSuchMethodException", e4);
        } catch (ClassNotFoundException e5) {
            throw new RuntimeException("VersionedParcel encountered ClassNotFoundException", e5);
        }
    }

    public int a(int i2, int i3) {
        if (!a(i3)) {
            return i2;
        }
        return ((b) this).f1041e.readInt();
    }

    public void b(Parcelable parcelable, int i2) {
        b(i2);
        ((b) this).f1041e.writeParcelable(parcelable, 0);
    }

    public <T extends Parcelable> T a(T t, int i2) {
        if (!a(i2)) {
            return t;
        }
        return ((b) this).f1041e.readParcelable(b.class.getClassLoader());
    }

    public final Method b(Class cls) {
        Method orDefault = this.b.getOrDefault(cls.getName(), null);
        if (orDefault != null) {
            return orDefault;
        }
        Class a2 = a((Class<? extends c>) cls);
        System.currentTimeMillis();
        Method declaredMethod = a2.getDeclaredMethod("write", new Class[]{cls, a.class});
        this.b.put(cls.getName(), declaredMethod);
        return declaredMethod;
    }

    public CharSequence a(CharSequence charSequence, int i2) {
        if (!a(i2)) {
            return charSequence;
        }
        return (CharSequence) TextUtils.CHAR_SEQUENCE_CREATOR.createFromParcel(((b) this).f1041e);
    }

    public void a(c cVar) {
        if (cVar == null) {
            ((b) this).f1041e.writeString((String) null);
            return;
        }
        try {
            ((b) this).f1041e.writeString(a((Class<? extends c>) cVar.getClass()).getName());
            a b2 = b();
            try {
                b((Class) cVar.getClass()).invoke((Object) null, new Object[]{cVar, b2});
                b2.a();
            } catch (IllegalAccessException e2) {
                throw new RuntimeException("VersionedParcel encountered IllegalAccessException", e2);
            } catch (InvocationTargetException e3) {
                if (e3.getCause() instanceof RuntimeException) {
                    throw ((RuntimeException) e3.getCause());
                }
                throw new RuntimeException("VersionedParcel encountered InvocationTargetException", e3);
            } catch (NoSuchMethodException e4) {
                throw new RuntimeException("VersionedParcel encountered NoSuchMethodException", e4);
            } catch (ClassNotFoundException e5) {
                throw new RuntimeException("VersionedParcel encountered ClassNotFoundException", e5);
            }
        } catch (ClassNotFoundException e6) {
            throw new RuntimeException(cVar.getClass().getSimpleName() + " does not have a Parcelizer", e6);
        }
    }

    public final Method a(String str) {
        Class<a> cls = a.class;
        Method orDefault = this.a.getOrDefault(str, null);
        if (orDefault != null) {
            return orDefault;
        }
        System.currentTimeMillis();
        Method declaredMethod = Class.forName(str, true, cls.getClassLoader()).getDeclaredMethod("read", new Class[]{cls});
        this.a.put(str, declaredMethod);
        return declaredMethod;
    }

    public final Class a(Class<? extends c> cls) {
        Class orDefault = this.f1039c.getOrDefault(cls.getName(), null);
        if (orDefault != null) {
            return orDefault;
        }
        Class<?> cls2 = Class.forName(String.format("%s.%sParcelizer", new Object[]{cls.getPackage().getName(), cls.getSimpleName()}), false, cls.getClassLoader());
        this.f1039c.put(cls.getName(), cls2);
        return cls2;
    }
}
