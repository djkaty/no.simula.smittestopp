package d.o;

import androidx.lifecycle.CompositeGeneratedAdaptersObserver;
import androidx.lifecycle.FullLifecycleObserverAdapter;
import androidx.lifecycle.ReflectiveGenericLifecycleObserver;
import androidx.lifecycle.SingleGeneratedAdapterObserver;
import com.microsoft.appcenter.AbstractAppCenterService;
import com.microsoft.appcenter.utils.crypto.CryptoConstants;
import java.lang.reflect.Constructor;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class o {
    public static Map<Class<?>, Integer> a = new HashMap();
    public static Map<Class<?>, List<Constructor<? extends e>>> b = new HashMap();

    public static j a(Object obj) {
        boolean z = obj instanceof j;
        boolean z2 = obj instanceof d;
        if (z && z2) {
            return new FullLifecycleObserverAdapter((d) obj, (j) obj);
        }
        if (z2) {
            return new FullLifecycleObserverAdapter((d) obj, (j) null);
        }
        if (z) {
            return (j) obj;
        }
        Class<?> cls = obj.getClass();
        if (a(cls) != 2) {
            return new ReflectiveGenericLifecycleObserver(obj);
        }
        List list = b.get(cls);
        if (list.size() == 1) {
            return new SingleGeneratedAdapterObserver(a((Constructor) list.get(0), obj));
        }
        e[] eVarArr = new e[list.size()];
        for (int i2 = 0; i2 < list.size(); i2++) {
            eVarArr[i2] = a((Constructor) list.get(i2), obj);
        }
        return new CompositeGeneratedAdaptersObserver(eVarArr);
    }

    public static e a(Constructor<? extends e> constructor, Object obj) {
        try {
            return (e) constructor.newInstance(new Object[]{obj});
        } catch (IllegalAccessException e2) {
            throw new RuntimeException(e2);
        } catch (InstantiationException e3) {
            throw new RuntimeException(e3);
        } catch (InvocationTargetException e4) {
            throw new RuntimeException(e4);
        }
    }

    public static int a(Class<?> cls) {
        Constructor<?> constructor;
        boolean z;
        Integer num = a.get(cls);
        if (num != null) {
            return num.intValue();
        }
        Class<k> cls2 = k.class;
        int i2 = 1;
        if (cls.getCanonicalName() != null) {
            ArrayList arrayList = null;
            try {
                Package packageR = cls.getPackage();
                String canonicalName = cls.getCanonicalName();
                String name = packageR != null ? packageR.getName() : "";
                if (!name.isEmpty()) {
                    canonicalName = canonicalName.substring(name.length() + 1);
                }
                String a2 = a(canonicalName);
                if (!name.isEmpty()) {
                    a2 = name + CryptoConstants.ALIAS_SEPARATOR + a2;
                }
                constructor = Class.forName(a2).getDeclaredConstructor(new Class[]{cls});
                if (!constructor.isAccessible()) {
                    constructor.setAccessible(true);
                }
            } catch (ClassNotFoundException unused) {
                constructor = null;
            } catch (NoSuchMethodException e2) {
                throw new RuntimeException(e2);
            }
            if (constructor != null) {
                b.put(cls, Collections.singletonList(constructor));
            } else {
                b bVar = b.f707c;
                Boolean bool = bVar.b.get(cls);
                if (bool != null) {
                    z = bool.booleanValue();
                } else {
                    try {
                        Method[] declaredMethods = cls.getDeclaredMethods();
                        int length = declaredMethods.length;
                        int i3 = 0;
                        while (true) {
                            if (i3 >= length) {
                                bVar.b.put(cls, false);
                                z = false;
                                break;
                            } else if (((s) declaredMethods[i3].getAnnotation(s.class)) != null) {
                                bVar.a(cls, declaredMethods);
                                z = true;
                                break;
                            } else {
                                i3++;
                            }
                        }
                    } catch (NoClassDefFoundError e3) {
                        throw new IllegalArgumentException("The observer class has some methods that use newer APIs which are not available in the current OS version. Lifecycles cannot access even other methods so you should make sure that your observer classes only access framework classes that are available in your min API level OR use lifecycle:compiler annotation processor.", e3);
                    }
                }
                if (!z) {
                    Class<? super Object> superclass = cls.getSuperclass();
                    if (superclass != null && cls2.isAssignableFrom(superclass)) {
                        if (a((Class<?>) superclass) != 1) {
                            arrayList = new ArrayList(b.get(superclass));
                        }
                    }
                    Class[] interfaces = cls.getInterfaces();
                    int length2 = interfaces.length;
                    int i4 = 0;
                    while (true) {
                        if (i4 < length2) {
                            Class cls3 = interfaces[i4];
                            if (cls3 != null && cls2.isAssignableFrom(cls3)) {
                                if (a((Class<?>) cls3) == 1) {
                                    break;
                                }
                                if (arrayList == null) {
                                    arrayList = new ArrayList();
                                }
                                arrayList.addAll(b.get(cls3));
                            }
                            i4++;
                        } else if (arrayList != null) {
                            b.put(cls, arrayList);
                        }
                    }
                }
            }
            i2 = 2;
        }
        a.put(cls, Integer.valueOf(i2));
        return i2;
    }

    public static String a(String str) {
        return str.replace(CryptoConstants.ALIAS_SEPARATOR, AbstractAppCenterService.PREFERENCE_KEY_SEPARATOR) + "_LifecycleAdapter";
    }
}
