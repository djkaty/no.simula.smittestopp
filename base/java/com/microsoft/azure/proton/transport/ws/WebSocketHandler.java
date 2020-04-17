package com.microsoft.azure.proton.transport.ws;

import java.nio.ByteBuffer;
import java.util.Map;

public interface WebSocketHandler {

    public enum WebSocketMessageType {
        WEB_SOCKET_MESSAGE_TYPE_UNKNOWN,
        WEB_SOCKET_MESSAGE_TYPE_CHUNK,
        WEB_SOCKET_MESSAGE_TYPE_HEADER_CHUNK,
        WEB_SOCKET_MESSAGE_TYPE_AMQP,
        WEB_SOCKET_MESSAGE_TYPE_PING,
        WEB_SOCKET_MESSAGE_TYPE_CLOSE
    }

    public static class WebsocketTuple {
        public long length;
        public WebSocketMessageType type;

        public WebsocketTuple(long j2, WebSocketMessageType webSocketMessageType) {
            this.length = j2;
            this.type = webSocketMessageType;
        }

        public long getLength() {
            return this.length;
        }

        public WebSocketMessageType getType() {
            return this.type;
        }

        public void setLength(long j2) {
            this.length = j2;
        }

        public void setType(WebSocketMessageType webSocketMessageType) {
            this.type = webSocketMessageType;
        }
    }

    int calculateHeaderSize(int i2);

    void createPong(ByteBuffer byteBuffer, ByteBuffer byteBuffer2);

    String createUpgradeRequest(String str, String str2, String str3, int i2, String str4, Map<String, String> map);

    WebsocketTuple unwrapBuffer(ByteBuffer byteBuffer);

    Boolean validateUpgradeReply(ByteBuffer byteBuffer);

    void wrapBuffer(ByteBuffer byteBuffer, ByteBuffer byteBuffer2);
}
