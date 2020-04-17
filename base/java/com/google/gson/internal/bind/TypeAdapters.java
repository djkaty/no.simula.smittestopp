package com.google.gson.internal.bind;

import com.google.gson.Gson;
import com.google.gson.TypeAdapter;
import com.microsoft.appcenter.AbstractAppCenterService;
import e.c.c.g;
import e.c.c.j;
import e.c.c.k;
import e.c.c.l;
import e.c.c.m;
import e.c.c.p;
import e.c.c.s;
import e.c.c.u;
import e.c.c.w.q;
import e.c.c.y.a;
import e.c.c.y.b;
import e.c.c.y.c;
import java.math.BigDecimal;
import java.math.BigInteger;
import java.net.InetAddress;
import java.net.URI;
import java.net.URISyntaxException;
import java.net.URL;
import java.sql.Timestamp;
import java.util.ArrayList;
import java.util.BitSet;
import java.util.Calendar;
import java.util.Currency;
import java.util.Date;
import java.util.GregorianCalendar;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Locale;
import java.util.Map;
import java.util.StringTokenizer;
import java.util.UUID;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicIntegerArray;

public final class TypeAdapters {
    public static final TypeAdapter<String> A = new TypeAdapter<String>() {
        public Object read(a aVar) {
            b r = aVar.r();
            if (r == b.NULL) {
                aVar.o();
                return null;
            } else if (r == b.BOOLEAN) {
                return Boolean.toString(aVar.j());
            } else {
                return aVar.p();
            }
        }

        public void write(c cVar, Object obj) {
            cVar.c((String) obj);
        }
    };
    public static final TypeAdapter<BigDecimal> B = new TypeAdapter<BigDecimal>() {
        public Object read(a aVar) {
            if (aVar.r() == b.NULL) {
                aVar.o();
                return null;
            }
            try {
                return new BigDecimal(aVar.p());
            } catch (NumberFormatException e2) {
                throw new s((Throwable) e2);
            }
        }

        public void write(c cVar, Object obj) {
            cVar.a((Number) (BigDecimal) obj);
        }
    };
    public static final TypeAdapter<BigInteger> C = new TypeAdapter<BigInteger>() {
        public Object read(a aVar) {
            if (aVar.r() == b.NULL) {
                aVar.o();
                return null;
            }
            try {
                return new BigInteger(aVar.p());
            } catch (NumberFormatException e2) {
                throw new s((Throwable) e2);
            }
        }

        public void write(c cVar, Object obj) {
            cVar.a((Number) (BigInteger) obj);
        }
    };
    public static final u D;
    public static final TypeAdapter<StringBuilder> E;
    public static final u F;
    public static final TypeAdapter<StringBuffer> G;
    public static final u H;
    public static final TypeAdapter<URL> I;
    public static final u J;
    public static final TypeAdapter<URI> K;
    public static final u L;
    public static final TypeAdapter<InetAddress> M;
    public static final u N;
    public static final TypeAdapter<UUID> O;
    public static final u P;
    public static final TypeAdapter<Currency> Q;
    public static final u R;
    public static final u S = new u() {
        public <T> TypeAdapter<T> a(Gson gson, e.c.c.x.a<T> aVar) {
            if (aVar.getRawType() != Timestamp.class) {
                return null;
            }
            Class<Date> cls = Date.class;
            if (gson != null) {
                final TypeAdapter<Date> a = gson.a(e.c.c.x.a.get(cls));
                return new TypeAdapter<Timestamp>(this) {
                    public Object read(a aVar) {
                        Date date = (Date) a.read(aVar);
                        if (date != null) {
                            return new Timestamp(date.getTime());
                        }
                        return null;
                    }

                    public void write(c cVar, Object obj) {
                        a.write(cVar, (Timestamp) obj);
                    }
                };
            }
            throw null;
        }
    };
    public static final TypeAdapter<Calendar> T;
    public static final u U;
    public static final TypeAdapter<Locale> V;
    public static final u W;
    public static final TypeAdapter<j> X;
    public static final u Y;
    public static final u Z = new u() {
        /* JADX WARNING: type inference failed for: r2v0, types: [e.c.c.x.a, e.c.c.x.a<T>] */
        /* JADX WARNING: Unknown variable types count: 1 */
        /* Code decompiled incorrectly, please refer to instructions dump. */
        public <T> com.google.gson.TypeAdapter<T> a(com.google.gson.Gson r1, e.c.c.x.a<T> r2) {
            /*
                r0 = this;
                java.lang.Class r1 = r2.getRawType()
                java.lang.Class<java.lang.Enum> r2 = java.lang.Enum.class
                boolean r2 = r2.isAssignableFrom(r1)
                if (r2 == 0) goto L_0x0021
                java.lang.Class<java.lang.Enum> r2 = java.lang.Enum.class
                if (r1 != r2) goto L_0x0011
                goto L_0x0021
            L_0x0011:
                boolean r2 = r1.isEnum()
                if (r2 != 0) goto L_0x001b
                java.lang.Class r1 = r1.getSuperclass()
            L_0x001b:
                com.google.gson.internal.bind.TypeAdapters$EnumTypeAdapter r2 = new com.google.gson.internal.bind.TypeAdapters$EnumTypeAdapter
                r2.<init>(r1)
                return r2
            L_0x0021:
                r1 = 0
                return r1
            */
            throw new UnsupportedOperationException("Method not decompiled: com.google.gson.internal.bind.TypeAdapters.AnonymousClass30.a(com.google.gson.Gson, e.c.c.x.a):com.google.gson.TypeAdapter");
        }
    };
    public static final TypeAdapter<Class> a;
    public static final u b;

    /* renamed from: c  reason: collision with root package name */
    public static final TypeAdapter<BitSet> f174c;

    /* renamed from: d  reason: collision with root package name */
    public static final u f175d;

    /* renamed from: e  reason: collision with root package name */
    public static final TypeAdapter<Boolean> f176e = new TypeAdapter<Boolean>() {
        public Object read(a aVar) {
            b r = aVar.r();
            if (r == b.NULL) {
                aVar.o();
                return null;
            } else if (r == b.STRING) {
                return Boolean.valueOf(Boolean.parseBoolean(aVar.p()));
            } else {
                return Boolean.valueOf(aVar.j());
            }
        }

        public void write(c cVar, Object obj) {
            cVar.a((Boolean) obj);
        }
    };

    /* renamed from: f  reason: collision with root package name */
    public static final TypeAdapter<Boolean> f177f = new TypeAdapter<Boolean>() {
        public Object read(a aVar) {
            if (aVar.r() != b.NULL) {
                return Boolean.valueOf(aVar.p());
            }
            aVar.o();
            return null;
        }

        public void write(c cVar, Object obj) {
            String str;
            Boolean bool = (Boolean) obj;
            if (bool == null) {
                str = "null";
            } else {
                str = bool.toString();
            }
            cVar.c(str);
        }
    };

    /* renamed from: g  reason: collision with root package name */
    public static final u f178g;

    /* renamed from: h  reason: collision with root package name */
    public static final TypeAdapter<Number> f179h = new TypeAdapter<Number>() {
        public Object read(a aVar) {
            if (aVar.r() == b.NULL) {
                aVar.o();
                return null;
            }
            try {
                return Byte.valueOf((byte) aVar.l());
            } catch (NumberFormatException e2) {
                throw new s((Throwable) e2);
            }
        }

        public void write(c cVar, Object obj) {
            cVar.a((Number) obj);
        }
    };

    /* renamed from: i  reason: collision with root package name */
    public static final u f180i;

    /* renamed from: j  reason: collision with root package name */
    public static final TypeAdapter<Number> f181j = new TypeAdapter<Number>() {
        public Object read(a aVar) {
            if (aVar.r() == b.NULL) {
                aVar.o();
                return null;
            }
            try {
                return Short.valueOf((short) aVar.l());
            } catch (NumberFormatException e2) {
                throw new s((Throwable) e2);
            }
        }

        public void write(c cVar, Object obj) {
            cVar.a((Number) obj);
        }
    };

    /* renamed from: k  reason: collision with root package name */
    public static final u f182k;

    /* renamed from: l  reason: collision with root package name */
    public static final TypeAdapter<Number> f183l = new TypeAdapter<Number>() {
        public Object read(a aVar) {
            if (aVar.r() == b.NULL) {
                aVar.o();
                return null;
            }
            try {
                return Integer.valueOf(aVar.l());
            } catch (NumberFormatException e2) {
                throw new s((Throwable) e2);
            }
        }

        public void write(c cVar, Object obj) {
            cVar.a((Number) obj);
        }
    };
    public static final u m;
    public static final TypeAdapter<AtomicInteger> n;
    public static final u o;
    public static final TypeAdapter<AtomicBoolean> p;
    public static final u q;
    public static final TypeAdapter<AtomicIntegerArray> r;
    public static final u s;
    public static final TypeAdapter<Number> t = new TypeAdapter<Number>() {
        public Object read(a aVar) {
            if (aVar.r() == b.NULL) {
                aVar.o();
                return null;
            }
            try {
                return Long.valueOf(aVar.m());
            } catch (NumberFormatException e2) {
                throw new s((Throwable) e2);
            }
        }

        public void write(c cVar, Object obj) {
            cVar.a((Number) obj);
        }
    };
    public static final TypeAdapter<Number> u = new TypeAdapter<Number>() {
        public Object read(a aVar) {
            if (aVar.r() != b.NULL) {
                return Float.valueOf((float) aVar.k());
            }
            aVar.o();
            return null;
        }

        public void write(c cVar, Object obj) {
            cVar.a((Number) obj);
        }
    };
    public static final TypeAdapter<Number> v = new TypeAdapter<Number>() {
        public Object read(a aVar) {
            if (aVar.r() != b.NULL) {
                return Double.valueOf(aVar.k());
            }
            aVar.o();
            return null;
        }

        public void write(c cVar, Object obj) {
            cVar.a((Number) obj);
        }
    };
    public static final TypeAdapter<Number> w;
    public static final u x;
    public static final TypeAdapter<Character> y = new TypeAdapter<Character>() {
        public Object read(a aVar) {
            if (aVar.r() == b.NULL) {
                aVar.o();
                return null;
            }
            String p = aVar.p();
            if (p.length() == 1) {
                return Character.valueOf(p.charAt(0));
            }
            throw new s(e.a.a.a.a.b("Expecting character, got: ", p));
        }

        public void write(c cVar, Object obj) {
            String str;
            Character ch = (Character) obj;
            if (ch == null) {
                str = null;
            } else {
                str = String.valueOf(ch);
            }
            cVar.c(str);
        }
    };
    public static final u z;

    public static final class EnumTypeAdapter<T extends Enum<T>> extends TypeAdapter<T> {
        public final Map<String, T> a = new HashMap();
        public final Map<T, String> b = new HashMap();

        public EnumTypeAdapter(Class<T> cls) {
            try {
                for (Enum enumR : (Enum[]) cls.getEnumConstants()) {
                    String name = enumR.name();
                    e.c.c.v.c cVar = (e.c.c.v.c) cls.getField(name).getAnnotation(e.c.c.v.c.class);
                    if (cVar != null) {
                        name = cVar.value();
                        for (String put : cVar.alternate()) {
                            this.a.put(put, enumR);
                        }
                    }
                    this.a.put(name, enumR);
                    this.b.put(enumR, name);
                }
            } catch (NoSuchFieldException e2) {
                throw new AssertionError(e2);
            }
        }

        public Object read(a aVar) {
            if (aVar.r() != b.NULL) {
                return (Enum) this.a.get(aVar.p());
            }
            aVar.o();
            return null;
        }

        public void write(c cVar, Object obj) {
            String str;
            Enum enumR = (Enum) obj;
            if (enumR == null) {
                str = null;
            } else {
                str = this.b.get(enumR);
            }
            cVar.c(str);
        }
    }

    static {
        final TypeAdapter<Class> nullSafe = new TypeAdapter<Class>() {
            public Object read(a aVar) {
                throw new UnsupportedOperationException("Attempted to deserialize a java.lang.Class. Forgot to register a type adapter?");
            }

            public void write(c cVar, Object obj) {
                StringBuilder a = e.a.a.a.a.a("Attempted to serialize java.lang.Class: ");
                a.append(((Class) obj).getName());
                a.append(". Forgot to register a type adapter?");
                throw new UnsupportedOperationException(a.toString());
            }
        }.nullSafe();
        a = nullSafe;
        final Class<Class> cls = Class.class;
        b = new u() {
            public <T> TypeAdapter<T> a(Gson gson, e.c.c.x.a<T> aVar) {
                if (aVar.getRawType() == r1) {
                    return r2;
                }
                return null;
            }

            public String toString() {
                StringBuilder a = e.a.a.a.a.a("Factory[type=");
                a.append(r1.getName());
                a.append(",adapter=");
                a.append(r2);
                a.append("]");
                return a.toString();
            }
        };
        final TypeAdapter<BitSet> nullSafe2 = new TypeAdapter<BitSet>() {
            /* JADX WARNING: Code restructure failed: missing block: B:13:0x003e, code lost:
                if (r6.l() != 0) goto L_0x004b;
             */
            /* JADX WARNING: Code restructure failed: missing block: B:17:0x0049, code lost:
                if (java.lang.Integer.parseInt(r1) != 0) goto L_0x004b;
             */
            /* JADX WARNING: Code restructure failed: missing block: B:19:0x004d, code lost:
                r1 = false;
             */
            /* JADX WARNING: Removed duplicated region for block: B:21:0x0050  */
            /* JADX WARNING: Removed duplicated region for block: B:31:0x0053 A[SYNTHETIC] */
            /* Code decompiled incorrectly, please refer to instructions dump. */
            public java.lang.Object read(e.c.c.y.a r6) {
                /*
                    r5 = this;
                    java.util.BitSet r0 = new java.util.BitSet
                    r0.<init>()
                    r6.a()
                    e.c.c.y.b r1 = r6.r()
                    r2 = 0
                L_0x000d:
                    e.c.c.y.b r3 = e.c.c.y.b.END_ARRAY
                    if (r1 == r3) goto L_0x0066
                    int r3 = r1.ordinal()
                    r4 = 5
                    if (r3 == r4) goto L_0x0041
                    r4 = 6
                    if (r3 == r4) goto L_0x003a
                    r4 = 7
                    if (r3 != r4) goto L_0x0023
                    boolean r1 = r6.j()
                    goto L_0x004e
                L_0x0023:
                    e.c.c.s r6 = new e.c.c.s
                    java.lang.StringBuilder r0 = new java.lang.StringBuilder
                    r0.<init>()
                    java.lang.String r2 = "Invalid bitset value type: "
                    r0.append(r2)
                    r0.append(r1)
                    java.lang.String r0 = r0.toString()
                    r6.<init>((java.lang.String) r0)
                    throw r6
                L_0x003a:
                    int r1 = r6.l()
                    if (r1 == 0) goto L_0x004d
                    goto L_0x004b
                L_0x0041:
                    java.lang.String r1 = r6.p()
                    int r1 = java.lang.Integer.parseInt(r1)     // Catch:{ NumberFormatException -> 0x005a }
                    if (r1 == 0) goto L_0x004d
                L_0x004b:
                    r1 = 1
                    goto L_0x004e
                L_0x004d:
                    r1 = 0
                L_0x004e:
                    if (r1 == 0) goto L_0x0053
                    r0.set(r2)
                L_0x0053:
                    int r2 = r2 + 1
                    e.c.c.y.b r1 = r6.r()
                    goto L_0x000d
                L_0x005a:
                    e.c.c.s r6 = new e.c.c.s
                    java.lang.String r0 = "Error: Expecting: bitset number value (1, 0), Found: "
                    java.lang.String r0 = e.a.a.a.a.b(r0, r1)
                    r6.<init>((java.lang.String) r0)
                    throw r6
                L_0x0066:
                    r6.e()
                    return r0
                */
                throw new UnsupportedOperationException("Method not decompiled: com.google.gson.internal.bind.TypeAdapters.AnonymousClass2.read(e.c.c.y.a):java.lang.Object");
            }

            public void write(c cVar, Object obj) {
                BitSet bitSet = (BitSet) obj;
                cVar.b();
                int length = bitSet.length();
                for (int i2 = 0; i2 < length; i2++) {
                    cVar.a(bitSet.get(i2) ? 1 : 0);
                }
                cVar.d();
            }
        }.nullSafe();
        f174c = nullSafe2;
        final Class<BitSet> cls2 = BitSet.class;
        f175d = new u() {
            public <T> TypeAdapter<T> a(Gson gson, e.c.c.x.a<T> aVar) {
                if (aVar.getRawType() == r1) {
                    return r2;
                }
                return null;
            }

            public String toString() {
                StringBuilder a = e.a.a.a.a.a("Factory[type=");
                a.append(r1.getName());
                a.append(",adapter=");
                a.append(r2);
                a.append("]");
                return a.toString();
            }
        };
        final Class cls3 = Boolean.TYPE;
        final Class<Boolean> cls4 = Boolean.class;
        final TypeAdapter<Boolean> typeAdapter = f176e;
        f178g = new u() {
            public <T> TypeAdapter<T> a(Gson gson, e.c.c.x.a<T> aVar) {
                Class<? super T> rawType = aVar.getRawType();
                if (rawType == r0 || rawType == r1) {
                    return r2;
                }
                return null;
            }

            public String toString() {
                StringBuilder a = e.a.a.a.a.a("Factory[type=");
                a.append(r1.getName());
                a.append("+");
                a.append(r0.getName());
                a.append(",adapter=");
                a.append(r2);
                a.append("]");
                return a.toString();
            }
        };
        final Class cls5 = Byte.TYPE;
        final Class<Byte> cls6 = Byte.class;
        final TypeAdapter<Number> typeAdapter2 = f179h;
        f180i = new u() {
            public <T> TypeAdapter<T> a(Gson gson, e.c.c.x.a<T> aVar) {
                Class<? super T> rawType = aVar.getRawType();
                if (rawType == r0 || rawType == r1) {
                    return r2;
                }
                return null;
            }

            public String toString() {
                StringBuilder a = e.a.a.a.a.a("Factory[type=");
                a.append(r1.getName());
                a.append("+");
                a.append(r0.getName());
                a.append(",adapter=");
                a.append(r2);
                a.append("]");
                return a.toString();
            }
        };
        final Class cls7 = Short.TYPE;
        final Class<Short> cls8 = Short.class;
        final TypeAdapter<Number> typeAdapter3 = f181j;
        f182k = new u() {
            public <T> TypeAdapter<T> a(Gson gson, e.c.c.x.a<T> aVar) {
                Class<? super T> rawType = aVar.getRawType();
                if (rawType == r0 || rawType == r1) {
                    return r2;
                }
                return null;
            }

            public String toString() {
                StringBuilder a = e.a.a.a.a.a("Factory[type=");
                a.append(r1.getName());
                a.append("+");
                a.append(r0.getName());
                a.append(",adapter=");
                a.append(r2);
                a.append("]");
                return a.toString();
            }
        };
        final Class cls9 = Integer.TYPE;
        final Class<Integer> cls10 = Integer.class;
        final TypeAdapter<Number> typeAdapter4 = f183l;
        m = new u() {
            public <T> TypeAdapter<T> a(Gson gson, e.c.c.x.a<T> aVar) {
                Class<? super T> rawType = aVar.getRawType();
                if (rawType == r0 || rawType == r1) {
                    return r2;
                }
                return null;
            }

            public String toString() {
                StringBuilder a = e.a.a.a.a.a("Factory[type=");
                a.append(r1.getName());
                a.append("+");
                a.append(r0.getName());
                a.append(",adapter=");
                a.append(r2);
                a.append("]");
                return a.toString();
            }
        };
        final TypeAdapter<AtomicInteger> nullSafe3 = new TypeAdapter<AtomicInteger>() {
            public Object read(a aVar) {
                try {
                    return new AtomicInteger(aVar.l());
                } catch (NumberFormatException e2) {
                    throw new s((Throwable) e2);
                }
            }

            public void write(c cVar, Object obj) {
                cVar.a((long) ((AtomicInteger) obj).get());
            }
        }.nullSafe();
        n = nullSafe3;
        final Class<AtomicInteger> cls11 = AtomicInteger.class;
        o = new u() {
            public <T> TypeAdapter<T> a(Gson gson, e.c.c.x.a<T> aVar) {
                if (aVar.getRawType() == r1) {
                    return r2;
                }
                return null;
            }

            public String toString() {
                StringBuilder a = e.a.a.a.a.a("Factory[type=");
                a.append(r1.getName());
                a.append(",adapter=");
                a.append(r2);
                a.append("]");
                return a.toString();
            }
        };
        final TypeAdapter<AtomicBoolean> nullSafe4 = new TypeAdapter<AtomicBoolean>() {
            public Object read(a aVar) {
                return new AtomicBoolean(aVar.j());
            }

            public void write(c cVar, Object obj) {
                cVar.a(((AtomicBoolean) obj).get());
            }
        }.nullSafe();
        p = nullSafe4;
        final Class<AtomicBoolean> cls12 = AtomicBoolean.class;
        q = new u() {
            public <T> TypeAdapter<T> a(Gson gson, e.c.c.x.a<T> aVar) {
                if (aVar.getRawType() == r1) {
                    return r2;
                }
                return null;
            }

            public String toString() {
                StringBuilder a = e.a.a.a.a.a("Factory[type=");
                a.append(r1.getName());
                a.append(",adapter=");
                a.append(r2);
                a.append("]");
                return a.toString();
            }
        };
        final TypeAdapter<AtomicIntegerArray> nullSafe5 = new TypeAdapter<AtomicIntegerArray>() {
            public Object read(a aVar) {
                ArrayList arrayList = new ArrayList();
                aVar.a();
                while (aVar.h()) {
                    try {
                        arrayList.add(Integer.valueOf(aVar.l()));
                    } catch (NumberFormatException e2) {
                        throw new s((Throwable) e2);
                    }
                }
                aVar.e();
                int size = arrayList.size();
                AtomicIntegerArray atomicIntegerArray = new AtomicIntegerArray(size);
                for (int i2 = 0; i2 < size; i2++) {
                    atomicIntegerArray.set(i2, ((Integer) arrayList.get(i2)).intValue());
                }
                return atomicIntegerArray;
            }

            public void write(c cVar, Object obj) {
                AtomicIntegerArray atomicIntegerArray = (AtomicIntegerArray) obj;
                cVar.b();
                int length = atomicIntegerArray.length();
                for (int i2 = 0; i2 < length; i2++) {
                    cVar.a((long) atomicIntegerArray.get(i2));
                }
                cVar.d();
            }
        }.nullSafe();
        r = nullSafe5;
        final Class<AtomicIntegerArray> cls13 = AtomicIntegerArray.class;
        s = new u() {
            public <T> TypeAdapter<T> a(Gson gson, e.c.c.x.a<T> aVar) {
                if (aVar.getRawType() == r1) {
                    return r2;
                }
                return null;
            }

            public String toString() {
                StringBuilder a = e.a.a.a.a.a("Factory[type=");
                a.append(r1.getName());
                a.append(",adapter=");
                a.append(r2);
                a.append("]");
                return a.toString();
            }
        };
        final AnonymousClass14 r0 = new TypeAdapter<Number>() {
            public Object read(a aVar) {
                b r = aVar.r();
                int ordinal = r.ordinal();
                if (ordinal == 5 || ordinal == 6) {
                    return new q(aVar.p());
                }
                if (ordinal == 8) {
                    aVar.o();
                    return null;
                }
                throw new s("Expecting number, got: " + r);
            }

            public void write(c cVar, Object obj) {
                cVar.a((Number) obj);
            }
        };
        w = r0;
        final Class<Number> cls14 = Number.class;
        x = new u() {
            public <T> TypeAdapter<T> a(Gson gson, e.c.c.x.a<T> aVar) {
                if (aVar.getRawType() == r1) {
                    return r2;
                }
                return null;
            }

            public String toString() {
                StringBuilder a = e.a.a.a.a.a("Factory[type=");
                a.append(r1.getName());
                a.append(",adapter=");
                a.append(r2);
                a.append("]");
                return a.toString();
            }
        };
        final Class cls15 = Character.TYPE;
        final Class<Character> cls16 = Character.class;
        final TypeAdapter<Character> typeAdapter5 = y;
        z = new u() {
            public <T> TypeAdapter<T> a(Gson gson, e.c.c.x.a<T> aVar) {
                Class<? super T> rawType = aVar.getRawType();
                if (rawType == cls15 || rawType == cls16) {
                    return typeAdapter5;
                }
                return null;
            }

            public String toString() {
                StringBuilder a = e.a.a.a.a.a("Factory[type=");
                a.append(cls16.getName());
                a.append("+");
                a.append(cls15.getName());
                a.append(",adapter=");
                a.append(typeAdapter5);
                a.append("]");
                return a.toString();
            }
        };
        final Class<String> cls17 = String.class;
        final TypeAdapter<String> typeAdapter6 = A;
        D = new u() {
            public <T> TypeAdapter<T> a(Gson gson, e.c.c.x.a<T> aVar) {
                if (aVar.getRawType() == r1) {
                    return r2;
                }
                return null;
            }

            public String toString() {
                StringBuilder a = e.a.a.a.a.a("Factory[type=");
                a.append(r1.getName());
                a.append(",adapter=");
                a.append(r2);
                a.append("]");
                return a.toString();
            }
        };
        final AnonymousClass19 r02 = new TypeAdapter<StringBuilder>() {
            public Object read(a aVar) {
                if (aVar.r() != b.NULL) {
                    return new StringBuilder(aVar.p());
                }
                aVar.o();
                return null;
            }

            public void write(c cVar, Object obj) {
                String str;
                StringBuilder sb = (StringBuilder) obj;
                if (sb == null) {
                    str = null;
                } else {
                    str = sb.toString();
                }
                cVar.c(str);
            }
        };
        E = r02;
        final Class<StringBuilder> cls18 = StringBuilder.class;
        F = new u() {
            public <T> TypeAdapter<T> a(Gson gson, e.c.c.x.a<T> aVar) {
                if (aVar.getRawType() == r1) {
                    return r2;
                }
                return null;
            }

            public String toString() {
                StringBuilder a = e.a.a.a.a.a("Factory[type=");
                a.append(r1.getName());
                a.append(",adapter=");
                a.append(r2);
                a.append("]");
                return a.toString();
            }
        };
        final AnonymousClass20 r03 = new TypeAdapter<StringBuffer>() {
            public Object read(a aVar) {
                if (aVar.r() != b.NULL) {
                    return new StringBuffer(aVar.p());
                }
                aVar.o();
                return null;
            }

            public void write(c cVar, Object obj) {
                String str;
                StringBuffer stringBuffer = (StringBuffer) obj;
                if (stringBuffer == null) {
                    str = null;
                } else {
                    str = stringBuffer.toString();
                }
                cVar.c(str);
            }
        };
        G = r03;
        final Class<StringBuffer> cls19 = StringBuffer.class;
        H = new u() {
            public <T> TypeAdapter<T> a(Gson gson, e.c.c.x.a<T> aVar) {
                if (aVar.getRawType() == r1) {
                    return r2;
                }
                return null;
            }

            public String toString() {
                StringBuilder a = e.a.a.a.a.a("Factory[type=");
                a.append(r1.getName());
                a.append(",adapter=");
                a.append(r2);
                a.append("]");
                return a.toString();
            }
        };
        final AnonymousClass21 r04 = new TypeAdapter<URL>() {
            public Object read(a aVar) {
                if (aVar.r() == b.NULL) {
                    aVar.o();
                    return null;
                }
                String p = aVar.p();
                if ("null".equals(p)) {
                    return null;
                }
                return new URL(p);
            }

            public void write(c cVar, Object obj) {
                String str;
                URL url = (URL) obj;
                if (url == null) {
                    str = null;
                } else {
                    str = url.toExternalForm();
                }
                cVar.c(str);
            }
        };
        I = r04;
        final Class<URL> cls20 = URL.class;
        J = new u() {
            public <T> TypeAdapter<T> a(Gson gson, e.c.c.x.a<T> aVar) {
                if (aVar.getRawType() == r1) {
                    return r2;
                }
                return null;
            }

            public String toString() {
                StringBuilder a = e.a.a.a.a.a("Factory[type=");
                a.append(r1.getName());
                a.append(",adapter=");
                a.append(r2);
                a.append("]");
                return a.toString();
            }
        };
        final AnonymousClass22 r05 = new TypeAdapter<URI>() {
            public Object read(a aVar) {
                if (aVar.r() == b.NULL) {
                    aVar.o();
                    return null;
                }
                try {
                    String p = aVar.p();
                    if ("null".equals(p)) {
                        return null;
                    }
                    return new URI(p);
                } catch (URISyntaxException e2) {
                    throw new k((Throwable) e2);
                }
            }

            public void write(c cVar, Object obj) {
                String str;
                URI uri = (URI) obj;
                if (uri == null) {
                    str = null;
                } else {
                    str = uri.toASCIIString();
                }
                cVar.c(str);
            }
        };
        K = r05;
        final Class<URI> cls21 = URI.class;
        L = new u() {
            public <T> TypeAdapter<T> a(Gson gson, e.c.c.x.a<T> aVar) {
                if (aVar.getRawType() == r1) {
                    return r2;
                }
                return null;
            }

            public String toString() {
                StringBuilder a = e.a.a.a.a.a("Factory[type=");
                a.append(r1.getName());
                a.append(",adapter=");
                a.append(r2);
                a.append("]");
                return a.toString();
            }
        };
        final AnonymousClass23 r06 = new TypeAdapter<InetAddress>() {
            public Object read(a aVar) {
                if (aVar.r() != b.NULL) {
                    return InetAddress.getByName(aVar.p());
                }
                aVar.o();
                return null;
            }

            public void write(c cVar, Object obj) {
                String str;
                InetAddress inetAddress = (InetAddress) obj;
                if (inetAddress == null) {
                    str = null;
                } else {
                    str = inetAddress.getHostAddress();
                }
                cVar.c(str);
            }
        };
        M = r06;
        final Class<InetAddress> cls22 = InetAddress.class;
        N = new u() {
            public <T2> TypeAdapter<T2> a(Gson gson, e.c.c.x.a<T2> aVar) {
                final Class<? super T2> rawType = aVar.getRawType();
                if (!r1.isAssignableFrom(rawType)) {
                    return null;
                }
                return new TypeAdapter<T1>() {
                    public T1 read(a aVar) {
                        T1 read = r0.read(aVar);
                        if (read == null || rawType.isInstance(read)) {
                            return read;
                        }
                        StringBuilder a2 = e.a.a.a.a.a("Expected a ");
                        a2.append(rawType.getName());
                        a2.append(" but was ");
                        a2.append(read.getClass().getName());
                        throw new s(a2.toString());
                    }

                    public void write(c cVar, T1 t1) {
                        r0.write(cVar, t1);
                    }
                };
            }

            public String toString() {
                StringBuilder a = e.a.a.a.a.a("Factory[typeHierarchy=");
                a.append(r1.getName());
                a.append(",adapter=");
                a.append(r0);
                a.append("]");
                return a.toString();
            }
        };
        final AnonymousClass24 r07 = new TypeAdapter<UUID>() {
            public Object read(a aVar) {
                if (aVar.r() != b.NULL) {
                    return UUID.fromString(aVar.p());
                }
                aVar.o();
                return null;
            }

            public void write(c cVar, Object obj) {
                String str;
                UUID uuid = (UUID) obj;
                if (uuid == null) {
                    str = null;
                } else {
                    str = uuid.toString();
                }
                cVar.c(str);
            }
        };
        O = r07;
        final Class<UUID> cls23 = UUID.class;
        P = new u() {
            public <T> TypeAdapter<T> a(Gson gson, e.c.c.x.a<T> aVar) {
                if (aVar.getRawType() == r1) {
                    return r2;
                }
                return null;
            }

            public String toString() {
                StringBuilder a = e.a.a.a.a.a("Factory[type=");
                a.append(r1.getName());
                a.append(",adapter=");
                a.append(r2);
                a.append("]");
                return a.toString();
            }
        };
        final TypeAdapter<Currency> nullSafe6 = new TypeAdapter<Currency>() {
            public Object read(a aVar) {
                return Currency.getInstance(aVar.p());
            }

            public void write(c cVar, Object obj) {
                cVar.c(((Currency) obj).getCurrencyCode());
            }
        }.nullSafe();
        Q = nullSafe6;
        final Class<Currency> cls24 = Currency.class;
        R = new u() {
            public <T> TypeAdapter<T> a(Gson gson, e.c.c.x.a<T> aVar) {
                if (aVar.getRawType() == r1) {
                    return r2;
                }
                return null;
            }

            public String toString() {
                StringBuilder a = e.a.a.a.a.a("Factory[type=");
                a.append(r1.getName());
                a.append(",adapter=");
                a.append(r2);
                a.append("]");
                return a.toString();
            }
        };
        final AnonymousClass27 r08 = new TypeAdapter<Calendar>() {
            public Object read(a aVar) {
                if (aVar.r() == b.NULL) {
                    aVar.o();
                    return null;
                }
                aVar.b();
                int i2 = 0;
                int i3 = 0;
                int i4 = 0;
                int i5 = 0;
                int i6 = 0;
                int i7 = 0;
                while (aVar.r() != b.END_OBJECT) {
                    String n = aVar.n();
                    int l2 = aVar.l();
                    if ("year".equals(n)) {
                        i2 = l2;
                    } else if ("month".equals(n)) {
                        i3 = l2;
                    } else if ("dayOfMonth".equals(n)) {
                        i4 = l2;
                    } else if ("hourOfDay".equals(n)) {
                        i5 = l2;
                    } else if ("minute".equals(n)) {
                        i6 = l2;
                    } else if ("second".equals(n)) {
                        i7 = l2;
                    }
                }
                aVar.f();
                return new GregorianCalendar(i2, i3, i4, i5, i6, i7);
            }

            public void write(c cVar, Object obj) {
                Calendar calendar = (Calendar) obj;
                if (calendar == null) {
                    cVar.g();
                    return;
                }
                cVar.c();
                cVar.a("year");
                cVar.a((long) calendar.get(1));
                cVar.a("month");
                cVar.a((long) calendar.get(2));
                cVar.a("dayOfMonth");
                cVar.a((long) calendar.get(5));
                cVar.a("hourOfDay");
                cVar.a((long) calendar.get(11));
                cVar.a("minute");
                cVar.a((long) calendar.get(12));
                cVar.a("second");
                cVar.a((long) calendar.get(13));
                cVar.e();
            }
        };
        T = r08;
        final Class<Calendar> cls25 = Calendar.class;
        final Class<GregorianCalendar> cls26 = GregorianCalendar.class;
        U = new u() {
            public <T> TypeAdapter<T> a(Gson gson, e.c.c.x.a<T> aVar) {
                Class<? super T> rawType = aVar.getRawType();
                if (rawType == cls25 || rawType == cls26) {
                    return r08;
                }
                return null;
            }

            public String toString() {
                StringBuilder a = e.a.a.a.a.a("Factory[type=");
                a.append(cls25.getName());
                a.append("+");
                a.append(cls26.getName());
                a.append(",adapter=");
                a.append(r08);
                a.append("]");
                return a.toString();
            }
        };
        final AnonymousClass28 r09 = new TypeAdapter<Locale>() {
            public Object read(a aVar) {
                String str = null;
                if (aVar.r() == b.NULL) {
                    aVar.o();
                    return null;
                }
                StringTokenizer stringTokenizer = new StringTokenizer(aVar.p(), AbstractAppCenterService.PREFERENCE_KEY_SEPARATOR);
                String nextToken = stringTokenizer.hasMoreElements() ? stringTokenizer.nextToken() : null;
                String nextToken2 = stringTokenizer.hasMoreElements() ? stringTokenizer.nextToken() : null;
                if (stringTokenizer.hasMoreElements()) {
                    str = stringTokenizer.nextToken();
                }
                if (nextToken2 == null && str == null) {
                    return new Locale(nextToken);
                }
                if (str == null) {
                    return new Locale(nextToken, nextToken2);
                }
                return new Locale(nextToken, nextToken2, str);
            }

            public void write(c cVar, Object obj) {
                String str;
                Locale locale = (Locale) obj;
                if (locale == null) {
                    str = null;
                } else {
                    str = locale.toString();
                }
                cVar.c(str);
            }
        };
        V = r09;
        final Class<Locale> cls27 = Locale.class;
        W = new u() {
            public <T> TypeAdapter<T> a(Gson gson, e.c.c.x.a<T> aVar) {
                if (aVar.getRawType() == r1) {
                    return r2;
                }
                return null;
            }

            public String toString() {
                StringBuilder a = e.a.a.a.a.a("Factory[type=");
                a.append(r1.getName());
                a.append(",adapter=");
                a.append(r2);
                a.append("]");
                return a.toString();
            }
        };
        final AnonymousClass29 r010 = new TypeAdapter<j>() {
            /* renamed from: a */
            public void write(c cVar, j jVar) {
                if (jVar == null || (jVar instanceof l)) {
                    cVar.g();
                } else if (jVar instanceof p) {
                    p d2 = jVar.d();
                    Object obj = d2.a;
                    if (obj instanceof Number) {
                        cVar.a(d2.h());
                    } else if (obj instanceof Boolean) {
                        cVar.a(d2.g());
                    } else {
                        cVar.c(d2.f());
                    }
                } else if (jVar instanceof g) {
                    cVar.b();
                    Iterator<j> it = jVar.b().iterator();
                    while (it.hasNext()) {
                        write(cVar, it.next());
                    }
                    cVar.d();
                } else if (jVar instanceof m) {
                    cVar.c();
                    for (Map.Entry next : jVar.c().g()) {
                        cVar.a((String) next.getKey());
                        write(cVar, (j) next.getValue());
                    }
                    cVar.e();
                } else {
                    StringBuilder a = e.a.a.a.a.a("Couldn't write ");
                    a.append(jVar.getClass());
                    throw new IllegalArgumentException(a.toString());
                }
            }

            public j read(a aVar) {
                int ordinal = aVar.r().ordinal();
                if (ordinal == 0) {
                    g gVar = new g();
                    aVar.a();
                    while (aVar.h()) {
                        Object read = read(aVar);
                        if (read == null) {
                            read = l.a;
                        }
                        gVar.x.add(read);
                    }
                    aVar.e();
                    return gVar;
                } else if (ordinal == 2) {
                    m mVar = new m();
                    aVar.b();
                    while (aVar.h()) {
                        mVar.a(aVar.n(), read(aVar));
                    }
                    aVar.f();
                    return mVar;
                } else if (ordinal == 5) {
                    return new p(aVar.p());
                } else {
                    if (ordinal == 6) {
                        return new p((Number) new q(aVar.p()));
                    }
                    if (ordinal == 7) {
                        return new p(Boolean.valueOf(aVar.j()));
                    }
                    if (ordinal == 8) {
                        aVar.o();
                        return l.a;
                    }
                    throw new IllegalArgumentException();
                }
            }
        };
        X = r010;
        final Class<j> cls28 = j.class;
        Y = new u() {
            public <T2> TypeAdapter<T2> a(Gson gson, e.c.c.x.a<T2> aVar) {
                final Class<? super T2> rawType = aVar.getRawType();
                if (!cls28.isAssignableFrom(rawType)) {
                    return null;
                }
                return new TypeAdapter<T1>() {
                    public T1 read(a aVar) {
                        T1 read = r010.read(aVar);
                        if (read == null || rawType.isInstance(read)) {
                            return read;
                        }
                        StringBuilder a2 = e.a.a.a.a.a("Expected a ");
                        a2.append(rawType.getName());
                        a2.append(" but was ");
                        a2.append(read.getClass().getName());
                        throw new s(a2.toString());
                    }

                    public void write(c cVar, T1 t1) {
                        r010.write(cVar, t1);
                    }
                };
            }

            public String toString() {
                StringBuilder a = e.a.a.a.a.a("Factory[typeHierarchy=");
                a.append(cls28.getName());
                a.append(",adapter=");
                a.append(r010);
                a.append("]");
                return a.toString();
            }
        };
    }

    public static <TT> u a(final e.c.c.x.a<TT> aVar, final TypeAdapter<TT> typeAdapter) {
        return new u() {
            public <T> TypeAdapter<T> a(Gson gson, e.c.c.x.a<T> aVar) {
                if (aVar.equals(aVar)) {
                    return typeAdapter;
                }
                return null;
            }
        };
    }

    public static <TT> u a(final Class<TT> cls, final TypeAdapter<TT> typeAdapter) {
        return new u() {
            public <T> TypeAdapter<T> a(Gson gson, e.c.c.x.a<T> aVar) {
                if (aVar.getRawType() == cls) {
                    return typeAdapter;
                }
                return null;
            }

            public String toString() {
                StringBuilder a = e.a.a.a.a.a("Factory[type=");
                a.append(cls.getName());
                a.append(",adapter=");
                a.append(typeAdapter);
                a.append("]");
                return a.toString();
            }
        };
    }
}
