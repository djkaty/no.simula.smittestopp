package com.microsoft.azure.storage.file;

import com.microsoft.azure.storage.Constants;
import com.microsoft.azure.storage.StorageUri;
import com.microsoft.azure.storage.core.BaseResponse;
import com.microsoft.azure.storage.core.PathUtility;
import com.microsoft.azure.storage.core.Utility;
import java.net.HttpURLConnection;
import java.net.URI;
import java.net.URISyntaxException;
import java.util.Calendar;
import java.util.Date;

public final class FileResponse extends BaseResponse {
    public static CopyState getCopyState(HttpURLConnection httpURLConnection) {
        String headerField = httpURLConnection.getHeaderField(Constants.HeaderConstants.COPY_STATUS);
        if (Utility.isNullOrEmpty(headerField)) {
            return null;
        }
        CopyState copyState = new CopyState();
        copyState.setStatus(CopyStatus.parse(headerField));
        copyState.setCopyId(httpURLConnection.getHeaderField(Constants.HeaderConstants.COPY_ID));
        copyState.setStatusDescription(httpURLConnection.getHeaderField(Constants.HeaderConstants.COPY_STATUS_DESCRIPTION));
        String headerField2 = httpURLConnection.getHeaderField(Constants.HeaderConstants.COPY_PROGRESS);
        if (!Utility.isNullOrEmpty(headerField2)) {
            String[] split = headerField2.split("/");
            copyState.setBytesCopied(Long.valueOf(Long.parseLong(split[0])));
            copyState.setTotalBytes(Long.valueOf(Long.parseLong(split[1])));
        }
        String headerField3 = httpURLConnection.getHeaderField("x-ms-copy-source");
        if (!Utility.isNullOrEmpty(headerField3)) {
            copyState.setSource(new URI(headerField3));
        }
        String headerField4 = httpURLConnection.getHeaderField(Constants.HeaderConstants.COPY_COMPLETION_TIME);
        if (!Utility.isNullOrEmpty(headerField4)) {
            copyState.setCompletionTime(Utility.parseRFC1123DateFromStringInGMT(headerField4));
        }
        return copyState;
    }

    public static FileAttributes getFileAttributes(HttpURLConnection httpURLConnection, StorageUri storageUri) {
        FileAttributes fileAttributes = new FileAttributes();
        FileProperties properties = fileAttributes.getProperties();
        properties.setCacheControl(httpURLConnection.getHeaderField(Constants.HeaderConstants.CACHE_CONTROL));
        properties.setContentDisposition(httpURLConnection.getHeaderField(Constants.HeaderConstants.CONTENT_DISPOSITION));
        properties.setContentEncoding(httpURLConnection.getHeaderField("Content-Encoding"));
        properties.setContentLanguage(httpURLConnection.getHeaderField(Constants.HeaderConstants.CONTENT_LANGUAGE));
        if (!Utility.isNullOrEmpty(httpURLConnection.getHeaderField(Constants.HeaderConstants.CONTENT_RANGE))) {
            properties.setContentMD5(httpURLConnection.getHeaderField(FileConstants.FILE_CONTENT_MD5_HEADER));
        } else {
            properties.setContentMD5(httpURLConnection.getHeaderField(Constants.HeaderConstants.CONTENT_MD5));
        }
        properties.setContentType(httpURLConnection.getHeaderField("Content-Type"));
        properties.setEtag(BaseResponse.getEtag(httpURLConnection));
        properties.setCopyState(getCopyState(httpURLConnection));
        properties.setServerEncrypted("true".equals(httpURLConnection.getHeaderField(Constants.HeaderConstants.SERVER_ENCRYPTED)));
        Calendar instance = Calendar.getInstance(Utility.LOCALE_US);
        instance.setTimeZone(Utility.UTC_ZONE);
        instance.setTime(new Date(httpURLConnection.getLastModified()));
        properties.setLastModified(instance.getTime());
        String headerField = httpURLConnection.getHeaderField(Constants.HeaderConstants.CONTENT_RANGE);
        String headerField2 = httpURLConnection.getHeaderField(FileConstants.CONTENT_LENGTH_HEADER);
        if (!Utility.isNullOrEmpty(headerField)) {
            properties.setLength(Long.parseLong(headerField.split("/")[1]));
        } else if (!Utility.isNullOrEmpty(headerField2)) {
            properties.setLength(Long.parseLong(headerField2));
        } else {
            String headerField3 = httpURLConnection.getHeaderField(Constants.HeaderConstants.CONTENT_LENGTH);
            if (!Utility.isNullOrEmpty(headerField3)) {
                properties.setLength(Long.parseLong(headerField3));
            }
        }
        fileAttributes.setStorageUri(storageUri);
        fileAttributes.setMetadata(BaseResponse.getMetadata(httpURLConnection));
        return fileAttributes;
    }

    public static FileDirectoryAttributes getFileDirectoryAttributes(HttpURLConnection httpURLConnection, boolean z) {
        FileDirectoryAttributes fileDirectoryAttributes = new FileDirectoryAttributes();
        try {
            fileDirectoryAttributes.setName(PathUtility.getDirectoryNameFromURI(PathUtility.stripSingleURIQueryAndFragment(httpURLConnection.getURL().toURI()), z));
            FileDirectoryProperties properties = fileDirectoryAttributes.getProperties();
            properties.setEtag(BaseResponse.getEtag(httpURLConnection));
            properties.setLastModified(new Date(httpURLConnection.getLastModified()));
            fileDirectoryAttributes.setMetadata(BaseResponse.getMetadata(httpURLConnection));
            properties.setServerEncrypted("true".equals(httpURLConnection.getHeaderField(Constants.HeaderConstants.SERVER_ENCRYPTED)));
            return fileDirectoryAttributes;
        } catch (URISyntaxException e2) {
            throw Utility.generateNewUnexpectedStorageException(e2);
        }
    }

    public static FileShareAttributes getFileShareAttributes(HttpURLConnection httpURLConnection, boolean z) {
        FileShareAttributes fileShareAttributes = new FileShareAttributes();
        FileShareProperties properties = fileShareAttributes.getProperties();
        properties.setEtag(BaseResponse.getEtag(httpURLConnection));
        properties.setShareQuota(parseShareQuota(httpURLConnection));
        properties.setLastModified(new Date(httpURLConnection.getLastModified()));
        fileShareAttributes.setMetadata(BaseResponse.getMetadata(httpURLConnection));
        return fileShareAttributes;
    }

    public static String getSnapshotTime(HttpURLConnection httpURLConnection) {
        return httpURLConnection.getHeaderField("x-ms-snapshot");
    }

    public static Integer parseShareQuota(HttpURLConnection httpURLConnection) {
        Integer valueOf = Integer.valueOf(httpURLConnection.getHeaderFieldInt(FileConstants.SHARE_QUOTA_HEADER, -1));
        if (valueOf.intValue() == -1) {
            return null;
        }
        return valueOf;
    }
}
