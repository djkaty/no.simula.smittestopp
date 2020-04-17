package com.microsoft.azure.storage.queue;

import com.microsoft.azure.storage.core.BaseResponse;
import java.net.HttpURLConnection;

public final class QueueResponse extends BaseResponse {
    public static long getApproximateMessageCount(HttpURLConnection httpURLConnection) {
        return Long.parseLong(httpURLConnection.getHeaderField(QueueConstants.APPROXIMATE_MESSAGES_COUNT));
    }
}
