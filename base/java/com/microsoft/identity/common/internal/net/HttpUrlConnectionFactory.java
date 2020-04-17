package com.microsoft.identity.common.internal.net;

import java.net.HttpURLConnection;
import java.net.URL;
import java.util.LinkedList;
import java.util.Queue;

public final class HttpUrlConnectionFactory {
    public static Queue<HttpURLConnection> sMockedConnectionQueue = new LinkedList();

    public static void addMockedConnection(HttpURLConnection httpURLConnection) {
        sMockedConnectionQueue.add(httpURLConnection);
    }

    public static void clearMockedConnectionQueue() {
        sMockedConnectionQueue.clear();
    }

    public static HttpURLConnection createHttpURLConnection(URL url) {
        if (!sMockedConnectionQueue.isEmpty()) {
            return sMockedConnectionQueue.poll();
        }
        return (HttpURLConnection) url.openConnection();
    }

    public static int getMockedConnectionCountInQueue() {
        return sMockedConnectionQueue.size();
    }
}
