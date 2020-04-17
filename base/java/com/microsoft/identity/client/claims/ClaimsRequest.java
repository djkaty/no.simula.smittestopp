package com.microsoft.identity.client.claims;

import com.google.gson.Gson;
import e.c.c.e;
import e.c.c.w.t;
import java.lang.reflect.Type;
import java.util.ArrayList;
import java.util.List;

public class ClaimsRequest {
    public static final String ACCESS_TOKEN = "access_token";
    public static final String ID_TOKEN = "id_token";
    public static final String USERINFO = "userinfo";
    public List<RequestedClaim> mAccessTokenClaimsRequested = new ArrayList();
    public List<RequestedClaim> mIdTokenClaimsRequested = new ArrayList();
    public List<RequestedClaim> mUserInfoClaimsRequested = new ArrayList();

    public static ClaimsRequest deserializeClaimsRequest(String str) {
        Class cls = ClaimsRequest.class;
        e eVar = new e();
        eVar.a(cls, new ClaimsRequestDeserializer());
        return (ClaimsRequest) t.a(cls).cast(eVar.a().a(str, (Type) cls));
    }

    public static ClaimsRequest getClaimsRequestFromJsonString(String str) {
        return deserializeClaimsRequest(str);
    }

    public static String getJsonStringFromClaimsRequest(ClaimsRequest claimsRequest) {
        return serializeClaimsRequest(claimsRequest);
    }

    private void requestClaimIn(List<RequestedClaim> list, String str, RequestedClaimAdditionalInformation requestedClaimAdditionalInformation) {
        RequestedClaim requestedClaim = new RequestedClaim();
        requestedClaim.setName(str);
        requestedClaim.setAdditionalInformation(requestedClaimAdditionalInformation);
        list.add(requestedClaim);
    }

    public static String serializeClaimsRequest(ClaimsRequest claimsRequest) {
        e eVar = new e();
        ClaimsRequestSerializer claimsRequestSerializer = new ClaimsRequestSerializer();
        RequestClaimAdditionalInformationSerializer requestClaimAdditionalInformationSerializer = new RequestClaimAdditionalInformationSerializer();
        eVar.a(ClaimsRequest.class, claimsRequestSerializer);
        eVar.a(RequestedClaimAdditionalInformation.class, requestClaimAdditionalInformationSerializer);
        eVar.f1298g = true;
        Gson a = eVar.a();
        if (claimsRequest != null) {
            return a.a((Object) claimsRequest);
        }
        return null;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof ClaimsRequest)) {
            return false;
        }
        ClaimsRequest claimsRequest = (ClaimsRequest) obj;
        List<RequestedClaim> list = this.mUserInfoClaimsRequested;
        if (list == null ? claimsRequest.mUserInfoClaimsRequested != null : !list.equals(claimsRequest.mUserInfoClaimsRequested)) {
            return false;
        }
        List<RequestedClaim> list2 = this.mAccessTokenClaimsRequested;
        if (list2 == null ? claimsRequest.mAccessTokenClaimsRequested != null : !list2.equals(claimsRequest.mAccessTokenClaimsRequested)) {
            return false;
        }
        List<RequestedClaim> list3 = this.mIdTokenClaimsRequested;
        List<RequestedClaim> list4 = claimsRequest.mIdTokenClaimsRequested;
        if (list3 != null) {
            return list3.equals(list4);
        }
        if (list4 == null) {
            return true;
        }
        return false;
    }

    public List<RequestedClaim> getAccessTokenClaimsRequested() {
        return this.mAccessTokenClaimsRequested;
    }

    public List<RequestedClaim> getIdTokenClaimsRequested() {
        return this.mIdTokenClaimsRequested;
    }

    public List<RequestedClaim> getUserInfoClaimsRequested() {
        return this.mUserInfoClaimsRequested;
    }

    public int hashCode() {
        List<RequestedClaim> list = this.mUserInfoClaimsRequested;
        int i2 = 0;
        int hashCode = (list != null ? list.hashCode() : 0) * 31;
        List<RequestedClaim> list2 = this.mAccessTokenClaimsRequested;
        int hashCode2 = (hashCode + (list2 != null ? list2.hashCode() : 0)) * 31;
        List<RequestedClaim> list3 = this.mIdTokenClaimsRequested;
        if (list3 != null) {
            i2 = list3.hashCode();
        }
        return hashCode2 + i2;
    }

    public void requestClaimInAccessToken(String str, RequestedClaimAdditionalInformation requestedClaimAdditionalInformation) {
        requestClaimIn(this.mAccessTokenClaimsRequested, str, requestedClaimAdditionalInformation);
    }

    public void requestClaimInIdToken(String str, RequestedClaimAdditionalInformation requestedClaimAdditionalInformation) {
        requestClaimIn(this.mIdTokenClaimsRequested, str, requestedClaimAdditionalInformation);
    }

    public void requestClaimInUserInfo(String str, RequestedClaimAdditionalInformation requestedClaimAdditionalInformation) {
        requestClaimIn(this.mUserInfoClaimsRequested, str, requestedClaimAdditionalInformation);
    }
}
