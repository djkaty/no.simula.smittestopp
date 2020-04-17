package com.microsoft.identity.client.exception;

import com.microsoft.identity.client.AcquireTokenSilentParameters;
import com.microsoft.identity.common.exception.ErrorStrings;
import java.util.List;

public class MsalDeclinedScopeException extends MsalException {
    public List<String> mDeclinedScopes;
    public List<String> mGrantedScopes;
    public AcquireTokenSilentParameters mSilentParametersForGrantedScopes;

    public MsalDeclinedScopeException(List<String> list, List<String> list2, AcquireTokenSilentParameters acquireTokenSilentParameters) {
        super(ErrorStrings.DECLINED_SCOPE_ERROR_CODE, ErrorStrings.DECLINED_SCOPE_ERROR_MESSAGE);
        this.mGrantedScopes = list;
        this.mDeclinedScopes = list2;
        this.mSilentParametersForGrantedScopes = acquireTokenSilentParameters;
    }

    public List<String> getDeclinedScopes() {
        return this.mDeclinedScopes;
    }

    public List<String> getGrantedScopes() {
        return this.mGrantedScopes;
    }

    public AcquireTokenSilentParameters getSilentParametersForGrantedScopes() {
        return this.mSilentParametersForGrantedScopes;
    }
}
