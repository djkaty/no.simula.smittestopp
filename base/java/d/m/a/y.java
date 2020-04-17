package d.m.a;

import androidx.fragment.app.Fragment;
import d.o.g;
import java.lang.reflect.Modifier;
import java.util.ArrayList;

public abstract class y {
    public ArrayList<a> a = new ArrayList<>();
    public int b;

    /* renamed from: c  reason: collision with root package name */
    public int f688c;

    /* renamed from: d  reason: collision with root package name */
    public int f689d;

    /* renamed from: e  reason: collision with root package name */
    public int f690e;

    /* renamed from: f  reason: collision with root package name */
    public int f691f;

    /* renamed from: g  reason: collision with root package name */
    public boolean f692g;

    /* renamed from: h  reason: collision with root package name */
    public boolean f693h = true;

    /* renamed from: i  reason: collision with root package name */
    public String f694i;

    /* renamed from: j  reason: collision with root package name */
    public int f695j;

    /* renamed from: k  reason: collision with root package name */
    public CharSequence f696k;

    /* renamed from: l  reason: collision with root package name */
    public int f697l;
    public CharSequence m;
    public ArrayList<String> n;
    public ArrayList<String> o;
    public boolean p = false;
    public ArrayList<Runnable> q;

    public static final class a {
        public int a;
        public Fragment b;

        /* renamed from: c  reason: collision with root package name */
        public int f698c;

        /* renamed from: d  reason: collision with root package name */
        public int f699d;

        /* renamed from: e  reason: collision with root package name */
        public int f700e;

        /* renamed from: f  reason: collision with root package name */
        public int f701f;

        /* renamed from: g  reason: collision with root package name */
        public g.b f702g;

        /* renamed from: h  reason: collision with root package name */
        public g.b f703h;

        public a() {
        }

        public a(int i2, Fragment fragment) {
            this.a = i2;
            this.b = fragment;
            g.b bVar = g.b.RESUMED;
            this.f702g = bVar;
            this.f703h = bVar;
        }

        public a(int i2, Fragment fragment, g.b bVar) {
            this.a = i2;
            this.b = fragment;
            this.f702g = fragment.mMaxState;
            this.f703h = bVar;
        }
    }

    public y(l lVar, ClassLoader classLoader) {
    }

    public abstract int a();

    public void a(a aVar) {
        this.a.add(aVar);
        aVar.f698c = this.b;
        aVar.f699d = this.f688c;
        aVar.f700e = this.f689d;
        aVar.f701f = this.f690e;
    }

    public y b(Fragment fragment) {
        a(new a(8, fragment));
        return this;
    }

    public abstract void b();

    public void a(int i2, Fragment fragment, String str, int i3) {
        Class<?> cls = fragment.getClass();
        int modifiers = cls.getModifiers();
        if (cls.isAnonymousClass() || !Modifier.isPublic(modifiers) || (cls.isMemberClass() && !Modifier.isStatic(modifiers))) {
            StringBuilder a2 = e.a.a.a.a.a("Fragment ");
            a2.append(cls.getCanonicalName());
            a2.append(" must be a public static class to be  properly recreated from instance state.");
            throw new IllegalStateException(a2.toString());
        }
        if (str != null) {
            String str2 = fragment.mTag;
            if (str2 == null || str.equals(str2)) {
                fragment.mTag = str;
            } else {
                StringBuilder sb = new StringBuilder();
                sb.append("Can't change tag of fragment ");
                sb.append(fragment);
                sb.append(": was ");
                throw new IllegalStateException(e.a.a.a.a.a(sb, fragment.mTag, " now ", str));
            }
        }
        if (i2 != 0) {
            if (i2 != -1) {
                int i4 = fragment.mFragmentId;
                if (i4 == 0 || i4 == i2) {
                    fragment.mFragmentId = i2;
                    fragment.mContainerId = i2;
                } else {
                    throw new IllegalStateException("Can't change container ID of fragment " + fragment + ": was " + fragment.mFragmentId + " now " + i2);
                }
            } else {
                throw new IllegalArgumentException("Can't add fragment " + fragment + " with tag " + str + " to container view with no id");
            }
        }
        a(new a(i3, fragment));
    }

    public y a(Fragment fragment) {
        a(new a(3, fragment));
        return this;
    }

    public y a(Fragment fragment, g.b bVar) {
        a(new a(10, fragment, bVar));
        return this;
    }
}
