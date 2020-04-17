package com.microsoft.azure.storage.file;

import com.microsoft.azure.storage.StorageUri;
import java.net.URI;

public interface ListFileItem {
    CloudFileDirectory getParent();

    CloudFileShare getShare();

    StorageUri getStorageUri();

    URI getUri();
}
