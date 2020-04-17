package d.s;

import android.annotation.SuppressLint;
import d.s.p;
import e.a.a.a.a;
import java.util.HashMap;

@SuppressLint({"TypeParameterUnusedInFormals"})
public class q {
    public static final HashMap<Class<?>, String> b = new HashMap<>();
    public final HashMap<String, p<? extends i>> a = new HashMap<>();

    public static String a(Class<? extends p> cls) {
        String str = b.get(cls);
        if (str == null) {
            p.b bVar = (p.b) cls.getAnnotation(p.b.class);
            str = bVar != null ? bVar.value() : null;
            if (b(str)) {
                b.put(cls, str);
            } else {
                StringBuilder a2 = a.a("No @Navigator.Name annotation found for ");
                a2.append(cls.getSimpleName());
                throw new IllegalArgumentException(a2.toString());
            }
        }
        return str;
    }

    public static boolean b(String str) {
        return str != null && !str.isEmpty();
    }

    public <T extends p<?>> T a(String str) {
        if (b(str)) {
            T t = (p) this.a.get(str);
            if (t != null) {
                return t;
            }
            throw new IllegalStateException(a.a("Could not find Navigator with name \"", str, "\". You must call NavController.addNavigator() for each navigation type."));
        }
        throw new IllegalArgumentException("navigator name cannot be an empty string");
    }

    public final p<? extends i> a(p<? extends i> pVar) {
        String a2 = a((Class<? extends p>) pVar.getClass());
        if (b(a2)) {
            return this.a.put(a2, pVar);
        }
        throw new IllegalArgumentException("navigator name cannot be an empty string");
    }
}
