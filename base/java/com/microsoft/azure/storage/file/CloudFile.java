package com.microsoft.azure.storage.file;

import com.microsoft.appcenter.ingestion.models.one.CommonSchemaDataUtils;
import com.microsoft.azure.proton.transport.proxy.impl.DigestProxyChallengeProcessorImpl;
import com.microsoft.azure.storage.AccessCondition;
import com.microsoft.azure.storage.Constants;
import com.microsoft.azure.storage.DoesServiceRequest;
import com.microsoft.azure.storage.IPRange;
import com.microsoft.azure.storage.OperationContext;
import com.microsoft.azure.storage.SharedAccessProtocols;
import com.microsoft.azure.storage.StorageCredentials;
import com.microsoft.azure.storage.StorageCredentialsSharedAccessSignature;
import com.microsoft.azure.storage.StorageErrorCode;
import com.microsoft.azure.storage.StorageErrorCodeStrings;
import com.microsoft.azure.storage.StorageException;
import com.microsoft.azure.storage.StorageExtendedErrorInformation;
import com.microsoft.azure.storage.StorageLocation;
import com.microsoft.azure.storage.StorageUri;
import com.microsoft.azure.storage.blob.CloudBlob;
import com.microsoft.azure.storage.core.Base64;
import com.microsoft.azure.storage.core.BaseResponse;
import com.microsoft.azure.storage.core.ExecutionEngine;
import com.microsoft.azure.storage.core.Logger;
import com.microsoft.azure.storage.core.NetworkInputStream;
import com.microsoft.azure.storage.core.PathUtility;
import com.microsoft.azure.storage.core.RequestLocationMode;
import com.microsoft.azure.storage.core.SR;
import com.microsoft.azure.storage.core.SharedAccessSignatureHelper;
import com.microsoft.azure.storage.core.StorageCredentialsHelper;
import com.microsoft.azure.storage.core.StorageRequest;
import com.microsoft.azure.storage.core.StreamMd5AndLength;
import com.microsoft.azure.storage.core.Utility;
import com.microsoft.azure.storage.core.WrappedByteArrayOutputStream;
import java.io.BufferedInputStream;
import java.io.BufferedOutputStream;
import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.net.HttpURLConnection;
import java.net.URI;
import java.net.URISyntaxException;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Date;
import java.util.HashMap;

public final class CloudFile implements ListFileItem {
    public CloudFileClient fileServiceClient;
    public HashMap<String, String> metadata;
    public String name;
    public CloudFileDirectory parent;
    public FileProperties properties;
    public CloudFileShare share;
    public StorageUri storageUri;
    public int streamMinimumReadSizeInBytes;
    public int streamWriteSizeInBytes;

    public CloudFile(URI uri) {
        this(new StorageUri(uri));
    }

    private StorageRequest<CloudFileClient, CloudFile, Void> abortCopyImpl(String str, AccessCondition accessCondition, FileRequestOptions fileRequestOptions) {
        Utility.assertNotNull("copyId", str);
        final FileRequestOptions fileRequestOptions2 = fileRequestOptions;
        final AccessCondition accessCondition2 = accessCondition;
        final String str2 = str;
        return new StorageRequest<CloudFileClient, CloudFile, Void>(fileRequestOptions, getStorageUri()) {
            public HttpURLConnection buildRequest(CloudFileClient cloudFileClient, CloudFile cloudFile, OperationContext operationContext) {
                return FileRequest.abortCopy(cloudFile.getTransformedAddress(operationContext).getUri(getCurrentLocation()), fileRequestOptions2, operationContext, accessCondition2, str2);
            }

            public Void preProcessResponse(CloudFile cloudFile, CloudFileClient cloudFileClient, OperationContext operationContext) {
                if (getResult().getStatusCode() != 202) {
                    setNonExceptionedRetryableFailure(true);
                }
                return null;
            }

            public void signRequest(HttpURLConnection httpURLConnection, CloudFileClient cloudFileClient, OperationContext operationContext) {
                StorageRequest.signBlobQueueAndFileRequest(httpURLConnection, cloudFileClient, 0, operationContext);
            }
        };
    }

    private StorageRequest<CloudFileClient, CloudFile, Void> createImpl(long j2, AccessCondition accessCondition, FileRequestOptions fileRequestOptions) {
        final FileRequestOptions fileRequestOptions2 = fileRequestOptions;
        final AccessCondition accessCondition2 = accessCondition;
        final long j3 = j2;
        return new StorageRequest<CloudFileClient, CloudFile, Void>(fileRequestOptions, getStorageUri()) {
            public HttpURLConnection buildRequest(CloudFileClient cloudFileClient, CloudFile cloudFile, OperationContext operationContext) {
                return FileRequest.putFile(cloudFile.getTransformedAddress(operationContext).getUri(getCurrentLocation()), fileRequestOptions2, operationContext, accessCondition2, cloudFile.properties, j3);
            }

            public Void preProcessResponse(CloudFile cloudFile, CloudFileClient cloudFileClient, OperationContext operationContext) {
                if (getResult().getStatusCode() != 201) {
                    setNonExceptionedRetryableFailure(true);
                    return null;
                }
                cloudFile.updateEtagAndLastModifiedFromResponse(getConnection());
                getResult().setRequestServiceEncrypted(BaseResponse.isServerRequestEncrypted(getConnection()));
                return null;
            }

            public void setHeaders(HttpURLConnection httpURLConnection, CloudFile cloudFile, OperationContext operationContext) {
                FileRequest.addMetadata(httpURLConnection, cloudFile.metadata, operationContext);
            }

            public void signRequest(HttpURLConnection httpURLConnection, CloudFileClient cloudFileClient, OperationContext operationContext) {
                StorageRequest.signBlobQueueAndFileRequest(httpURLConnection, cloudFileClient, 0, operationContext);
            }
        };
    }

    private void deleteEmptyFileOnException(OutputStream outputStream, String str) {
        try {
            outputStream.close();
            new File(str).delete();
        } catch (Exception unused) {
        }
    }

    private StorageRequest<CloudFileClient, CloudFile, Void> deleteImpl(AccessCondition accessCondition, FileRequestOptions fileRequestOptions) {
        final FileRequestOptions fileRequestOptions2 = fileRequestOptions;
        final AccessCondition accessCondition2 = accessCondition;
        return new StorageRequest<CloudFileClient, CloudFile, Void>(fileRequestOptions, getStorageUri()) {
            public HttpURLConnection buildRequest(CloudFileClient cloudFileClient, CloudFile cloudFile, OperationContext operationContext) {
                return FileRequest.deleteFile(cloudFile.getTransformedAddress(operationContext).getUri(getCurrentLocation()), fileRequestOptions2, operationContext, accessCondition2);
            }

            public Void preProcessResponse(CloudFile cloudFile, CloudFileClient cloudFileClient, OperationContext operationContext) {
                if (getResult().getStatusCode() != 202) {
                    setNonExceptionedRetryableFailure(true);
                }
                return null;
            }

            public void signRequest(HttpURLConnection httpURLConnection, CloudFileClient cloudFileClient, OperationContext operationContext) {
                StorageRequest.signBlobQueueAndFileRequest(httpURLConnection, cloudFileClient, -1, operationContext);
            }
        };
    }

    private StorageRequest<CloudFileClient, CloudFile, Void> downloadAttributesImpl(AccessCondition accessCondition, FileRequestOptions fileRequestOptions) {
        final FileRequestOptions fileRequestOptions2 = fileRequestOptions;
        final AccessCondition accessCondition2 = accessCondition;
        return new StorageRequest<CloudFileClient, CloudFile, Void>(fileRequestOptions, getStorageUri()) {
            public void setRequestLocationMode() {
                setRequestLocationMode(RequestLocationMode.PRIMARY_OR_SECONDARY);
            }

            public HttpURLConnection buildRequest(CloudFileClient cloudFileClient, CloudFile cloudFile, OperationContext operationContext) {
                return FileRequest.getFileProperties(cloudFile.getTransformedAddress(operationContext).getUri(getCurrentLocation()), fileRequestOptions2, operationContext, accessCondition2, cloudFile.getShare().snapshotID);
            }

            public Void preProcessResponse(CloudFile cloudFile, CloudFileClient cloudFileClient, OperationContext operationContext) {
                if (getResult().getStatusCode() != 200) {
                    setNonExceptionedRetryableFailure(true);
                    return null;
                }
                FileAttributes fileAttributes = FileResponse.getFileAttributes(getConnection(), cloudFile.getStorageUri());
                FileProperties unused = cloudFile.properties = fileAttributes.getProperties();
                HashMap unused2 = cloudFile.metadata = fileAttributes.getMetadata();
                return null;
            }

            public void signRequest(HttpURLConnection httpURLConnection, CloudFileClient cloudFileClient, OperationContext operationContext) {
                StorageRequest.signBlobQueueAndFileRequest(httpURLConnection, cloudFileClient, -1, operationContext);
            }
        };
    }

    private StorageRequest<CloudFileClient, CloudFile, ArrayList<FileRange>> downloadFileRangesImpl(AccessCondition accessCondition, FileRequestOptions fileRequestOptions) {
        final FileRequestOptions fileRequestOptions2 = fileRequestOptions;
        final AccessCondition accessCondition2 = accessCondition;
        return new StorageRequest<CloudFileClient, CloudFile, ArrayList<FileRange>>(fileRequestOptions, getStorageUri()) {
            public void setRequestLocationMode() {
                setRequestLocationMode(RequestLocationMode.PRIMARY_OR_SECONDARY);
            }

            public HttpURLConnection buildRequest(CloudFileClient cloudFileClient, CloudFile cloudFile, OperationContext operationContext) {
                return FileRequest.getFileRanges(cloudFile.getTransformedAddress(operationContext).getUri(getCurrentLocation()), fileRequestOptions2, operationContext, accessCondition2, cloudFile.getShare().snapshotID);
            }

            public ArrayList<FileRange> postProcessResponse(HttpURLConnection httpURLConnection, CloudFile cloudFile, CloudFileClient cloudFileClient, OperationContext operationContext, ArrayList<FileRange> arrayList) {
                cloudFile.updateEtagAndLastModifiedFromResponse(getConnection());
                cloudFile.updateLengthFromResponse(getConnection());
                return FileRangeHandler.getFileRanges(getConnection().getInputStream());
            }

            public ArrayList<FileRange> preProcessResponse(CloudFile cloudFile, CloudFileClient cloudFileClient, OperationContext operationContext) {
                if (getResult().getStatusCode() == 200) {
                    return null;
                }
                setNonExceptionedRetryableFailure(true);
                return null;
            }

            public void signRequest(HttpURLConnection httpURLConnection, CloudFileClient cloudFileClient, OperationContext operationContext) {
                StorageRequest.signBlobQueueAndFileRequest(httpURLConnection, cloudFileClient, -1, operationContext);
            }
        };
    }

    @DoesServiceRequest
    private final StorageRequest<CloudFileClient, CloudFile, Integer> downloadToStreamImpl(Long l2, Long l3, OutputStream outputStream, AccessCondition accessCondition, FileRequestOptions fileRequestOptions, OperationContext operationContext) {
        final long longValue = l2 == null ? 0 : l2.longValue();
        final Long l4 = l2;
        final Long l5 = l3;
        final FileRequestOptions fileRequestOptions2 = fileRequestOptions;
        final AccessCondition accessCondition2 = accessCondition;
        final OutputStream outputStream2 = outputStream;
        return new StorageRequest<CloudFileClient, CloudFile, Integer>(fileRequestOptions, getStorageUri()) {
            public void recoveryAction(OperationContext operationContext) {
                if (getETagLockCondition() == null && !Utility.isNullOrEmpty(getLockedETag())) {
                    AccessCondition accessCondition = new AccessCondition();
                    accessCondition.setIfMatch(getLockedETag());
                    AccessCondition accessCondition2 = accessCondition2;
                    if (accessCondition2 != null) {
                        accessCondition.setLeaseID(accessCondition2.getLeaseID());
                    }
                    setETagLockCondition(accessCondition);
                }
                if (getCurrentRequestByteCount() > 0) {
                    setOffset(Long.valueOf(getCurrentRequestByteCount() + longValue));
                    Long l2 = l5;
                    if (l2 != null) {
                        setLength(Long.valueOf(l2.longValue() - getCurrentRequestByteCount()));
                    }
                }
            }

            public void setRequestLocationMode() {
                setRequestLocationMode(RequestLocationMode.PRIMARY_OR_SECONDARY);
            }

            public HttpURLConnection buildRequest(CloudFileClient cloudFileClient, CloudFile cloudFile, OperationContext operationContext) {
                if (getOffset() == null) {
                    setOffset(l4);
                }
                if (getLength() == null) {
                    setLength(l5);
                }
                return FileRequest.getFile(cloudFile.getTransformedAddress(operationContext).getUri(getCurrentLocation()), fileRequestOptions2, operationContext, accessCondition2, cloudFile.getShare().snapshotID, getOffset(), getLength(), fileRequestOptions2.getUseTransactionalContentMD5().booleanValue() && !getArePropertiesPopulated());
            }

            /* JADX INFO: finally extract failed */
            public Integer postProcessResponse(HttpURLConnection httpURLConnection, CloudFile cloudFile, CloudFileClient cloudFileClient, OperationContext operationContext, Integer num) {
                Boolean valueOf = Boolean.valueOf(!fileRequestOptions2.getDisableContentMD5Validation().booleanValue() && !Utility.isNullOrEmpty(getContentMD5()));
                long parseLong = Long.parseLong(httpURLConnection.getHeaderField(Constants.HeaderConstants.CONTENT_LENGTH));
                Logger.info(operationContext, String.format(SR.CREATING_NETWORK_STREAM, new Object[]{Long.valueOf(parseLong)}));
                NetworkInputStream networkInputStream = new NetworkInputStream(httpURLConnection.getInputStream(), parseLong);
                try {
                    StreamMd5AndLength writeToOutputStream = Utility.writeToOutputStream(networkInputStream, outputStream2, -1, false, valueOf.booleanValue(), operationContext, fileRequestOptions2, true, this, getCurrentDescriptor());
                    if (valueOf.booleanValue()) {
                        if (!getContentMD5().equals(writeToOutputStream.getMd5())) {
                            throw new StorageException(StorageErrorCodeStrings.INVALID_MD5, String.format(SR.FILE_HASH_MISMATCH, new Object[]{getContentMD5(), writeToOutputStream.getMd5()}), Constants.HeaderConstants.HTTP_UNUSED_306, (StorageExtendedErrorInformation) null, (Exception) null);
                        }
                    }
                    networkInputStream.close();
                    return null;
                } catch (Throwable th) {
                    networkInputStream.close();
                    throw th;
                }
            }

            public Integer preProcessResponse(CloudFile cloudFile, CloudFileClient cloudFileClient, OperationContext operationContext) {
                if (getResult().getStatusCode() == 206 || getResult().getStatusCode() == 200) {
                    if (!getArePropertiesPopulated()) {
                        FileAttributes fileAttributes = FileResponse.getFileAttributes(getConnection(), cloudFile.getStorageUri());
                        FileProperties unused = cloudFile.properties = fileAttributes.getProperties();
                        HashMap unused2 = cloudFile.metadata = fileAttributes.getMetadata();
                        setContentMD5(getConnection().getHeaderField(Constants.HeaderConstants.CONTENT_MD5));
                        if (fileRequestOptions2.getDisableContentMD5Validation().booleanValue() || !fileRequestOptions2.getUseTransactionalContentMD5().booleanValue() || !Utility.isNullOrEmpty(getContentMD5())) {
                            setLockedETag(cloudFile.properties.getEtag());
                            setArePropertiesPopulated(true);
                        } else {
                            throw new StorageException(StorageErrorCodeStrings.MISSING_MD5_HEADER, SR.MISSING_MD5, Constants.HeaderConstants.HTTP_UNUSED_306, (StorageExtendedErrorInformation) null, (Exception) null);
                        }
                    } else if (getLockedETag() != null && !getLockedETag().equals(cloudFile.properties.getEtag())) {
                        StorageErrorCode storageErrorCode = StorageErrorCode.CONDITION_FAILED;
                        throw new StorageException("CONDITION_FAILED", SR.INVALID_CONDITIONAL_HEADERS, 412, (StorageExtendedErrorInformation) null, (Exception) null);
                    }
                    setRequestLocationMode(getResult().getTargetLocation() == StorageLocation.PRIMARY ? RequestLocationMode.PRIMARY_ONLY : RequestLocationMode.SECONDARY_ONLY);
                    return null;
                }
                setNonExceptionedRetryableFailure(true);
                return null;
            }

            public void signRequest(HttpURLConnection httpURLConnection, CloudFileClient cloudFileClient, OperationContext operationContext) {
                StorageRequest.signBlobQueueAndFileRequest(httpURLConnection, cloudFileClient, -1, operationContext);
            }
        };
    }

    private StorageRequest<CloudFileClient, CloudFile, Boolean> existsImpl(boolean z, AccessCondition accessCondition, FileRequestOptions fileRequestOptions) {
        final boolean z2 = z;
        final FileRequestOptions fileRequestOptions2 = fileRequestOptions;
        final AccessCondition accessCondition2 = accessCondition;
        return new StorageRequest<CloudFileClient, CloudFile, Boolean>(fileRequestOptions, getStorageUri()) {
            public void setRequestLocationMode() {
                setRequestLocationMode(z2 ? RequestLocationMode.PRIMARY_ONLY : RequestLocationMode.PRIMARY_OR_SECONDARY);
            }

            public HttpURLConnection buildRequest(CloudFileClient cloudFileClient, CloudFile cloudFile, OperationContext operationContext) {
                return FileRequest.getFileProperties(cloudFile.getTransformedAddress(operationContext).getUri(getCurrentLocation()), fileRequestOptions2, operationContext, accessCondition2, cloudFile.getShare().snapshotID);
            }

            public Boolean preProcessResponse(CloudFile cloudFile, CloudFileClient cloudFileClient, OperationContext operationContext) {
                if (getResult().getStatusCode() == 200) {
                    FileAttributes fileAttributes = FileResponse.getFileAttributes(getConnection(), cloudFile.getStorageUri());
                    FileProperties unused = cloudFile.properties = fileAttributes.getProperties();
                    HashMap unused2 = cloudFile.metadata = fileAttributes.getMetadata();
                    return true;
                } else if (getResult().getStatusCode() == 404) {
                    return false;
                } else {
                    setNonExceptionedRetryableFailure(true);
                    return false;
                }
            }

            public void signRequest(HttpURLConnection httpURLConnection, CloudFileClient cloudFileClient, OperationContext operationContext) {
                StorageRequest.signBlobQueueAndFileRequest(httpURLConnection, cloudFileClient, -1, operationContext);
            }
        };
    }

    public static String getParentNameFromURI(StorageUri storageUri2, CloudFileShare cloudFileShare) {
        Utility.assertNotNull("resourceAddress", storageUri2);
        Utility.assertNotNull(SR.SHARE, cloudFileShare);
        String str = cloudFileShare.getName() + "/";
        String safeRelativize = Utility.safeRelativize(cloudFileShare.getStorageUri().getPrimaryUri(), storageUri2.getPrimaryUri());
        if (safeRelativize.endsWith("/")) {
            safeRelativize = safeRelativize.substring(0, safeRelativize.length() - 1);
        }
        if (Utility.isNullOrEmpty(safeRelativize)) {
            return null;
        }
        int lastIndexOf = safeRelativize.lastIndexOf("/");
        if (lastIndexOf < 0) {
            return "";
        }
        String substring = safeRelativize.substring(0, lastIndexOf);
        if (substring == null || !substring.equals(str)) {
            return substring;
        }
        return "";
    }

    private FileOutputStream openOutputStreamInternal(Long l2, AccessCondition accessCondition, FileRequestOptions fileRequestOptions, OperationContext operationContext) {
        if (operationContext == null) {
            operationContext = new OperationContext();
        }
        OperationContext operationContext2 = operationContext;
        getShare().assertNoSnapshot();
        FileRequestOptions populateAndApplyDefaults = FileRequestOptions.populateAndApplyDefaults(fileRequestOptions, this.fileServiceClient, false);
        if (l2 != null) {
            create(l2.longValue(), accessCondition, populateAndApplyDefaults, operationContext2);
        } else if (!populateAndApplyDefaults.getStoreFileContentMD5().booleanValue()) {
            downloadAttributes(accessCondition, populateAndApplyDefaults, operationContext2);
            l2 = Long.valueOf(getProperties().getLength());
        } else {
            throw new IllegalArgumentException(SR.FILE_MD5_NOT_POSSIBLE);
        }
        if (accessCondition != null) {
            accessCondition = AccessCondition.generateLeaseCondition(accessCondition.getLeaseID());
        }
        return new FileOutputStream(this, l2.longValue(), accessCondition, populateAndApplyDefaults, operationContext2);
    }

    private void parseQueryAndVerify(StorageUri storageUri2, StorageCredentials storageCredentials) {
        Utility.assertNotNull("completeUri", storageUri2);
        if (storageUri2.isAbsolute()) {
            this.storageUri = PathUtility.stripURIQueryAndFragment(storageUri2);
            StorageCredentialsSharedAccessSignature parseQuery = SharedAccessSignatureHelper.parseQuery(storageUri2);
            if (storageCredentials == null || parseQuery == null) {
                try {
                    boolean determinePathStyleFromUri = Utility.determinePathStyleFromUri(this.storageUri.getPrimaryUri());
                    StorageUri serviceClientBaseAddress = PathUtility.getServiceClientBaseAddress(getStorageUri(), determinePathStyleFromUri);
                    if (storageCredentials == null) {
                        storageCredentials = parseQuery;
                    }
                    this.fileServiceClient = new CloudFileClient(serviceClientBaseAddress, storageCredentials);
                    this.name = PathUtility.getFileNameFromURI(this.storageUri.getPrimaryUri(), determinePathStyleFromUri);
                    String[] strArr = PathUtility.parseQueryString(storageUri2.getQuery()).get(Constants.QueryConstants.SHARE_SNAPSHOT);
                    if (strArr != null && strArr.length > 0) {
                        getShare().snapshotID = strArr[0];
                    }
                } catch (URISyntaxException e2) {
                    throw Utility.generateNewUnexpectedStorageException(e2);
                }
            } else {
                throw new IllegalArgumentException(SR.MULTIPLE_CREDENTIALS_PROVIDED);
            }
        } else {
            throw new IllegalArgumentException(String.format(SR.RELATIVE_ADDRESS_NOT_PERMITTED, new Object[]{storageUri2.toString()}));
        }
    }

    private StorageRequest<CloudFileClient, CloudFile, Void> putRangeImpl(FileRange fileRange, FileRangeOperationType fileRangeOperationType, byte[] bArr, long j2, String str, AccessCondition accessCondition, FileRequestOptions fileRequestOptions, OperationContext operationContext) {
        final FileRangeOperationType fileRangeOperationType2 = fileRangeOperationType;
        final byte[] bArr2 = bArr;
        final long j3 = j2;
        final FileRequestOptions fileRequestOptions2 = fileRequestOptions;
        final OperationContext operationContext2 = operationContext;
        final AccessCondition accessCondition2 = accessCondition;
        final FileRange fileRange2 = fileRange;
        final String str2 = str;
        return new StorageRequest<CloudFileClient, CloudFile, Void>(fileRequestOptions, getStorageUri()) {
            public HttpURLConnection buildRequest(CloudFileClient cloudFileClient, CloudFile cloudFile, OperationContext operationContext) {
                if (fileRangeOperationType2 == FileRangeOperationType.UPDATE) {
                    setSendStream(new ByteArrayInputStream(bArr2));
                    setLength(Long.valueOf(j3));
                }
                return FileRequest.putRange(cloudFile.getTransformedAddress(operationContext).getUri(getCurrentLocation()), fileRequestOptions2, operationContext2, accessCondition2, fileRange2, fileRangeOperationType2);
            }

            public Void preProcessResponse(CloudFile cloudFile, CloudFileClient cloudFileClient, OperationContext operationContext) {
                if (getResult().getStatusCode() != 201) {
                    setNonExceptionedRetryableFailure(true);
                    return null;
                }
                cloudFile.updateEtagAndLastModifiedFromResponse(getConnection());
                getResult().setRequestServiceEncrypted(BaseResponse.isServerRequestEncrypted(getConnection()));
                return null;
            }

            public void setHeaders(HttpURLConnection httpURLConnection, CloudFile cloudFile, OperationContext operationContext) {
                if (fileRangeOperationType2 == FileRangeOperationType.UPDATE && fileRequestOptions2.getUseTransactionalContentMD5().booleanValue()) {
                    httpURLConnection.setRequestProperty(Constants.HeaderConstants.CONTENT_MD5, str2);
                }
            }

            public void signRequest(HttpURLConnection httpURLConnection, CloudFileClient cloudFileClient, OperationContext operationContext) {
                if (fileRangeOperationType2 == FileRangeOperationType.UPDATE) {
                    StorageRequest.signBlobQueueAndFileRequest(httpURLConnection, cloudFileClient, j3, operationContext);
                } else {
                    StorageRequest.signBlobQueueAndFileRequest(httpURLConnection, cloudFileClient, 0, operationContext);
                }
            }
        };
    }

    @DoesServiceRequest
    private void putRangeInternal(FileRange fileRange, FileRangeOperationType fileRangeOperationType, byte[] bArr, long j2, String str, AccessCondition accessCondition, FileRequestOptions fileRequestOptions, OperationContext operationContext) {
        ExecutionEngine.executeWithRetry(this.fileServiceClient, this, putRangeImpl(fileRange, fileRangeOperationType, bArr, j2, str, accessCondition, fileRequestOptions, operationContext), fileRequestOptions.getRetryPolicyFactory(), operationContext);
    }

    private StorageRequest<CloudFileClient, CloudFile, Void> resizeImpl(long j2, AccessCondition accessCondition, FileRequestOptions fileRequestOptions) {
        final FileRequestOptions fileRequestOptions2 = fileRequestOptions;
        final AccessCondition accessCondition2 = accessCondition;
        final long j3 = j2;
        return new StorageRequest<CloudFileClient, CloudFile, Void>(fileRequestOptions, getStorageUri()) {
            public HttpURLConnection buildRequest(CloudFileClient cloudFileClient, CloudFile cloudFile, OperationContext operationContext) {
                return FileRequest.resize(cloudFile.getTransformedAddress(operationContext).getUri(getCurrentLocation()), fileRequestOptions2, operationContext, accessCondition2, Long.valueOf(j3));
            }

            public Void preProcessResponse(CloudFile cloudFile, CloudFileClient cloudFileClient, OperationContext operationContext) {
                if (getResult().getStatusCode() != 200) {
                    setNonExceptionedRetryableFailure(true);
                    return null;
                }
                cloudFile.getProperties().setLength(j3);
                cloudFile.updateEtagAndLastModifiedFromResponse(getConnection());
                getResult().setRequestServiceEncrypted(BaseResponse.isServerRequestEncrypted(getConnection()));
                return null;
            }

            public void signRequest(HttpURLConnection httpURLConnection, CloudFileClient cloudFileClient, OperationContext operationContext) {
                StorageRequest.signBlobQueueAndFileRequest(httpURLConnection, cloudFileClient, 0, operationContext);
            }
        };
    }

    private StorageRequest<CloudFileClient, CloudFile, String> startCopyImpl(URI uri, AccessCondition accessCondition, AccessCondition accessCondition2, FileRequestOptions fileRequestOptions) {
        if (accessCondition == null || Utility.isNullOrEmpty(accessCondition.getLeaseID())) {
            final FileRequestOptions fileRequestOptions2 = fileRequestOptions;
            final AccessCondition accessCondition3 = accessCondition;
            final AccessCondition accessCondition4 = accessCondition2;
            final URI uri2 = uri;
            return new StorageRequest<CloudFileClient, CloudFile, String>(fileRequestOptions, getStorageUri()) {
                public HttpURLConnection buildRequest(CloudFileClient cloudFileClient, CloudFile cloudFile, OperationContext operationContext) {
                    return FileRequest.copyFrom(cloudFile.getTransformedAddress(operationContext).getUri(getCurrentLocation()), fileRequestOptions2, operationContext, accessCondition3, accessCondition4, uri2.toASCIIString());
                }

                public String preProcessResponse(CloudFile cloudFile, CloudFileClient cloudFileClient, OperationContext operationContext) {
                    if (getResult().getStatusCode() != 202) {
                        setNonExceptionedRetryableFailure(true);
                        return null;
                    }
                    cloudFile.updateEtagAndLastModifiedFromResponse(getConnection());
                    cloudFile.properties.setCopyState(FileResponse.getCopyState(getConnection()));
                    return cloudFile.properties.getCopyState().getCopyId();
                }

                public void setHeaders(HttpURLConnection httpURLConnection, CloudFile cloudFile, OperationContext operationContext) {
                    FileRequest.addMetadata(httpURLConnection, cloudFile.metadata, operationContext);
                }

                public void signRequest(HttpURLConnection httpURLConnection, CloudFileClient cloudFileClient, OperationContext operationContext) {
                    StorageRequest.signBlobQueueAndFileRequest(httpURLConnection, cloudFileClient, 0, operationContext);
                }
            };
        }
        throw new IllegalArgumentException(SR.LEASE_CONDITION_ON_SOURCE);
    }

    private StorageRequest<CloudFileClient, CloudFile, Void> uploadMetadataImpl(AccessCondition accessCondition, FileRequestOptions fileRequestOptions) {
        final FileRequestOptions fileRequestOptions2 = fileRequestOptions;
        final AccessCondition accessCondition2 = accessCondition;
        return new StorageRequest<CloudFileClient, CloudFile, Void>(fileRequestOptions, getStorageUri()) {
            public HttpURLConnection buildRequest(CloudFileClient cloudFileClient, CloudFile cloudFile, OperationContext operationContext) {
                return FileRequest.setFileMetadata(cloudFile.getTransformedAddress(operationContext).getUri(getCurrentLocation()), fileRequestOptions2, operationContext, accessCondition2);
            }

            public Void preProcessResponse(CloudFile cloudFile, CloudFileClient cloudFileClient, OperationContext operationContext) {
                if (getResult().getStatusCode() != 200) {
                    setNonExceptionedRetryableFailure(true);
                    return null;
                }
                cloudFile.updateEtagAndLastModifiedFromResponse(getConnection());
                getResult().setRequestServiceEncrypted(BaseResponse.isServerRequestEncrypted(getConnection()));
                return null;
            }

            public void setHeaders(HttpURLConnection httpURLConnection, CloudFile cloudFile, OperationContext operationContext) {
                FileRequest.addMetadata(httpURLConnection, cloudFile.metadata, operationContext);
            }

            public void signRequest(HttpURLConnection httpURLConnection, CloudFileClient cloudFileClient, OperationContext operationContext) {
                StorageRequest.signBlobQueueAndFileRequest(httpURLConnection, cloudFileClient, 0, operationContext);
            }
        };
    }

    private StorageRequest<CloudFileClient, CloudFile, Void> uploadPropertiesImpl(AccessCondition accessCondition, FileRequestOptions fileRequestOptions) {
        final FileRequestOptions fileRequestOptions2 = fileRequestOptions;
        final AccessCondition accessCondition2 = accessCondition;
        return new StorageRequest<CloudFileClient, CloudFile, Void>(fileRequestOptions, getStorageUri()) {
            public HttpURLConnection buildRequest(CloudFileClient cloudFileClient, CloudFile cloudFile, OperationContext operationContext) {
                return FileRequest.setFileProperties(cloudFile.getTransformedAddress(operationContext).getUri(getCurrentLocation()), fileRequestOptions2, operationContext, accessCondition2, cloudFile.properties);
            }

            public Void preProcessResponse(CloudFile cloudFile, CloudFileClient cloudFileClient, OperationContext operationContext) {
                if (getResult().getStatusCode() != 200) {
                    setNonExceptionedRetryableFailure(true);
                    return null;
                }
                cloudFile.updateEtagAndLastModifiedFromResponse(getConnection());
                getResult().setRequestServiceEncrypted(BaseResponse.isServerRequestEncrypted(getConnection()));
                return null;
            }

            public void signRequest(HttpURLConnection httpURLConnection, CloudFileClient cloudFileClient, OperationContext operationContext) {
                StorageRequest.signBlobQueueAndFileRequest(httpURLConnection, cloudFileClient, 0, operationContext);
            }
        };
    }

    @DoesServiceRequest
    public final void abortCopy(String str) {
        abortCopy(str, (AccessCondition) null, (FileRequestOptions) null, (OperationContext) null);
    }

    @DoesServiceRequest
    public void clearRange(long j2, long j3) {
        clearRange(j2, j3, (AccessCondition) null, (FileRequestOptions) null, (OperationContext) null);
    }

    @DoesServiceRequest
    public void create(long j2) {
        create(j2, (AccessCondition) null, (FileRequestOptions) null, (OperationContext) null);
    }

    @DoesServiceRequest
    public final void delete() {
        delete((AccessCondition) null, (FileRequestOptions) null, (OperationContext) null);
    }

    @DoesServiceRequest
    public final boolean deleteIfExists() {
        return deleteIfExists((AccessCondition) null, (FileRequestOptions) null, (OperationContext) null);
    }

    @DoesServiceRequest
    public final void download(OutputStream outputStream) {
        download(outputStream, (AccessCondition) null, (FileRequestOptions) null, (OperationContext) null);
    }

    @DoesServiceRequest
    public final void downloadAttributes() {
        downloadAttributes((AccessCondition) null, (FileRequestOptions) null, (OperationContext) null);
    }

    @DoesServiceRequest
    public ArrayList<FileRange> downloadFileRanges() {
        return downloadFileRanges((AccessCondition) null, (FileRequestOptions) null, (OperationContext) null);
    }

    @DoesServiceRequest
    public final void downloadRange(long j2, Long l2, OutputStream outputStream) {
        downloadRange(j2, l2, outputStream, (AccessCondition) null, (FileRequestOptions) null, (OperationContext) null);
    }

    @DoesServiceRequest
    public final int downloadRangeInternal(long j2, Long l2, byte[] bArr, int i2, AccessCondition accessCondition, FileRequestOptions fileRequestOptions, OperationContext operationContext) {
        int i3 = i2;
        if (i3 < 0 || j2 < 0 || (l2 != null && l2.longValue() <= 0)) {
            throw new IndexOutOfBoundsException();
        }
        OperationContext operationContext2 = operationContext == null ? new OperationContext() : operationContext;
        FileRequestOptions populateAndApplyDefaults = FileRequestOptions.populateAndApplyDefaults(fileRequestOptions, this.fileServiceClient);
        WrappedByteArrayOutputStream wrappedByteArrayOutputStream = new WrappedByteArrayOutputStream(bArr, i3);
        ExecutionEngine.executeWithRetry(this.fileServiceClient, this, downloadToStreamImpl(Long.valueOf(j2), l2, wrappedByteArrayOutputStream, accessCondition, populateAndApplyDefaults, operationContext2), populateAndApplyDefaults.getRetryPolicyFactory(), operationContext2);
        return wrappedByteArrayOutputStream.getPosition();
    }

    @DoesServiceRequest
    public final int downloadRangeToByteArray(long j2, Long l2, byte[] bArr, int i2) {
        return downloadRangeToByteArray(j2, l2, bArr, i2, (AccessCondition) null, (FileRequestOptions) null, (OperationContext) null);
    }

    public String downloadText() {
        return downloadText((String) null, (AccessCondition) null, (FileRequestOptions) null, (OperationContext) null);
    }

    @DoesServiceRequest
    public final int downloadToByteArray(byte[] bArr, int i2) {
        return downloadToByteArray(bArr, i2, (AccessCondition) null, (FileRequestOptions) null, (OperationContext) null);
    }

    public void downloadToFile(String str) {
        downloadToFile(str, (AccessCondition) null, (FileRequestOptions) null, (OperationContext) null);
    }

    @DoesServiceRequest
    public final boolean exists() {
        return exists((AccessCondition) null, (FileRequestOptions) null, (OperationContext) null);
    }

    public String generateSharedAccessSignature(SharedAccessFilePolicy sharedAccessFilePolicy, String str) {
        return generateSharedAccessSignature(sharedAccessFilePolicy, (SharedAccessFileHeaders) null, str);
    }

    public String getCanonicalName() {
        StringBuilder sb = new StringBuilder("/");
        sb.append(SR.FILE);
        String rawPath = getUri().getRawPath();
        if (this.fileServiceClient.isUsePathStyleUris()) {
            sb.append(rawPath);
        } else {
            sb.append(PathUtility.getCanonicalPathFromCredentials(getServiceClient().getCredentials(), rawPath));
        }
        return sb.toString();
    }

    public CopyState getCopyState() {
        return this.properties.getCopyState();
    }

    public final HashMap<String, String> getMetadata() {
        return this.metadata;
    }

    public final String getName() {
        return this.name;
    }

    public final CloudFileDirectory getParent() {
        String parentNameFromURI;
        if (this.parent == null && (parentNameFromURI = getParentNameFromURI(getStorageUri(), getShare())) != null) {
            this.parent = new CloudFileDirectory(PathUtility.appendPathToUri(this.share.getStorageUri(), parentNameFromURI), getServiceClient().getCredentials());
        }
        return this.parent;
    }

    public final FileProperties getProperties() {
        return this.properties;
    }

    public final CloudFileClient getServiceClient() {
        return this.fileServiceClient;
    }

    public final CloudFileShare getShare() {
        if (this.share == null) {
            this.share = new CloudFileShare(PathUtility.getShareURI(getStorageUri(), this.fileServiceClient.isUsePathStyleUris()), this.fileServiceClient.getCredentials());
        }
        return this.share;
    }

    public final StorageUri getStorageUri() {
        return this.storageUri;
    }

    public final int getStreamMinimumReadSizeInBytes() {
        return this.streamMinimumReadSizeInBytes;
    }

    public final int getStreamWriteSizeInBytes() {
        return this.streamWriteSizeInBytes;
    }

    public final StorageUri getTransformedAddress(OperationContext operationContext) {
        return this.fileServiceClient.getCredentials().transformUri(getStorageUri(), operationContext);
    }

    public final URI getUri() {
        return this.storageUri.getPrimaryUri();
    }

    @DoesServiceRequest
    public final FileInputStream openRead() {
        return openRead((AccessCondition) null, (FileRequestOptions) null, (OperationContext) null);
    }

    @DoesServiceRequest
    public FileOutputStream openWriteExisting() {
        return openOutputStreamInternal((Long) null, (AccessCondition) null, (FileRequestOptions) null, (OperationContext) null);
    }

    @DoesServiceRequest
    public FileOutputStream openWriteNew(long j2) {
        return openOutputStreamInternal(Long.valueOf(j2), (AccessCondition) null, (FileRequestOptions) null, (OperationContext) null);
    }

    public void resize(long j2) {
        resize(j2, (AccessCondition) null, (FileRequestOptions) null, (OperationContext) null);
    }

    public final void setMetadata(HashMap<String, String> hashMap) {
        this.metadata = hashMap;
    }

    public final void setProperties(FileProperties fileProperties) {
        this.properties = fileProperties;
    }

    public final void setShare(CloudFileShare cloudFileShare) {
        this.share = cloudFileShare;
    }

    public void setStorageUri(StorageUri storageUri2) {
        this.storageUri = storageUri2;
    }

    public void setStreamMinimumReadSizeInBytes(int i2) {
        if (i2 >= 16384) {
            this.streamMinimumReadSizeInBytes = i2;
            return;
        }
        throw new IllegalArgumentException("MinimumReadSize");
    }

    public void setStreamWriteSizeInBytes(int i2) {
        if (i2 > Constants.MAX_FILE_WRITE_SIZE || i2 < Constants.MIN_PERMITTED_FILE_WRITE_SIZE) {
            throw new IllegalArgumentException("StreamWriteSizeInBytes");
        }
        this.streamWriteSizeInBytes = i2;
    }

    @DoesServiceRequest
    public final String startCopy(CloudBlob cloudBlob) {
        return startCopy(cloudBlob, (AccessCondition) null, (AccessCondition) null, (FileRequestOptions) null, (OperationContext) null);
    }

    public void updateEtagAndLastModifiedFromResponse(HttpURLConnection httpURLConnection) {
        getProperties().setEtag(httpURLConnection.getHeaderField("ETag"));
        if (0 != httpURLConnection.getLastModified()) {
            Calendar instance = Calendar.getInstance(Utility.LOCALE_US);
            instance.setTimeZone(Utility.UTC_ZONE);
            instance.setTime(new Date(httpURLConnection.getLastModified()));
            getProperties().setLastModified(instance.getTime());
        }
    }

    public void updateLengthFromResponse(HttpURLConnection httpURLConnection) {
        String headerField = httpURLConnection.getHeaderField(FileConstants.CONTENT_LENGTH_HEADER);
        if (!Utility.isNullOrEmpty(headerField)) {
            getProperties().setLength(Long.parseLong(headerField));
        }
    }

    @DoesServiceRequest
    public void upload(InputStream inputStream, long j2) {
        upload(inputStream, j2, (AccessCondition) null, (FileRequestOptions) null, (OperationContext) null);
    }

    public void uploadFromByteArray(byte[] bArr, int i2, int i3) {
        uploadFromByteArray(bArr, i2, i3, (AccessCondition) null, (FileRequestOptions) null, (OperationContext) null);
    }

    public void uploadFromFile(String str) {
        uploadFromFile(str, (AccessCondition) null, (FileRequestOptions) null, (OperationContext) null);
    }

    @DoesServiceRequest
    public final void uploadMetadata() {
        uploadMetadata((AccessCondition) null, (FileRequestOptions) null, (OperationContext) null);
    }

    @DoesServiceRequest
    public final void uploadProperties() {
        uploadProperties((AccessCondition) null, (FileRequestOptions) null, (OperationContext) null);
    }

    @DoesServiceRequest
    public void uploadRange(InputStream inputStream, long j2, long j3) {
        uploadRange(inputStream, j2, j3, (AccessCondition) null, (FileRequestOptions) null, (OperationContext) null);
    }

    public void uploadText(String str) {
        uploadText(str, (String) null, (AccessCondition) null, (FileRequestOptions) null, (OperationContext) null);
    }

    public CloudFile(StorageUri storageUri2) {
        this(storageUri2, (StorageCredentials) null);
    }

    @DoesServiceRequest
    public final void abortCopy(String str, AccessCondition accessCondition, FileRequestOptions fileRequestOptions, OperationContext operationContext) {
        if (operationContext == null) {
            operationContext = new OperationContext();
        }
        getShare().assertNoSnapshot();
        operationContext.initialize();
        FileRequestOptions populateAndApplyDefaults = FileRequestOptions.populateAndApplyDefaults(fileRequestOptions, this.fileServiceClient);
        ExecutionEngine.executeWithRetry(this.fileServiceClient, this, abortCopyImpl(str, accessCondition, populateAndApplyDefaults), populateAndApplyDefaults.getRetryPolicyFactory(), operationContext);
    }

    @DoesServiceRequest
    public void clearRange(long j2, long j3, AccessCondition accessCondition, FileRequestOptions fileRequestOptions, OperationContext operationContext) {
        long j4 = j2;
        OperationContext operationContext2 = operationContext == null ? new OperationContext() : operationContext;
        getShare().assertNoSnapshot();
        putRangeInternal(new FileRange(j2, (j4 + j3) - 1), FileRangeOperationType.CLEAR, (byte[]) null, j3, (String) null, accessCondition, FileRequestOptions.populateAndApplyDefaults(fileRequestOptions, this.fileServiceClient), operationContext2);
    }

    @DoesServiceRequest
    public void create(long j2, AccessCondition accessCondition, FileRequestOptions fileRequestOptions, OperationContext operationContext) {
        if (operationContext == null) {
            operationContext = new OperationContext();
        }
        getShare().assertNoSnapshot();
        FileRequestOptions populateAndApplyDefaults = FileRequestOptions.populateAndApplyDefaults(fileRequestOptions, this.fileServiceClient);
        ExecutionEngine.executeWithRetry(this.fileServiceClient, this, createImpl(j2, accessCondition, populateAndApplyDefaults), populateAndApplyDefaults.getRetryPolicyFactory(), operationContext);
    }

    @DoesServiceRequest
    public final void delete(AccessCondition accessCondition, FileRequestOptions fileRequestOptions, OperationContext operationContext) {
        if (operationContext == null) {
            operationContext = new OperationContext();
        }
        getShare().assertNoSnapshot();
        operationContext.initialize();
        FileRequestOptions populateAndApplyDefaults = FileRequestOptions.populateAndApplyDefaults(fileRequestOptions, this.fileServiceClient);
        ExecutionEngine.executeWithRetry(this.fileServiceClient, this, deleteImpl(accessCondition, populateAndApplyDefaults), populateAndApplyDefaults.getRetryPolicyFactory(), operationContext);
    }

    @DoesServiceRequest
    public final boolean deleteIfExists(AccessCondition accessCondition, FileRequestOptions fileRequestOptions, OperationContext operationContext) {
        FileRequestOptions populateAndApplyDefaults = FileRequestOptions.populateAndApplyDefaults(fileRequestOptions, this.fileServiceClient);
        getShare().assertNoSnapshot();
        if (!exists(true, accessCondition, populateAndApplyDefaults, operationContext)) {
            return false;
        }
        try {
            delete(accessCondition, populateAndApplyDefaults, operationContext);
            return true;
        } catch (StorageException e2) {
            if (e2.getHttpStatusCode() == 404 && StorageErrorCodeStrings.RESOURCE_NOT_FOUND.equals(e2.getErrorCode())) {
                return false;
            }
            throw e2;
        }
    }

    @DoesServiceRequest
    public final void download(OutputStream outputStream, AccessCondition accessCondition, FileRequestOptions fileRequestOptions, OperationContext operationContext) {
        if (operationContext == null) {
            operationContext = new OperationContext();
        }
        operationContext.initialize();
        FileRequestOptions populateAndApplyDefaults = FileRequestOptions.populateAndApplyDefaults(fileRequestOptions, this.fileServiceClient);
        ExecutionEngine.executeWithRetry(this.fileServiceClient, this, downloadToStreamImpl((Long) null, (Long) null, outputStream, accessCondition, populateAndApplyDefaults, operationContext), populateAndApplyDefaults.getRetryPolicyFactory(), operationContext);
    }

    @DoesServiceRequest
    public final void downloadAttributes(AccessCondition accessCondition, FileRequestOptions fileRequestOptions, OperationContext operationContext) {
        if (operationContext == null) {
            operationContext = new OperationContext();
        }
        FileRequestOptions populateAndApplyDefaults = FileRequestOptions.populateAndApplyDefaults(fileRequestOptions, this.fileServiceClient);
        ExecutionEngine.executeWithRetry(this.fileServiceClient, this, downloadAttributesImpl(accessCondition, populateAndApplyDefaults), populateAndApplyDefaults.getRetryPolicyFactory(), operationContext);
    }

    @DoesServiceRequest
    public ArrayList<FileRange> downloadFileRanges(AccessCondition accessCondition, FileRequestOptions fileRequestOptions, OperationContext operationContext) {
        if (operationContext == null) {
            operationContext = new OperationContext();
        }
        FileRequestOptions populateAndApplyDefaults = FileRequestOptions.populateAndApplyDefaults(fileRequestOptions, this.fileServiceClient);
        return (ArrayList) ExecutionEngine.executeWithRetry(this.fileServiceClient, this, downloadFileRangesImpl(accessCondition, populateAndApplyDefaults), populateAndApplyDefaults.getRetryPolicyFactory(), operationContext);
    }

    @DoesServiceRequest
    public final void downloadRange(long j2, Long l2, OutputStream outputStream, AccessCondition accessCondition, FileRequestOptions fileRequestOptions, OperationContext operationContext) {
        if (j2 < 0 || (l2 != null && l2.longValue() <= 0)) {
            throw new IndexOutOfBoundsException();
        }
        if (operationContext == null) {
            operationContext = new OperationContext();
        }
        operationContext.initialize();
        FileRequestOptions populateAndApplyDefaults = FileRequestOptions.populateAndApplyDefaults(fileRequestOptions, this.fileServiceClient);
        ExecutionEngine.executeWithRetry(this.fileServiceClient, this, downloadToStreamImpl(Long.valueOf(j2), l2, outputStream, accessCondition, populateAndApplyDefaults, operationContext), populateAndApplyDefaults.getRetryPolicyFactory(), operationContext);
    }

    @DoesServiceRequest
    public final int downloadRangeToByteArray(long j2, Long l2, byte[] bArr, int i2, AccessCondition accessCondition, FileRequestOptions fileRequestOptions, OperationContext operationContext) {
        byte[] bArr2 = bArr;
        Utility.assertNotNull("buffer", bArr);
        if (l2 == null) {
            int i3 = i2;
        } else if (l2.longValue() + ((long) i2) > ((long) bArr2.length)) {
            throw new IndexOutOfBoundsException();
        }
        OperationContext operationContext2 = operationContext == null ? new OperationContext() : operationContext;
        operationContext2.initialize();
        return downloadRangeInternal(j2, l2, bArr, i2, accessCondition, fileRequestOptions, operationContext2);
    }

    public String downloadText(String str, AccessCondition accessCondition, FileRequestOptions fileRequestOptions, OperationContext operationContext) {
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        download(byteArrayOutputStream, accessCondition, fileRequestOptions, operationContext);
        return str == null ? byteArrayOutputStream.toString() : byteArrayOutputStream.toString(str);
    }

    @DoesServiceRequest
    public final int downloadToByteArray(byte[] bArr, int i2, AccessCondition accessCondition, FileRequestOptions fileRequestOptions, OperationContext operationContext) {
        Utility.assertNotNull("buffer", bArr);
        if (i2 < 0) {
            throw new IndexOutOfBoundsException();
        } else if (i2 < bArr.length) {
            if (operationContext == null) {
                operationContext = new OperationContext();
            }
            operationContext.initialize();
            FileRequestOptions populateAndApplyDefaults = FileRequestOptions.populateAndApplyDefaults(fileRequestOptions, this.fileServiceClient);
            WrappedByteArrayOutputStream wrappedByteArrayOutputStream = new WrappedByteArrayOutputStream(bArr, i2);
            ExecutionEngine.executeWithRetry(this.fileServiceClient, this, downloadToStreamImpl((Long) null, (Long) null, wrappedByteArrayOutputStream, accessCondition, populateAndApplyDefaults, operationContext), populateAndApplyDefaults.getRetryPolicyFactory(), operationContext);
            return wrappedByteArrayOutputStream.getPosition();
        } else {
            throw new IndexOutOfBoundsException();
        }
    }

    public void downloadToFile(String str, AccessCondition accessCondition, FileRequestOptions fileRequestOptions, OperationContext operationContext) {
        BufferedOutputStream bufferedOutputStream = new BufferedOutputStream(new FileOutputStream(str));
        try {
            download(bufferedOutputStream, accessCondition, fileRequestOptions, operationContext);
            bufferedOutputStream.close();
        } catch (StorageException e2) {
            deleteEmptyFileOnException(bufferedOutputStream, str);
            throw e2;
        } catch (IOException e3) {
            deleteEmptyFileOnException(bufferedOutputStream, str);
            throw e3;
        }
    }

    @DoesServiceRequest
    public final boolean exists(AccessCondition accessCondition, FileRequestOptions fileRequestOptions, OperationContext operationContext) {
        return exists(false, accessCondition, fileRequestOptions, operationContext);
    }

    public String generateSharedAccessSignature(SharedAccessFilePolicy sharedAccessFilePolicy, SharedAccessFileHeaders sharedAccessFileHeaders, String str) {
        return generateSharedAccessSignature(sharedAccessFilePolicy, sharedAccessFileHeaders, str, (IPRange) null, (SharedAccessProtocols) null);
    }

    @DoesServiceRequest
    public final FileInputStream openRead(AccessCondition accessCondition, FileRequestOptions fileRequestOptions, OperationContext operationContext) {
        if (operationContext == null) {
            operationContext = new OperationContext();
        }
        return new FileInputStream(this, accessCondition, FileRequestOptions.populateAndApplyDefaults(fileRequestOptions, this.fileServiceClient, false), operationContext);
    }

    @DoesServiceRequest
    public FileOutputStream openWriteExisting(AccessCondition accessCondition, FileRequestOptions fileRequestOptions, OperationContext operationContext) {
        return openOutputStreamInternal((Long) null, accessCondition, fileRequestOptions, operationContext);
    }

    @DoesServiceRequest
    public FileOutputStream openWriteNew(long j2, AccessCondition accessCondition, FileRequestOptions fileRequestOptions, OperationContext operationContext) {
        return openOutputStreamInternal(Long.valueOf(j2), accessCondition, fileRequestOptions, operationContext);
    }

    public void resize(long j2, AccessCondition accessCondition, FileRequestOptions fileRequestOptions, OperationContext operationContext) {
        if (operationContext == null) {
            operationContext = new OperationContext();
        }
        getShare().assertNoSnapshot();
        operationContext.initialize();
        FileRequestOptions populateAndApplyDefaults = FileRequestOptions.populateAndApplyDefaults(fileRequestOptions, this.fileServiceClient);
        ExecutionEngine.executeWithRetry(this.fileServiceClient, this, resizeImpl(j2, accessCondition, populateAndApplyDefaults), populateAndApplyDefaults.getRetryPolicyFactory(), operationContext);
    }

    @DoesServiceRequest
    public final String startCopy(CloudBlob cloudBlob, AccessCondition accessCondition, AccessCondition accessCondition2, FileRequestOptions fileRequestOptions, OperationContext operationContext) {
        Utility.assertNotNull("sourceBlob", cloudBlob);
        URI snapshotQualifiedUri = cloudBlob.getSnapshotQualifiedUri();
        if (!(cloudBlob.getServiceClient() == null || cloudBlob.getServiceClient().getCredentials() == null)) {
            snapshotQualifiedUri = cloudBlob.getServiceClient().getCredentials().transformUri(cloudBlob.getSnapshotQualifiedUri());
        }
        return startCopy(snapshotQualifiedUri, accessCondition, accessCondition2, fileRequestOptions, operationContext);
    }

    @DoesServiceRequest
    public void upload(InputStream inputStream, long j2, AccessCondition accessCondition, FileRequestOptions fileRequestOptions, OperationContext operationContext) {
        if (operationContext == null) {
            operationContext = new OperationContext();
        }
        OperationContext operationContext2 = operationContext;
        getShare().assertNoSnapshot();
        FileRequestOptions populateAndApplyDefaults = FileRequestOptions.populateAndApplyDefaults(fileRequestOptions, this.fileServiceClient);
        if (j2 >= 0) {
            if (inputStream.markSupported()) {
                inputStream.mark(268435456);
            }
            FileOutputStream openWriteNew = openWriteNew(j2, accessCondition, populateAndApplyDefaults, operationContext2);
            try {
                openWriteNew.write(inputStream, j2);
            } finally {
                openWriteNew.close();
            }
        } else {
            throw new IllegalArgumentException(SR.INVALID_FILE_LENGTH);
        }
    }

    public void uploadFromByteArray(byte[] bArr, int i2, int i3, AccessCondition accessCondition, FileRequestOptions fileRequestOptions, OperationContext operationContext) {
        ByteArrayInputStream byteArrayInputStream = new ByteArrayInputStream(bArr, i2, i3);
        upload(byteArrayInputStream, (long) i3, accessCondition, fileRequestOptions, operationContext);
        byteArrayInputStream.close();
    }

    public void uploadFromFile(String str, AccessCondition accessCondition, FileRequestOptions fileRequestOptions, OperationContext operationContext) {
        File file = new File(str);
        long length = file.length();
        BufferedInputStream bufferedInputStream = new BufferedInputStream(new FileInputStream(file));
        upload(bufferedInputStream, length, accessCondition, fileRequestOptions, operationContext);
        bufferedInputStream.close();
    }

    @DoesServiceRequest
    public final void uploadMetadata(AccessCondition accessCondition, FileRequestOptions fileRequestOptions, OperationContext operationContext) {
        if (operationContext == null) {
            operationContext = new OperationContext();
        }
        getShare().assertNoSnapshot();
        operationContext.initialize();
        FileRequestOptions populateAndApplyDefaults = FileRequestOptions.populateAndApplyDefaults(fileRequestOptions, this.fileServiceClient);
        ExecutionEngine.executeWithRetry(this.fileServiceClient, this, uploadMetadataImpl(accessCondition, populateAndApplyDefaults), populateAndApplyDefaults.getRetryPolicyFactory(), operationContext);
    }

    @DoesServiceRequest
    public final void uploadProperties(AccessCondition accessCondition, FileRequestOptions fileRequestOptions, OperationContext operationContext) {
        if (operationContext == null) {
            operationContext = new OperationContext();
        }
        getShare().assertNoSnapshot();
        operationContext.initialize();
        FileRequestOptions populateAndApplyDefaults = FileRequestOptions.populateAndApplyDefaults(fileRequestOptions, this.fileServiceClient);
        ExecutionEngine.executeWithRetry(this.fileServiceClient, this, uploadPropertiesImpl(accessCondition, populateAndApplyDefaults), populateAndApplyDefaults.getRetryPolicyFactory(), operationContext);
    }

    @DoesServiceRequest
    public void uploadRange(InputStream inputStream, long j2, long j3, AccessCondition accessCondition, FileRequestOptions fileRequestOptions, OperationContext operationContext) {
        String str;
        long j4 = j2;
        long j5 = j3;
        OperationContext operationContext2 = operationContext == null ? new OperationContext() : operationContext;
        getShare().assertNoSnapshot();
        FileRequestOptions populateAndApplyDefaults = FileRequestOptions.populateAndApplyDefaults(fileRequestOptions, this.fileServiceClient);
        FileRange fileRange = new FileRange(j4, (j4 + j5) - 1);
        int i2 = (int) j5;
        byte[] bArr = new byte[i2];
        int i3 = 0;
        while (true) {
            long j6 = (long) i3;
            if (j6 >= j5) {
                break;
            }
            i3 += inputStream.read(bArr, i3, (int) Math.min(j5 - j6, 2147483647L));
        }
        if (populateAndApplyDefaults.getUseTransactionalContentMD5().booleanValue()) {
            try {
                MessageDigest instance = MessageDigest.getInstance(DigestProxyChallengeProcessorImpl.DEFAULT_ALGORITHM);
                instance.update(bArr, 0, i2);
                str = Base64.encode(instance.digest());
            } catch (NoSuchAlgorithmException e2) {
                throw Utility.generateNewUnexpectedStorageException(e2);
            }
        } else {
            str = null;
        }
        putRangeInternal(fileRange, FileRangeOperationType.UPDATE, bArr, j3, str, accessCondition, populateAndApplyDefaults, operationContext2);
    }

    public void uploadText(String str, String str2, AccessCondition accessCondition, FileRequestOptions fileRequestOptions, OperationContext operationContext) {
        byte[] bytes = str2 == null ? str.getBytes() : str.getBytes(str2);
        uploadFromByteArray(bytes, 0, bytes.length, accessCondition, fileRequestOptions, operationContext);
    }

    public CloudFile(URI uri, StorageCredentials storageCredentials) {
        this(new StorageUri(uri), storageCredentials);
    }

    @DoesServiceRequest
    private final boolean exists(boolean z, AccessCondition accessCondition, FileRequestOptions fileRequestOptions, OperationContext operationContext) {
        if (operationContext == null) {
            operationContext = new OperationContext();
        }
        operationContext.initialize();
        FileRequestOptions populateAndApplyDefaults = FileRequestOptions.populateAndApplyDefaults(fileRequestOptions, this.fileServiceClient);
        return ((Boolean) ExecutionEngine.executeWithRetry(this.fileServiceClient, this, existsImpl(z, accessCondition, populateAndApplyDefaults), populateAndApplyDefaults.getRetryPolicyFactory(), operationContext)).booleanValue();
    }

    public String generateSharedAccessSignature(SharedAccessFilePolicy sharedAccessFilePolicy, SharedAccessFileHeaders sharedAccessFileHeaders, String str, IPRange iPRange, SharedAccessProtocols sharedAccessProtocols) {
        if (StorageCredentialsHelper.canCredentialsSignRequest(this.fileServiceClient.getCredentials())) {
            return SharedAccessSignatureHelper.generateSharedAccessSignatureForBlobAndFile(sharedAccessFilePolicy, sharedAccessFileHeaders, str, CommonSchemaDataUtils.METADATA_FIELDS, iPRange, sharedAccessProtocols, SharedAccessSignatureHelper.generateSharedAccessSignatureHashForBlobAndFile(sharedAccessFilePolicy, sharedAccessFileHeaders, str, getCanonicalName(), iPRange, sharedAccessProtocols, this.fileServiceClient)).toString();
        }
        throw new IllegalArgumentException(SR.CANNOT_CREATE_SAS_WITHOUT_ACCOUNT_KEY);
    }

    public CloudFile(StorageUri storageUri2, StorageCredentials storageCredentials) {
        this.streamWriteSizeInBytes = 4194304;
        this.streamMinimumReadSizeInBytes = 4194304;
        this.metadata = new HashMap<>();
        this.properties = new FileProperties();
        parseQueryAndVerify(storageUri2, storageCredentials);
    }

    @DoesServiceRequest
    public final String startCopy(CloudFile cloudFile) {
        return startCopy(cloudFile, (AccessCondition) null, (AccessCondition) null, (FileRequestOptions) null, (OperationContext) null);
    }

    @DoesServiceRequest
    public final String startCopy(CloudFile cloudFile, AccessCondition accessCondition, AccessCondition accessCondition2, FileRequestOptions fileRequestOptions, OperationContext operationContext) {
        Utility.assertNotNull("sourceFile", cloudFile);
        return startCopy(cloudFile.getTransformedAddress(operationContext).getPrimaryUri(), accessCondition, accessCondition2, fileRequestOptions, operationContext);
    }

    public CloudFile(CloudFile cloudFile) {
        this.streamWriteSizeInBytes = 4194304;
        this.streamMinimumReadSizeInBytes = 4194304;
        this.metadata = new HashMap<>();
        this.properties = new FileProperties();
        this.metadata = new HashMap<>();
        this.properties = new FileProperties(cloudFile.properties);
        HashMap<String, String> hashMap = cloudFile.metadata;
        if (hashMap != null) {
            for (String next : hashMap.keySet()) {
                this.metadata.put(next, cloudFile.metadata.get(next));
            }
        }
        this.storageUri = cloudFile.storageUri;
        this.share = cloudFile.share;
        this.parent = cloudFile.parent;
        this.fileServiceClient = cloudFile.fileServiceClient;
        this.name = cloudFile.name;
        setStreamMinimumReadSizeInBytes(cloudFile.getStreamMinimumReadSizeInBytes());
        setStreamWriteSizeInBytes(cloudFile.getStreamWriteSizeInBytes());
    }

    @DoesServiceRequest
    public final String startCopy(URI uri) {
        return startCopy(uri, (AccessCondition) null, (AccessCondition) null, (FileRequestOptions) null, (OperationContext) null);
    }

    @DoesServiceRequest
    public final String startCopy(URI uri, AccessCondition accessCondition, AccessCondition accessCondition2, FileRequestOptions fileRequestOptions, OperationContext operationContext) {
        if (operationContext == null) {
            operationContext = new OperationContext();
        }
        getShare().assertNoSnapshot();
        operationContext.initialize();
        FileRequestOptions populateAndApplyDefaults = FileRequestOptions.populateAndApplyDefaults(fileRequestOptions, this.fileServiceClient);
        return (String) ExecutionEngine.executeWithRetry(this.fileServiceClient, this, startCopyImpl(uri, accessCondition, accessCondition2, populateAndApplyDefaults), populateAndApplyDefaults.getRetryPolicyFactory(), operationContext);
    }

    public CloudFile(StorageUri storageUri2, String str, CloudFileShare cloudFileShare) {
        this.streamWriteSizeInBytes = 4194304;
        this.streamMinimumReadSizeInBytes = 4194304;
        this.metadata = new HashMap<>();
        this.properties = new FileProperties();
        Utility.assertNotNull("uri", storageUri2);
        Utility.assertNotNull("fileName", str);
        Utility.assertNotNull(SR.SHARE, cloudFileShare);
        this.name = str;
        this.fileServiceClient = cloudFileShare.getServiceClient();
        this.share = cloudFileShare;
        this.storageUri = storageUri2;
    }
}
