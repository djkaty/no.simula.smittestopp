package com.microsoft.identity.common.internal.controllers;

import android.util.LruCache;

public class CommandResultCache {
    public static final int DEFAULT_ITEM_COUNT = 250;
    public LruCache<BaseCommand, CommandResultCacheItem> mCache;

    public CommandResultCache() {
        this.mCache = new LruCache<>(DEFAULT_ITEM_COUNT);
    }

    public void clear() {
        synchronized (this.mCache) {
            this.mCache = new LruCache<>(DEFAULT_ITEM_COUNT);
        }
    }

    public CommandResult get(BaseCommand baseCommand) {
        synchronized (this.mCache) {
            CommandResultCacheItem commandResultCacheItem = this.mCache.get(baseCommand);
            if (commandResultCacheItem == null) {
                return null;
            }
            if (commandResultCacheItem.isExpired()) {
                this.mCache.remove(baseCommand);
                return null;
            }
            CommandResult value = commandResultCacheItem.getValue();
            return value;
        }
    }

    public int getSize() {
        return this.mCache.size();
    }

    public void put(BaseCommand baseCommand, CommandResult commandResult) {
        this.mCache.put(baseCommand, new CommandResultCacheItem(commandResult));
    }

    public CommandResultCache(int i2) {
        this.mCache = new LruCache<>(i2);
    }
}
