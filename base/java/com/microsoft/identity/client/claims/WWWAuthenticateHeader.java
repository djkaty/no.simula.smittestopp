package com.microsoft.identity.client.claims;

public class WWWAuthenticateHeader {
    public static final String CLAIMS_DIRECTIVE = "claims=";
    public static final char COMMA = ',';
    public static final char DOUBLE_QUOTE = '\"';
    public static final char SINGLE_QUOTE = '\'';
    public static final char SPACE = ' ';

    public static ClaimsRequest getClaimsRequestFromWWWAuthenticateHeaderValue(String str) {
        String str2;
        int indexOf = str.indexOf(CLAIMS_DIRECTIVE);
        if (indexOf == -1) {
            return null;
        }
        int i2 = indexOf + 7;
        int i3 = i2 + 1;
        char charAt = str.substring(i2, i3).charAt(0);
        if (charAt == '\'') {
            str2 = str.substring(i3, str.indexOf(39, i3));
        } else if (charAt == '\"') {
            str2 = str.substring(i3, str.indexOf("}\"", i3) + 1);
        } else {
            int indexOf2 = str.indexOf(44, i2);
            int indexOf3 = str.indexOf(32, i2);
            if (indexOf2 == -1 && indexOf3 == -1) {
                str2 = str.substring(i2);
            } else if (indexOf2 != -1) {
                str2 = str.substring(i2, indexOf2);
            } else {
                str2 = str.substring(i2, indexOf3);
            }
        }
        return ClaimsRequest.getClaimsRequestFromJsonString(str2);
    }

    public static Boolean hasClaimsDirective(String str) {
        if (str.indexOf(CLAIMS_DIRECTIVE) == -1) {
            return false;
        }
        return true;
    }
}
