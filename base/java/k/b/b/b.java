package k.b.b;

import java.io.IOException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashSet;
import k.b.a.t;

public class b {
    static {
        Collections.unmodifiableSet(new HashSet());
        Collections.unmodifiableList(new ArrayList());
    }

    public static t a(byte[] bArr) {
        t a = t.a(bArr);
        if (a != null) {
            return a;
        }
        throw new IOException("no content found");
    }
}
