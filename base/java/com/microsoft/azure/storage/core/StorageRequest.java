package com.microsoft.azure.storage.core;

import com.microsoft.azure.storage.AccessCondition;
import com.microsoft.azure.storage.LocationMode;
import com.microsoft.azure.storage.OperationContext;
import com.microsoft.azure.storage.RequestOptions;
import com.microsoft.azure.storage.RequestResult;
import com.microsoft.azure.storage.ServiceClient;
import com.microsoft.azure.storage.StorageException;
import com.microsoft.azure.storage.StorageExtendedErrorInformation;
import com.microsoft.azure.storage.StorageLocation;
import com.microsoft.azure.storage.StorageUri;
import java.io.InputStream;
import java.net.HttpURLConnection;

public abstract class StorageRequest<C, P, R> {
    public boolean arePropertiesPopulated = false;
    public HttpURLConnection connection;
    public String contentMD5 = null;
    public StreamMd5AndLength currentDescriptor = null;
    public StorageLocation currentLocation;
    public long currentRequestByteCount = 0;
    public AccessCondition etagLockCondition = null;
    public StorageException exceptionReference;
    public boolean isSent = false;
    public Long length = null;
    public LocationMode locationMode;
    public String lockedETag = null;
    public boolean nonExceptionedRetryableFailure;
    public Long offset = null;
    public RequestLocationMode requestLocationMode;
    public RequestOptions requestOptions;
    public RequestResult result;
    public InputStream sendStream;
    public StorageUri storageUri;

    /* renamed from: com.microsoft.azure.storage.core.StorageRequest$1  reason: invalid class name */
    public static /* synthetic */ class AnonymousClass1 {
        public static final /* synthetic */ int[] $SwitchMap$com$microsoft$azure$storage$LocationMode;
        public static final /* synthetic */ int[] $SwitchMap$com$microsoft$azure$storage$core$RequestLocationMode;

        /* JADX WARNING: Can't wrap try/catch for region: R(13:0|(2:1|2)|3|(2:5|6)|7|9|10|11|12|13|15|16|(3:17|18|20)) */
        /* JADX WARNING: Failed to process nested try/catch */
        /* JADX WARNING: Missing exception handler attribute for start block: B:11:0x0023 */
        /* JADX WARNING: Missing exception handler attribute for start block: B:17:0x0030 */
        static {
            /*
                com.microsoft.azure.storage.core.RequestLocationMode[] r0 = com.microsoft.azure.storage.core.RequestLocationMode.values()
                int r0 = r0.length
                int[] r0 = new int[r0]
                $SwitchMap$com$microsoft$azure$storage$core$RequestLocationMode = r0
                r1 = 0
                r2 = 1
                com.microsoft.azure.storage.core.RequestLocationMode r3 = com.microsoft.azure.storage.core.RequestLocationMode.PRIMARY_ONLY     // Catch:{ NoSuchFieldError -> 0x000f }
                r0[r1] = r2     // Catch:{ NoSuchFieldError -> 0x000f }
            L_0x000f:
                r0 = 2
                int[] r3 = $SwitchMap$com$microsoft$azure$storage$core$RequestLocationMode     // Catch:{ NoSuchFieldError -> 0x0016 }
                com.microsoft.azure.storage.core.RequestLocationMode r4 = com.microsoft.azure.storage.core.RequestLocationMode.SECONDARY_ONLY     // Catch:{ NoSuchFieldError -> 0x0016 }
                r3[r2] = r0     // Catch:{ NoSuchFieldError -> 0x0016 }
            L_0x0016:
                com.microsoft.azure.storage.LocationMode[] r3 = com.microsoft.azure.storage.LocationMode.values()
                int r3 = r3.length
                int[] r3 = new int[r3]
                $SwitchMap$com$microsoft$azure$storage$LocationMode = r3
                com.microsoft.azure.storage.LocationMode r4 = com.microsoft.azure.storage.LocationMode.PRIMARY_ONLY     // Catch:{ NoSuchFieldError -> 0x0023 }
                r3[r1] = r2     // Catch:{ NoSuchFieldError -> 0x0023 }
            L_0x0023:
                int[] r1 = $SwitchMap$com$microsoft$azure$storage$LocationMode     // Catch:{ NoSuchFieldError -> 0x0029 }
                com.microsoft.azure.storage.LocationMode r3 = com.microsoft.azure.storage.LocationMode.PRIMARY_THEN_SECONDARY     // Catch:{ NoSuchFieldError -> 0x0029 }
                r1[r2] = r0     // Catch:{ NoSuchFieldError -> 0x0029 }
            L_0x0029:
                r1 = 3
                int[] r2 = $SwitchMap$com$microsoft$azure$storage$LocationMode     // Catch:{ NoSuchFieldError -> 0x0030 }
                com.microsoft.azure.storage.LocationMode r3 = com.microsoft.azure.storage.LocationMode.SECONDARY_ONLY     // Catch:{ NoSuchFieldError -> 0x0030 }
                r2[r0] = r1     // Catch:{ NoSuchFieldError -> 0x0030 }
            L_0x0030:
                int[] r0 = $SwitchMap$com$microsoft$azure$storage$LocationMode     // Catch:{ NoSuchFieldError -> 0x0037 }
                com.microsoft.azure.storage.LocationMode r2 = com.microsoft.azure.storage.LocationMode.SECONDARY_THEN_PRIMARY     // Catch:{ NoSuchFieldError -> 0x0037 }
                r2 = 4
                r0[r1] = r2     // Catch:{ NoSuchFieldError -> 0x0037 }
            L_0x0037:
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: com.microsoft.azure.storage.core.StorageRequest.AnonymousClass1.<clinit>():void");
        }
    }

    public StorageRequest() {
    }

    public static final void signBlobQueueAndFileRequest(HttpURLConnection httpURLConnection, ServiceClient serviceClient, long j2, OperationContext operationContext) {
        StorageCredentialsHelper.signBlobQueueAndFileRequest(serviceClient.getCredentials(), httpURLConnection, j2, operationContext);
    }

    public static final void signTableRequest(HttpURLConnection httpURLConnection, ServiceClient serviceClient, long j2, OperationContext operationContext) {
        StorageCredentialsHelper.signTableRequest(serviceClient.getCredentials(), httpURLConnection, j2, operationContext);
    }

    public void applyLocationModeToRequest() {
        if (getRequestOptions().getLocationMode() != null) {
            setLocationMode(getRequestOptions().getLocationMode());
        }
    }

    public abstract HttpURLConnection buildRequest(C c2, P p, OperationContext operationContext);

    public boolean getArePropertiesPopulated() {
        return this.arePropertiesPopulated;
    }

    public final HttpURLConnection getConnection() {
        return this.connection;
    }

    public final String getContentMD5() {
        return this.contentMD5;
    }

    public StreamMd5AndLength getCurrentDescriptor() {
        return this.currentDescriptor;
    }

    public StorageLocation getCurrentLocation() {
        return this.currentLocation;
    }

    public long getCurrentRequestByteCount() {
        return this.currentRequestByteCount;
    }

    public AccessCondition getETagLockCondition() {
        return this.etagLockCondition;
    }

    public final StorageException getException() {
        return this.exceptionReference;
    }

    public Long getLength() {
        return this.length;
    }

    public LocationMode getLocationMode() {
        return this.locationMode;
    }

    public final String getLockedETag() {
        return this.lockedETag;
    }

    public Long getOffset() {
        return this.offset;
    }

    public RequestLocationMode getRequestLocationMode() {
        return this.requestLocationMode;
    }

    public final RequestOptions getRequestOptions() {
        return this.requestOptions;
    }

    public final RequestResult getResult() {
        return this.result;
    }

    public final InputStream getSendStream() {
        return this.sendStream;
    }

    public StorageUri getStorageUri() {
        return this.storageUri;
    }

    public final void initialize(OperationContext operationContext) {
        RequestResult requestResult = new RequestResult();
        setResult(requestResult);
        operationContext.appendRequestResult(requestResult);
        setException((StorageException) null);
        setNonExceptionedRetryableFailure(false);
        setIsSent(false);
    }

    public void initializeLocation() {
        if (getStorageUri() != null) {
            int ordinal = getLocationMode().ordinal();
            if (ordinal == 0 || ordinal == 1) {
                setCurrentLocation(StorageLocation.PRIMARY);
            } else if (ordinal == 2 || ordinal == 3) {
                setCurrentLocation(StorageLocation.SECONDARY);
            } else {
                throw new IllegalArgumentException(String.format(SR.ARGUMENT_OUT_OF_RANGE_ERROR, new Object[]{"locationMode", getLocationMode()}));
            }
        } else {
            setCurrentLocation(StorageLocation.PRIMARY);
        }
    }

    public final boolean isNonExceptionedRetryableFailure() {
        return this.nonExceptionedRetryableFailure;
    }

    public boolean isSent() {
        return this.isSent;
    }

    public final StorageException materializeException(OperationContext operationContext) {
        if (getException() != null) {
            return getException();
        }
        return StorageException.translateException(this, (Exception) null, operationContext);
    }

    public StorageExtendedErrorInformation parseErrorDetails() {
        try {
            if (getConnection() == null) {
                return null;
            }
            if (getConnection().getErrorStream() == null) {
                return null;
            }
            return StorageErrorHandler.getExtendedErrorInformation(getConnection().getErrorStream());
        } catch (Exception unused) {
            return null;
        }
    }

    public R postProcessResponse(HttpURLConnection httpURLConnection, P p, C c2, OperationContext operationContext, R r) {
        return r;
    }

    public abstract R preProcessResponse(P p, C c2, OperationContext operationContext);

    public void recoveryAction(OperationContext operationContext) {
    }

    public void setArePropertiesPopulated(boolean z) {
        this.arePropertiesPopulated = z;
    }

    public final void setConnection(HttpURLConnection httpURLConnection) {
        this.connection = httpURLConnection;
    }

    public void setContentMD5(String str) {
        this.contentMD5 = str;
    }

    public void setCurrentDescriptor(StreamMd5AndLength streamMd5AndLength) {
        this.currentDescriptor = streamMd5AndLength;
    }

    public void setCurrentLocation(StorageLocation storageLocation) {
        this.currentLocation = storageLocation;
    }

    public void setCurrentRequestByteCount(long j2) {
        this.currentRequestByteCount = j2;
    }

    public void setETagLockCondition(AccessCondition accessCondition) {
        this.etagLockCondition = accessCondition;
    }

    public final void setException(StorageException storageException) {
        this.exceptionReference = storageException;
    }

    public void setHeaders(HttpURLConnection httpURLConnection, P p, OperationContext operationContext) {
    }

    public void setIsSent(boolean z) {
        this.isSent = z;
    }

    public void setLength(Long l2) {
        this.length = l2;
    }

    public void setLocationMode(LocationMode locationMode2) {
        this.locationMode = locationMode2;
    }

    public void setLockedETag(String str) {
        this.lockedETag = str;
    }

    public final void setNonExceptionedRetryableFailure(boolean z) {
        this.nonExceptionedRetryableFailure = z;
    }

    public void setOffset(Long l2) {
        this.offset = l2;
    }

    public void setRequestLocationMode() {
    }

    public void setRequestLocationMode(RequestLocationMode requestLocationMode2) {
        this.requestLocationMode = requestLocationMode2;
    }

    public final void setRequestOptions(RequestOptions requestOptions2) {
        this.requestOptions = requestOptions2;
    }

    public final void setResult(RequestResult requestResult) {
        this.result = requestResult;
    }

    public void setSendStream(InputStream inputStream) {
        this.sendStream = inputStream;
    }

    public void setStorageUri(StorageUri storageUri2) {
        this.storageUri = storageUri2;
    }

    public abstract void signRequest(HttpURLConnection httpURLConnection, C c2, OperationContext operationContext);

    public void validateLocation() {
        if (getStorageUri() == null || getStorageUri().validateLocationMode(this.locationMode)) {
            int ordinal = getRequestLocationMode().ordinal();
            if (ordinal != 0) {
                if (ordinal == 1) {
                    if (getLocationMode() != LocationMode.PRIMARY_ONLY) {
                        setCurrentLocation(StorageLocation.SECONDARY);
                        setLocationMode(LocationMode.SECONDARY_ONLY);
                    } else {
                        throw new IllegalArgumentException(SR.SECONDARY_ONLY_COMMAND);
                    }
                }
            } else if (getLocationMode() != LocationMode.SECONDARY_ONLY) {
                setCurrentLocation(StorageLocation.PRIMARY);
                setLocationMode(LocationMode.PRIMARY_ONLY);
            } else {
                throw new IllegalArgumentException(SR.PRIMARY_ONLY_COMMAND);
            }
            getResult().setTargetLocation(this.currentLocation);
            return;
        }
        throw new UnsupportedOperationException(SR.STORAGE_URI_MISSING_LOCATION);
    }

    public void validateStreamWrite(StreamMd5AndLength streamMd5AndLength) {
    }

    public StorageRequest(RequestOptions requestOptions2, StorageUri storageUri2) {
        setRequestOptions(requestOptions2);
        setStorageUri(storageUri2);
        this.locationMode = LocationMode.PRIMARY_ONLY;
        this.requestLocationMode = RequestLocationMode.PRIMARY_ONLY;
    }
}
