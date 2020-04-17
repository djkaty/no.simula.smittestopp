package com.microsoft.azure.sdk.iot.device.fileupload;

import com.microsoft.azure.sdk.iot.device.DeviceClientConfig;
import com.microsoft.azure.sdk.iot.device.IotHubEventCallback;
import com.microsoft.azure.sdk.iot.device.IotHubStatusCode;
import com.microsoft.azure.sdk.iot.device.transport.https.HttpsTransportManager;
import java.io.IOException;
import java.io.InputStream;
import java.util.Queue;
import java.util.concurrent.Executors;
import java.util.concurrent.LinkedBlockingDeque;
import java.util.concurrent.ScheduledExecutorService;
import k.f.b;
import k.f.c;

public final class FileUpload {
    public static final int MAX_UPLOAD_PARALLEL = 10;
    public static Queue<FileUploadInProgress> fileUploadInProgressesSet;
    public static final b log = c.a((Class<?>) FileUpload.class);
    public FileUploadStatusCallBack fileUploadStatusCallBack;
    public HttpsTransportManager httpsTransportManager;
    public ScheduledExecutorService taskScheduler;

    public final class FileUploadStatusCallBack implements IotHubEventCallback {
        public FileUploadStatusCallBack() {
        }

        public synchronized void execute(IotHubStatusCode iotHubStatusCode, Object obj) {
            if (obj instanceof FileUploadInProgress) {
                ((FileUploadInProgress) obj).triggerCallback(iotHubStatusCode);
                try {
                    FileUpload.fileUploadInProgressesSet.remove(obj);
                } catch (ClassCastException | NullPointerException | UnsupportedOperationException e2) {
                    FileUpload.log.e("FileUploadStatusCallBack received callback for unknown FileUpload", e2);
                }
            } else {
                FileUpload.log.a("FileUploadStatusCallBack received callback for unknown FileUpload");
            }
        }
    }

    public FileUpload(DeviceClientConfig deviceClientConfig) {
        if (deviceClientConfig != null) {
            this.httpsTransportManager = new HttpsTransportManager(deviceClientConfig);
            try {
                this.taskScheduler = Executors.newScheduledThreadPool(10);
                fileUploadInProgressesSet = new LinkedBlockingDeque();
                this.fileUploadStatusCallBack = new FileUploadStatusCallBack();
                log.c("FileUpload object is created successfully");
            } catch (IllegalArgumentException | NullPointerException e2) {
                throw new IOException("Cannot create a pool of threads to manager uploads: " + e2);
            }
        } else {
            throw new IllegalArgumentException("config is null");
        }
    }

    public void closeNow() {
        this.taskScheduler.shutdownNow();
        for (FileUploadInProgress fileUploadInProgress : fileUploadInProgressesSet) {
            if (fileUploadInProgress.isCancelled()) {
                fileUploadInProgress.triggerCallback(IotHubStatusCode.ERROR);
            }
        }
    }

    public synchronized void uploadToBlobAsync(String str, InputStream inputStream, long j2, IotHubEventCallback iotHubEventCallback, Object obj) {
        IotHubEventCallback iotHubEventCallback2 = iotHubEventCallback;
        synchronized (this) {
            if (str != null) {
                if (!str.isEmpty()) {
                    if (inputStream == null) {
                        throw new IllegalArgumentException("inputStream is null");
                    } else if (j2 < 0) {
                        throw new IllegalArgumentException("streamLength is negative");
                    } else if (iotHubEventCallback2 != null) {
                        FileUploadInProgress fileUploadInProgress = new FileUploadInProgress(iotHubEventCallback2, obj);
                        fileUploadInProgressesSet.add(fileUploadInProgress);
                        fileUploadInProgress.setTask(this.taskScheduler.submit(new FileUploadTask(str, inputStream, j2, this.httpsTransportManager, this.fileUploadStatusCallBack, fileUploadInProgress)));
                    } else {
                        throw new IllegalArgumentException("statusCallback is null");
                    }
                }
            }
            throw new IllegalArgumentException("blobName is null or empty");
        }
    }
}
