package k.f.e;

import java.io.PrintStream;

public final class f {
    public static b a = null;
    public static boolean b = false;

    public static final class b extends SecurityManager {
        public /* synthetic */ b(a aVar) {
        }

        public Class<?>[] getClassContext() {
            return super.getClassContext();
        }
    }

    public static final void a(String str, Throwable th) {
        System.err.println(str);
        System.err.println("Reported exception:");
        th.printStackTrace();
    }

    public static final void a(String str) {
        PrintStream printStream = System.err;
        printStream.println("SLF4J: " + str);
    }
}
