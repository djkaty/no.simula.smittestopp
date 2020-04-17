package com.microsoft.appcenter.persistence;

import android.content.ContentValues;
import android.content.Context;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteQueryBuilder;
import com.microsoft.appcenter.Constants;
import com.microsoft.appcenter.ingestion.models.Log;
import com.microsoft.appcenter.utils.AppCenterLog;
import com.microsoft.appcenter.utils.crypto.CryptoUtils;
import com.microsoft.appcenter.utils.storage.DatabaseManager;
import com.microsoft.appcenter.utils.storage.FileManager;
import com.microsoft.appcenter.utils.storage.SQLiteUtils;
import e.a.a.a.a;
import java.io.File;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.UUID;
import org.json.JSONException;

public class DatabasePersistence extends Persistence {
    public static final String COLUMN_DATA_TYPE = "type";
    public static final String COLUMN_GROUP = "persistence_group";
    public static final String COLUMN_LOG = "log";
    public static final String COLUMN_PRIORITY = "priority";
    public static final String COLUMN_TARGET_KEY = "target_key";
    public static final String COLUMN_TARGET_TOKEN = "target_token";
    public static final String DATABASE = "com.microsoft.appcenter.persistence";
    public static final String GET_SORT_ORDER = "priority DESC, oid";
    public static final String INDEX_PRIORITY = "ix_logs_priority";
    public static final String PAYLOAD_FILE_EXTENSION = ".json";
    public static final String PAYLOAD_LARGE_DIRECTORY = "/appcenter/database_large_payloads";
    public static final int PAYLOAD_MAX_SIZE = 1992294;
    public static final ContentValues SCHEMA = getContentValues("", "", "", "", "", 0);
    public static final String TABLE = "logs";
    public static final int VERSION = 6;
    public static final int VERSION_TIMESTAMP_COLUMN = 5;
    public final Context mContext;
    public final DatabaseManager mDatabaseManager;
    public final File mLargePayloadDirectory;
    public final Set<Long> mPendingDbIdentifiers;
    public final Map<String, List<Long>> mPendingDbIdentifiersGroups;

    public DatabasePersistence(Context context) {
        this(context, 6, SCHEMA);
    }

    private void deleteLog(File file, long j2) {
        getLargePayloadFile(file, j2).delete();
        this.mDatabaseManager.delete(j2);
    }

    public static ContentValues getContentValues(String str, String str2, String str3, String str4, String str5, int i2) {
        ContentValues contentValues = new ContentValues();
        contentValues.put(COLUMN_GROUP, str);
        contentValues.put(COLUMN_LOG, str2);
        contentValues.put(COLUMN_TARGET_TOKEN, str3);
        contentValues.put("type", str4);
        contentValues.put(COLUMN_TARGET_KEY, str5);
        contentValues.put("priority", Integer.valueOf(i2));
        return contentValues;
    }

    private List<Long> getLogsIds(SQLiteQueryBuilder sQLiteQueryBuilder, String[] strArr) {
        Cursor cursor;
        ArrayList arrayList = new ArrayList();
        try {
            cursor = this.mDatabaseManager.getCursor(sQLiteQueryBuilder, DatabaseManager.SELECT_PRIMARY_KEY, strArr, (String) null);
            while (cursor.moveToNext()) {
                arrayList.add(this.mDatabaseManager.buildValues(cursor).getAsLong("oid"));
            }
            cursor.close();
        } catch (RuntimeException e2) {
            AppCenterLog.error("AppCenter", "Failed to get corrupted ids: ", e2);
        } catch (Throwable th) {
            cursor.close();
            throw th;
        }
        return arrayList;
    }

    public void clearPendingLogState() {
        this.mPendingDbIdentifiers.clear();
        this.mPendingDbIdentifiersGroups.clear();
        AppCenterLog.debug("AppCenter", "Cleared pending log states");
    }

    public void close() {
        this.mDatabaseManager.close();
    }

    public int countLogs(String str) {
        Cursor cursor;
        SQLiteQueryBuilder newSQLiteQueryBuilder = SQLiteUtils.newSQLiteQueryBuilder();
        newSQLiteQueryBuilder.appendWhere("persistence_group = ?");
        int i2 = 0;
        try {
            cursor = this.mDatabaseManager.getCursor(newSQLiteQueryBuilder, new String[]{"COUNT(*)"}, new String[]{str}, (String) null);
            cursor.moveToNext();
            i2 = cursor.getInt(0);
            cursor.close();
        } catch (RuntimeException e2) {
            AppCenterLog.error("AppCenter", "Failed to get logs count: ", e2);
        } catch (Throwable th) {
            cursor.close();
            throw th;
        }
        return i2;
    }

    public void deleteLogs(String str, String str2) {
        AppCenterLog.debug("AppCenter", "Deleting logs from the Persistence database for " + str + " with " + str2);
        AppCenterLog.debug("AppCenter", "The IDs for deleting log(s) is/are:");
        Map<String, List<Long>> map = this.mPendingDbIdentifiersGroups;
        List<Long> remove = map.remove(str + str2);
        File largePayloadGroupDirectory = getLargePayloadGroupDirectory(str);
        if (remove != null) {
            for (Long l2 : remove) {
                AppCenterLog.debug("AppCenter", "\t" + l2);
                deleteLog(largePayloadGroupDirectory, l2.longValue());
                this.mPendingDbIdentifiers.remove(l2);
            }
        }
    }

    public File getLargePayloadFile(File file, long j2) {
        return new File(file, j2 + ".json");
    }

    public File getLargePayloadGroupDirectory(String str) {
        return new File(this.mLargePayloadDirectory, str);
    }

    public String getLogs(String str, Collection<String> collection, int i2, List<Log> list) {
        String str2 = str;
        int i3 = i2;
        AppCenterLog.debug("AppCenter", "Trying to get " + i3 + " logs from the Persistence database for " + str2);
        SQLiteQueryBuilder newSQLiteQueryBuilder = SQLiteUtils.newSQLiteQueryBuilder();
        newSQLiteQueryBuilder.appendWhere("persistence_group = ?");
        ArrayList arrayList = new ArrayList();
        arrayList.add(str2);
        if (!collection.isEmpty()) {
            StringBuilder sb = new StringBuilder();
            for (int i4 = 0; i4 < collection.size(); i4++) {
                sb.append("?,");
            }
            sb.deleteCharAt(sb.length() - 1);
            newSQLiteQueryBuilder.appendWhere(" AND ");
            newSQLiteQueryBuilder.appendWhere("target_key NOT IN (" + sb.toString() + ")");
            arrayList.addAll(collection);
        }
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        ArrayList arrayList2 = new ArrayList();
        File largePayloadGroupDirectory = getLargePayloadGroupDirectory(str);
        String[] strArr = (String[]) arrayList.toArray(new String[0]);
        Cursor cursor = null;
        try {
            cursor = this.mDatabaseManager.getCursor(newSQLiteQueryBuilder, (String[]) null, strArr, GET_SORT_ORDER);
        } catch (RuntimeException e2) {
            AppCenterLog.error("AppCenter", "Failed to get logs: ", e2);
        }
        int i5 = 0;
        while (cursor != null) {
            ContentValues nextValues = this.mDatabaseManager.nextValues(cursor);
            if (nextValues == null || i5 >= i3) {
                break;
            }
            Long asLong = nextValues.getAsLong("oid");
            if (asLong == null) {
                AppCenterLog.error("AppCenter", "Empty database record, probably content was larger than 2MB, need to delete as it's now corrupted.");
                Iterator<Long> it = getLogsIds(newSQLiteQueryBuilder, strArr).iterator();
                while (true) {
                    if (!it.hasNext()) {
                        break;
                    }
                    Long next = it.next();
                    if (!this.mPendingDbIdentifiers.contains(next) && !linkedHashMap.containsKey(next)) {
                        deleteLog(largePayloadGroupDirectory, next.longValue());
                        AppCenterLog.error("AppCenter", "Empty database corrupted empty record deleted, id=" + next);
                        break;
                    }
                }
            } else if (!this.mPendingDbIdentifiers.contains(asLong)) {
                try {
                    String asString = nextValues.getAsString(COLUMN_LOG);
                    if (asString == null) {
                        File largePayloadFile = getLargePayloadFile(largePayloadGroupDirectory, asLong.longValue());
                        AppCenterLog.debug("AppCenter", "Read payload file " + largePayloadFile);
                        asString = FileManager.read(largePayloadFile);
                        if (asString == null) {
                            throw new JSONException("Log payload is null and not stored as a file.");
                        }
                    }
                    Log deserializeLog = getLogSerializer().deserializeLog(asString, nextValues.getAsString("type"));
                    String asString2 = nextValues.getAsString(COLUMN_TARGET_TOKEN);
                    if (asString2 != null) {
                        deserializeLog.addTransmissionTarget(CryptoUtils.getInstance(this.mContext).decrypt(asString2).getDecryptedData());
                    }
                    linkedHashMap.put(asLong, deserializeLog);
                    i5++;
                } catch (JSONException e3) {
                    AppCenterLog.error("AppCenter", "Cannot deserialize a log in the database", e3);
                    arrayList2.add(asLong);
                }
            } else {
                continue;
            }
        }
        if (cursor != null) {
            try {
                cursor.close();
            } catch (RuntimeException unused) {
            }
        }
        if (arrayList2.size() > 0) {
            Iterator it2 = arrayList2.iterator();
            while (it2.hasNext()) {
                deleteLog(largePayloadGroupDirectory, ((Long) it2.next()).longValue());
            }
            AppCenterLog.warn("AppCenter", "Deleted logs that cannot be deserialized");
        }
        if (linkedHashMap.size() <= 0) {
            AppCenterLog.debug("AppCenter", "No logs found in the Persistence database at the moment");
            return null;
        }
        String uuid = UUID.randomUUID().toString();
        StringBuilder a = a.a("Returning ");
        a.append(linkedHashMap.size());
        a.append(" log(s) with an ID, ");
        a.append(uuid);
        AppCenterLog.debug("AppCenter", a.toString());
        AppCenterLog.debug("AppCenter", "The SID/ID pairs for returning log(s) is/are:");
        ArrayList arrayList3 = new ArrayList();
        for (Map.Entry entry : linkedHashMap.entrySet()) {
            Long l2 = (Long) entry.getKey();
            this.mPendingDbIdentifiers.add(l2);
            arrayList3.add(l2);
            list.add(entry.getValue());
            AppCenterLog.debug("AppCenter", "\t" + ((Log) entry.getValue()).getSid() + " / " + l2);
        }
        Map<String, List<Long>> map = this.mPendingDbIdentifiersGroups;
        map.put(str2 + uuid, arrayList3);
        return uuid;
    }

    /* JADX WARNING: Code restructure failed: missing block: B:42:0x014a, code lost:
        r0 = move-exception;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:46:0x015b, code lost:
        throw new com.microsoft.appcenter.persistence.Persistence.PersistenceException("Cannot convert to JSON string.", r0);
     */
    /* JADX WARNING: Removed duplicated region for block: B:42:0x014a A[ExcHandler: JSONException (r0v1 'e' org.json.JSONException A[CUSTOM_DECLARE]), Splitter:B:1:0x0008] */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public long putLog(com.microsoft.appcenter.ingestion.models.Log r17, java.lang.String r18, int r19) {
        /*
            r16 = this;
            r1 = r16
            r0 = r17
            r2 = r19
            java.lang.String r3 = "AppCenter"
            java.lang.StringBuilder r4 = new java.lang.StringBuilder     // Catch:{ JSONException -> 0x014a, IOException -> 0x0148 }
            r4.<init>()     // Catch:{ JSONException -> 0x014a, IOException -> 0x0148 }
            java.lang.String r5 = "Storing a log to the Persistence database for log type "
            r4.append(r5)     // Catch:{ JSONException -> 0x014a, IOException -> 0x0148 }
            java.lang.String r5 = r17.getType()     // Catch:{ JSONException -> 0x014a, IOException -> 0x0148 }
            r4.append(r5)     // Catch:{ JSONException -> 0x014a, IOException -> 0x0148 }
            java.lang.String r5 = " with flags="
            r4.append(r5)     // Catch:{ JSONException -> 0x014a, IOException -> 0x0148 }
            r4.append(r2)     // Catch:{ JSONException -> 0x014a, IOException -> 0x0148 }
            java.lang.String r4 = r4.toString()     // Catch:{ JSONException -> 0x014a, IOException -> 0x0148 }
            com.microsoft.appcenter.utils.AppCenterLog.debug(r3, r4)     // Catch:{ JSONException -> 0x014a, IOException -> 0x0148 }
            com.microsoft.appcenter.ingestion.models.json.LogSerializer r4 = r16.getLogSerializer()     // Catch:{ JSONException -> 0x014a, IOException -> 0x0148 }
            java.lang.String r4 = r4.serializeLog(r0)     // Catch:{ JSONException -> 0x014a, IOException -> 0x0148 }
            java.lang.String r5 = "UTF-8"
            byte[] r5 = r4.getBytes(r5)     // Catch:{ JSONException -> 0x014a, IOException -> 0x0148 }
            int r5 = r5.length     // Catch:{ JSONException -> 0x014a, IOException -> 0x0148 }
            r6 = 1992294(0x1e6666, float:2.791799E-39)
            r7 = 0
            if (r5 < r6) goto L_0x003f
            r6 = 1
            goto L_0x0040
        L_0x003f:
            r6 = 0
        L_0x0040:
            boolean r8 = r0 instanceof com.microsoft.appcenter.ingestion.models.one.CommonSchemaLog     // Catch:{ JSONException -> 0x014a, IOException -> 0x0148 }
            r9 = 0
            if (r8 == 0) goto L_0x006e
            if (r6 != 0) goto L_0x0066
            java.util.Set r8 = r17.getTransmissionTargetTokens()     // Catch:{ JSONException -> 0x014a, IOException -> 0x0148 }
            java.util.Iterator r8 = r8.iterator()     // Catch:{ JSONException -> 0x014a, IOException -> 0x0148 }
            java.lang.Object r8 = r8.next()     // Catch:{ JSONException -> 0x014a, IOException -> 0x0148 }
            java.lang.String r8 = (java.lang.String) r8     // Catch:{ JSONException -> 0x014a, IOException -> 0x0148 }
            java.lang.String r10 = com.microsoft.appcenter.ingestion.models.one.PartAUtils.getTargetKey(r8)     // Catch:{ JSONException -> 0x014a, IOException -> 0x0148 }
            android.content.Context r11 = r1.mContext     // Catch:{ JSONException -> 0x014a, IOException -> 0x0148 }
            com.microsoft.appcenter.utils.crypto.CryptoUtils r11 = com.microsoft.appcenter.utils.crypto.CryptoUtils.getInstance(r11)     // Catch:{ JSONException -> 0x014a, IOException -> 0x0148 }
            java.lang.String r8 = r11.encrypt(r8)     // Catch:{ JSONException -> 0x014a, IOException -> 0x0148 }
            r11 = r10
            r10 = r8
            goto L_0x0070
        L_0x0066:
            com.microsoft.appcenter.persistence.Persistence$PersistenceException r0 = new com.microsoft.appcenter.persistence.Persistence$PersistenceException     // Catch:{ JSONException -> 0x014a, IOException -> 0x0148 }
            java.lang.String r2 = "Log is larger than 1992294 bytes, cannot send to OneCollector."
            r0.<init>(r2)     // Catch:{ JSONException -> 0x014a, IOException -> 0x0148 }
            throw r0     // Catch:{ JSONException -> 0x014a, IOException -> 0x0148 }
        L_0x006e:
            r10 = r9
            r11 = r10
        L_0x0070:
            com.microsoft.appcenter.utils.storage.DatabaseManager r8 = r1.mDatabaseManager     // Catch:{ JSONException -> 0x014a, IOException -> 0x0148 }
            long r12 = r8.getMaxSize()     // Catch:{ JSONException -> 0x014a, IOException -> 0x0148 }
            r14 = -1
            int r8 = (r12 > r14 ? 1 : (r12 == r14 ? 0 : -1))
            if (r8 == 0) goto L_0x0140
            if (r6 != 0) goto L_0x00a8
            long r14 = (long) r5     // Catch:{ JSONException -> 0x014a, IOException -> 0x0148 }
            int r8 = (r12 > r14 ? 1 : (r12 == r14 ? 0 : -1))
            if (r8 <= 0) goto L_0x0084
            goto L_0x00a8
        L_0x0084:
            com.microsoft.appcenter.persistence.Persistence$PersistenceException r0 = new com.microsoft.appcenter.persistence.Persistence$PersistenceException     // Catch:{ JSONException -> 0x014a, IOException -> 0x0148 }
            java.lang.StringBuilder r2 = new java.lang.StringBuilder     // Catch:{ JSONException -> 0x014a, IOException -> 0x0148 }
            r2.<init>()     // Catch:{ JSONException -> 0x014a, IOException -> 0x0148 }
            java.lang.String r3 = "Log is too large ("
            r2.append(r3)     // Catch:{ JSONException -> 0x014a, IOException -> 0x0148 }
            r2.append(r5)     // Catch:{ JSONException -> 0x014a, IOException -> 0x0148 }
            java.lang.String r3 = " bytes) to store in database. Current maximum database size is "
            r2.append(r3)     // Catch:{ JSONException -> 0x014a, IOException -> 0x0148 }
            r2.append(r12)     // Catch:{ JSONException -> 0x014a, IOException -> 0x0148 }
            java.lang.String r3 = " bytes."
            r2.append(r3)     // Catch:{ JSONException -> 0x014a, IOException -> 0x0148 }
            java.lang.String r2 = r2.toString()     // Catch:{ JSONException -> 0x014a, IOException -> 0x0148 }
            r0.<init>(r2)     // Catch:{ JSONException -> 0x014a, IOException -> 0x0148 }
            throw r0     // Catch:{ JSONException -> 0x014a, IOException -> 0x0148 }
        L_0x00a8:
            if (r6 == 0) goto L_0x00ac
            r8 = r9
            goto L_0x00ad
        L_0x00ac:
            r8 = r4
        L_0x00ad:
            java.lang.String r5 = r17.getType()     // Catch:{ JSONException -> 0x014a, IOException -> 0x0148 }
            int r12 = com.microsoft.appcenter.Flags.getPersistenceFlag(r2, r7)     // Catch:{ JSONException -> 0x014a, IOException -> 0x0148 }
            r7 = r18
            r9 = r10
            r10 = r5
            android.content.ContentValues r2 = getContentValues(r7, r8, r9, r10, r11, r12)     // Catch:{ JSONException -> 0x014a, IOException -> 0x0148 }
            com.microsoft.appcenter.utils.storage.DatabaseManager r5 = r1.mDatabaseManager     // Catch:{ JSONException -> 0x014a, IOException -> 0x0148 }
            java.lang.String r7 = "priority"
            long r7 = r5.put(r2, r7)     // Catch:{ JSONException -> 0x014a, IOException -> 0x0148 }
            r9 = -1
            int r2 = (r7 > r9 ? 1 : (r7 == r9 ? 0 : -1))
            if (r2 == 0) goto L_0x0120
            java.lang.StringBuilder r2 = new java.lang.StringBuilder     // Catch:{ JSONException -> 0x014a, IOException -> 0x0148 }
            r2.<init>()     // Catch:{ JSONException -> 0x014a, IOException -> 0x0148 }
            java.lang.String r5 = "Stored a log to the Persistence database for log type "
            r2.append(r5)     // Catch:{ JSONException -> 0x014a, IOException -> 0x0148 }
            java.lang.String r0 = r17.getType()     // Catch:{ JSONException -> 0x014a, IOException -> 0x0148 }
            r2.append(r0)     // Catch:{ JSONException -> 0x014a, IOException -> 0x0148 }
            java.lang.String r0 = " with databaseId="
            r2.append(r0)     // Catch:{ JSONException -> 0x014a, IOException -> 0x0148 }
            r2.append(r7)     // Catch:{ JSONException -> 0x014a, IOException -> 0x0148 }
            java.lang.String r0 = r2.toString()     // Catch:{ JSONException -> 0x014a, IOException -> 0x0148 }
            com.microsoft.appcenter.utils.AppCenterLog.debug(r3, r0)     // Catch:{ JSONException -> 0x014a, IOException -> 0x0148 }
            if (r6 == 0) goto L_0x011f
            java.lang.String r0 = "Payload is larger than what SQLite supports, storing payload in a separate file."
            com.microsoft.appcenter.utils.AppCenterLog.debug(r3, r0)     // Catch:{ JSONException -> 0x014a, IOException -> 0x0148 }
            r0 = r18
            java.io.File r0 = r1.getLargePayloadGroupDirectory(r0)     // Catch:{ JSONException -> 0x014a, IOException -> 0x0148 }
            r0.mkdir()     // Catch:{ JSONException -> 0x014a, IOException -> 0x0148 }
            java.io.File r0 = r1.getLargePayloadFile(r0, r7)     // Catch:{ JSONException -> 0x014a, IOException -> 0x0148 }
            com.microsoft.appcenter.utils.storage.FileManager.write((java.io.File) r0, (java.lang.String) r4)     // Catch:{ IOException -> 0x0117, JSONException -> 0x014a }
            java.lang.StringBuilder r2 = new java.lang.StringBuilder     // Catch:{ JSONException -> 0x014a, IOException -> 0x0148 }
            r2.<init>()     // Catch:{ JSONException -> 0x014a, IOException -> 0x0148 }
            java.lang.String r4 = "Payload written to "
            r2.append(r4)     // Catch:{ JSONException -> 0x014a, IOException -> 0x0148 }
            r2.append(r0)     // Catch:{ JSONException -> 0x014a, IOException -> 0x0148 }
            java.lang.String r0 = r2.toString()     // Catch:{ JSONException -> 0x014a, IOException -> 0x0148 }
            com.microsoft.appcenter.utils.AppCenterLog.debug(r3, r0)     // Catch:{ JSONException -> 0x014a, IOException -> 0x0148 }
            goto L_0x011f
        L_0x0117:
            r0 = move-exception
            r2 = r0
            com.microsoft.appcenter.utils.storage.DatabaseManager r0 = r1.mDatabaseManager     // Catch:{ JSONException -> 0x014a, IOException -> 0x0148 }
            r0.delete(r7)     // Catch:{ JSONException -> 0x014a, IOException -> 0x0148 }
            throw r2     // Catch:{ JSONException -> 0x014a, IOException -> 0x0148 }
        L_0x011f:
            return r7
        L_0x0120:
            com.microsoft.appcenter.persistence.Persistence$PersistenceException r2 = new com.microsoft.appcenter.persistence.Persistence$PersistenceException     // Catch:{ JSONException -> 0x014a, IOException -> 0x0148 }
            java.lang.StringBuilder r3 = new java.lang.StringBuilder     // Catch:{ JSONException -> 0x014a, IOException -> 0x0148 }
            r3.<init>()     // Catch:{ JSONException -> 0x014a, IOException -> 0x0148 }
            java.lang.String r4 = "Failed to store a log to the Persistence database for log type "
            r3.append(r4)     // Catch:{ JSONException -> 0x014a, IOException -> 0x0148 }
            java.lang.String r0 = r17.getType()     // Catch:{ JSONException -> 0x014a, IOException -> 0x0148 }
            r3.append(r0)     // Catch:{ JSONException -> 0x014a, IOException -> 0x0148 }
            java.lang.String r0 = "."
            r3.append(r0)     // Catch:{ JSONException -> 0x014a, IOException -> 0x0148 }
            java.lang.String r0 = r3.toString()     // Catch:{ JSONException -> 0x014a, IOException -> 0x0148 }
            r2.<init>(r0)     // Catch:{ JSONException -> 0x014a, IOException -> 0x0148 }
            throw r2     // Catch:{ JSONException -> 0x014a, IOException -> 0x0148 }
        L_0x0140:
            com.microsoft.appcenter.persistence.Persistence$PersistenceException r0 = new com.microsoft.appcenter.persistence.Persistence$PersistenceException     // Catch:{ JSONException -> 0x014a, IOException -> 0x0148 }
            java.lang.String r2 = "Failed to store a log to the Persistence database."
            r0.<init>(r2)     // Catch:{ JSONException -> 0x014a, IOException -> 0x0148 }
            throw r0     // Catch:{ JSONException -> 0x014a, IOException -> 0x0148 }
        L_0x0148:
            r0 = move-exception
            goto L_0x014c
        L_0x014a:
            r0 = move-exception
            goto L_0x0154
        L_0x014c:
            com.microsoft.appcenter.persistence.Persistence$PersistenceException r2 = new com.microsoft.appcenter.persistence.Persistence$PersistenceException
            java.lang.String r3 = "Cannot save large payload in a file."
            r2.<init>(r3, r0)
            throw r2
        L_0x0154:
            com.microsoft.appcenter.persistence.Persistence$PersistenceException r2 = new com.microsoft.appcenter.persistence.Persistence$PersistenceException
            java.lang.String r3 = "Cannot convert to JSON string."
            r2.<init>(r3, r0)
            throw r2
        */
        throw new UnsupportedOperationException("Method not decompiled: com.microsoft.appcenter.persistence.DatabasePersistence.putLog(com.microsoft.appcenter.ingestion.models.Log, java.lang.String, int):long");
    }

    public boolean setMaxStorageSize(long j2) {
        return this.mDatabaseManager.setMaxSize(j2);
    }

    public DatabasePersistence(Context context, int i2, final ContentValues contentValues) {
        this.mContext = context;
        this.mPendingDbIdentifiersGroups = new HashMap();
        this.mPendingDbIdentifiers = new HashSet();
        this.mDatabaseManager = new DatabaseManager(context, DATABASE, "logs", i2, contentValues, new DatabaseManager.Listener() {
            private void createPriorityIndex(SQLiteDatabase sQLiteDatabase) {
                sQLiteDatabase.execSQL("CREATE INDEX `ix_logs_priority` ON logs (`priority`)");
            }

            public void onCreate(SQLiteDatabase sQLiteDatabase) {
                createPriorityIndex(sQLiteDatabase);
            }

            public void onUpgrade(SQLiteDatabase sQLiteDatabase, int i2, int i3) {
                SQLiteUtils.dropTable(sQLiteDatabase, "logs");
                SQLiteUtils.createTable(sQLiteDatabase, "logs", contentValues);
                createPriorityIndex(sQLiteDatabase);
            }
        });
        File file = new File(a.a(new StringBuilder(), Constants.FILES_PATH, PAYLOAD_LARGE_DIRECTORY));
        this.mLargePayloadDirectory = file;
        file.mkdirs();
    }

    public void deleteLogs(String str) {
        AppCenterLog.debug("AppCenter", "Deleting all logs from the Persistence database for " + str);
        File largePayloadGroupDirectory = getLargePayloadGroupDirectory(str);
        File[] listFiles = largePayloadGroupDirectory.listFiles();
        if (listFiles != null) {
            for (File delete : listFiles) {
                delete.delete();
            }
        }
        largePayloadGroupDirectory.delete();
        AppCenterLog.debug("AppCenter", "Deleted " + this.mDatabaseManager.delete(COLUMN_GROUP, str) + " logs.");
        Iterator<String> it = this.mPendingDbIdentifiersGroups.keySet().iterator();
        while (it.hasNext()) {
            if (it.next().startsWith(str)) {
                it.remove();
            }
        }
    }
}
