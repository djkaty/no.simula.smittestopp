package com.microsoft.azure.storage;

public final class AccountInformation {
    public String accountKind;
    public String skuName;

    public String getAccountKind() {
        return this.accountKind;
    }

    public String getSkuName() {
        return this.skuName;
    }

    public void setAccountKind(String str) {
        this.accountKind = str;
    }

    public void setSkuName(String str) {
        this.skuName = str;
    }
}
