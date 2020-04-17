package com.microsoft.identity.common.internal.providers.oauth2;

import android.content.Context;
import com.microsoft.identity.common.internal.authscheme.AbstractAuthenticationScheme;
import com.microsoft.identity.common.internal.cache.AccountDeletionRecord;
import com.microsoft.identity.common.internal.cache.ICacheRecord;
import com.microsoft.identity.common.internal.dto.AccountRecord;
import com.microsoft.identity.common.internal.dto.Credential;
import com.microsoft.identity.common.internal.dto.IdTokenRecord;
import com.microsoft.identity.common.internal.providers.oauth2.AuthorizationRequest;
import com.microsoft.identity.common.internal.providers.oauth2.OAuth2Strategy;
import com.microsoft.identity.common.internal.providers.oauth2.TokenResponse;
import java.util.List;
import java.util.Set;

public abstract class OAuth2TokenCache<T extends OAuth2Strategy, U extends AuthorizationRequest, V extends TokenResponse> {
    public final Context mContext;

    public OAuth2TokenCache(Context context) {
        this.mContext = context.getApplicationContext();
    }

    public abstract void clearAll();

    public abstract AccountRecord getAccount(String str, String str2, String str3, String str4);

    public abstract AccountRecord getAccountByHomeAccountId(String str, String str2, String str3);

    public abstract AccountRecord getAccountByLocalAccountId(String str, String str2, String str3);

    public abstract ICacheRecord getAccountWithAggregatedAccountDataByLocalAccountId(String str, String str2, String str3);

    public abstract List<AccountRecord> getAccounts(String str, String str2);

    public abstract List<ICacheRecord> getAccountsWithAggregatedAccountData(String str, String str2);

    public abstract List<ICacheRecord> getAccountsWithAggregatedAccountData(String str, String str2, String str3);

    public abstract Set<String> getAllClientIds();

    public abstract List<AccountRecord> getAllTenantAccountsForAccountByClientId(String str, AccountRecord accountRecord);

    public final Context getContext() {
        return this.mContext;
    }

    public abstract List<IdTokenRecord> getIdTokensForAccountRecord(String str, AccountRecord accountRecord);

    public abstract ICacheRecord load(String str, String str2, AccountRecord accountRecord, AbstractAuthenticationScheme abstractAuthenticationScheme);

    public abstract List<ICacheRecord> loadWithAggregatedAccountData(String str, String str2, AccountRecord accountRecord, AbstractAuthenticationScheme abstractAuthenticationScheme);

    public abstract AccountDeletionRecord removeAccount(String str, String str2, String str3, String str4);

    public abstract boolean removeCredential(Credential credential);

    public abstract ICacheRecord save(AccountRecord accountRecord, IdTokenRecord idTokenRecord);

    public abstract ICacheRecord save(T t, U u, V v);

    public abstract List<ICacheRecord> saveAndLoadAggregatedAccountData(T t, U u, V v);
}
