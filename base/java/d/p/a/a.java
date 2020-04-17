package d.p.a;

import d.o.f0;
import d.o.l;
import java.io.FileDescriptor;
import java.io.PrintWriter;

public abstract class a {
    public static <T extends l & f0> a a(T t) {
        return new b(t, ((f0) t).getViewModelStore());
    }

    @Deprecated
    public abstract void a(String str, FileDescriptor fileDescriptor, PrintWriter printWriter, String[] strArr);
}
