package e.c.c;

import e.c.a.a.b.l.c;
import e.c.c.y.a;
import e.c.c.y.b;
import e.c.c.y.d;
import java.io.IOException;
import java.io.StringReader;

public final class o {
    public j a(String str) {
        try {
            a aVar = new a(new StringReader(str));
            j a = a(aVar);
            if (a != null) {
                if (!(a instanceof l)) {
                    if (aVar.r() != b.END_DOCUMENT) {
                        throw new s("Did not consume the entire document.");
                    }
                }
                return a;
            }
            throw null;
        } catch (d e2) {
            throw new s((Throwable) e2);
        } catch (IOException e3) {
            throw new k((Throwable) e3);
        } catch (NumberFormatException e4) {
            throw new s((Throwable) e4);
        }
    }

    public j a(a aVar) {
        boolean z = aVar.y;
        aVar.y = true;
        try {
            j a = c.a(aVar);
            aVar.y = z;
            return a;
        } catch (StackOverflowError e2) {
            throw new n("Failed parsing JSON source: " + aVar + " to Json", e2);
        } catch (OutOfMemoryError e3) {
            throw new n("Failed parsing JSON source: " + aVar + " to Json", e3);
        } catch (Throwable th) {
            aVar.y = z;
            throw th;
        }
    }
}
