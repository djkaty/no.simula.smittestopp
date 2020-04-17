package com.microsoft.identity.common.internal.providers.oauth2;

import com.microsoft.identity.common.adal.internal.util.StringExtensions;
import com.microsoft.identity.common.exception.ServiceException;
import com.microsoft.identity.common.internal.logging.Logger;
import com.microsoft.identity.common.internal.net.ObjectMapper;
import e.c.a.a.b.l.c;
import java.text.ParseException;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;

public class IDToken {
    public static final String ADDRESS = "address";
    public static final String BIRTHDATE = "birthdate";
    public static final String EMAIL = "email";
    public static final String EMAIL_VERIFIED = "email_verified";
    public static final String FAMILY_NAME = "family_name";
    public static final String GENDER = "gender";
    public static final String GIVEN_NAME = "given_name";
    public static final String LOCALE = "locale";
    public static final String MIDDLE_NAME = "middle_name";
    public static final String NAME = "name";
    public static final String NICKNAME = "nickname";
    public static final String PHONE_NUMBER = "phone_number";
    public static final String PHONE_NUMBER_VERIFIED = "phone_number_verified";
    public static final String PICTURE = "picture";
    public static final String PREFERRED_USERNAME = "preferred_username";
    public static final String PROFILE = "profile";
    public static final String SUBJECT = "sub";
    public static final String UPDATED_AT = "updated_at";
    public static final String WEBSITE = "website";
    public static final String ZONEINFO = "zoneinfo";
    public final String mRawIdToken;
    public Map<String, ?> mTokenClaims = null;

    public IDToken(String str) {
        if (!StringExtensions.isNullOrBlank(str)) {
            this.mRawIdToken = str;
            this.mTokenClaims = parseJWT(str);
            return;
        }
        throw new IllegalArgumentException("null or empty raw idtoken");
    }

    public static Map<String, ?> parseJWT(String str) {
        HashMap hashMap = new HashMap();
        try {
            hashMap.putAll(Collections.unmodifiableMap(c.b(str).c().x));
            return hashMap;
        } catch (ParseException e2) {
            Logger.error(ObjectMapper.TAG + ":getClaims(String)", "Failed to parse IdToken", e2);
            throw new ServiceException("Failed to parse JWT", "invalid_jwt", e2);
        }
    }

    public String getRawIDToken() {
        return this.mRawIdToken;
    }

    public Map<String, ?> getTokenClaims() {
        return Collections.unmodifiableMap(this.mTokenClaims);
    }
}
