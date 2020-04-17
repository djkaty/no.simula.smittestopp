package com.microsoft.azure.storage;

import java.io.Serializable;
import java.util.HashMap;

public final class StorageExtendedErrorInformation implements Serializable {
    public static final long serialVersionUID = 1527013626991334677L;
    public HashMap<String, String[]> additionalDetails;
    public String errorCode;
    public String errorMessage;

    public StorageExtendedErrorInformation() {
        setAdditionalDetails(new HashMap());
    }

    public HashMap<String, String[]> getAdditionalDetails() {
        return this.additionalDetails;
    }

    @Deprecated
    public String getErrorCode() {
        return this.errorCode;
    }

    public String getErrorMessage() {
        return this.errorMessage;
    }

    public void setAdditionalDetails(HashMap<String, String[]> hashMap) {
        this.additionalDetails = hashMap;
    }

    public void setErrorCode(String str) {
        this.errorCode = str;
    }

    public void setErrorMessage(String str) {
        this.errorMessage = str;
    }
}
