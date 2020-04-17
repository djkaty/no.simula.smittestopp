package com.microsoft.azure.storage.queue;

import com.microsoft.azure.storage.Constants;
import com.microsoft.azure.storage.DoesServiceRequest;
import com.microsoft.azure.storage.IPRange;
import com.microsoft.azure.storage.OperationContext;
import com.microsoft.azure.storage.SharedAccessPolicyHandler;
import com.microsoft.azure.storage.SharedAccessPolicySerializer;
import com.microsoft.azure.storage.SharedAccessProtocols;
import com.microsoft.azure.storage.StorageCredentials;
import com.microsoft.azure.storage.StorageCredentialsSharedAccessSignature;
import com.microsoft.azure.storage.StorageErrorCodeStrings;
import com.microsoft.azure.storage.StorageException;
import com.microsoft.azure.storage.StorageUri;
import com.microsoft.azure.storage.core.BaseResponse;
import com.microsoft.azure.storage.core.ExecutionEngine;
import com.microsoft.azure.storage.core.PathUtility;
import com.microsoft.azure.storage.core.RequestLocationMode;
import com.microsoft.azure.storage.core.SR;
import com.microsoft.azure.storage.core.SharedAccessSignatureHelper;
import com.microsoft.azure.storage.core.StorageCredentialsHelper;
import com.microsoft.azure.storage.core.StorageRequest;
import com.microsoft.azure.storage.core.Utility;
import java.io.ByteArrayInputStream;
import java.io.StringWriter;
import java.io.UnsupportedEncodingException;
import java.net.HttpURLConnection;
import java.net.URI;
import java.net.URISyntaxException;
import java.util.ArrayList;
import java.util.EnumSet;
import java.util.HashMap;
import java.util.Iterator;
import javax.xml.stream.XMLStreamException;

public final class CloudQueue {
    public long approximateMessageCount;
    public StorageUri messageRequestAddress;
    public HashMap<String, String> metadata;
    public String name;
    public CloudQueueClient queueServiceClient;
    public boolean shouldEncodeMessage;
    public StorageUri storageUri;

    public CloudQueue(URI uri) {
        this(new StorageUri(uri, (URI) null));
    }

    private StorageRequest<CloudQueueClient, CloudQueue, Void> addMessageImpl(CloudQueueMessage cloudQueueMessage, int i2, int i3, QueueRequestOptions queueRequestOptions) {
        try {
            final byte[] generateMessageRequestBody = QueueMessageSerializer.generateMessageRequestBody(cloudQueueMessage.getMessageContentForTransfer(this.shouldEncodeMessage, queueRequestOptions));
            final QueueRequestOptions queueRequestOptions2 = queueRequestOptions;
            final int i4 = i3;
            final int i5 = i2;
            final CloudQueueMessage cloudQueueMessage2 = cloudQueueMessage;
            return new StorageRequest<CloudQueueClient, CloudQueue, Void>(queueRequestOptions, getStorageUri()) {
                public HttpURLConnection buildRequest(CloudQueueClient cloudQueueClient, CloudQueue cloudQueue, OperationContext operationContext) {
                    setSendStream(new ByteArrayInputStream(generateMessageRequestBody));
                    setLength(Long.valueOf((long) generateMessageRequestBody.length));
                    return QueueRequest.putMessage(cloudQueue.getMessageRequestAddress(operationContext).getUri(getCurrentLocation()), queueRequestOptions2, operationContext, i4, i5);
                }

                public Void preProcessResponse(CloudQueue cloudQueue, CloudQueueClient cloudQueueClient, OperationContext operationContext) {
                    if (getResult().getStatusCode() != 201) {
                        setNonExceptionedRetryableFailure(true);
                        return null;
                    }
                    CloudQueueMessage cloudQueueMessage = QueueMessageHandler.readMessages(getConnection().getInputStream(), cloudQueue.shouldEncodeMessage).get(0);
                    cloudQueueMessage2.setInsertionTime(cloudQueueMessage.getInsertionTime());
                    cloudQueueMessage2.setExpirationTime(cloudQueueMessage.getExpirationTime());
                    cloudQueueMessage2.setNextVisibleTime(cloudQueueMessage.getNextVisibleTime());
                    cloudQueueMessage2.setMessageId(cloudQueueMessage.getMessageId());
                    cloudQueueMessage2.setPopReceipt(cloudQueueMessage.getPopReceipt());
                    return null;
                }

                public void signRequest(HttpURLConnection httpURLConnection, CloudQueueClient cloudQueueClient, OperationContext operationContext) {
                    StorageRequest.signBlobQueueAndFileRequest(httpURLConnection, cloudQueueClient, (long) generateMessageRequestBody.length, operationContext);
                }
            };
        } catch (XMLStreamException e2) {
            throw StorageException.translateClientException(e2);
        }
    }

    private StorageRequest<CloudQueueClient, CloudQueue, Void> clearImpl(final QueueRequestOptions queueRequestOptions) {
        return new StorageRequest<CloudQueueClient, CloudQueue, Void>(getStorageUri(), queueRequestOptions) {
            public HttpURLConnection buildRequest(CloudQueueClient cloudQueueClient, CloudQueue cloudQueue, OperationContext operationContext) {
                return QueueRequest.clearMessages(cloudQueue.getMessageRequestAddress(operationContext).getUri(getCurrentLocation()), queueRequestOptions, operationContext);
            }

            public Void preProcessResponse(CloudQueue cloudQueue, CloudQueueClient cloudQueueClient, OperationContext operationContext) {
                if (getResult().getStatusCode() == 204) {
                    return null;
                }
                setNonExceptionedRetryableFailure(true);
                return null;
            }

            public void signRequest(HttpURLConnection httpURLConnection, CloudQueueClient cloudQueueClient, OperationContext operationContext) {
                StorageRequest.signBlobQueueAndFileRequest(httpURLConnection, cloudQueueClient, -1, operationContext);
            }
        };
    }

    private StorageRequest<CloudQueueClient, CloudQueue, Void> createImpl(final QueueRequestOptions queueRequestOptions) {
        return new StorageRequest<CloudQueueClient, CloudQueue, Void>(getStorageUri(), queueRequestOptions) {
            public HttpURLConnection buildRequest(CloudQueueClient cloudQueueClient, CloudQueue cloudQueue, OperationContext operationContext) {
                return QueueRequest.create(cloudQueue.getTransformedAddress(operationContext).getUri(getCurrentLocation()), queueRequestOptions, operationContext);
            }

            public Void preProcessResponse(CloudQueue cloudQueue, CloudQueueClient cloudQueueClient, OperationContext operationContext) {
                if (getResult().getStatusCode() == 201 || getResult().getStatusCode() == 204) {
                    return null;
                }
                setNonExceptionedRetryableFailure(true);
                return null;
            }

            public void setHeaders(HttpURLConnection httpURLConnection, CloudQueue cloudQueue, OperationContext operationContext) {
                QueueRequest.addMetadata(httpURLConnection, cloudQueue.metadata, operationContext);
            }

            public void signRequest(HttpURLConnection httpURLConnection, CloudQueueClient cloudQueueClient, OperationContext operationContext) {
                StorageRequest.signBlobQueueAndFileRequest(httpURLConnection, cloudQueueClient, 0, operationContext);
            }
        };
    }

    private StorageRequest<CloudQueueClient, CloudQueue, Void> deleteImpl(final QueueRequestOptions queueRequestOptions) {
        return new StorageRequest<CloudQueueClient, CloudQueue, Void>(getStorageUri(), queueRequestOptions) {
            public HttpURLConnection buildRequest(CloudQueueClient cloudQueueClient, CloudQueue cloudQueue, OperationContext operationContext) {
                return QueueRequest.delete(cloudQueue.getTransformedAddress(operationContext).getUri(getCurrentLocation()), queueRequestOptions, operationContext);
            }

            public Void preProcessResponse(CloudQueue cloudQueue, CloudQueueClient cloudQueueClient, OperationContext operationContext) {
                if (getResult().getStatusCode() == 204) {
                    return null;
                }
                setNonExceptionedRetryableFailure(true);
                return null;
            }

            public void signRequest(HttpURLConnection httpURLConnection, CloudQueueClient cloudQueueClient, OperationContext operationContext) {
                StorageRequest.signBlobQueueAndFileRequest(httpURLConnection, cloudQueueClient, -1, operationContext);
            }
        };
    }

    private StorageRequest<CloudQueueClient, CloudQueue, Void> deleteMessageImpl(CloudQueueMessage cloudQueueMessage, QueueRequestOptions queueRequestOptions) {
        final String id = cloudQueueMessage.getId();
        final String popReceipt = cloudQueueMessage.getPopReceipt();
        final QueueRequestOptions queueRequestOptions2 = queueRequestOptions;
        return new StorageRequest<CloudQueueClient, CloudQueue, Void>(queueRequestOptions, getStorageUri()) {
            public HttpURLConnection buildRequest(CloudQueueClient cloudQueueClient, CloudQueue cloudQueue, OperationContext operationContext) {
                return QueueRequest.deleteMessage(cloudQueue.getIndividualMessageAddress(id, operationContext).getUri(getCurrentLocation()), queueRequestOptions2, operationContext, popReceipt);
            }

            public Void preProcessResponse(CloudQueue cloudQueue, CloudQueueClient cloudQueueClient, OperationContext operationContext) {
                if (getResult().getStatusCode() == 204) {
                    return null;
                }
                setNonExceptionedRetryableFailure(true);
                return null;
            }

            public void signRequest(HttpURLConnection httpURLConnection, CloudQueueClient cloudQueueClient, OperationContext operationContext) {
                StorageRequest.signBlobQueueAndFileRequest(httpURLConnection, cloudQueueClient, -1, operationContext);
            }
        };
    }

    private StorageRequest<CloudQueueClient, CloudQueue, Void> downloadAttributesImpl(final QueueRequestOptions queueRequestOptions) {
        return new StorageRequest<CloudQueueClient, CloudQueue, Void>(getStorageUri(), queueRequestOptions) {
            public void setRequestLocationMode() {
                setRequestLocationMode(RequestLocationMode.PRIMARY_OR_SECONDARY);
            }

            public HttpURLConnection buildRequest(CloudQueueClient cloudQueueClient, CloudQueue cloudQueue, OperationContext operationContext) {
                return QueueRequest.downloadAttributes(cloudQueue.getTransformedAddress(operationContext).getUri(getCurrentLocation()), queueRequestOptions, operationContext);
            }

            public Void preProcessResponse(CloudQueue cloudQueue, CloudQueueClient cloudQueueClient, OperationContext operationContext) {
                if (getResult().getStatusCode() != 200) {
                    setNonExceptionedRetryableFailure(true);
                    return null;
                }
                HashMap unused = cloudQueue.metadata = BaseResponse.getMetadata(getConnection());
                long unused2 = cloudQueue.approximateMessageCount = QueueResponse.getApproximateMessageCount(getConnection());
                return null;
            }

            public void signRequest(HttpURLConnection httpURLConnection, CloudQueueClient cloudQueueClient, OperationContext operationContext) {
                StorageRequest.signBlobQueueAndFileRequest(httpURLConnection, cloudQueueClient, -1, operationContext);
            }
        };
    }

    private StorageRequest<CloudQueueClient, CloudQueue, QueuePermissions> downloadPermissionsImpl(final QueueRequestOptions queueRequestOptions) {
        return new StorageRequest<CloudQueueClient, CloudQueue, QueuePermissions>(getStorageUri(), queueRequestOptions) {
            public void setRequestLocationMode() {
                setRequestLocationMode(RequestLocationMode.PRIMARY_OR_SECONDARY);
            }

            public HttpURLConnection buildRequest(CloudQueueClient cloudQueueClient, CloudQueue cloudQueue, OperationContext operationContext) {
                return QueueRequest.getAcl(cloudQueue.getTransformedAddress(operationContext).getUri(getCurrentLocation()), queueRequestOptions, operationContext);
            }

            public QueuePermissions postProcessResponse(HttpURLConnection httpURLConnection, CloudQueue cloudQueue, CloudQueueClient cloudQueueClient, OperationContext operationContext, QueuePermissions queuePermissions) {
                HashMap<String, SharedAccessQueuePolicy> accessIdentifiers = SharedAccessPolicyHandler.getAccessIdentifiers(getConnection().getInputStream(), SharedAccessQueuePolicy.class);
                for (String next : accessIdentifiers.keySet()) {
                    queuePermissions.getSharedAccessPolicies().put(next, accessIdentifiers.get(next));
                }
                return queuePermissions;
            }

            public QueuePermissions preProcessResponse(CloudQueue cloudQueue, CloudQueueClient cloudQueueClient, OperationContext operationContext) {
                if (getResult().getStatusCode() == 200) {
                    return new QueuePermissions();
                }
                setNonExceptionedRetryableFailure(true);
                return null;
            }

            public void signRequest(HttpURLConnection httpURLConnection, CloudQueueClient cloudQueueClient, OperationContext operationContext) {
                StorageRequest.signBlobQueueAndFileRequest(httpURLConnection, cloudQueueClient, -1, operationContext);
            }
        };
    }

    private StorageRequest<CloudQueueClient, CloudQueue, Boolean> existsImpl(boolean z, QueueRequestOptions queueRequestOptions) {
        final boolean z2 = z;
        final QueueRequestOptions queueRequestOptions2 = queueRequestOptions;
        return new StorageRequest<CloudQueueClient, CloudQueue, Boolean>(queueRequestOptions, getStorageUri()) {
            public void setRequestLocationMode() {
                setRequestLocationMode(z2 ? RequestLocationMode.PRIMARY_ONLY : RequestLocationMode.PRIMARY_OR_SECONDARY);
            }

            public HttpURLConnection buildRequest(CloudQueueClient cloudQueueClient, CloudQueue cloudQueue, OperationContext operationContext) {
                return QueueRequest.downloadAttributes(cloudQueue.getTransformedAddress(operationContext).getUri(getCurrentLocation()), queueRequestOptions2, operationContext);
            }

            public Boolean preProcessResponse(CloudQueue cloudQueue, CloudQueueClient cloudQueueClient, OperationContext operationContext) {
                if (getResult().getStatusCode() == 200) {
                    return true;
                }
                if (getResult().getStatusCode() == 404) {
                    return false;
                }
                setNonExceptionedRetryableFailure(true);
                return false;
            }

            public void signRequest(HttpURLConnection httpURLConnection, CloudQueueClient cloudQueueClient, OperationContext operationContext) {
                StorageRequest.signBlobQueueAndFileRequest(httpURLConnection, cloudQueueClient, -1, operationContext);
            }
        };
    }

    public static CloudQueueMessage getFirstOrNull(Iterable<CloudQueueMessage> iterable) {
        Iterator<CloudQueueMessage> it = iterable.iterator();
        if (it.hasNext()) {
            return it.next();
        }
        return null;
    }

    /* access modifiers changed from: private */
    public StorageUri getIndividualMessageAddress(String str, OperationContext operationContext) {
        return PathUtility.appendPathToUri(getMessageRequestAddress(operationContext), str);
    }

    /* access modifiers changed from: private */
    public StorageUri getMessageRequestAddress(OperationContext operationContext) {
        if (this.messageRequestAddress == null) {
            this.messageRequestAddress = PathUtility.appendPathToUri(getTransformedAddress(operationContext), QueueConstants.MESSAGES);
        }
        return this.messageRequestAddress;
    }

    private String getSharedAccessCanonicalName() {
        return String.format("/%s/%s/%s", new Object[]{SR.QUEUE, getServiceClient().getCredentials().getAccountName(), getName()});
    }

    /* access modifiers changed from: private */
    public final StorageUri getTransformedAddress(OperationContext operationContext) {
        return this.queueServiceClient.getCredentials().transformUri(getStorageUri(), operationContext);
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
                    this.queueServiceClient = new CloudQueueClient(serviceClientBaseAddress, storageCredentials);
                    this.name = PathUtility.getContainerNameFromUri(this.storageUri.getPrimaryUri(), determinePathStyleFromUri);
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

    private StorageRequest<CloudQueueClient, CloudQueue, ArrayList<CloudQueueMessage>> peekMessagesImpl(int i2, QueueRequestOptions queueRequestOptions) {
        final QueueRequestOptions queueRequestOptions2 = queueRequestOptions;
        final int i3 = i2;
        return new StorageRequest<CloudQueueClient, CloudQueue, ArrayList<CloudQueueMessage>>(queueRequestOptions, getStorageUri()) {
            public void setRequestLocationMode() {
                setRequestLocationMode(RequestLocationMode.PRIMARY_OR_SECONDARY);
            }

            public HttpURLConnection buildRequest(CloudQueueClient cloudQueueClient, CloudQueue cloudQueue, OperationContext operationContext) {
                return QueueRequest.peekMessages(cloudQueue.getMessageRequestAddress(operationContext).getUri(getCurrentLocation()), queueRequestOptions2, operationContext, i3);
            }

            public ArrayList<CloudQueueMessage> preProcessResponse(CloudQueue cloudQueue, CloudQueueClient cloudQueueClient, OperationContext operationContext) {
                if (getResult().getStatusCode() != 200) {
                    setNonExceptionedRetryableFailure(true);
                    return null;
                }
                ArrayList<CloudQueueMessage> readMessages = QueueMessageHandler.readMessages(getConnection().getInputStream(), cloudQueue.shouldEncodeMessage);
                if (queueRequestOptions2.getEncryptionPolicy() != null) {
                    Iterator<CloudQueueMessage> it = readMessages.iterator();
                    while (it.hasNext()) {
                        CloudQueueMessage next = it.next();
                        next.setMessageContent(queueRequestOptions2.getEncryptionPolicy().decryptMessage(next.messageContent, queueRequestOptions2.requireEncryption()));
                    }
                }
                return readMessages;
            }

            public void signRequest(HttpURLConnection httpURLConnection, CloudQueueClient cloudQueueClient, OperationContext operationContext) {
                StorageRequest.signBlobQueueAndFileRequest(httpURLConnection, cloudQueueClient, -1, operationContext);
            }
        };
    }

    private StorageRequest<CloudQueueClient, CloudQueue, ArrayList<CloudQueueMessage>> retrieveMessagesImpl(int i2, int i3, QueueRequestOptions queueRequestOptions) {
        final QueueRequestOptions queueRequestOptions2 = queueRequestOptions;
        final int i4 = i2;
        final int i5 = i3;
        return new StorageRequest<CloudQueueClient, CloudQueue, ArrayList<CloudQueueMessage>>(queueRequestOptions, getStorageUri()) {
            public HttpURLConnection buildRequest(CloudQueueClient cloudQueueClient, CloudQueue cloudQueue, OperationContext operationContext) {
                return QueueRequest.retrieveMessages(cloudQueue.getMessageRequestAddress(operationContext).getUri(getCurrentLocation()), queueRequestOptions2, operationContext, i4, i5);
            }

            public ArrayList<CloudQueueMessage> preProcessResponse(CloudQueue cloudQueue, CloudQueueClient cloudQueueClient, OperationContext operationContext) {
                if (getResult().getStatusCode() != 200) {
                    setNonExceptionedRetryableFailure(true);
                    return null;
                }
                ArrayList<CloudQueueMessage> readMessages = QueueMessageHandler.readMessages(getConnection().getInputStream(), cloudQueue.shouldEncodeMessage);
                if (queueRequestOptions2.getEncryptionPolicy() != null) {
                    Iterator<CloudQueueMessage> it = readMessages.iterator();
                    while (it.hasNext()) {
                        CloudQueueMessage next = it.next();
                        next.setMessageContent(queueRequestOptions2.getEncryptionPolicy().decryptMessage(next.messageContent, queueRequestOptions2.requireEncryption()));
                    }
                }
                return readMessages;
            }

            public void signRequest(HttpURLConnection httpURLConnection, CloudQueueClient cloudQueueClient, OperationContext operationContext) {
                StorageRequest.signBlobQueueAndFileRequest(httpURLConnection, cloudQueueClient, -1, operationContext);
            }
        };
    }

    private StorageRequest<CloudQueueClient, CloudQueue, Void> updateMessageImpl(CloudQueueMessage cloudQueueMessage, int i2, EnumSet<MessageUpdateFields> enumSet, QueueRequestOptions queueRequestOptions) {
        final String messageContentForTransfer = cloudQueueMessage.getMessageContentForTransfer(this.shouldEncodeMessage, queueRequestOptions);
        final EnumSet<MessageUpdateFields> enumSet2 = enumSet;
        final CloudQueueMessage cloudQueueMessage2 = cloudQueueMessage;
        final QueueRequestOptions queueRequestOptions2 = queueRequestOptions;
        final int i3 = i2;
        return new StorageRequest<CloudQueueClient, CloudQueue, Void>(queueRequestOptions, getStorageUri()) {
            public HttpURLConnection buildRequest(CloudQueueClient cloudQueueClient, CloudQueue cloudQueue, OperationContext operationContext) {
                if (enumSet2.contains(MessageUpdateFields.CONTENT)) {
                    byte[] generateMessageRequestBody = QueueMessageSerializer.generateMessageRequestBody(messageContentForTransfer);
                    setSendStream(new ByteArrayInputStream(generateMessageRequestBody));
                    setLength(Long.valueOf((long) generateMessageRequestBody.length));
                }
                return QueueRequest.updateMessage(cloudQueue.getIndividualMessageAddress(cloudQueueMessage2.getId(), operationContext).getUri(getCurrentLocation()), queueRequestOptions2, operationContext, cloudQueueMessage2.getPopReceipt(), i3);
            }

            public Void preProcessResponse(CloudQueue cloudQueue, CloudQueueClient cloudQueueClient, OperationContext operationContext) {
                if (getResult().getStatusCode() != 204) {
                    setNonExceptionedRetryableFailure(true);
                    return null;
                }
                cloudQueueMessage2.setPopReceipt(getConnection().getHeaderField(Constants.HeaderConstants.POP_RECEIPT_HEADER));
                cloudQueueMessage2.setNextVisibleTime(Utility.parseRFC1123DateFromStringInGMT(getConnection().getHeaderField(Constants.HeaderConstants.TIME_NEXT_VISIBLE_HEADER)));
                return null;
            }

            public void signRequest(HttpURLConnection httpURLConnection, CloudQueueClient cloudQueueClient, OperationContext operationContext) {
                if (enumSet2.contains(MessageUpdateFields.CONTENT)) {
                    StorageRequest.signBlobQueueAndFileRequest(httpURLConnection, cloudQueueClient, getLength().longValue(), operationContext);
                    return;
                }
                httpURLConnection.setFixedLengthStreamingMode(0);
                StorageRequest.signBlobQueueAndFileRequest(httpURLConnection, cloudQueueClient, 0, operationContext);
            }
        };
    }

    private StorageRequest<CloudQueueClient, CloudQueue, Void> uploadMetadataImpl(final QueueRequestOptions queueRequestOptions) {
        return new StorageRequest<CloudQueueClient, CloudQueue, Void>(getStorageUri(), queueRequestOptions) {
            public HttpURLConnection buildRequest(CloudQueueClient cloudQueueClient, CloudQueue cloudQueue, OperationContext operationContext) {
                return QueueRequest.setMetadata(cloudQueue.getTransformedAddress(operationContext).getUri(getCurrentLocation()), queueRequestOptions, operationContext);
            }

            public Void preProcessResponse(CloudQueue cloudQueue, CloudQueueClient cloudQueueClient, OperationContext operationContext) {
                if (getResult().getStatusCode() == 204) {
                    return null;
                }
                setNonExceptionedRetryableFailure(true);
                return null;
            }

            public void setHeaders(HttpURLConnection httpURLConnection, CloudQueue cloudQueue, OperationContext operationContext) {
                QueueRequest.addMetadata(httpURLConnection, cloudQueue.metadata, operationContext);
            }

            public void signRequest(HttpURLConnection httpURLConnection, CloudQueueClient cloudQueueClient, OperationContext operationContext) {
                StorageRequest.signBlobQueueAndFileRequest(httpURLConnection, cloudQueueClient, 0, operationContext);
            }
        };
    }

    private StorageRequest<CloudQueueClient, CloudQueue, Void> uploadPermissionsImpl(QueuePermissions queuePermissions, QueueRequestOptions queueRequestOptions) {
        StringWriter stringWriter = new StringWriter();
        try {
            SharedAccessPolicySerializer.writeSharedAccessIdentifiersToStream(queuePermissions.getSharedAccessPolicies(), stringWriter);
            final byte[] bytes = stringWriter.toString().getBytes("UTF-8");
            final QueueRequestOptions queueRequestOptions2 = queueRequestOptions;
            return new StorageRequest<CloudQueueClient, CloudQueue, Void>(queueRequestOptions, getStorageUri()) {
                public HttpURLConnection buildRequest(CloudQueueClient cloudQueueClient, CloudQueue cloudQueue, OperationContext operationContext) {
                    setSendStream(new ByteArrayInputStream(bytes));
                    setLength(Long.valueOf((long) bytes.length));
                    return QueueRequest.setAcl(cloudQueue.getTransformedAddress(operationContext).getUri(getCurrentLocation()), queueRequestOptions2, operationContext);
                }

                public Void preProcessResponse(CloudQueue cloudQueue, CloudQueueClient cloudQueueClient, OperationContext operationContext) {
                    if (getResult().getStatusCode() == 204) {
                        return null;
                    }
                    setNonExceptionedRetryableFailure(true);
                    return null;
                }

                public void signRequest(HttpURLConnection httpURLConnection, CloudQueueClient cloudQueueClient, OperationContext operationContext) {
                    StorageRequest.signBlobQueueAndFileRequest(httpURLConnection, cloudQueueClient, (long) bytes.length, operationContext);
                }
            };
        } catch (IllegalArgumentException e2) {
            throw StorageException.translateClientException(e2);
        } catch (XMLStreamException e3) {
            throw StorageException.translateClientException(e3);
        } catch (UnsupportedEncodingException e4) {
            throw StorageException.translateClientException(e4);
        }
    }

    @DoesServiceRequest
    public void addMessage(CloudQueueMessage cloudQueueMessage) {
        addMessage(cloudQueueMessage, 0, 0, (QueueRequestOptions) null, (OperationContext) null);
    }

    @DoesServiceRequest
    public void clear() {
        clear((QueueRequestOptions) null, (OperationContext) null);
    }

    @DoesServiceRequest
    public void create() {
        create((QueueRequestOptions) null, (OperationContext) null);
    }

    @DoesServiceRequest
    public boolean createIfNotExists() {
        return createIfNotExists((QueueRequestOptions) null, (OperationContext) null);
    }

    @DoesServiceRequest
    public void delete() {
        delete((QueueRequestOptions) null, (OperationContext) null);
    }

    @DoesServiceRequest
    public boolean deleteIfExists() {
        return deleteIfExists((QueueRequestOptions) null, (OperationContext) null);
    }

    @DoesServiceRequest
    public void deleteMessage(CloudQueueMessage cloudQueueMessage) {
        deleteMessage(cloudQueueMessage, (QueueRequestOptions) null, (OperationContext) null);
    }

    @DoesServiceRequest
    public void downloadAttributes() {
        downloadAttributes((QueueRequestOptions) null, (OperationContext) null);
    }

    @DoesServiceRequest
    public QueuePermissions downloadPermissions() {
        return downloadPermissions((QueueRequestOptions) null, (OperationContext) null);
    }

    @DoesServiceRequest
    public boolean exists() {
        return exists((QueueRequestOptions) null, (OperationContext) null);
    }

    public String generateSharedAccessSignature(SharedAccessQueuePolicy sharedAccessQueuePolicy, String str) {
        return generateSharedAccessSignature(sharedAccessQueuePolicy, str, (IPRange) null, (SharedAccessProtocols) null);
    }

    public long getApproximateMessageCount() {
        return this.approximateMessageCount;
    }

    public HashMap<String, String> getMetadata() {
        return this.metadata;
    }

    public String getName() {
        return this.name;
    }

    public CloudQueueClient getServiceClient() {
        return this.queueServiceClient;
    }

    public boolean getShouldEncodeMessage() {
        return this.shouldEncodeMessage;
    }

    public final StorageUri getStorageUri() {
        return this.storageUri;
    }

    public URI getUri() {
        return this.storageUri.getPrimaryUri();
    }

    @DoesServiceRequest
    public CloudQueueMessage peekMessage() {
        return peekMessage((QueueRequestOptions) null, (OperationContext) null);
    }

    @DoesServiceRequest
    public Iterable<CloudQueueMessage> peekMessages(int i2) {
        return peekMessages(i2, (QueueRequestOptions) null, (OperationContext) null);
    }

    @DoesServiceRequest
    public CloudQueueMessage retrieveMessage() {
        return retrieveMessage(30, (QueueRequestOptions) null, (OperationContext) null);
    }

    @DoesServiceRequest
    public Iterable<CloudQueueMessage> retrieveMessages(int i2) {
        return retrieveMessages(i2, 30, (QueueRequestOptions) null, (OperationContext) null);
    }

    public void setMetadata(HashMap<String, String> hashMap) {
        this.metadata = hashMap;
    }

    public void setShouldEncodeMessage(boolean z) {
        this.shouldEncodeMessage = z;
    }

    public void updateMessage(CloudQueueMessage cloudQueueMessage, int i2) {
        updateMessage(cloudQueueMessage, i2, EnumSet.of(MessageUpdateFields.VISIBILITY), (QueueRequestOptions) null, (OperationContext) null);
    }

    @DoesServiceRequest
    public void uploadMetadata() {
        uploadMetadata((QueueRequestOptions) null, (OperationContext) null);
    }

    @DoesServiceRequest
    public void uploadPermissions(QueuePermissions queuePermissions) {
        uploadPermissions(queuePermissions, (QueueRequestOptions) null, (OperationContext) null);
    }

    public CloudQueue(StorageUri storageUri2) {
        this(storageUri2, (StorageCredentials) null);
    }

    @DoesServiceRequest
    public void addMessage(CloudQueueMessage cloudQueueMessage, int i2, int i3, QueueRequestOptions queueRequestOptions, OperationContext operationContext) {
        int i4;
        Utility.assertNotNull("message", cloudQueueMessage);
        Utility.assertNotNull("messageContent", cloudQueueMessage.getMessageContentAsByte());
        if (i2 == -1 || i2 >= 0) {
            int i5 = QueueConstants.MAX_VISIBILITY_TIMEOUT_IN_SECONDS;
            if (i2 == 0) {
                i2 = QueueConstants.MAX_VISIBILITY_TIMEOUT_IN_SECONDS;
            }
            if (i2 >= 0 && i2 - 1 <= 604800) {
                i5 = i4;
            }
            Utility.assertInBounds("initialVisibilityDelayInSeconds", (long) i3, 0, (long) i5);
            if (operationContext == null) {
                operationContext = new OperationContext();
            }
            operationContext.initialize();
            QueueRequestOptions populateAndApplyDefaults = QueueRequestOptions.populateAndApplyDefaults(queueRequestOptions, this.queueServiceClient);
            populateAndApplyDefaults.assertPolicyIfRequired();
            ExecutionEngine.executeWithRetry(this.queueServiceClient, this, addMessageImpl(cloudQueueMessage, i2, i3, populateAndApplyDefaults), populateAndApplyDefaults.getRetryPolicyFactory(), operationContext);
            return;
        }
        throw new IllegalArgumentException(String.format(SR.ARGUMENT_OUT_OF_RANGE_ERROR, new Object[]{"timeToLiveInSeconds", Integer.valueOf(i2)}));
    }

    @DoesServiceRequest
    public void clear(QueueRequestOptions queueRequestOptions, OperationContext operationContext) {
        if (operationContext == null) {
            operationContext = new OperationContext();
        }
        operationContext.initialize();
        QueueRequestOptions populateAndApplyDefaults = QueueRequestOptions.populateAndApplyDefaults(queueRequestOptions, this.queueServiceClient);
        ExecutionEngine.executeWithRetry(this.queueServiceClient, this, clearImpl(populateAndApplyDefaults), populateAndApplyDefaults.getRetryPolicyFactory(), operationContext);
    }

    @DoesServiceRequest
    public void create(QueueRequestOptions queueRequestOptions, OperationContext operationContext) {
        if (operationContext == null) {
            operationContext = new OperationContext();
        }
        operationContext.initialize();
        QueueRequestOptions populateAndApplyDefaults = QueueRequestOptions.populateAndApplyDefaults(queueRequestOptions, this.queueServiceClient);
        ExecutionEngine.executeWithRetry(this.queueServiceClient, this, createImpl(populateAndApplyDefaults), populateAndApplyDefaults.getRetryPolicyFactory(), operationContext);
    }

    @DoesServiceRequest
    public boolean createIfNotExists(QueueRequestOptions queueRequestOptions, OperationContext operationContext) {
        QueueRequestOptions populateAndApplyDefaults = QueueRequestOptions.populateAndApplyDefaults(queueRequestOptions, this.queueServiceClient);
        if (exists(true, populateAndApplyDefaults, operationContext)) {
            return false;
        }
        try {
            create(populateAndApplyDefaults, operationContext);
            return true;
        } catch (StorageException e2) {
            if (e2.getHttpStatusCode() == 409 && StorageErrorCodeStrings.QUEUE_ALREADY_EXISTS.equals(e2.getErrorCode())) {
                return false;
            }
            throw e2;
        }
    }

    @DoesServiceRequest
    public void delete(QueueRequestOptions queueRequestOptions, OperationContext operationContext) {
        if (operationContext == null) {
            operationContext = new OperationContext();
        }
        operationContext.initialize();
        QueueRequestOptions populateAndApplyDefaults = QueueRequestOptions.populateAndApplyDefaults(queueRequestOptions, this.queueServiceClient);
        ExecutionEngine.executeWithRetry(this.queueServiceClient, this, deleteImpl(populateAndApplyDefaults), populateAndApplyDefaults.getRetryPolicyFactory(), operationContext);
    }

    @DoesServiceRequest
    public boolean deleteIfExists(QueueRequestOptions queueRequestOptions, OperationContext operationContext) {
        QueueRequestOptions populateAndApplyDefaults = QueueRequestOptions.populateAndApplyDefaults(queueRequestOptions, this.queueServiceClient);
        if (!exists(true, populateAndApplyDefaults, operationContext)) {
            return false;
        }
        try {
            delete(populateAndApplyDefaults, operationContext);
            return true;
        } catch (StorageException e2) {
            if (e2.getHttpStatusCode() == 404 && StorageErrorCodeStrings.QUEUE_NOT_FOUND.equals(e2.getErrorCode())) {
                return false;
            }
            throw e2;
        }
    }

    @DoesServiceRequest
    public void deleteMessage(CloudQueueMessage cloudQueueMessage, QueueRequestOptions queueRequestOptions, OperationContext operationContext) {
        Utility.assertNotNull("message", cloudQueueMessage);
        Utility.assertNotNullOrEmpty("messageId", cloudQueueMessage.getId());
        Utility.assertNotNullOrEmpty("popReceipt", cloudQueueMessage.getPopReceipt());
        if (operationContext == null) {
            operationContext = new OperationContext();
        }
        operationContext.initialize();
        QueueRequestOptions populateAndApplyDefaults = QueueRequestOptions.populateAndApplyDefaults(queueRequestOptions, this.queueServiceClient);
        ExecutionEngine.executeWithRetry(this.queueServiceClient, this, deleteMessageImpl(cloudQueueMessage, populateAndApplyDefaults), populateAndApplyDefaults.getRetryPolicyFactory(), operationContext);
    }

    @DoesServiceRequest
    public void downloadAttributes(QueueRequestOptions queueRequestOptions, OperationContext operationContext) {
        if (operationContext == null) {
            operationContext = new OperationContext();
        }
        operationContext.initialize();
        QueueRequestOptions populateAndApplyDefaults = QueueRequestOptions.populateAndApplyDefaults(queueRequestOptions, this.queueServiceClient);
        ExecutionEngine.executeWithRetry(this.queueServiceClient, this, downloadAttributesImpl(populateAndApplyDefaults), populateAndApplyDefaults.getRetryPolicyFactory(), operationContext);
    }

    @DoesServiceRequest
    public QueuePermissions downloadPermissions(QueueRequestOptions queueRequestOptions, OperationContext operationContext) {
        if (operationContext == null) {
            operationContext = new OperationContext();
        }
        operationContext.initialize();
        QueueRequestOptions populateAndApplyDefaults = QueueRequestOptions.populateAndApplyDefaults(queueRequestOptions, this.queueServiceClient);
        return (QueuePermissions) ExecutionEngine.executeWithRetry(this.queueServiceClient, this, downloadPermissionsImpl(populateAndApplyDefaults), populateAndApplyDefaults.getRetryPolicyFactory(), operationContext);
    }

    @DoesServiceRequest
    public boolean exists(QueueRequestOptions queueRequestOptions, OperationContext operationContext) {
        return exists(false, queueRequestOptions, operationContext);
    }

    public String generateSharedAccessSignature(SharedAccessQueuePolicy sharedAccessQueuePolicy, String str, IPRange iPRange, SharedAccessProtocols sharedAccessProtocols) {
        if (StorageCredentialsHelper.canCredentialsSignRequest(this.queueServiceClient.getCredentials())) {
            return SharedAccessSignatureHelper.generateSharedAccessSignatureForQueue(sharedAccessQueuePolicy, str, iPRange, sharedAccessProtocols, SharedAccessSignatureHelper.generateSharedAccessSignatureHashForQueue(sharedAccessQueuePolicy, str, getSharedAccessCanonicalName(), iPRange, sharedAccessProtocols, this.queueServiceClient)).toString();
        }
        throw new IllegalArgumentException(SR.CANNOT_CREATE_SAS_WITHOUT_ACCOUNT_KEY);
    }

    @DoesServiceRequest
    public CloudQueueMessage peekMessage(QueueRequestOptions queueRequestOptions, OperationContext operationContext) {
        return getFirstOrNull(peekMessages(1, (QueueRequestOptions) null, (OperationContext) null));
    }

    @DoesServiceRequest
    public Iterable<CloudQueueMessage> peekMessages(int i2, QueueRequestOptions queueRequestOptions, OperationContext operationContext) {
        Utility.assertInBounds("numberOfMessages", (long) i2, 1, 32);
        if (operationContext == null) {
            operationContext = new OperationContext();
        }
        operationContext.initialize();
        QueueRequestOptions populateAndApplyDefaults = QueueRequestOptions.populateAndApplyDefaults(queueRequestOptions, this.queueServiceClient);
        populateAndApplyDefaults.assertPolicyIfRequired();
        return (Iterable) ExecutionEngine.executeWithRetry(this.queueServiceClient, this, peekMessagesImpl(i2, populateAndApplyDefaults), populateAndApplyDefaults.getRetryPolicyFactory(), operationContext);
    }

    @DoesServiceRequest
    public CloudQueueMessage retrieveMessage(int i2, QueueRequestOptions queueRequestOptions, OperationContext operationContext) {
        return getFirstOrNull(retrieveMessages(1, i2, queueRequestOptions, operationContext));
    }

    @DoesServiceRequest
    public Iterable<CloudQueueMessage> retrieveMessages(int i2, int i3, QueueRequestOptions queueRequestOptions, OperationContext operationContext) {
        int i4 = i2;
        int i5 = i3;
        Utility.assertInBounds("numberOfMessages", (long) i4, 1, 32);
        Utility.assertInBounds("visibilityTimeoutInSeconds", (long) i5, 0, 604800);
        OperationContext operationContext2 = operationContext == null ? new OperationContext() : operationContext;
        operationContext2.initialize();
        QueueRequestOptions populateAndApplyDefaults = QueueRequestOptions.populateAndApplyDefaults(queueRequestOptions, this.queueServiceClient);
        populateAndApplyDefaults.assertPolicyIfRequired();
        return (Iterable) ExecutionEngine.executeWithRetry(this.queueServiceClient, this, retrieveMessagesImpl(i4, i5, populateAndApplyDefaults), populateAndApplyDefaults.getRetryPolicyFactory(), operationContext2);
    }

    @DoesServiceRequest
    public void updateMessage(CloudQueueMessage cloudQueueMessage, int i2, EnumSet<MessageUpdateFields> enumSet, QueueRequestOptions queueRequestOptions, OperationContext operationContext) {
        Utility.assertNotNull("message", cloudQueueMessage);
        Utility.assertNotNullOrEmpty("messageId", cloudQueueMessage.getId());
        Utility.assertNotNullOrEmpty("popReceipt", cloudQueueMessage.getPopReceipt());
        Utility.assertInBounds("visibilityTimeoutInSeconds", (long) i2, 0, 604800);
        if (operationContext == null) {
            operationContext = new OperationContext();
        }
        operationContext.initialize();
        QueueRequestOptions populateAndApplyDefaults = QueueRequestOptions.populateAndApplyDefaults(queueRequestOptions, this.queueServiceClient);
        populateAndApplyDefaults.assertPolicyIfRequired();
        ExecutionEngine.executeWithRetry(this.queueServiceClient, this, updateMessageImpl(cloudQueueMessage, i2, enumSet, populateAndApplyDefaults), populateAndApplyDefaults.getRetryPolicyFactory(), operationContext);
    }

    @DoesServiceRequest
    public void uploadMetadata(QueueRequestOptions queueRequestOptions, OperationContext operationContext) {
        if (operationContext == null) {
            operationContext = new OperationContext();
        }
        operationContext.initialize();
        QueueRequestOptions populateAndApplyDefaults = QueueRequestOptions.populateAndApplyDefaults(queueRequestOptions, this.queueServiceClient);
        ExecutionEngine.executeWithRetry(this.queueServiceClient, this, uploadMetadataImpl(populateAndApplyDefaults), populateAndApplyDefaults.getRetryPolicyFactory(), operationContext);
    }

    @DoesServiceRequest
    public void uploadPermissions(QueuePermissions queuePermissions, QueueRequestOptions queueRequestOptions, OperationContext operationContext) {
        if (operationContext == null) {
            operationContext = new OperationContext();
        }
        operationContext.initialize();
        QueueRequestOptions populateAndApplyDefaults = QueueRequestOptions.populateAndApplyDefaults(queueRequestOptions, this.queueServiceClient);
        ExecutionEngine.executeWithRetry(this.queueServiceClient, this, uploadPermissionsImpl(queuePermissions, populateAndApplyDefaults), populateAndApplyDefaults.getRetryPolicyFactory(), operationContext);
    }

    public CloudQueue(URI uri, StorageCredentials storageCredentials) {
        this(new StorageUri(uri), storageCredentials);
    }

    @DoesServiceRequest
    private boolean exists(boolean z, QueueRequestOptions queueRequestOptions, OperationContext operationContext) {
        if (operationContext == null) {
            operationContext = new OperationContext();
        }
        operationContext.initialize();
        QueueRequestOptions populateAndApplyDefaults = QueueRequestOptions.populateAndApplyDefaults(queueRequestOptions, this.queueServiceClient);
        return ((Boolean) ExecutionEngine.executeWithRetry(this.queueServiceClient, this, existsImpl(z, populateAndApplyDefaults), populateAndApplyDefaults.getRetryPolicyFactory(), operationContext)).booleanValue();
    }

    public CloudQueue(StorageUri storageUri2, StorageCredentials storageCredentials) {
        this.shouldEncodeMessage = true;
        parseQueryAndVerify(storageUri2, storageCredentials);
    }

    public CloudQueue(String str, CloudQueueClient cloudQueueClient) {
        Utility.assertNotNull("client", cloudQueueClient);
        Utility.assertNotNull("queueName", str);
        this.storageUri = PathUtility.appendPathToUri(cloudQueueClient.getStorageUri(), str);
        this.name = str;
        this.queueServiceClient = cloudQueueClient;
        this.shouldEncodeMessage = true;
    }
}
