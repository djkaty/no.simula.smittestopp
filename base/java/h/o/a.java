package h.o;

import com.android.volley.toolbox.HttpHeaderParser;
import h.k.b.g;
import java.nio.charset.Charset;

public final class a {
    public static final Charset a;

    static {
        g.a((Object) Charset.forName("UTF-8"), "Charset.forName(\"UTF-8\")");
        g.a((Object) Charset.forName("UTF-16"), "Charset.forName(\"UTF-16\")");
        g.a((Object) Charset.forName("UTF-16BE"), "Charset.forName(\"UTF-16BE\")");
        g.a((Object) Charset.forName("UTF-16LE"), "Charset.forName(\"UTF-16LE\")");
        Charset forName = Charset.forName("US-ASCII");
        g.a((Object) forName, "Charset.forName(\"US-ASCII\")");
        a = forName;
        g.a((Object) Charset.forName(HttpHeaderParser.DEFAULT_CONTENT_CHARSET), "Charset.forName(\"ISO-8859-1\")");
    }
}
