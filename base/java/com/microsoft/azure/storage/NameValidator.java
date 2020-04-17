package com.microsoft.azure.storage;

import com.microsoft.appcenter.utils.crypto.CryptoConstants;
import com.microsoft.azure.storage.Constants;
import com.microsoft.azure.storage.core.SR;
import com.microsoft.azure.storage.core.Utility;
import java.util.regex.Pattern;

public class NameValidator {
    public static final int BLOB_FILE_DIRECTORY_MIN_LENGTH = 1;
    public static final int BLOB_MAX_LENGTH = 1024;
    public static final int CONTAINER_SHARE_QUEUE_TABLE_MAX_LENGTH = 63;
    public static final int CONTAINER_SHARE_QUEUE_TABLE_MIN_LENGTH = 3;
    public static final int FILE_DIRECTORY_MAX_LENGTH = 255;
    public static final Pattern FILE_DIRECTORY_REGEX = Pattern.compile("^[^\"\\/:|<>*?]*/{0,1}");
    public static final Pattern METRICS_TABLE_REGEX = Pattern.compile("^\\$Metrics(HourPrimary|MinutePrimary|HourSecondary|MinuteSecondary)?(Transactions)(Blob|Queue|Table)$");
    public static final String[] RESERVED_FILE_NAMES = {CryptoConstants.ALIAS_SEPARATOR, "..", "LPT1", "LPT2", "LPT3", "LPT4", "LPT5", "LPT6", "LPT7", "LPT8", "LPT9", "COM1", "COM2", "COM3", "COM4", "COM5", "COM6", "COM7", "COM8", "COM9", "PRN", "AUX", "NUL", "CON", "CLOCK$"};
    public static final Pattern SHARE_CONTAINER_QUEUE_REGEX = Pattern.compile("^[a-z0-9]+(-[a-z0-9]+)*$");
    public static final Pattern TABLE_REGEX = Pattern.compile("^[A-Za-z][A-Za-z0-9]*$");

    public static void ValidateFileDirectoryHelper(String str, String str2) {
        if (Utility.isNullOrEmptyOrWhitespace(str)) {
            throw new IllegalArgumentException(String.format(Utility.LOCALE_US, SR.RESOURCE_NAME_EMPTY, new Object[]{str2}));
        } else if (str.length() < 1 || str.length() > 255) {
            throw new IllegalArgumentException(String.format(Utility.LOCALE_US, SR.INVALID_RESOURCE_NAME_LENGTH, new Object[]{str2, 1, 255}));
        } else if (!FILE_DIRECTORY_REGEX.matcher(str).matches()) {
            throw new IllegalArgumentException(String.format(Utility.LOCALE_US, SR.INVALID_RESOURCE_NAME, new Object[]{str2}));
        }
    }

    public static void validateBlobName(String str) {
        if (Utility.isNullOrEmptyOrWhitespace(str)) {
            throw new IllegalArgumentException(String.format(Utility.LOCALE_US, SR.RESOURCE_NAME_EMPTY, new Object[]{SR.BLOB}));
        } else if (str.length() < 1 || str.length() > 1024) {
            throw new IllegalArgumentException(String.format(Utility.LOCALE_US, SR.INVALID_RESOURCE_NAME_LENGTH, new Object[]{SR.BLOB, 1, 1024}));
        } else {
            int i2 = 0;
            for (int i3 = 0; i3 < str.length(); i3++) {
                if (str.charAt(i3) == '/') {
                    i2++;
                }
            }
            if (i2 >= 254) {
                throw new IllegalArgumentException(SR.TOO_MANY_PATH_SEGMENTS);
            }
        }
    }

    public static void validateContainerName(String str) {
        if (!"$root".equals(str) && !Constants.AnalyticsConstants.LOGS_CONTAINER.equals(str) && !"$web".equals(str)) {
            validateShareContainerQueueHelper(str, SR.CONTAINER);
        }
    }

    public static void validateDirectoryName(String str) {
        ValidateFileDirectoryHelper(str, SR.DIRECTORY);
    }

    public static void validateFileName(String str) {
        ValidateFileDirectoryHelper(str, SR.FILE);
        if (!str.endsWith("/")) {
            String[] strArr = RESERVED_FILE_NAMES;
            int length = strArr.length;
            int i2 = 0;
            while (i2 < length) {
                if (!strArr[i2].equalsIgnoreCase(str)) {
                    i2++;
                } else {
                    throw new IllegalArgumentException(String.format(Utility.LOCALE_US, SR.INVALID_RESOURCE_RESERVED_NAME, new Object[]{SR.FILE}));
                }
            }
            return;
        }
        throw new IllegalArgumentException(String.format(Utility.LOCALE_US, SR.INVALID_RESOURCE_NAME, new Object[]{SR.FILE}));
    }

    public static void validateQueueName(String str) {
        validateShareContainerQueueHelper(str, SR.QUEUE);
    }

    public static void validateShareContainerQueueHelper(String str, String str2) {
        if (Utility.isNullOrEmptyOrWhitespace(str)) {
            throw new IllegalArgumentException(String.format(Utility.LOCALE_US, SR.RESOURCE_NAME_EMPTY, new Object[]{str2}));
        } else if (str.length() < 3 || str.length() > 63) {
            throw new IllegalArgumentException(String.format(Utility.LOCALE_US, SR.INVALID_RESOURCE_NAME_LENGTH, new Object[]{str2, 3, 63}));
        } else if (!SHARE_CONTAINER_QUEUE_REGEX.matcher(str).matches()) {
            throw new IllegalArgumentException(String.format(Utility.LOCALE_US, SR.INVALID_RESOURCE_NAME, new Object[]{str2}));
        }
    }

    public static void validateShareName(String str) {
        validateShareContainerQueueHelper(str, SR.SHARE);
    }

    public static void validateTableName(String str) {
        if (Utility.isNullOrEmptyOrWhitespace(str)) {
            throw new IllegalArgumentException(String.format(Utility.LOCALE_US, SR.RESOURCE_NAME_EMPTY, new Object[]{SR.TABLE}));
        } else if (str.length() < 3 || str.length() > 63) {
            throw new IllegalArgumentException(String.format(Utility.LOCALE_US, SR.INVALID_RESOURCE_NAME_LENGTH, new Object[]{SR.TABLE, 3, 63}));
        } else if (!TABLE_REGEX.matcher(str).matches() && !METRICS_TABLE_REGEX.matcher(str).matches() && !str.equalsIgnoreCase(Constants.AnalyticsConstants.METRICS_CAPACITY_BLOB)) {
            throw new IllegalArgumentException(String.format(Utility.LOCALE_US, SR.INVALID_RESOURCE_NAME, new Object[]{SR.TABLE}));
        }
    }
}
