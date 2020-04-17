package com.microsoft.azure.storage.core;

import com.microsoft.azure.storage.StorageCredentials;
import com.microsoft.azure.storage.StorageUri;
import com.microsoft.identity.client.internal.MsalUtils;
import java.net.URI;
import java.net.URISyntaxException;
import java.util.HashMap;
import java.util.Map;

public final class PathUtility {
    public static StorageUri addToQuery(StorageUri storageUri, String str) {
        return new StorageUri(addToSingleUriQuery(storageUri.getPrimaryUri(), parseQueryString(str)), addToSingleUriQuery(storageUri.getSecondaryUri(), parseQueryString(str)));
    }

    public static URI addToSingleUriQuery(URI uri, HashMap<String, String[]> hashMap) {
        if (uri == null) {
            return null;
        }
        UriQueryBuilder uriQueryBuilder = new UriQueryBuilder();
        for (Map.Entry next : hashMap.entrySet()) {
            for (String add : (String[]) next.getValue()) {
                uriQueryBuilder.add((String) next.getKey(), add);
            }
        }
        return uriQueryBuilder.addToURI(uri);
    }

    public static URI appendPathToSingleUri(URI uri, String str) {
        return appendPathToSingleUri(uri, str, "/");
    }

    public static StorageUri appendPathToUri(StorageUri storageUri, String str) {
        return appendPathToUri(storageUri, str, "/");
    }

    public static String getBlobNameFromURI(URI uri, boolean z) {
        return Utility.safeRelativize(new URI(getContainerURI(new StorageUri(uri), z).getPrimaryUri().toString().concat("/")), uri);
    }

    public static String getCanonicalPathFromCredentials(StorageCredentials storageCredentials, String str) {
        String accountName = storageCredentials.getAccountName();
        if (accountName != null) {
            return "/" + accountName + str;
        }
        throw new IllegalArgumentException(SR.CANNOT_CREATE_SAS_FOR_GIVEN_CREDENTIALS);
    }

    public static String getContainerNameFromUri(URI uri, boolean z) {
        return getResourceNameFromUri(uri, z, String.format("Invalid blob address '%s', missing container information", new Object[]{uri}));
    }

    public static StorageUri getContainerURI(StorageUri storageUri, boolean z) {
        return appendPathToUri(getServiceClientBaseAddress(storageUri, z), getContainerNameFromUri(storageUri.getPrimaryUri(), z));
    }

    public static String getDirectoryNameFromURI(URI uri, boolean z) {
        String[] split = uri.getRawPath().split("/");
        int i2 = z ? 2 : 1;
        if (split.length - 1 < i2) {
            throw new IllegalArgumentException(String.format("Invalid directory address '%s'.", new Object[]{uri}));
        } else if (split.length - 1 == i2) {
            return "";
        } else {
            return split[split.length - 1];
        }
    }

    public static String getFileNameFromURI(URI uri, boolean z) {
        String[] split = uri.getRawPath().split("/");
        if (split.length - 1 > (z ? 2 : 1)) {
            return split[split.length - 1];
        }
        throw new IllegalArgumentException(String.format("Invalid file address '%s'.", new Object[]{uri}));
    }

    public static String getResourceNameFromUri(URI uri, boolean z, String str) {
        Utility.assertNotNull("resourceAddress", uri);
        String[] split = uri.getRawPath().split("/");
        if (split.length >= (z ? 3 : 2)) {
            return Utility.trimEnd(z ? split[2] : split[1], '/');
        }
        throw new IllegalArgumentException(str);
    }

    public static String getServiceClientBaseAddress(URI uri, boolean z) {
        if (uri == null) {
            return null;
        }
        if (!z) {
            return new URI(uri.getScheme(), uri.getAuthority(), (String) null, (String) null, (String) null).toString();
        }
        String[] split = uri.getRawPath().split("/");
        if (split.length >= 2) {
            return new URI(uri.getScheme(), uri.getAuthority(), (String) null, (String) null, (String) null).toString() + "/" + Utility.trimEnd(split[1], '/');
        }
        throw new IllegalArgumentException(String.format(SR.PATH_STYLE_URI_MISSING_ACCOUNT_INFORMATION, new Object[0]));
    }

    public static String getShareNameFromUri(URI uri, boolean z) {
        return getResourceNameFromUri(uri, z, String.format("Invalid file address '%s', missing share information", new Object[]{uri}));
    }

    public static StorageUri getShareURI(StorageUri storageUri, boolean z) {
        return appendPathToUri(getServiceClientBaseAddress(storageUri, z), getShareNameFromUri(storageUri.getPrimaryUri(), z));
    }

    public static String getTableNameFromUri(URI uri, boolean z) {
        return getResourceNameFromUri(uri, z, String.format("Invalid table address '%s', missing table information", new Object[]{uri}));
    }

    public static HashMap<String, String[]> parseQueryString(String str) {
        HashMap<String, String[]> hashMap = new HashMap<>();
        if (Utility.isNullOrEmpty(str)) {
            return hashMap;
        }
        int indexOf = str.indexOf(MsalUtils.QUERY_STRING_SYMBOL);
        if (indexOf >= 0 && str.length() > 0) {
            str = str.substring(indexOf + 1);
        }
        String str2 = "&";
        if (!str.contains(str2)) {
            str2 = ";";
        }
        String[] split = str.split(str2);
        for (int i2 = 0; i2 < split.length; i2++) {
            int indexOf2 = split[i2].indexOf("=");
            if (indexOf2 >= 0 && indexOf2 != split[i2].length() - 1) {
                String substring = split[i2].substring(0, indexOf2);
                String substring2 = split[i2].substring(indexOf2 + 1);
                String safeDecode = Utility.safeDecode(substring);
                String safeDecode2 = Utility.safeDecode(substring2);
                String[] strArr = hashMap.get(safeDecode);
                if (strArr == null) {
                    String[] strArr2 = {safeDecode2};
                    if (!safeDecode2.equals("")) {
                        hashMap.put(safeDecode, strArr2);
                    }
                } else if (!safeDecode2.equals("")) {
                    int length = strArr.length + 1;
                    String[] strArr3 = new String[length];
                    for (int i3 = 0; i3 < strArr.length; i3++) {
                        strArr3[i3] = strArr[i3];
                    }
                    strArr3[length] = safeDecode2;
                }
            }
        }
        return hashMap;
    }

    public static URI stripSingleURIQueryAndFragment(URI uri) {
        if (uri == null) {
            return null;
        }
        try {
            return new URI(uri.getScheme(), uri.getAuthority(), uri.getPath(), (String) null, (String) null);
        } catch (URISyntaxException e2) {
            throw Utility.generateNewUnexpectedStorageException(e2);
        }
    }

    public static StorageUri stripURIQueryAndFragment(StorageUri storageUri) {
        return new StorageUri(stripSingleURIQueryAndFragment(storageUri.getPrimaryUri()), stripSingleURIQueryAndFragment(storageUri.getSecondaryUri()));
    }

    public static URI appendPathToSingleUri(URI uri, String str, String str2) {
        if (uri == null) {
            return null;
        }
        if (str == null || str.isEmpty()) {
            return uri;
        }
        if (uri.getPath().length() != 0 || !str.startsWith(str2)) {
            StringBuilder sb = new StringBuilder(uri.getPath());
            if (uri.getPath().endsWith(str2)) {
                sb.append(str);
            } else {
                sb.append(str2);
                sb.append(str);
            }
            return new URI(uri.getScheme(), uri.getAuthority(), sb.toString(), uri.getQuery(), uri.getFragment());
        }
        return new URI(uri.getScheme(), uri.getAuthority(), str, uri.getRawQuery(), uri.getRawFragment());
    }

    public static StorageUri appendPathToUri(StorageUri storageUri, String str, String str2) {
        return new StorageUri(appendPathToSingleUri(storageUri.getPrimaryUri(), str, str2), appendPathToSingleUri(storageUri.getSecondaryUri(), str, str2));
    }

    public static URI addToQuery(URI uri, String str) {
        return addToSingleUriQuery(uri, parseQueryString(str));
    }

    public static StorageUri getServiceClientBaseAddress(StorageUri storageUri, boolean z) {
        return new StorageUri(new URI(getServiceClientBaseAddress(storageUri.getPrimaryUri(), z)), storageUri.getSecondaryUri() != null ? new URI(getServiceClientBaseAddress(storageUri.getSecondaryUri(), z)) : null);
    }
}
