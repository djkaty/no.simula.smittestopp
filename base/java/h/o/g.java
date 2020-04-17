package h.o;

import com.microsoft.azure.storage.Constants;
import com.microsoft.azure.storage.file.FileRequest;
import h.l.a;
import h.l.c;
import h.n.b;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;

public class g extends f {
    public static final int a(CharSequence charSequence) {
        if (charSequence != null) {
            return charSequence.length() - 1;
        }
        h.k.b.g.a("$this$lastIndex");
        throw null;
    }

    public static final boolean b(CharSequence charSequence) {
        boolean z;
        boolean z2;
        if (charSequence != null) {
            if (charSequence.length() != 0) {
                c cVar = new c(0, charSequence.length() - 1);
                if (!(cVar instanceof Collection) || !((Collection) cVar).isEmpty()) {
                    Iterator it = cVar.iterator();
                    while (true) {
                        if (!it.hasNext()) {
                            break;
                        }
                        char charAt = charSequence.charAt(((h.i.g) it).a());
                        if (Character.isWhitespace(charAt) || Character.isSpaceChar(charAt)) {
                            z2 = true;
                            continue;
                        } else {
                            z2 = false;
                            continue;
                        }
                        if (!z2) {
                            z = false;
                            break;
                        }
                    }
                }
                z = true;
                if (z) {
                    return true;
                }
                return false;
            }
            return true;
        }
        h.k.b.g.a("$this$isBlank");
        throw null;
    }

    public static /* synthetic */ boolean a(String str, String str2, boolean z, int i2) {
        boolean z2 = (i2 & 2) != 0 ? false : z;
        if (str == null) {
            h.k.b.g.a("$this$startsWith");
            throw null;
        } else if (str2 == null) {
            h.k.b.g.a(Constants.QueryConstants.PREFIX);
            throw null;
        } else if (!z2) {
            return str.startsWith(str2);
        } else {
            return a(str, 0, str2, 0, str2.length(), z2);
        }
    }

    public static final boolean a(String str, int i2, String str2, int i3, int i4, boolean z) {
        if (str == null) {
            h.k.b.g.a("$this$regionMatches");
            throw null;
        } else if (str2 == null) {
            h.k.b.g.a("other");
            throw null;
        } else if (!z) {
            return str.regionMatches(i2, str2, i3, i4);
        } else {
            return str.regionMatches(z, i2, str2, i3, i4);
        }
    }

    public static final boolean a(CharSequence charSequence, int i2, CharSequence charSequence2, int i3, int i4, boolean z) {
        if (charSequence == null) {
            h.k.b.g.a("$this$regionMatchesImpl");
            throw null;
        } else if (charSequence2 == null) {
            h.k.b.g.a("other");
            throw null;
        } else if (i3 < 0 || i2 < 0 || i2 > charSequence.length() - i4 || i3 > charSequence2.length() - i4) {
            return false;
        } else {
            for (int i5 = 0; i5 < i4; i5++) {
                if (!e.c.a.a.b.l.c.a(charSequence.charAt(i2 + i5), charSequence2.charAt(i3 + i5), z)) {
                    return false;
                }
            }
            return true;
        }
    }

    public static /* synthetic */ int a(CharSequence charSequence, CharSequence charSequence2, int i2, int i3, boolean z, boolean z2, int i4) {
        return a(charSequence, charSequence2, i2, i3, z, (i4 & 16) != 0 ? false : z2);
    }

    public static final int a(CharSequence charSequence, CharSequence charSequence2, int i2, int i3, boolean z, boolean z2) {
        a aVar;
        if (!z2) {
            if (i2 < 0) {
                i2 = 0;
            }
            int length = charSequence.length();
            if (i3 > length) {
                i3 = length;
            }
            aVar = new c(i2, i3);
        } else {
            int a = a(charSequence);
            if (i2 > a) {
                i2 = a;
            }
            if (i3 < 0) {
                i3 = 0;
            }
            aVar = new a(i2, i3, -1);
        }
        if (!(charSequence instanceof String) || !(charSequence2 instanceof String)) {
            int i4 = aVar.x;
            int i5 = aVar.y;
            int i6 = aVar.z;
            if (i6 < 0 ? i4 >= i5 : i4 <= i5) {
                while (true) {
                    if (!a(charSequence2, 0, charSequence, i4, charSequence2.length(), z)) {
                        if (i4 == i5) {
                            break;
                        }
                        i4 += i6;
                    } else {
                        return i4;
                    }
                }
            }
        } else {
            int i7 = aVar.x;
            int i8 = aVar.y;
            int i9 = aVar.z;
            if (i9 < 0 ? i7 >= i8 : i7 <= i8) {
                while (true) {
                    if (!a((String) charSequence2, 0, (String) charSequence, i7, charSequence2.length(), z)) {
                        if (i7 == i8) {
                            break;
                        }
                        i7 += i9;
                    } else {
                        return i7;
                    }
                }
            }
        }
        return -1;
    }

    public static final int a(CharSequence charSequence, String str, int i2, boolean z) {
        if (charSequence == null) {
            h.k.b.g.a("$this$indexOf");
            throw null;
        } else if (str == null) {
            h.k.b.g.a("string");
            throw null;
        } else if (!z && (charSequence instanceof String)) {
            return ((String) charSequence).indexOf(str, i2);
        } else {
            return a(charSequence, str, i2, charSequence.length(), z, false, 16);
        }
    }

    public static /* synthetic */ String a(String str, char c2, String str2, int i2) {
        if ((i2 & 2) != 0) {
            str2 = str;
        }
        if (str == null) {
            h.k.b.g.a("$this$substringAfterLast");
            throw null;
        } else if (str2 != null) {
            int lastIndexOf = str.lastIndexOf(c2, a(str));
            if (lastIndexOf == -1) {
                return str2;
            }
            String substring = str.substring(lastIndexOf + 1, str.length());
            h.k.b.g.a((Object) substring, "(this as java.lang.Strin…ing(startIndex, endIndex)");
            return substring;
        } else {
            h.k.b.g.a("missingDelimiterValue");
            throw null;
        }
    }

    /* JADX WARNING: Removed duplicated region for block: B:13:0x002b A[ORIG_RETURN, RETURN, SYNTHETIC] */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public static /* synthetic */ boolean a(java.lang.CharSequence r8, java.lang.CharSequence r9, boolean r10, int r11) {
        /*
            r11 = r11 & 2
            r0 = 0
            if (r11 == 0) goto L_0x0007
            r5 = 0
            goto L_0x0008
        L_0x0007:
            r5 = r10
        L_0x0008:
            r10 = 0
            if (r8 == 0) goto L_0x0033
            if (r9 == 0) goto L_0x002d
            boolean r10 = r9 instanceof java.lang.String
            r11 = 1
            if (r10 == 0) goto L_0x001b
            java.lang.String r9 = (java.lang.String) r9
            int r8 = a((java.lang.CharSequence) r8, (java.lang.String) r9, (int) r0, (boolean) r5)
            if (r8 < 0) goto L_0x002c
            goto L_0x002b
        L_0x001b:
            r3 = 0
            int r4 = r8.length()
            r6 = 0
            r7 = 16
            r1 = r8
            r2 = r9
            int r8 = a(r1, r2, r3, r4, r5, r6, r7)
            if (r8 < 0) goto L_0x002c
        L_0x002b:
            r0 = 1
        L_0x002c:
            return r0
        L_0x002d:
            java.lang.String r8 = "other"
            h.k.b.g.a((java.lang.String) r8)
            throw r10
        L_0x0033:
            java.lang.String r8 = "$this$contains"
            h.k.b.g.a((java.lang.String) r8)
            throw r10
        */
        throw new UnsupportedOperationException("Method not decompiled: h.o.g.a(java.lang.CharSequence, java.lang.CharSequence, boolean, int):boolean");
    }

    public static /* synthetic */ List a(CharSequence charSequence, String[] strArr, boolean z, int i2, int i3) {
        int i4 = 0;
        if ((i3 & 2) != 0) {
            z = false;
        }
        if ((i3 & 4) != 0) {
            i2 = 0;
        }
        if (charSequence == null) {
            h.k.b.g.a("$this$split");
            throw null;
        } else if (strArr != null) {
            int i5 = 10;
            boolean z2 = true;
            if (strArr.length == 1) {
                String str = strArr[0];
                if (!(str.length() == 0)) {
                    if (i2 >= 0) {
                        int a = a(charSequence, str, 0, z);
                        if (a == -1 || i2 == 1) {
                            List singletonList = Collections.singletonList(charSequence.toString());
                            h.k.b.g.a((Object) singletonList, "java.util.Collections.singletonList(element)");
                            return singletonList;
                        }
                        if (i2 <= 0) {
                            z2 = false;
                        }
                        if (z2 && i2 <= 10) {
                            i5 = i2;
                        }
                        ArrayList arrayList = new ArrayList(i5);
                        do {
                            arrayList.add(charSequence.subSequence(i4, a).toString());
                            i4 = str.length() + a;
                            if ((z2 && arrayList.size() == i2 - 1) || (a = a(charSequence, str, i4, z)) == -1) {
                                arrayList.add(charSequence.subSequence(i4, charSequence.length()).toString());
                            }
                            arrayList.add(charSequence.subSequence(i4, a).toString());
                            i4 = str.length() + a;
                            break;
                        } while ((a = a(charSequence, str, i4, z)) == -1);
                        arrayList.add(charSequence.subSequence(i4, charSequence.length()).toString());
                        return arrayList;
                    }
                    throw new IllegalArgumentException(("Limit must be non-negative, but was " + i2 + '.').toString());
                }
            }
            if (i2 >= 0) {
                List asList = Arrays.asList(strArr);
                h.k.b.g.a((Object) asList, "ArraysUtilJVM.asList(this)");
                b bVar = new b(new b(charSequence, 0, i2, new h(asList, z)));
                ArrayList arrayList2 = new ArrayList(e.c.a.a.b.l.c.a(bVar, 10));
                Iterator it = bVar.iterator();
                while (it.hasNext()) {
                    c cVar = (c) it.next();
                    if (cVar != null) {
                        arrayList2.add(charSequence.subSequence(Integer.valueOf(cVar.x).intValue(), Integer.valueOf(cVar.y).intValue() + 1).toString());
                    } else {
                        h.k.b.g.a(FileRequest.RANGE_QUERY_ELEMENT_NAME);
                        throw null;
                    }
                }
                return arrayList2;
            }
            throw new IllegalArgumentException(("Limit must be non-negative, but was " + i2 + '.').toString());
        } else {
            h.k.b.g.a("delimiters");
            throw null;
        }
    }
}
