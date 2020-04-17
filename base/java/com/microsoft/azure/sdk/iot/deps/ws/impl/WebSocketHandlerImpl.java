package com.microsoft.azure.sdk.iot.deps.ws.impl;

import com.microsoft.azure.sdk.iot.deps.ws.WebSocketHandler;
import java.io.ByteArrayOutputStream;
import java.nio.BufferUnderflowException;
import java.nio.ByteBuffer;
import java.security.SecureRandom;
import java.util.Map;

public class WebSocketHandlerImpl implements WebSocketHandler {
    public WebSocketUpgrade _webSocketUpgrade = null;

    public int calculateHeaderSize(int i2) {
        if (i2 <= 0) {
            return 0;
        }
        if (i2 <= 125) {
            return 6;
        }
        return i2 <= 65535 ? 8 : 14;
    }

    public void createPong(ByteBuffer byteBuffer, ByteBuffer byteBuffer2) {
        if (byteBuffer == null || byteBuffer2 == null) {
            throw new IllegalArgumentException("input parameter cannot be null");
        } else if (byteBuffer.capacity() > byteBuffer2.capacity()) {
            throw new IllegalArgumentException("insufficient output buffer size");
        } else if (byteBuffer.remaining() > 0) {
            byte[] array = byteBuffer.array();
            array[0] = -118;
            byteBuffer2.clear();
            byteBuffer2.put(array);
        } else {
            byteBuffer2.clear();
            byteBuffer2.limit(0);
        }
    }

    public byte[] createRandomMaskingKey() {
        byte[] bArr = new byte[4];
        new SecureRandom().nextBytes(bArr);
        return bArr;
    }

    public String createUpgradeRequest(String str, String str2, int i2, String str3, Map<String, String> map) {
        WebSocketUpgrade createWebSocketUpgrade = createWebSocketUpgrade(str, str2, i2, str3, map);
        this._webSocketUpgrade = createWebSocketUpgrade;
        return createWebSocketUpgrade.createUpgradeRequest();
    }

    public WebSocketUpgrade createWebSocketUpgrade(String str, String str2, int i2, String str3, Map<String, String> map) {
        return new WebSocketUpgrade(str, str2, i2, str3, map);
    }

    public WebSocketHandler.WebsocketTuple unwrapBuffer(ByteBuffer byteBuffer) {
        WebSocketHandler.WebsocketTuple websocketTuple = new WebSocketHandler.WebsocketTuple(0, WebSocketHandler.WebSocketMessageType.WEB_SOCKET_MESSAGE_TYPE_UNKNOWN);
        if (byteBuffer != null) {
            WebSocketHandler.WebSocketMessageType webSocketMessageType = WebSocketHandler.WebSocketMessageType.WEB_SOCKET_MESSAGE_TYPE_UNKNOWN;
            if (byteBuffer.remaining() > 2) {
                byte b = (byte) (byteBuffer.get() & 15);
                byte b2 = (byte) (byteBuffer.get() & Byte.MAX_VALUE);
                long j2 = -1;
                if (b2 <= 125) {
                    j2 = (long) b2;
                } else if (b2 == 126) {
                    try {
                        j2 = (long) (byteBuffer.getShort() & 65535);
                    } catch (BufferUnderflowException unused) {
                        webSocketMessageType = WebSocketHandler.WebSocketMessageType.WEB_SOCKET_MESSAGE_TYPE_HEADER_CHUNK;
                    }
                } else if (b2 == Byte.MAX_VALUE) {
                    try {
                        j2 = byteBuffer.getLong();
                    } catch (BufferUnderflowException unused2) {
                        webSocketMessageType = WebSocketHandler.WebSocketMessageType.WEB_SOCKET_MESSAGE_TYPE_HEADER_CHUNK;
                    }
                }
                WebSocketHandler.WebSocketMessageType webSocketMessageType2 = WebSocketHandler.WebSocketMessageType.WEB_SOCKET_MESSAGE_TYPE_UNKNOWN;
                if (webSocketMessageType == webSocketMessageType2) {
                    if (b == 2) {
                        webSocketMessageType = WebSocketHandler.WebSocketMessageType.WEB_SOCKET_MESSAGE_TYPE_AMQP;
                    } else if (b == 9) {
                        webSocketMessageType = WebSocketHandler.WebSocketMessageType.WEB_SOCKET_MESSAGE_TYPE_PING;
                    } else if (b == 8) {
                        webSocketMessageType = WebSocketHandler.WebSocketMessageType.WEB_SOCKET_MESSAGE_TYPE_CLOSE;
                    } else {
                        webSocketMessageType = b == 0 ? WebSocketHandler.WebSocketMessageType.WEB_SOCKET_MESSAGE_TYPE_CHUNK : webSocketMessageType2;
                    }
                }
                websocketTuple.setLength(j2);
                websocketTuple.setType(webSocketMessageType);
            }
            return websocketTuple;
        }
        throw new IllegalArgumentException("input parameter is null");
    }

    public Boolean validateUpgradeReply(ByteBuffer byteBuffer) {
        if (this._webSocketUpgrade == null || byteBuffer.remaining() <= 0) {
            return false;
        }
        byte[] bArr = new byte[byteBuffer.remaining()];
        byteBuffer.get(bArr);
        Boolean validateUpgradeReply = this._webSocketUpgrade.validateUpgradeReply(bArr);
        this._webSocketUpgrade = null;
        return validateUpgradeReply;
    }

    public void wrapBuffer(ByteBuffer byteBuffer, ByteBuffer byteBuffer2) {
        if (byteBuffer == null || byteBuffer2 == null) {
            throw new IllegalArgumentException("input parameter is null");
        } else if (byteBuffer.remaining() > 0) {
            byte[] createRandomMaskingKey = createRandomMaskingKey();
            int remaining = byteBuffer.remaining();
            ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream(remaining + 6);
            byteArrayOutputStream.write(-126);
            if (remaining <= 125) {
                byteArrayOutputStream.write((byte) (remaining | -128));
            } else if (remaining <= 65535) {
                byteArrayOutputStream.write((byte) -2);
                byteArrayOutputStream.write((byte) (remaining >>> 8));
                byteArrayOutputStream.write((byte) remaining);
            } else {
                byteArrayOutputStream.write((byte) -1);
                byteArrayOutputStream.write((byte) (remaining >>> 56));
                byteArrayOutputStream.write((byte) (remaining >>> 48));
                byteArrayOutputStream.write((byte) (remaining >>> 40));
                byteArrayOutputStream.write((byte) (remaining >>> 32));
                byteArrayOutputStream.write((byte) (remaining >>> 24));
                byteArrayOutputStream.write((byte) (remaining >>> 16));
                byteArrayOutputStream.write((byte) (remaining >>> 8));
                byteArrayOutputStream.write((byte) remaining);
            }
            byteArrayOutputStream.write(createRandomMaskingKey[0]);
            byteArrayOutputStream.write(createRandomMaskingKey[1]);
            byteArrayOutputStream.write(createRandomMaskingKey[2]);
            byteArrayOutputStream.write(createRandomMaskingKey[3]);
            for (int i2 = 0; i2 < remaining; i2++) {
                byteArrayOutputStream.write((byte) (byteBuffer.get() ^ createRandomMaskingKey[i2 % 4]));
            }
            byteBuffer2.clear();
            if (byteBuffer2.capacity() >= byteArrayOutputStream.size()) {
                byteBuffer2.put(byteArrayOutputStream.toByteArray());
                return;
            }
            throw new OutOfMemoryError("insufficient output buffer size");
        } else {
            byteBuffer2.clear();
        }
    }
}
