package com.microsoft.azure.storage.blob;

import com.microsoft.azure.storage.StorageUri;
import java.net.URI;

public interface ListBlobItem {
    CloudBlobContainer getContainer();

    CloudBlobDirectory getParent();

    StorageUri getStorageUri();

    URI getUri();
}
