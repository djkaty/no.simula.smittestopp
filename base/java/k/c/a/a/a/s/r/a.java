package k.c.a.a.a.s.r;

import java.util.prefs.AbstractPreferences;

public class a {
    public static final a a = new a();
    public static final C0106a b;

    /* renamed from: k.c.a.a.a.s.r.a$a  reason: collision with other inner class name */
    public class C0106a extends AbstractPreferences {
        public String a = null;

        public C0106a(a aVar) {
            super((AbstractPreferences) null, "");
        }

        public AbstractPreferences childSpi(String str) {
            return null;
        }

        public String[] childrenNamesSpi() {
            return null;
        }

        public void flushSpi() {
        }

        public String getSpi(String str) {
            return null;
        }

        public String[] keysSpi() {
            return null;
        }

        public void putSpi(String str, String str2) {
            this.a = str2;
        }

        public void removeNodeSpi() {
        }

        public void removeSpi(String str) {
        }

        public void syncSpi() {
        }
    }

    static {
        a aVar = a;
        aVar.getClass();
        b = new C0106a(aVar);
    }
}
