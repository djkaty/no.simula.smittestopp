package com.microsoft.identity.common.internal.cache;

import com.microsoft.identity.common.BaseAccount;
import com.microsoft.identity.common.internal.dto.AccessTokenRecord;
import com.microsoft.identity.common.internal.dto.AccountRecord;
import com.microsoft.identity.common.internal.dto.IdTokenRecord;
import com.microsoft.identity.common.internal.dto.RefreshTokenRecord;
import com.microsoft.identity.common.internal.providers.oauth2.AuthorizationRequest;
import com.microsoft.identity.common.internal.providers.oauth2.OAuth2Strategy;
import com.microsoft.identity.common.internal.providers.oauth2.RefreshToken;
import com.microsoft.identity.common.internal.providers.oauth2.TokenResponse;

public interface IAccountCredentialAdapter<T extends OAuth2Strategy, U extends AuthorizationRequest, V extends TokenResponse, W extends BaseAccount, X extends RefreshToken> {
    AccountRecord asAccount(W w);

    IdTokenRecord asIdToken(W w, X x);

    RefreshTokenRecord asRefreshToken(X x);

    AccessTokenRecord createAccessToken(T t, U u, V v);

    AccountRecord createAccount(T t, U u, V v);

    IdTokenRecord createIdToken(T t, U u, V v);

    RefreshTokenRecord createRefreshToken(T t, U u, V v);
}
