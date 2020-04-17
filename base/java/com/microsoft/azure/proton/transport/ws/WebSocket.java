package com.microsoft.azure.proton.transport.ws;

import com.microsoft.azure.proton.transport.ws.WebSocketHandler;
import java.nio.ByteBuffer;
import java.util.Map;

public interface WebSocket {

    public enum WebSocketFrameReadState {
        INIT_READ,
        CHUNK_READ,
        CONTINUED_FRAME_READ,
        HEADER_READ,
        READ_ERROR
    }

    public enum WebSocketState {
        PN_WS_NOT_STARTED,
        PN_WS_CONNECTING,
        PN_WS_CONNECTED_FLOW,
        PN_WS_CONNECTED_PONG,
        PN_WS_CONNECTED_CLOSING,
        PN_WS_CLOSED,
        PN_WS_FAILED
    }

    void configure(String str, String str2, String str3, int i2, String str4, Map<String, String> map, WebSocketHandler webSocketHandler);

    Boolean getEnabled();

    ByteBuffer getInputBuffer();

    ByteBuffer getOutputBuffer();

    ByteBuffer getPingBuffer();

    WebSocketState getState();

    WebSocketHandler getWebSocketHandler();

    ByteBuffer getWsInputBuffer();

    WebSocketHandler.WebsocketTuple unwrapBuffer(ByteBuffer byteBuffer);

    void wrapBuffer(ByteBuffer byteBuffer, ByteBuffer byteBuffer2);
}
