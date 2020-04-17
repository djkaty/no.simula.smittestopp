package com.microsoft.azure.proton.transport.ws.impl;

import com.microsoft.azure.proton.transport.ws.WebSocket;
import com.microsoft.azure.proton.transport.ws.WebSocketHandler;
import com.microsoft.identity.client.claims.WWWAuthenticateHeader;
import e.a.a.a.a;
import java.nio.ByteBuffer;
import java.util.Map;
import k.a.b.a.d.g0.b0;
import k.a.b.a.d.g0.d0;
import k.a.b.a.d.g0.f0;
import k.a.b.a.d.g0.l0;
import k.a.b.a.d.g0.o;
import k.f.b;
import k.f.c;

public class WebSocketImpl implements WebSocket, d0 {
    public static final b TRACE_LOGGER = c.a((Class<?>) WebSocketImpl.class);
    public Map<String, String> additionalHeaders = null;
    public long bytesRead = 0;
    public WebSocket.WebSocketFrameReadState frameReadState = WebSocket.WebSocketFrameReadState.INIT_READ;
    public boolean headClosed = false;
    public String host = "";
    public final ByteBuffer inputBuffer = ByteBuffer.allocate(4224);
    public Boolean isWebSocketEnabled = false;
    public long lastLength = 0;
    public WebSocketHandler.WebSocketMessageType lastType = WebSocketHandler.WebSocketMessageType.WEB_SOCKET_MESSAGE_TYPE_UNKNOWN;
    public final int maxFrameSize = 4224;
    public final ByteBuffer outputBuffer = ByteBuffer.allocate(4224);
    public String path = "";
    public ByteBuffer pingBuffer = ByteBuffer.allocate(4224);
    public int port = 0;
    public String protocol = "";
    public String query = "";
    public boolean tailClosed = false;
    public ByteBuffer tempBuffer = ByteBuffer.allocate(4224);
    public int underlyingOutputSize = 0;
    public WebSocketHandler webSocketHandler;
    public int webSocketHeaderSize = 0;
    public WebSocket.WebSocketState webSocketState = WebSocket.WebSocketState.PN_WS_NOT_STARTED;
    public ByteBuffer wsInputBuffer = ByteBuffer.allocate(4224);

    /* renamed from: com.microsoft.azure.proton.transport.ws.impl.WebSocketImpl$2  reason: invalid class name */
    public static /* synthetic */ class AnonymousClass2 {
        public static final /* synthetic */ int[] $SwitchMap$com$microsoft$azure$proton$transport$ws$WebSocket$WebSocketFrameReadState;
        public static final /* synthetic */ int[] $SwitchMap$com$microsoft$azure$proton$transport$ws$WebSocket$WebSocketState;
        public static final /* synthetic */ int[] $SwitchMap$com$microsoft$azure$proton$transport$ws$WebSocketHandler$WebSocketMessageType;

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
                com.microsoft.azure.proton.transport.ws.WebSocket$WebSocketState[] r0 = com.microsoft.azure.proton.transport.ws.WebSocket.WebSocketState.values()
                int r0 = r0.length
                int[] r0 = new int[r0]
                $SwitchMap$com$microsoft$azure$proton$transport$ws$WebSocket$WebSocketState = r0
                r1 = 1
                com.microsoft.azure.proton.transport.ws.WebSocket$WebSocketState r2 = com.microsoft.azure.proton.transport.ws.WebSocket.WebSocketState.PN_WS_CONNECTING     // Catch:{ NoSuchFieldError -> 0x000e }
                r0[r1] = r1     // Catch:{ NoSuchFieldError -> 0x000e }
            L_0x000e:
                r0 = 2
                int[] r2 = $SwitchMap$com$microsoft$azure$proton$transport$ws$WebSocket$WebSocketState     // Catch:{ NoSuchFieldError -> 0x0015 }
                com.microsoft.azure.proton.transport.ws.WebSocket$WebSocketState r3 = com.microsoft.azure.proton.transport.ws.WebSocket.WebSocketState.PN_WS_CONNECTED_FLOW     // Catch:{ NoSuchFieldError -> 0x0015 }
                r2[r0] = r0     // Catch:{ NoSuchFieldError -> 0x0015 }
            L_0x0015:
                r2 = 3
                int[] r3 = $SwitchMap$com$microsoft$azure$proton$transport$ws$WebSocket$WebSocketState     // Catch:{ NoSuchFieldError -> 0x001c }
                com.microsoft.azure.proton.transport.ws.WebSocket$WebSocketState r4 = com.microsoft.azure.proton.transport.ws.WebSocket.WebSocketState.PN_WS_CONNECTED_PONG     // Catch:{ NoSuchFieldError -> 0x001c }
                r3[r2] = r2     // Catch:{ NoSuchFieldError -> 0x001c }
            L_0x001c:
                r3 = 0
                r4 = 4
                int[] r5 = $SwitchMap$com$microsoft$azure$proton$transport$ws$WebSocket$WebSocketState     // Catch:{ NoSuchFieldError -> 0x0024 }
                com.microsoft.azure.proton.transport.ws.WebSocket$WebSocketState r6 = com.microsoft.azure.proton.transport.ws.WebSocket.WebSocketState.PN_WS_NOT_STARTED     // Catch:{ NoSuchFieldError -> 0x0024 }
                r5[r3] = r4     // Catch:{ NoSuchFieldError -> 0x0024 }
            L_0x0024:
                r5 = 5
                int[] r6 = $SwitchMap$com$microsoft$azure$proton$transport$ws$WebSocket$WebSocketState     // Catch:{ NoSuchFieldError -> 0x002b }
                com.microsoft.azure.proton.transport.ws.WebSocket$WebSocketState r7 = com.microsoft.azure.proton.transport.ws.WebSocket.WebSocketState.PN_WS_CLOSED     // Catch:{ NoSuchFieldError -> 0x002b }
                r6[r5] = r5     // Catch:{ NoSuchFieldError -> 0x002b }
            L_0x002b:
                int[] r6 = $SwitchMap$com$microsoft$azure$proton$transport$ws$WebSocket$WebSocketState     // Catch:{ NoSuchFieldError -> 0x0032 }
                com.microsoft.azure.proton.transport.ws.WebSocket$WebSocketState r7 = com.microsoft.azure.proton.transport.ws.WebSocket.WebSocketState.PN_WS_FAILED     // Catch:{ NoSuchFieldError -> 0x0032 }
                r7 = 6
                r6[r7] = r7     // Catch:{ NoSuchFieldError -> 0x0032 }
            L_0x0032:
                int[] r6 = $SwitchMap$com$microsoft$azure$proton$transport$ws$WebSocket$WebSocketState     // Catch:{ NoSuchFieldError -> 0x0039 }
                com.microsoft.azure.proton.transport.ws.WebSocket$WebSocketState r7 = com.microsoft.azure.proton.transport.ws.WebSocket.WebSocketState.PN_WS_CONNECTED_CLOSING     // Catch:{ NoSuchFieldError -> 0x0039 }
                r7 = 7
                r6[r4] = r7     // Catch:{ NoSuchFieldError -> 0x0039 }
            L_0x0039:
                com.microsoft.azure.proton.transport.ws.WebSocket$WebSocketFrameReadState[] r6 = com.microsoft.azure.proton.transport.ws.WebSocket.WebSocketFrameReadState.values()
                int r6 = r6.length
                int[] r6 = new int[r6]
                $SwitchMap$com$microsoft$azure$proton$transport$ws$WebSocket$WebSocketFrameReadState = r6
                com.microsoft.azure.proton.transport.ws.WebSocket$WebSocketFrameReadState r7 = com.microsoft.azure.proton.transport.ws.WebSocket.WebSocketFrameReadState.INIT_READ     // Catch:{ NoSuchFieldError -> 0x0046 }
                r6[r3] = r1     // Catch:{ NoSuchFieldError -> 0x0046 }
            L_0x0046:
                int[] r6 = $SwitchMap$com$microsoft$azure$proton$transport$ws$WebSocket$WebSocketFrameReadState     // Catch:{ NoSuchFieldError -> 0x004c }
                com.microsoft.azure.proton.transport.ws.WebSocket$WebSocketFrameReadState r7 = com.microsoft.azure.proton.transport.ws.WebSocket.WebSocketFrameReadState.CHUNK_READ     // Catch:{ NoSuchFieldError -> 0x004c }
                r6[r1] = r0     // Catch:{ NoSuchFieldError -> 0x004c }
            L_0x004c:
                int[] r6 = $SwitchMap$com$microsoft$azure$proton$transport$ws$WebSocket$WebSocketFrameReadState     // Catch:{ NoSuchFieldError -> 0x0052 }
                com.microsoft.azure.proton.transport.ws.WebSocket$WebSocketFrameReadState r7 = com.microsoft.azure.proton.transport.ws.WebSocket.WebSocketFrameReadState.HEADER_READ     // Catch:{ NoSuchFieldError -> 0x0052 }
                r6[r2] = r2     // Catch:{ NoSuchFieldError -> 0x0052 }
            L_0x0052:
                int[] r6 = $SwitchMap$com$microsoft$azure$proton$transport$ws$WebSocket$WebSocketFrameReadState     // Catch:{ NoSuchFieldError -> 0x0058 }
                com.microsoft.azure.proton.transport.ws.WebSocket$WebSocketFrameReadState r7 = com.microsoft.azure.proton.transport.ws.WebSocket.WebSocketFrameReadState.CONTINUED_FRAME_READ     // Catch:{ NoSuchFieldError -> 0x0058 }
                r6[r0] = r4     // Catch:{ NoSuchFieldError -> 0x0058 }
            L_0x0058:
                int[] r6 = $SwitchMap$com$microsoft$azure$proton$transport$ws$WebSocket$WebSocketFrameReadState     // Catch:{ NoSuchFieldError -> 0x005e }
                com.microsoft.azure.proton.transport.ws.WebSocket$WebSocketFrameReadState r7 = com.microsoft.azure.proton.transport.ws.WebSocket.WebSocketFrameReadState.READ_ERROR     // Catch:{ NoSuchFieldError -> 0x005e }
                r6[r4] = r5     // Catch:{ NoSuchFieldError -> 0x005e }
            L_0x005e:
                com.microsoft.azure.proton.transport.ws.WebSocketHandler$WebSocketMessageType[] r6 = com.microsoft.azure.proton.transport.ws.WebSocketHandler.WebSocketMessageType.values()
                int r6 = r6.length
                int[] r6 = new int[r6]
                $SwitchMap$com$microsoft$azure$proton$transport$ws$WebSocketHandler$WebSocketMessageType = r6
                com.microsoft.azure.proton.transport.ws.WebSocketHandler$WebSocketMessageType r7 = com.microsoft.azure.proton.transport.ws.WebSocketHandler.WebSocketMessageType.WEB_SOCKET_MESSAGE_TYPE_UNKNOWN     // Catch:{ NoSuchFieldError -> 0x006b }
                r6[r3] = r1     // Catch:{ NoSuchFieldError -> 0x006b }
            L_0x006b:
                int[] r3 = $SwitchMap$com$microsoft$azure$proton$transport$ws$WebSocketHandler$WebSocketMessageType     // Catch:{ NoSuchFieldError -> 0x0071 }
                com.microsoft.azure.proton.transport.ws.WebSocketHandler$WebSocketMessageType r6 = com.microsoft.azure.proton.transport.ws.WebSocketHandler.WebSocketMessageType.WEB_SOCKET_MESSAGE_TYPE_CHUNK     // Catch:{ NoSuchFieldError -> 0x0071 }
                r3[r1] = r0     // Catch:{ NoSuchFieldError -> 0x0071 }
            L_0x0071:
                int[] r0 = $SwitchMap$com$microsoft$azure$proton$transport$ws$WebSocketHandler$WebSocketMessageType     // Catch:{ NoSuchFieldError -> 0x0077 }
                com.microsoft.azure.proton.transport.ws.WebSocketHandler$WebSocketMessageType r1 = com.microsoft.azure.proton.transport.ws.WebSocketHandler.WebSocketMessageType.WEB_SOCKET_MESSAGE_TYPE_AMQP     // Catch:{ NoSuchFieldError -> 0x0077 }
                r0[r2] = r2     // Catch:{ NoSuchFieldError -> 0x0077 }
            L_0x0077:
                int[] r0 = $SwitchMap$com$microsoft$azure$proton$transport$ws$WebSocketHandler$WebSocketMessageType     // Catch:{ NoSuchFieldError -> 0x007d }
                com.microsoft.azure.proton.transport.ws.WebSocketHandler$WebSocketMessageType r1 = com.microsoft.azure.proton.transport.ws.WebSocketHandler.WebSocketMessageType.WEB_SOCKET_MESSAGE_TYPE_CLOSE     // Catch:{ NoSuchFieldError -> 0x007d }
                r0[r5] = r4     // Catch:{ NoSuchFieldError -> 0x007d }
            L_0x007d:
                int[] r0 = $SwitchMap$com$microsoft$azure$proton$transport$ws$WebSocketHandler$WebSocketMessageType     // Catch:{ NoSuchFieldError -> 0x0083 }
                com.microsoft.azure.proton.transport.ws.WebSocketHandler$WebSocketMessageType r1 = com.microsoft.azure.proton.transport.ws.WebSocketHandler.WebSocketMessageType.WEB_SOCKET_MESSAGE_TYPE_PING     // Catch:{ NoSuchFieldError -> 0x0083 }
                r0[r4] = r5     // Catch:{ NoSuchFieldError -> 0x0083 }
            L_0x0083:
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: com.microsoft.azure.proton.transport.ws.impl.WebSocketImpl.AnonymousClass2.<clinit>():void");
        }
    }

    public class WebSocketTransportWrapper implements l0 {
        public static final /* synthetic */ boolean $assertionsDisabled = false;
        public final ByteBuffer head;
        public final char[] hexDigits;
        public final b0 underlyingInput;
        public final f0 underlyingOutput;

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
                char[] cArr2 = this.hexDigits;
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
            int ordinal = WebSocketImpl.this.webSocketState.ordinal();
            if (ordinal == 1) {
                WebSocketImpl.this.inputBuffer.mark();
                if (WebSocketImpl.this.webSocketHandler.validateUpgradeReply(WebSocketImpl.this.inputBuffer).booleanValue()) {
                    WebSocket.WebSocketState unused = WebSocketImpl.this.webSocketState = WebSocket.WebSocketState.PN_WS_CONNECTED_FLOW;
                } else {
                    WebSocketImpl.this.inputBuffer.reset();
                    WebSocketImpl.TRACE_LOGGER.d("Websocket connecting response incomplete");
                }
                WebSocketImpl.this.inputBuffer.compact();
            } else if (ordinal == 2 || ordinal == 3) {
                if (WebSocketImpl.this.inputBuffer.remaining() > 0) {
                    loop0:
                    while (true) {
                        boolean z = false;
                        while (!z) {
                            int ordinal2 = WebSocketImpl.this.frameReadState.ordinal();
                            if (ordinal2 == 0) {
                                long unused2 = WebSocketImpl.this.bytesRead = 0;
                                readInputBuffer();
                                WebSocketImpl webSocketImpl = WebSocketImpl.this;
                                WebSocket.WebSocketFrameReadState unused3 = webSocketImpl.frameReadState = webSocketImpl.tempBuffer.position() < 2 ? WebSocket.WebSocketFrameReadState.CHUNK_READ : WebSocket.WebSocketFrameReadState.HEADER_READ;
                                if (WebSocketImpl.this.frameReadState != WebSocket.WebSocketFrameReadState.CHUNK_READ) {
                                }
                            } else if (ordinal2 == 1) {
                                readInputBuffer();
                                WebSocketImpl webSocketImpl2 = WebSocketImpl.this;
                                WebSocket.WebSocketFrameReadState unused4 = webSocketImpl2.frameReadState = webSocketImpl2.tempBuffer.position() < 2 ? WebSocketImpl.this.frameReadState : WebSocket.WebSocketFrameReadState.HEADER_READ;
                                if (WebSocketImpl.this.frameReadState != WebSocket.WebSocketFrameReadState.CHUNK_READ) {
                                }
                            } else if (ordinal2 == 2) {
                                readInputBuffer();
                                WebSocketImpl.this.tempBuffer.flip();
                                if (((long) WebSocketImpl.this.tempBuffer.remaining()) >= WebSocketImpl.this.lastLength - WebSocketImpl.this.bytesRead) {
                                    byte[] bArr = new byte[((int) (WebSocketImpl.this.lastLength - WebSocketImpl.this.bytesRead))];
                                    WebSocketImpl.this.tempBuffer.get(bArr, 0, (int) (WebSocketImpl.this.lastLength - WebSocketImpl.this.bytesRead));
                                    WebSocketImpl.this.wsInputBuffer.put(bArr);
                                    WebSocketImpl webSocketImpl3 = WebSocketImpl.this;
                                    long unused5 = webSocketImpl3.bytesRead = (WebSocketImpl.this.lastLength - WebSocketImpl.this.bytesRead) + webSocketImpl3.bytesRead;
                                } else {
                                    int remaining = WebSocketImpl.this.tempBuffer.remaining();
                                    byte[] bArr2 = new byte[remaining];
                                    WebSocketImpl.this.tempBuffer.get(bArr2);
                                    WebSocketImpl.this.wsInputBuffer.put(bArr2);
                                    WebSocketImpl webSocketImpl4 = WebSocketImpl.this;
                                    long unused6 = webSocketImpl4.bytesRead = webSocketImpl4.bytesRead + ((long) remaining);
                                }
                                sendToUnderlyingInput();
                                WebSocketImpl webSocketImpl5 = WebSocketImpl.this;
                                WebSocket.WebSocketFrameReadState unused7 = webSocketImpl5.frameReadState = webSocketImpl5.bytesRead == WebSocketImpl.this.lastLength ? WebSocket.WebSocketFrameReadState.INIT_READ : WebSocket.WebSocketFrameReadState.CONTINUED_FRAME_READ;
                                z = WebSocketImpl.this.tempBuffer.remaining() == 0;
                                WebSocketImpl.this.tempBuffer.compact();
                            } else if (ordinal2 == 3) {
                                readInputBuffer();
                                WebSocketImpl.this.tempBuffer.flip();
                                WebSocketImpl webSocketImpl6 = WebSocketImpl.this;
                                WebSocketHandler.WebsocketTuple unwrapBuffer = webSocketImpl6.unwrapBuffer(webSocketImpl6.tempBuffer);
                                WebSocketHandler.WebSocketMessageType unused8 = WebSocketImpl.this.lastType = unwrapBuffer.getType();
                                long unused9 = WebSocketImpl.this.lastLength = unwrapBuffer.getLength();
                                WebSocketImpl webSocketImpl7 = WebSocketImpl.this;
                                WebSocket.WebSocketFrameReadState unused10 = webSocketImpl7.frameReadState = webSocketImpl7.lastType == WebSocketHandler.WebSocketMessageType.WEB_SOCKET_MESSAGE_TYPE_HEADER_CHUNK ? WebSocket.WebSocketFrameReadState.CHUNK_READ : WebSocket.WebSocketFrameReadState.CONTINUED_FRAME_READ;
                                z = WebSocketImpl.this.frameReadState == WebSocket.WebSocketFrameReadState.CHUNK_READ || WebSocketImpl.this.tempBuffer.position() == WebSocketImpl.this.tempBuffer.limit();
                                if (WebSocketImpl.this.frameReadState == WebSocket.WebSocketFrameReadState.CONTINUED_FRAME_READ) {
                                    WebSocketImpl.this.tempBuffer.compact();
                                } else {
                                    WebSocketImpl.this.tempBuffer.position(WebSocketImpl.this.tempBuffer.limit());
                                    WebSocketImpl.this.tempBuffer.limit(WebSocketImpl.this.tempBuffer.capacity());
                                }
                            }
                            z = true;
                        }
                        break loop0;
                    }
                }
                WebSocketImpl.this.inputBuffer.compact();
            }
        }

        private void readInputBuffer() {
            e.c.a.a.b.l.c.a(WebSocketImpl.this.inputBuffer, WebSocketImpl.this.tempBuffer);
        }

        private boolean sendToUnderlyingInput() {
            int ordinal = WebSocketImpl.this.lastType.ordinal();
            boolean z = true;
            if (ordinal == 0) {
                WebSocketImpl.this.wsInputBuffer.position(WebSocketImpl.this.wsInputBuffer.limit());
                WebSocketImpl.this.wsInputBuffer.limit(WebSocketImpl.this.wsInputBuffer.capacity());
            } else if (ordinal != 1) {
                if (ordinal == 3) {
                    WebSocketImpl.this.wsInputBuffer.flip();
                    if (e.c.a.a.b.l.c.a(WebSocketImpl.this.wsInputBuffer, this.underlyingInput) == -1) {
                        boolean unused = WebSocketImpl.this.tailClosed = true;
                    }
                    WebSocketImpl.this.wsInputBuffer.compact();
                    WebSocketImpl.this.wsInputBuffer.flip();
                } else if (ordinal == 4) {
                    WebSocketImpl.this.wsInputBuffer.flip();
                    WebSocketImpl.this.pingBuffer.put(WebSocketImpl.this.wsInputBuffer);
                    WebSocket.WebSocketState unused2 = WebSocketImpl.this.webSocketState = WebSocket.WebSocketState.PN_WS_CONNECTED_PONG;
                    WebSocketImpl.this.wsInputBuffer.compact();
                    WebSocketImpl.this.wsInputBuffer.flip();
                } else if (ordinal == 5) {
                    WebSocketImpl.this.wsInputBuffer.flip();
                    WebSocketImpl.this.pingBuffer.put(WebSocketImpl.this.wsInputBuffer);
                    WebSocket.WebSocketState unused3 = WebSocketImpl.this.webSocketState = WebSocket.WebSocketState.PN_WS_CONNECTED_CLOSING;
                    WebSocketImpl.this.wsInputBuffer.compact();
                    WebSocketImpl.this.wsInputBuffer.flip();
                }
                WebSocketImpl.this.wsInputBuffer.position(WebSocketImpl.this.wsInputBuffer.limit());
                WebSocketImpl.this.wsInputBuffer.limit(WebSocketImpl.this.wsInputBuffer.capacity());
                return z;
            } else {
                WebSocketImpl.this.wsInputBuffer.position(WebSocketImpl.this.wsInputBuffer.limit());
                WebSocketImpl.this.wsInputBuffer.limit(WebSocketImpl.this.wsInputBuffer.capacity());
            }
            z = false;
            WebSocketImpl.this.wsInputBuffer.position(WebSocketImpl.this.wsInputBuffer.limit());
            WebSocketImpl.this.wsInputBuffer.limit(WebSocketImpl.this.wsInputBuffer.capacity());
            return z;
        }

        public int capacity() {
            if (!WebSocketImpl.this.isWebSocketEnabled.booleanValue()) {
                return this.underlyingInput.capacity();
            }
            if (WebSocketImpl.this.tailClosed) {
                return -1;
            }
            return WebSocketImpl.this.inputBuffer.remaining();
        }

        public void close_head() {
            this.underlyingOutput.close_head();
        }

        public void close_tail() {
            boolean unused = WebSocketImpl.this.tailClosed = true;
            if (WebSocketImpl.this.isWebSocketEnabled.booleanValue()) {
                boolean unused2 = WebSocketImpl.this.headClosed = true;
                this.underlyingInput.close_tail();
                return;
            }
            this.underlyingInput.close_tail();
        }

        public ByteBuffer head() {
            if (!WebSocketImpl.this.isWebSocketEnabled.booleanValue()) {
                return this.underlyingOutput.head();
            }
            int ordinal = WebSocketImpl.this.webSocketState.ordinal();
            if (ordinal != 1) {
                if (ordinal == 2) {
                    int unused = WebSocketImpl.this.underlyingOutputSize = this.underlyingOutput.pending();
                    if (WebSocketImpl.this.underlyingOutputSize > 0) {
                        WebSocketImpl.this.wrapBuffer(this.underlyingOutput.head(), WebSocketImpl.this.outputBuffer);
                        WebSocketImpl webSocketImpl = WebSocketImpl.this;
                        int unused2 = webSocketImpl.webSocketHeaderSize = webSocketImpl.outputBuffer.position() - WebSocketImpl.this.underlyingOutputSize;
                        this.head.limit(WebSocketImpl.this.outputBuffer.position());
                    }
                    return this.head;
                } else if (!(ordinal == 3 || ordinal == 4)) {
                    return this.underlyingOutput.head();
                }
            }
            return this.head;
        }

        public int pending() {
            if (!WebSocketImpl.this.isWebSocketEnabled.booleanValue()) {
                return this.underlyingOutput.pending();
            }
            int ordinal = WebSocketImpl.this.webSocketState.ordinal();
            if (ordinal != 0) {
                if (ordinal != 1) {
                    if (ordinal == 2) {
                        int unused = WebSocketImpl.this.underlyingOutputSize = this.underlyingOutput.pending();
                        if (WebSocketImpl.this.underlyingOutputSize <= 0) {
                            return WebSocketImpl.this.underlyingOutputSize;
                        }
                        WebSocketImpl webSocketImpl = WebSocketImpl.this;
                        int unused2 = webSocketImpl.webSocketHeaderSize = webSocketImpl.webSocketHandler.calculateHeaderSize(WebSocketImpl.this.underlyingOutputSize);
                        return WebSocketImpl.this.webSocketHeaderSize + WebSocketImpl.this.underlyingOutputSize;
                    } else if (ordinal == 3) {
                        WebSocket.WebSocketState unused3 = WebSocketImpl.this.webSocketState = WebSocket.WebSocketState.PN_WS_CONNECTED_FLOW;
                        WebSocketImpl.this.writePong();
                        this.head.limit(WebSocketImpl.this.outputBuffer.position());
                        if (!WebSocketImpl.this.headClosed) {
                            return WebSocketImpl.this.outputBuffer.position();
                        }
                        WebSocket.WebSocketState unused4 = WebSocketImpl.this.webSocketState = WebSocket.WebSocketState.PN_WS_FAILED;
                        return -1;
                    } else if (ordinal != 4) {
                        return -1;
                    } else {
                        WebSocket.WebSocketState unused5 = WebSocketImpl.this.webSocketState = WebSocket.WebSocketState.PN_WS_CLOSED;
                        WebSocketImpl.this.writeClose();
                        this.head.limit(WebSocketImpl.this.outputBuffer.position());
                        if (!WebSocketImpl.this.headClosed) {
                            return WebSocketImpl.this.outputBuffer.position();
                        }
                        WebSocket.WebSocketState unused6 = WebSocketImpl.this.webSocketState = WebSocket.WebSocketState.PN_WS_FAILED;
                        return -1;
                    }
                } else if (!WebSocketImpl.this.headClosed || WebSocketImpl.this.outputBuffer.position() != 0) {
                    return WebSocketImpl.this.outputBuffer.position();
                } else {
                    WebSocket.WebSocketState unused7 = WebSocketImpl.this.webSocketState = WebSocket.WebSocketState.PN_WS_FAILED;
                    return -1;
                }
            } else if (WebSocketImpl.this.outputBuffer.position() != 0) {
                return WebSocketImpl.this.outputBuffer.position();
            } else {
                WebSocket.WebSocketState unused8 = WebSocketImpl.this.webSocketState = WebSocket.WebSocketState.PN_WS_CONNECTING;
                WebSocketImpl.this.writeUpgradeRequest();
                this.head.limit(WebSocketImpl.this.outputBuffer.position());
                if (!WebSocketImpl.this.headClosed) {
                    return WebSocketImpl.this.outputBuffer.position();
                }
                WebSocket.WebSocketState unused9 = WebSocketImpl.this.webSocketState = WebSocket.WebSocketState.PN_WS_FAILED;
                return -1;
            }
        }

        public void pop(int i2) {
            if (WebSocketImpl.this.isWebSocketEnabled.booleanValue()) {
                switch (WebSocketImpl.this.webSocketState.ordinal()) {
                    case 0:
                    case 5:
                    case 6:
                        this.underlyingOutput.pop(i2);
                        return;
                    case 1:
                        if (WebSocketImpl.this.outputBuffer.position() != 0) {
                            WebSocketImpl.this.outputBuffer.flip();
                            WebSocketImpl.this.outputBuffer.position(i2);
                            WebSocketImpl.this.outputBuffer.compact();
                            this.head.position(0);
                            this.head.limit(WebSocketImpl.this.outputBuffer.position());
                            return;
                        }
                        this.underlyingOutput.pop(i2);
                        return;
                    case 2:
                    case 3:
                    case 4:
                        if (i2 >= WebSocketImpl.this.webSocketHeaderSize && WebSocketImpl.this.outputBuffer.position() != 0) {
                            WebSocketImpl.this.outputBuffer.flip();
                            WebSocketImpl.this.outputBuffer.position(i2);
                            WebSocketImpl.this.outputBuffer.compact();
                            this.head.position(0);
                            this.head.limit(WebSocketImpl.this.outputBuffer.position());
                            this.underlyingOutput.pop(i2 - WebSocketImpl.this.webSocketHeaderSize);
                            int unused = WebSocketImpl.this.webSocketHeaderSize = 0;
                            return;
                        } else if (i2 <= 0 || i2 >= WebSocketImpl.this.webSocketHeaderSize) {
                            this.underlyingOutput.pop(i2);
                            return;
                        } else {
                            WebSocketImpl webSocketImpl = WebSocketImpl.this;
                            int unused2 = webSocketImpl.webSocketHeaderSize = webSocketImpl.webSocketHeaderSize - i2;
                            return;
                        }
                    default:
                        return;
                }
            } else {
                this.underlyingOutput.pop(i2);
            }
        }

        public int position() {
            if (!WebSocketImpl.this.isWebSocketEnabled.booleanValue()) {
                return this.underlyingInput.position();
            }
            if (WebSocketImpl.this.tailClosed) {
                return -1;
            }
            return WebSocketImpl.this.inputBuffer.position();
        }

        public void process() {
            if (WebSocketImpl.this.isWebSocketEnabled.booleanValue()) {
                WebSocketImpl.this.inputBuffer.flip();
                int ordinal = WebSocketImpl.this.webSocketState.ordinal();
                if (ordinal == 1 || ordinal == 2) {
                    processInput();
                } else {
                    this.underlyingInput.process();
                }
            } else {
                this.underlyingInput.process();
            }
        }

        public ByteBuffer tail() {
            if (WebSocketImpl.this.isWebSocketEnabled.booleanValue()) {
                return WebSocketImpl.this.inputBuffer;
            }
            return this.underlyingInput.tail();
        }

        public WebSocketTransportWrapper(b0 b0Var, f0 f0Var) {
            this.hexDigits = new char[]{'0', '1', '2', '3', '4', '5', '6', '7', '8', '9', 'A', 'B', 'C', 'D', 'E', 'F'};
            this.underlyingInput = b0Var;
            this.underlyingOutput = f0Var;
            ByteBuffer asReadOnlyBuffer = WebSocketImpl.this.outputBuffer.asReadOnlyBuffer();
            this.head = asReadOnlyBuffer;
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

    public void configure(String str, String str2, String str3, int i2, String str4, Map<String, String> map, WebSocketHandler webSocketHandler2) {
        this.host = str;
        this.path = str2;
        this.query = str3;
        this.port = i2;
        this.protocol = str4;
        this.additionalHeaders = map;
        if (webSocketHandler2 != null) {
            this.webSocketHandler = webSocketHandler2;
        } else {
            this.webSocketHandler = new WebSocketHandlerImpl();
        }
        this.isWebSocketEnabled = true;
    }

    public Boolean getEnabled() {
        return this.isWebSocketEnabled;
    }

    public ByteBuffer getInputBuffer() {
        return this.inputBuffer;
    }

    public ByteBuffer getOutputBuffer() {
        return this.outputBuffer;
    }

    public ByteBuffer getPingBuffer() {
        return this.pingBuffer;
    }

    public WebSocket.WebSocketState getState() {
        return this.webSocketState;
    }

    public WebSocketHandler getWebSocketHandler() {
        return this.webSocketHandler;
    }

    public ByteBuffer getWsInputBuffer() {
        return this.wsInputBuffer;
    }

    public String toString() {
        StringBuilder a = a.a("WebSocketImpl [isWebSocketEnabled=");
        a.append(this.isWebSocketEnabled);
        a.append(", state=");
        a.append(this.webSocketState);
        a.append(", protocol=");
        a.append(this.protocol);
        a.append(", host=");
        a.append(this.host);
        a.append(", path=");
        a.append(this.path);
        a.append(", query=");
        a.append(this.query);
        a.append(", port=");
        a.append(this.port);
        Map<String, String> map = this.additionalHeaders;
        if (map != null && !map.isEmpty()) {
            a.append(", additionalHeaders=");
            for (Map.Entry next : this.additionalHeaders.entrySet()) {
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
        if (this.isWebSocketEnabled.booleanValue()) {
            return this.webSocketHandler.unwrapBuffer(byteBuffer);
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
        if (this.isWebSocketEnabled.booleanValue()) {
            this.webSocketHandler.wrapBuffer(byteBuffer, byteBuffer2);
            return;
        }
        byteBuffer2.clear();
        byteBuffer2.put(byteBuffer);
    }

    public void writeClose() {
        this.outputBuffer.clear();
        this.pingBuffer.flip();
        this.outputBuffer.put(this.pingBuffer);
    }

    public void writePong() {
        this.webSocketHandler.createPong(this.pingBuffer, this.outputBuffer);
    }

    public void writeUpgradeRequest() {
        this.outputBuffer.clear();
        this.outputBuffer.put(this.webSocketHandler.createUpgradeRequest(this.host, this.path, this.query, this.port, this.protocol, this.additionalHeaders).getBytes());
    }
}
