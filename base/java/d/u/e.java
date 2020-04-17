package d.u;

import android.annotation.SuppressLint;
import android.database.Cursor;
import android.database.sqlite.SQLiteException;
import android.os.CancellationSignal;
import android.util.Log;
import com.microsoft.appcenter.AbstractAppCenterService;
import d.c.a.b.b;
import d.u.f;
import d.w.a.f.f;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.IdentityHashMap;
import java.util.Iterator;
import java.util.Locale;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.locks.ReentrantReadWriteLock;

public class e {

    /* renamed from: k  reason: collision with root package name */
    public static final String[] f877k = {"UPDATE", "DELETE", "INSERT"};
    public final HashMap<String, Integer> a;
    public final String[] b;

    /* renamed from: c  reason: collision with root package name */
    public Map<String, Set<String>> f878c;

    /* renamed from: d  reason: collision with root package name */
    public final g f879d;

    /* renamed from: e  reason: collision with root package name */
    public AtomicBoolean f880e = new AtomicBoolean(false);

    /* renamed from: f  reason: collision with root package name */
    public volatile boolean f881f = false;

    /* renamed from: g  reason: collision with root package name */
    public volatile f f882g;

    /* renamed from: h  reason: collision with root package name */
    public b f883h;
    @SuppressLint({"RestrictedApi"})

    /* renamed from: i  reason: collision with root package name */
    public final d.c.a.b.b<c, d> f884i = new d.c.a.b.b<>();

    /* renamed from: j  reason: collision with root package name */
    public Runnable f885j = new a();

    public class a implements Runnable {
        public a() {
        }

        /* JADX INFO: finally extract failed */
        public final Set<Integer> a() {
            HashSet hashSet = new HashSet();
            Cursor a = e.this.f879d.a(new d.w.a.a("SELECT * FROM room_table_modification_log WHERE invalidated = 1;"), (CancellationSignal) null);
            while (a.moveToNext()) {
                try {
                    hashSet.add(Integer.valueOf(a.getInt(0)));
                } catch (Throwable th) {
                    a.close();
                    throw th;
                }
            }
            a.close();
            if (!hashSet.isEmpty()) {
                e.this.f882g.a();
            }
            return hashSet;
        }

        /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r5v6, resolved type: android.database.sqlite.SQLiteDatabase} */
        /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r5v7, resolved type: java.util.Set<java.lang.Integer>} */
        /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r5v12, resolved type: java.util.Set<java.lang.Integer>} */
        /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r5v14, resolved type: java.util.Set<java.lang.Integer>} */
        /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r5v15, resolved type: java.util.Set<java.lang.Integer>} */
        /* JADX WARNING: Multi-variable type inference failed */
        /* JADX WARNING: Removed duplicated region for block: B:46:0x0094  */
        /* JADX WARNING: Removed duplicated region for block: B:82:? A[RETURN, SYNTHETIC] */
        /* Code decompiled incorrectly, please refer to instructions dump. */
        public void run() {
            /*
                r11 = this;
                d.u.e r0 = d.u.e.this
                d.u.g r0 = r0.f879d
                java.util.concurrent.locks.ReentrantReadWriteLock r0 = r0.f906h
                java.util.concurrent.locks.ReentrantReadWriteLock$ReadLock r0 = r0.readLock()
                r1 = 1
                r2 = 0
                r3 = 0
                r0.lock()     // Catch:{ IllegalStateException -> 0x0080, SQLiteException -> 0x007e }
                d.u.e r4 = d.u.e.this     // Catch:{ IllegalStateException -> 0x0080, SQLiteException -> 0x007e }
                boolean r4 = r4.a()     // Catch:{ IllegalStateException -> 0x0080, SQLiteException -> 0x007e }
                if (r4 != 0) goto L_0x001c
                r0.unlock()
                return
            L_0x001c:
                d.u.e r4 = d.u.e.this     // Catch:{ IllegalStateException -> 0x0080, SQLiteException -> 0x007e }
                java.util.concurrent.atomic.AtomicBoolean r4 = r4.f880e     // Catch:{ IllegalStateException -> 0x0080, SQLiteException -> 0x007e }
                boolean r4 = r4.compareAndSet(r1, r2)     // Catch:{ IllegalStateException -> 0x0080, SQLiteException -> 0x007e }
                if (r4 != 0) goto L_0x002a
                r0.unlock()
                return
            L_0x002a:
                d.u.e r4 = d.u.e.this     // Catch:{ IllegalStateException -> 0x0080, SQLiteException -> 0x007e }
                d.u.g r4 = r4.f879d     // Catch:{ IllegalStateException -> 0x0080, SQLiteException -> 0x007e }
                boolean r4 = r4.e()     // Catch:{ IllegalStateException -> 0x0080, SQLiteException -> 0x007e }
                if (r4 == 0) goto L_0x0038
                r0.unlock()
                return
            L_0x0038:
                d.u.e r4 = d.u.e.this     // Catch:{ IllegalStateException -> 0x0080, SQLiteException -> 0x007e }
                d.u.g r4 = r4.f879d     // Catch:{ IllegalStateException -> 0x0080, SQLiteException -> 0x007e }
                boolean r4 = r4.f904f     // Catch:{ IllegalStateException -> 0x0080, SQLiteException -> 0x007e }
                if (r4 == 0) goto L_0x0076
                d.u.e r4 = d.u.e.this     // Catch:{ IllegalStateException -> 0x0080, SQLiteException -> 0x007e }
                d.u.g r4 = r4.f879d     // Catch:{ IllegalStateException -> 0x0080, SQLiteException -> 0x007e }
                d.w.a.c r4 = r4.f901c     // Catch:{ IllegalStateException -> 0x0080, SQLiteException -> 0x007e }
                d.w.a.b r4 = r4.a()     // Catch:{ IllegalStateException -> 0x0080, SQLiteException -> 0x007e }
                r5 = r4
                d.w.a.f.a r5 = (d.w.a.f.a) r5     // Catch:{ IllegalStateException -> 0x0080, SQLiteException -> 0x007e }
                android.database.sqlite.SQLiteDatabase r5 = r5.x     // Catch:{ IllegalStateException -> 0x0080, SQLiteException -> 0x007e }
                r5.beginTransaction()     // Catch:{ IllegalStateException -> 0x0080, SQLiteException -> 0x007e }
                java.util.Set r5 = r11.a()     // Catch:{ all -> 0x0068 }
                r6 = r4
                d.w.a.f.a r6 = (d.w.a.f.a) r6     // Catch:{ all -> 0x0066 }
                android.database.sqlite.SQLiteDatabase r6 = r6.x     // Catch:{ all -> 0x0066 }
                r6.setTransactionSuccessful()     // Catch:{ all -> 0x0066 }
                d.w.a.f.a r4 = (d.w.a.f.a) r4     // Catch:{ IllegalStateException -> 0x0074, SQLiteException -> 0x0072 }
                android.database.sqlite.SQLiteDatabase r4 = r4.x     // Catch:{ IllegalStateException -> 0x0074, SQLiteException -> 0x0072 }
                r4.endTransaction()     // Catch:{ IllegalStateException -> 0x0074, SQLiteException -> 0x0072 }
                goto L_0x0089
            L_0x0066:
                r6 = move-exception
                goto L_0x006a
            L_0x0068:
                r6 = move-exception
                r5 = r3
            L_0x006a:
                d.w.a.f.a r4 = (d.w.a.f.a) r4     // Catch:{ IllegalStateException -> 0x0074, SQLiteException -> 0x0072 }
                android.database.sqlite.SQLiteDatabase r4 = r4.x     // Catch:{ IllegalStateException -> 0x0074, SQLiteException -> 0x0072 }
                r4.endTransaction()     // Catch:{ IllegalStateException -> 0x0074, SQLiteException -> 0x0072 }
                throw r6     // Catch:{ IllegalStateException -> 0x0074, SQLiteException -> 0x0072 }
            L_0x0072:
                r4 = move-exception
                goto L_0x0082
            L_0x0074:
                r4 = move-exception
                goto L_0x0082
            L_0x0076:
                java.util.Set r5 = r11.a()     // Catch:{ IllegalStateException -> 0x0080, SQLiteException -> 0x007e }
                goto L_0x0089
            L_0x007b:
                r1 = move-exception
                goto L_0x00ef
            L_0x007e:
                r4 = move-exception
                goto L_0x0081
            L_0x0080:
                r4 = move-exception
            L_0x0081:
                r5 = r3
            L_0x0082:
                java.lang.String r6 = "ROOM"
                java.lang.String r7 = "Cannot run invalidation tracker. Is the db closed?"
                android.util.Log.e(r6, r7, r4)     // Catch:{ all -> 0x007b }
            L_0x0089:
                r0.unlock()
                if (r5 == 0) goto L_0x00ee
                boolean r0 = r5.isEmpty()
                if (r0 != 0) goto L_0x00ee
                d.u.e r0 = d.u.e.this
                d.c.a.b.b<d.u.e$c, d.u.e$d> r0 = r0.f884i
                monitor-enter(r0)
                d.u.e r4 = d.u.e.this     // Catch:{ all -> 0x00eb }
                d.c.a.b.b<d.u.e$c, d.u.e$d> r4 = r4.f884i     // Catch:{ all -> 0x00eb }
                java.util.Iterator r4 = r4.iterator()     // Catch:{ all -> 0x00eb }
            L_0x00a1:
                r6 = r4
                d.c.a.b.b$e r6 = (d.c.a.b.b.e) r6
                boolean r7 = r6.hasNext()     // Catch:{ all -> 0x00eb }
                if (r7 == 0) goto L_0x00e9
                java.lang.Object r6 = r6.next()     // Catch:{ all -> 0x00eb }
                java.util.Map$Entry r6 = (java.util.Map.Entry) r6     // Catch:{ all -> 0x00eb }
                java.lang.Object r6 = r6.getValue()     // Catch:{ all -> 0x00eb }
                d.u.e$d r6 = (d.u.e.d) r6     // Catch:{ all -> 0x00eb }
                int[] r7 = r6.a     // Catch:{ all -> 0x00eb }
                int r7 = r7.length     // Catch:{ all -> 0x00eb }
                r9 = r3
                r8 = 0
            L_0x00bb:
                if (r8 >= r7) goto L_0x00e1
                int[] r10 = r6.a     // Catch:{ all -> 0x00eb }
                r10 = r10[r8]     // Catch:{ all -> 0x00eb }
                java.lang.Integer r10 = java.lang.Integer.valueOf(r10)     // Catch:{ all -> 0x00eb }
                boolean r10 = r5.contains(r10)     // Catch:{ all -> 0x00eb }
                if (r10 == 0) goto L_0x00de
                if (r7 != r1) goto L_0x00d0
                java.util.Set<java.lang.String> r9 = r6.f890d     // Catch:{ all -> 0x00eb }
                goto L_0x00de
            L_0x00d0:
                if (r9 != 0) goto L_0x00d7
                java.util.HashSet r9 = new java.util.HashSet     // Catch:{ all -> 0x00eb }
                r9.<init>(r7)     // Catch:{ all -> 0x00eb }
            L_0x00d7:
                java.lang.String[] r10 = r6.b     // Catch:{ all -> 0x00eb }
                r10 = r10[r8]     // Catch:{ all -> 0x00eb }
                r9.add(r10)     // Catch:{ all -> 0x00eb }
            L_0x00de:
                int r8 = r8 + 1
                goto L_0x00bb
            L_0x00e1:
                if (r9 == 0) goto L_0x00a1
                d.u.e$c r6 = r6.f889c     // Catch:{ all -> 0x00eb }
                r6.a(r9)     // Catch:{ all -> 0x00eb }
                goto L_0x00a1
            L_0x00e9:
                monitor-exit(r0)     // Catch:{ all -> 0x00eb }
                goto L_0x00ee
            L_0x00eb:
                r1 = move-exception
                monitor-exit(r0)     // Catch:{ all -> 0x00eb }
                throw r1
            L_0x00ee:
                return
            L_0x00ef:
                r0.unlock()
                throw r1
            */
            throw new UnsupportedOperationException("Method not decompiled: d.u.e.a.run():void");
        }
    }

    public static abstract class c {
        public final String[] a;

        public c(String[] strArr) {
            this.a = (String[]) Arrays.copyOf(strArr, strArr.length);
        }

        public abstract void a(Set<String> set);
    }

    public static class d {
        public final int[] a;
        public final String[] b;

        /* renamed from: c  reason: collision with root package name */
        public final c f889c;

        /* renamed from: d  reason: collision with root package name */
        public final Set<String> f890d;

        public d(c cVar, int[] iArr, String[] strArr) {
            this.f889c = cVar;
            this.a = iArr;
            this.b = strArr;
            if (iArr.length == 1) {
                HashSet hashSet = new HashSet();
                hashSet.add(this.b[0]);
                this.f890d = Collections.unmodifiableSet(hashSet);
                return;
            }
            this.f890d = null;
        }
    }

    public e(g gVar, Map<String, String> map, Map<String, Set<String>> map2, String... strArr) {
        this.f879d = gVar;
        this.f883h = new b(strArr.length);
        this.a = new HashMap<>();
        this.f878c = map2;
        Collections.newSetFromMap(new IdentityHashMap());
        int length = strArr.length;
        this.b = new String[length];
        for (int i2 = 0; i2 < length; i2++) {
            String lowerCase = strArr[i2].toLowerCase(Locale.US);
            this.a.put(lowerCase, Integer.valueOf(i2));
            String str = map.get(strArr[i2]);
            if (str != null) {
                this.b[i2] = str.toLowerCase(Locale.US);
            } else {
                this.b[i2] = lowerCase;
            }
        }
        for (Map.Entry next : map.entrySet()) {
            String lowerCase2 = ((String) next.getValue()).toLowerCase(Locale.US);
            if (this.a.containsKey(lowerCase2)) {
                String lowerCase3 = ((String) next.getKey()).toLowerCase(Locale.US);
                HashMap<String, Integer> hashMap = this.a;
                hashMap.put(lowerCase3, hashMap.get(lowerCase2));
            }
        }
    }

    public void a(d.w.a.b bVar) {
        synchronized (this) {
            if (this.f881f) {
                Log.e("ROOM", "Invalidation tracker is initialized twice :/.");
                return;
            }
            ((d.w.a.f.a) bVar).x.execSQL("PRAGMA temp_store = MEMORY;");
            ((d.w.a.f.a) bVar).x.execSQL("PRAGMA recursive_triggers='ON';");
            ((d.w.a.f.a) bVar).x.execSQL("CREATE TEMP TABLE room_table_modification_log(table_id INTEGER PRIMARY KEY, invalidated INTEGER NOT NULL DEFAULT 0)");
            b(bVar);
            this.f882g = new f(((d.w.a.f.a) bVar).x.compileStatement("UPDATE room_table_modification_log SET invalidated = 0 WHERE invalidated = 1 "));
            this.f881f = true;
        }
    }

    public final void b(d.w.a.b bVar, int i2) {
        String str = this.b[i2];
        StringBuilder sb = new StringBuilder();
        for (String append : f877k) {
            sb.setLength(0);
            sb.append("DROP TRIGGER IF EXISTS ");
            sb.append("`");
            sb.append("room_table_modification_trigger_");
            sb.append(str);
            sb.append(AbstractAppCenterService.PREFERENCE_KEY_SEPARATOR);
            sb.append(append);
            sb.append("`");
            ((d.w.a.f.a) bVar).x.execSQL(sb.toString());
        }
    }

    public static class b {
        public final long[] a;
        public final boolean[] b;

        /* renamed from: c  reason: collision with root package name */
        public final int[] f886c;

        /* renamed from: d  reason: collision with root package name */
        public boolean f887d;

        /* renamed from: e  reason: collision with root package name */
        public boolean f888e;

        public b(int i2) {
            long[] jArr = new long[i2];
            this.a = jArr;
            this.b = new boolean[i2];
            this.f886c = new int[i2];
            Arrays.fill(jArr, 0);
            Arrays.fill(this.b, false);
        }

        public boolean a(int... iArr) {
            boolean z;
            synchronized (this) {
                z = false;
                for (int i2 : iArr) {
                    long j2 = this.a[i2];
                    this.a[i2] = 1 + j2;
                    if (j2 == 0) {
                        this.f887d = true;
                        z = true;
                    }
                }
            }
            return z;
        }

        public boolean b(int... iArr) {
            boolean z;
            synchronized (this) {
                z = false;
                for (int i2 : iArr) {
                    long j2 = this.a[i2];
                    this.a[i2] = j2 - 1;
                    if (j2 == 1) {
                        this.f887d = true;
                        z = true;
                    }
                }
            }
            return z;
        }

        public int[] a() {
            synchronized (this) {
                if (this.f887d) {
                    if (!this.f888e) {
                        int length = this.a.length;
                        int i2 = 0;
                        while (true) {
                            int i3 = 1;
                            if (i2 < length) {
                                boolean z = this.a[i2] > 0;
                                if (z != this.b[i2]) {
                                    int[] iArr = this.f886c;
                                    if (!z) {
                                        i3 = 2;
                                    }
                                    iArr[i2] = i3;
                                } else {
                                    this.f886c[i2] = 0;
                                }
                                this.b[i2] = z;
                                i2++;
                            } else {
                                this.f888e = true;
                                this.f887d = false;
                                int[] iArr2 = this.f886c;
                                return iArr2;
                            }
                        }
                    }
                }
                return null;
            }
        }

        public void b() {
            synchronized (this) {
                this.f888e = false;
            }
        }
    }

    @SuppressLint({"RestrictedApi"})
    public void b(c cVar) {
        d remove;
        synchronized (this.f884i) {
            remove = this.f884i.remove(cVar);
        }
        if (remove != null && this.f883h.b(remove.a)) {
            b();
        }
    }

    public final void a(d.w.a.b bVar, int i2) {
        d.w.a.f.a aVar = (d.w.a.f.a) bVar;
        aVar.x.execSQL(e.a.a.a.a.b("INSERT OR IGNORE INTO room_table_modification_log VALUES(", i2, ", 0)"));
        String str = this.b[i2];
        StringBuilder sb = new StringBuilder();
        for (String str2 : f877k) {
            sb.setLength(0);
            sb.append("CREATE TEMP TRIGGER IF NOT EXISTS ");
            sb.append("`");
            sb.append("room_table_modification_trigger_");
            sb.append(str);
            sb.append(AbstractAppCenterService.PREFERENCE_KEY_SEPARATOR);
            sb.append(str2);
            sb.append("`");
            sb.append(" AFTER ");
            sb.append(str2);
            sb.append(" ON `");
            sb.append(str);
            sb.append("` BEGIN UPDATE ");
            sb.append("room_table_modification_log");
            sb.append(" SET ");
            sb.append("invalidated");
            sb.append(" = 1");
            sb.append(" WHERE ");
            sb.append("table_id");
            sb.append(" = ");
            sb.append(i2);
            sb.append(" AND ");
            sb.append("invalidated");
            sb.append(" = 0");
            sb.append("; END");
            aVar.x.execSQL(sb.toString());
        }
    }

    public void b(d.w.a.b bVar) {
        if (!((d.w.a.f.a) bVar).x.inTransaction()) {
            while (true) {
                try {
                    ReentrantReadWriteLock.ReadLock readLock = this.f879d.f906h.readLock();
                    readLock.lock();
                    try {
                        int[] a2 = this.f883h.a();
                        if (a2 == null) {
                            readLock.unlock();
                            return;
                        }
                        int length = a2.length;
                        ((d.w.a.f.a) bVar).x.beginTransaction();
                        for (int i2 = 0; i2 < length; i2++) {
                            int i3 = a2[i2];
                            if (i3 == 1) {
                                a(bVar, i2);
                            } else if (i3 == 2) {
                                b(bVar, i2);
                            }
                        }
                        ((d.w.a.f.a) bVar).x.setTransactionSuccessful();
                        ((d.w.a.f.a) bVar).x.endTransaction();
                        this.f883h.b();
                        readLock.unlock();
                    } catch (Throwable th) {
                        readLock.unlock();
                        throw th;
                    }
                } catch (SQLiteException | IllegalStateException e2) {
                    Log.e("ROOM", "Cannot run invalidation tracker. Is the db closed?", e2);
                    return;
                }
            }
        }
    }

    @SuppressLint({"RestrictedApi"})
    public void a(c cVar) {
        d b2;
        String[] strArr = cVar.a;
        HashSet hashSet = new HashSet();
        int i2 = 0;
        for (String str : strArr) {
            String lowerCase = str.toLowerCase(Locale.US);
            if (this.f878c.containsKey(lowerCase)) {
                hashSet.addAll(this.f878c.get(lowerCase));
            } else {
                hashSet.add(str);
            }
        }
        String[] strArr2 = (String[]) hashSet.toArray(new String[hashSet.size()]);
        int[] iArr = new int[strArr2.length];
        int length = strArr2.length;
        while (i2 < length) {
            Integer num = this.a.get(strArr2[i2].toLowerCase(Locale.US));
            if (num != null) {
                iArr[i2] = num.intValue();
                i2++;
            } else {
                StringBuilder a2 = e.a.a.a.a.a("There is no table with name ");
                a2.append(strArr2[i2]);
                throw new IllegalArgumentException(a2.toString());
            }
        }
        d dVar = new d(cVar, iArr, strArr2);
        synchronized (this.f884i) {
            b2 = this.f884i.b(cVar, dVar);
        }
        if (b2 == null && this.f883h.a(iArr)) {
            b();
        }
    }

    public void b() {
        if (this.f879d.f()) {
            b(this.f879d.f901c.a());
        }
    }

    public boolean a() {
        if (!this.f879d.f()) {
            return false;
        }
        if (!this.f881f) {
            this.f879d.f901c.a();
        }
        if (this.f881f) {
            return true;
        }
        Log.e("ROOM", "database is not initialized even though it is open");
        return false;
    }

    public void a(String... strArr) {
        synchronized (this.f884i) {
            Iterator<Map.Entry<c, d>> it = this.f884i.iterator();
            while (true) {
                b.e eVar = (b.e) it;
                if (eVar.hasNext()) {
                    if (((f.e) ((c) ((Map.Entry) eVar.next()).getKey())) == null) {
                        throw null;
                    }
                }
            }
        }
    }
}
