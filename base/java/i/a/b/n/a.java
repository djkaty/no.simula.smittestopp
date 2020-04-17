package i.a.b.n;

import java.util.ArrayList;
import java.util.List;

public class a<T> extends f<T> {
    public static f<int[]> b = new h((e) null);

    /* renamed from: c  reason: collision with root package name */
    public static f<Integer[]> f1435c = new i((e) null);

    /* renamed from: d  reason: collision with root package name */
    public static f<byte[]> f1436d = new l((e) null);

    /* renamed from: e  reason: collision with root package name */
    public static f<Byte[]> f1437e = new m((e) null);

    /* renamed from: f  reason: collision with root package name */
    public static f<char[]> f1438f = new n((e) null);

    /* renamed from: g  reason: collision with root package name */
    public static f<Character[]> f1439g = new o((e) null);

    /* renamed from: h  reason: collision with root package name */
    public static f<long[]> f1440h = new p((e) null);

    /* renamed from: i  reason: collision with root package name */
    public static f<Long[]> f1441i = new C0086a((e) null);

    /* renamed from: j  reason: collision with root package name */
    public static f<float[]> f1442j = new b((e) null);

    /* renamed from: k  reason: collision with root package name */
    public static f<Float[]> f1443k = new c((e) null);

    /* renamed from: l  reason: collision with root package name */
    public static f<double[]> f1444l = new d((e) null);
    public static f<Double[]> m = new e((e) null);
    public static f<boolean[]> n = new f((e) null);
    public static f<Boolean[]> o = new g((e) null);

    /* renamed from: i.a.b.n.a$a  reason: collision with other inner class name */
    public class C0086a extends a<Long[]> {
        public C0086a(e eVar) {
            super(eVar);
        }

        public Object a(Object obj) {
            List list = (List) obj;
            Long[] lArr = new Long[list.size()];
            int i2 = 0;
            for (Object next : list) {
                if (next != null) {
                    if (next instanceof Float) {
                        lArr[i2] = (Long) next;
                    } else {
                        lArr[i2] = Long.valueOf(((Number) next).longValue());
                    }
                    i2++;
                }
            }
            return lArr;
        }
    }

    public class b extends a<float[]> {
        public b(e eVar) {
            super(eVar);
        }

        public Object a(Object obj) {
            List<Number> list = (List) obj;
            float[] fArr = new float[list.size()];
            int i2 = 0;
            for (Number floatValue : list) {
                fArr[i2] = floatValue.floatValue();
                i2++;
            }
            return fArr;
        }
    }

    public class c extends a<Float[]> {
        public c(e eVar) {
            super(eVar);
        }

        public Object a(Object obj) {
            List list = (List) obj;
            Float[] fArr = new Float[list.size()];
            int i2 = 0;
            for (Object next : list) {
                if (next != null) {
                    if (next instanceof Float) {
                        fArr[i2] = (Float) next;
                    } else {
                        fArr[i2] = Float.valueOf(((Number) next).floatValue());
                    }
                    i2++;
                }
            }
            return fArr;
        }
    }

    public class d extends a<double[]> {
        public d(e eVar) {
            super(eVar);
        }

        public Object a(Object obj) {
            List<Number> list = (List) obj;
            double[] dArr = new double[list.size()];
            int i2 = 0;
            for (Number doubleValue : list) {
                dArr[i2] = doubleValue.doubleValue();
                i2++;
            }
            return dArr;
        }
    }

    public class e extends a<Double[]> {
        public e(e eVar) {
            super(eVar);
        }

        public Object a(Object obj) {
            List list = (List) obj;
            Double[] dArr = new Double[list.size()];
            int i2 = 0;
            for (Object next : list) {
                if (next != null) {
                    if (next instanceof Double) {
                        dArr[i2] = (Double) next;
                    } else {
                        dArr[i2] = Double.valueOf(((Number) next).doubleValue());
                    }
                    i2++;
                }
            }
            return dArr;
        }
    }

    public class f extends a<boolean[]> {
        public f(e eVar) {
            super(eVar);
        }

        public Object a(Object obj) {
            List<Boolean> list = (List) obj;
            boolean[] zArr = new boolean[list.size()];
            int i2 = 0;
            for (Boolean booleanValue : list) {
                zArr[i2] = booleanValue.booleanValue();
                i2++;
            }
            return zArr;
        }
    }

    public class g extends a<Boolean[]> {
        public g(e eVar) {
            super(eVar);
        }

        public Object a(Object obj) {
            List list = (List) obj;
            Boolean[] boolArr = new Boolean[list.size()];
            int i2 = 0;
            for (Object next : list) {
                if (next != null) {
                    if (next instanceof Boolean) {
                        boolArr[i2] = Boolean.valueOf(((Boolean) next).booleanValue());
                    } else if (next instanceof Number) {
                        boolArr[i2] = Boolean.valueOf(((Number) next).intValue() != 0);
                    } else {
                        throw new RuntimeException("can not convert " + next + " toBoolean");
                    }
                    i2++;
                }
            }
            return boolArr;
        }
    }

    public class h extends a<int[]> {
        public h(e eVar) {
            super(eVar);
        }

        public Object a(Object obj) {
            List<Number> list = (List) obj;
            int[] iArr = new int[list.size()];
            int i2 = 0;
            for (Number intValue : list) {
                iArr[i2] = intValue.intValue();
                i2++;
            }
            return iArr;
        }
    }

    public class i extends a<Integer[]> {
        public i(e eVar) {
            super(eVar);
        }

        public Object a(Object obj) {
            List list = (List) obj;
            Integer[] numArr = new Integer[list.size()];
            int i2 = 0;
            for (Object next : list) {
                if (next != null) {
                    if (next instanceof Integer) {
                        numArr[i2] = (Integer) next;
                    } else {
                        numArr[i2] = Integer.valueOf(((Number) next).intValue());
                    }
                    i2++;
                }
            }
            return numArr;
        }
    }

    public class j extends a<short[]> {
        public j(e eVar) {
            super(eVar);
        }

        public Object a(Object obj) {
            List<Number> list = (List) obj;
            short[] sArr = new short[list.size()];
            int i2 = 0;
            for (Number shortValue : list) {
                sArr[i2] = shortValue.shortValue();
                i2++;
            }
            return sArr;
        }
    }

    public class k extends a<Short[]> {
        public k(e eVar) {
            super(eVar);
        }

        public Object a(Object obj) {
            List list = (List) obj;
            Short[] shArr = new Short[list.size()];
            int i2 = 0;
            for (Object next : list) {
                if (next != null) {
                    if (next instanceof Short) {
                        shArr[i2] = (Short) next;
                    } else {
                        shArr[i2] = Short.valueOf(((Number) next).shortValue());
                    }
                    i2++;
                }
            }
            return shArr;
        }
    }

    public class l extends a<byte[]> {
        public l(e eVar) {
            super(eVar);
        }

        public Object a(Object obj) {
            List<Number> list = (List) obj;
            byte[] bArr = new byte[list.size()];
            int i2 = 0;
            for (Number byteValue : list) {
                bArr[i2] = byteValue.byteValue();
                i2++;
            }
            return bArr;
        }
    }

    public class m extends a<Byte[]> {
        public m(e eVar) {
            super(eVar);
        }

        public Object a(Object obj) {
            List list = (List) obj;
            Byte[] bArr = new Byte[list.size()];
            int i2 = 0;
            for (Object next : list) {
                if (next != null) {
                    if (next instanceof Byte) {
                        bArr[i2] = (Byte) next;
                    } else {
                        bArr[i2] = Byte.valueOf(((Number) next).byteValue());
                    }
                    i2++;
                }
            }
            return bArr;
        }
    }

    public class n extends a<char[]> {
        public n(e eVar) {
            super(eVar);
        }

        public Object a(Object obj) {
            List<Object> list = (List) obj;
            char[] cArr = new char[list.size()];
            int i2 = 0;
            for (Object obj2 : list) {
                cArr[i2] = obj2.toString().charAt(0);
                i2++;
            }
            return cArr;
        }
    }

    public class o extends a<Character[]> {
        public o(e eVar) {
            super(eVar);
        }

        public Object a(Object obj) {
            List list = (List) obj;
            Character[] chArr = new Character[list.size()];
            int i2 = 0;
            for (Object next : list) {
                if (next != null) {
                    chArr[i2] = Character.valueOf(next.toString().charAt(0));
                    i2++;
                }
            }
            return chArr;
        }
    }

    public class p extends a<long[]> {
        public p(e eVar) {
            super(eVar);
        }

        public Object a(Object obj) {
            List<Number> list = (List) obj;
            long[] jArr = new long[list.size()];
            int i2 = 0;
            for (Number intValue : list) {
                jArr[i2] = (long) intValue.intValue();
                i2++;
            }
            return jArr;
        }
    }

    static {
        new j((e) null);
        new k((e) null);
    }

    public a(e eVar) {
        super(eVar);
    }

    public Object a() {
        return new ArrayList();
    }

    public void a(Object obj, Object obj2) {
        ((List) obj).add(obj2);
    }
}
