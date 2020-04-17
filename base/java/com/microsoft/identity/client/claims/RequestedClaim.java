package com.microsoft.identity.client.claims;

public class RequestedClaim {
    public RequestedClaimAdditionalInformation mInformation;
    public String mName;

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof RequestedClaim)) {
            return false;
        }
        RequestedClaim requestedClaim = (RequestedClaim) obj;
        if (!this.mName.equals(requestedClaim.mName)) {
            return false;
        }
        RequestedClaimAdditionalInformation requestedClaimAdditionalInformation = this.mInformation;
        RequestedClaimAdditionalInformation requestedClaimAdditionalInformation2 = requestedClaim.mInformation;
        if (requestedClaimAdditionalInformation != null) {
            return requestedClaimAdditionalInformation.equals(requestedClaimAdditionalInformation2);
        }
        if (requestedClaimAdditionalInformation2 == null) {
            return true;
        }
        return false;
    }

    public RequestedClaimAdditionalInformation getAdditionalInformation() {
        return this.mInformation;
    }

    public String getName() {
        return this.mName;
    }

    public int hashCode() {
        int hashCode = this.mName.hashCode() * 31;
        RequestedClaimAdditionalInformation requestedClaimAdditionalInformation = this.mInformation;
        return hashCode + (requestedClaimAdditionalInformation != null ? requestedClaimAdditionalInformation.hashCode() : 0);
    }

    public void setAdditionalInformation(RequestedClaimAdditionalInformation requestedClaimAdditionalInformation) {
        this.mInformation = requestedClaimAdditionalInformation;
    }

    public void setName(String str) {
        this.mName = str;
    }
}
