package j.b.a;

import android.content.Context;
import android.os.AsyncTask;
import com.microsoft.appcenter.crashes.Crashes;
import com.microsoft.appcenter.crashes.ingestion.models.ErrorAttachmentLog;
import com.microsoft.identity.client.PublicClientApplication;
import h.k.b.g;
import java.util.LinkedHashMap;
import no.simula.corona.MeasurementDatabase;

public final class f extends AsyncTask<Object, Object, p> {
    public final MeasurementDatabase a;
    public Context b;

    /* renamed from: c  reason: collision with root package name */
    public e f1508c;

    public f(Context context, e eVar) {
        if (context == null) {
            g.a(PublicClientApplication.NONNULL_CONSTANTS.CONTEXT);
            throw null;
        } else if (eVar != null) {
            this.b = context;
            this.f1508c = eVar;
            this.a = MeasurementDatabase.f2458k.a(context);
        } else {
            g.a("callbackListener");
            throw null;
        }
    }

    public final boolean a() {
        return getStatus() == AsyncTask.Status.RUNNING || getStatus() == AsyncTask.Status.PENDING;
    }

    /* JADX INFO: finally extract failed */
    /* JADX WARNING: Removed duplicated region for block: B:149:0x0257 A[SYNTHETIC] */
    /* JADX WARNING: Removed duplicated region for block: B:94:0x0248  */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public final j.b.a.p b() {
        /*
            r30 = this;
            r1 = r30
            java.lang.String r0 = "isUploaded"
            java.lang.String r2 = "timestamp"
            java.lang.String r3 = "id"
            no.simula.corona.MeasurementDatabase r4 = r1.a
            j.b.a.s r4 = r4.i()
            j.b.a.t r4 = (j.b.a.t) r4
            d.u.g r5 = r4.a
            r5.b()
            d.u.k r5 = r4.f1527c
            d.w.a.f.f r5 = r5.a()
            d.u.g r6 = r4.a
            r6.c()
            r5.a()     // Catch:{ all -> 0x03be }
            d.u.g r6 = r4.a     // Catch:{ all -> 0x03be }
            r6.g()     // Catch:{ all -> 0x03be }
            d.u.g r6 = r4.a
            r6.d()
            d.u.k r4 = r4.f1527c
            d.w.a.f.f r6 = r4.f925c
            r7 = 0
            if (r5 != r6) goto L_0x0039
            java.util.concurrent.atomic.AtomicBoolean r4 = r4.a
            r4.set(r7)
        L_0x0039:
            no.simula.corona.MeasurementDatabase r4 = r1.a
            j.b.a.b r4 = r4.h()
            j.b.a.c r4 = (j.b.a.c) r4
            d.u.g r5 = r4.a
            r5.b()
            d.u.k r5 = r4.f1506c
            d.w.a.f.f r5 = r5.a()
            d.u.g r6 = r4.a
            r6.c()
            r5.a()     // Catch:{ all -> 0x03b2 }
            d.u.g r6 = r4.a     // Catch:{ all -> 0x03b2 }
            r6.g()     // Catch:{ all -> 0x03b2 }
            d.u.g r6 = r4.a
            r6.d()
            d.u.k r4 = r4.f1506c
            d.w.a.f.f r6 = r4.f925c
            if (r5 != r6) goto L_0x0069
            java.util.concurrent.atomic.AtomicBoolean r4 = r4.a
            r4.set(r7)
        L_0x0069:
            j.b.a.n r4 = new j.b.a.n
            r4.<init>()
            no.simula.corona.MeasurementDatabase r5 = r1.a
            j.b.a.s r5 = r5.i()
            j.b.a.t r5 = (j.b.a.t) r5
            r6 = 0
            if (r5 == 0) goto L_0x03b1
            java.lang.String r8 = "SELECT * from measurement WHERE isUploaded is 0"
            d.u.i r8 = d.u.i.a(r8, r7)
            d.u.g r9 = r5.a
            r9.b()
            d.u.g r5 = r5.a
            android.database.Cursor r5 = d.u.m.b.a(r5, r8, r7, r6)
            int r6 = d.b.a.r.a((android.database.Cursor) r5, (java.lang.String) r3)     // Catch:{ all -> 0x03a9 }
            int r7 = d.b.a.r.a((android.database.Cursor) r5, (java.lang.String) r2)     // Catch:{ all -> 0x03a9 }
            java.lang.String r9 = "latitude"
            int r9 = d.b.a.r.a((android.database.Cursor) r5, (java.lang.String) r9)     // Catch:{ all -> 0x03a9 }
            java.lang.String r10 = "longitude"
            int r10 = d.b.a.r.a((android.database.Cursor) r5, (java.lang.String) r10)     // Catch:{ all -> 0x03a9 }
            java.lang.String r11 = "latLongAccuracy"
            int r11 = d.b.a.r.a((android.database.Cursor) r5, (java.lang.String) r11)     // Catch:{ all -> 0x03a9 }
            java.lang.String r12 = "altitude"
            int r12 = d.b.a.r.a((android.database.Cursor) r5, (java.lang.String) r12)     // Catch:{ all -> 0x03a9 }
            java.lang.String r13 = "altitudeAccuracy"
            int r13 = d.b.a.r.a((android.database.Cursor) r5, (java.lang.String) r13)     // Catch:{ all -> 0x03a9 }
            java.lang.String r14 = "speed"
            int r14 = d.b.a.r.a((android.database.Cursor) r5, (java.lang.String) r14)     // Catch:{ all -> 0x03a9 }
            java.lang.String r15 = "speedAccuracy"
            int r15 = d.b.a.r.a((android.database.Cursor) r5, (java.lang.String) r15)     // Catch:{ all -> 0x03a9 }
            r16 = r2
            int r2 = d.b.a.r.a((android.database.Cursor) r5, (java.lang.String) r0)     // Catch:{ all -> 0x03a9 }
            r17 = r0
            java.util.ArrayList r0 = new java.util.ArrayList     // Catch:{ all -> 0x03a9 }
            r18 = r3
            int r3 = r5.getCount()     // Catch:{ all -> 0x03a9 }
            r0.<init>(r3)     // Catch:{ all -> 0x03a9 }
        L_0x00cf:
            boolean r3 = r5.moveToNext()     // Catch:{ all -> 0x03a9 }
            r1 = 1
            if (r3 == 0) goto L_0x018c
            long r20 = r5.getLong(r7)     // Catch:{ all -> 0x03a9 }
            boolean r1 = r5.isNull(r9)     // Catch:{ all -> 0x03a9 }
            if (r1 == 0) goto L_0x00e4
            r1 = 0
        L_0x00e1:
            r22 = r1
            goto L_0x00ed
        L_0x00e4:
            double r22 = r5.getDouble(r9)     // Catch:{ all -> 0x03a9 }
            java.lang.Double r1 = java.lang.Double.valueOf(r22)     // Catch:{ all -> 0x03a9 }
            goto L_0x00e1
        L_0x00ed:
            boolean r1 = r5.isNull(r10)     // Catch:{ all -> 0x03a9 }
            if (r1 == 0) goto L_0x00f7
            r1 = 0
        L_0x00f4:
            r23 = r1
            goto L_0x0100
        L_0x00f7:
            double r23 = r5.getDouble(r10)     // Catch:{ all -> 0x03a9 }
            java.lang.Double r1 = java.lang.Double.valueOf(r23)     // Catch:{ all -> 0x03a9 }
            goto L_0x00f4
        L_0x0100:
            boolean r1 = r5.isNull(r11)     // Catch:{ all -> 0x03a9 }
            if (r1 == 0) goto L_0x010a
            r1 = 0
        L_0x0107:
            r24 = r1
            goto L_0x0113
        L_0x010a:
            double r24 = r5.getDouble(r11)     // Catch:{ all -> 0x03a9 }
            java.lang.Double r1 = java.lang.Double.valueOf(r24)     // Catch:{ all -> 0x03a9 }
            goto L_0x0107
        L_0x0113:
            boolean r1 = r5.isNull(r12)     // Catch:{ all -> 0x03a9 }
            if (r1 == 0) goto L_0x011d
            r1 = 0
        L_0x011a:
            r25 = r1
            goto L_0x0126
        L_0x011d:
            double r25 = r5.getDouble(r12)     // Catch:{ all -> 0x03a9 }
            java.lang.Double r1 = java.lang.Double.valueOf(r25)     // Catch:{ all -> 0x03a9 }
            goto L_0x011a
        L_0x0126:
            boolean r1 = r5.isNull(r13)     // Catch:{ all -> 0x03a9 }
            if (r1 == 0) goto L_0x0130
            r1 = 0
        L_0x012d:
            r26 = r1
            goto L_0x0139
        L_0x0130:
            double r26 = r5.getDouble(r13)     // Catch:{ all -> 0x03a9 }
            java.lang.Double r1 = java.lang.Double.valueOf(r26)     // Catch:{ all -> 0x03a9 }
            goto L_0x012d
        L_0x0139:
            boolean r1 = r5.isNull(r14)     // Catch:{ all -> 0x03a9 }
            if (r1 == 0) goto L_0x0143
            r1 = 0
        L_0x0140:
            r27 = r1
            goto L_0x014c
        L_0x0143:
            double r27 = r5.getDouble(r14)     // Catch:{ all -> 0x03a9 }
            java.lang.Double r1 = java.lang.Double.valueOf(r27)     // Catch:{ all -> 0x03a9 }
            goto L_0x0140
        L_0x014c:
            boolean r1 = r5.isNull(r15)     // Catch:{ all -> 0x03a9 }
            if (r1 == 0) goto L_0x0156
            r1 = 0
        L_0x0153:
            r28 = r1
            goto L_0x015f
        L_0x0156:
            double r28 = r5.getDouble(r15)     // Catch:{ all -> 0x03a9 }
            java.lang.Double r1 = java.lang.Double.valueOf(r28)     // Catch:{ all -> 0x03a9 }
            goto L_0x0153
        L_0x015f:
            int r1 = r5.getInt(r2)     // Catch:{ all -> 0x03a9 }
            if (r1 == 0) goto L_0x0169
            r1 = 1
            r29 = 1
            goto L_0x016c
        L_0x0169:
            r1 = 0
            r29 = 0
        L_0x016c:
            j.b.a.r r1 = new j.b.a.r     // Catch:{ all -> 0x03a9 }
            r19 = r1
            r19.<init>(r20, r22, r23, r24, r25, r26, r27, r28, r29)     // Catch:{ all -> 0x03a9 }
            boolean r3 = r5.isNull(r6)     // Catch:{ all -> 0x03a9 }
            if (r3 == 0) goto L_0x017b
            r3 = 0
            goto L_0x0183
        L_0x017b:
            int r3 = r5.getInt(r6)     // Catch:{ all -> 0x03a9 }
            java.lang.Integer r3 = java.lang.Integer.valueOf(r3)     // Catch:{ all -> 0x03a9 }
        L_0x0183:
            r1.a = r3     // Catch:{ all -> 0x03a9 }
            r0.add(r1)     // Catch:{ all -> 0x03a9 }
            r1 = r30
            goto L_0x00cf
        L_0x018c:
            r5.close()
            r8.b()
            java.lang.StringBuilder r2 = new java.lang.StringBuilder
            r2.<init>()
            java.lang.String r3 = "Got "
            r2.append(r3)
            int r3 = r0.size()
            r2.append(r3)
            java.lang.String r3 = " measurements to upload"
            r2.append(r3)
            java.lang.String r2 = r2.toString()
            r5 = 0
            java.lang.Object[] r6 = new java.lang.Object[r5]
            l.a.a$b r7 = l.a.a.f2455d
            r7.c(r2, r6)
            boolean r2 = r0.isEmpty()
            if (r2 == 0) goto L_0x01c0
            j.b.a.o r0 = r4.a()
            goto L_0x0299
        L_0x01c0:
            int r2 = r0.size()
            int r2 = r2 - r1
            java.lang.Object r5 = r0.get(r5)
            j.b.a.r r5 = (j.b.a.r) r5
            java.lang.Integer r6 = r5.a
            r4.a((java.lang.Integer) r6)
            r6 = 0
            r7 = 1
        L_0x01d2:
            if (r7 >= r2) goto L_0x0266
            java.lang.Object r8 = r0.get(r7)
            j.b.a.r r8 = (j.b.a.r) r8
            long r8 = r8.f1518d
            r5.f1517c = r8
            java.lang.Object r8 = r0.get(r7)
            j.b.a.r r8 = (j.b.a.r) r8
            java.lang.Double r9 = r8.f1520f
            if (r9 == 0) goto L_0x0245
            java.lang.Double r9 = r8.f1519e
            if (r9 == 0) goto L_0x0245
            java.lang.Double r9 = r8.f1522h
            if (r9 == 0) goto L_0x0245
            java.lang.Double r9 = r5.f1520f
            if (r9 == 0) goto L_0x0245
            java.lang.Double r9 = r5.f1519e
            if (r9 == 0) goto L_0x0245
            java.lang.Double r9 = r5.f1522h
            if (r9 != 0) goto L_0x01fd
            goto L_0x0245
        L_0x01fd:
            java.lang.Double r9 = r8.f1521g
            if (r9 == 0) goto L_0x0240
            double r9 = r9.doubleValue()
            java.lang.Double r11 = r5.f1521g
            if (r11 == 0) goto L_0x023b
            double r11 = r11.doubleValue()
            double r9 = java.lang.Math.max(r9, r11)
            float[] r11 = new float[r1]
            java.lang.Double r12 = r8.f1519e
            double r19 = r12.doubleValue()
            java.lang.Double r8 = r8.f1520f
            double r21 = r8.doubleValue()
            java.lang.Double r8 = r5.f1519e
            double r23 = r8.doubleValue()
            java.lang.Double r8 = r5.f1520f
            double r25 = r8.doubleValue()
            r27 = r11
            android.location.Location.distanceBetween(r19, r21, r23, r25, r27)
            r8 = 0
            r8 = r11[r8]
            double r11 = (double) r8
            int r8 = (r11 > r9 ? 1 : (r11 == r9 ? 0 : -1))
            if (r8 <= 0) goto L_0x0239
            goto L_0x0245
        L_0x0239:
            r8 = 1
            goto L_0x0246
        L_0x023b:
            h.k.b.g.a()
            r0 = 0
            throw r0
        L_0x0240:
            r0 = 0
            h.k.b.g.a()
            throw r0
        L_0x0245:
            r8 = 0
        L_0x0246:
            if (r8 != 0) goto L_0x0257
            org.json.JSONObject r5 = r5.a()
            r4.a((org.json.JSONObject) r5)
            int r6 = r6 + 1
            java.lang.Object r5 = r0.get(r7)
            j.b.a.r r5 = (j.b.a.r) r5
        L_0x0257:
            java.lang.Object r8 = r0.get(r7)
            j.b.a.r r8 = (j.b.a.r) r8
            java.lang.Integer r8 = r8.a
            r4.a((java.lang.Integer) r8)
            int r7 = r7 + 1
            goto L_0x01d2
        L_0x0266:
            org.json.JSONObject r5 = r5.a()
            r4.a((org.json.JSONObject) r5)
            int r6 = r6 + r1
            java.lang.Object r5 = r0.get(r2)
            j.b.a.r r5 = (j.b.a.r) r5
            org.json.JSONObject r5 = r5.a()
            r4.a((org.json.JSONObject) r5)
            java.lang.Object r0 = r0.get(r2)
            j.b.a.r r0 = (j.b.a.r) r0
            java.lang.Integer r0 = r0.a
            r4.a((java.lang.Integer) r0)
            int r6 = r6 + r1
            java.lang.String r0 = "After cleaning there are "
            java.lang.String r0 = e.a.a.a.a.b(r0, r6, r3)
            r1 = 0
            java.lang.Object[] r1 = new java.lang.Object[r1]
            l.a.a$b r2 = l.a.a.f2455d
            r2.c(r0, r1)
            j.b.a.o r0 = r4.a()
        L_0x0299:
            java.lang.String r1 = "txPower"
            java.lang.String r2 = "rssi"
            java.lang.String r3 = "deviceId"
            j.b.a.n r4 = new j.b.a.n
            r4.<init>()
            r7 = r30
            no.simula.corona.MeasurementDatabase r5 = r7.a
            j.b.a.b r5 = r5.h()
            j.b.a.c r5 = (j.b.a.c) r5
            if (r5 == 0) goto L_0x03a7
            java.lang.String r6 = "SELECT * from bluetoothcontact WHERE isUploaded is 0"
            r8 = 0
            d.u.i r6 = d.u.i.a(r6, r8)
            d.u.g r9 = r5.a
            r9.b()
            d.u.g r5 = r5.a
            r9 = 0
            android.database.Cursor r5 = d.u.m.b.a(r5, r6, r8, r9)
            r8 = r18
            int r8 = d.b.a.r.a((android.database.Cursor) r5, (java.lang.String) r8)     // Catch:{ all -> 0x039f }
            r9 = r16
            int r9 = d.b.a.r.a((android.database.Cursor) r5, (java.lang.String) r9)     // Catch:{ all -> 0x039f }
            int r10 = d.b.a.r.a((android.database.Cursor) r5, (java.lang.String) r3)     // Catch:{ all -> 0x039f }
            int r11 = d.b.a.r.a((android.database.Cursor) r5, (java.lang.String) r2)     // Catch:{ all -> 0x039f }
            int r12 = d.b.a.r.a((android.database.Cursor) r5, (java.lang.String) r1)     // Catch:{ all -> 0x039f }
            r13 = r17
            int r13 = d.b.a.r.a((android.database.Cursor) r5, (java.lang.String) r13)     // Catch:{ all -> 0x039f }
            java.util.ArrayList r14 = new java.util.ArrayList     // Catch:{ all -> 0x039f }
            int r15 = r5.getCount()     // Catch:{ all -> 0x039f }
            r14.<init>(r15)     // Catch:{ all -> 0x039f }
        L_0x02ea:
            boolean r15 = r5.moveToNext()     // Catch:{ all -> 0x039f }
            if (r15 == 0) goto L_0x0330
            long r17 = r5.getLong(r9)     // Catch:{ all -> 0x039f }
            java.lang.String r19 = r5.getString(r10)     // Catch:{ all -> 0x039f }
            int r20 = r5.getInt(r11)     // Catch:{ all -> 0x039f }
            int r21 = r5.getInt(r12)     // Catch:{ all -> 0x039f }
            int r15 = r5.getInt(r13)     // Catch:{ all -> 0x039f }
            if (r15 == 0) goto L_0x030a
            r15 = 1
            r22 = 1
            goto L_0x030d
        L_0x030a:
            r15 = 0
            r22 = 0
        L_0x030d:
            j.b.a.a r15 = new j.b.a.a     // Catch:{ all -> 0x039f }
            r16 = r15
            r16.<init>(r17, r19, r20, r21, r22)     // Catch:{ all -> 0x039f }
            boolean r16 = r5.isNull(r8)     // Catch:{ all -> 0x039f }
            if (r16 == 0) goto L_0x031f
            r16 = 0
        L_0x031c:
            r7 = r16
            goto L_0x0328
        L_0x031f:
            int r16 = r5.getInt(r8)     // Catch:{ all -> 0x039f }
            java.lang.Integer r16 = java.lang.Integer.valueOf(r16)     // Catch:{ all -> 0x039f }
            goto L_0x031c
        L_0x0328:
            r15.a = r7     // Catch:{ all -> 0x039f }
            r14.add(r15)     // Catch:{ all -> 0x039f }
            r7 = r30
            goto L_0x02ea
        L_0x0330:
            r5.close()
            r6.b()
            boolean r5 = r14.isEmpty()
            if (r5 == 0) goto L_0x0341
            j.b.a.o r1 = r4.a()
            goto L_0x0399
        L_0x0341:
            java.util.Iterator r5 = r14.iterator()
        L_0x0345:
            boolean r6 = r5.hasNext()
            if (r6 == 0) goto L_0x0395
            java.lang.Object r6 = r5.next()
            j.b.a.a r6 = (j.b.a.a) r6
            if (r6 == 0) goto L_0x0393
            java.text.SimpleDateFormat r7 = new java.text.SimpleDateFormat
            java.lang.String r8 = "yyyy-MM-dd'T'HH:mm:ss'Z'"
            r7.<init>(r8)
            java.lang.String r8 = "UTC"
            java.util.TimeZone r8 = java.util.TimeZone.getTimeZone(r8)
            r7.setTimeZone(r8)
            org.json.JSONObject r8 = new org.json.JSONObject
            r8.<init>()
            long r9 = r6.b
            long r9 = j.b.a.a0.a((long) r9)
            java.lang.Long r9 = java.lang.Long.valueOf(r9)
            java.lang.String r7 = r7.format(r9)
            java.lang.String r9 = "time"
            r8.put(r9, r7)
            java.lang.String r7 = r6.f1483c
            r8.put(r3, r7)
            int r7 = r6.f1484d
            r8.put(r2, r7)
            int r7 = r6.f1485e
            r8.put(r1, r7)
            r4.a((org.json.JSONObject) r8)
            java.lang.Integer r6 = r6.a
            r4.a((java.lang.Integer) r6)
            goto L_0x0345
        L_0x0393:
            r0 = 0
            throw r0
        L_0x0395:
            j.b.a.o r1 = r4.a()
        L_0x0399:
            j.b.a.p r2 = new j.b.a.p
            r2.<init>(r0, r1)
            return r2
        L_0x039f:
            r0 = move-exception
            r5.close()
            r6.b()
            throw r0
        L_0x03a7:
            r0 = 0
            throw r0
        L_0x03a9:
            r0 = move-exception
            r5.close()
            r8.b()
            throw r0
        L_0x03b1:
            throw r6
        L_0x03b2:
            r0 = move-exception
            d.u.g r1 = r4.a
            r1.d()
            d.u.k r1 = r4.f1506c
            r1.a(r5)
            throw r0
        L_0x03be:
            r0 = move-exception
            d.u.g r1 = r4.a
            r1.d()
            d.u.k r1 = r4.f1527c
            r1.a(r5)
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: j.b.a.f.b():j.b.a.p");
    }

    public Object doInBackground(Object[] objArr) {
        if (objArr != null) {
            try {
                return b();
            } catch (Exception e2) {
                LinkedHashMap linkedHashMap = new LinkedHashMap();
                linkedHashMap.put("where", "DataAggregator::doInBackground");
                Crashes.trackError(e2, linkedHashMap, (Iterable<ErrorAttachmentLog>) null);
                return null;
            }
        } else {
            g.a("params");
            throw null;
        }
    }

    public void onPostExecute(Object obj) {
        p pVar = (p) obj;
        super.onPostExecute(pVar);
        try {
            this.f1508c.a(pVar);
        } catch (Exception e2) {
            LinkedHashMap linkedHashMap = new LinkedHashMap();
            linkedHashMap.put("where", "DataAggregator::postExecute");
            Crashes.trackError(e2, linkedHashMap, (Iterable<ErrorAttachmentLog>) null);
        }
    }
}
