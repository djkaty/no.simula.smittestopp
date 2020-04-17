package com.microsoft.azure.storage;

import com.microsoft.azure.storage.Constants;
import com.microsoft.azure.storage.core.BaseRequest;
import com.microsoft.azure.storage.core.RequestLocationMode;
import com.microsoft.azure.storage.core.SR;
import com.microsoft.azure.storage.core.StorageRequest;
import com.microsoft.azure.storage.core.StreamMd5AndLength;
import com.microsoft.azure.storage.core.UriQueryBuilder;
import com.microsoft.azure.storage.core.Utility;
import java.io.ByteArrayInputStream;
import java.io.IOException;
import java.net.HttpURLConnection;
import java.net.URI;
import javax.xml.stream.XMLStreamException;

public abstract class ServiceClient {
    public StorageCredentials credentials;
    public StorageUri storageUri;
    public boolean usePathStyleUris;

    public ServiceClient(StorageUri storageUri2, StorageCredentials storageCredentials) {
        Utility.assertNotNull("baseUri", storageUri2);
        if (storageUri2.isAbsolute()) {
            this.credentials = storageCredentials == null ? StorageCredentialsAnonymous.ANONYMOUS : storageCredentials;
            this.usePathStyleUris = Utility.determinePathStyleFromUri(storageUri2.getPrimaryUri());
            this.storageUri = storageUri2;
            return;
        }
        throw new IllegalArgumentException(String.format(SR.RELATIVE_ADDRESS_NOT_PERMITTED, new Object[]{storageUri2}));
    }

    public StorageRequest<ServiceClient, Void, ServiceProperties> downloadServicePropertiesImpl(RequestOptions requestOptions, boolean z) {
        final RequestOptions requestOptions2 = requestOptions;
        final boolean z2 = z;
        return new StorageRequest<ServiceClient, Void, ServiceProperties>(requestOptions, getStorageUri()) {
            public HttpURLConnection buildRequest(ServiceClient serviceClient, Void voidR, OperationContext operationContext) {
                return BaseRequest.getServiceProperties(ServiceClient.this.credentials.transformUri(serviceClient.getEndpoint()), requestOptions2, (UriQueryBuilder) null, operationContext);
            }

            public ServiceProperties postProcessResponse(HttpURLConnection httpURLConnection, Void voidR, ServiceClient serviceClient, OperationContext operationContext, ServiceProperties serviceProperties) {
                return ServicePropertiesHandler.readServicePropertiesFromStream(httpURLConnection.getInputStream());
            }

            public ServiceProperties preProcessResponse(Void voidR, ServiceClient serviceClient, OperationContext operationContext) {
                if (getResult().getStatusCode() == 200) {
                    return null;
                }
                setNonExceptionedRetryableFailure(true);
                return null;
            }

            public void signRequest(HttpURLConnection httpURLConnection, ServiceClient serviceClient, OperationContext operationContext) {
                if (z2) {
                    StorageRequest.signTableRequest(httpURLConnection, serviceClient, -1, operationContext);
                } else {
                    StorageRequest.signBlobQueueAndFileRequest(httpURLConnection, serviceClient, -1, operationContext);
                }
            }
        };
    }

    public final StorageCredentials getCredentials() {
        return this.credentials;
    }

    public abstract RequestOptions getDefaultRequestOptions();

    public final URI getEndpoint() {
        return this.storageUri.getPrimaryUri();
    }

    public StorageRequest<ServiceClient, Void, ServiceStats> getServiceStatsImpl(RequestOptions requestOptions, boolean z) {
        final RequestOptions requestOptions2 = requestOptions;
        final boolean z2 = z;
        return new StorageRequest<ServiceClient, Void, ServiceStats>(requestOptions, getStorageUri()) {
            public void setRequestLocationMode() {
                applyLocationModeToRequest();
                setRequestLocationMode(RequestLocationMode.PRIMARY_OR_SECONDARY);
            }

            public HttpURLConnection buildRequest(ServiceClient serviceClient, Void voidR, OperationContext operationContext) {
                return BaseRequest.getServiceStats(ServiceClient.this.credentials.transformUri(serviceClient.getStorageUri().getUri(getCurrentLocation())), requestOptions2, (UriQueryBuilder) null, operationContext);
            }

            public ServiceStats postProcessResponse(HttpURLConnection httpURLConnection, Void voidR, ServiceClient serviceClient, OperationContext operationContext, ServiceStats serviceStats) {
                return ServiceStatsHandler.readServiceStatsFromStream(httpURLConnection.getInputStream());
            }

            public ServiceStats preProcessResponse(Void voidR, ServiceClient serviceClient, OperationContext operationContext) {
                if (getResult().getStatusCode() == 200) {
                    return null;
                }
                setNonExceptionedRetryableFailure(true);
                return null;
            }

            public void signRequest(HttpURLConnection httpURLConnection, ServiceClient serviceClient, OperationContext operationContext) {
                if (z2) {
                    StorageRequest.signTableRequest(httpURLConnection, serviceClient, -1, operationContext);
                } else {
                    StorageRequest.signBlobQueueAndFileRequest(httpURLConnection, serviceClient, -1, operationContext);
                }
            }
        };
    }

    public final StorageUri getStorageUri() {
        return this.storageUri;
    }

    public boolean isUsePathStyleUris() {
        return this.usePathStyleUris;
    }

    public final void setCredentials(StorageCredentials storageCredentials) {
        this.credentials = storageCredentials;
    }

    public final void setStorageUri(StorageUri storageUri2) {
        this.usePathStyleUris = Utility.determinePathStyleFromUri(storageUri2.getPrimaryUri());
        this.storageUri = storageUri2;
    }

    public StorageRequest<ServiceClient, Void, Void> uploadServicePropertiesImpl(ServiceProperties serviceProperties, RequestOptions requestOptions, OperationContext operationContext, boolean z) {
        try {
            ByteArrayInputStream byteArrayInputStream = new ByteArrayInputStream(ServicePropertiesSerializer.serializeToByteArray(serviceProperties));
            final StreamMd5AndLength analyzeStream = Utility.analyzeStream(byteArrayInputStream, -1, -1, true, true);
            final ByteArrayInputStream byteArrayInputStream2 = byteArrayInputStream;
            final RequestOptions requestOptions2 = requestOptions;
            final boolean z2 = z;
            return new StorageRequest<ServiceClient, Void, Void>(requestOptions, getStorageUri()) {
                public void recoveryAction(OperationContext operationContext) {
                    byteArrayInputStream2.reset();
                    byteArrayInputStream2.mark(268435456);
                }

                public HttpURLConnection buildRequest(ServiceClient serviceClient, Void voidR, OperationContext operationContext) {
                    setSendStream(byteArrayInputStream2);
                    setLength(Long.valueOf(analyzeStream.getLength()));
                    return BaseRequest.setServiceProperties(ServiceClient.this.credentials.transformUri(serviceClient.getEndpoint()), requestOptions2, (UriQueryBuilder) null, operationContext);
                }

                public Void preProcessResponse(Void voidR, ServiceClient serviceClient, OperationContext operationContext) {
                    if (getResult().getStatusCode() == 202) {
                        return null;
                    }
                    setNonExceptionedRetryableFailure(true);
                    return null;
                }

                public void setHeaders(HttpURLConnection httpURLConnection, Void voidR, OperationContext operationContext) {
                    httpURLConnection.setRequestProperty(Constants.HeaderConstants.CONTENT_MD5, analyzeStream.getMd5());
                }

                public void signRequest(HttpURLConnection httpURLConnection, ServiceClient serviceClient, OperationContext operationContext) {
                    if (z2) {
                        StorageRequest.signTableRequest(httpURLConnection, serviceClient, analyzeStream.getLength(), operationContext);
                    } else {
                        StorageRequest.signBlobQueueAndFileRequest(httpURLConnection, serviceClient, analyzeStream.getLength(), operationContext);
                    }
                }
            };
        } catch (IllegalArgumentException e2) {
            throw StorageException.translateClientException(e2);
        } catch (XMLStreamException e3) {
            throw StorageException.translateClientException(e3);
        } catch (IOException e4) {
            throw StorageException.translateClientException(e4);
        }
    }
}
