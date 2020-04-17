package com.google.gson.internal.bind;

import com.google.gson.TypeAdapter;
import com.google.gson.internal.Excluder;
import e.c.c.d;
import e.c.c.u;
import e.c.c.v.e;
import e.c.c.w.a0.b;
import e.c.c.w.g;
import e.c.c.w.s;
import e.c.c.w.z.c;
import java.lang.reflect.Field;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

public final class ReflectiveTypeAdapterFactory implements u {
    public final JsonAdapterAnnotationTypeAdapterFactory A;
    public final b B = b.a;
    public final g x;
    public final d y;
    public final Excluder z;

    public static final class Adapter<T> extends TypeAdapter<T> {
        public final s<T> a;
        public final Map<String, a> b;

        public Adapter(s<T> sVar, Map<String, a> map) {
            this.a = sVar;
            this.b = map;
        }

        public T read(e.c.c.y.a aVar) {
            if (aVar.r() == e.c.c.y.b.NULL) {
                aVar.o();
                return null;
            }
            T a2 = this.a.a();
            try {
                aVar.b();
                while (aVar.h()) {
                    a aVar2 = this.b.get(aVar.n());
                    if (aVar2 != null) {
                        if (aVar2.f167c) {
                            c cVar = (c) aVar2;
                            Object read = cVar.f1309f.read(aVar);
                            if (read != null || !cVar.f1312i) {
                                cVar.f1307d.set(a2, read);
                            }
                        }
                    }
                    aVar.u();
                }
                aVar.f();
                return a2;
            } catch (IllegalStateException e2) {
                throw new e.c.c.s((Throwable) e2);
            } catch (IllegalAccessException e3) {
                throw new AssertionError(e3);
            }
        }

        public void write(e.c.c.y.c cVar, T t) {
            TypeAdapter typeAdapter;
            if (t == null) {
                cVar.g();
                return;
            }
            cVar.c();
            try {
                for (a next : this.b.values()) {
                    c cVar2 = (c) next;
                    boolean z = false;
                    if (cVar2.b) {
                        if (cVar2.f1307d.get(t) != t) {
                            z = true;
                        }
                    }
                    if (z) {
                        cVar.a(next.a);
                        c cVar3 = (c) next;
                        Object obj = cVar3.f1307d.get(t);
                        if (cVar3.f1308e) {
                            typeAdapter = cVar3.f1309f;
                        } else {
                            typeAdapter = new TypeAdapterRuntimeTypeWrapper(cVar3.f1310g, cVar3.f1309f, cVar3.f1311h.getType());
                        }
                        typeAdapter.write(cVar, obj);
                    }
                }
                cVar.e();
            } catch (IllegalAccessException e2) {
                throw new AssertionError(e2);
            }
        }
    }

    public static abstract class a {
        public final String a;
        public final boolean b;

        /* renamed from: c  reason: collision with root package name */
        public final boolean f167c;

        public a(String str, boolean z, boolean z2) {
            this.a = str;
            this.b = z;
            this.f167c = z2;
        }
    }

    public ReflectiveTypeAdapterFactory(g gVar, d dVar, Excluder excluder, JsonAdapterAnnotationTypeAdapterFactory jsonAdapterAnnotationTypeAdapterFactory) {
        this.x = gVar;
        this.y = dVar;
        this.z = excluder;
        this.A = jsonAdapterAnnotationTypeAdapterFactory;
    }

    public boolean a(Field field, boolean z2) {
        boolean z3;
        e.c.c.v.a aVar;
        Excluder excluder = this.z;
        Class<?> type = field.getType();
        if (!(excluder.a(type) || excluder.a(type, z2))) {
            if ((excluder.y & field.getModifiers()) == 0 && ((excluder.x == -1.0d || excluder.a((e.c.c.v.d) field.getAnnotation(e.c.c.v.d.class), (e) field.getAnnotation(e.class))) && !field.isSynthetic() && ((!excluder.A || ((aVar = (e.c.c.v.a) field.getAnnotation(e.c.c.v.a.class)) != null && (!z2 ? aVar.deserialize() : aVar.serialize()))) && ((excluder.z || !excluder.c(field.getType())) && !excluder.b(field.getType()))))) {
                List<e.c.c.a> list = z2 ? excluder.B : excluder.C;
                if (!list.isEmpty()) {
                    e.c.c.b bVar = new e.c.c.b(field);
                    Iterator<e.c.c.a> it = list.iterator();
                    while (true) {
                        if (it.hasNext()) {
                            if (it.next().a(bVar)) {
                                break;
                            }
                        } else {
                            break;
                        }
                    }
                }
                z3 = false;
            } else {
                z3 = true;
            }
            if (!z3) {
                return true;
            }
        }
        return false;
    }

    /* JADX WARNING: Removed duplicated region for block: B:27:0x00cd  */
    /* JADX WARNING: Removed duplicated region for block: B:53:0x0198 A[SYNTHETIC] */
    /* JADX WARNING: Removed duplicated region for block: B:56:0x0180 A[SYNTHETIC] */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public <T> com.google.gson.TypeAdapter<T> a(com.google.gson.Gson r36, e.c.c.x.a<T> r37) {
        /*
            r35 = this;
            r11 = r35
            r12 = r36
            java.lang.Class<java.lang.Object> r13 = java.lang.Object.class
            java.lang.Class r0 = r37.getRawType()
            boolean r1 = r13.isAssignableFrom(r0)
            r14 = 0
            if (r1 != 0) goto L_0x0012
            return r14
        L_0x0012:
            e.c.c.w.g r1 = r11.x
            r2 = r37
            e.c.c.w.s r15 = r1.a(r2)
            com.google.gson.internal.bind.ReflectiveTypeAdapterFactory$Adapter r10 = new com.google.gson.internal.bind.ReflectiveTypeAdapterFactory$Adapter
            java.util.LinkedHashMap r9 = new java.util.LinkedHashMap
            r9.<init>()
            boolean r1 = r0.isInterface()
            if (r1 == 0) goto L_0x002e
        L_0x0027:
            r14 = r9
            r34 = r10
            r22 = r15
            goto L_0x01db
        L_0x002e:
            java.lang.reflect.Type r8 = r37.getType()
            r7 = r0
            r16 = r2
        L_0x0035:
            if (r7 == r13) goto L_0x0027
            java.lang.reflect.Field[] r6 = r7.getDeclaredFields()
            int r5 = r6.length
            r4 = 0
            r3 = 0
        L_0x003e:
            if (r3 >= r5) goto L_0x01b4
            r2 = r6[r3]
            r1 = 1
            boolean r0 = r11.a((java.lang.reflect.Field) r2, (boolean) r1)
            boolean r17 = r11.a((java.lang.reflect.Field) r2, (boolean) r4)
            if (r0 != 0) goto L_0x0063
            if (r17 != 0) goto L_0x0063
            r20 = r3
            r32 = r5
            r33 = r6
            r37 = r7
            r12 = r8
            r14 = r9
            r34 = r10
            r19 = r13
            r22 = r15
            r31 = 0
            goto L_0x0180
        L_0x0063:
            e.c.c.w.a0.b r4 = r11.B
            r4.a(r2)
            java.lang.reflect.Type r4 = r16.getType()
            java.lang.reflect.Type r14 = r2.getGenericType()
            java.lang.reflect.Type r14 = e.c.c.w.a.a((java.lang.reflect.Type) r4, (java.lang.Class<?>) r7, (java.lang.reflect.Type) r14)
            java.lang.Class<e.c.c.v.c> r4 = e.c.c.v.c.class
            java.lang.annotation.Annotation r4 = r2.getAnnotation(r4)
            e.c.c.v.c r4 = (e.c.c.v.c) r4
            if (r4 != 0) goto L_0x008b
            e.c.c.d r4 = r11.y
            java.lang.String r4 = r4.translateName(r2)
            java.util.List r4 = java.util.Collections.singletonList(r4)
            r19 = r0
            goto L_0x009c
        L_0x008b:
            java.lang.String r1 = r4.value()
            java.lang.String[] r4 = r4.alternate()
            r19 = r0
            int r0 = r4.length
            if (r0 != 0) goto L_0x00a1
            java.util.List r4 = java.util.Collections.singletonList(r1)
        L_0x009c:
            r20 = r3
            r18 = 1
            goto L_0x00c1
        L_0x00a1:
            java.util.ArrayList r0 = new java.util.ArrayList
            r20 = r3
            int r3 = r4.length
            r18 = 1
            int r3 = r3 + 1
            r0.<init>(r3)
            r0.add(r1)
            int r1 = r4.length
            r3 = 0
        L_0x00b2:
            if (r3 >= r1) goto L_0x00c0
            r21 = r1
            r1 = r4[r3]
            r0.add(r1)
            int r3 = r3 + 1
            r1 = r21
            goto L_0x00b2
        L_0x00c0:
            r4 = r0
        L_0x00c1:
            int r3 = r4.size()
            r0 = r19
            r1 = 0
            r19 = r13
            r13 = 0
        L_0x00cb:
            if (r1 >= r3) goto L_0x0170
            java.lang.Object r21 = r4.get(r1)
            r22 = r15
            r15 = r21
            java.lang.String r15 = (java.lang.String) r15
            if (r1 == 0) goto L_0x00dc
            r21 = 0
            goto L_0x00de
        L_0x00dc:
            r21 = r0
        L_0x00de:
            e.c.c.x.a r0 = e.c.c.x.a.get((java.lang.reflect.Type) r14)
            r23 = r1
            java.lang.Class r1 = r0.getRawType()
            r24 = r3
            java.util.Map<java.lang.Class<?>, java.lang.Class<?>> r3 = e.c.c.w.t.a
            boolean r25 = r3.containsKey(r1)
            java.lang.Class<e.c.c.v.b> r1 = e.c.c.v.b.class
            java.lang.annotation.Annotation r1 = r2.getAnnotation(r1)
            e.c.c.v.b r1 = (e.c.c.v.b) r1
            if (r1 == 0) goto L_0x0105
            com.google.gson.internal.bind.JsonAdapterAnnotationTypeAdapterFactory r3 = r11.A
            r26 = r2
            e.c.c.w.g r2 = r11.x
            com.google.gson.TypeAdapter r1 = r3.a(r2, r12, r0, r1)
            goto L_0x0108
        L_0x0105:
            r26 = r2
            r1 = 0
        L_0x0108:
            if (r1 == 0) goto L_0x010d
            r27 = 1
            goto L_0x010f
        L_0x010d:
            r27 = 0
        L_0x010f:
            if (r1 != 0) goto L_0x0115
            com.google.gson.TypeAdapter r1 = r12.a(r0)
        L_0x0115:
            r28 = r1
            e.c.c.w.z.c r3 = new e.c.c.w.z.c
            r29 = r0
            r0 = r3
            r18 = r23
            r23 = 1
            r1 = r35
            r2 = r15
            r11 = r3
            r3 = r21
            r30 = r4
            r31 = 0
            r4 = r17
            r32 = r5
            r5 = r26
            r33 = r6
            r6 = r27
            r37 = r7
            r7 = r28
            r12 = r8
            r8 = r36
            r27 = r14
            r14 = r9
            r9 = r29
            r34 = r10
            r10 = r25
            r0.<init>(r1, r2, r3, r4, r5, r6, r7, r8, r9, r10)
            java.lang.Object r0 = r14.put(r15, r11)
            com.google.gson.internal.bind.ReflectiveTypeAdapterFactory$a r0 = (com.google.gson.internal.bind.ReflectiveTypeAdapterFactory.a) r0
            if (r13 != 0) goto L_0x0150
            r13 = r0
        L_0x0150:
            int r1 = r18 + 1
            r11 = r35
            r7 = r37
            r8 = r12
            r9 = r14
            r0 = r21
            r15 = r22
            r3 = r24
            r2 = r26
            r14 = r27
            r4 = r30
            r5 = r32
            r6 = r33
            r10 = r34
            r18 = 1
            r12 = r36
            goto L_0x00cb
        L_0x0170:
            r32 = r5
            r33 = r6
            r37 = r7
            r12 = r8
            r14 = r9
            r34 = r10
            r22 = r15
            r31 = 0
            if (r13 != 0) goto L_0x0198
        L_0x0180:
            int r3 = r20 + 1
            r11 = r35
            r7 = r37
            r8 = r12
            r9 = r14
            r13 = r19
            r15 = r22
            r5 = r32
            r6 = r33
            r10 = r34
            r4 = 0
            r14 = 0
            r12 = r36
            goto L_0x003e
        L_0x0198:
            java.lang.IllegalArgumentException r0 = new java.lang.IllegalArgumentException
            java.lang.StringBuilder r1 = new java.lang.StringBuilder
            r1.<init>()
            r1.append(r12)
            java.lang.String r2 = " declares multiple JSON fields named "
            r1.append(r2)
            java.lang.String r2 = r13.a
            r1.append(r2)
            java.lang.String r1 = r1.toString()
            r0.<init>(r1)
            throw r0
        L_0x01b4:
            r37 = r7
            r12 = r8
            r14 = r9
            r34 = r10
            r19 = r13
            r22 = r15
            java.lang.reflect.Type r0 = r16.getType()
            java.lang.reflect.Type r1 = r37.getGenericSuperclass()
            r2 = r37
            java.lang.reflect.Type r0 = e.c.c.w.a.a((java.lang.reflect.Type) r0, (java.lang.Class<?>) r2, (java.lang.reflect.Type) r1)
            e.c.c.x.a r16 = e.c.c.x.a.get((java.lang.reflect.Type) r0)
            java.lang.Class r7 = r16.getRawType()
            r11 = r35
            r14 = 0
            r12 = r36
            goto L_0x0035
        L_0x01db:
            r0 = r22
            r1 = r34
            r1.<init>(r0, r14)
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.gson.internal.bind.ReflectiveTypeAdapterFactory.a(com.google.gson.Gson, e.c.c.x.a):com.google.gson.TypeAdapter");
    }
}
