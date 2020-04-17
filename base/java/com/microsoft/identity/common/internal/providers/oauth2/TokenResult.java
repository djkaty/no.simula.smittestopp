package com.microsoft.identity.common.internal.providers.oauth2;

import com.microsoft.identity.common.internal.telemetry.CliTelemInfo;
import e.a.a.a.a;

public class TokenResult implements IResult {
    public CliTelemInfo mCliTelemInfo;
    public boolean mSuccess;
    public TokenErrorResponse mTokenErrorResponse;
    public TokenResponse mTokenResponse;

    public TokenResult() {
        this.mSuccess = false;
    }

    public CliTelemInfo getCliTelemInfo() {
        return this.mCliTelemInfo;
    }

    public boolean getSuccess() {
        return this.mSuccess;
    }

    public TokenResponse getTokenResponse() {
        return this.mTokenResponse;
    }

    public void setCliTelemInfo(CliTelemInfo cliTelemInfo) {
        this.mCliTelemInfo = cliTelemInfo;
    }

    public void setSuccess(boolean z) {
        this.mSuccess = z;
    }

    public String toString() {
        StringBuilder a = a.a("TokenResult{mTokenResponse=");
        a.append(this.mTokenResponse);
        a.append(", mTokenErrorResponse=");
        a.append(this.mTokenErrorResponse);
        a.append(", mSuccess=");
        a.append(this.mSuccess);
        a.append('}');
        return a.toString();
    }

    public TokenErrorResponse getErrorResponse() {
        return this.mTokenErrorResponse;
    }

    public TokenResponse getSuccessResponse() {
        return this.mTokenResponse;
    }

    public TokenResult(TokenResponse tokenResponse) {
        this(tokenResponse, (TokenErrorResponse) null);
    }

    public TokenResult(TokenErrorResponse tokenErrorResponse) {
        this((TokenResponse) null, tokenErrorResponse);
    }

    public TokenResult(TokenResponse tokenResponse, TokenErrorResponse tokenErrorResponse) {
        this.mSuccess = false;
        this.mTokenResponse = tokenResponse;
        this.mTokenErrorResponse = tokenErrorResponse;
        if (tokenResponse != null) {
            this.mSuccess = true;
        }
    }
}
