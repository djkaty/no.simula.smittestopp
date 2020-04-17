package d.w.a;

import android.content.Context;
import android.database.sqlite.SQLiteDatabase;
import android.util.Log;
import java.io.File;

public interface c {

    public static abstract class a {
        public final int a;

        public a(int i2) {
            this.a = i2;
        }

        public abstract void a(b bVar, int i2, int i3);

        public final void a(String str) {
            if (!str.equalsIgnoreCase(":memory:") && str.trim().length() != 0) {
                Log.w("SupportSQLite", "deleting the database file: " + str);
                try {
                    SQLiteDatabase.deleteDatabase(new File(str));
                } catch (Exception e2) {
                    Log.w("SupportSQLite", "delete failed: ", e2);
                }
            }
        }
    }

    public static class b {
        public final Context a;
        public final String b;

        /* renamed from: c  reason: collision with root package name */
        public final a f943c;

        public b(Context context, String str, a aVar) {
            this.a = context;
            this.b = str;
            this.f943c = aVar;
        }
    }

    /* renamed from: d.w.a.c$c  reason: collision with other inner class name */
    public interface C0049c {
        c a(b bVar);
    }

    b a();

    void a(boolean z);

    String b();
}
