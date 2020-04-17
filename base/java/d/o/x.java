package d.o;

import android.annotation.SuppressLint;
import android.app.Application;
import android.os.Bundle;
import androidx.lifecycle.SavedStateHandleController;
import d.v.a;
import d.v.c;
import java.lang.reflect.Constructor;
import java.lang.reflect.InvocationTargetException;
import java.util.Arrays;

public final class x extends b0 {

    /* renamed from: f  reason: collision with root package name */
    public static final Class<?>[] f713f;

    /* renamed from: g  reason: collision with root package name */
    public static final Class<?>[] f714g;
    public final Application a;
    public final z b;

    /* renamed from: c  reason: collision with root package name */
    public final Bundle f715c;

    /* renamed from: d  reason: collision with root package name */
    public final g f716d;

    /* renamed from: e  reason: collision with root package name */
    public final a f717e;

    /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r1v1, resolved type: java.lang.Class<?>[]} */
    /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r1v2, resolved type: java.lang.Class<?>[]} */
    /* JADX WARNING: Multi-variable type inference failed */
    static {
        /*
            java.lang.Class<d.o.w> r0 = d.o.w.class
            r1 = 2
            java.lang.Class[] r1 = new java.lang.Class[r1]
            java.lang.Class<android.app.Application> r2 = android.app.Application.class
            r3 = 0
            r1[r3] = r2
            r2 = 1
            r1[r2] = r0
            f713f = r1
            java.lang.Class[] r1 = new java.lang.Class[r2]
            r1[r3] = r0
            f714g = r1
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: d.o.x.<clinit>():void");
    }

    @SuppressLint({"LambdaLast"})
    public x(Application application, c cVar, Bundle bundle) {
        this.f717e = cVar.getSavedStateRegistry();
        this.f716d = cVar.getLifecycle();
        this.f715c = bundle;
        this.a = application;
        if (z.b == null) {
            z.b = new z(application);
        }
        this.b = z.b;
    }

    public <T extends y> T a(String str, Class<T> cls) {
        Constructor<T> constructor;
        T t;
        boolean isAssignableFrom = a.class.isAssignableFrom(cls);
        if (isAssignableFrom) {
            constructor = a(cls, f713f);
        } else {
            constructor = a(cls, f714g);
        }
        if (constructor == null) {
            return this.b.a(cls);
        }
        a aVar = this.f717e;
        g gVar = this.f716d;
        SavedStateHandleController savedStateHandleController = new SavedStateHandleController(str, w.a(aVar.a(str), this.f715c));
        savedStateHandleController.a(aVar, gVar);
        SavedStateHandleController.b(aVar, gVar);
        if (isAssignableFrom) {
            try {
                t = (y) constructor.newInstance(new Object[]{this.a, savedStateHandleController.z});
            } catch (IllegalAccessException e2) {
                throw new RuntimeException("Failed to access " + cls, e2);
            } catch (InstantiationException e3) {
                throw new RuntimeException("A " + cls + " cannot be instantiated.", e3);
            } catch (InvocationTargetException e4) {
                throw new RuntimeException("An exception happened in constructor of " + cls, e4.getCause());
            }
        } else {
            t = (y) constructor.newInstance(new Object[]{savedStateHandleController.z});
        }
        t.a("androidx.lifecycle.savedstate.vm.tag", savedStateHandleController);
        return t;
    }

    public <T extends y> T a(Class<T> cls) {
        String canonicalName = cls.getCanonicalName();
        if (canonicalName != null) {
            return a(canonicalName, cls);
        }
        throw new IllegalArgumentException("Local and anonymous classes can not be ViewModels");
    }

    public static <T> Constructor<T> a(Class<T> cls, Class<?>[] clsArr) {
        for (Constructor<T> constructor : cls.getConstructors()) {
            if (Arrays.equals(clsArr, constructor.getParameterTypes())) {
                return constructor;
            }
        }
        return null;
    }

    public void a(y yVar) {
        a aVar = this.f717e;
        g gVar = this.f716d;
        SavedStateHandleController savedStateHandleController = (SavedStateHandleController) yVar.a("androidx.lifecycle.savedstate.vm.tag");
        if (savedStateHandleController != null && !savedStateHandleController.y) {
            savedStateHandleController.a(aVar, gVar);
            SavedStateHandleController.b(aVar, gVar);
        }
    }
}
