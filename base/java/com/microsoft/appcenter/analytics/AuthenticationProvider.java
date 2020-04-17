package com.microsoft.appcenter.analytics;

import com.microsoft.appcenter.utils.AppCenterLog;
import com.microsoft.appcenter.utils.HashUtils;
import com.microsoft.appcenter.utils.TicketCache;
import com.microsoft.identity.common.internal.platform.DevicePopManager;
import e.a.a.a.a;
import java.util.Date;

public class AuthenticationProvider {
    public static final long REFRESH_THRESHOLD = 600000;
    public AuthenticationCallback mCallback;
    public Date mExpiryDate;
    public final String mTicketKey;
    public final String mTicketKeyHash;
    public final TokenProvider mTokenProvider;
    public final Type mType;

    public interface AuthenticationCallback {
        void onAuthenticationResult(String str, Date date);
    }

    public interface TokenProvider {
        void acquireToken(String str, AuthenticationCallback authenticationCallback);
    }

    public enum Type {
        MSA_COMPACT(DevicePopManager.SignedHttpRequestJwtClaims.HTTP_PATH),
        MSA_DELEGATE("d");
        
        public final String mTokenPrefix;

        /* access modifiers changed from: public */
        Type(String str) {
            this.mTokenPrefix = a.b(str, ":");
        }
    }

    public AuthenticationProvider(Type type, String str, TokenProvider tokenProvider) {
        String str2;
        this.mType = type;
        this.mTicketKey = str;
        if (str == null) {
            str2 = null;
        } else {
            str2 = HashUtils.sha256(str);
        }
        this.mTicketKeyHash = str2;
        this.mTokenProvider = tokenProvider;
    }

    /* access modifiers changed from: private */
    public synchronized void handleTokenUpdate(String str, Date date, AuthenticationCallback authenticationCallback) {
        if (this.mCallback != authenticationCallback) {
            AppCenterLog.debug(Analytics.LOG_TAG, "Ignore duplicate authentication callback calls, provider=" + this.mType);
            return;
        }
        this.mCallback = null;
        AppCenterLog.debug(Analytics.LOG_TAG, "Got result back from token provider=" + this.mType);
        if (str == null) {
            AppCenterLog.error(Analytics.LOG_TAG, "Authentication failed for ticketKey=" + this.mTicketKey);
        } else if (date == null) {
            AppCenterLog.error(Analytics.LOG_TAG, "No expiry date provided for ticketKey=" + this.mTicketKey);
        } else {
            String str2 = this.mTicketKeyHash;
            TicketCache.putTicket(str2, this.mType.mTokenPrefix + str);
            this.mExpiryDate = date;
        }
    }

    public synchronized void acquireTokenAsync() {
        if (this.mCallback == null) {
            AppCenterLog.debug(Analytics.LOG_TAG, "Calling token provider=" + this.mType + " callback.");
            AnonymousClass1 r0 = new AuthenticationCallback() {
                public void onAuthenticationResult(String str, Date date) {
                    AuthenticationProvider.this.handleTokenUpdate(str, date, this);
                }
            };
            this.mCallback = r0;
            this.mTokenProvider.acquireToken(this.mTicketKey, r0);
        }
    }

    public synchronized void checkTokenExpiry() {
        if (this.mExpiryDate != null && this.mExpiryDate.getTime() <= System.currentTimeMillis() + REFRESH_THRESHOLD) {
            acquireTokenAsync();
        }
    }

    public String getTicketKey() {
        return this.mTicketKey;
    }

    public String getTicketKeyHash() {
        return this.mTicketKeyHash;
    }

    public TokenProvider getTokenProvider() {
        return this.mTokenProvider;
    }

    public Type getType() {
        return this.mType;
    }
}
