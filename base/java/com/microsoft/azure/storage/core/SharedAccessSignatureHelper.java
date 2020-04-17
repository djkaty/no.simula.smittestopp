package com.microsoft.azure.storage.core;

import com.microsoft.azure.storage.Constants;
import com.microsoft.azure.storage.IPRange;
import com.microsoft.azure.storage.OperationContext;
import com.microsoft.azure.storage.ServiceClient;
import com.microsoft.azure.storage.SharedAccessAccountPolicy;
import com.microsoft.azure.storage.SharedAccessHeaders;
import com.microsoft.azure.storage.SharedAccessPolicy;
import com.microsoft.azure.storage.SharedAccessProtocols;
import com.microsoft.azure.storage.StorageCredentials;
import com.microsoft.azure.storage.StorageCredentialsSharedAccessSignature;
import com.microsoft.azure.storage.StorageUri;
import com.microsoft.azure.storage.queue.SharedAccessQueuePolicy;
import com.microsoft.azure.storage.table.SharedAccessTablePolicy;
import com.microsoft.identity.client.claims.WWWAuthenticateHeader;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;

public class SharedAccessSignatureHelper {
    public static void addIfNotNullOrEmpty(UriQueryBuilder uriQueryBuilder, String str, String str2) {
        if (!Utility.isNullOrEmpty(str2)) {
            uriQueryBuilder.add(str, str2);
        }
    }

    public static UriQueryBuilder generateSharedAccessSignatureForAccount(SharedAccessAccountPolicy sharedAccessAccountPolicy, String str) {
        Utility.assertNotNull("policy", sharedAccessAccountPolicy);
        Utility.assertNotNull("signature", str);
        String permissionsToString = sharedAccessAccountPolicy.permissionsToString();
        Date sharedAccessStartTime = sharedAccessAccountPolicy.getSharedAccessStartTime();
        Date sharedAccessExpiryTime = sharedAccessAccountPolicy.getSharedAccessExpiryTime();
        IPRange range = sharedAccessAccountPolicy.getRange();
        SharedAccessProtocols protocols = sharedAccessAccountPolicy.getProtocols();
        String servicesToString = sharedAccessAccountPolicy.servicesToString();
        String resourceTypesToString = sharedAccessAccountPolicy.resourceTypesToString();
        UriQueryBuilder uriQueryBuilder = new UriQueryBuilder();
        uriQueryBuilder.add(Constants.QueryConstants.SIGNED_VERSION, Constants.HeaderConstants.TARGET_STORAGE_VERSION);
        addIfNotNullOrEmpty(uriQueryBuilder, Constants.QueryConstants.SIGNED_SERVICE, servicesToString);
        addIfNotNullOrEmpty(uriQueryBuilder, Constants.QueryConstants.SIGNED_RESOURCE_TYPE, resourceTypesToString);
        addIfNotNullOrEmpty(uriQueryBuilder, Constants.QueryConstants.SIGNED_PERMISSIONS, permissionsToString);
        addIfNotNullOrEmpty(uriQueryBuilder, Constants.QueryConstants.SIGNED_START, Utility.getUTCTimeOrEmpty(sharedAccessStartTime));
        addIfNotNullOrEmpty(uriQueryBuilder, "se", Utility.getUTCTimeOrEmpty(sharedAccessExpiryTime));
        addIfNotNullOrEmpty(uriQueryBuilder, "sr", resourceTypesToString);
        String str2 = null;
        addIfNotNullOrEmpty(uriQueryBuilder, Constants.QueryConstants.SIGNED_IP, range != null ? range.toString() : null);
        if (protocols != null) {
            str2 = protocols.toString();
        }
        addIfNotNullOrEmpty(uriQueryBuilder, Constants.QueryConstants.SIGNED_PROTOCOLS, str2);
        addIfNotNullOrEmpty(uriQueryBuilder, "sig", str);
        return uriQueryBuilder;
    }

    public static UriQueryBuilder generateSharedAccessSignatureForBlobAndFile(SharedAccessPolicy sharedAccessPolicy, SharedAccessHeaders sharedAccessHeaders, String str, String str2, IPRange iPRange, SharedAccessProtocols sharedAccessProtocols, String str3) {
        String str4 = str2;
        Utility.assertNotNullOrEmpty("resourceType", str4);
        return generateSharedAccessSignatureHelper(sharedAccessPolicy, (String) null, (String) null, (String) null, (String) null, str, str4, iPRange, sharedAccessProtocols, (String) null, str3, sharedAccessHeaders);
    }

    public static UriQueryBuilder generateSharedAccessSignatureForQueue(SharedAccessQueuePolicy sharedAccessQueuePolicy, String str, IPRange iPRange, SharedAccessProtocols sharedAccessProtocols, String str2) {
        return generateSharedAccessSignatureHelper(sharedAccessQueuePolicy, (String) null, (String) null, (String) null, (String) null, str, (String) null, iPRange, sharedAccessProtocols, (String) null, str2, (SharedAccessHeaders) null);
    }

    public static UriQueryBuilder generateSharedAccessSignatureForTable(SharedAccessTablePolicy sharedAccessTablePolicy, String str, String str2, String str3, String str4, String str5, IPRange iPRange, SharedAccessProtocols sharedAccessProtocols, String str6, String str7) {
        String str8 = str6;
        Utility.assertNotNull("tableName", str8);
        return generateSharedAccessSignatureHelper(sharedAccessTablePolicy, str, str2, str3, str4, str5, (String) null, iPRange, sharedAccessProtocols, str8, str7, (SharedAccessHeaders) null);
    }

    public static String generateSharedAccessSignatureHashForAccount(String str, SharedAccessAccountPolicy sharedAccessAccountPolicy, StorageCredentials storageCredentials) {
        String str2;
        String str3;
        SharedAccessProtocols sharedAccessProtocols;
        IPRange iPRange;
        Date date;
        Date date2;
        String str4;
        Utility.assertNotNullOrEmpty("resource", str);
        Utility.assertNotNull("credentials", storageCredentials);
        String str5 = null;
        if (sharedAccessAccountPolicy != null) {
            str5 = sharedAccessAccountPolicy.permissionsToString();
            date2 = sharedAccessAccountPolicy.getSharedAccessStartTime();
            date = sharedAccessAccountPolicy.getSharedAccessExpiryTime();
            iPRange = sharedAccessAccountPolicy.getRange();
            sharedAccessProtocols = sharedAccessAccountPolicy.getProtocols();
            str3 = sharedAccessAccountPolicy.servicesToString();
            str2 = sharedAccessAccountPolicy.resourceTypesToString();
        } else {
            str2 = null;
            date2 = null;
            date = null;
            iPRange = null;
            sharedAccessProtocols = null;
            str3 = null;
        }
        Object[] objArr = new Object[9];
        objArr[0] = str;
        String str6 = "";
        if (str5 == null) {
            str5 = str6;
        }
        objArr[1] = str5;
        objArr[2] = str3;
        objArr[3] = str2;
        objArr[4] = Utility.getUTCTimeOrEmpty(date2);
        objArr[5] = Utility.getUTCTimeOrEmpty(date);
        if (iPRange == null) {
            str4 = str6;
        } else {
            str4 = iPRange.toString();
        }
        objArr[6] = str4;
        if (sharedAccessProtocols != null) {
            str6 = sharedAccessProtocols.toString();
        }
        objArr[7] = str6;
        objArr[8] = Constants.HeaderConstants.TARGET_STORAGE_VERSION;
        return generateSharedAccessSignatureHashHelper(String.format("%s\n%s\n%s\n%s\n%s\n%s\n%s\n%s\n%s\n", objArr), storageCredentials);
    }

    public static String generateSharedAccessSignatureHashForBlobAndFile(SharedAccessPolicy sharedAccessPolicy, SharedAccessHeaders sharedAccessHeaders, String str, String str2, IPRange iPRange, SharedAccessProtocols sharedAccessProtocols, ServiceClient serviceClient) {
        String str3;
        String str4;
        String str5;
        String str6;
        String generateSharedAccessSignatureStringToSign = generateSharedAccessSignatureStringToSign(sharedAccessPolicy, str2, iPRange, sharedAccessProtocols, str);
        String str7 = null;
        if (sharedAccessHeaders != null) {
            str7 = sharedAccessHeaders.getCacheControl();
            str5 = sharedAccessHeaders.getContentDisposition();
            str4 = sharedAccessHeaders.getContentEncoding();
            str3 = sharedAccessHeaders.getContentLanguage();
            str6 = sharedAccessHeaders.getContentType();
        } else {
            str6 = null;
            str5 = null;
            str4 = null;
            str3 = null;
        }
        Object[] objArr = new Object[6];
        objArr[0] = generateSharedAccessSignatureStringToSign;
        if (str7 == null) {
            str7 = "";
        }
        objArr[1] = str7;
        if (str5 == null) {
            str5 = "";
        }
        objArr[2] = str5;
        if (str4 == null) {
            str4 = "";
        }
        objArr[3] = str4;
        if (str3 == null) {
            str3 = "";
        }
        objArr[4] = str3;
        if (str6 == null) {
            str6 = "";
        }
        objArr[5] = str6;
        return generateSharedAccessSignatureHashHelper(String.format("%s\n%s\n%s\n%s\n%s\n%s", objArr), serviceClient.getCredentials());
    }

    public static String generateSharedAccessSignatureHashForQueue(SharedAccessQueuePolicy sharedAccessQueuePolicy, String str, String str2, IPRange iPRange, SharedAccessProtocols sharedAccessProtocols, ServiceClient serviceClient) {
        return generateSharedAccessSignatureHashHelper(generateSharedAccessSignatureStringToSign(sharedAccessQueuePolicy, str2, iPRange, sharedAccessProtocols, str), serviceClient.getCredentials());
    }

    public static String generateSharedAccessSignatureHashForTable(SharedAccessTablePolicy sharedAccessTablePolicy, String str, String str2, IPRange iPRange, SharedAccessProtocols sharedAccessProtocols, String str3, String str4, String str5, String str6, ServiceClient serviceClient) {
        String generateSharedAccessSignatureStringToSign = generateSharedAccessSignatureStringToSign(sharedAccessTablePolicy, str2, iPRange, sharedAccessProtocols, str);
        Object[] objArr = new Object[5];
        objArr[0] = generateSharedAccessSignatureStringToSign;
        if (str3 == null) {
            str3 = "";
        }
        objArr[1] = str3;
        if (str4 == null) {
            str4 = "";
        }
        objArr[2] = str4;
        if (str5 == null) {
            str5 = "";
        }
        objArr[3] = str5;
        if (str6 == null) {
            str6 = "";
        }
        objArr[4] = str6;
        return generateSharedAccessSignatureHashHelper(String.format("%s\n%s\n%s\n%s\n%s", objArr), serviceClient.getCredentials());
    }

    public static String generateSharedAccessSignatureHashHelper(String str, StorageCredentials storageCredentials) {
        Utility.assertNotNull("credentials", storageCredentials);
        Logger.trace((OperationContext) null, LogConstants.SIGNING, (Object) str);
        return StorageCredentialsHelper.computeHmac256(storageCredentials, Utility.safeDecode(str));
    }

    public static UriQueryBuilder generateSharedAccessSignatureHelper(SharedAccessPolicy sharedAccessPolicy, String str, String str2, String str3, String str4, String str5, String str6, IPRange iPRange, SharedAccessProtocols sharedAccessProtocols, String str7, String str8, SharedAccessHeaders sharedAccessHeaders) {
        Date date;
        Date date2;
        String str9;
        String str10 = str8;
        Utility.assertNotNull("signature", str10);
        String str11 = null;
        if (sharedAccessPolicy != null) {
            str9 = sharedAccessPolicy.permissionsToString();
            date2 = sharedAccessPolicy.getSharedAccessStartTime();
            date = sharedAccessPolicy.getSharedAccessExpiryTime();
        } else {
            str9 = null;
            date2 = null;
            date = null;
        }
        UriQueryBuilder uriQueryBuilder = new UriQueryBuilder();
        uriQueryBuilder.add(Constants.QueryConstants.SIGNED_VERSION, Constants.HeaderConstants.TARGET_STORAGE_VERSION);
        addIfNotNullOrEmpty(uriQueryBuilder, Constants.QueryConstants.SIGNED_PERMISSIONS, str9);
        addIfNotNullOrEmpty(uriQueryBuilder, Constants.QueryConstants.SIGNED_START, Utility.getUTCTimeOrEmpty(date2));
        addIfNotNullOrEmpty(uriQueryBuilder, "se", Utility.getUTCTimeOrEmpty(date));
        String str12 = str;
        addIfNotNullOrEmpty(uriQueryBuilder, Constants.QueryConstants.START_PARTITION_KEY, str);
        String str13 = str2;
        addIfNotNullOrEmpty(uriQueryBuilder, Constants.QueryConstants.START_ROW_KEY, str2);
        String str14 = str3;
        addIfNotNullOrEmpty(uriQueryBuilder, Constants.QueryConstants.END_PARTITION_KEY, str3);
        String str15 = str4;
        addIfNotNullOrEmpty(uriQueryBuilder, Constants.QueryConstants.END_ROW_KEY, str4);
        String str16 = str5;
        addIfNotNullOrEmpty(uriQueryBuilder, Constants.QueryConstants.SIGNED_IDENTIFIER, str5);
        String str17 = str6;
        addIfNotNullOrEmpty(uriQueryBuilder, "sr", str6);
        addIfNotNullOrEmpty(uriQueryBuilder, Constants.QueryConstants.SIGNED_IP, iPRange != null ? iPRange.toString() : null);
        if (sharedAccessProtocols != null) {
            str11 = sharedAccessProtocols.toString();
        }
        addIfNotNullOrEmpty(uriQueryBuilder, Constants.QueryConstants.SIGNED_PROTOCOLS, str11);
        addIfNotNullOrEmpty(uriQueryBuilder, Constants.QueryConstants.SAS_TABLE_NAME, str7);
        if (sharedAccessHeaders != null) {
            addIfNotNullOrEmpty(uriQueryBuilder, Constants.QueryConstants.CACHE_CONTROL, sharedAccessHeaders.getCacheControl());
            addIfNotNullOrEmpty(uriQueryBuilder, Constants.QueryConstants.CONTENT_TYPE, sharedAccessHeaders.getContentType());
            addIfNotNullOrEmpty(uriQueryBuilder, Constants.QueryConstants.CONTENT_ENCODING, sharedAccessHeaders.getContentEncoding());
            addIfNotNullOrEmpty(uriQueryBuilder, Constants.QueryConstants.CONTENT_LANGUAGE, sharedAccessHeaders.getContentLanguage());
            addIfNotNullOrEmpty(uriQueryBuilder, Constants.QueryConstants.CONTENT_DISPOSITION, sharedAccessHeaders.getContentDisposition());
        }
        addIfNotNullOrEmpty(uriQueryBuilder, "sig", str10);
        return uriQueryBuilder;
    }

    public static String generateSharedAccessSignatureStringToSign(SharedAccessPolicy sharedAccessPolicy, String str, IPRange iPRange, SharedAccessProtocols sharedAccessProtocols, String str2) {
        Date date;
        Date date2;
        String str3;
        Utility.assertNotNullOrEmpty("resource", str);
        String str4 = null;
        if (sharedAccessPolicy != null) {
            str4 = sharedAccessPolicy.permissionsToString();
            date2 = sharedAccessPolicy.getSharedAccessStartTime();
            date = sharedAccessPolicy.getSharedAccessExpiryTime();
        } else {
            date = null;
            date2 = null;
        }
        Object[] objArr = new Object[8];
        String str5 = "";
        if (str4 == null) {
            str4 = str5;
        }
        objArr[0] = str4;
        objArr[1] = Utility.getUTCTimeOrEmpty(date2);
        objArr[2] = Utility.getUTCTimeOrEmpty(date);
        objArr[3] = str;
        if (str2 == null) {
            str2 = str5;
        }
        objArr[4] = str2;
        if (iPRange == null) {
            str3 = str5;
        } else {
            str3 = iPRange.toString();
        }
        objArr[5] = str3;
        if (sharedAccessProtocols != null) {
            str5 = sharedAccessProtocols.toString();
        }
        objArr[6] = str5;
        objArr[7] = Constants.HeaderConstants.TARGET_STORAGE_VERSION;
        return String.format("%s\n%s\n%s\n%s\n%s\n%s\n%s\n%s", objArr);
    }

    public static StorageCredentialsSharedAccessSignature parseQuery(StorageUri storageUri) {
        return parseQuery(PathUtility.parseQueryString(storageUri.getQuery()));
    }

    public static StorageCredentialsSharedAccessSignature parseQuery(HashMap<String, String[]> hashMap) {
        ArrayList arrayList = new ArrayList();
        boolean z = false;
        for (Map.Entry next : hashMap.entrySet()) {
            String lowerCase = ((String) next.getKey()).toLowerCase(Utility.LOCALE_US);
            if (lowerCase.equals("sig")) {
                z = true;
            } else if (lowerCase.equals(Constants.QueryConstants.COMPONENT)) {
                arrayList.add(next.getKey());
            } else if (lowerCase.equals(Constants.QueryConstants.RESOURCETYPE)) {
                arrayList.add(next.getKey());
            } else if (lowerCase.equals("snapshot")) {
                arrayList.add(next.getKey());
            } else if (lowerCase.equals("api-version")) {
                arrayList.add(next.getKey());
            } else if (lowerCase.equals(Constants.QueryConstants.SHARE_SNAPSHOT)) {
                arrayList.add(next.getKey());
            }
        }
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            hashMap.remove((String) it.next());
        }
        if (!z) {
            return null;
        }
        UriQueryBuilder uriQueryBuilder = new UriQueryBuilder();
        StringBuilder sb = new StringBuilder();
        for (Map.Entry next2 : hashMap.entrySet()) {
            sb.setLength(0);
            for (String append : (String[]) next2.getValue()) {
                sb.append(append);
                sb.append(WWWAuthenticateHeader.COMMA);
            }
            sb.deleteCharAt(sb.length() - 1);
            addIfNotNullOrEmpty(uriQueryBuilder, ((String) next2.getKey()).toLowerCase(), sb.toString());
        }
        return new StorageCredentialsSharedAccessSignature(uriQueryBuilder.toString());
    }
}
