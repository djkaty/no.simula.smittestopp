package com.microsoft.azure.storage.blob;

import com.microsoft.azure.storage.Permissions;

public final class BlobContainerPermissions extends Permissions<SharedAccessBlobPolicy> {
    public BlobContainerPublicAccessType publicAccess;

    public BlobContainerPermissions() {
        setPublicAccess(BlobContainerPublicAccessType.OFF);
    }

    public BlobContainerPublicAccessType getPublicAccess() {
        return this.publicAccess;
    }

    public void setPublicAccess(BlobContainerPublicAccessType blobContainerPublicAccessType) {
        this.publicAccess = blobContainerPublicAccessType;
    }
}
