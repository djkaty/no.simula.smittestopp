package d.u;

import d.w.a.c;

public class h extends c.a {
    public a b;

    /* renamed from: c  reason: collision with root package name */
    public final a f917c;

    /* renamed from: d  reason: collision with root package name */
    public final String f918d;

    /* renamed from: e  reason: collision with root package name */
    public final String f919e;

    public static abstract class a {
        public final int a;

        public a(int i2) {
            this.a = i2;
        }

        public abstract void a(d.w.a.b bVar);

        public abstract b b(d.w.a.b bVar);
    }

    public static class b {
        public final boolean a;
        public final String b;

        public b(boolean z, String str) {
            this.a = z;
            this.b = str;
        }
    }

    public h(a aVar, a aVar2, String str, String str2) {
        super(aVar2.a);
        this.b = aVar;
        this.f917c = aVar2;
        this.f918d = str;
        this.f919e = str2;
    }

    /* JADX INFO: finally extract failed */
    /* JADX WARNING: Code restructure failed: missing block: B:35:0x0079, code lost:
        r0 = r5;
     */
    /* JADX WARNING: Removed duplicated region for block: B:69:0x010d  */
    /* JADX WARNING: Removed duplicated region for block: B:99:? A[ORIG_RETURN, RETURN, SYNTHETIC] */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public void a(d.w.a.b r12, int r13, int r14) {
        /*
            r11 = this;
            d.u.a r0 = r11.b
            r1 = 0
            r2 = 1
            r3 = 0
            if (r0 == 0) goto L_0x010a
            d.u.g$d r0 = r0.f868d
            if (r0 == 0) goto L_0x0109
            if (r13 != r14) goto L_0x0013
            java.util.List r0 = java.util.Collections.emptyList()
            goto L_0x007a
        L_0x0013:
            if (r14 <= r13) goto L_0x0017
            r4 = 1
            goto L_0x0018
        L_0x0017:
            r4 = 0
        L_0x0018:
            java.util.ArrayList r5 = new java.util.ArrayList
            r5.<init>()
            r6 = r13
        L_0x001e:
            if (r4 == 0) goto L_0x0023
            if (r6 >= r14) goto L_0x0079
            goto L_0x0025
        L_0x0023:
            if (r6 <= r14) goto L_0x0079
        L_0x0025:
            java.util.HashMap<java.lang.Integer, java.util.TreeMap<java.lang.Integer, d.u.l.a>> r7 = r0.a
            java.lang.Integer r8 = java.lang.Integer.valueOf(r6)
            java.lang.Object r7 = r7.get(r8)
            java.util.TreeMap r7 = (java.util.TreeMap) r7
            if (r7 != 0) goto L_0x0034
            goto L_0x0075
        L_0x0034:
            if (r4 == 0) goto L_0x003b
            java.util.NavigableSet r8 = r7.descendingKeySet()
            goto L_0x003f
        L_0x003b:
            java.util.Set r8 = r7.keySet()
        L_0x003f:
            java.util.Iterator r8 = r8.iterator()
        L_0x0043:
            boolean r9 = r8.hasNext()
            if (r9 == 0) goto L_0x0070
            java.lang.Object r9 = r8.next()
            java.lang.Integer r9 = (java.lang.Integer) r9
            int r9 = r9.intValue()
            if (r4 == 0) goto L_0x005a
            if (r9 > r14) goto L_0x0060
            if (r9 <= r6) goto L_0x0060
            goto L_0x005e
        L_0x005a:
            if (r9 < r14) goto L_0x0060
            if (r9 >= r6) goto L_0x0060
        L_0x005e:
            r10 = 1
            goto L_0x0061
        L_0x0060:
            r10 = 0
        L_0x0061:
            if (r10 == 0) goto L_0x0043
            java.lang.Integer r6 = java.lang.Integer.valueOf(r9)
            java.lang.Object r6 = r7.get(r6)
            r5.add(r6)
            r6 = 1
            goto L_0x0073
        L_0x0070:
            r7 = 0
            r9 = r6
            r6 = 0
        L_0x0073:
            if (r6 != 0) goto L_0x0077
        L_0x0075:
            r0 = r3
            goto L_0x007a
        L_0x0077:
            r6 = r9
            goto L_0x001e
        L_0x0079:
            r0 = r5
        L_0x007a:
            if (r0 == 0) goto L_0x010a
            d.u.h$a r4 = r11.f917c
            j.b.a.u r4 = (j.b.a.u) r4
            if (r4 == 0) goto L_0x0108
            java.util.ArrayList r4 = new java.util.ArrayList
            r4.<init>()
            r5 = r12
            d.w.a.f.a r5 = (d.w.a.f.a) r5
            java.lang.String r6 = "SELECT name FROM sqlite_master WHERE type = 'trigger'"
            android.database.Cursor r6 = r5.a((java.lang.String) r6)
        L_0x0090:
            boolean r7 = r6.moveToNext()     // Catch:{ all -> 0x0103 }
            if (r7 == 0) goto L_0x009e
            java.lang.String r7 = r6.getString(r1)     // Catch:{ all -> 0x0103 }
            r4.add(r7)     // Catch:{ all -> 0x0103 }
            goto L_0x0090
        L_0x009e:
            r6.close()
            java.util.Iterator r4 = r4.iterator()
        L_0x00a5:
            boolean r6 = r4.hasNext()
            if (r6 == 0) goto L_0x00c5
            java.lang.Object r6 = r4.next()
            java.lang.String r6 = (java.lang.String) r6
            java.lang.String r7 = "room_fts_content_sync_"
            boolean r7 = r6.startsWith(r7)
            if (r7 == 0) goto L_0x00a5
            java.lang.String r7 = "DROP TRIGGER IF EXISTS "
            java.lang.String r6 = e.a.a.a.a.b(r7, r6)
            android.database.sqlite.SQLiteDatabase r7 = r5.x
            r7.execSQL(r6)
            goto L_0x00a5
        L_0x00c5:
            java.util.Iterator r0 = r0.iterator()
        L_0x00c9:
            boolean r4 = r0.hasNext()
            if (r4 == 0) goto L_0x00d9
            java.lang.Object r4 = r0.next()
            d.u.l.a r4 = (d.u.l.a) r4
            r4.a(r12)
            goto L_0x00c9
        L_0x00d9:
            d.u.h$a r0 = r11.f917c
            d.u.h$b r0 = r0.b(r12)
            boolean r4 = r0.a
            if (r4 == 0) goto L_0x00ee
            d.u.h$a r0 = r11.f917c
            j.b.a.u r0 = (j.b.a.u) r0
            if (r0 == 0) goto L_0x00ed
            r11.a(r12)
            goto L_0x010b
        L_0x00ed:
            throw r3
        L_0x00ee:
            java.lang.IllegalStateException r12 = new java.lang.IllegalStateException
            java.lang.String r13 = "Migration didn't properly handle: "
            java.lang.StringBuilder r13 = e.a.a.a.a.a(r13)
            java.lang.String r14 = r0.b
            r13.append(r14)
            java.lang.String r13 = r13.toString()
            r12.<init>(r13)
            throw r12
        L_0x0103:
            r12 = move-exception
            r6.close()
            throw r12
        L_0x0108:
            throw r3
        L_0x0109:
            throw r3
        L_0x010a:
            r2 = 0
        L_0x010b:
            if (r2 != 0) goto L_0x017b
            d.u.a r0 = r11.b
            if (r0 == 0) goto L_0x0157
            boolean r0 = r0.a(r13, r14)
            if (r0 != 0) goto L_0x0157
            d.u.h$a r13 = r11.f917c
            j.b.a.u r13 = (j.b.a.u) r13
            if (r13 == 0) goto L_0x0156
            r14 = r12
            d.w.a.f.a r14 = (d.w.a.f.a) r14
            android.database.sqlite.SQLiteDatabase r0 = r14.x
            java.lang.String r2 = "DROP TABLE IF EXISTS `Measurement`"
            r0.execSQL(r2)
            android.database.sqlite.SQLiteDatabase r14 = r14.x
            java.lang.String r0 = "DROP TABLE IF EXISTS `BluetoothContact`"
            r14.execSQL(r0)
            no.simula.corona.MeasurementDatabase_Impl r14 = r13.b
            java.util.List r14 = r14.f905g
            if (r14 == 0) goto L_0x0150
            no.simula.corona.MeasurementDatabase_Impl r14 = r13.b
            java.util.List<d.u.g$b> r14 = r14.f905g
            int r14 = r14.size()
        L_0x013e:
            if (r1 >= r14) goto L_0x0150
            no.simula.corona.MeasurementDatabase_Impl r0 = r13.b
            java.util.List<d.u.g$b> r0 = r0.f905g
            java.lang.Object r0 = r0.get(r1)
            d.u.g$b r0 = (d.u.g.b) r0
            r0.b()
            int r1 = r1 + 1
            goto L_0x013e
        L_0x0150:
            d.u.h$a r13 = r11.f917c
            r13.a(r12)
            goto L_0x017b
        L_0x0156:
            throw r3
        L_0x0157:
            java.lang.IllegalStateException r12 = new java.lang.IllegalStateException
            java.lang.StringBuilder r0 = new java.lang.StringBuilder
            r0.<init>()
            java.lang.String r1 = "A migration from "
            r0.append(r1)
            r0.append(r13)
            java.lang.String r13 = " to "
            r0.append(r13)
            r0.append(r14)
            java.lang.String r13 = " was required but not found. Please provide the necessary Migration path via RoomDatabase.Builder.addMigration(Migration ...) or allow for destructive migrations via one of the RoomDatabase.Builder.fallbackToDestructiveMigration* methods."
            r0.append(r13)
            java.lang.String r13 = r0.toString()
            r12.<init>(r13)
            throw r12
        L_0x017b:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: d.u.h.a(d.w.a.b, int, int):void");
    }

    public final void a(d.w.a.b bVar) {
        d.w.a.f.a aVar = (d.w.a.f.a) bVar;
        aVar.x.execSQL("CREATE TABLE IF NOT EXISTS room_master_table (id INTEGER PRIMARY KEY,identity_hash TEXT)");
        aVar.x.execSQL(e.a.a.a.a.a("INSERT OR REPLACE INTO room_master_table (id,identity_hash) VALUES(42, '", this.f918d, "')"));
    }
}
