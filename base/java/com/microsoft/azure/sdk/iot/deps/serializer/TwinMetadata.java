package com.microsoft.azure.sdk.iot.deps.serializer;

import e.c.c.e;
import e.c.c.j;
import e.c.c.v.c;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.TimeZone;

@Deprecated
public class TwinMetadata {
    public static final String DATEFORMAT = "yyyy-MM-dd'T'HH:mm:ss.SSS'Z'";
    public static final String TIMEZONE = "UTC";
    @c("$lastUpdated")
    public String lastUpdated;
    @c("$lastUpdatedVersion")
    public Integer lastUpdatedVersion;

    public TwinMetadata() {
        update();
        this.lastUpdatedVersion = null;
    }

    public synchronized String getLastUpdate() {
        return this.lastUpdated;
    }

    public synchronized Integer getLastUpdateVersion() {
        return this.lastUpdatedVersion;
    }

    public j toJsonElement() {
        return new e().a().b(this);
    }

    /* JADX WARNING: Code restructure failed: missing block: B:10:0x001a, code lost:
        if (r3.lastUpdatedVersion.equals(r5) != false) goto L_0x001c;
     */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public synchronized boolean update(java.lang.String r4, java.lang.Integer r5) {
        /*
            r3 = this;
            monitor-enter(r3)
            java.lang.String r0 = r3.lastUpdated     // Catch:{ all -> 0x0022 }
            boolean r0 = r0.equals(r4)     // Catch:{ all -> 0x0022 }
            r1 = 0
            r2 = 1
            if (r0 != 0) goto L_0x000d
        L_0x000b:
            r1 = 1
            goto L_0x001c
        L_0x000d:
            java.lang.Integer r0 = r3.lastUpdatedVersion     // Catch:{ all -> 0x0022 }
            if (r0 != 0) goto L_0x0014
            if (r5 != 0) goto L_0x000b
            goto L_0x001c
        L_0x0014:
            java.lang.Integer r0 = r3.lastUpdatedVersion     // Catch:{ all -> 0x0022 }
            boolean r0 = r0.equals(r5)     // Catch:{ all -> 0x0022 }
            if (r0 == 0) goto L_0x000b
        L_0x001c:
            r3.lastUpdated = r4     // Catch:{ all -> 0x0022 }
            r3.lastUpdatedVersion = r5     // Catch:{ all -> 0x0022 }
            monitor-exit(r3)
            return r1
        L_0x0022:
            r4 = move-exception
            monitor-exit(r3)
            throw r4
        */
        throw new UnsupportedOperationException("Method not decompiled: com.microsoft.azure.sdk.iot.deps.serializer.TwinMetadata.update(java.lang.String, java.lang.Integer):boolean");
    }

    public TwinMetadata(Integer num) {
        update();
        this.lastUpdatedVersion = num;
    }

    public TwinMetadata(Integer num, String str) {
        this.lastUpdated = str;
        this.lastUpdatedVersion = num;
    }

    public synchronized void update(int i2) {
        update();
        this.lastUpdatedVersion = Integer.valueOf(i2);
    }

    public synchronized void update() {
        SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy-MM-dd'T'HH:mm:ss.SSS'Z'");
        simpleDateFormat.setTimeZone(TimeZone.getTimeZone("UTC"));
        this.lastUpdated = simpleDateFormat.format(new Date());
    }
}
