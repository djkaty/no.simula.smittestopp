package k.c.a.a.a.s;

import java.lang.reflect.Field;
import java.net.URI;
import java.net.URISyntaxException;
import java.util.Iterator;
import java.util.ServiceLoader;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import k.c.a.a.a.i;
import k.c.a.a.a.t.b;
import k.c.a.a.a.t.c;
import k.c.a.a.a.v.a;

public class j {
    public static b a;
    public static final ServiceLoader<a> b;

    /* renamed from: c  reason: collision with root package name */
    public static final Pattern f2229c = Pattern.compile("((.+)@)?([^:]*)(:(\\d+))?");

    static {
        Class<j> cls = j.class;
        a = c.a("org.eclipse.paho.client.mqttv3.internal.nls.logcat", cls.getSimpleName());
        b = ServiceLoader.load(a.class, cls.getClassLoader());
    }

    public static synchronized void a(String str) {
        synchronized (j.class) {
            try {
                URI uri = new URI(str);
                String scheme = uri.getScheme();
                if (scheme == null || scheme.isEmpty()) {
                    throw new IllegalArgumentException("missing scheme in broker URI: " + str);
                }
                String lowerCase = scheme.toLowerCase();
                Iterator<a> it = b.iterator();
                while (it.hasNext()) {
                    a next = it.next();
                    if (next.a().contains(lowerCase)) {
                        next.a(uri);
                    }
                }
                throw new IllegalArgumentException("no NetworkModule installed for scheme \"" + lowerCase + "\" of URI \"" + str + "\"");
            } catch (URISyntaxException e2) {
                throw new IllegalArgumentException("Can't parse string to URI \"" + str + "\"", e2);
            }
        }
    }

    public static i a(String str, i iVar, String str2) {
        try {
            URI uri = new URI(str);
            a(uri);
            String lowerCase = uri.getScheme().toLowerCase();
            Iterator<a> it = b.iterator();
            while (it.hasNext()) {
                a next = it.next();
                if (next.a().contains(lowerCase)) {
                    return next.a(uri, iVar, str2);
                }
            }
            throw new IllegalArgumentException(uri.toString());
        } catch (URISyntaxException e2) {
            throw new IllegalArgumentException(str, e2);
        }
    }

    public static void a(URI uri) {
        if (uri != null && uri.getHost() == null && uri.getAuthority() != null && !uri.getAuthority().isEmpty()) {
            Matcher matcher = f2229c.matcher(uri.getAuthority());
            if (matcher.find()) {
                a(uri, "userInfo", (Object) matcher.group(2));
                a(uri, "host", (Object) matcher.group(3));
                String group = matcher.group(5);
                a(uri, "port", (Object) Integer.valueOf(group != null ? Integer.parseInt(group) : -1));
            }
        }
    }

    public static void a(URI uri, String str, Object obj) {
        try {
            Field declaredField = URI.class.getDeclaredField(str);
            declaredField.setAccessible(true);
            declaredField.set(uri, obj);
        } catch (IllegalAccessException | IllegalArgumentException | NoSuchFieldException | SecurityException e2) {
            b bVar = a;
            String name = j.class.getName();
            Object[] objArr = {uri.toString()};
            bVar.b(name, "setURIField", "115", objArr, e2);
        }
    }
}
