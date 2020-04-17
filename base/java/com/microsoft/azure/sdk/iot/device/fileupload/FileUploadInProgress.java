package com.microsoft.azure.sdk.iot.device.fileupload;

import com.microsoft.azure.sdk.iot.device.IotHubEventCallback;
import com.microsoft.azure.sdk.iot.device.IotHubStatusCode;
import java.io.IOException;
import java.util.concurrent.Future;

public final class FileUploadInProgress {
    public IotHubEventCallback statusCallback;
    public Object statusCallbackContext;
    public Future task;

    public FileUploadInProgress(IotHubEventCallback iotHubEventCallback, Object obj) {
        if (iotHubEventCallback != null) {
            this.statusCallback = iotHubEventCallback;
            this.statusCallbackContext = obj;
            return;
        }
        throw new IllegalArgumentException("status callback is null");
    }

    public boolean isCancelled() {
        Future future = this.task;
        if (future != null) {
            return future.isCancelled();
        }
        throw new IOException("future task is null");
    }

    public void setTask(Future future) {
        if (future != null) {
            this.task = future;
            return;
        }
        throw new IllegalArgumentException("future task is null");
    }

    public void triggerCallback(IotHubStatusCode iotHubStatusCode) {
        this.statusCallback.execute(iotHubStatusCode, this.statusCallbackContext);
    }
}
