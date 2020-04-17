package d.s;

import android.net.Uri;
import android.os.Bundle;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

public class h {

    /* renamed from: f  reason: collision with root package name */
    public static final Pattern f734f = Pattern.compile("^[a-zA-Z]+[+\\w\\-.]*:");
    public final ArrayList<String> a = new ArrayList<>();
    public final Pattern b;

    /* renamed from: c  reason: collision with root package name */
    public final boolean f735c;

    /* renamed from: d  reason: collision with root package name */
    public final boolean f736d;

    /* renamed from: e  reason: collision with root package name */
    public final Map<String, a> f737e = new HashMap();

    public static class a {
        public String a;
        public ArrayList<String> b = new ArrayList<>();
    }

    public h(String str) {
        String str2 = str;
        Uri parse = Uri.parse(str);
        int i2 = 1;
        this.f736d = parse.getQuery() != null;
        StringBuilder sb = new StringBuilder("^");
        if (!f734f.matcher(str2).find()) {
            sb.append("http[s]?://");
        }
        Pattern compile = Pattern.compile("\\{(.+?)\\}");
        if (this.f736d) {
            Matcher matcher = Pattern.compile("(\\?)").matcher(str2);
            if (matcher.find()) {
                a(str2.substring(0, matcher.start()), sb, compile);
            }
            this.f735c = false;
            for (String next : parse.getQueryParameterNames()) {
                StringBuilder sb2 = new StringBuilder();
                String queryParameter = parse.getQueryParameter(next);
                Matcher matcher2 = compile.matcher(queryParameter);
                a aVar = new a();
                int i3 = 0;
                while (matcher2.find()) {
                    aVar.b.add(matcher2.group(i2));
                    sb2.append(Pattern.quote(queryParameter.substring(i3, matcher2.start())));
                    sb2.append("(.+?)?");
                    i3 = matcher2.end();
                    i2 = 1;
                }
                if (i3 < queryParameter.length()) {
                    sb2.append(Pattern.quote(queryParameter.substring(i3)));
                }
                aVar.a = sb2.toString().replace(".*", "\\E.*\\Q");
                this.f737e.put(next, aVar);
                i2 = 1;
            }
        } else {
            this.f735c = a(str2, sb, compile);
        }
        this.b = Pattern.compile(sb.toString().replace(".*", "\\E.*\\Q"));
    }

    public final boolean a(Bundle bundle, String str, String str2, d dVar) {
        if (dVar != null) {
            o oVar = dVar.a;
            try {
                oVar.a(bundle, str, oVar.a(str2));
                return false;
            } catch (IllegalArgumentException unused) {
                return true;
            }
        } else {
            bundle.putString(str, str2);
            return false;
        }
    }

    public final boolean a(String str, StringBuilder sb, Pattern pattern) {
        Matcher matcher = pattern.matcher(str);
        boolean z = !str.contains(".*");
        int i2 = 0;
        while (matcher.find()) {
            this.a.add(matcher.group(1));
            sb.append(Pattern.quote(str.substring(i2, matcher.start())));
            sb.append("(.+?)");
            i2 = matcher.end();
            z = false;
        }
        if (i2 < str.length()) {
            sb.append(Pattern.quote(str.substring(i2)));
        }
        sb.append("($|(\\?(.)*))");
        return z;
    }
}
