package com.microsoft.appcenter.utils.context;

import android.text.TextUtils;
import com.microsoft.appcenter.utils.AppCenterLog;
import e.a.a.a.a;
import java.util.Collections;
import java.util.Set;
import java.util.concurrent.ConcurrentHashMap;

public class UserIdContext {
    public static final String CUSTOM_PREFIX = "c";
    public static final int USER_ID_APP_CENTER_MAX_LENGTH = 256;
    public static UserIdContext sInstance;
    public final Set<Listener> mListeners = Collections.newSetFromMap(new ConcurrentHashMap());
    public String mUserId;

    public interface Listener {
        void onNewUserId(String str);
    }

    public static boolean checkUserIdValidForAppCenter(String str) {
        if (str == null || str.length() <= 256) {
            return true;
        }
        AppCenterLog.error("AppCenter", "userId is limited to 256 characters.");
        return false;
    }

    public static boolean checkUserIdValidForOneCollector(String str) {
        if (str == null) {
            return true;
        }
        if (str.isEmpty()) {
            AppCenterLog.error("AppCenter", "userId must not be empty.");
            return false;
        }
        int indexOf = str.indexOf(":");
        if (indexOf >= 0) {
            String substring = str.substring(0, indexOf);
            if (!substring.equals(CUSTOM_PREFIX)) {
                AppCenterLog.error("AppCenter", String.format("userId prefix must be '%s%s', '%s%s' is not supported.", new Object[]{CUSTOM_PREFIX, ":", substring, ":"}));
                return false;
            } else if (indexOf == str.length() - 1) {
                AppCenterLog.error("AppCenter", "userId must not be empty.");
                return false;
            }
        }
        return true;
    }

    public static synchronized UserIdContext getInstance() {
        UserIdContext userIdContext;
        synchronized (UserIdContext.class) {
            if (sInstance == null) {
                sInstance = new UserIdContext();
            }
            userIdContext = sInstance;
        }
        return userIdContext;
    }

    public static String getPrefixedUserId(String str) {
        return (str == null || str.contains(":")) ? str : a.b("c:", str);
    }

    public static synchronized void unsetInstance() {
        synchronized (UserIdContext.class) {
            sInstance = null;
        }
    }

    private synchronized boolean updateUserId(String str) {
        if (TextUtils.equals(this.mUserId, str)) {
            return false;
        }
        this.mUserId = str;
        return true;
    }

    public void addListener(Listener listener) {
        this.mListeners.add(listener);
    }

    public synchronized String getUserId() {
        return this.mUserId;
    }

    public void removeListener(Listener listener) {
        this.mListeners.remove(listener);
    }

    public void setUserId(String str) {
        if (updateUserId(str)) {
            for (Listener onNewUserId : this.mListeners) {
                onNewUserId.onNewUserId(this.mUserId);
            }
        }
    }
}
