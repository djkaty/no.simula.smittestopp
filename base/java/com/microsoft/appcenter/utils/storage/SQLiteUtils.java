package com.microsoft.appcenter.utils.storage;

import android.content.ContentValues;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteQueryBuilder;
import java.util.Map;

public class SQLiteUtils {
    public static void createTable(SQLiteDatabase sQLiteDatabase, String str, ContentValues contentValues) {
        StringBuilder sb = new StringBuilder("CREATE TABLE IF NOT EXISTS `");
        sb.append(str);
        sb.append("` (oid INTEGER PRIMARY KEY AUTOINCREMENT");
        for (Map.Entry next : contentValues.valueSet()) {
            sb.append(", `");
            sb.append((String) next.getKey());
            sb.append("` ");
            Object value = next.getValue();
            if ((value instanceof Double) || (value instanceof Float)) {
                sb.append("REAL");
            } else if ((value instanceof Number) || (value instanceof Boolean)) {
                sb.append("INTEGER");
            } else if (value instanceof byte[]) {
                sb.append("BLOB");
            } else {
                sb.append("TEXT");
            }
        }
        sb.append(");");
        sQLiteDatabase.execSQL(sb.toString());
    }

    public static void dropTable(SQLiteDatabase sQLiteDatabase, String str) {
        sQLiteDatabase.execSQL(String.format("DROP TABLE `%s`", new Object[]{str}));
    }

    public static SQLiteQueryBuilder newSQLiteQueryBuilder() {
        return new SQLiteQueryBuilder();
    }
}
