package d.w.a.f;

import android.content.Context;
import android.database.Cursor;
import android.database.DatabaseErrorHandler;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteOpenHelper;
import d.u.g;
import d.u.h;
import d.w.a.b;
import d.w.a.c;
import d.w.a.e;
import j.b.a.u;
import java.util.List;

public class c implements d.w.a.c {
    public final a a;

    public c(Context context, String str, c.a aVar) {
        this.a = new a(context, str, new a[1], aVar);
    }

    public void a(boolean z) {
        this.a.setWriteAheadLoggingEnabled(z);
    }

    public String b() {
        return this.a.getDatabaseName();
    }

    public b a() {
        return this.a.a();
    }

    public static class a extends SQLiteOpenHelper {
        public final a[] x;
        public final c.a y;
        public boolean z;

        /* renamed from: d.w.a.f.c$a$a  reason: collision with other inner class name */
        public class C0051a implements DatabaseErrorHandler {
            public final /* synthetic */ c.a a;
            public final /* synthetic */ a[] b;

            public C0051a(c.a aVar, a[] aVarArr) {
                this.a = aVar;
                this.b = aVarArr;
            }

            /* JADX WARNING: Code restructure failed: missing block: B:10:0x003e, code lost:
                if (r1 != null) goto L_0x0040;
             */
            /* JADX WARNING: Code restructure failed: missing block: B:11:0x0040, code lost:
                r5 = r1.iterator();
             */
            /* JADX WARNING: Code restructure failed: missing block: B:13:0x0048, code lost:
                if (r5.hasNext() != false) goto L_0x004a;
             */
            /* JADX WARNING: Code restructure failed: missing block: B:14:0x004a, code lost:
                r0.a((java.lang.String) r5.next().second);
             */
            /* JADX WARNING: Code restructure failed: missing block: B:15:0x0058, code lost:
                r0.a(r5.a());
             */
            /* JADX WARNING: Code restructure failed: missing block: B:16:0x005f, code lost:
                throw r2;
             */
            /* JADX WARNING: Code restructure failed: missing block: B:7:0x0038, code lost:
                r2 = move-exception;
             */
            /* JADX WARNING: Failed to process nested try/catch */
            /* JADX WARNING: Missing exception handler attribute for start block: B:8:0x003a */
            /* JADX WARNING: Removed duplicated region for block: B:19:0x0063  */
            /* JADX WARNING: Removed duplicated region for block: B:23:0x007b  */
            /* JADX WARNING: Removed duplicated region for block: B:7:0x0038 A[ExcHandler: all (r2v5 'th' java.lang.Throwable A[CUSTOM_DECLARE]), PHI: r1 
              PHI: (r1v8 java.util.List<android.util.Pair<java.lang.String, java.lang.String>>) = (r1v1 java.util.List<android.util.Pair<java.lang.String, java.lang.String>>), (r1v2 java.util.List<android.util.Pair<java.lang.String, java.lang.String>>), (r1v2 java.util.List<android.util.Pair<java.lang.String, java.lang.String>>) binds: [B:5:0x0031, B:8:0x003a, B:9:?] A[DONT_GENERATE, DONT_INLINE], Splitter:B:5:0x0031] */
            /* Code decompiled incorrectly, please refer to instructions dump. */
            public void onCorruption(android.database.sqlite.SQLiteDatabase r5) {
                /*
                    r4 = this;
                    d.w.a.c$a r0 = r4.a
                    d.w.a.f.a[] r1 = r4.b
                    d.w.a.f.a r5 = d.w.a.f.c.a.a(r1, r5)
                    r1 = 0
                    if (r0 == 0) goto L_0x0083
                    java.lang.String r2 = "Corruption reported by sqlite on database: "
                    java.lang.StringBuilder r2 = e.a.a.a.a.a(r2)
                    java.lang.String r3 = r5.a()
                    r2.append(r3)
                    java.lang.String r2 = r2.toString()
                    java.lang.String r3 = "SupportSQLite"
                    android.util.Log.e(r3, r2)
                    android.database.sqlite.SQLiteDatabase r2 = r5.x
                    boolean r2 = r2.isOpen()
                    if (r2 != 0) goto L_0x0031
                    java.lang.String r5 = r5.a()
                    r0.a(r5)
                    goto L_0x0082
                L_0x0031:
                    android.database.sqlite.SQLiteDatabase r2 = r5.x     // Catch:{ SQLiteException -> 0x003a, all -> 0x0038 }
                    java.util.List r1 = r2.getAttachedDbs()     // Catch:{ SQLiteException -> 0x003a, all -> 0x0038 }
                    goto L_0x003a
                L_0x0038:
                    r2 = move-exception
                    goto L_0x003e
                L_0x003a:
                    r5.close()     // Catch:{ IOException -> 0x0060, all -> 0x0038 }
                    goto L_0x0061
                L_0x003e:
                    if (r1 == 0) goto L_0x0058
                    java.util.Iterator r5 = r1.iterator()
                L_0x0044:
                    boolean r1 = r5.hasNext()
                    if (r1 == 0) goto L_0x005f
                    java.lang.Object r1 = r5.next()
                    android.util.Pair r1 = (android.util.Pair) r1
                    java.lang.Object r1 = r1.second
                    java.lang.String r1 = (java.lang.String) r1
                    r0.a(r1)
                    goto L_0x0044
                L_0x0058:
                    java.lang.String r5 = r5.a()
                    r0.a(r5)
                L_0x005f:
                    throw r2
                L_0x0060:
                L_0x0061:
                    if (r1 == 0) goto L_0x007b
                    java.util.Iterator r5 = r1.iterator()
                L_0x0067:
                    boolean r1 = r5.hasNext()
                    if (r1 == 0) goto L_0x0082
                    java.lang.Object r1 = r5.next()
                    android.util.Pair r1 = (android.util.Pair) r1
                    java.lang.Object r1 = r1.second
                    java.lang.String r1 = (java.lang.String) r1
                    r0.a(r1)
                    goto L_0x0067
                L_0x007b:
                    java.lang.String r5 = r5.a()
                    r0.a(r5)
                L_0x0082:
                    return
                L_0x0083:
                    throw r1
                */
                throw new UnsupportedOperationException("Method not decompiled: d.w.a.f.c.a.C0051a.onCorruption(android.database.sqlite.SQLiteDatabase):void");
            }
        }

        public a(Context context, String str, a[] aVarArr, c.a aVar) {
            super(context, str, (SQLiteDatabase.CursorFactory) null, aVar.a, new C0051a(aVar, aVarArr));
            this.y = aVar;
            this.x = aVarArr;
        }

        public synchronized b a() {
            this.z = false;
            SQLiteDatabase writableDatabase = super.getWritableDatabase();
            if (this.z) {
                close();
                return a();
            }
            return a(writableDatabase);
        }

        public synchronized void close() {
            super.close();
            this.x[0] = null;
        }

        public void onConfigure(SQLiteDatabase sQLiteDatabase) {
            c.a aVar = this.y;
            a(this.x, sQLiteDatabase);
            if (((h) aVar) == null) {
                throw null;
            }
        }

        /* JADX INFO: finally extract failed */
        public void onCreate(SQLiteDatabase sQLiteDatabase) {
            c.a aVar = this.y;
            a a = a(this.x, sQLiteDatabase);
            h hVar = (h) aVar;
            if (hVar != null) {
                Cursor a2 = a.a("SELECT count(*) FROM sqlite_master WHERE name != 'android_metadata'");
                try {
                    boolean z2 = a2.moveToFirst() && a2.getInt(0) == 0;
                    a2.close();
                    hVar.f917c.a(a);
                    if (!z2) {
                        h.b b = hVar.f917c.b(a);
                        if (!b.a) {
                            StringBuilder a3 = e.a.a.a.a.a("Pre-packaged database has an invalid schema: ");
                            a3.append(b.b);
                            throw new IllegalStateException(a3.toString());
                        }
                    }
                    hVar.a(a);
                    u uVar = (u) hVar.f917c;
                    if (uVar.b.f905g != null) {
                        int size = uVar.b.f905g.size();
                        for (int i2 = 0; i2 < size; i2++) {
                            uVar.b.f905g.get(i2).a();
                        }
                    }
                } catch (Throwable th) {
                    a2.close();
                    throw th;
                }
            } else {
                throw null;
            }
        }

        public void onDowngrade(SQLiteDatabase sQLiteDatabase, int i2, int i3) {
            this.z = true;
            ((h) this.y).a(a(this.x, sQLiteDatabase), i2, i3);
        }

        /* JADX INFO: finally extract failed */
        public void onOpen(SQLiteDatabase sQLiteDatabase) {
            if (!this.z) {
                c.a aVar = this.y;
                a a = a(this.x, sQLiteDatabase);
                h hVar = (h) aVar;
                if (hVar != null) {
                    Cursor a2 = a.a("SELECT 1 FROM sqlite_master WHERE type = 'table' AND name='room_master_table'");
                    try {
                        if (a2.moveToFirst() && a2.getInt(0) != 0) {
                            Cursor a3 = a.a((e) new d.w.a.a("SELECT identity_hash FROM room_master_table WHERE id = 42 LIMIT 1"));
                            try {
                                String string = a3.moveToFirst() ? a3.getString(0) : null;
                                a3.close();
                                if (!hVar.f918d.equals(string) && !hVar.f919e.equals(string)) {
                                    throw new IllegalStateException("Room cannot verify the data integrity. Looks like you've changed schema but forgot to update the version number. You can simply fix this by increasing the version number.");
                                }
                            } catch (Throwable th) {
                                a3.close();
                                throw th;
                            }
                        } else {
                            h.b b = hVar.f917c.b(a);
                            if (!b.a) {
                                StringBuilder a4 = e.a.a.a.a.a("Pre-packaged database has an invalid schema: ");
                                a4.append(b.b);
                                throw new IllegalStateException(a4.toString());
                            } else if (((u) hVar.f917c) != null) {
                                hVar.a(a);
                            } else {
                                throw null;
                            }
                        }
                        u uVar = (u) hVar.f917c;
                        b unused = uVar.b.a = a;
                        uVar.b.f902d.a((b) a);
                        List<g.b> list = uVar.b.f905g;
                        if (list != null) {
                            int size = list.size();
                            for (int i2 = 0; i2 < size; i2++) {
                                uVar.b.f905g.get(i2).c();
                            }
                        }
                        hVar.b = null;
                    } finally {
                        a2.close();
                    }
                } else {
                    throw null;
                }
            }
        }

        public void onUpgrade(SQLiteDatabase sQLiteDatabase, int i2, int i3) {
            this.z = true;
            this.y.a(a(this.x, sQLiteDatabase), i2, i3);
        }

        public a a(SQLiteDatabase sQLiteDatabase) {
            return a(this.x, sQLiteDatabase);
        }

        /* JADX WARNING: Code restructure failed: missing block: B:6:0x000c, code lost:
            if ((r1.x == r3) == false) goto L_0x000e;
         */
        /* Code decompiled incorrectly, please refer to instructions dump. */
        public static d.w.a.f.a a(d.w.a.f.a[] r2, android.database.sqlite.SQLiteDatabase r3) {
            /*
                r0 = 0
                r1 = r2[r0]
                if (r1 == 0) goto L_0x000e
                android.database.sqlite.SQLiteDatabase r1 = r1.x
                if (r1 != r3) goto L_0x000b
                r1 = 1
                goto L_0x000c
            L_0x000b:
                r1 = 0
            L_0x000c:
                if (r1 != 0) goto L_0x0015
            L_0x000e:
                d.w.a.f.a r1 = new d.w.a.f.a
                r1.<init>(r3)
                r2[r0] = r1
            L_0x0015:
                r2 = r2[r0]
                return r2
            */
            throw new UnsupportedOperationException("Method not decompiled: d.w.a.f.c.a.a(d.w.a.f.a[], android.database.sqlite.SQLiteDatabase):d.w.a.f.a");
        }
    }
}
