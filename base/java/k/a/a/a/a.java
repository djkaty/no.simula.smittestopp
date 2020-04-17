package k.a.a.a;

import com.android.volley.toolbox.HttpHeaderParser;
import java.nio.charset.Charset;

public class a {
    @Deprecated
    public static final Charset a = Charset.forName("UTF-8");

    static {
        Charset.forName(HttpHeaderParser.DEFAULT_CONTENT_CHARSET);
        Charset.forName("US-ASCII");
        Charset.forName("UTF-16");
        Charset.forName("UTF-16BE");
        Charset.forName("UTF-16LE");
    }
}
