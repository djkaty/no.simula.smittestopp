package com.microsoft.appcenter;

import com.microsoft.appcenter.utils.AppCenterLog;
import java.util.Date;
import java.util.HashMap;
import java.util.Map;
import java.util.regex.Pattern;

public class CustomProperties {
    public static final Pattern KEY_PATTERN = Pattern.compile("^[a-zA-Z][a-zA-Z0-9]*$");
    public static final int MAX_PROPERTIES_COUNT = 60;
    public static final int MAX_PROPERTY_KEY_LENGTH = 128;
    public static final int MAX_PROPERTY_VALUE_LENGTH = 128;
    public static final String VALUE_NULL_ERROR_MESSAGE = "Custom property value cannot be null, did you mean to call clear?";
    public final Map<String, Object> mProperties = new HashMap();

    private void addProperty(String str, Object obj) {
        if (this.mProperties.containsKey(str) || this.mProperties.size() < 60) {
            this.mProperties.put(str, obj);
        } else {
            AppCenterLog.error("AppCenter", "Custom properties cannot contain more than 60 items");
        }
    }

    private boolean isValidKey(String str) {
        if (str == null || !KEY_PATTERN.matcher(str).matches()) {
            AppCenterLog.error("AppCenter", "Custom property \"" + str + "\" must match \"" + KEY_PATTERN + "\"");
            return false;
        } else if (str.length() > 128) {
            AppCenterLog.error("AppCenter", "Custom property \"" + str + "\" length cannot be longer than " + 128 + " characters.");
            return false;
        } else if (!this.mProperties.containsKey(str)) {
            return true;
        } else {
            AppCenterLog.warn("AppCenter", "Custom property \"" + str + "\" is already set or cleared and will be overridden.");
            return true;
        }
    }

    private boolean isValidNumberValue(String str, Number number) {
        if (number == null) {
            AppCenterLog.error("AppCenter", VALUE_NULL_ERROR_MESSAGE);
            return false;
        }
        double doubleValue = number.doubleValue();
        if (!Double.isInfinite(doubleValue) && !Double.isNaN(doubleValue)) {
            return true;
        }
        AppCenterLog.error("AppCenter", "Custom property \"" + str + "\" value cannot be NaN or infinite.");
        return false;
    }

    private boolean isValidStringValue(String str, String str2) {
        if (str2 == null) {
            AppCenterLog.error("AppCenter", VALUE_NULL_ERROR_MESSAGE);
            return false;
        } else if (str2.length() <= 128) {
            return true;
        } else {
            AppCenterLog.error("AppCenter", "Custom property \"" + str + "\" value length cannot be longer than " + 128 + " characters.");
            return false;
        }
    }

    public synchronized CustomProperties clear(String str) {
        if (isValidKey(str)) {
            addProperty(str, (Object) null);
        }
        return this;
    }

    public synchronized Map<String, Object> getProperties() {
        return new HashMap(this.mProperties);
    }

    public synchronized CustomProperties set(String str, String str2) {
        if (isValidKey(str) && isValidStringValue(str, str2)) {
            addProperty(str, str2);
        }
        return this;
    }

    public synchronized CustomProperties set(String str, Date date) {
        if (isValidKey(str)) {
            if (date != null) {
                addProperty(str, date);
            } else {
                AppCenterLog.error("AppCenter", VALUE_NULL_ERROR_MESSAGE);
            }
        }
        return this;
    }

    public synchronized CustomProperties set(String str, Number number) {
        if (isValidKey(str) && isValidNumberValue(str, number)) {
            addProperty(str, number);
        }
        return this;
    }

    public synchronized CustomProperties set(String str, boolean z) {
        if (isValidKey(str)) {
            addProperty(str, Boolean.valueOf(z));
        }
        return this;
    }
}
