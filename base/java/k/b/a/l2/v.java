package k.b.a.l2;

import com.microsoft.identity.common.internal.cache.CacheKeyValueDelegate;
import e.a.a.a.a;
import java.text.ParseException;
import java.util.TimeZone;
import k.b.a.d;
import k.b.a.d0;
import k.b.a.j;
import k.b.a.n;
import k.b.a.t;
import k.b.j.f;

public class v extends n implements d {
    public t x;

    public v(t tVar) {
        if ((tVar instanceof d0) || (tVar instanceof j)) {
            this.x = tVar;
            return;
        }
        throw new IllegalArgumentException("unknown object passed to Time");
    }

    public static v a(Object obj) {
        if (obj == null || (obj instanceof v)) {
            return (v) obj;
        }
        if (obj instanceof d0) {
            return new v((d0) obj);
        }
        if (obj instanceof j) {
            return new v((j) obj);
        }
        throw new IllegalArgumentException(a.a(obj, a.a("unknown object in factory: ")));
    }

    public t c() {
        return this.x;
    }

    public String toString() {
        StringBuilder sb;
        String str;
        String str2;
        StringBuilder sb2;
        String str3;
        StringBuilder sb3;
        t tVar = this.x;
        String str4 = "GMT+00:00";
        if (tVar instanceof d0) {
            String a = f.a(((d0) tVar).x);
            if (a.indexOf(45) >= 0 || a.indexOf(43) >= 0) {
                int indexOf = a.indexOf(45);
                if (indexOf < 0) {
                    indexOf = a.indexOf(43);
                }
                if (indexOf == a.length() - 3) {
                    a = a.b(a, "00");
                }
                if (indexOf == 10) {
                    sb2 = new StringBuilder();
                    a.a(a, 0, 10, sb2, "00GMT");
                    a.a(a, 10, 13, sb2, ":");
                    str4 = a.substring(13, 15);
                } else {
                    sb2 = new StringBuilder();
                    a.a(a, 0, 12, sb2, "GMT");
                    a.a(a, 12, 15, sb2, ":");
                    str4 = a.substring(15, 17);
                }
            } else if (a.length() == 11) {
                sb2 = new StringBuilder();
                sb2.append(a.substring(0, 10));
                str4 = "00GMT+00:00";
            } else {
                sb2 = new StringBuilder();
                sb2.append(a.substring(0, 12));
            }
            sb2.append(str4);
            String sb4 = sb2.toString();
            if (sb4.charAt(0) < '5') {
                sb3 = new StringBuilder();
                str3 = "20";
            } else {
                sb3 = new StringBuilder();
                str3 = "19";
            }
            return a.a(sb3, str3, sb4);
        }
        j jVar = (j) tVar;
        String a2 = f.a(jVar.x);
        int i2 = 1;
        if (a2.charAt(a2.length() - 1) == 'Z') {
            sb = new StringBuilder();
            sb.append(a2.substring(0, a2.length() - 1));
            sb.append(str4);
        } else {
            int length = a2.length() - 6;
            char charAt = a2.charAt(length);
            if ((charAt == '-' || charAt == '+') && a2.indexOf("GMT") == length - 3) {
                return a2;
            }
            int length2 = a2.length() - 5;
            char charAt2 = a2.charAt(length2);
            if (charAt2 == '-' || charAt2 == '+') {
                sb = new StringBuilder();
                sb.append(a2.substring(0, length2));
                sb.append("GMT");
                int i3 = length2 + 3;
                a.a(a2, length2, i3, sb, ":");
                str = a2.substring(i3);
            } else {
                int length3 = a2.length() - 3;
                char charAt3 = a2.charAt(length3);
                if (charAt3 == '-' || charAt3 == '+') {
                    sb = new StringBuilder();
                    a.a(a2, 0, length3, sb, "GMT");
                    sb.append(a2.substring(length3));
                    str = ":00";
                } else {
                    StringBuilder a3 = a.a(a2);
                    TimeZone timeZone = TimeZone.getDefault();
                    int rawOffset = timeZone.getRawOffset();
                    if (rawOffset < 0) {
                        rawOffset = -rawOffset;
                        str2 = CacheKeyValueDelegate.CACHE_VALUE_SEPARATOR;
                    } else {
                        str2 = "+";
                    }
                    int i4 = rawOffset / 3600000;
                    int i5 = (rawOffset - (((i4 * 60) * 60) * 1000)) / 60000;
                    try {
                        if (timeZone.useDaylightTime()) {
                            if (jVar.k()) {
                                a2 = jVar.b(a2);
                            }
                            if (timeZone.inDaylightTime(jVar.j().parse(a2 + "GMT" + str2 + jVar.a(i4) + ":" + jVar.a(i5)))) {
                                if (!str2.equals("+")) {
                                    i2 = -1;
                                }
                                i4 += i2;
                            }
                        }
                    } catch (ParseException e2) {
                        e2.printStackTrace();
                    }
                    StringBuilder a4 = a.a("GMT", str2);
                    a4.append(jVar.a(i4));
                    a4.append(":");
                    a4.append(jVar.a(i5));
                    a3.append(a4.toString());
                    return a3.toString();
                }
            }
            sb.append(str);
        }
        return sb.toString();
    }
}
