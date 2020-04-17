package com.microsoft.azure.sdk.iot.device.fileupload;

import com.microsoft.azure.sdk.iot.deps.serializer.FileUploadRequestParser;
import com.microsoft.azure.sdk.iot.deps.serializer.FileUploadResponseParser;
import com.microsoft.azure.sdk.iot.deps.serializer.FileUploadStatusParser;
import com.microsoft.azure.sdk.iot.device.IotHubEventCallback;
import com.microsoft.azure.sdk.iot.device.IotHubMethod;
import com.microsoft.azure.sdk.iot.device.IotHubStatusCode;
import com.microsoft.azure.sdk.iot.device.Message;
import com.microsoft.azure.sdk.iot.device.ObjectLock;
import com.microsoft.azure.sdk.iot.device.ResponseMessage;
import com.microsoft.azure.sdk.iot.device.transport.IotHubTransportMessage;
import com.microsoft.azure.sdk.iot.device.transport.https.HttpsTransportManager;
import e.c.c.k;
import java.io.IOException;
import java.io.InputStream;
import java.net.URI;
import java.net.URLEncoder;
import java.nio.charset.Charset;
import java.nio.charset.StandardCharsets;
import k.f.b;
import k.f.c;

public final class FileUploadTask implements Runnable {
    public static final Charset DEFAULT_IOTHUB_MESSAGE_CHARSET = StandardCharsets.UTF_8;
    public static final ObjectLock FILE_UPLOAD_LOCK = new ObjectLock();
    public static final String HTTPS_URL_STRING = "https://";
    public static final String PATH_SEPARATOR_STRING = "/";
    public static final String THREAD_NAME = "azure-iot-sdk-FileUploadTask";
    public static final String UTF_8_STRING = "UTF-8";
    public static final b log = c.a((Class<?>) FileUploadTask.class);
    public String blobName;
    public URI blobURI;
    public String correlationId;
    public HttpsTransportManager httpsTransportManager;
    public InputStream inputStream;
    public long streamLength;
    public IotHubEventCallback userCallback;
    public Object userCallbackContext;

    public FileUploadTask(String str, InputStream inputStream2, long j2, HttpsTransportManager httpsTransportManager2, IotHubEventCallback iotHubEventCallback, Object obj) {
        if (str == null || str.isEmpty()) {
            throw new IllegalArgumentException("blobName is null or empty");
        } else if (inputStream2 == null) {
            throw new IllegalArgumentException("inputStream is null or empty");
        } else if (j2 < 0) {
            throw new IllegalArgumentException("streamLength is negative");
        } else if (httpsTransportManager2 == null) {
            throw new IllegalArgumentException("httpsTransportManager is null");
        } else if (iotHubEventCallback != null) {
            this.blobName = str;
            this.inputStream = inputStream2;
            this.streamLength = j2;
            this.userCallback = iotHubEventCallback;
            this.userCallbackContext = obj;
            this.httpsTransportManager = httpsTransportManager2;
            log.e("HttpsFileUpload object is created successfully");
        } else {
            throw new IllegalArgumentException("statusCallback is null");
        }
    }

    private void addBlobInformation(Message message) {
        FileUploadResponseParser fileUploadResponseParser = new FileUploadResponseParser(new String(message.getBytes(), DEFAULT_IOTHUB_MESSAGE_CHARSET));
        this.correlationId = fileUploadResponseParser.getCorrelationId();
        this.blobName = fileUploadResponseParser.getBlobName();
        String hostName = fileUploadResponseParser.getHostName();
        String containerName = fileUploadResponseParser.getContainerName();
        String sasToken = fileUploadResponseParser.getSasToken();
        this.blobURI = new URI("https://" + hostName + "/" + containerName + "/" + URLEncoder.encode(this.blobName, "UTF-8") + sasToken);
    }

    private IotHubStatusCode getContainer() {
        ResponseMessage sendFileUploadMessage;
        IotHubTransportMessage iotHubTransportMessage = new IotHubTransportMessage(new FileUploadRequestParser(this.blobName).toJson());
        iotHubTransportMessage.setIotHubMethod(IotHubMethod.POST);
        synchronized (FILE_UPLOAD_LOCK) {
            this.httpsTransportManager.open();
            sendFileUploadMessage = this.httpsTransportManager.sendFileUploadMessage(iotHubTransportMessage);
            this.httpsTransportManager.close();
        }
        IotHubStatusCode status = sendFileUploadMessage.getStatus();
        if (status != IotHubStatusCode.OK) {
            return status == IotHubStatusCode.OK_EMPTY ? IotHubStatusCode.ERROR : status;
        }
        addBlobInformation(sendFileUploadMessage);
        return status;
    }

    private IotHubStatusCode sendNotification(FileUploadStatusParser fileUploadStatusParser) {
        ResponseMessage sendFileUploadNotification;
        try {
            IotHubTransportMessage iotHubTransportMessage = new IotHubTransportMessage(fileUploadStatusParser.toJson());
            iotHubTransportMessage.setIotHubMethod(IotHubMethod.POST);
            synchronized (FILE_UPLOAD_LOCK) {
                this.httpsTransportManager.open();
                sendFileUploadNotification = this.httpsTransportManager.sendFileUploadNotification(iotHubTransportMessage);
                this.httpsTransportManager.close();
            }
            return sendFileUploadNotification.getStatus();
        } catch (k | IOException | IllegalArgumentException e2) {
            log.e("File upload failed to report status to the iothub", e2);
            return IotHubStatusCode.ERROR;
        }
    }

    /* JADX WARNING: Code restructure failed: missing block: B:13:0x004e, code lost:
        if (r0 == com.microsoft.azure.sdk.iot.device.IotHubStatusCode.OK) goto L_0x008d;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:14:0x0051, code lost:
        r1 = r0;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:22:0x0082, code lost:
        if (r1 == com.microsoft.azure.sdk.iot.device.IotHubStatusCode.OK) goto L_0x0051;
     */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public void run() {
        /*
            r10 = this;
            java.lang.String r0 = "File upload failed to upload the stream to the blob"
            java.lang.Thread r1 = java.lang.Thread.currentThread()
            java.lang.String r2 = "azure-iot-sdk-FileUploadTask"
            r1.setName(r2)
            com.microsoft.azure.sdk.iot.device.IotHubStatusCode r1 = com.microsoft.azure.sdk.iot.device.IotHubStatusCode.OK
            com.microsoft.azure.sdk.iot.device.IotHubStatusCode r1 = r10.getContainer()     // Catch:{ IOException -> 0x0018, IllegalArgumentException -> 0x0016, URISyntaxException -> 0x0014, NullPointerException -> 0x0012 }
            goto L_0x0020
        L_0x0012:
            r1 = move-exception
            goto L_0x0019
        L_0x0014:
            r1 = move-exception
            goto L_0x0019
        L_0x0016:
            r1 = move-exception
            goto L_0x0019
        L_0x0018:
            r1 = move-exception
        L_0x0019:
            k.f.b r2 = log
            r2.e((java.lang.String) r0, (java.lang.Throwable) r1)
            com.microsoft.azure.sdk.iot.device.IotHubStatusCode r1 = com.microsoft.azure.sdk.iot.device.IotHubStatusCode.ERROR
        L_0x0020:
            com.microsoft.azure.sdk.iot.device.IotHubStatusCode r2 = com.microsoft.azure.sdk.iot.device.IotHubStatusCode.OK
            if (r1 != r2) goto L_0x008d
            r2 = 0
            r3 = 0
            com.microsoft.azure.storage.blob.CloudBlockBlob r4 = new com.microsoft.azure.storage.blob.CloudBlockBlob     // Catch:{ StorageException -> 0x005f, IOException -> 0x005d, IllegalArgumentException -> 0x005b, all -> 0x0059 }
            java.net.URI r5 = r10.blobURI     // Catch:{ StorageException -> 0x005f, IOException -> 0x005d, IllegalArgumentException -> 0x005b, all -> 0x0059 }
            r4.<init>((java.net.URI) r5)     // Catch:{ StorageException -> 0x005f, IOException -> 0x005d, IllegalArgumentException -> 0x005b, all -> 0x0059 }
            java.io.InputStream r5 = r10.inputStream     // Catch:{ StorageException -> 0x005f, IOException -> 0x005d, IllegalArgumentException -> 0x005b, all -> 0x0059 }
            long r6 = r10.streamLength     // Catch:{ StorageException -> 0x005f, IOException -> 0x005d, IllegalArgumentException -> 0x005b, all -> 0x0059 }
            r4.upload(r5, r6)     // Catch:{ StorageException -> 0x005f, IOException -> 0x005d, IllegalArgumentException -> 0x005b, all -> 0x0059 }
            com.microsoft.azure.sdk.iot.deps.serializer.FileUploadStatusParser r4 = new com.microsoft.azure.sdk.iot.deps.serializer.FileUploadStatusParser     // Catch:{ StorageException -> 0x005f, IOException -> 0x005d, IllegalArgumentException -> 0x005b, all -> 0x0059 }
            java.lang.String r5 = r10.correlationId     // Catch:{ StorageException -> 0x005f, IOException -> 0x005d, IllegalArgumentException -> 0x005b, all -> 0x0059 }
            r6 = 1
            java.lang.Boolean r6 = java.lang.Boolean.valueOf(r6)     // Catch:{ StorageException -> 0x005f, IOException -> 0x005d, IllegalArgumentException -> 0x005b, all -> 0x0059 }
            java.lang.Integer r7 = java.lang.Integer.valueOf(r2)     // Catch:{ StorageException -> 0x005f, IOException -> 0x005d, IllegalArgumentException -> 0x005b, all -> 0x0059 }
            java.lang.String r8 = "Succeed to upload to storage."
            r4.<init>(r5, r6, r7, r8)     // Catch:{ StorageException -> 0x005f, IOException -> 0x005d, IllegalArgumentException -> 0x005b, all -> 0x0059 }
            com.microsoft.azure.sdk.iot.device.IotHubStatusCode r0 = com.microsoft.azure.sdk.iot.device.IotHubStatusCode.OK     // Catch:{ StorageException -> 0x0057, IOException -> 0x0055, IllegalArgumentException -> 0x0053 }
            com.microsoft.azure.sdk.iot.device.IotHubStatusCode r1 = r10.sendNotification(r4)
            com.microsoft.azure.sdk.iot.device.IotHubStatusCode r2 = com.microsoft.azure.sdk.iot.device.IotHubStatusCode.OK
            if (r0 != r2) goto L_0x0051
            goto L_0x008d
        L_0x0051:
            r1 = r0
            goto L_0x008d
        L_0x0053:
            r3 = move-exception
            goto L_0x0063
        L_0x0055:
            r3 = move-exception
            goto L_0x0063
        L_0x0057:
            r3 = move-exception
            goto L_0x0063
        L_0x0059:
            r0 = move-exception
            goto L_0x0087
        L_0x005b:
            r4 = move-exception
            goto L_0x0060
        L_0x005d:
            r4 = move-exception
            goto L_0x0060
        L_0x005f:
            r4 = move-exception
        L_0x0060:
            r9 = r4
            r4 = r3
            r3 = r9
        L_0x0063:
            k.f.b r5 = log     // Catch:{ all -> 0x0085 }
            r5.e((java.lang.String) r0, (java.lang.Throwable) r3)     // Catch:{ all -> 0x0085 }
            com.microsoft.azure.sdk.iot.device.IotHubStatusCode r1 = com.microsoft.azure.sdk.iot.device.IotHubStatusCode.ERROR     // Catch:{ all -> 0x0085 }
            com.microsoft.azure.sdk.iot.deps.serializer.FileUploadStatusParser r0 = new com.microsoft.azure.sdk.iot.deps.serializer.FileUploadStatusParser     // Catch:{ all -> 0x0085 }
            java.lang.String r3 = r10.correlationId     // Catch:{ all -> 0x0085 }
            java.lang.Boolean r2 = java.lang.Boolean.valueOf(r2)     // Catch:{ all -> 0x0085 }
            r5 = -1
            java.lang.Integer r5 = java.lang.Integer.valueOf(r5)     // Catch:{ all -> 0x0085 }
            java.lang.String r6 = "Failed to upload to storage."
            r0.<init>(r3, r2, r5, r6)     // Catch:{ all -> 0x0085 }
            com.microsoft.azure.sdk.iot.device.IotHubStatusCode r0 = r10.sendNotification(r0)
            com.microsoft.azure.sdk.iot.device.IotHubStatusCode r2 = com.microsoft.azure.sdk.iot.device.IotHubStatusCode.OK
            if (r1 != r2) goto L_0x008d
            goto L_0x0051
        L_0x0085:
            r0 = move-exception
            r3 = r4
        L_0x0087:
            r10.sendNotification(r3)
            com.microsoft.azure.sdk.iot.device.IotHubStatusCode r2 = com.microsoft.azure.sdk.iot.device.IotHubStatusCode.OK
            throw r0
        L_0x008d:
            com.microsoft.azure.sdk.iot.device.IotHubEventCallback r0 = r10.userCallback
            java.lang.Object r2 = r10.userCallbackContext
            r0.execute(r1, r2)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.microsoft.azure.sdk.iot.device.fileupload.FileUploadTask.run():void");
    }
}
