package com.microsoft.azure.storage;

import com.microsoft.azure.storage.analytics.CloudAnalyticsClient;
import com.microsoft.azure.storage.blob.CloudBlobClient;
import com.microsoft.azure.storage.core.SR;
import com.microsoft.azure.storage.core.SharedAccessSignatureHelper;
import com.microsoft.azure.storage.core.StorageCredentialsHelper;
import com.microsoft.azure.storage.core.Utility;
import com.microsoft.azure.storage.file.CloudFileClient;
import com.microsoft.azure.storage.queue.CloudQueueClient;
import com.microsoft.azure.storage.table.CloudTableClient;
import java.net.URI;
import java.net.URISyntaxException;
import java.util.HashMap;
import java.util.Map;

public final class CloudStorageAccount {
    public static final String ACCOUNT_KEY_NAME = "AccountKey";
    public static final String ACCOUNT_NAME_NAME = "AccountName";
    public static final String ACCOUNT_TOKEN_NAME = "AccountToken";
    public static final String BLOB_ENDPOINT_NAME = "BlobEndpoint";
    public static final String BLOB_SECONDARY_ENDPOINT_NAME = "BlobSecondaryEndpoint";
    public static final String DEFAULT_DNS = "core.windows.net";
    public static final String DEFAULT_ENDPOINTS_PROTOCOL_NAME = "DefaultEndpointsProtocol";
    public static final String DEVELOPMENT_STORAGE_PRIMARY_ENDPOINT_FORMAT = "%s://%s:%s/%s";
    public static final String DEVELOPMENT_STORAGE_PROXY_URI_NAME = "DevelopmentStorageProxyUri";
    public static final String DEVELOPMENT_STORAGE_SECONDARY_ENDPOINT_FORMAT = "%s://%s:%s/%s-secondary";
    public static final String DEVSTORE_ACCOUNT_KEY = "Eby8vdM02xNOcqFlqUwJPLlmEtlCDXJ1OUzFT50uSRZ6IFsuFq2UVErCz4I6tq/K1SZFPTOtr/KBHBeksoGMGw==";
    public static final String DEVSTORE_ACCOUNT_NAME = "devstoreaccount1";
    public static final String DNS_NAME_FORMAT = "%s.%s";
    public static final String ENDPOINT_SUFFIX_NAME = "EndpointSuffix";
    public static final String FILE_ENDPOINT_NAME = "FileEndpoint";
    public static final String FILE_SECONDARY_ENDPOINT_NAME = "FileSecondaryEndpoint";
    public static final String PRIMARY_ENDPOINT_FORMAT = "%s://%s.%s";
    public static final String QUEUE_ENDPOINT_NAME = "QueueEndpoint";
    public static final String QUEUE_SECONDARY_ENDPOINT_NAME = "QueueSecondaryEndpoint";
    public static final String SECONDARY_ENDPOINT_FORMAT = "%s://%s%s.%s";
    public static final String SECONDARY_LOCATION_ACCOUNT_SUFFIX = "-secondary";
    public static final String SHARED_ACCESS_SIGNATURE_NAME = "SharedAccessSignature";
    public static final String TABLE_ENDPOINT_NAME = "TableEndpoint";
    public static final String TABLE_SECONDARY_ENDPOINT_NAME = "TableSecondaryEndpoint";
    public static final String USE_DEVELOPMENT_STORAGE_NAME = "UseDevelopmentStorage";
    public static ConnectionStringFilter validCredentials = matchesOne(matchesAll(allRequired(ACCOUNT_NAME_NAME, ACCOUNT_KEY_NAME), none("SharedAccessSignature")), matchesAll(allRequired("SharedAccessSignature"), optional(ACCOUNT_NAME_NAME), none(ACCOUNT_KEY_NAME)), none(ACCOUNT_NAME_NAME, ACCOUNT_KEY_NAME, "SharedAccessSignature"));
    public String accountName;
    public final StorageUri blobStorageUri;
    public StorageCredentials credentials;
    public String endpointSuffix;
    public final StorageUri fileStorageUri;
    public boolean isBlobEndpointDefault;
    public boolean isDevStoreAccount;
    public boolean isFileEndpointDefault;
    public boolean isQueueEndpointDefault;
    public boolean isTableEndpointDefault;
    public final StorageUri queueStorageUri;
    public final StorageUri tableStorageUri;

    public interface ConnectionStringFilter {
        Map<String, String> apply(Map<String, String> map);
    }

    public CloudStorageAccount(StorageCredentials storageCredentials) {
        this(storageCredentials, false, (String) null);
    }

    public static ConnectionStringFilter allRequired(final String... strArr) {
        return new ConnectionStringFilter() {
            public Map<String, String> apply(Map<String, String> map) {
                HashMap hashMap = new HashMap(map);
                for (String str : strArr) {
                    if (!hashMap.containsKey(str)) {
                        return null;
                    }
                    hashMap.remove(str);
                }
                return hashMap;
            }
        };
    }

    public static ConnectionStringFilter atLeastOne(final String... strArr) {
        return new ConnectionStringFilter() {
            public Map<String, String> apply(Map<String, String> map) {
                HashMap hashMap = new HashMap(map);
                Boolean bool = false;
                for (String str : strArr) {
                    if (hashMap.containsKey(str)) {
                        hashMap.remove(str);
                        bool = true;
                    }
                }
                if (bool.booleanValue()) {
                    return hashMap;
                }
                return null;
            }
        };
    }

    public static String getDNS(String str, String str2) {
        if (str2 == null) {
            str2 = DEFAULT_DNS;
        }
        return String.format(DNS_NAME_FORMAT, new Object[]{str, str2});
    }

    public static StorageUri getDefaultStorageUri(String str, String str2, String str3) {
        if (Utility.isNullOrEmpty(str)) {
            throw new IllegalArgumentException(SR.SCHEME_NULL_OR_EMPTY);
        } else if (!Utility.isNullOrEmpty(str2)) {
            return new StorageUri(new URI(String.format(PRIMARY_ENDPOINT_FORMAT, new Object[]{str, str2, str3})), new URI(String.format(SECONDARY_ENDPOINT_FORMAT, new Object[]{str, str2, SECONDARY_LOCATION_ACCOUNT_SUFFIX, str3})));
        } else {
            throw new IllegalArgumentException(SR.ACCOUNT_NAME_NULL_OR_EMPTY);
        }
    }

    public static CloudStorageAccount getDevelopmentStorageAccount() {
        try {
            return getDevelopmentStorageAccount((URI) null);
        } catch (URISyntaxException unused) {
            return null;
        }
    }

    public static StorageUri getStorageUri(Map<String, String> map, String str, String str2, String str3, Boolean bool) {
        String str4 = settingOrDefault(map, str2);
        String str5 = settingOrDefault(map, str3);
        if (str5 != null && str4 != null) {
            return new StorageUri(new URI(str4), new URI(str5));
        }
        if (str4 != null) {
            return new StorageUri(new URI(str4));
        }
        if (bool.booleanValue()) {
            return getDefaultStorageUri(map.get(DEFAULT_ENDPOINTS_PROTOCOL_NAME), map.get(ACCOUNT_NAME_NAME), getDNS(str, map.get(ENDPOINT_SUFFIX_NAME)));
        }
        return null;
    }

    public static Boolean isValidEndpointPair(String str, String str2) {
        return Boolean.valueOf(str != null || str2 == null);
    }

    public static ConnectionStringFilter matchesAll(final ConnectionStringFilter... connectionStringFilterArr) {
        return new ConnectionStringFilter() {
            public Map<String, String> apply(Map<String, String> map) {
                Map<String, String> hashMap = new HashMap<>(map);
                for (ConnectionStringFilter connectionStringFilter : connectionStringFilterArr) {
                    if (hashMap == null) {
                        break;
                    }
                    hashMap = connectionStringFilter.apply(hashMap);
                }
                return hashMap;
            }
        };
    }

    public static ConnectionStringFilter matchesExactly(final ConnectionStringFilter connectionStringFilter) {
        return new ConnectionStringFilter() {
            public Map<String, String> apply(Map<String, String> map) {
                Map<String, String> apply = connectionStringFilter.apply(new HashMap(map));
                if (apply == null || !apply.isEmpty()) {
                    return null;
                }
                return apply;
            }
        };
    }

    public static ConnectionStringFilter matchesOne(final ConnectionStringFilter... connectionStringFilterArr) {
        return new ConnectionStringFilter() {
            public Map<String, String> apply(Map<String, String> map) {
                Map<String, String> map2 = null;
                for (ConnectionStringFilter apply : connectionStringFilterArr) {
                    Map<String, String> apply2 = apply.apply(new HashMap(map));
                    if (apply2 != null) {
                        if (map2 != null) {
                            return null;
                        }
                        map2 = apply2;
                    }
                }
                return map2;
            }
        };
    }

    public static Boolean matchesSpecification(Map<String, String> map, ConnectionStringFilter... connectionStringFilterArr) {
        for (ConnectionStringFilter apply : connectionStringFilterArr) {
            map = apply.apply(map);
            if (map == null) {
                return false;
            }
        }
        if (map.isEmpty()) {
            return true;
        }
        return false;
    }

    public static ConnectionStringFilter none(final String... strArr) {
        return new ConnectionStringFilter() {
            public Map<String, String> apply(Map<String, String> map) {
                HashMap hashMap = new HashMap(map);
                Boolean bool = false;
                for (String str : strArr) {
                    if (hashMap.containsKey(str)) {
                        hashMap.remove(str);
                        bool = true;
                    }
                }
                if (bool.booleanValue()) {
                    return null;
                }
                return hashMap;
            }
        };
    }

    public static ConnectionStringFilter optional(final String... strArr) {
        return new ConnectionStringFilter() {
            public Map<String, String> apply(Map<String, String> map) {
                HashMap hashMap = new HashMap(map);
                for (String str : strArr) {
                    if (hashMap.containsKey(str)) {
                        hashMap.remove(str);
                    }
                }
                return hashMap;
            }
        };
    }

    /* JADX WARNING: Removed duplicated region for block: B:7:0x001c  */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public static com.microsoft.azure.storage.CloudStorageAccount parse(java.lang.String r4) {
        /*
            java.lang.String r0 = "Invalid connection string."
            if (r4 == 0) goto L_0x0051
            int r1 = r4.length()
            if (r1 == 0) goto L_0x0051
            java.util.HashMap r4 = com.microsoft.azure.storage.core.Utility.parseAccountString(r4)
            java.util.Set r1 = r4.entrySet()
            java.util.Iterator r1 = r1.iterator()
        L_0x0016:
            boolean r2 = r1.hasNext()
            if (r2 == 0) goto L_0x003d
            java.lang.Object r2 = r1.next()
            java.util.Map$Entry r2 = (java.util.Map.Entry) r2
            java.lang.Object r3 = r2.getValue()
            if (r3 == 0) goto L_0x0037
            java.lang.Object r2 = r2.getValue()
            java.lang.String r2 = (java.lang.String) r2
            java.lang.String r3 = ""
            boolean r2 = r2.equals(r3)
            if (r2 != 0) goto L_0x0037
            goto L_0x0016
        L_0x0037:
            java.lang.IllegalArgumentException r4 = new java.lang.IllegalArgumentException
            r4.<init>(r0)
            throw r4
        L_0x003d:
            com.microsoft.azure.storage.CloudStorageAccount r1 = tryConfigureDevStore(r4)
            if (r1 == 0) goto L_0x0044
            return r1
        L_0x0044:
            com.microsoft.azure.storage.CloudStorageAccount r4 = tryConfigureServiceAccount(r4)
            if (r4 == 0) goto L_0x004b
            return r4
        L_0x004b:
            java.lang.IllegalArgumentException r4 = new java.lang.IllegalArgumentException
            r4.<init>(r0)
            throw r4
        L_0x0051:
            java.lang.IllegalArgumentException r4 = new java.lang.IllegalArgumentException
            r4.<init>(r0)
            throw r4
        */
        throw new UnsupportedOperationException("Method not decompiled: com.microsoft.azure.storage.CloudStorageAccount.parse(java.lang.String):com.microsoft.azure.storage.CloudStorageAccount");
    }

    public static String settingOrDefault(Map<String, String> map, String str) {
        if (map.containsKey(str)) {
            return map.get(str);
        }
        return null;
    }

    public static CloudStorageAccount tryConfigureDevStore(Map<String, String> map) {
        URI uri = null;
        if (!matchesSpecification(map, allRequired(USE_DEVELOPMENT_STORAGE_NAME), optional(DEVELOPMENT_STORAGE_PROXY_URI_NAME)).booleanValue()) {
            return null;
        }
        if (Boolean.parseBoolean(map.get(USE_DEVELOPMENT_STORAGE_NAME))) {
            if (map.containsKey(DEVELOPMENT_STORAGE_PROXY_URI_NAME)) {
                uri = new URI(map.get(DEVELOPMENT_STORAGE_PROXY_URI_NAME));
            }
            return getDevelopmentStorageAccount(uri);
        }
        throw new IllegalArgumentException(SR.INVALID_CONNECTION_STRING_DEV_STORE_NOT_TRUE);
    }

    public static CloudStorageAccount tryConfigureServiceAccount(Map<String, String> map) {
        Map<String, String> map2 = map;
        ConnectionStringFilter optional = optional(BLOB_ENDPOINT_NAME, BLOB_SECONDARY_ENDPOINT_NAME, QUEUE_ENDPOINT_NAME, QUEUE_SECONDARY_ENDPOINT_NAME, TABLE_ENDPOINT_NAME, TABLE_SECONDARY_ENDPOINT_NAME, FILE_ENDPOINT_NAME, FILE_SECONDARY_ENDPOINT_NAME);
        ConnectionStringFilter atLeastOne = atLeastOne(BLOB_ENDPOINT_NAME, QUEUE_ENDPOINT_NAME, TABLE_ENDPOINT_NAME, FILE_ENDPOINT_NAME);
        ConnectionStringFilter optional2 = optional(BLOB_SECONDARY_ENDPOINT_NAME, QUEUE_SECONDARY_ENDPOINT_NAME, TABLE_SECONDARY_ENDPOINT_NAME, FILE_SECONDARY_ENDPOINT_NAME);
        ConnectionStringFilter matchesExactly = matchesExactly(matchesAll(matchesOne(matchesAll(allRequired(ACCOUNT_KEY_NAME)), allRequired("SharedAccessSignature")), allRequired(ACCOUNT_NAME_NAME), optional, optional(DEFAULT_ENDPOINTS_PROTOCOL_NAME, ENDPOINT_SUFFIX_NAME)));
        String str = ACCOUNT_NAME_NAME;
        ConnectionStringFilter matchesExactly2 = matchesExactly(matchesAll(validCredentials, atLeastOne, optional2));
        Boolean matchesSpecification = matchesSpecification(map2, matchesExactly);
        Boolean matchesSpecification2 = matchesSpecification(map2, matchesExactly2);
        if (!matchesSpecification.booleanValue() && !matchesSpecification2.booleanValue()) {
            return null;
        }
        if (matchesSpecification.booleanValue() && !map2.containsKey(DEFAULT_ENDPOINTS_PROTOCOL_NAME)) {
            map2.put(DEFAULT_ENDPOINTS_PROTOCOL_NAME, "https");
        }
        String str2 = settingOrDefault(map2, BLOB_ENDPOINT_NAME);
        String str3 = settingOrDefault(map2, QUEUE_ENDPOINT_NAME);
        String str4 = settingOrDefault(map2, TABLE_ENDPOINT_NAME);
        String str5 = settingOrDefault(map2, FILE_ENDPOINT_NAME);
        String str6 = settingOrDefault(map2, BLOB_SECONDARY_ENDPOINT_NAME);
        String str7 = ENDPOINT_SUFFIX_NAME;
        String str8 = settingOrDefault(map2, QUEUE_SECONDARY_ENDPOINT_NAME);
        String str9 = FILE_ENDPOINT_NAME;
        String str10 = settingOrDefault(map2, TABLE_SECONDARY_ENDPOINT_NAME);
        String str11 = TABLE_ENDPOINT_NAME;
        String str12 = settingOrDefault(map2, FILE_SECONDARY_ENDPOINT_NAME);
        if (!isValidEndpointPair(str2, str6).booleanValue() || !isValidEndpointPair(str3, str8).booleanValue() || !isValidEndpointPair(str4, str10).booleanValue() || !isValidEndpointPair(str5, str12).booleanValue()) {
            return null;
        }
        CloudStorageAccount cloudStorageAccount = new CloudStorageAccount(StorageCredentials.tryParseCredentials(map), getStorageUri(map2, SR.BLOB, BLOB_ENDPOINT_NAME, BLOB_SECONDARY_ENDPOINT_NAME, matchesSpecification), getStorageUri(map2, SR.QUEUE, QUEUE_ENDPOINT_NAME, QUEUE_SECONDARY_ENDPOINT_NAME, matchesSpecification), getStorageUri(map2, SR.TABLE, str11, TABLE_SECONDARY_ENDPOINT_NAME, matchesSpecification), getStorageUri(map2, SR.FILE, str9, FILE_SECONDARY_ENDPOINT_NAME, matchesSpecification));
        cloudStorageAccount.isBlobEndpointDefault = str2 == null;
        cloudStorageAccount.isFileEndpointDefault = str5 == null;
        cloudStorageAccount.isQueueEndpointDefault = str3 == null;
        cloudStorageAccount.isTableEndpointDefault = str4 == null;
        cloudStorageAccount.endpointSuffix = settingOrDefault(map2, str7);
        cloudStorageAccount.accountName = settingOrDefault(map2, str);
        return cloudStorageAccount;
    }

    public CloudAnalyticsClient createCloudAnalyticsClient() {
        if (getBlobStorageUri() == null) {
            throw new IllegalArgumentException(SR.BLOB_ENDPOINT_NOT_CONFIGURED);
        } else if (getTableStorageUri() == null) {
            throw new IllegalArgumentException(SR.TABLE_ENDPOINT_NOT_CONFIGURED);
        } else if (this.credentials != null) {
            return new CloudAnalyticsClient(getBlobStorageUri(), getTableStorageUri(), getCredentials());
        } else {
            throw new IllegalArgumentException(SR.MISSING_CREDENTIALS);
        }
    }

    public CloudBlobClient createCloudBlobClient() {
        if (getBlobStorageUri() == null) {
            throw new IllegalArgumentException(SR.BLOB_ENDPOINT_NOT_CONFIGURED);
        } else if (this.credentials != null) {
            return new CloudBlobClient(getBlobStorageUri(), getCredentials());
        } else {
            throw new IllegalArgumentException(SR.MISSING_CREDENTIALS);
        }
    }

    public CloudFileClient createCloudFileClient() {
        if (getFileStorageUri() != null) {
            StorageCredentials storageCredentials = this.credentials;
            if (storageCredentials == null) {
                throw new IllegalArgumentException(SR.MISSING_CREDENTIALS);
            } else if (StorageCredentialsHelper.canCredentialsGenerateClient(storageCredentials)) {
                return new CloudFileClient(getFileStorageUri(), getCredentials());
            } else {
                throw new IllegalArgumentException(SR.CREDENTIALS_CANNOT_SIGN_REQUEST);
            }
        } else {
            throw new IllegalArgumentException(SR.FILE_ENDPOINT_NOT_CONFIGURED);
        }
    }

    public CloudQueueClient createCloudQueueClient() {
        if (getQueueStorageUri() != null) {
            StorageCredentials storageCredentials = this.credentials;
            if (storageCredentials == null) {
                throw new IllegalArgumentException(SR.MISSING_CREDENTIALS);
            } else if (StorageCredentialsHelper.canCredentialsGenerateClient(storageCredentials)) {
                return new CloudQueueClient(getQueueStorageUri(), getCredentials());
            } else {
                throw new IllegalArgumentException(SR.CREDENTIALS_CANNOT_SIGN_REQUEST);
            }
        } else {
            throw new IllegalArgumentException(SR.QUEUE_ENDPOINT_NOT_CONFIGURED);
        }
    }

    public CloudTableClient createCloudTableClient() {
        if (getTableStorageUri() != null) {
            StorageCredentials storageCredentials = this.credentials;
            if (storageCredentials == null) {
                throw new IllegalArgumentException(SR.MISSING_CREDENTIALS);
            } else if (StorageCredentialsHelper.canCredentialsGenerateClient(storageCredentials)) {
                return new CloudTableClient(getTableStorageUri(), getCredentials());
            } else {
                throw new IllegalArgumentException(SR.CREDENTIALS_CANNOT_SIGN_REQUEST);
            }
        } else {
            throw new IllegalArgumentException(SR.TABLE_ENDPOINT_NOT_CONFIGURED);
        }
    }

    public String generateSharedAccessSignature(SharedAccessAccountPolicy sharedAccessAccountPolicy) {
        if (StorageCredentialsHelper.canCredentialsSignRequest(getCredentials())) {
            return SharedAccessSignatureHelper.generateSharedAccessSignatureForAccount(sharedAccessAccountPolicy, SharedAccessSignatureHelper.generateSharedAccessSignatureHashForAccount(this.credentials.getAccountName(), sharedAccessAccountPolicy, getCredentials())).toString();
        }
        throw new IllegalArgumentException(SR.CANNOT_CREATE_SAS_WITHOUT_ACCOUNT_KEY);
    }

    public URI getBlobEndpoint() {
        StorageUri storageUri = this.blobStorageUri;
        if (storageUri == null) {
            return null;
        }
        return storageUri.getPrimaryUri();
    }

    public StorageUri getBlobStorageUri() {
        return this.blobStorageUri;
    }

    public StorageCredentials getCredentials() {
        return this.credentials;
    }

    public String getEndpointSuffix() {
        return this.endpointSuffix;
    }

    public URI getFileEndpoint() {
        StorageUri storageUri = this.fileStorageUri;
        if (storageUri == null) {
            return null;
        }
        return storageUri.getPrimaryUri();
    }

    public StorageUri getFileStorageUri() {
        return this.fileStorageUri;
    }

    public URI getQueueEndpoint() {
        StorageUri storageUri = this.queueStorageUri;
        if (storageUri == null) {
            return null;
        }
        return storageUri.getPrimaryUri();
    }

    public StorageUri getQueueStorageUri() {
        return this.queueStorageUri;
    }

    public URI getTableEndpoint() {
        StorageUri storageUri = this.tableStorageUri;
        if (storageUri == null) {
            return null;
        }
        return storageUri.getPrimaryUri();
    }

    public StorageUri getTableStorageUri() {
        return this.tableStorageUri;
    }

    public void setCredentials(StorageCredentials storageCredentials) {
        this.credentials = storageCredentials;
    }

    public String toString() {
        return toString(false);
    }

    public CloudStorageAccount(StorageCredentials storageCredentials, boolean z) {
        this(storageCredentials, z, (String) null);
    }

    public static CloudStorageAccount getDevelopmentStorageAccount(URI uri) {
        String str;
        String str2;
        if (uri == null) {
            str2 = "http";
            str = "127.0.0.1";
        } else {
            str2 = uri.getScheme();
            str = uri.getHost();
        }
        StorageCredentialsAccountAndKey storageCredentialsAccountAndKey = new StorageCredentialsAccountAndKey(DEVSTORE_ACCOUNT_NAME, DEVSTORE_ACCOUNT_KEY);
        URI uri2 = new URI(String.format(DEVELOPMENT_STORAGE_PRIMARY_ENDPOINT_FORMAT, new Object[]{str2, str, "10000", DEVSTORE_ACCOUNT_NAME}));
        URI uri3 = new URI(String.format(DEVELOPMENT_STORAGE_PRIMARY_ENDPOINT_FORMAT, new Object[]{str2, str, "10001", DEVSTORE_ACCOUNT_NAME}));
        URI uri4 = new URI(String.format(DEVELOPMENT_STORAGE_PRIMARY_ENDPOINT_FORMAT, new Object[]{str2, str, "10002", DEVSTORE_ACCOUNT_NAME}));
        URI uri5 = new URI(String.format(DEVELOPMENT_STORAGE_SECONDARY_ENDPOINT_FORMAT, new Object[]{str2, str, "10000", DEVSTORE_ACCOUNT_NAME}));
        URI uri6 = new URI(String.format(DEVELOPMENT_STORAGE_SECONDARY_ENDPOINT_FORMAT, new Object[]{str2, str, "10001", DEVSTORE_ACCOUNT_NAME}));
        URI uri7 = new URI(String.format(DEVELOPMENT_STORAGE_SECONDARY_ENDPOINT_FORMAT, new Object[]{str2, str, "10002", DEVSTORE_ACCOUNT_NAME}));
        CloudStorageAccount cloudStorageAccount = new CloudStorageAccount((StorageCredentials) storageCredentialsAccountAndKey, new StorageUri(uri2, uri5), new StorageUri(uri3, uri6), new StorageUri(uri4, uri7), (StorageUri) null);
        cloudStorageAccount.isDevStoreAccount = true;
        return cloudStorageAccount;
    }

    /* JADX WARNING: Removed duplicated region for block: B:17:0x008c  */
    /* JADX WARNING: Removed duplicated region for block: B:23:0x00ab  */
    /* JADX WARNING: Removed duplicated region for block: B:29:0x00ca  */
    /* JADX WARNING: Removed duplicated region for block: B:34:0x00e5  */
    /* JADX WARNING: Removed duplicated region for block: B:37:0x0102  */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public java.lang.String toString(boolean r9) {
        /*
            r8 = this;
            java.util.ArrayList r0 = new java.util.ArrayList
            r0.<init>()
            boolean r1 = r8.isDevStoreAccount
            r2 = 2
            r3 = 0
            r4 = 1
            if (r1 == 0) goto L_0x0051
            java.lang.Object[] r9 = new java.lang.Object[r4]
            java.lang.String r1 = "UseDevelopmentStorage"
            r9[r3] = r1
            java.lang.String r1 = "%s=true"
            java.lang.String r9 = java.lang.String.format(r1, r9)
            r0.add(r9)
            java.net.URI r9 = r8.getBlobEndpoint()
            java.lang.String r9 = r9.toString()
            java.lang.String r1 = "http://127.0.0.1:10000/devstoreaccount1"
            boolean r9 = r9.equals(r1)
            if (r9 != 0) goto L_0x0132
            r9 = 3
            java.lang.Object[] r9 = new java.lang.Object[r9]
            java.lang.String r1 = "DevelopmentStorageProxyUri"
            r9[r3] = r1
            java.net.URI r1 = r8.getBlobEndpoint()
            java.lang.String r1 = r1.getScheme()
            r9[r4] = r1
            java.net.URI r1 = r8.getBlobEndpoint()
            java.lang.String r1 = r1.getHost()
            r9[r2] = r1
            java.lang.String r1 = "%s=%s://%s/"
            java.lang.String r9 = java.lang.String.format(r1, r9)
            r0.add(r9)
            goto L_0x0132
        L_0x0051:
            java.lang.String r1 = r8.endpointSuffix
            java.lang.String r5 = "%s=%s"
            if (r1 == 0) goto L_0x0066
            java.lang.Object[] r6 = new java.lang.Object[r2]
            java.lang.String r7 = "EndpointSuffix"
            r6[r3] = r7
            r6[r4] = r1
            java.lang.String r1 = java.lang.String.format(r5, r6)
            r0.add(r1)
        L_0x0066:
            com.microsoft.azure.storage.StorageUri r1 = r8.getBlobStorageUri()
            if (r1 == 0) goto L_0x0085
            boolean r1 = r8.isBlobEndpointDefault
            if (r1 == 0) goto L_0x0072
            r1 = 1
            goto L_0x0086
        L_0x0072:
            java.lang.Object[] r1 = new java.lang.Object[r2]
            java.lang.String r6 = "BlobEndpoint"
            r1[r3] = r6
            java.net.URI r6 = r8.getBlobEndpoint()
            r1[r4] = r6
            java.lang.String r1 = java.lang.String.format(r5, r1)
            r0.add(r1)
        L_0x0085:
            r1 = 0
        L_0x0086:
            com.microsoft.azure.storage.StorageUri r6 = r8.getQueueStorageUri()
            if (r6 == 0) goto L_0x00a5
            boolean r6 = r8.isQueueEndpointDefault
            if (r6 == 0) goto L_0x0092
            r1 = 1
            goto L_0x00a5
        L_0x0092:
            java.lang.Object[] r6 = new java.lang.Object[r2]
            java.lang.String r7 = "QueueEndpoint"
            r6[r3] = r7
            java.net.URI r7 = r8.getQueueEndpoint()
            r6[r4] = r7
            java.lang.String r6 = java.lang.String.format(r5, r6)
            r0.add(r6)
        L_0x00a5:
            com.microsoft.azure.storage.StorageUri r6 = r8.getTableStorageUri()
            if (r6 == 0) goto L_0x00c4
            boolean r6 = r8.isTableEndpointDefault
            if (r6 == 0) goto L_0x00b1
            r1 = 1
            goto L_0x00c4
        L_0x00b1:
            java.lang.Object[] r6 = new java.lang.Object[r2]
            java.lang.String r7 = "TableEndpoint"
            r6[r3] = r7
            java.net.URI r7 = r8.getTableEndpoint()
            r6[r4] = r7
            java.lang.String r6 = java.lang.String.format(r5, r6)
            r0.add(r6)
        L_0x00c4:
            com.microsoft.azure.storage.StorageUri r6 = r8.getFileStorageUri()
            if (r6 == 0) goto L_0x00e3
            boolean r6 = r8.isFileEndpointDefault
            if (r6 == 0) goto L_0x00d0
            r1 = 1
            goto L_0x00e3
        L_0x00d0:
            java.lang.Object[] r6 = new java.lang.Object[r2]
            java.lang.String r7 = "FileEndpoint"
            r6[r3] = r7
            java.net.URI r7 = r8.getFileEndpoint()
            r6[r4] = r7
            java.lang.String r6 = java.lang.String.format(r5, r6)
            r0.add(r6)
        L_0x00e3:
            if (r1 == 0) goto L_0x00fc
            java.lang.Object[] r1 = new java.lang.Object[r2]
            java.lang.String r6 = "DefaultEndpointsProtocol"
            r1[r3] = r6
            java.net.URI r6 = r8.getBlobEndpoint()
            java.lang.String r6 = r6.getScheme()
            r1[r4] = r6
            java.lang.String r1 = java.lang.String.format(r5, r1)
            r0.add(r1)
        L_0x00fc:
            com.microsoft.azure.storage.StorageCredentials r1 = r8.getCredentials()
            if (r1 == 0) goto L_0x010d
            com.microsoft.azure.storage.StorageCredentials r1 = r8.getCredentials()
            java.lang.String r9 = r1.toString(r9)
            r0.add(r9)
        L_0x010d:
            java.lang.String r9 = r8.accountName
            if (r9 == 0) goto L_0x0132
            com.microsoft.azure.storage.StorageCredentials r9 = r8.getCredentials()
            if (r9 == 0) goto L_0x0121
            com.microsoft.azure.storage.StorageCredentials r9 = r8.getCredentials()
            java.lang.String r9 = r9.getAccountName()
            if (r9 != 0) goto L_0x0132
        L_0x0121:
            java.lang.Object[] r9 = new java.lang.Object[r2]
            java.lang.String r1 = "AccountName"
            r9[r3] = r1
            java.lang.String r1 = r8.accountName
            r9[r4] = r1
            java.lang.String r9 = java.lang.String.format(r5, r9)
            r0.add(r9)
        L_0x0132:
            java.lang.StringBuilder r9 = new java.lang.StringBuilder
            r9.<init>()
            java.util.Iterator r1 = r0.iterator()
        L_0x013b:
            boolean r2 = r1.hasNext()
            if (r2 == 0) goto L_0x0150
            java.lang.Object r2 = r1.next()
            java.lang.String r2 = (java.lang.String) r2
            r9.append(r2)
            r2 = 59
            r9.append(r2)
            goto L_0x013b
        L_0x0150:
            int r0 = r0.size()
            if (r0 <= 0) goto L_0x015e
            int r0 = r9.length()
            int r0 = r0 - r4
            r9.deleteCharAt(r0)
        L_0x015e:
            java.lang.String r9 = r9.toString()
            return r9
        */
        throw new UnsupportedOperationException("Method not decompiled: com.microsoft.azure.storage.CloudStorageAccount.toString(boolean):java.lang.String");
    }

    public CloudStorageAccount(StorageCredentials storageCredentials, boolean z, String str) {
        this(storageCredentials, z, str, (String) null);
    }

    public CloudStorageAccount(StorageCredentials storageCredentials, boolean z, String str, String str2) {
        this.isBlobEndpointDefault = false;
        this.isFileEndpointDefault = false;
        this.isQueueEndpointDefault = false;
        this.isTableEndpointDefault = false;
        this.isDevStoreAccount = false;
        Utility.assertNotNull("storageCredentials", storageCredentials);
        if (Utility.isNullOrEmpty(str2)) {
            str2 = storageCredentials.getAccountName();
        } else if (!Utility.isNullOrEmpty(storageCredentials.getAccountName()) && !str2.equals(storageCredentials.getAccountName())) {
            throw new IllegalArgumentException(SR.ACCOUNT_NAME_MISMATCH);
        }
        String str3 = z ? "https" : "http";
        this.credentials = storageCredentials;
        this.blobStorageUri = getDefaultStorageUri(str3, str2, getDNS(SR.BLOB, str));
        this.fileStorageUri = getDefaultStorageUri(str3, str2, getDNS(SR.FILE, str));
        this.queueStorageUri = getDefaultStorageUri(str3, str2, getDNS(SR.QUEUE, str));
        this.tableStorageUri = getDefaultStorageUri(str3, str2, getDNS(SR.TABLE, str));
        this.endpointSuffix = str;
        this.isBlobEndpointDefault = true;
        this.isFileEndpointDefault = true;
        this.isQueueEndpointDefault = true;
        this.isTableEndpointDefault = true;
    }

    public CloudStorageAccount(StorageCredentials storageCredentials, URI uri, URI uri2, URI uri3) {
        this(storageCredentials, new StorageUri(uri), new StorageUri(uri2), new StorageUri(uri3), (StorageUri) null);
    }

    public CloudStorageAccount(StorageCredentials storageCredentials, URI uri, URI uri2, URI uri3, URI uri4) {
        this(storageCredentials, new StorageUri(uri), new StorageUri(uri2), new StorageUri(uri3), new StorageUri(uri4));
    }

    public CloudStorageAccount(StorageCredentials storageCredentials, StorageUri storageUri, StorageUri storageUri2, StorageUri storageUri3) {
        this(storageCredentials, storageUri, storageUri2, storageUri3, (StorageUri) null);
    }

    public CloudStorageAccount(StorageCredentials storageCredentials, StorageUri storageUri, StorageUri storageUri2, StorageUri storageUri3, StorageUri storageUri4) {
        this.isBlobEndpointDefault = false;
        this.isFileEndpointDefault = false;
        this.isQueueEndpointDefault = false;
        this.isTableEndpointDefault = false;
        this.isDevStoreAccount = false;
        this.credentials = storageCredentials;
        this.blobStorageUri = storageUri;
        this.fileStorageUri = storageUri4;
        this.queueStorageUri = storageUri2;
        this.tableStorageUri = storageUri3;
        this.endpointSuffix = null;
    }
}
