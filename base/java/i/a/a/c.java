package i.a.a;

import com.microsoft.azure.sdk.iot.device.DeviceClientConfig;
import e.a.a.a.a;
import java.lang.reflect.Field;
import java.lang.reflect.Method;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import k.e.a.g;
import k.e.a.q;
import k.e.a.s;
import k.e.a.y;

public abstract class c<T> {

    /* renamed from: c  reason: collision with root package name */
    public static ConcurrentHashMap<Class<?>, c<?>> f1395c = new ConcurrentHashMap<>();
    public HashMap<String, a> a;
    public a[] b;

    public abstract Object a(T t, int i2);

    public void a(a[] aVarArr) {
        this.b = aVarArr;
        this.a = new HashMap<>();
        int length = aVarArr.length;
        int i2 = 0;
        int i3 = 0;
        while (i2 < length) {
            a aVar = aVarArr[i2];
            aVar.f1392d = i3;
            this.a.put(aVar.f1394f, aVar);
            i2++;
            i3++;
        }
    }

    public a[] a() {
        return this.b;
    }

    public static <P> c<P> a(Class<P> cls, i iVar) {
        int i2;
        int i3;
        String str;
        String str2;
        LinkedList linkedList;
        String str3;
        String str4;
        String str5;
        boolean z;
        g gVar;
        q[] qVarArr;
        a[] aVarArr;
        q qVar;
        Class<P> cls2 = cls;
        Class<Object> cls3 = Object.class;
        c<P> cVar = f1395c.get(cls2);
        if (cVar != null) {
            return cVar;
        }
        HashMap hashMap = new HashMap();
        i iVar2 = iVar == null ? b.a : iVar;
        Class<P> cls4 = cls2;
        while (true) {
            i2 = 1;
            i3 = 0;
            if (cls4 == cls3) {
                break;
            }
            for (Field field : cls4.getDeclaredFields()) {
                String name = field.getName();
                if (!hashMap.containsKey(name)) {
                    a aVar = new a(cls4, field, iVar2);
                    if ((aVar.a == null && aVar.f1391c == null && aVar.b == null) ? false : true) {
                        hashMap.put(name, aVar);
                    }
                }
            }
            cls4 = cls4.getSuperclass();
        }
        a[] aVarArr2 = (a[]) hashMap.values().toArray(new a[hashMap.size()]);
        String name2 = cls.getName();
        if (name2.startsWith("java.util.")) {
            str = "net.minidev.asm." + name2 + "AccAccess";
        } else {
            str = name2.concat("AccAccess");
        }
        h hVar = new h(cls.getClassLoader());
        Class<?> cls5 = null;
        try {
            cls5 = hVar.loadClass(str);
        } catch (ClassNotFoundException unused) {
        }
        LinkedList linkedList2 = new LinkedList();
        Class<P> cls6 = cls2;
        while (cls6 != null && !cls6.equals(cls3)) {
            linkedList2.addLast(cls6);
            for (Class addLast : cls6.getInterfaces()) {
                linkedList2.addLast(addLast);
            }
            cls6 = cls6.getSuperclass();
        }
        linkedList2.addLast(cls3);
        if (cls5 == null) {
            d dVar = new d(cls2, aVarArr2, hVar);
            Iterator it = linkedList2.iterator();
            while (it.hasNext()) {
                String str6 = str;
                LinkedList linkedList3 = linkedList2;
                Iterable<Class> iterable = e.a.get((Class) it.next());
                if (iterable != null) {
                    for (Class cls7 : iterable) {
                        if (cls7 != null) {
                            for (Method method : cls7.getMethods()) {
                                if ((method.getModifiers() & 8) != 0) {
                                    Class[] parameterTypes = method.getParameterTypes();
                                    if (parameterTypes.length == 1 && parameterTypes[0].equals(cls3)) {
                                        Class<?> returnType = method.getReturnType();
                                        if (!returnType.equals(Void.TYPE)) {
                                            dVar.f1401g.put(returnType, method);
                                        }
                                    }
                                }
                            }
                        }
                    }
                }
                i2 = 1;
                i3 = 0;
                str = str6;
                linkedList2 = linkedList3;
            }
            g gVar2 = new g(i2);
            boolean z2 = dVar.a.length > 10;
            g gVar3 = gVar2;
            gVar3.a(50, 33, dVar.f1399e, a.a(new StringBuilder("Lnet/minidev/asm/BeansAccess<L"), dVar.f1400f, ";>;"), d.f1396i, (String[]) null);
            s a2 = gVar3.a(1, "<init>", "()V", (String) null, (String[]) null);
            a2.d(25, i3);
            a2.b(183, d.f1396i, "<init>", "()V");
            a2.a(177);
            a2.c(i2, i2);
            String str7 = "<init>";
            String str8 = "()V";
            s a3 = gVar2.a(1, "set", "(Ljava/lang/Object;ILjava/lang/Object;)V", (String) null, (String[]) null);
            a[] aVarArr3 = dVar.a;
            if (aVarArr3.length != 0) {
                if (aVarArr3.length > 14) {
                    a3.d(21, 2);
                    q[] c2 = e.c.a.a.b.l.c.c(dVar.a.length);
                    q qVar2 = new q();
                    a3.a(i3, c2.length - i2, qVar2, c2);
                    a[] aVarArr4 = dVar.a;
                    int length = aVarArr4.length;
                    int i4 = 0;
                    while (i3 < length) {
                        a aVar2 = aVarArr4[i3];
                        int i5 = i4 + 1;
                        a3.a(c2[i4]);
                        if (!((aVar2.a == null && aVar2.f1391c == null) ? false : true)) {
                            a3.a(177);
                        } else {
                            dVar.a(a3, aVar2);
                        }
                        i3++;
                        i4 = i5;
                    }
                    a3.a(qVar2);
                } else {
                    q[] c3 = e.c.a.a.b.l.c.c(aVarArr3.length);
                    a[] aVarArr5 = dVar.a;
                    int length2 = aVarArr5.length;
                    int i6 = 0;
                    int i7 = 0;
                    while (i6 < length2) {
                        a aVar3 = aVarArr5[i6];
                        dVar.a(a3, 2, i7, c3[i7]);
                        dVar.a(a3, aVar3);
                        a3.a(c3[i7]);
                        a3.a(3, 0, (Object[]) null, 0, (Object[]) null);
                        i7++;
                        i6++;
                        aVarArr5 = aVarArr5;
                    }
                }
            }
            Class<? extends Exception> cls8 = dVar.f1402h;
            if (cls8 != null) {
                dVar.a(a3, (Class<?>) cls8);
            } else {
                a3.a(177);
            }
            a3.c(0, 0);
            s a4 = gVar2.a(1, "get", "(Ljava/lang/Object;I)Ljava/lang/Object;", (String) null, (String[]) null);
            a[] aVarArr6 = dVar.a;
            if (aVarArr6.length == 0) {
                a4.a(3, 0, (Object[]) null, 0, (Object[]) null);
            } else if (aVarArr6.length > 14) {
                a4.d(21, 2);
                q[] c4 = e.c.a.a.b.l.c.c(dVar.a.length);
                q qVar3 = new q();
                a4.a(0, c4.length - 1, qVar3, c4);
                a[] aVarArr7 = dVar.a;
                int length3 = aVarArr7.length;
                int i8 = 0;
                int i9 = 0;
                while (i8 < length3) {
                    a aVar4 = aVarArr7[i8];
                    int i10 = i9 + 1;
                    a4.a(c4[i9]);
                    a4.a(3, 0, (Object[]) null, 0, (Object[]) null);
                    if (!((aVar4.a == null && aVar4.f1391c == null) ? false : true)) {
                        a4.a(1);
                        a4.a(176);
                        qVarArr = c4;
                        qVar = qVar3;
                        aVarArr = aVarArr7;
                    } else {
                        qVarArr = c4;
                        a4.d(25, 1);
                        a4.a(192, dVar.f1400f);
                        y b2 = y.b(aVar4.f1393e);
                        if (aVar4.a()) {
                            qVar = qVar3;
                            aVarArr = aVarArr7;
                            a4.a((int) DeviceClientConfig.DEFAULT_MESSAGE_LOCK_TIMEOUT_SECS, dVar.f1400f, aVar4.f1394f, b2.a());
                        } else {
                            qVar = qVar3;
                            aVarArr = aVarArr7;
                            a4.b(182, dVar.f1400f, aVar4.f1391c.getName(), y.a(aVar4.f1391c));
                        }
                        e.c.a.a.b.l.c.a(a4, b2);
                        a4.a(176);
                    }
                    i8++;
                    c4 = qVarArr;
                    i9 = i10;
                    qVar3 = qVar;
                    aVarArr7 = aVarArr;
                }
                a4.a(qVar3);
                a4.a(3, 0, (Object[]) null, 0, (Object[]) null);
            } else {
                q[] c5 = e.c.a.a.b.l.c.c(aVarArr6.length);
                a[] aVarArr8 = dVar.a;
                int length4 = aVarArr8.length;
                int i11 = 0;
                int i12 = 0;
                while (i11 < length4) {
                    String str9 = str;
                    LinkedList linkedList4 = linkedList2;
                    String str10 = str7;
                    a aVar5 = aVarArr8[i11];
                    dVar.a(a4, 2, i12, c5[i12]);
                    a4.d(25, 1);
                    a4.a(192, dVar.f1400f);
                    y b3 = y.b(aVar5.f1393e);
                    if (aVar5.a()) {
                        gVar = gVar2;
                        z = z2;
                        a4.a((int) DeviceClientConfig.DEFAULT_MESSAGE_LOCK_TIMEOUT_SECS, dVar.f1400f, aVar5.f1394f, b3.a());
                    } else {
                        gVar = gVar2;
                        z = z2;
                        Method method2 = aVar5.f1391c;
                        if (method2 != null) {
                            a4.b(182, dVar.f1400f, aVar5.f1391c.getName(), y.a(method2));
                        } else {
                            throw new RuntimeException("no Getter for field " + aVar5.f1394f + " in class " + dVar.f1397c);
                        }
                    }
                    e.c.a.a.b.l.c.a(a4, b3);
                    a4.a(176);
                    a4.a(c5[i12]);
                    a4.a(3, 0, (Object[]) null, 0, (Object[]) null);
                    i12++;
                    i11++;
                    str = str9;
                    gVar2 = gVar;
                    z2 = z;
                    str7 = str10;
                    linkedList2 = linkedList4;
                }
            }
            Class<? extends Exception> cls9 = dVar.f1402h;
            if (cls9 != null) {
                dVar.a(a4, (Class<?>) cls9);
            } else {
                a4.a(1);
                a4.a(176);
            }
            a4.c(0, 0);
            String str11 = "(Ljava/lang/Object;)Z";
            if (!z2) {
                str2 = str;
                str3 = "java/lang/String";
                s a5 = gVar2.a(1, "set", "(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V", (String) null, (String[]) null);
                q[] c6 = e.c.a.a.b.l.c.c(dVar.a.length);
                a[] aVarArr9 = dVar.a;
                int length5 = aVarArr9.length;
                int i13 = 0;
                int i14 = 0;
                while (i13 < length5) {
                    int i15 = length5;
                    a aVar6 = aVarArr9[i13];
                    a5.d(25, 2);
                    a5.a((Object) aVar6.f1394f);
                    a5.b(182, str3, "equals", str11);
                    a5.a(153, c6[i14]);
                    dVar.a(a5, aVar6);
                    a5.a(c6[i14]);
                    a5.a(3, 0, (Object[]) null, 0, (Object[]) null);
                    i14++;
                    i13++;
                    length5 = i15;
                    aVarArr9 = aVarArr9;
                    linkedList2 = linkedList2;
                }
                Class<? extends Exception> cls10 = dVar.f1402h;
                if (cls10 != null) {
                    dVar.b(a5, cls10);
                } else {
                    a5.a(177);
                }
                a5.c(0, 0);
                linkedList = linkedList2;
            } else {
                str2 = str;
                linkedList = linkedList2;
                str3 = "java/lang/String";
            }
            if (!z2) {
                s a6 = gVar2.a(1, "get", "(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;", (String) null, (String[]) null);
                q[] c7 = e.c.a.a.b.l.c.c(dVar.a.length);
                a[] aVarArr10 = dVar.a;
                int length6 = aVarArr10.length;
                int i16 = 0;
                int i17 = 0;
                while (i16 < length6) {
                    a aVar7 = aVarArr10[i16];
                    a[] aVarArr11 = aVarArr10;
                    a6.d(25, 2);
                    a6.a((Object) aVar7.f1394f);
                    a6.b(182, str3, "equals", str11);
                    a6.a(153, c7[i17]);
                    a6.d(25, 1);
                    a6.a(192, dVar.f1400f);
                    y b4 = y.b(aVar7.f1393e);
                    if (aVar7.a()) {
                        str5 = str3;
                        str4 = str11;
                        a6.a((int) DeviceClientConfig.DEFAULT_MESSAGE_LOCK_TIMEOUT_SECS, dVar.f1400f, aVar7.f1394f, b4.a());
                    } else {
                        str5 = str3;
                        str4 = str11;
                        a6.b(182, dVar.f1400f, aVar7.f1391c.getName(), y.a(aVar7.f1391c));
                    }
                    e.c.a.a.b.l.c.a(a6, b4);
                    a6.a(176);
                    a6.a(c7[i17]);
                    a6.a(3, 0, (Object[]) null, 0, (Object[]) null);
                    i17++;
                    i16++;
                    aVarArr10 = aVarArr11;
                    str3 = str5;
                    str11 = str4;
                }
                Class<? extends Exception> cls11 = dVar.f1402h;
                if (cls11 != null) {
                    dVar.b(a6, cls11);
                } else {
                    a6.a(1);
                    a6.a(176);
                }
                a6.c(0, 0);
            }
            s a7 = gVar2.a(1, "newInstance", "()Ljava/lang/Object;", (String) null, (String[]) null);
            a7.a(187, dVar.f1400f);
            a7.a(89);
            a7.b(183, dVar.f1400f, str7, str8);
            a7.a(176);
            a7.c(2, 1);
            cls5 = dVar.b.a(dVar.f1398d, gVar2.a());
        } else {
            str2 = str;
            linkedList = linkedList2;
        }
        try {
            c<P> cVar2 = (c) cls5.newInstance();
            cVar2.a(aVarArr2);
            f1395c.putIfAbsent(cls2, cVar2);
            Iterator it2 = linkedList.iterator();
            while (it2.hasNext()) {
                a((c<?>) cVar2, e.b.get((Class) it2.next()));
            }
            return cVar2;
        } catch (Exception e2) {
            throw new RuntimeException("Error constructing accessor class: " + str2, e2);
        }
    }

    public static void a(c<?> cVar, HashMap<String, String> hashMap) {
        if (hashMap != null) {
            HashMap hashMap2 = new HashMap();
            for (Map.Entry next : hashMap.entrySet()) {
                a aVar = cVar.a.get(next.getValue());
                if (aVar != null) {
                    hashMap2.put((String) next.getValue(), aVar);
                }
            }
            cVar.a.putAll(hashMap2);
        }
    }
}
