package com.microsoft.azure.storage.blob;

import com.microsoft.azure.storage.AccountInformation;
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

public final class BlobResponse extends BaseResponse {
    public static AccountInformation getAccountInformation(HttpURLConnection httpURLConnection) {
        AccountInformation accountInformation = new AccountInformation();
        accountInformation.setSkuName(httpURLConnection.getHeaderField(Constants.HeaderConstants.SKU_NAME));
        accountInformation.setAccountKind(httpURLConnection.getHeaderField(Constants.HeaderConstants.ACCOUNT_KIND));
        return accountInformation;
    }

    public static String getAcl(HttpURLConnection httpURLConnection) {
        return httpURLConnection.getHeaderField(BlobConstants.BLOB_PUBLIC_ACCESS_HEADER);
    }

    public static BlobAttributes getBlobAttributes(HttpURLConnection httpURLConnection, StorageUri storageUri, String str) {
        BlobAttributes blobAttributes = new BlobAttributes(BlobType.parse(httpURLConnection.getHeaderField(BlobConstants.BLOB_TYPE_HEADER)));
        BlobProperties properties = blobAttributes.getProperties();
        properties.setCacheControl(httpURLConnection.getHeaderField(Constants.HeaderConstants.CACHE_CONTROL));
        properties.setContentDisposition(httpURLConnection.getHeaderField(Constants.HeaderConstants.CONTENT_DISPOSITION));
        properties.setContentEncoding(httpURLConnection.getHeaderField("Content-Encoding"));
        properties.setContentLanguage(httpURLConnection.getHeaderField(Constants.HeaderConstants.CONTENT_LANGUAGE));
        if (!Utility.isNullOrEmpty(httpURLConnection.getHeaderField(Constants.HeaderConstants.CONTENT_RANGE))) {
            properties.setContentMD5(httpURLConnection.getHeaderField(BlobConstants.BLOB_CONTENT_MD5_HEADER));
        } else {
            properties.setContentMD5(httpURLConnection.getHeaderField(Constants.HeaderConstants.CONTENT_MD5));
        }
        properties.setContentType(httpURLConnection.getHeaderField("Content-Type"));
        properties.setEtag(BaseResponse.getEtag(httpURLConnection));
        properties.setServerEncrypted("true".equals(httpURLConnection.getHeaderField(Constants.HeaderConstants.SERVER_ENCRYPTED)));
        Calendar instance = Calendar.getInstance(Utility.LOCALE_US);
        instance.setTimeZone(Utility.UTC_ZONE);
        instance.setTime(new Date(httpURLConnection.getLastModified()));
        properties.setLastModified(instance.getTime());
        properties.setLeaseStatus(getLeaseStatus(httpURLConnection));
        properties.setLeaseState(getLeaseState(httpURLConnection));
        properties.setLeaseDuration(getLeaseDuration(httpURLConnection));
        String headerField = httpURLConnection.getHeaderField(Constants.HeaderConstants.CONTENT_RANGE);
        String headerField2 = httpURLConnection.getHeaderField("x-ms-blob-content-length");
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
        String headerField4 = httpURLConnection.getHeaderField("x-ms-blob-sequence-number");
        if (!Utility.isNullOrEmpty(headerField4)) {
            properties.setPageBlobSequenceNumber(Long.valueOf(Long.parseLong(headerField4)));
        }
        String headerField5 = httpURLConnection.getHeaderField(Constants.HeaderConstants.BLOB_COMMITTED_BLOCK_COUNT);
        if (!Utility.isNullOrEmpty(headerField5)) {
            properties.setAppendBlobCommittedBlockCount(Integer.valueOf(Integer.parseInt(headerField5)));
        }
        String headerField6 = httpURLConnection.getHeaderField(BlobConstants.ACCESS_TIER_HEADER);
        if (!Utility.isNullOrEmpty(headerField6) && properties.getBlobType().equals(BlobType.PAGE_BLOB)) {
            properties.setPremiumPageBlobTier(PremiumPageBlobTier.parse(headerField6));
        } else if (!Utility.isNullOrEmpty(headerField6) && properties.getBlobType().equals(BlobType.BLOCK_BLOB)) {
            properties.setStandardBlobTier(StandardBlobTier.parse(headerField6));
        } else if (!Utility.isNullOrEmpty(headerField6) && properties.getBlobType().equals(BlobType.UNSPECIFIED)) {
            PremiumPageBlobTier parse = PremiumPageBlobTier.parse(headerField6);
            StandardBlobTier parse2 = StandardBlobTier.parse(headerField6);
            if (!parse.equals(PremiumPageBlobTier.UNKNOWN)) {
                properties.setPremiumPageBlobTier(parse);
            } else if (!parse2.equals(StandardBlobTier.UNKNOWN)) {
                properties.setStandardBlobTier(parse2);
            } else {
                properties.setPremiumPageBlobTier(PremiumPageBlobTier.UNKNOWN);
                properties.setStandardBlobTier(StandardBlobTier.UNKNOWN);
            }
        }
        String headerField7 = httpURLConnection.getHeaderField(BlobConstants.ACCESS_TIER_INFERRED_HEADER);
        if (!Utility.isNullOrEmpty(headerField7)) {
            properties.setBlobTierInferred(Boolean.valueOf(Boolean.parseBoolean(headerField7)));
        } else if (!(properties.getPremiumPageBlobTier() == null && properties.getStandardBlobTier() == null)) {
            properties.setBlobTierInferred(false);
        }
        String headerField8 = httpURLConnection.getHeaderField(BlobConstants.ARCHIVE_STATUS_HEADER);
        if (!Utility.isNullOrEmpty(headerField8)) {
            properties.setRehydrationStatus(RehydrationStatus.parse(headerField8));
        } else {
            properties.setRehydrationStatus((RehydrationStatus) null);
        }
        long headerFieldDate = httpURLConnection.getHeaderFieldDate(BlobConstants.ACCESS_TIER_CHANGE_TIME_HEADER, 0);
        if (headerFieldDate != 0) {
            properties.setTierChangeTime(new Date(headerFieldDate));
        }
        long headerFieldDate2 = httpURLConnection.getHeaderFieldDate(BlobConstants.CREATION_TIME_HEADER, 0);
        if (headerFieldDate2 != 0) {
            properties.setCreatedTime(new Date(headerFieldDate2));
        }
        String headerField9 = httpURLConnection.getHeaderField(Constants.HeaderConstants.INCREMENTAL_COPY);
        if (!Utility.isNullOrEmpty(headerField9)) {
            properties.setIncrementalCopy("true".equals(headerField9));
        }
        blobAttributes.setStorageUri(storageUri);
        blobAttributes.setSnapshotID(str);
        blobAttributes.setMetadata(BaseResponse.getMetadata(httpURLConnection));
        properties.setCopyState(getCopyState(httpURLConnection));
        blobAttributes.setProperties(properties);
        return blobAttributes;
    }

    public static BlobContainerAttributes getBlobContainerAttributes(HttpURLConnection httpURLConnection, boolean z) {
        BlobContainerAttributes blobContainerAttributes = new BlobContainerAttributes();
        try {
            blobContainerAttributes.setName(PathUtility.getContainerNameFromUri(PathUtility.stripSingleURIQueryAndFragment(httpURLConnection.getURL().toURI()), z));
            BlobContainerProperties properties = blobContainerAttributes.getProperties();
            properties.setEtag(BaseResponse.getEtag(httpURLConnection));
            properties.setLastModified(new Date(httpURLConnection.getLastModified()));
            blobContainerAttributes.setMetadata(BaseResponse.getMetadata(httpURLConnection));
            properties.setLeaseStatus(getLeaseStatus(httpURLConnection));
            properties.setLeaseState(getLeaseState(httpURLConnection));
            properties.setLeaseDuration(getLeaseDuration(httpURLConnection));
            properties.setPublicAccess(getPublicAccessLevel(httpURLConnection));
            String headerField = httpURLConnection.getHeaderField(BlobConstants.HAS_IMMUTABILITY_POLICY_HEADER);
            if (!Utility.isNullOrEmpty(headerField)) {
                properties.setHasImmutabilityPolicy(Boolean.valueOf(Boolean.parseBoolean(headerField)));
            }
            String headerField2 = httpURLConnection.getHeaderField(BlobConstants.HAS_LEGAL_HOLD_HEADER);
            if (!Utility.isNullOrEmpty(headerField2)) {
                properties.setHasLegalHold(Boolean.valueOf(Boolean.parseBoolean(headerField2)));
            }
            return blobContainerAttributes;
        } catch (URISyntaxException e2) {
            throw Utility.generateNewUnexpectedStorageException(e2);
        }
    }

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
        String headerField5 = httpURLConnection.getHeaderField(Constants.HeaderConstants.COPY_DESTINATION_SNAPSHOT_ID);
        if (!Utility.isNullOrEmpty(headerField5)) {
            copyState.setCopyDestinationSnapshotID(headerField5);
        }
        return copyState;
    }

    public static LeaseDuration getLeaseDuration(HttpURLConnection httpURLConnection) {
        String headerField = httpURLConnection.getHeaderField(Constants.HeaderConstants.LEASE_DURATION);
        if (!Utility.isNullOrEmpty(headerField)) {
            return LeaseDuration.parse(headerField);
        }
        return LeaseDuration.UNSPECIFIED;
    }

    public static String getLeaseID(HttpURLConnection httpURLConnection) {
        return httpURLConnection.getHeaderField(Constants.HeaderConstants.LEASE_ID_HEADER);
    }

    public static LeaseState getLeaseState(HttpURLConnection httpURLConnection) {
        String headerField = httpURLConnection.getHeaderField(Constants.HeaderConstants.LEASE_STATE);
        if (!Utility.isNullOrEmpty(headerField)) {
            return LeaseState.parse(headerField);
        }
        return LeaseState.UNSPECIFIED;
    }

    public static LeaseStatus getLeaseStatus(HttpURLConnection httpURLConnection) {
        String headerField = httpURLConnection.getHeaderField(Constants.HeaderConstants.LEASE_STATUS);
        if (!Utility.isNullOrEmpty(headerField)) {
            return LeaseStatus.parse(headerField);
        }
        return LeaseStatus.UNSPECIFIED;
    }

    public static String getLeaseTime(HttpURLConnection httpURLConnection) {
        return httpURLConnection.getHeaderField(Constants.HeaderConstants.LEASE_TIME_HEADER);
    }

    public static BlobContainerPublicAccessType getPublicAccessLevel(HttpURLConnection httpURLConnection) {
        String headerField = httpURLConnection.getHeaderField(BlobConstants.BLOB_PUBLIC_ACCESS_HEADER);
        if (!Utility.isNullOrEmpty(headerField)) {
            return BlobContainerPublicAccessType.parse(headerField);
        }
        return BlobContainerPublicAccessType.OFF;
    }

    public static String getSnapshotTime(HttpURLConnection httpURLConnection) {
        return httpURLConnection.getHeaderField("x-ms-snapshot");
    }
}
