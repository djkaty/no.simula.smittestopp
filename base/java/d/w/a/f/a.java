package d.w.a.f;

import android.database.Cursor;
import android.database.sqlite.SQLiteCursor;
import android.database.sqlite.SQLiteCursorDriver;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteQuery;
import d.w.a.b;
import d.w.a.e;

public class a implements b {
    public static final String[] y = new String[0];
    public final SQLiteDatabase x;

    /* renamed from: d.w.a.f.a$a  reason: collision with other inner class name */
    public class C0050a implements SQLiteDatabase.CursorFactory {
        public final /* synthetic */ e a;

        public C0050a(a aVar, e eVar) {
            this.a = eVar;
        }

        public Cursor newCursor(SQLiteDatabase sQLiteDatabase, SQLiteCursorDriver sQLiteCursorDriver, String str, SQLiteQuery sQLiteQuery) {
            this.a.a(new e(sQLiteQuery));
            return new SQLiteCursor(sQLiteCursorDriver, str, sQLiteQuery);
        }
    }

    public a(SQLiteDatabase sQLiteDatabase) {
        this.x = sQLiteDatabase;
    }

    public Cursor a(String str) {
        return a((e) new d.w.a.a(str));
    }

    public void close() {
        this.x.close();
    }

    public Cursor a(e eVar) {
        return this.x.rawQueryWithFactory(new C0050a(this, eVar), eVar.a(), y, (String) null);
    }

    public String a() {
        return this.x.getPath();
    }
}
