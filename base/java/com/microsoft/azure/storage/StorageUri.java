package com.microsoft.azure.storage;

import com.microsoft.azure.storage.core.SR;
import com.microsoft.azure.storage.core.Utility;
import java.net.URI;

public class StorageUri {
    public URI primaryUri;
    public URI secondaryUri;

    /* renamed from: com.microsoft.azure.storage.StorageUri$1  reason: invalid class name */
    public static /* synthetic */ class AnonymousClass1 {
        public static final /* synthetic */ int[] $SwitchMap$com$microsoft$azure$storage$LocationMode;
        public static final /* synthetic */ int[] $SwitchMap$com$microsoft$azure$storage$StorageLocation;

        /* JADX WARNING: Can't wrap try/catch for region: R(10:0|(2:1|2)|3|(2:5|6)|7|9|10|11|12|14) */
        /* JADX WARNING: Code restructure failed: missing block: B:15:?, code lost:
            return;
         */
        /* JADX WARNING: Failed to process nested try/catch */
        /* JADX WARNING: Missing exception handler attribute for start block: B:11:0x0023 */
        static {
            /*
                com.microsoft.azure.storage.LocationMode[] r0 = com.microsoft.azure.storage.LocationMode.values()
                int r0 = r0.length
                int[] r0 = new int[r0]
                $SwitchMap$com$microsoft$azure$storage$LocationMode = r0
                r1 = 0
                r2 = 1
                com.microsoft.azure.storage.LocationMode r3 = com.microsoft.azure.storage.LocationMode.PRIMARY_ONLY     // Catch:{ NoSuchFieldError -> 0x000f }
                r0[r1] = r2     // Catch:{ NoSuchFieldError -> 0x000f }
            L_0x000f:
                r0 = 2
                int[] r3 = $SwitchMap$com$microsoft$azure$storage$LocationMode     // Catch:{ NoSuchFieldError -> 0x0016 }
                com.microsoft.azure.storage.LocationMode r4 = com.microsoft.azure.storage.LocationMode.SECONDARY_ONLY     // Catch:{ NoSuchFieldError -> 0x0016 }
                r3[r0] = r0     // Catch:{ NoSuchFieldError -> 0x0016 }
            L_0x0016:
                com.microsoft.azure.storage.StorageLocation[] r3 = com.microsoft.azure.storage.StorageLocation.values()
                int r3 = r3.length
                int[] r3 = new int[r3]
                $SwitchMap$com$microsoft$azure$storage$StorageLocation = r3
                com.microsoft.azure.storage.StorageLocation r4 = com.microsoft.azure.storage.StorageLocation.PRIMARY     // Catch:{ NoSuchFieldError -> 0x0023 }
                r3[r1] = r2     // Catch:{ NoSuchFieldError -> 0x0023 }
            L_0x0023:
                int[] r1 = $SwitchMap$com$microsoft$azure$storage$StorageLocation     // Catch:{ NoSuchFieldError -> 0x0029 }
                com.microsoft.azure.storage.StorageLocation r3 = com.microsoft.azure.storage.StorageLocation.SECONDARY     // Catch:{ NoSuchFieldError -> 0x0029 }
                r1[r2] = r0     // Catch:{ NoSuchFieldError -> 0x0029 }
            L_0x0029:
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: com.microsoft.azure.storage.StorageUri.AnonymousClass1.<clinit>():void");
        }
    }

    public StorageUri(URI uri) {
        this(uri, (URI) null);
    }

    public static boolean AreUrisEqual(URI uri, URI uri2) {
        if (uri == null) {
            return uri2 == null;
        }
        return uri.equals(uri2);
    }

    public static void AssertAbsoluteUri(URI uri) {
        if (uri != null && !uri.isAbsolute()) {
            throw new IllegalArgumentException(String.format(Utility.LOCALE_US, SR.RELATIVE_ADDRESS_NOT_PERMITTED, new Object[]{uri.toString()}));
        }
    }

    private void setPrimaryUri(URI uri) {
        AssertAbsoluteUri(uri);
        this.primaryUri = uri;
    }

    private void setSecondaryUri(URI uri) {
        AssertAbsoluteUri(uri);
        this.secondaryUri = uri;
    }

    public boolean equals(Object obj) {
        return equals((StorageUri) obj);
    }

    public URI getPrimaryUri() {
        return this.primaryUri;
    }

    public String getQuery() {
        return this.primaryUri.getQuery();
    }

    public URI getSecondaryUri() {
        return this.secondaryUri;
    }

    public URI getUri(StorageLocation storageLocation) {
        int ordinal = storageLocation.ordinal();
        if (ordinal == 0) {
            return this.primaryUri;
        }
        if (ordinal == 1) {
            return this.secondaryUri;
        }
        throw new IllegalArgumentException(String.format(Utility.LOCALE_US, SR.ARGUMENT_OUT_OF_RANGE_ERROR, new Object[]{"location", storageLocation.toString()}));
    }

    public int hashCode() {
        URI uri = this.primaryUri;
        int i2 = 0;
        int hashCode = uri != null ? uri.hashCode() : 0;
        URI uri2 = this.secondaryUri;
        if (uri2 != null) {
            i2 = uri2.hashCode();
        }
        return hashCode ^ i2;
    }

    public boolean isAbsolute() {
        if (this.secondaryUri == null) {
            return this.primaryUri.isAbsolute();
        }
        return this.primaryUri.isAbsolute() && this.secondaryUri.isAbsolute();
    }

    public String toString() {
        return String.format(Utility.LOCALE_US, "Primary = '%s'; Secondary = '%s'", new Object[]{this.primaryUri, this.secondaryUri});
    }

    public boolean validateLocationMode(LocationMode locationMode) {
        int ordinal = locationMode.ordinal();
        if (ordinal != 0) {
            if (ordinal != 2) {
                if (this.primaryUri == null || this.secondaryUri == null) {
                    return false;
                }
                return true;
            } else if (this.secondaryUri != null) {
                return true;
            } else {
                return false;
            }
        } else if (this.primaryUri != null) {
            return true;
        } else {
            return false;
        }
    }

    public StorageUri(URI uri, URI uri2) {
        if (uri == null && uri2 == null) {
            throw new IllegalArgumentException(SR.STORAGE_URI_NOT_NULL);
        }
        if (!(uri == null || uri2 == null)) {
            if ((uri.getQuery() != null || uri2.getQuery() == null) && (uri.getQuery() == null || uri.getQuery().equals(uri2.getQuery()))) {
                boolean determinePathStyleFromUri = Utility.determinePathStyleFromUri(uri);
                boolean determinePathStyleFromUri2 = Utility.determinePathStyleFromUri(uri2);
                if (determinePathStyleFromUri || determinePathStyleFromUri2) {
                    int i2 = 3;
                    int i3 = determinePathStyleFromUri ? 3 : 2;
                    i2 = !determinePathStyleFromUri2 ? 2 : i2;
                    String[] split = uri.getPath().split("/", i3);
                    String[] split2 = uri2.getPath().split("/", i2);
                    String str = "";
                    if (!(split.length == i3 ? split[split.length - 1] : str).equals(split2.length == i2 ? split2[split2.length - 1] : str)) {
                        throw new IllegalArgumentException(SR.STORAGE_URI_MUST_MATCH);
                    }
                } else if ((uri.getPath() == null && uri2.getPath() != null) || (uri.getPath() != null && !uri.getPath().equals(uri2.getPath()))) {
                    throw new IllegalArgumentException(SR.STORAGE_URI_MUST_MATCH);
                }
            } else {
                throw new IllegalArgumentException(SR.STORAGE_URI_MUST_MATCH);
            }
        }
        setPrimaryUri(uri);
        setSecondaryUri(uri2);
    }

    public boolean equals(StorageUri storageUri) {
        return storageUri != null && AreUrisEqual(this.primaryUri, storageUri.primaryUri) && AreUrisEqual(this.secondaryUri, storageUri.secondaryUri);
    }
}
