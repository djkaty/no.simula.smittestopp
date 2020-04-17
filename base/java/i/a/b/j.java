package i.a.b;

import java.io.IOException;

public class j {
    public static final d a = new d((d) null);
    public static final e b = new e((e) null);

    /* renamed from: c  reason: collision with root package name */
    public static final c f1412c = new c((c) null);

    /* renamed from: d  reason: collision with root package name */
    public static final b f1413d = new b((b) null);

    /* renamed from: e  reason: collision with root package name */
    public static final a f1414e = new a((a) null);

    public static class a implements g {
        public /* synthetic */ a(a aVar) {
        }

        public void a(String str, Appendable appendable) {
            try {
                int length = str.length();
                for (int i2 = 0; i2 < length; i2++) {
                    char charAt = str.charAt(i2);
                    if (charAt == 12) {
                        appendable.append("\\f");
                    } else if (charAt == 13) {
                        appendable.append("\\r");
                    } else if (charAt == '\"') {
                        appendable.append("\\\"");
                    } else if (charAt == '/') {
                        appendable.append("\\/");
                    } else if (charAt != '\\') {
                        switch (charAt) {
                            case 8:
                                appendable.append("\\b");
                                break;
                            case 9:
                                appendable.append("\\t");
                                break;
                            case 10:
                                appendable.append("\\n");
                                break;
                            default:
                                if ((charAt >= 0 && charAt <= 31) || ((charAt >= 127 && charAt <= 159) || (charAt >= 8192 && charAt <= 8447))) {
                                    appendable.append("\\u");
                                    appendable.append("0123456789ABCDEF".charAt((charAt >> 12) & 15));
                                    appendable.append("0123456789ABCDEF".charAt((charAt >> 8) & 15));
                                    appendable.append("0123456789ABCDEF".charAt((charAt >> 4) & 15));
                                    appendable.append("0123456789ABCDEF".charAt((charAt >> 0) & 15));
                                    break;
                                } else {
                                    appendable.append(charAt);
                                    break;
                                }
                        }
                    } else {
                        appendable.append("\\\\");
                    }
                }
            } catch (IOException unused) {
                throw new RuntimeException("Impossible Error");
            }
        }
    }

    public static class b implements g {
        public /* synthetic */ b(b bVar) {
        }

        public void a(String str, Appendable appendable) {
            try {
                int length = str.length();
                for (int i2 = 0; i2 < length; i2++) {
                    char charAt = str.charAt(i2);
                    if (charAt == 12) {
                        appendable.append("\\f");
                    } else if (charAt == 13) {
                        appendable.append("\\r");
                    } else if (charAt == '\"') {
                        appendable.append("\\\"");
                    } else if (charAt != '\\') {
                        switch (charAt) {
                            case 8:
                                appendable.append("\\b");
                                break;
                            case 9:
                                appendable.append("\\t");
                                break;
                            case 10:
                                appendable.append("\\n");
                                break;
                            default:
                                if ((charAt >= 0 && charAt <= 31) || ((charAt >= 127 && charAt <= 159) || (charAt >= 8192 && charAt <= 8447))) {
                                    appendable.append("\\u");
                                    appendable.append("0123456789ABCDEF".charAt((charAt >> 12) & 15));
                                    appendable.append("0123456789ABCDEF".charAt((charAt >> 8) & 15));
                                    appendable.append("0123456789ABCDEF".charAt((charAt >> 4) & 15));
                                    appendable.append("0123456789ABCDEF".charAt((charAt >> 0) & 15));
                                    break;
                                } else {
                                    appendable.append(charAt);
                                    break;
                                }
                        }
                    } else {
                        appendable.append("\\\\");
                    }
                }
            } catch (IOException unused) {
                throw new RuntimeException("Impossible Exeption");
            }
        }
    }

    public static class c implements f {
        public /* synthetic */ c(c cVar) {
        }

        /* JADX WARNING: Code restructure failed: missing block: B:31:0x0054, code lost:
            if (r3 == '.') goto L_0x0056;
         */
        /* JADX WARNING: Code restructure failed: missing block: B:32:0x0056, code lost:
            r7 = r7 + 1;
         */
        /* JADX WARNING: Code restructure failed: missing block: B:33:0x0058, code lost:
            if (r7 < r1) goto L_0x005b;
         */
        /* JADX WARNING: Code restructure failed: missing block: B:34:0x005b, code lost:
            r3 = r10.charAt(r7);
         */
        /* JADX WARNING: Code restructure failed: missing block: B:35:0x005f, code lost:
            if (r3 < '0') goto L_0x0063;
         */
        /* JADX WARNING: Code restructure failed: missing block: B:36:0x0061, code lost:
            if (r3 <= '9') goto L_0x0056;
         */
        /* JADX WARNING: Code restructure failed: missing block: B:37:0x0063, code lost:
            if (r7 != r1) goto L_0x0066;
         */
        /* JADX WARNING: Code restructure failed: missing block: B:38:0x0065, code lost:
            return true;
         */
        /* JADX WARNING: Code restructure failed: missing block: B:40:0x0068, code lost:
            if (r3 == 'E') goto L_0x006e;
         */
        /* JADX WARNING: Code restructure failed: missing block: B:42:0x006c, code lost:
            if (r3 != 'e') goto L_0x0082;
         */
        /* JADX WARNING: Code restructure failed: missing block: B:43:0x006e, code lost:
            r7 = r7 + 1;
         */
        /* JADX WARNING: Code restructure failed: missing block: B:44:0x0070, code lost:
            if (r7 != r1) goto L_0x0073;
         */
        /* JADX WARNING: Code restructure failed: missing block: B:45:0x0072, code lost:
            return false;
         */
        /* JADX WARNING: Code restructure failed: missing block: B:46:0x0073, code lost:
            r3 = r10.charAt(r7);
         */
        /* JADX WARNING: Code restructure failed: missing block: B:47:0x0079, code lost:
            if (r3 == '+') goto L_0x007d;
         */
        /* JADX WARNING: Code restructure failed: missing block: B:48:0x007b, code lost:
            if (r3 != '-') goto L_0x0082;
         */
        /* JADX WARNING: Code restructure failed: missing block: B:49:0x007d, code lost:
            r7 = r7 + 1;
            r10.charAt(r7);
         */
        /* JADX WARNING: Code restructure failed: missing block: B:50:0x0082, code lost:
            if (r7 != r1) goto L_0x0085;
         */
        /* JADX WARNING: Code restructure failed: missing block: B:51:0x0084, code lost:
            return false;
         */
        /* JADX WARNING: Code restructure failed: missing block: B:52:0x0085, code lost:
            if (r7 < r1) goto L_0x0088;
         */
        /* JADX WARNING: Code restructure failed: missing block: B:53:0x0088, code lost:
            r3 = r10.charAt(r7);
         */
        /* JADX WARNING: Code restructure failed: missing block: B:54:0x008c, code lost:
            if (r3 < '0') goto L_0x0094;
         */
        /* JADX WARNING: Code restructure failed: missing block: B:55:0x008e, code lost:
            if (r3 <= '9') goto L_0x0091;
         */
        /* JADX WARNING: Code restructure failed: missing block: B:56:0x0091, code lost:
            r7 = r7 + 1;
         */
        /* JADX WARNING: Code restructure failed: missing block: B:57:0x0094, code lost:
            if (r7 != r1) goto L_0x0097;
         */
        /* JADX WARNING: Code restructure failed: missing block: B:58:0x0096, code lost:
            return true;
         */
        /* Code decompiled incorrectly, please refer to instructions dump. */
        public boolean a(java.lang.String r10) {
            /*
                r9 = this;
                r0 = 0
                if (r10 != 0) goto L_0x0004
                return r0
            L_0x0004:
                int r1 = r10.length()
                r2 = 1
                if (r1 != 0) goto L_0x000c
                return r2
            L_0x000c:
                java.lang.String r3 = r10.trim()
                if (r3 == r10) goto L_0x0013
                return r2
            L_0x0013:
                char r3 = r10.charAt(r0)
                boolean r4 = i.a.b.j.a((char) r3)
                if (r4 != 0) goto L_0x00bc
                boolean r3 = i.a.b.j.b(r3)
                if (r3 == 0) goto L_0x0025
                goto L_0x00bc
            L_0x0025:
                r3 = 1
            L_0x0026:
                if (r3 < r1) goto L_0x0098
                boolean r3 = i.a.b.j.a((java.lang.String) r10)
                if (r3 == 0) goto L_0x002f
                return r2
            L_0x002f:
                char r3 = r10.charAt(r0)
                r4 = 45
                r5 = 57
                r6 = 48
                if (r3 < r6) goto L_0x003d
                if (r3 <= r5) goto L_0x003f
            L_0x003d:
                if (r3 != r4) goto L_0x0097
            L_0x003f:
                r7 = 1
            L_0x0040:
                if (r7 < r1) goto L_0x0043
                goto L_0x004f
            L_0x0043:
                char r3 = r10.charAt(r7)
                if (r3 < r6) goto L_0x004f
                if (r3 <= r5) goto L_0x004c
                goto L_0x004f
            L_0x004c:
                int r7 = r7 + 1
                goto L_0x0040
            L_0x004f:
                if (r7 != r1) goto L_0x0052
                return r2
            L_0x0052:
                r8 = 46
                if (r3 != r8) goto L_0x0058
            L_0x0056:
                int r7 = r7 + 1
            L_0x0058:
                if (r7 < r1) goto L_0x005b
                goto L_0x0063
            L_0x005b:
                char r3 = r10.charAt(r7)
                if (r3 < r6) goto L_0x0063
                if (r3 <= r5) goto L_0x0056
            L_0x0063:
                if (r7 != r1) goto L_0x0066
                return r2
            L_0x0066:
                r8 = 69
                if (r3 == r8) goto L_0x006e
                r8 = 101(0x65, float:1.42E-43)
                if (r3 != r8) goto L_0x0082
            L_0x006e:
                int r7 = r7 + 1
                if (r7 != r1) goto L_0x0073
                return r0
            L_0x0073:
                char r3 = r10.charAt(r7)
                r8 = 43
                if (r3 == r8) goto L_0x007d
                if (r3 != r4) goto L_0x0082
            L_0x007d:
                int r7 = r7 + 1
                r10.charAt(r7)
            L_0x0082:
                if (r7 != r1) goto L_0x0085
                return r0
            L_0x0085:
                if (r7 < r1) goto L_0x0088
                goto L_0x0094
            L_0x0088:
                char r3 = r10.charAt(r7)
                if (r3 < r6) goto L_0x0094
                if (r3 <= r5) goto L_0x0091
                goto L_0x0094
            L_0x0091:
                int r7 = r7 + 1
                goto L_0x0085
            L_0x0094:
                if (r7 != r1) goto L_0x0097
                return r2
            L_0x0097:
                return r0
            L_0x0098:
                char r4 = r10.charAt(r3)
                r5 = 125(0x7d, float:1.75E-43)
                if (r4 == r5) goto L_0x00ae
                r5 = 93
                if (r4 == r5) goto L_0x00ae
                r5 = 44
                if (r4 == r5) goto L_0x00ae
                r5 = 58
                if (r4 == r5) goto L_0x00ae
                r5 = 0
                goto L_0x00af
            L_0x00ae:
                r5 = 1
            L_0x00af:
                if (r5 != 0) goto L_0x00bc
                boolean r4 = i.a.b.j.b(r4)
                if (r4 == 0) goto L_0x00b8
                goto L_0x00bc
            L_0x00b8:
                int r3 = r3 + 1
                goto L_0x0026
            L_0x00bc:
                return r2
            */
            throw new UnsupportedOperationException("Method not decompiled: i.a.b.j.c.a(java.lang.String):boolean");
        }
    }

    public static class d implements f {
        public /* synthetic */ d(d dVar) {
        }

        public boolean a(String str) {
            if (str == null) {
                return false;
            }
            int length = str.length();
            if (length == 0 || str.trim() != str) {
                return true;
            }
            char charAt = str.charAt(0);
            if ((charAt >= '0' && charAt <= '9') || charAt == '-') {
                return true;
            }
            for (int i2 = 0; i2 < length; i2++) {
                char charAt2 = str.charAt(i2);
                if ((charAt2 == 13 || charAt2 == 10 || charAt2 == 9 || charAt2 == ' ') || j.a(charAt2)) {
                    return true;
                }
                if ((charAt2 == 8 || charAt2 == 12 || charAt2 == 10) || j.b(charAt2)) {
                    return true;
                }
            }
            return j.a(str);
        }
    }

    public static class e implements f {
        public /* synthetic */ e(e eVar) {
        }

        public boolean a(String str) {
            return true;
        }
    }

    public interface f {
        boolean a(String str);
    }

    public interface g {
        void a(String str, Appendable appendable);
    }

    public static boolean a(char c2) {
        return c2 == '{' || c2 == '[' || c2 == ',' || c2 == '}' || c2 == ']' || c2 == ':' || c2 == '\'' || c2 == '\"';
    }

    public static boolean a(String str) {
        if (str.length() < 3) {
            return false;
        }
        char charAt = str.charAt(0);
        if (charAt == 'n') {
            return str.equals("null");
        }
        if (charAt == 't') {
            return str.equals("true");
        }
        if (charAt == 'f') {
            return str.equals("false");
        }
        if (charAt == 'N') {
            return str.equals("NaN");
        }
        return false;
    }

    public static boolean b(char c2) {
        if (c2 >= 0 && c2 <= 31) {
            return true;
        }
        if (c2 < 127 || c2 > 159) {
            return c2 >= 8192 && c2 <= 8447;
        }
        return true;
    }
}
