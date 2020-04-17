package com.microsoft.azure.storage;

public final class StaticWebsiteProperties {
    public boolean enabled = false;
    public String errorDocument404Path;
    public String indexDocument;

    public boolean getEnabled() {
        return this.enabled;
    }

    public String getErrorDocument404Path() {
        return this.errorDocument404Path;
    }

    public String getIndexDocument() {
        return this.indexDocument;
    }

    public void setEnabled(boolean z) {
        this.enabled = z;
    }

    public void setErrorDocument404Path(String str) {
        this.errorDocument404Path = str;
    }

    public void setIndexDocument(String str) {
        this.indexDocument = str;
    }
}
