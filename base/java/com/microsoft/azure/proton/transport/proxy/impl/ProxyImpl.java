package com.microsoft.azure.proton.transport.proxy.impl;

import com.microsoft.azure.proton.transport.proxy.Proxy;
import com.microsoft.azure.proton.transport.proxy.ProxyAuthenticationType;
import com.microsoft.azure.proton.transport.proxy.ProxyChallengeProcessor;
import com.microsoft.azure.proton.transport.proxy.ProxyConfiguration;
import com.microsoft.azure.proton.transport.proxy.ProxyHandler;
import e.a.a.a.a;
import e.d.a.a.a.a.a.d;
import java.nio.ByteBuffer;
import java.util.Map;
import java.util.Set;
import java.util.stream.Collectors;
import k.a.b.a.d.c0;
import k.a.b.a.d.g0.a0;
import k.a.b.a.d.g0.b0;
import k.a.b.a.d.g0.d0;
import k.a.b.a.d.g0.f0;
import k.a.b.a.d.g0.l0;
import k.f.b;
import k.f.c;

public class ProxyImpl implements Proxy, d0 {
    public static final b LOGGER = c.a((Class<?>) ProxyImpl.class);
    public static final String PROXY_CONNECT_FAILED = "Proxy connect request failed with error: ";
    public static final String PROXY_CONNECT_USER_ERROR = "User configuration error. Using non-matching proxy authentication.";
    public static final int PROXY_HANDSHAKE_BUFFER_SIZE = 8192;
    public boolean headClosed;
    public Map<String, String> headers;
    public String host;
    public final ByteBuffer inputBuffer;
    public boolean isProxyConfigured;
    public final ByteBuffer outputBuffer;
    public final ProxyConfiguration proxyConfiguration;
    public ProxyHandler proxyHandler;
    public Proxy.ProxyState proxyState;
    public boolean tailClosed;
    public a0 underlyingTransport;

    /* renamed from: com.microsoft.azure.proton.transport.proxy.impl.ProxyImpl$1  reason: invalid class name */
    public static /* synthetic */ class AnonymousClass1 {
        public static final /* synthetic */ int[] $SwitchMap$com$microsoft$azure$proton$transport$proxy$Proxy$ProxyState;
        public static final /* synthetic */ int[] $SwitchMap$com$microsoft$azure$proton$transport$proxy$ProxyAuthenticationType;

        /* JADX WARNING: Can't wrap try/catch for region: R(14:0|1|2|3|4|5|7|8|9|11|12|13|14|(3:15|16|18)) */
        /* JADX WARNING: Failed to process nested try/catch */
        /* JADX WARNING: Missing exception handler attribute for start block: B:13:0x0029 */
        /* JADX WARNING: Missing exception handler attribute for start block: B:15:0x0030 */
        /* JADX WARNING: Missing exception handler attribute for start block: B:3:0x000f */
        static {
            /*
                com.microsoft.azure.proton.transport.proxy.ProxyAuthenticationType[] r0 = com.microsoft.azure.proton.transport.proxy.ProxyAuthenticationType.values()
                int r0 = r0.length
                int[] r0 = new int[r0]
                $SwitchMap$com$microsoft$azure$proton$transport$proxy$ProxyAuthenticationType = r0
                r1 = 1
                r2 = 2
                com.microsoft.azure.proton.transport.proxy.ProxyAuthenticationType r3 = com.microsoft.azure.proton.transport.proxy.ProxyAuthenticationType.DIGEST     // Catch:{ NoSuchFieldError -> 0x000f }
                r0[r2] = r1     // Catch:{ NoSuchFieldError -> 0x000f }
            L_0x000f:
                int[] r0 = $SwitchMap$com$microsoft$azure$proton$transport$proxy$ProxyAuthenticationType     // Catch:{ NoSuchFieldError -> 0x0015 }
                com.microsoft.azure.proton.transport.proxy.ProxyAuthenticationType r3 = com.microsoft.azure.proton.transport.proxy.ProxyAuthenticationType.BASIC     // Catch:{ NoSuchFieldError -> 0x0015 }
                r0[r1] = r2     // Catch:{ NoSuchFieldError -> 0x0015 }
            L_0x0015:
                com.microsoft.azure.proton.transport.proxy.Proxy$ProxyState[] r0 = com.microsoft.azure.proton.transport.proxy.Proxy.ProxyState.values()
                int r0 = r0.length
                int[] r0 = new int[r0]
                $SwitchMap$com$microsoft$azure$proton$transport$proxy$Proxy$ProxyState = r0
                com.microsoft.azure.proton.transport.proxy.Proxy$ProxyState r3 = com.microsoft.azure.proton.transport.proxy.Proxy.ProxyState.PN_PROXY_CONNECTING     // Catch:{ NoSuchFieldError -> 0x0022 }
                r0[r1] = r1     // Catch:{ NoSuchFieldError -> 0x0022 }
            L_0x0022:
                r0 = 3
                int[] r1 = $SwitchMap$com$microsoft$azure$proton$transport$proxy$Proxy$ProxyState     // Catch:{ NoSuchFieldError -> 0x0029 }
                com.microsoft.azure.proton.transport.proxy.Proxy$ProxyState r3 = com.microsoft.azure.proton.transport.proxy.Proxy.ProxyState.PN_PROXY_CHALLENGE_RESPONDED     // Catch:{ NoSuchFieldError -> 0x0029 }
                r1[r0] = r2     // Catch:{ NoSuchFieldError -> 0x0029 }
            L_0x0029:
                int[] r1 = $SwitchMap$com$microsoft$azure$proton$transport$proxy$Proxy$ProxyState     // Catch:{ NoSuchFieldError -> 0x0030 }
                com.microsoft.azure.proton.transport.proxy.Proxy$ProxyState r3 = com.microsoft.azure.proton.transport.proxy.Proxy.ProxyState.PN_PROXY_NOT_STARTED     // Catch:{ NoSuchFieldError -> 0x0030 }
                r3 = 0
                r1[r3] = r0     // Catch:{ NoSuchFieldError -> 0x0030 }
            L_0x0030:
                int[] r0 = $SwitchMap$com$microsoft$azure$proton$transport$proxy$Proxy$ProxyState     // Catch:{ NoSuchFieldError -> 0x0037 }
                com.microsoft.azure.proton.transport.proxy.Proxy$ProxyState r1 = com.microsoft.azure.proton.transport.proxy.Proxy.ProxyState.PN_PROXY_CHALLENGE     // Catch:{ NoSuchFieldError -> 0x0037 }
                r1 = 4
                r0[r2] = r1     // Catch:{ NoSuchFieldError -> 0x0037 }
            L_0x0037:
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: com.microsoft.azure.proton.transport.proxy.impl.ProxyImpl.AnonymousClass1.<clinit>():void");
        }
    }

    public ProxyImpl() {
        this((ProxyConfiguration) null);
    }

    public void configure(String str, Map<String, String> map, ProxyHandler proxyHandler2, c0 c0Var) {
        this.host = str;
        this.headers = map;
        this.proxyHandler = proxyHandler2;
        this.underlyingTransport = (a0) c0Var;
        this.isProxyConfigured = true;
    }

    public ByteBuffer getInputBuffer() {
        return this.inputBuffer;
    }

    public boolean getIsHandshakeInProgress() {
        return this.isProxyConfigured && this.proxyState != Proxy.ProxyState.PN_PROXY_CONNECTED;
    }

    public Boolean getIsProxyConfigured() {
        return Boolean.valueOf(this.isProxyConfigured);
    }

    public ByteBuffer getOutputBuffer() {
        return this.outputBuffer;
    }

    public ProxyHandler getProxyHandler() {
        return this.proxyHandler;
    }

    public Map<String, String> getProxyRequestHeaders() {
        return this.headers;
    }

    public Proxy.ProxyState getProxyState() {
        return this.proxyState;
    }

    public c0 getUnderlyingTransport() {
        return this.underlyingTransport;
    }

    public l0 wrap(b0 b0Var, f0 f0Var) {
        return new ProxyTransportWrapper(b0Var, f0Var);
    }

    public void writeProxyRequest() {
        this.outputBuffer.clear();
        String createProxyRequest = this.proxyHandler.createProxyRequest(this.host, this.headers);
        if (LOGGER.a()) {
            LOGGER.a("Writing proxy request:{}{}", System.lineSeparator(), createProxyRequest);
        }
        this.outputBuffer.put(createProxyRequest.getBytes());
    }

    public ProxyImpl(ProxyConfiguration proxyConfiguration2) {
        this.tailClosed = false;
        this.headClosed = false;
        this.host = "";
        this.headers = null;
        this.proxyState = Proxy.ProxyState.PN_PROXY_NOT_STARTED;
        this.inputBuffer = ByteBuffer.allocate(8192);
        this.outputBuffer = ByteBuffer.allocate(8192);
        this.isProxyConfigured = false;
        this.proxyConfiguration = proxyConfiguration2;
    }

    public class ProxyTransportWrapper implements l0 {
        public final ByteBuffer head;
        public final b0 underlyingInput;
        public final f0 underlyingOutput;

        public ProxyTransportWrapper(b0 b0Var, f0 f0Var) {
            this.underlyingInput = b0Var;
            this.underlyingOutput = f0Var;
            this.head = ProxyImpl.this.outputBuffer.asReadOnlyBuffer();
        }

        private void closeTailProxyError(String str) {
            boolean unused = ProxyImpl.this.tailClosed = true;
            ProxyImpl.this.underlyingTransport.a(new k.a.b.a.d.d0(str));
        }

        /* JADX WARNING: Code restructure failed: missing block: B:22:0x005f, code lost:
            r0 = move-exception;
         */
        /* JADX WARNING: Code restructure failed: missing block: B:24:?, code lost:
            r2.close();
         */
        /* JADX WARNING: Code restructure failed: missing block: B:25:0x0064, code lost:
            r1 = move-exception;
         */
        /* JADX WARNING: Code restructure failed: missing block: B:26:0x0065, code lost:
            r5.addSuppressed(r1);
         */
        /* JADX WARNING: Code restructure failed: missing block: B:27:0x0068, code lost:
            throw r0;
         */
        /* Code decompiled incorrectly, please refer to instructions dump. */
        private java.util.Set<com.microsoft.azure.proton.transport.proxy.ProxyAuthenticationType> getAuthenticationTypes(java.lang.String r5) {
            /*
                r4 = this;
                java.lang.String r0 = "Proxy-Authenticate:"
                int r1 = r5.indexOf(r0)
                r2 = -1
                if (r1 != r2) goto L_0x000e
                java.util.Set r5 = java.util.Collections.emptySet()
                return r5
            L_0x000e:
                java.util.HashSet r1 = new java.util.HashSet
                r1.<init>()
                java.util.Scanner r2 = new java.util.Scanner
                r2.<init>(r5)
            L_0x0018:
                boolean r5 = r2.hasNextLine()     // Catch:{ all -> 0x005d }
                if (r5 == 0) goto L_0x0059
                java.lang.String r5 = r2.nextLine()     // Catch:{ all -> 0x005d }
                java.lang.String r5 = r5.trim()     // Catch:{ all -> 0x005d }
                boolean r3 = r5.startsWith(r0)     // Catch:{ all -> 0x005d }
                if (r3 != 0) goto L_0x002d
                goto L_0x0018
            L_0x002d:
                r3 = 19
                java.lang.String r5 = r5.substring(r3)     // Catch:{ all -> 0x005d }
                java.lang.String r5 = r5.trim()     // Catch:{ all -> 0x005d }
                java.util.Locale r3 = java.util.Locale.ROOT     // Catch:{ all -> 0x005d }
                java.lang.String r5 = r5.toLowerCase(r3)     // Catch:{ all -> 0x005d }
                java.lang.String r3 = com.microsoft.azure.proton.transport.proxy.impl.Constants.BASIC_LOWERCASE     // Catch:{ all -> 0x005d }
                boolean r3 = r5.startsWith(r3)     // Catch:{ all -> 0x005d }
                if (r3 == 0) goto L_0x004b
                com.microsoft.azure.proton.transport.proxy.ProxyAuthenticationType r5 = com.microsoft.azure.proton.transport.proxy.ProxyAuthenticationType.BASIC     // Catch:{ all -> 0x005d }
                r1.add(r5)     // Catch:{ all -> 0x005d }
                goto L_0x0018
            L_0x004b:
                java.lang.String r3 = com.microsoft.azure.proton.transport.proxy.impl.Constants.DIGEST_LOWERCASE     // Catch:{ all -> 0x005d }
                boolean r5 = r5.startsWith(r3)     // Catch:{ all -> 0x005d }
                if (r5 == 0) goto L_0x0018
                com.microsoft.azure.proton.transport.proxy.ProxyAuthenticationType r5 = com.microsoft.azure.proton.transport.proxy.ProxyAuthenticationType.DIGEST     // Catch:{ all -> 0x005d }
                r1.add(r5)     // Catch:{ all -> 0x005d }
                goto L_0x0018
            L_0x0059:
                r2.close()
                return r1
            L_0x005d:
                r5 = move-exception
                throw r5     // Catch:{ all -> 0x005f }
            L_0x005f:
                r0 = move-exception
                r2.close()     // Catch:{ all -> 0x0064 }
                goto L_0x0068
            L_0x0064:
                r1 = move-exception
                r5.addSuppressed(r1)
            L_0x0068:
                throw r0
            */
            throw new UnsupportedOperationException("Method not decompiled: com.microsoft.azure.proton.transport.proxy.impl.ProxyImpl.ProxyTransportWrapper.getAuthenticationTypes(java.lang.String):java.util.Set");
        }

        private ProxyChallengeProcessor getChallengeProcessor(String str, String str2, Set<ProxyAuthenticationType> set) {
            if (set.contains(ProxyAuthenticationType.DIGEST)) {
                return getChallengeProcessor(str, str2, ProxyAuthenticationType.DIGEST);
            }
            if (set.contains(ProxyAuthenticationType.BASIC)) {
                return getChallengeProcessor(str, str2, ProxyAuthenticationType.BASIC);
            }
            return null;
        }

        public int capacity() {
            if (!ProxyImpl.this.getIsHandshakeInProgress()) {
                return this.underlyingInput.capacity();
            }
            if (ProxyImpl.this.tailClosed) {
                return -1;
            }
            return ProxyImpl.this.inputBuffer.remaining();
        }

        public void close_head() {
            boolean unused = ProxyImpl.this.headClosed = true;
            this.underlyingOutput.close_head();
        }

        public void close_tail() {
            boolean unused = ProxyImpl.this.tailClosed = true;
            if (ProxyImpl.this.getIsHandshakeInProgress()) {
                boolean unused2 = ProxyImpl.this.headClosed = true;
            }
            this.underlyingInput.close_tail();
        }

        public ByteBuffer head() {
            if (!ProxyImpl.this.getIsHandshakeInProgress()) {
                return this.underlyingOutput.head();
            }
            int ordinal = ProxyImpl.this.proxyState.ordinal();
            if (ordinal == 1 || ordinal == 3) {
                return this.head;
            }
            return this.underlyingOutput.head();
        }

        public int pending() {
            if (!ProxyImpl.this.getIsHandshakeInProgress()) {
                return this.underlyingOutput.pending();
            }
            int ordinal = ProxyImpl.this.proxyState.ordinal();
            if (ordinal != 0) {
                if (ordinal != 1) {
                    if (ordinal != 2) {
                        if (ordinal != 3) {
                            return -1;
                        }
                    } else if (ProxyImpl.this.outputBuffer.position() != 0) {
                        return ProxyImpl.this.outputBuffer.position();
                    } else {
                        Proxy.ProxyState unused = ProxyImpl.this.proxyState = Proxy.ProxyState.PN_PROXY_CHALLENGE_RESPONDED;
                        ProxyImpl.this.writeProxyRequest();
                        this.head.limit(ProxyImpl.this.outputBuffer.position());
                        if (!ProxyImpl.this.headClosed) {
                            return ProxyImpl.this.outputBuffer.position();
                        }
                        Proxy.ProxyState unused2 = ProxyImpl.this.proxyState = Proxy.ProxyState.PN_PROXY_FAILED;
                        return -1;
                    }
                }
                if (!ProxyImpl.this.headClosed || ProxyImpl.this.outputBuffer.position() != 0) {
                    return ProxyImpl.this.outputBuffer.position();
                }
                Proxy.ProxyState unused3 = ProxyImpl.this.proxyState = Proxy.ProxyState.PN_PROXY_FAILED;
                return -1;
            } else if (ProxyImpl.this.outputBuffer.position() != 0) {
                return ProxyImpl.this.outputBuffer.position();
            } else {
                Proxy.ProxyState unused4 = ProxyImpl.this.proxyState = Proxy.ProxyState.PN_PROXY_CONNECTING;
                ProxyImpl.this.writeProxyRequest();
                this.head.limit(ProxyImpl.this.outputBuffer.position());
                if (!ProxyImpl.this.headClosed) {
                    return ProxyImpl.this.outputBuffer.position();
                }
                Proxy.ProxyState unused5 = ProxyImpl.this.proxyState = Proxy.ProxyState.PN_PROXY_FAILED;
                return -1;
            }
        }

        public void pop(int i2) {
            if (ProxyImpl.this.getIsHandshakeInProgress()) {
                int ordinal = ProxyImpl.this.proxyState.ordinal();
                if (ordinal != 1 && ordinal != 3) {
                    this.underlyingOutput.pop(i2);
                } else if (ProxyImpl.this.outputBuffer.position() != 0) {
                    ProxyImpl.this.outputBuffer.flip();
                    ProxyImpl.this.outputBuffer.position(i2);
                    ProxyImpl.this.outputBuffer.compact();
                    this.head.position(0);
                    this.head.limit(ProxyImpl.this.outputBuffer.position());
                } else {
                    this.underlyingOutput.pop(i2);
                }
            } else {
                this.underlyingOutput.pop(i2);
            }
        }

        public int position() {
            if (!ProxyImpl.this.getIsHandshakeInProgress()) {
                return this.underlyingInput.position();
            }
            if (ProxyImpl.this.tailClosed) {
                return -1;
            }
            return ProxyImpl.this.inputBuffer.position();
        }

        public void process() {
            ProxyChallengeProcessor proxyChallengeProcessor;
            if (!ProxyImpl.this.getIsHandshakeInProgress()) {
                this.underlyingInput.process();
                return;
            }
            int ordinal = ProxyImpl.this.proxyState.ordinal();
            if (ordinal == 1) {
                ProxyImpl.this.inputBuffer.flip();
                ProxyHandler.ProxyResponseResult validateProxyResponse = ProxyImpl.this.proxyHandler.validateProxyResponse(ProxyImpl.this.inputBuffer);
                ProxyImpl.this.inputBuffer.compact();
                ProxyImpl.this.inputBuffer.clear();
                if (!validateProxyResponse.getIsSuccess().booleanValue()) {
                    String error = validateProxyResponse.getError();
                    Set<ProxyAuthenticationType> authenticationTypes = getAuthenticationTypes(error);
                    if (ProxyImpl.this.proxyConfiguration == null || authenticationTypes.contains(ProxyImpl.this.proxyConfiguration.authentication())) {
                        if (ProxyImpl.this.proxyConfiguration != null) {
                            proxyChallengeProcessor = getChallengeProcessor(ProxyImpl.this.host, error, ProxyImpl.this.proxyConfiguration.authentication());
                        } else {
                            proxyChallengeProcessor = getChallengeProcessor(ProxyImpl.this.host, error, authenticationTypes);
                        }
                        if (proxyChallengeProcessor != null) {
                            Proxy.ProxyState unused = ProxyImpl.this.proxyState = Proxy.ProxyState.PN_PROXY_CHALLENGE;
                            Map unused2 = ProxyImpl.this.headers = proxyChallengeProcessor.getHeader();
                            return;
                        }
                        closeTailProxyError(a.b(ProxyImpl.PROXY_CONNECT_FAILED, error));
                        return;
                    }
                    if (ProxyImpl.LOGGER.f()) {
                        ProxyImpl.LOGGER.d("Proxy authentication required. User configured: '{}', but supported proxy authentication methods are: {}", ProxyImpl.this.proxyConfiguration.authentication(), authenticationTypes.stream().map(d.a).collect(Collectors.joining(",")));
                    }
                    closeTailProxyError(a.b("User configuration error. Using non-matching proxy authentication.Proxy connect request failed with error: ", error));
                } else if (ProxyImpl.this.proxyConfiguration == null || ProxyImpl.this.proxyConfiguration.authentication() == ProxyAuthenticationType.NONE) {
                    Proxy.ProxyState unused3 = ProxyImpl.this.proxyState = Proxy.ProxyState.PN_PROXY_CONNECTED;
                } else {
                    if (ProxyImpl.LOGGER.f()) {
                        ProxyImpl.LOGGER.a("ProxyConfiguration mismatch. User configured: '{}', but authentication is not required", (Object) ProxyImpl.this.proxyConfiguration.authentication());
                    }
                    closeTailProxyError(ProxyImpl.PROXY_CONNECT_USER_ERROR);
                }
            } else if (ordinal != 3) {
                this.underlyingInput.process();
            } else {
                ProxyImpl.this.inputBuffer.flip();
                ProxyHandler.ProxyResponseResult validateProxyResponse2 = ProxyImpl.this.proxyHandler.validateProxyResponse(ProxyImpl.this.inputBuffer);
                ProxyImpl.this.inputBuffer.compact();
                if (validateProxyResponse2.getIsSuccess().booleanValue()) {
                    Proxy.ProxyState unused4 = ProxyImpl.this.proxyState = Proxy.ProxyState.PN_PROXY_CONNECTED;
                    return;
                }
                StringBuilder a = a.a(ProxyImpl.PROXY_CONNECT_FAILED);
                a.append(validateProxyResponse2.getError());
                closeTailProxyError(a.toString());
            }
        }

        public ByteBuffer tail() {
            if (ProxyImpl.this.getIsHandshakeInProgress()) {
                return ProxyImpl.this.inputBuffer;
            }
            return this.underlyingInput.tail();
        }

        private ProxyChallengeProcessor getChallengeProcessor(String str, String str2, ProxyAuthenticationType proxyAuthenticationType) {
            ProxyAuthenticator proxyAuthenticator = ProxyImpl.this.proxyConfiguration != null ? new ProxyAuthenticator(ProxyImpl.this.proxyConfiguration) : new ProxyAuthenticator();
            int ordinal = proxyAuthenticationType.ordinal();
            if (ordinal == 1) {
                return new BasicProxyChallengeProcessorImpl(str, proxyAuthenticator);
            }
            if (ordinal != 2) {
                return null;
            }
            return new DigestProxyChallengeProcessorImpl(str, str2, proxyAuthenticator);
        }
    }
}
