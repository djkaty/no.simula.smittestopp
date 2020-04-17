package d.w.a.f;

import android.database.sqlite.SQLiteStatement;
import d.w.a.d;

public class f extends e implements d {
    public final SQLiteStatement y;

    public f(SQLiteStatement sQLiteStatement) {
        super(sQLiteStatement);
        this.y = sQLiteStatement;
    }

    public int a() {
        return this.y.executeUpdateDelete();
    }
}
