package com.microsoft.azure.storage;

import java.util.Date;

public abstract class SharedAccessPolicy {
    public Date sharedAccessExpiryTime;
    public Date sharedAccessStartTime;

    public Date getSharedAccessExpiryTime() {
        return this.sharedAccessExpiryTime;
    }

    public Date getSharedAccessStartTime() {
        return this.sharedAccessStartTime;
    }

    public abstract String permissionsToString();

    public abstract void setPermissionsFromString(String str);

    public void setSharedAccessExpiryTime(Date date) {
        this.sharedAccessExpiryTime = date;
    }

    public void setSharedAccessStartTime(Date date) {
        this.sharedAccessStartTime = date;
    }
}
