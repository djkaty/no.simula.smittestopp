package com.microsoft.identity.common.internal.controllers;

import java.util.Calendar;
import java.util.Date;

public class CommandResultCacheItem {
    public static final int VALIDITY_DURATION = 30;
    public Date mExpiresOn = getExpiresOn();
    public CommandResult mValue;

    public CommandResultCacheItem(CommandResult commandResult) {
        this.mValue = commandResult;
    }

    private Date getExpiresOn() {
        Calendar instance = Calendar.getInstance();
        instance.add(13, 30);
        return instance.getTime();
    }

    public CommandResult getValue() {
        return this.mValue;
    }

    public boolean isExpired() {
        return Calendar.getInstance().getTime().after(this.mExpiresOn);
    }
}
