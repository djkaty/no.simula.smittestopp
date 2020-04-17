package com.microsoft.identity.common.internal.eststelemetry;

import com.microsoft.identity.common.internal.util.StringUtil;
import java.util.Arrays;

public class Schema {
    public static final String CURRENT_REQUEST_HEADER_NAME = "x-client-current-telemetry";
    public static final String CURRENT_SCHEMA_VERSION = "1";
    public static final String LAST_REQUEST_HEADER_NAME = "x-client-last-telemetry";
    public static final String SCHEMA_VERSION_KEY = "schema_version";
    public static final String[] currentRequestCommonFields = {"Microsoft.MSAL.api_id", "Microsoft.MSAL.force_refresh"};
    public static final String[] currentRequestPlatformFields = {"Microsoft.MSAL.account_status", "Microsoft.MSAL.id_token_status", "Microsoft.MSAL.at_status", "Microsoft.MSAL.rt_status", "Microsoft.MSAL.frt_status", "Microsoft.MSAL.mrrt_status"};
    public static final String[] lastRequestCommonFields = {"Microsoft.MSAL.api_id", "Microsoft.MSAL.correlation_id", "Microsoft.MSAL.api_error_code"};
    public static final String[] lastRequestPlatformFields = new String[0];

    public static final class Key {
        public static final String ACCOUNT_STATUS = "Microsoft.MSAL.account_status";
        public static final String API_ID = "Microsoft.MSAL.api_id";
        public static final String AT_STATUS = "Microsoft.MSAL.at_status";
        public static final String CORRELATION_ID = "Microsoft.MSAL.correlation_id";
        public static final String ERROR_CODE = "Microsoft.MSAL.api_error_code";
        public static final String FORCE_REFRESH = "Microsoft.MSAL.force_refresh";
        public static final String FRT_STATUS = "Microsoft.MSAL.frt_status";
        public static final String ID_TOKEN_STATUS = "Microsoft.MSAL.id_token_status";
        public static final String MRRT_STATUS = "Microsoft.MSAL.mrrt_status";
        public static final String RT_STATUS = "Microsoft.MSAL.rt_status";
    }

    public static final class Value {
        public static final String EMPTY = "";
        public static final String FALSE = "0";
        public static final String TRUE = "1";
    }

    public static String[] getCommonFields(boolean z) {
        return z ? getCurrentRequestCommonFields() : getLastRequestCommonFields();
    }

    public static String[] getCurrentRequestCommonFields() {
        return currentRequestCommonFields;
    }

    public static String[] getCurrentRequestPlatformFields() {
        return currentRequestPlatformFields;
    }

    public static String[] getLastRequestCommonFields() {
        return lastRequestCommonFields;
    }

    public static String[] getLastRequestPlatformFields() {
        return lastRequestPlatformFields;
    }

    public static String[] getPlatformFields(boolean z) {
        return z ? getCurrentRequestPlatformFields() : getLastRequestPlatformFields();
    }

    public static String getSchemaCompliantString(String str) {
        if (StringUtil.isEmpty(str)) {
            return "";
        }
        if (str.equals("true")) {
            return "1";
        }
        return str.equals("false") ? Value.FALSE : str;
    }

    public static String getSchemaCompliantStringFromBoolean(boolean z) {
        return z ? "1" : Value.FALSE;
    }

    public static boolean isCommonField(String str, boolean z) {
        return z ? isCurrentCommonField(str) : isLastCommonField(str);
    }

    public static boolean isCurrentCommonField(String str) {
        return Arrays.asList(currentRequestCommonFields).contains(str);
    }

    public static boolean isCurrentPlatformField(String str) {
        return Arrays.asList(currentRequestPlatformFields).contains(str);
    }

    public static boolean isLastCommonField(String str) {
        return Arrays.asList(lastRequestCommonFields).contains(str);
    }

    public static boolean isLastPlatformField(String str) {
        return Arrays.asList(lastRequestPlatformFields).contains(str);
    }

    public static boolean isPlatformField(String str, boolean z) {
        return z ? isCurrentPlatformField(str) : isLastPlatformField(str);
    }
}
