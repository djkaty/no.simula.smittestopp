package com.microsoft.identity.client;

import com.microsoft.identity.client.claims.ClaimsRequest;
import com.microsoft.identity.common.internal.dto.AccountRecord;
import com.microsoft.identity.common.internal.migration.TokenCacheItemMigrationAdapter;
import com.microsoft.identity.common.internal.util.StringUtil;
import java.util.ArrayList;
import java.util.List;

public abstract class TokenParameters {
    public IAccount mAccount;
    public AccountRecord mAccountRecord;
    public AuthenticationScheme mAuthenticationScheme;
    public String mAuthority;
    public ClaimsRequest mClaimsRequest;
    public List<String> mScopes;

    public static abstract class Builder<B extends Builder<B>> {
        public IAccount mAccount;
        public AuthenticationScheme mAuthenticationScheme;
        public String mAuthority;
        public ClaimsRequest mClaimsRequest;
        public List<String> mScopes;

        public abstract TokenParameters build();

        public B forAccount(IAccount iAccount) {
            this.mAccount = iAccount;
            return self();
        }

        public B fromAuthority(String str) {
            this.mAuthority = str;
            return self();
        }

        public abstract B self();

        public B withAuthenticationScheme(AuthenticationScheme authenticationScheme) {
            this.mAuthenticationScheme = authenticationScheme;
            return self();
        }

        public B withClaims(ClaimsRequest claimsRequest) {
            this.mClaimsRequest = claimsRequest;
            return self();
        }

        public B withResource(final String str) {
            if (this.mScopes != null) {
                throw new IllegalArgumentException("Scopes is already set. Scopes and resources cannot be combined in a single request.");
            } else if (!StringUtil.isEmpty(str)) {
                this.mScopes = new ArrayList<String>() {
                    {
                        add(str.toLowerCase().trim() + TokenCacheItemMigrationAdapter.RESOURCE_DEFAULT_SCOPE);
                    }
                };
                return self();
            } else {
                throw new IllegalArgumentException("Empty resource string.");
            }
        }

        public B withScopes(List<String> list) {
            if (this.mScopes != null) {
                throw new IllegalArgumentException("Scopes is already set.");
            } else if (list == null || list.isEmpty()) {
                throw new IllegalArgumentException("Empty scopes list.");
            } else {
                this.mScopes = list;
                return self();
            }
        }
    }

    public TokenParameters(Builder builder) {
        this.mAccount = builder.mAccount;
        this.mAuthority = builder.mAuthority;
        this.mClaimsRequest = builder.mClaimsRequest;
        this.mScopes = builder.mScopes;
        this.mAuthenticationScheme = builder.mAuthenticationScheme;
    }

    public IAccount getAccount() {
        return this.mAccount;
    }

    public AccountRecord getAccountRecord() {
        return this.mAccountRecord;
    }

    public AuthenticationScheme getAuthenticationScheme() {
        return this.mAuthenticationScheme;
    }

    public String getAuthority() {
        return this.mAuthority;
    }

    public ClaimsRequest getClaimsRequest() {
        return this.mClaimsRequest;
    }

    public List<String> getScopes() {
        return this.mScopes;
    }

    public void setAccount(IAccount iAccount) {
        this.mAccount = iAccount;
    }

    public void setAccountRecord(AccountRecord accountRecord) {
        this.mAccountRecord = accountRecord;
    }

    public void setAuthority(String str) {
        this.mAuthority = str;
    }

    public void setScopes(List<String> list) {
        this.mScopes = list;
    }
}
