package com.microsoft.identity.common.internal.cache;

import android.content.Context;
import com.microsoft.identity.common.BaseAccount;
import com.microsoft.identity.common.exception.ClientException;
import com.microsoft.identity.common.internal.dto.AccessTokenRecord;
import com.microsoft.identity.common.internal.dto.AccountRecord;
import com.microsoft.identity.common.internal.dto.Credential;
import com.microsoft.identity.common.internal.dto.CredentialType;
import com.microsoft.identity.common.internal.dto.IdTokenRecord;
import com.microsoft.identity.common.internal.dto.RefreshTokenRecord;
import com.microsoft.identity.common.internal.logging.Logger;
import com.microsoft.identity.common.internal.providers.microsoft.MicrosoftAccount;
import com.microsoft.identity.common.internal.providers.microsoft.MicrosoftRefreshToken;
import com.microsoft.identity.common.internal.providers.microsoft.microsoftsts.MicrosoftStsAuthorizationRequest;
import com.microsoft.identity.common.internal.providers.microsoft.microsoftsts.MicrosoftStsOAuth2Strategy;
import com.microsoft.identity.common.internal.providers.microsoft.microsoftsts.MicrosoftStsTokenResponse;
import com.microsoft.identity.common.internal.providers.oauth2.AuthorizationRequest;
import com.microsoft.identity.common.internal.providers.oauth2.OAuth2Strategy;
import com.microsoft.identity.common.internal.providers.oauth2.RefreshToken;
import com.microsoft.identity.common.internal.providers.oauth2.TokenResponse;
import e.a.a.a.a;
import java.util.List;

public class MsalCppOAuth2TokenCache<GenericOAuth2Strategy extends OAuth2Strategy, GenericAuthorizationRequest extends AuthorizationRequest, GenericTokenResponse extends TokenResponse, GenericAccount extends BaseAccount, GenericRefreshToken extends RefreshToken> extends MsalOAuth2TokenCache<GenericOAuth2Strategy, GenericAuthorizationRequest, GenericTokenResponse, GenericAccount, GenericRefreshToken> {
    public static final String TAG = "com.microsoft.identity.common.internal.cache.MsalCppOAuth2TokenCache";

    public MsalCppOAuth2TokenCache(Context context, IAccountCredentialCache iAccountCredentialCache, IAccountCredentialAdapter iAccountCredentialAdapter) {
        super(context, iAccountCredentialCache, iAccountCredentialAdapter);
    }

    public static MsalCppOAuth2TokenCache create(Context context) {
        MsalOAuth2TokenCache<MicrosoftStsOAuth2Strategy, MicrosoftStsAuthorizationRequest, MicrosoftStsTokenResponse, MicrosoftAccount, MicrosoftRefreshToken> create = MsalOAuth2TokenCache.create(context);
        return new MsalCppOAuth2TokenCache(context, create.getAccountCredentialCache(), create.getAccountCredentialAdapter());
    }

    public synchronized void clearCache() {
        getAccountCredentialCache().clearAll();
    }

    public AccountRecord getAccount(String str, String str2, String str3) {
        validateNonNull(str, "homeAccountId");
        validateNonNull(str2, "environment");
        validateNonNull(str3, "realm");
        List<AccountRecord> accountsFilteredBy = getAccountCredentialCache().getAccountsFilteredBy(str, str2, str3);
        if (accountsFilteredBy != null && !accountsFilteredBy.isEmpty()) {
            return accountsFilteredBy.get(0);
        }
        String a = a.a(new StringBuilder(), TAG, ":getAccount");
        Logger.info(a, "No account found for the passing in homeAccountId: " + str + " environment: " + str2 + " realm: " + str3);
        return null;
    }

    public List<AccountRecord> getAllAccounts() {
        return getAccountCredentialCache().getAccounts();
    }

    public synchronized AccountDeletionRecord removeAccount(String str, String str2, String str3) {
        validateNonNull(str, "homeAccountId");
        validateNonNull(str3, "realm");
        List<Credential> credentialsFilteredBy = getAccountCredentialCache().getCredentialsFilteredBy(str, str2, CredentialType.RefreshToken, (String) null, str3, (String) null, "Bearer");
        if (credentialsFilteredBy == null || credentialsFilteredBy.isEmpty()) {
            return new AccountDeletionRecord((List<AccountRecord>) null);
        }
        return removeAccount(str2, credentialsFilteredBy.get(0).getClientId(), str, str3);
    }

    public synchronized void saveAccountRecord(AccountRecord accountRecord) {
        getAccountCredentialCache().saveAccount(accountRecord);
    }

    public synchronized void saveCredentials(AccountRecord accountRecord, Credential... credentialArr) {
        if (credentialArr != null) {
            if (credentialArr.length != 0) {
                RefreshTokenRecord refreshTokenRecord = null;
                IdTokenRecord idTokenRecord = null;
                AccessTokenRecord accessTokenRecord = null;
                for (AccessTokenRecord accessTokenRecord2 : credentialArr) {
                    if (accessTokenRecord2 instanceof AccessTokenRecord) {
                        accessTokenRecord = accessTokenRecord2;
                    } else if (accessTokenRecord2 instanceof IdTokenRecord) {
                        idTokenRecord = (IdTokenRecord) accessTokenRecord2;
                    } else if (accessTokenRecord2 instanceof RefreshTokenRecord) {
                        refreshTokenRecord = (RefreshTokenRecord) accessTokenRecord2;
                    }
                }
                validateNonNull(accountRecord, "AccountRecord");
                validateNonNull(refreshTokenRecord, "RefreshTokenRecord");
                validateNonNull(idTokenRecord, "IdTokenRecord");
                validateCacheArtifacts(accountRecord, accessTokenRecord, refreshTokenRecord, idTokenRecord);
                removeRefreshTokenIfNeeded(accountRecord, refreshTokenRecord);
                saveCredentialsInternal(credentialArr);
            }
        }
        throw new ClientException("Credential array passed in is null or empty");
    }
}
