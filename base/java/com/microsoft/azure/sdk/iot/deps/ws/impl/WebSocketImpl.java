package com.microsoft.azure.sdk.iot.deps.ws.impl;

import com.microsoft.azure.sdk.iot.deps.ws.WebSocket;
import com.microsoft.azure.sdk.iot.deps.ws.WebSocketHandler;
import com.microsoft.identity.client.claims.WWWAuthenticateHeader;
import e.a.a.a.a;
import e.c.a.a.b.l.c;
import java.nio.ByteBuffer;
import java.util.Map;
import k.a.b.a.d.g0.b0;
import k.a.b.a.d.g0.d0;
import k.a.b.a.d.g0.f0;
import k.a.b.a.d.g0.l0;
import k.a.b.a.d.g0.o;

public class WebSocketImpl implements WebSocket, d0 {
    public Map<String, String> _additionalHeaders;
    public long _bytesRead;
    public int _dataStart;
    public WebSocket.WebSocketFrameReadState _frameReadState;
    public boolean _head_closed;
    public String _host;
    public final ByteBuffer _inputBuffer;
    public Boolean _isWebSocketEnabled;
    public long _lastLength;
    public WebSocketHandler.WebSocketMessageType _lastType;
    public int _maxFrameSize;
    public final ByteBuffer _outputBuffer;
    public String _path;
    public ByteBuffer _pingBuffer;
    public int _port;
    public String _protocol;
    public WebSocket.WebSocketState _state;
    public boolean _tail_closed;
    public ByteBuffer _temp;
    public int _underlyingOutputSize;
    public WebSocketHandler _webSocketHandler;
    public int _webSocketHeaderSize;
    public ByteBuffer _wsInputBuffer;

    /* renamed from: com.microsoft.azure.sdk.iot.deps.ws.impl.WebSocketImpl$2  reason: invalid class name */
    public static /* synthetic */ class AnonymousClass2 {
        public static final /* synthetic */ int[] $SwitchMap$com$microsoft$azure$sdk$iot$deps$ws$WebSocket$WebSocketFrameReadState;
        public static final /* synthetic */ int[] $SwitchMap$com$microsoft$azure$sdk$iot$deps$ws$WebSocket$WebSocketState;
        public static final /* synthetic */ int[] $SwitchMap$com$microsoft$azure$sdk$iot$deps$ws$WebSocketHandler$WebSocketMessageType;

        /* JADX WARNING: Can't wrap try/catch for region: R(39:0|(2:1|2)|3|(2:5|6)|7|(2:9|10)|11|13|14|15|17|18|19|20|21|22|23|25|26|27|28|29|30|31|32|33|34|35|37|38|39|40|41|42|43|44|45|46|48) */
        /* JADX WARNING: Can't wrap try/catch for region: R(40:0|(2:1|2)|3|(2:5|6)|7|9|10|11|13|14|15|17|18|19|20|21|22|23|25|26|27|28|29|30|31|32|33|34|35|37|38|39|40|41|42|43|44|45|46|48) */
        /* JADX WARNING: Can't wrap try/catch for region: R(41:0|(2:1|2)|3|5|6|7|9|10|11|13|14|15|17|18|19|20|21|22|23|25|26|27|28|29|30|31|32|33|34|35|37|38|39|40|41|42|43|44|45|46|48) */
        /* JADX WARNING: Can't wrap try/catch for region: R(42:0|1|2|3|5|6|7|9|10|11|13|14|15|17|18|19|20|21|22|23|25|26|27|28|29|30|31|32|33|34|35|37|38|39|40|41|42|43|44|45|46|48) */
        /* JADX WARNING: Failed to process nested try/catch */
        /* JADX WARNING: Missing exception handler attribute for start block: B:19:0x002b */
        /* JADX WARNING: Missing exception handler attribute for start block: B:21:0x0032 */
        /* JADX WARNING: Missing exception handler attribute for start block: B:27:0x0046 */
        /* JADX WARNING: Missing exception handler attribute for start block: B:29:0x004c */
        /* JADX WARNING: Missing exception handler attribute for start block: B:31:0x0052 */
        /* JADX WARNING: Missing exception handler attribute for start block: B:33:0x0058 */
        /* JADX WARNING: Missing exception handler attribute for start block: B:39:0x006b */
        /* JADX WARNING: Missing exception handler attribute for start block: B:41:0x0071 */
        /* JADX WARNING: Missing exception handler attribute for start block: B:43:0x0077 */
        /* JADX WARNING: Missing exception handler attribute for start block: B:45:0x007d */
        static {
            /*
                com.microsoft.azure.sdk.iot.deps.ws.WebSocket$WebSocketState[] r0 = com.microsoft.azure.sdk.iot.deps.ws.WebSocket.WebSocketState.values()
                int r0 = r0.length
                int[] r0 = new int[r0]
                $SwitchMap$com$microsoft$azure$sdk$iot$deps$ws$WebSocket$WebSocketState = r0
                r1 = 1
                com.microsoft.azure.sdk.iot.deps.ws.WebSocket$WebSocketState r2 = com.microsoft.azure.sdk.iot.deps.ws.WebSocket.WebSocketState.PN_WS_CONNECTING     // Catch:{ NoSuchFieldError -> 0x000e }
                r0[r1] = r1     // Catch:{ NoSuchFieldError -> 0x000e }
            L_0x000e:
                r0 = 2
                int[] r2 = $SwitchMap$com$microsoft$azure$sdk$iot$deps$ws$WebSocket$WebSocketState     // Catch:{ NoSuchFieldError -> 0x0015 }
                com.microsoft.azure.sdk.iot.deps.ws.WebSocket$WebSocketState r3 = com.microsoft.azure.sdk.iot.deps.ws.WebSocket.WebSocketState.PN_WS_CONNECTED_FLOW     // Catch:{ NoSuchFieldError -> 0x0015 }
                r2[r0] = r0     // Catch:{ NoSuchFieldError -> 0x0015 }
            L_0x0015:
                r2 = 3
                int[] r3 = $SwitchMap$com$microsoft$azure$sdk$iot$deps$ws$WebSocket$WebSocketState     // Catch:{ NoSuchFieldError -> 0x001c }
                com.microsoft.azure.sdk.iot.deps.ws.WebSocket$WebSocketState r4 = com.microsoft.azure.sdk.iot.deps.ws.WebSocket.WebSocketState.PN_WS_CONNECTED_PONG     // Catch:{ NoSuchFieldError -> 0x001c }
                r3[r2] = r2     // Catch:{ NoSuchFieldError -> 0x001c }
            L_0x001c:
                r3 = 0
                r4 = 4
                int[] r5 = $SwitchMap$com$microsoft$azure$sdk$iot$deps$ws$WebSocket$WebSocketState     // Catch:{ NoSuchFieldError -> 0x0024 }
                com.microsoft.azure.sdk.iot.deps.ws.WebSocket$WebSocketState r6 = com.microsoft.azure.sdk.iot.deps.ws.WebSocket.WebSocketState.PN_WS_NOT_STARTED     // Catch:{ NoSuchFieldError -> 0x0024 }
                r5[r3] = r4     // Catch:{ NoSuchFieldError -> 0x0024 }
            L_0x0024:
                r5 = 5
                int[] r6 = $SwitchMap$com$microsoft$azure$sdk$iot$deps$ws$WebSocket$WebSocketState     // Catch:{ NoSuchFieldError -> 0x002b }
                com.microsoft.azure.sdk.iot.deps.ws.WebSocket$WebSocketState r7 = com.microsoft.azure.sdk.iot.deps.ws.WebSocket.WebSocketState.PN_WS_CLOSED     // Catch:{ NoSuchFieldError -> 0x002b }
                r6[r5] = r5     // Catch:{ NoSuchFieldError -> 0x002b }
            L_0x002b:
                int[] r6 = $SwitchMap$com$microsoft$azure$sdk$iot$deps$ws$WebSocket$WebSocketState     // Catch:{ NoSuchFieldError -> 0x0032 }
                com.microsoft.azure.sdk.iot.deps.ws.WebSocket$WebSocketState r7 = com.microsoft.azure.sdk.iot.deps.ws.WebSocket.WebSocketState.PN_WS_FAILED     // Catch:{ NoSuchFieldError -> 0x0032 }
                r7 = 6
                r6[r7] = r7     // Catch:{ NoSuchFieldError -> 0x0032 }
            L_0x0032:
                int[] r6 = $SwitchMap$com$microsoft$azure$sdk$iot$deps$ws$WebSocket$WebSocketState     // Catch:{ NoSuchFieldError -> 0x0039 }
                com.microsoft.azure.sdk.iot.deps.ws.WebSocket$WebSocketState r7 = com.microsoft.azure.sdk.iot.deps.ws.WebSocket.WebSocketState.PN_WS_CONNECTED_CLOSING     // Catch:{ NoSuchFieldError -> 0x0039 }
                r7 = 7
                r6[r4] = r7     // Catch:{ NoSuchFieldError -> 0x0039 }
            L_0x0039:
                com.microsoft.azure.sdk.iot.deps.ws.WebSocket$WebSocketFrameReadState[] r6 = com.microsoft.azure.sdk.iot.deps.ws.WebSocket.WebSocketFrameReadState.values()
                int r6 = r6.length
                int[] r6 = new int[r6]
                $SwitchMap$com$microsoft$azure$sdk$iot$deps$ws$WebSocket$WebSocketFrameReadState = r6
                com.microsoft.azure.sdk.iot.deps.ws.WebSocket$WebSocketFrameReadState r7 = com.microsoft.azure.sdk.iot.deps.ws.WebSocket.WebSocketFrameReadState.INIT_READ     // Catch:{ NoSuchFieldError -> 0x0046 }
                r6[r3] = r1     // Catch:{ NoSuchFieldError -> 0x0046 }
            L_0x0046:
                int[] r6 = $SwitchMap$com$microsoft$azure$sdk$iot$deps$ws$WebSocket$WebSocketFrameReadState     // Catch:{ NoSuchFieldError -> 0x004c }
                com.microsoft.azure.sdk.iot.deps.ws.WebSocket$WebSocketFrameReadState r7 = com.microsoft.azure.sdk.iot.deps.ws.WebSocket.WebSocketFrameReadState.CHUNK_READ     // Catch:{ NoSuchFieldError -> 0x004c }
                r6[r1] = r0     // Catch:{ NoSuchFieldError -> 0x004c }
            L_0x004c:
                int[] r6 = $SwitchMap$com$microsoft$azure$sdk$iot$deps$ws$WebSocket$WebSocketFrameReadState     // Catch:{ NoSuchFieldError -> 0x0052 }
                com.microsoft.azure.sdk.iot.deps.ws.WebSocket$WebSocketFrameReadState r7 = com.microsoft.azure.sdk.iot.deps.ws.WebSocket.WebSocketFrameReadState.HEADER_READ     // Catch:{ NoSuchFieldError -> 0x0052 }
                r6[r2] = r2     // Catch:{ NoSuchFieldError -> 0x0052 }
            L_0x0052:
                int[] r6 = $SwitchMap$com$microsoft$azure$sdk$iot$deps$ws$WebSocket$WebSocketFrameReadState     // Catch:{ NoSuchFieldError -> 0x0058 }
                com.microsoft.azure.sdk.iot.deps.ws.WebSocket$WebSocketFrameReadState r7 = com.microsoft.azure.sdk.iot.deps.ws.WebSocket.WebSocketFrameReadState.CONTINUED_FRAME_READ     // Catch:{ NoSuchFieldError -> 0x0058 }
                r6[r0] = r4     // Catch:{ NoSuchFieldError -> 0x0058 }
            L_0x0058:
                int[] r6 = $SwitchMap$com$microsoft$azure$sdk$iot$deps$ws$WebSocket$WebSocketFrameReadState     // Catch:{ NoSuchFieldError -> 0x005e }
                com.microsoft.azure.sdk.iot.deps.ws.WebSocket$WebSocketFrameReadState r7 = com.microsoft.azure.sdk.iot.deps.ws.WebSocket.WebSocketFrameReadState.READ_ERROR     // Catch:{ NoSuchFieldError -> 0x005e }
                r6[r4] = r5     // Catch:{ NoSuchFieldError -> 0x005e }
            L_0x005e:
                com.microsoft.azure.sdk.iot.deps.ws.WebSocketHandler$WebSocketMessageType[] r6 = com.microsoft.azure.sdk.iot.deps.ws.WebSocketHandler.WebSocketMessageType.values()
                int r6 = r6.length
                int[] r6 = new int[r6]
                $SwitchMap$com$microsoft$azure$sdk$iot$deps$ws$WebSocketHandler$WebSocketMessageType = r6
                com.microsoft.azure.sdk.iot.deps.ws.WebSocketHandler$WebSocketMessageType r7 = com.microsoft.azure.sdk.iot.deps.ws.WebSocketHandler.WebSocketMessageType.WEB_SOCKET_MESSAGE_TYPE_UNKNOWN     // Catch:{ NoSuchFieldError -> 0x006b }
                r6[r3] = r1     // Catch:{ NoSuchFieldError -> 0x006b }
            L_0x006b:
                int[] r3 = $SwitchMap$com$microsoft$azure$sdk$iot$deps$ws$WebSocketHandler$WebSocketMessageType     // Catch:{ NoSuchFieldError -> 0x0071 }
                com.microsoft.azure.sdk.iot.deps.ws.WebSocketHandler$WebSocketMessageType r6 = com.microsoft.azure.sdk.iot.deps.ws.WebSocketHandler.WebSocketMessageType.WEB_SOCKET_MESSAGE_TYPE_CHUNK     // Catch:{ NoSuchFieldError -> 0x0071 }
                r3[r1] = r0     // Catch:{ NoSuchFieldError -> 0x0071 }
            L_0x0071:
                int[] r0 = $SwitchMap$com$microsoft$azure$sdk$iot$deps$ws$WebSocketHandler$WebSocketMessageType     // Catch:{ NoSuchFieldError -> 0x0077 }
                com.microsoft.azure.sdk.iot.deps.ws.WebSocketHandler$WebSocketMessageType r1 = com.microsoft.azure.sdk.iot.deps.ws.WebSocketHandler.WebSocketMessageType.WEB_SOCKET_MESSAGE_TYPE_AMQP     // Catch:{ NoSuchFieldError -> 0x0077 }
                r0[r2] = r2     // Catch:{ NoSuchFieldError -> 0x0077 }
            L_0x0077:
                int[] r0 = $SwitchMap$com$microsoft$azure$sdk$iot$deps$ws$WebSocketHandler$WebSocketMessageType     // Catch:{ NoSuchFieldError -> 0x007d }
                com.microsoft.azure.sdk.iot.deps.ws.WebSocketHandler$WebSocketMessageType r1 = com.microsoft.azure.sdk.iot.deps.ws.WebSocketHandler.WebSocketMessageType.WEB_SOCKET_MESSAGE_TYPE_CLOSE     // Catch:{ NoSuchFieldError -> 0x007d }
                r0[r5] = r4     // Catch:{ NoSuchFieldError -> 0x007d }
            L_0x007d:
                int[] r0 = $SwitchMap$com$microsoft$azure$sdk$iot$deps$ws$WebSocketHandler$WebSocketMessageType     // Catch:{ NoSuchFieldError -> 0x0083 }
                com.microsoft.azure.sdk.iot.deps.ws.WebSocketHandler$WebSocketMessageType r1 = com.microsoft.azure.sdk.iot.deps.ws.WebSocketHandler.WebSocketMessageType.WEB_SOCKET_MESSAGE_TYPE_PING     // Catch:{ NoSuchFieldError -> 0x0083 }
                r0[r4] = r5     // Catch:{ NoSuchFieldError -> 0x0083 }
            L_0x0083:
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: com.microsoft.azure.sdk.iot.deps.ws.impl.WebSocketImpl.AnonymousClass2.<clinit>():void");
        }
    }

    public class WebSocketTransportWrapper implements l0 {
        public final char[] HEX_DIGITS;
        public final ByteBuffer _head;
        public final b0 _underlyingInput;
        public final f0 _underlyingOutput;

        private String convertToBinary(byte[] bArr) {
            StringBuilder sb = new StringBuilder();
            int length = bArr.length;
            for (int i2 = 0; i2 < length; i2++) {
                sb.append(String.format("%8s", new Object[]{Integer.toBinaryString(bArr[i2] & 255)}).replace(WWWAuthenticateHeader.SPACE, '0'));
                sb.append('|');
            }
            return sb.toString();
        }

        private String convertToHex(byte[] bArr) {
            int length = bArr.length;
            char[] cArr = new char[(length * 5)];
            int i2 = 0;
            int i3 = 0;
            while (i2 < length) {
                int i4 = i3 + 1;
                cArr[i3] = '0';
                int i5 = i4 + 1;
                cArr[i4] = 'x';
                int i6 = i5 + 1;
                char[] cArr2 = this.HEX_DIGITS;
                cArr[i5] = cArr2[(bArr[i2] & 240) >>> 4];
                int i7 = i6 + 1;
                cArr[i6] = cArr2[bArr[i2] & 15];
                cArr[i7] = '|';
                i2++;
                i3 = i7 + 1;
            }
            return new String(cArr);
        }

        private void processInput() {
            int ordinal = WebSocketImpl.this._state.ordinal();
            if (ordinal == 1) {
                if (WebSocketImpl.this._webSocketHandler.validateUpgradeReply(WebSocketImpl.this._inputBuffer).booleanValue()) {
                    WebSocket.WebSocketState unused = WebSocketImpl.this._state = WebSocket.WebSocketState.PN_WS_CONNECTED_FLOW;
                }
                WebSocketImpl.this._inputBuffer.compact();
            } else if (ordinal == 2 || ordinal == 3) {
                if (WebSocketImpl.this._inputBuffer.remaining() > 0) {
                    loop0:
                    while (true) {
                        boolean z = false;
                        while (!z) {
                            int ordinal2 = WebSocketImpl.this._frameReadState.ordinal();
                            if (ordinal2 == 0) {
                                long unused2 = WebSocketImpl.this._bytesRead = 0;
                                readInputBuffer();
                                WebSocketImpl webSocketImpl = WebSocketImpl.this;
                                WebSocket.WebSocketFrameReadState unused3 = webSocketImpl._frameReadState = webSocketImpl._temp.position() < 2 ? WebSocket.WebSocketFrameReadState.CHUNK_READ : WebSocket.WebSocketFrameReadState.HEADER_READ;
                                if (WebSocketImpl.this._frameReadState != WebSocket.WebSocketFrameReadState.CHUNK_READ) {
                                }
                            } else if (ordinal2 == 1) {
                                readInputBuffer();
                                WebSocketImpl webSocketImpl2 = WebSocketImpl.this;
                                WebSocket.WebSocketFrameReadState unused4 = webSocketImpl2._frameReadState = webSocketImpl2._temp.position() < 2 ? WebSocketImpl.this._frameReadState : WebSocket.WebSocketFrameReadState.HEADER_READ;
                                if (WebSocketImpl.this._frameReadState != WebSocket.WebSocketFrameReadState.CHUNK_READ) {
                                }
                            } else if (ordinal2 == 2) {
                                readInputBuffer();
                                WebSocketImpl.this._temp.flip();
                                if (((long) WebSocketImpl.this._temp.remaining()) >= WebSocketImpl.this._lastLength - WebSocketImpl.this._bytesRead) {
                                    byte[] bArr = new byte[((int) (WebSocketImpl.this._lastLength - WebSocketImpl.this._bytesRead))];
                                    WebSocketImpl.this._temp.get(bArr, 0, (int) (WebSocketImpl.this._lastLength - WebSocketImpl.this._bytesRead));
                                    WebSocketImpl.this._wsInputBuffer.put(bArr);
                                    WebSocketImpl webSocketImpl3 = WebSocketImpl.this;
                                    long unused5 = webSocketImpl3._bytesRead = (WebSocketImpl.this._lastLength - WebSocketImpl.this._bytesRead) + webSocketImpl3._bytesRead;
                                } else {
                                    int remaining = WebSocketImpl.this._temp.remaining();
                                    byte[] bArr2 = new byte[remaining];
                                    WebSocketImpl.this._temp.get(bArr2);
                                    WebSocketImpl.this._wsInputBuffer.put(bArr2);
                                    WebSocketImpl webSocketImpl4 = WebSocketImpl.this;
                                    long unused6 = webSocketImpl4._bytesRead = webSocketImpl4._bytesRead + ((long) remaining);
                                }
                                sendToUnderlyingInput();
                                WebSocketImpl webSocketImpl5 = WebSocketImpl.this;
                                WebSocket.WebSocketFrameReadState unused7 = webSocketImpl5._frameReadState = webSocketImpl5._bytesRead == WebSocketImpl.this._lastLength ? WebSocket.WebSocketFrameReadState.INIT_READ : WebSocket.WebSocketFrameReadState.CONTINUED_FRAME_READ;
                                z = WebSocketImpl.this._temp.remaining() == 0;
                                WebSocketImpl.this._temp.compact();
                            } else if (ordinal2 == 3) {
                                readInputBuffer();
                                WebSocketImpl.this._temp.flip();
                                WebSocketImpl webSocketImpl6 = WebSocketImpl.this;
                                WebSocketHandler.WebsocketTuple unwrapBuffer = webSocketImpl6.unwrapBuffer(webSocketImpl6._temp);
                                WebSocketHandler.WebSocketMessageType unused8 = WebSocketImpl.this._lastType = unwrapBuffer.getType();
                                long unused9 = WebSocketImpl.this._lastLength = unwrapBuffer.getLength();
                                WebSocketImpl webSocketImpl7 = WebSocketImpl.this;
                                WebSocket.WebSocketFrameReadState unused10 = webSocketImpl7._frameReadState = webSocketImpl7._lastType == WebSocketHandler.WebSocketMessageType.WEB_SOCKET_MESSAGE_TYPE_HEADER_CHUNK ? WebSocket.WebSocketFrameReadState.CHUNK_READ : WebSocket.WebSocketFrameReadState.CONTINUED_FRAME_READ;
                                z = WebSocketImpl.this._frameReadState == WebSocket.WebSocketFrameReadState.CHUNK_READ || WebSocketImpl.this._temp.position() == WebSocketImpl.this._temp.limit();
                                if (WebSocketImpl.this._frameReadState == WebSocket.WebSocketFrameReadState.CONTINUED_FRAME_READ) {
                                    WebSocketImpl.this._temp.compact();
                                } else {
                                    WebSocketImpl.this._temp.position(WebSocketImpl.this._temp.limit());
                                    WebSocketImpl.this._temp.limit(WebSocketImpl.this._temp.capacity());
                                }
                            }
                            z = true;
                        }
                        break loop0;
                    }
                }
                WebSocketImpl.this._inputBuffer.compact();
            }
        }

        private void readInputBuffer() {
            c.a(WebSocketImpl.this._inputBuffer, WebSocketImpl.this._temp);
        }

        private boolean sendToUnderlyingInput() {
            int ordinal = WebSocketImpl.this._lastType.ordinal();
            boolean z = true;
            if (ordinal == 0) {
                WebSocketImpl.this._wsInputBuffer.position(WebSocketImpl.this._wsInputBuffer.limit());
                WebSocketImpl.this._wsInputBuffer.limit(WebSocketImpl.this._wsInputBuffer.capacity());
            } else if (ordinal != 1) {
                if (ordinal == 3) {
                    WebSocketImpl.this._wsInputBuffer.flip();
                    if (c.a(WebSocketImpl.this._wsInputBuffer, this._underlyingInput) == -1) {
                        boolean unused = WebSocketImpl.this._tail_closed = true;
                    }
                    WebSocketImpl.this._wsInputBuffer.compact();
                    WebSocketImpl.this._wsInputBuffer.flip();
                } else if (ordinal == 4) {
                    WebSocketImpl.this._wsInputBuffer.flip();
                    WebSocketImpl.this._pingBuffer.put(WebSocketImpl.this._wsInputBuffer);
                    WebSocket.WebSocketState unused2 = WebSocketImpl.this._state = WebSocket.WebSocketState.PN_WS_CONNECTED_PONG;
                    WebSocketImpl.this._wsInputBuffer.compact();
                    WebSocketImpl.this._wsInputBuffer.flip();
                } else if (ordinal == 5) {
                    WebSocketImpl.this._wsInputBuffer.flip();
                    WebSocketImpl.this._pingBuffer.put(WebSocketImpl.this._wsInputBuffer);
                    WebSocket.WebSocketState unused3 = WebSocketImpl.this._state = WebSocket.WebSocketState.PN_WS_CONNECTED_CLOSING;
                    WebSocketImpl.this._wsInputBuffer.compact();
                    WebSocketImpl.this._wsInputBuffer.flip();
                }
                WebSocketImpl.this._wsInputBuffer.position(WebSocketImpl.this._wsInputBuffer.limit());
                WebSocketImpl.this._wsInputBuffer.limit(WebSocketImpl.this._wsInputBuffer.capacity());
                return z;
            } else {
                WebSocketImpl.this._wsInputBuffer.position(WebSocketImpl.this._wsInputBuffer.limit());
                WebSocketImpl.this._wsInputBuffer.limit(WebSocketImpl.this._wsInputBuffer.capacity());
            }
            z = false;
            WebSocketImpl.this._wsInputBuffer.position(WebSocketImpl.this._wsInputBuffer.limit());
            WebSocketImpl.this._wsInputBuffer.limit(WebSocketImpl.this._wsInputBuffer.capacity());
            return z;
        }

        public int capacity() {
            if (!WebSocketImpl.this._isWebSocketEnabled.booleanValue()) {
                return this._underlyingInput.capacity();
            }
            if (WebSocketImpl.this._tail_closed) {
                return -1;
            }
            return WebSocketImpl.this._inputBuffer.remaining();
        }

        public void close_head() {
            this._underlyingOutput.close_head();
        }

        public void close_tail() {
            boolean unused = WebSocketImpl.this._tail_closed = true;
            if (WebSocketImpl.this._isWebSocketEnabled.booleanValue()) {
                boolean unused2 = WebSocketImpl.this._head_closed = true;
                this._underlyingInput.close_tail();
                return;
            }
            this._underlyingInput.close_tail();
        }

        public ByteBuffer head() {
            if (!WebSocketImpl.this._isWebSocketEnabled.booleanValue()) {
                return this._underlyingOutput.head();
            }
            int ordinal = WebSocketImpl.this._state.ordinal();
            if (ordinal != 1) {
                if (ordinal == 2) {
                    int unused = WebSocketImpl.this._underlyingOutputSize = this._underlyingOutput.pending();
                    if (WebSocketImpl.this._underlyingOutputSize > 0) {
                        WebSocketImpl.this.wrapBuffer(this._underlyingOutput.head(), WebSocketImpl.this._outputBuffer);
                        WebSocketImpl webSocketImpl = WebSocketImpl.this;
                        int unused2 = webSocketImpl._webSocketHeaderSize = webSocketImpl._outputBuffer.position() - WebSocketImpl.this._underlyingOutputSize;
                        this._head.limit(WebSocketImpl.this._outputBuffer.position());
                    }
                    return this._head;
                } else if (!(ordinal == 3 || ordinal == 4)) {
                    return this._underlyingOutput.head();
                }
            }
            return this._head;
        }

        public int pending() {
            if (!WebSocketImpl.this._isWebSocketEnabled.booleanValue()) {
                return this._underlyingOutput.pending();
            }
            int ordinal = WebSocketImpl.this._state.ordinal();
            if (ordinal != 0) {
                if (ordinal != 1) {
                    if (ordinal == 2) {
                        int unused = WebSocketImpl.this._underlyingOutputSize = this._underlyingOutput.pending();
                        if (WebSocketImpl.this._underlyingOutputSize <= 0) {
                            return WebSocketImpl.this._underlyingOutputSize;
                        }
                        WebSocketImpl webSocketImpl = WebSocketImpl.this;
                        int unused2 = webSocketImpl._webSocketHeaderSize = webSocketImpl._webSocketHandler.calculateHeaderSize(WebSocketImpl.this._underlyingOutputSize);
                        return WebSocketImpl.this._webSocketHeaderSize + WebSocketImpl.this._underlyingOutputSize;
                    } else if (ordinal == 3) {
                        WebSocket.WebSocketState unused3 = WebSocketImpl.this._state = WebSocket.WebSocketState.PN_WS_CONNECTED_FLOW;
                        WebSocketImpl.this.writePong();
                        this._head.limit(WebSocketImpl.this._outputBuffer.position());
                        if (!WebSocketImpl.this._head_closed) {
                            return WebSocketImpl.this._outputBuffer.position();
                        }
                        WebSocket.WebSocketState unused4 = WebSocketImpl.this._state = WebSocket.WebSocketState.PN_WS_FAILED;
                        return -1;
                    } else if (ordinal != 4) {
                        return -1;
                    } else {
                        WebSocket.WebSocketState unused5 = WebSocketImpl.this._state = WebSocket.WebSocketState.PN_WS_CLOSED;
                        WebSocketImpl.this.writeClose();
                        this._head.limit(WebSocketImpl.this._outputBuffer.position());
                        if (!WebSocketImpl.this._head_closed) {
                            return WebSocketImpl.this._outputBuffer.position();
                        }
                        WebSocket.WebSocketState unused6 = WebSocketImpl.this._state = WebSocket.WebSocketState.PN_WS_FAILED;
                        return -1;
                    }
                } else if (!WebSocketImpl.this._head_closed || WebSocketImpl.this._outputBuffer.position() != 0) {
                    return WebSocketImpl.this._outputBuffer.position();
                } else {
                    WebSocket.WebSocketState unused7 = WebSocketImpl.this._state = WebSocket.WebSocketState.PN_WS_FAILED;
                    return -1;
                }
            } else if (WebSocketImpl.this._outputBuffer.position() != 0) {
                return WebSocketImpl.this._outputBuffer.position();
            } else {
                WebSocket.WebSocketState unused8 = WebSocketImpl.this._state = WebSocket.WebSocketState.PN_WS_CONNECTING;
                WebSocketImpl.this.writeUpgradeRequest();
                this._head.limit(WebSocketImpl.this._outputBuffer.position());
                if (!WebSocketImpl.this._head_closed) {
                    return WebSocketImpl.this._outputBuffer.position();
                }
                WebSocket.WebSocketState unused9 = WebSocketImpl.this._state = WebSocket.WebSocketState.PN_WS_FAILED;
                return -1;
            }
        }

        public void pop(int i2) {
            if (WebSocketImpl.this._isWebSocketEnabled.booleanValue()) {
                switch (WebSocketImpl.this._state.ordinal()) {
                    case 0:
                    case 5:
                    case 6:
                        this._underlyingOutput.pop(i2);
                        return;
                    case 1:
                        if (WebSocketImpl.this._outputBuffer.position() != 0) {
                            WebSocketImpl.this._outputBuffer.flip();
                            WebSocketImpl.this._outputBuffer.position(i2);
                            WebSocketImpl.this._outputBuffer.compact();
                            this._head.position(0);
                            this._head.limit(WebSocketImpl.this._outputBuffer.position());
                            return;
                        }
                        this._underlyingOutput.pop(i2);
                        return;
                    case 2:
                    case 3:
                    case 4:
                        if (i2 >= WebSocketImpl.this._webSocketHeaderSize && WebSocketImpl.this._outputBuffer.position() != 0) {
                            WebSocketImpl.this._outputBuffer.flip();
                            WebSocketImpl.this._outputBuffer.position(i2);
                            WebSocketImpl.this._outputBuffer.compact();
                            this._head.position(0);
                            this._head.limit(WebSocketImpl.this._outputBuffer.position());
                            this._underlyingOutput.pop(i2 - WebSocketImpl.this._webSocketHeaderSize);
                            int unused = WebSocketImpl.this._webSocketHeaderSize = 0;
                            return;
                        } else if (i2 <= 0 || i2 >= WebSocketImpl.this._webSocketHeaderSize) {
                            this._underlyingOutput.pop(i2);
                            return;
                        } else {
                            WebSocketImpl webSocketImpl = WebSocketImpl.this;
                            int unused2 = webSocketImpl._webSocketHeaderSize = webSocketImpl._webSocketHeaderSize - i2;
                            return;
                        }
                    default:
                        return;
                }
            } else {
                this._underlyingOutput.pop(i2);
            }
        }

        public int position() {
            if (!WebSocketImpl.this._isWebSocketEnabled.booleanValue()) {
                return this._underlyingInput.position();
            }
            if (WebSocketImpl.this._tail_closed) {
                return -1;
            }
            return WebSocketImpl.this._inputBuffer.position();
        }

        public void process() {
            if (WebSocketImpl.this._isWebSocketEnabled.booleanValue()) {
                WebSocketImpl.this._inputBuffer.flip();
                int ordinal = WebSocketImpl.this._state.ordinal();
                if (ordinal == 1 || ordinal == 2) {
                    processInput();
                } else {
                    this._underlyingInput.process();
                }
            } else {
                this._underlyingInput.process();
            }
        }

        public ByteBuffer tail() {
            if (WebSocketImpl.this._isWebSocketEnabled.booleanValue()) {
                return WebSocketImpl.this._inputBuffer;
            }
            return this._underlyingInput.tail();
        }

        public WebSocketTransportWrapper(b0 b0Var, f0 f0Var) {
            this.HEX_DIGITS = new char[]{'0', '1', '2', '3', '4', '5', '6', '7', '8', '9', 'A', 'B', 'C', 'D', 'E', 'F'};
            this._underlyingInput = b0Var;
            this._underlyingOutput = f0Var;
            ByteBuffer asReadOnlyBuffer = WebSocketImpl.this._outputBuffer.asReadOnlyBuffer();
            this._head = asReadOnlyBuffer;
            asReadOnlyBuffer.limit(0);
        }

        private String convertToBinary(ByteBuffer byteBuffer) {
            byte[] bArr = new byte[byteBuffer.remaining()];
            byteBuffer.duplicate().get(bArr);
            return convertToBinary(bArr);
        }

        private String convertToHex(ByteBuffer byteBuffer) {
            byte[] bArr = new byte[byteBuffer.remaining()];
            byteBuffer.duplicate().get(bArr);
            return convertToHex(bArr);
        }
    }

    public WebSocketImpl() {
        this._maxFrameSize = 4224;
        this._tail_closed = false;
        this._head_closed = false;
        this._underlyingOutputSize = 0;
        this._webSocketHeaderSize = 0;
        this._state = WebSocket.WebSocketState.PN_WS_NOT_STARTED;
        this._host = "";
        this._path = "";
        this._port = 0;
        this._protocol = "";
        this._additionalHeaders = null;
        this._isWebSocketEnabled = false;
        this._bytesRead = 0;
        this._dataStart = 0;
        this._frameReadState = WebSocket.WebSocketFrameReadState.INIT_READ;
        this._inputBuffer = ByteBuffer.allocate(this._maxFrameSize);
        this._outputBuffer = ByteBuffer.allocate(this._maxFrameSize);
        this._pingBuffer = ByteBuffer.allocate(this._maxFrameSize);
        this._wsInputBuffer = ByteBuffer.allocate(this._maxFrameSize);
        this._temp = ByteBuffer.allocate(this._maxFrameSize);
        this._lastType = WebSocketHandler.WebSocketMessageType.WEB_SOCKET_MESSAGE_TYPE_UNKNOWN;
        this._lastLength = 0;
        this._isWebSocketEnabled = false;
    }

    public void configure(String str, String str2, int i2, String str3, Map<String, String> map, WebSocketHandler webSocketHandler) {
        this._host = str;
        this._path = str2;
        this._port = i2;
        this._protocol = str3;
        this._additionalHeaders = map;
        if (webSocketHandler != null) {
            this._webSocketHandler = webSocketHandler;
        } else {
            this._webSocketHandler = new WebSocketHandlerImpl();
        }
        this._isWebSocketEnabled = true;
    }

    public Boolean getEnabled() {
        return this._isWebSocketEnabled;
    }

    public ByteBuffer getInputBuffer() {
        return this._inputBuffer;
    }

    public ByteBuffer getOutputBuffer() {
        return this._outputBuffer;
    }

    public ByteBuffer getPingBuffer() {
        return this._pingBuffer;
    }

    public WebSocket.WebSocketState getState() {
        return this._state;
    }

    public WebSocketHandler getWebSocketHandler() {
        return this._webSocketHandler;
    }

    public ByteBuffer getWsInputBuffer() {
        return this._wsInputBuffer;
    }

    public String toString() {
        StringBuilder a = a.a("WebSocketImpl [isWebSocketEnabled=");
        a.append(this._isWebSocketEnabled);
        a.append(", state=");
        a.append(this._state);
        a.append(", protocol=");
        a.append(this._protocol);
        a.append(", host=");
        a.append(this._host);
        a.append(", path=");
        a.append(this._path);
        a.append(", port=");
        a.append(this._port);
        Map<String, String> map = this._additionalHeaders;
        if (map != null && !map.isEmpty()) {
            a.append(", additionalHeaders=");
            for (Map.Entry next : this._additionalHeaders.entrySet()) {
                a.append(((String) next.getKey()) + ":" + ((String) next.getValue()));
                a.append(", ");
            }
            int lastIndexOf = a.lastIndexOf(", ");
            a.delete(lastIndexOf, lastIndexOf + 2);
        }
        a.append("]");
        return a.toString();
    }

    public WebSocketHandler.WebsocketTuple unwrapBuffer(ByteBuffer byteBuffer) {
        if (this._isWebSocketEnabled.booleanValue()) {
            return this._webSocketHandler.unwrapBuffer(byteBuffer);
        }
        return new WebSocketHandler.WebsocketTuple(0, WebSocketHandler.WebSocketMessageType.WEB_SOCKET_MESSAGE_TYPE_UNKNOWN);
    }

    public l0 wrap(b0 b0Var, f0 f0Var) {
        return new WebSocketSniffer(new WebSocketTransportWrapper(b0Var, f0Var), new o(f0Var, b0Var)) {
            public boolean isDeterminationMade() {
                this._selectedTransportWrapper = this._wrapper1;
                return true;
            }
        };
    }

    public void wrapBuffer(ByteBuffer byteBuffer, ByteBuffer byteBuffer2) {
        if (this._isWebSocketEnabled.booleanValue()) {
            this._webSocketHandler.wrapBuffer(byteBuffer, byteBuffer2);
            return;
        }
        byteBuffer2.clear();
        byteBuffer2.put(byteBuffer);
    }

    public void writeClose() {
        this._outputBuffer.clear();
        this._pingBuffer.flip();
        this._outputBuffer.put(this._pingBuffer);
    }

    public void writePong() {
        this._webSocketHandler.createPong(this._pingBuffer, this._outputBuffer);
    }

    public void writeUpgradeRequest() {
        this._outputBuffer.clear();
        this._outputBuffer.put(this._webSocketHandler.createUpgradeRequest(this._host, this._path, this._port, this._protocol, this._additionalHeaders).getBytes());
    }
}
