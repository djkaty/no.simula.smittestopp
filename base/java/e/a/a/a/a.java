package e.a.a.a;

import android.util.Log;
import androidx.fragment.app.Fragment;
import com.microsoft.identity.common.internal.logging.Logger;
import d.t.a.s;
import java.util.HashMap;
import k.b.a.o;
import k.b.i.b.g.d;
import org.xmlpull.v1.XmlPullParser;

/* compiled from: outline */
public class a {
    public static int a(int i2, int i3, int i4, int i5) {
        return i2 + i3 + i4 + i5;
    }

    public static String a(s sVar, StringBuilder sb) {
        sb.append(sVar.h());
        return sb.toString();
    }

    public static String a(Exception exc, StringBuilder sb) {
        sb.append(exc.toString());
        return sb.toString();
    }

    public static String a(Object obj, StringBuilder sb) {
        sb.append(obj.getClass().getName());
        return sb.toString();
    }

    public static String a(String str, int i2) {
        return str + i2;
    }

    public static String a(String str, Fragment fragment, String str2) {
        return str + fragment + str2;
    }

    public static String a(String str, String str2, String str3) {
        return str + str2 + str3;
    }

    public static String a(StringBuilder sb, int i2, String str) {
        sb.append(i2);
        sb.append(str);
        return sb.toString();
    }

    public static String a(StringBuilder sb, String str, String str2) {
        sb.append(str);
        sb.append(str2);
        return sb.toString();
    }

    public static String a(StringBuilder sb, String str, String str2, String str3) {
        sb.append(str);
        sb.append(str2);
        sb.append(str3);
        return sb.toString();
    }

    public static String a(XmlPullParser xmlPullParser, StringBuilder sb, String str) {
        sb.append(xmlPullParser.getPositionDescription());
        sb.append(str);
        return sb.toString();
    }

    public static StringBuilder a(String str) {
        StringBuilder sb = new StringBuilder();
        sb.append(str);
        return sb;
    }

    public static StringBuilder a(String str, int i2, String str2) {
        StringBuilder sb = new StringBuilder();
        sb.append(str);
        sb.append(i2);
        sb.append(str2);
        return sb;
    }

    public static StringBuilder a(String str, String str2) {
        StringBuilder sb = new StringBuilder();
        sb.append(str);
        sb.append(str2);
        return sb;
    }

    public static void a(int i2, String str, HashMap hashMap, String str2) {
        hashMap.put(str2, new d(i2, str));
    }

    public static void a(String str, int i2, int i3, StringBuilder sb, String str2) {
        sb.append(str.substring(i2, i3));
        sb.append(str2);
    }

    public static void a(StringBuilder sb, Fragment fragment, String str) {
        sb.append(fragment);
        Log.d(str, sb.toString());
    }

    public static void a(StringBuilder sb, String str, char c2, String str2) {
        sb.append(str);
        sb.append(c2);
        sb.append(str2);
    }

    public static String b(String str, int i2, String str2) {
        return str + i2 + str2;
    }

    public static String b(String str, String str2) {
        return str + str2;
    }

    public static o b(String str) {
        return new o(str).k();
    }

    public static void b(StringBuilder sb, String str, String str2, String str3) {
        sb.append(str);
        sb.append(str2);
        Logger.verbose(sb.toString(), str3);
    }

    public static void c(StringBuilder sb, String str, String str2, String str3) {
        sb.append(str);
        sb.append(str2);
        Logger.warn(sb.toString(), str3);
    }
}
