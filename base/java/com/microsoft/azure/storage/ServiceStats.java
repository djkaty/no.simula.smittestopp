package com.microsoft.azure.storage;

public class ServiceStats {
    public GeoReplicationStats geoReplication;

    public GeoReplicationStats getGeoReplication() {
        return this.geoReplication;
    }

    public void setGeoReplication(GeoReplicationStats geoReplicationStats) {
        this.geoReplication = geoReplicationStats;
    }
}
