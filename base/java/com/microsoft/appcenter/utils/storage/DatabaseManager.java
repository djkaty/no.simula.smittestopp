package com.microsoft.appcenter.utils.storage;

import android.content.ContentValues;
import android.content.Context;
import android.database.Cursor;
import android.database.DatabaseUtils;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteFullException;
import android.database.sqlite.SQLiteOpenHelper;
import android.database.sqlite.SQLiteQueryBuilder;
import com.microsoft.appcenter.utils.AppCenterLog;
import e.a.a.a.a;
import java.io.Closeable;
import java.util.Arrays;

public class DatabaseManager implements Closeable {
    public static final String PRIMARY_KEY = "oid";
    public static final String[] SELECT_PRIMARY_KEY = {"oid"};
    public final Context mContext;
    public final String mDatabase;
    public final String mDefaultTable;
    public final Listener mListener;
    public SQLiteOpenHelper mSQLiteOpenHelper;
    public final ContentValues mSchema;

    public interface Listener {
        void onCreate(SQLiteDatabase sQLiteDatabase);

        void onUpgrade(SQLiteDatabase sQLiteDatabase, int i2, int i3);
    }

    public DatabaseManager(Context context, String str, String str2, int i2, ContentValues contentValues, Listener listener) {
        this.mContext = context;
        this.mDatabase = str;
        this.mDefaultTable = str2;
        this.mSchema = contentValues;
        this.mListener = listener;
        this.mSQLiteOpenHelper = new SQLiteOpenHelper(context, str, (SQLiteDatabase.CursorFactory) null, i2) {
            public void onCreate(SQLiteDatabase sQLiteDatabase) {
                SQLiteUtils.createTable(sQLiteDatabase, DatabaseManager.this.mDefaultTable, DatabaseManager.this.mSchema);
                DatabaseManager.this.mListener.onCreate(sQLiteDatabase);
            }

            public void onUpgrade(SQLiteDatabase sQLiteDatabase, int i2, int i3) {
                DatabaseManager.this.mListener.onUpgrade(sQLiteDatabase, i2, i3);
            }
        };
    }

    public static ContentValues buildValues(Cursor cursor, ContentValues contentValues) {
        ContentValues contentValues2 = new ContentValues();
        for (int i2 = 0; i2 < cursor.getColumnCount(); i2++) {
            if (!cursor.isNull(i2)) {
                String columnName = cursor.getColumnName(i2);
                if (columnName.equals("oid")) {
                    contentValues2.put(columnName, Long.valueOf(cursor.getLong(i2)));
                } else {
                    Object obj = contentValues.get(columnName);
                    if (obj instanceof byte[]) {
                        contentValues2.put(columnName, cursor.getBlob(i2));
                    } else if (obj instanceof Double) {
                        contentValues2.put(columnName, Double.valueOf(cursor.getDouble(i2)));
                    } else if (obj instanceof Float) {
                        contentValues2.put(columnName, Float.valueOf(cursor.getFloat(i2)));
                    } else if (obj instanceof Integer) {
                        contentValues2.put(columnName, Integer.valueOf(cursor.getInt(i2)));
                    } else if (obj instanceof Long) {
                        contentValues2.put(columnName, Long.valueOf(cursor.getLong(i2)));
                    } else if (obj instanceof Short) {
                        contentValues2.put(columnName, Short.valueOf(cursor.getShort(i2)));
                    } else if (obj instanceof Boolean) {
                        boolean z = true;
                        if (cursor.getInt(i2) != 1) {
                            z = false;
                        }
                        contentValues2.put(columnName, Boolean.valueOf(z));
                    } else {
                        contentValues2.put(columnName, cursor.getString(i2));
                    }
                }
            }
        }
        return contentValues2;
    }

    public void clear() {
        try {
            getDatabase().delete(this.mDefaultTable, (String) null, (String[]) null);
        } catch (RuntimeException e2) {
            AppCenterLog.error("AppCenter", "Failed to clear the table.", e2);
        }
    }

    public void close() {
        try {
            this.mSQLiteOpenHelper.close();
        } catch (RuntimeException e2) {
            AppCenterLog.error("AppCenter", "Failed to close the database.", e2);
        }
    }

    public void delete(long j2) {
        delete(this.mDefaultTable, "oid", Long.valueOf(j2));
    }

    public Cursor getCursor(SQLiteQueryBuilder sQLiteQueryBuilder, String[] strArr, String[] strArr2, String str) {
        return getCursor(this.mDefaultTable, sQLiteQueryBuilder, strArr, strArr2, str);
    }

    public SQLiteDatabase getDatabase() {
        try {
            return this.mSQLiteOpenHelper.getWritableDatabase();
        } catch (RuntimeException e2) {
            AppCenterLog.warn("AppCenter", "Failed to open database. Trying to delete database (may be corrupted).", e2);
            if (this.mContext.deleteDatabase(this.mDatabase)) {
                AppCenterLog.info("AppCenter", "The database was successfully deleted.");
            } else {
                AppCenterLog.warn("AppCenter", "Failed to delete database.");
            }
            return this.mSQLiteOpenHelper.getWritableDatabase();
        }
    }

    public long getMaxSize() {
        try {
            return getDatabase().getMaximumSize();
        } catch (RuntimeException e2) {
            AppCenterLog.error("AppCenter", "Could not get maximum database size.", e2);
            return -1;
        }
    }

    public final long getRowCount() {
        try {
            return DatabaseUtils.queryNumEntries(getDatabase(), this.mDefaultTable);
        } catch (RuntimeException e2) {
            AppCenterLog.error("AppCenter", "Failed to get row count of database.", e2);
            return -1;
        }
    }

    public ContentValues nextValues(Cursor cursor) {
        try {
            if (cursor.moveToNext()) {
                return buildValues(cursor);
            }
            return null;
        } catch (RuntimeException e2) {
            AppCenterLog.error("AppCenter", "Failed to get next cursor value: ", e2);
            return null;
        }
    }

    public long put(ContentValues contentValues, String str) {
        Long l2 = null;
        Cursor cursor = null;
        while (l2 == null) {
            try {
                l2 = Long.valueOf(getDatabase().insertOrThrow(this.mDefaultTable, (String) null, contentValues));
            } catch (SQLiteFullException e2) {
                AppCenterLog.debug("AppCenter", "Storage is full, trying to delete the oldest log that has the lowest priority which is lower or equal priority than the new log");
                if (cursor == null) {
                    String asString = contentValues.getAsString(str);
                    SQLiteQueryBuilder newSQLiteQueryBuilder = SQLiteUtils.newSQLiteQueryBuilder();
                    newSQLiteQueryBuilder.appendWhere(str + " <= ?");
                    cursor = getCursor(newSQLiteQueryBuilder, SELECT_PRIMARY_KEY, new String[]{asString}, str + " , " + "oid");
                }
                if (cursor.moveToNext()) {
                    long j2 = cursor.getLong(0);
                    delete(j2);
                    AppCenterLog.debug("AppCenter", "Deleted log id=" + j2);
                } else {
                    throw e2;
                }
            } catch (RuntimeException e3) {
                l2 = -1L;
                AppCenterLog.error("AppCenter", String.format("Failed to insert values (%s) to database %s.", new Object[]{contentValues.toString(), this.mDatabase}), e3);
            }
        }
        if (cursor != null) {
            try {
                cursor.close();
            } catch (RuntimeException unused) {
            }
        }
        return l2.longValue();
    }

    public boolean setMaxSize(long j2) {
        try {
            SQLiteDatabase database = getDatabase();
            long maximumSize = database.setMaximumSize(j2);
            long pageSize = database.getPageSize();
            long j3 = j2 / pageSize;
            if (j2 % pageSize != 0) {
                j3++;
            }
            if (maximumSize != j3 * pageSize) {
                AppCenterLog.error("AppCenter", "Could not change maximum database size to " + j2 + " bytes, current maximum size is " + maximumSize + " bytes.");
                return false;
            } else if (j2 == maximumSize) {
                AppCenterLog.info("AppCenter", "Changed maximum database size to " + maximumSize + " bytes.");
                return true;
            } else {
                AppCenterLog.info("AppCenter", "Changed maximum database size to " + maximumSize + " bytes (next multiple of page size).");
                return true;
            }
        } catch (RuntimeException e2) {
            AppCenterLog.error("AppCenter", "Could not change maximum database size.", e2);
            return false;
        }
    }

    public void setSQLiteOpenHelper(SQLiteOpenHelper sQLiteOpenHelper) {
        this.mSQLiteOpenHelper.close();
        this.mSQLiteOpenHelper = sQLiteOpenHelper;
    }

    public int delete(String str, Object obj) {
        return delete(this.mDefaultTable, str, obj);
    }

    public Cursor getCursor(String str, SQLiteQueryBuilder sQLiteQueryBuilder, String[] strArr, String[] strArr2, String str2) {
        if (sQLiteQueryBuilder == null) {
            sQLiteQueryBuilder = SQLiteUtils.newSQLiteQueryBuilder();
        }
        SQLiteQueryBuilder sQLiteQueryBuilder2 = sQLiteQueryBuilder;
        sQLiteQueryBuilder2.setTables(str);
        return sQLiteQueryBuilder2.query(getDatabase(), strArr, (String) null, strArr2, (String) null, (String) null, str2);
    }

    private int delete(String str, String str2, Object obj) {
        String[] strArr = {String.valueOf(obj)};
        try {
            SQLiteDatabase database = getDatabase();
            return database.delete(str, str2 + " = ?", strArr);
        } catch (RuntimeException e2) {
            AppCenterLog.error("AppCenter", String.format("Failed to delete values that match condition=\"%s\" and values=\"%s\" from database %s.", new Object[]{a.b(str2, " = ?"), Arrays.toString(strArr), this.mDatabase}), e2);
            return 0;
        }
    }

    public ContentValues buildValues(Cursor cursor) {
        return buildValues(cursor, this.mSchema);
    }
}
