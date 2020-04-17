package com.microsoft.azure.storage.core;

import com.microsoft.azure.storage.Constants;
import com.microsoft.azure.storage.OperationContext;
import com.microsoft.azure.storage.StorageCredentials;
import com.microsoft.azure.storage.StorageCredentialsAccountAndKey;
import com.microsoft.azure.storage.StorageCredentialsSharedAccessSignature;
import com.microsoft.azure.storage.StorageCredentialsToken;
import java.io.UnsupportedEncodingException;
import java.net.HttpURLConnection;
import javax.net.ssl.HttpsURLConnection;

public final class StorageCredentialsHelper {
    public static boolean canCredentialsGenerateClient(StorageCredentials storageCredentials) {
        return canCredentialsSignRequest(storageCredentials) || storageCredentials.getClass().equals(StorageCredentialsSharedAccessSignature.class) || storageCredentials.getClass().equals(StorageCredentialsToken.class);
    }

    public static boolean canCredentialsSignRequest(StorageCredentials storageCredentials) {
        return storageCredentials.getClass().equals(StorageCredentialsAccountAndKey.class);
    }

    public static synchronized String computeHmac256(StorageCredentials storageCredentials, String str) {
        synchronized (StorageCredentialsHelper.class) {
            if (!storageCredentials.getClass().equals(StorageCredentialsAccountAndKey.class)) {
                return null;
            }
            try {
                String encode = Base64.encode(((StorageCredentialsAccountAndKey) storageCredentials).getHmac256().doFinal(str.getBytes("UTF-8")));
                return encode;
            } catch (UnsupportedEncodingException e2) {
                throw new IllegalArgumentException(e2);
            }
        }
    }

    public static void signBlobQueueAndFileRequest(StorageCredentials storageCredentials, HttpURLConnection httpURLConnection, long j2, OperationContext operationContext) {
        if (storageCredentials.getClass().equals(StorageCredentialsAccountAndKey.class)) {
            if (operationContext == null) {
                operationContext = new OperationContext();
            }
            httpURLConnection.setRequestProperty(Constants.HeaderConstants.DATE, Utility.getGMTTime());
            String canonicalize = CanonicalizerFactory.getBlobQueueFileCanonicalizer(httpURLConnection).canonicalize(httpURLConnection, storageCredentials.getAccountName(), Long.valueOf(j2));
            String computeHmac256 = computeHmac256(storageCredentials, canonicalize);
            Logger.trace(operationContext, LogConstants.SIGNING, (Object) canonicalize);
            httpURLConnection.setRequestProperty("Authorization", String.format("%s %s:%s", new Object[]{"SharedKey", storageCredentials.getAccountName(), computeHmac256}));
        } else if (!storageCredentials.getClass().equals(StorageCredentialsToken.class)) {
        } else {
            if (httpURLConnection instanceof HttpsURLConnection) {
                httpURLConnection.setRequestProperty("Authorization", String.format("%s %s", new Object[]{"Bearer", ((StorageCredentialsToken) storageCredentials).getToken()}));
                return;
            }
            throw new IllegalArgumentException("Token credential is only supported for HTTPS requests.");
        }
    }

    public static void signTableRequest(StorageCredentials storageCredentials, HttpURLConnection httpURLConnection, long j2, OperationContext operationContext) {
        if (storageCredentials.getClass().equals(StorageCredentialsAccountAndKey.class)) {
            if (operationContext == null) {
                operationContext = new OperationContext();
            }
            httpURLConnection.setRequestProperty(Constants.HeaderConstants.DATE, Utility.getGMTTime());
            String canonicalize = CanonicalizerFactory.getTableCanonicalizer(httpURLConnection).canonicalize(httpURLConnection, storageCredentials.getAccountName(), Long.valueOf(j2));
            String computeHmac256 = computeHmac256(storageCredentials, canonicalize);
            Logger.trace(operationContext, LogConstants.SIGNING, (Object) canonicalize);
            httpURLConnection.setRequestProperty("Authorization", String.format("%s %s:%s", new Object[]{"SharedKey", storageCredentials.getAccountName(), computeHmac256}));
        }
    }
}
