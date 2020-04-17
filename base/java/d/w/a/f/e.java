package d.w.a.f;

import android.database.sqlite.SQLiteProgram;
import d.w.a.d;

public class e implements d {
    public final SQLiteProgram x;

    public e(SQLiteProgram sQLiteProgram) {
        this.x = sQLiteProgram;
    }

    public void bindBlob(int i2, byte[] bArr) {
        this.x.bindBlob(i2, bArr);
    }

    public void bindDouble(int i2, double d2) {
        this.x.bindDouble(i2, d2);
    }

    public void bindLong(int i2, long j2) {
        this.x.bindLong(i2, j2);
    }

    public void bindNull(int i2) {
        this.x.bindNull(i2);
    }

    public void bindString(int i2, String str) {
        this.x.bindString(i2, str);
    }

    public void close() {
        this.x.close();
    }
}
