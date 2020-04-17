package com.microsoft.identity.client;

import com.microsoft.identity.client.AcquireTokenSilentParameters;
import com.microsoft.identity.common.internal.result.ILocalAuthenticationResult;

public class TokenParametersAdapter {
    public static AcquireTokenSilentParameters silentParametersFromInteractive(AcquireTokenParameters acquireTokenParameters, ILocalAuthenticationResult iLocalAuthenticationResult) {
        return ((AcquireTokenSilentParameters.Builder) ((AcquireTokenSilentParameters.Builder) ((AcquireTokenSilentParameters.Builder) ((AcquireTokenSilentParameters.Builder) new AcquireTokenSilentParameters.Builder().withCallback(acquireTokenParameters.getCallback()).fromAuthority(acquireTokenParameters.getAuthority())).withClaims(acquireTokenParameters.getClaimsRequest())).withScopes(acquireTokenParameters.getScopes())).forAccount(AccountAdapter.adapt(iLocalAuthenticationResult.getCacheRecordWithTenantProfileData()).get(0))).build();
    }
}
