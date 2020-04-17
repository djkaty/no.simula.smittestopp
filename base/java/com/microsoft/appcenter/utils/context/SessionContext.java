package com.microsoft.appcenter.utils.context;

import com.microsoft.appcenter.utils.AppCenterLog;
import com.microsoft.appcenter.utils.storage.SharedPreferencesManager;
import e.a.a.a.a;
import java.util.LinkedHashSet;
import java.util.Map;
import java.util.NavigableMap;
import java.util.Set;
import java.util.TreeMap;
import java.util.UUID;

public class SessionContext {
    public static final String STORAGE_KEY = "sessions";
    public static final String STORAGE_KEY_VALUE_SEPARATOR = "/";
    public static final int STORAGE_MAX_SESSIONS = 10;
    public static SessionContext sInstance;
    public final long mAppLaunchTimestamp = System.currentTimeMillis();
    public final NavigableMap<Long, SessionInfo> mSessions = new TreeMap();

    public static class SessionInfo {
        public final long mAppLaunchTimestamp;
        public final UUID mSessionId;
        public final long mTimestamp;

        public SessionInfo(long j2, UUID uuid, long j3) {
            this.mTimestamp = j2;
            this.mSessionId = uuid;
            this.mAppLaunchTimestamp = j3;
        }

        public long getAppLaunchTimestamp() {
            return this.mAppLaunchTimestamp;
        }

        public UUID getSessionId() {
            return this.mSessionId;
        }

        public long getTimestamp() {
            return this.mTimestamp;
        }

        public String toString() {
            String str = getTimestamp() + "/";
            if (getSessionId() != null) {
                StringBuilder a = a.a(str);
                a.append(getSessionId());
                str = a.toString();
            }
            StringBuilder a2 = a.a(str, "/");
            a2.append(getAppLaunchTimestamp());
            return a2.toString();
        }
    }

    public SessionContext() {
        Set<String> stringSet = SharedPreferencesManager.getStringSet(STORAGE_KEY);
        if (stringSet != null) {
            for (String next : stringSet) {
                String[] split = next.split("/", -1);
                try {
                    long parseLong = Long.parseLong(split[0]);
                    String str = split[1];
                    this.mSessions.put(Long.valueOf(parseLong), new SessionInfo(parseLong, str.isEmpty() ? null : UUID.fromString(str), split.length > 2 ? Long.parseLong(split[2]) : parseLong));
                } catch (RuntimeException e2) {
                    AppCenterLog.warn("AppCenter", "Ignore invalid session in store: " + next, e2);
                }
            }
        }
        StringBuilder a = a.a("Loaded stored sessions: ");
        a.append(this.mSessions);
        AppCenterLog.debug("AppCenter", a.toString());
        addSession((UUID) null);
    }

    public static synchronized SessionContext getInstance() {
        SessionContext sessionContext;
        synchronized (SessionContext.class) {
            if (sInstance == null) {
                sInstance = new SessionContext();
            }
            sessionContext = sInstance;
        }
        return sessionContext;
    }

    public static synchronized void unsetInstance() {
        synchronized (SessionContext.class) {
            sInstance = null;
        }
    }

    public synchronized void addSession(UUID uuid) {
        long currentTimeMillis = System.currentTimeMillis();
        this.mSessions.put(Long.valueOf(currentTimeMillis), new SessionInfo(currentTimeMillis, uuid, this.mAppLaunchTimestamp));
        if (this.mSessions.size() > 10) {
            this.mSessions.pollFirstEntry();
        }
        LinkedHashSet linkedHashSet = new LinkedHashSet();
        for (SessionInfo sessionInfo : this.mSessions.values()) {
            linkedHashSet.add(sessionInfo.toString());
        }
        SharedPreferencesManager.putStringSet(STORAGE_KEY, linkedHashSet);
    }

    public synchronized void clearSessions() {
        this.mSessions.clear();
        SharedPreferencesManager.remove(STORAGE_KEY);
    }

    public synchronized SessionInfo getSessionAt(long j2) {
        Map.Entry<Long, SessionInfo> floorEntry = this.mSessions.floorEntry(Long.valueOf(j2));
        if (floorEntry == null) {
            return null;
        }
        return floorEntry.getValue();
    }
}
