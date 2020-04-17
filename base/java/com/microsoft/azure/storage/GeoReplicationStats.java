package com.microsoft.azure.storage;

import java.util.Date;

public class GeoReplicationStats {
    public Date lastSyncTime;
    public GeoReplicationStatus status;

    public Date getLastSyncTime() {
        return this.lastSyncTime;
    }

    public GeoReplicationStatus getStatus() {
        return this.status;
    }

    public void setLastSyncTime(Date date) {
        this.lastSyncTime = date;
    }

    public void setStatus(GeoReplicationStatus geoReplicationStatus) {
        this.status = geoReplicationStatus;
    }
}
