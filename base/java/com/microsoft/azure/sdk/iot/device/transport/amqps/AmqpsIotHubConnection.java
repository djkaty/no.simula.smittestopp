package com.microsoft.azure.sdk.iot.device.transport.amqps;

import com.microsoft.appcenter.analytics.channel.SessionTracker;
import com.microsoft.azure.proton.transport.proxy.ProxyAuthenticationType;
import com.microsoft.azure.proton.transport.proxy.ProxyConfiguration;
import com.microsoft.azure.proton.transport.proxy.impl.ProxyHandlerImpl;
import com.microsoft.azure.proton.transport.proxy.impl.ProxyImpl;
import com.microsoft.azure.proton.transport.ws.WebSocketHandler;
import com.microsoft.azure.proton.transport.ws.impl.WebSocketImpl;
import com.microsoft.azure.sdk.iot.deps.transport.amqp.ErrorLoggingBaseHandler;
import com.microsoft.azure.sdk.iot.device.DeviceClientConfig;
import com.microsoft.azure.sdk.iot.device.DeviceTwin.DeviceOperations;
import com.microsoft.azure.sdk.iot.device.IotHubMessageResult;
import com.microsoft.azure.sdk.iot.device.IotHubStatusCode;
import com.microsoft.azure.sdk.iot.device.Message;
import com.microsoft.azure.sdk.iot.device.MessageType;
import com.microsoft.azure.sdk.iot.device.ProxySettings;
import com.microsoft.azure.sdk.iot.device.auth.IotHubSasTokenAuthenticationProvider;
import com.microsoft.azure.sdk.iot.device.exceptions.IotHubServiceException;
import com.microsoft.azure.sdk.iot.device.exceptions.TransportException;
import com.microsoft.azure.sdk.iot.device.transport.IotHubConnectionStatus;
import com.microsoft.azure.sdk.iot.device.transport.IotHubListener;
import com.microsoft.azure.sdk.iot.device.transport.IotHubTransportConnection;
import com.microsoft.azure.sdk.iot.device.transport.IotHubTransportMessage;
import com.microsoft.azure.sdk.iot.device.transport.ReconnectionNotifier;
import com.microsoft.azure.sdk.iot.device.transport.amqps.AmqpsMessage;
import java.io.IOException;
import java.util.Map;
import java.util.Queue;
import java.util.UUID;
import java.util.concurrent.Callable;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.ConcurrentLinkedQueue;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.TimeUnit;
import k.a.b.a.b.k.a;
import k.a.b.a.b.k.q;
import k.a.b.a.b.k.r;
import k.a.b.a.b.k.s;
import k.a.b.a.b.n.j;
import k.a.b.a.d.c0;
import k.a.b.a.d.e;
import k.a.b.a.d.g0.g;
import k.a.b.a.d.h;
import k.a.b.a.d.l;
import k.a.b.a.d.m;
import k.a.b.a.d.n;
import k.a.b.a.d.t;
import k.a.b.a.d.x;
import k.a.b.a.g.d;
import k.a.b.a.g.f;
import k.f.b;
import k.f.c;

public final class AmqpsIotHubConnection extends ErrorLoggingBaseHandler implements IotHubTransportConnection {
    public static final int AMQP_PORT = 5671;
    public static final int AMQP_WEB_SOCKET_PORT = 443;
    public static final String APPLICATION_PROPERTY_STATUS_CODE = "status-code";
    public static final String APPLICATION_PROPERTY_STATUS_DESCRIPTION = "status-description";
    public static final int CBS_LINK_COUNT = 2;
    public static final int MAX_MESSAGES_TO_SEND_PER_CALLBACK = 1000;
    public static final int MAX_WAIT_TO_CLOSE_CONNECTION = 60000;
    public static final int MAX_WAIT_TO_OPEN_CBS_LINKS = 20000;
    public static final int MAX_WAIT_TO_OPEN_WORKER_LINKS = 60000;
    public static final int MAX_WAIT_TO_TERMINATE_EXECUTOR = 30;
    public static final int REACTOR_COUNT = 1;
    public static final int SEND_MESSAGES_PERIOD_MILLIS = 50;
    public static final int WEBSOCKET_PORT = 443;
    public static final String WEBSOCKET_QUERY = "iothub-no-client-cert=true";
    public static final String WEB_SOCKET_PATH = "/$iothub/websocket";
    public static final String WEB_SOCKET_SUB_PROTOCOL = "AMQPWSB10";
    public static final b log = c.a((Class<?>) AmqpsIotHubConnection.class);
    public AmqpsSessionManager amqpsSessionManager;
    public CountDownLatch authenticationLinkOpenLatch;
    public CountDownLatch cbsLinkAuthorizedLatch;
    public CountDownLatch closeReactorLatch;
    public k.a.b.a.d.c connection;
    public String connectionId;
    public DeviceClientConfig deviceClientConfig;
    public ExecutorService executorService;
    public String hostName;
    public final Map<Integer, Message> inProgressMessages = new ConcurrentHashMap();
    public boolean isAuthenticated;
    public IotHubListener listener;
    public Queue<Message> messagesToSend = new ConcurrentLinkedQueue();
    public d reactor;
    public boolean reconnectionScheduled = false;
    public AmqpSasTokenRenewalHandler sasTokenRenewalHandler;
    public TransportException savedException;
    public final Map<Message, AmqpsMessage> sendAckMessages = new ConcurrentHashMap();
    public IotHubConnectionStatus state;
    public final Boolean useWebSockets;
    public CountDownLatch workerLinksOpenLatch;

    /* renamed from: com.microsoft.azure.sdk.iot.device.transport.amqps.AmqpsIotHubConnection$1  reason: invalid class name */
    public static /* synthetic */ class AnonymousClass1 {
        public static final /* synthetic */ int[] $SwitchMap$com$microsoft$azure$sdk$iot$device$IotHubMessageResult;
        public static final /* synthetic */ int[] $SwitchMap$com$microsoft$azure$sdk$iot$device$MessageType;

        /* JADX WARNING: Can't wrap try/catch for region: R(12:0|(2:1|2)|3|(2:5|6)|7|9|10|11|12|13|14|16) */
        /* JADX WARNING: Can't wrap try/catch for region: R(13:0|1|2|3|(2:5|6)|7|9|10|11|12|13|14|16) */
        /* JADX WARNING: Code restructure failed: missing block: B:17:?, code lost:
            return;
         */
        /* JADX WARNING: Failed to process nested try/catch */
        /* JADX WARNING: Missing exception handler attribute for start block: B:11:0x0024 */
        /* JADX WARNING: Missing exception handler attribute for start block: B:13:0x002a */
        static {
            /*
                com.microsoft.azure.sdk.iot.device.MessageType[] r0 = com.microsoft.azure.sdk.iot.device.MessageType.values()
                int r0 = r0.length
                int[] r0 = new int[r0]
                $SwitchMap$com$microsoft$azure$sdk$iot$device$MessageType = r0
                r1 = 3
                r2 = 1
                com.microsoft.azure.sdk.iot.device.MessageType r3 = com.microsoft.azure.sdk.iot.device.MessageType.DEVICE_METHODS     // Catch:{ NoSuchFieldError -> 0x000f }
                r0[r1] = r2     // Catch:{ NoSuchFieldError -> 0x000f }
            L_0x000f:
                r0 = 2
                int[] r3 = $SwitchMap$com$microsoft$azure$sdk$iot$device$MessageType     // Catch:{ NoSuchFieldError -> 0x0017 }
                com.microsoft.azure.sdk.iot.device.MessageType r4 = com.microsoft.azure.sdk.iot.device.MessageType.DEVICE_TWIN     // Catch:{ NoSuchFieldError -> 0x0017 }
                r4 = 4
                r3[r4] = r0     // Catch:{ NoSuchFieldError -> 0x0017 }
            L_0x0017:
                com.microsoft.azure.sdk.iot.device.IotHubMessageResult[] r3 = com.microsoft.azure.sdk.iot.device.IotHubMessageResult.values()
                int r3 = r3.length
                int[] r3 = new int[r3]
                $SwitchMap$com$microsoft$azure$sdk$iot$device$IotHubMessageResult = r3
                com.microsoft.azure.sdk.iot.device.IotHubMessageResult r4 = com.microsoft.azure.sdk.iot.device.IotHubMessageResult.ABANDON     // Catch:{ NoSuchFieldError -> 0x0024 }
                r3[r2] = r2     // Catch:{ NoSuchFieldError -> 0x0024 }
            L_0x0024:
                int[] r2 = $SwitchMap$com$microsoft$azure$sdk$iot$device$IotHubMessageResult     // Catch:{ NoSuchFieldError -> 0x002a }
                com.microsoft.azure.sdk.iot.device.IotHubMessageResult r3 = com.microsoft.azure.sdk.iot.device.IotHubMessageResult.REJECT     // Catch:{ NoSuchFieldError -> 0x002a }
                r2[r0] = r0     // Catch:{ NoSuchFieldError -> 0x002a }
            L_0x002a:
                int[] r0 = $SwitchMap$com$microsoft$azure$sdk$iot$device$IotHubMessageResult     // Catch:{ NoSuchFieldError -> 0x0031 }
                com.microsoft.azure.sdk.iot.device.IotHubMessageResult r2 = com.microsoft.azure.sdk.iot.device.IotHubMessageResult.COMPLETE     // Catch:{ NoSuchFieldError -> 0x0031 }
                r2 = 0
                r0[r2] = r1     // Catch:{ NoSuchFieldError -> 0x0031 }
            L_0x0031:
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: com.microsoft.azure.sdk.iot.device.transport.amqps.AmqpsIotHubConnection.AnonymousClass1.<clinit>():void");
        }
    }

    public class ReactorRunner implements Callable {
        public static final String THREAD_NAME = "azure-iot-sdk-ReactorRunner";
        public String connectionId;
        public final IotHubReactor iotHubReactor;
        public final IotHubListener listener;

        public ReactorRunner(IotHubReactor iotHubReactor2, IotHubListener iotHubListener, String str) {
            this.listener = iotHubListener;
            this.iotHubReactor = iotHubReactor2;
            this.connectionId = str;
        }

        public Object call() {
            try {
                Thread.currentThread().setName("azure-iot-sdk-ReactorRunner");
                this.iotHubReactor.run();
                return null;
            } catch (m e2) {
                this.listener.onConnectionLost(new TransportException((Throwable) e2), this.connectionId);
                return null;
            }
        }
    }

    public AmqpsIotHubConnection(DeviceClientConfig deviceClientConfig2) {
        if (deviceClientConfig2 == null) {
            throw new IllegalArgumentException("The DeviceClientConfig cannot be null.");
        } else if (deviceClientConfig2.getIotHubHostname() == null || deviceClientConfig2.getIotHubHostname().length() == 0) {
            throw new IllegalArgumentException("hostName cannot be null or empty.");
        } else if (deviceClientConfig2.getDeviceId() == null || deviceClientConfig2.getDeviceId().length() == 0) {
            throw new IllegalArgumentException("deviceID cannot be null or empty.");
        } else if (deviceClientConfig2.getIotHubName() == null || deviceClientConfig2.getIotHubName().length() == 0) {
            throw new IllegalArgumentException("hubName cannot be null or empty.");
        } else {
            this.deviceClientConfig = deviceClientConfig2;
            Boolean valueOf = Boolean.valueOf(deviceClientConfig2.isUseWebsocket());
            this.useWebSockets = valueOf;
            int i2 = 443;
            if (valueOf.booleanValue()) {
                this.hostName = String.format("%s:%d", new Object[]{chooseHostname(), 443});
            } else {
                this.hostName = String.format("%s:%d", new Object[]{chooseHostname(), 5671});
            }
            add(new k.a.b.a.g.c());
            add(new k.a.b.a.g.b());
            this.state = IotHubConnectionStatus.DISCONNECTED;
            this.amqpsSessionManager = new AmqpsSessionManager(this.deviceClientConfig);
            log.d("AmqpsIotHubConnection object is created successfully and will use port {}", (Object) Integer.valueOf(!this.useWebSockets.booleanValue() ? 5671 : i2));
        }
    }

    private void addProxyLayer(c0 c0Var, String str) {
        ProxyImpl proxyImpl;
        ProxySettings proxySettings = this.deviceClientConfig.getProxySettings();
        if (proxySettings.getUsername() == null || proxySettings.getPassword() == null) {
            log.e("No proxy username and password will be used amqp proxy configuration");
            proxyImpl = new ProxyImpl();
        } else {
            log.e("Adding proxy username and password to amqp proxy configuration");
            proxyImpl = new ProxyImpl(new ProxyConfiguration(ProxyAuthenticationType.BASIC, proxySettings.getProxy(), proxySettings.getUsername(), new String(proxySettings.getPassword())));
        }
        proxyImpl.configure(str, (Map<String, String>) null, new ProxyHandlerImpl(), c0Var);
        ((k.a.b.a.d.g0.c0) c0Var).a(proxyImpl);
    }

    private void addWebsocketLayer(c0 c0Var) {
        WebSocketImpl webSocketImpl = new WebSocketImpl();
        webSocketImpl.configure(this.hostName, "/$iothub/websocket", WEBSOCKET_QUERY, 443, "AMQPWSB10", (Map<String, String>) null, (WebSocketHandler) null);
        ((k.a.b.a.d.g0.c0) c0Var).a(webSocketImpl);
    }

    private String chooseHostname() {
        String gatewayHostname = this.deviceClientConfig.getGatewayHostname();
        if (gatewayHostname == null || gatewayHostname.isEmpty()) {
            log.b("No gateway hostname was present in config, connecting directly to hub");
            return this.deviceClientConfig.getIotHubHostname();
        }
        log.b("Gateway hostname was present in config, connecting to gateway rather than directly to hub");
        return gatewayHostname;
    }

    private void closeAsync() {
        log.e("CloseAsync called on amqp connection");
        AmqpsSessionManager amqpsSessionManager2 = this.amqpsSessionManager;
        if (amqpsSessionManager2 != null) {
            amqpsSessionManager2.closeNow();
        }
        k.a.b.a.d.c cVar = this.connection;
        if (cVar != null) {
            cVar.close();
        }
        d dVar = this.reactor;
        if (dVar != null) {
            dVar.stop();
        }
        log.e("Proton reactor has been stopped");
    }

    private void closeConnectionWithException(String str, boolean z) {
        TransportException transportException = new TransportException(str);
        transportException.setRetryable(z);
        log.e(str, (Throwable) transportException);
        close();
        throw transportException;
    }

    private d createReactor() {
        try {
            if (this.deviceClientConfig.getAuthenticationType() == DeviceClientConfig.AuthType.X509_CERTIFICATE) {
                f fVar = new f();
                fVar.a = false;
                return e.c.a.a.b.l.c.a(fVar, this);
            }
            l[] lVarArr = {this};
            k.a.b.a.g.i.d dVar = new k.a.b.a.g.i.d(new k.a.b.a.g.i.c(), new f());
            for (int i2 = 0; i2 < 1; i2++) {
                dVar.F().add(lVarArr[i2]);
            }
            return dVar;
        } catch (IOException e2) {
            throw new TransportException("Could not create Proton reactor", e2);
        }
    }

    private void executorServicesCleanup() {
        if (this.executorService != null) {
            log.e("Shutdown of executor service has started");
            this.executorService.shutdown();
            try {
                if (!this.executorService.awaitTermination(30, TimeUnit.SECONDS)) {
                    this.executorService.shutdownNow();
                    if (!this.executorService.awaitTermination(30, TimeUnit.SECONDS)) {
                        log.e("Pool did not terminate");
                    }
                }
                this.executorService = null;
                log.e("Shutdown of executor service completed");
            } catch (InterruptedException e2) {
                log.b("Interrupted while cleaning up executor services", (Throwable) e2);
                this.executorService.shutdownNow();
                this.executorService = null;
                throw new TransportException("Waited too long for the connection to close.", e2);
            }
        }
    }

    private j getErrorConditionFromEndpoint(k.a.b.a.d.f fVar) {
        return (fVar.L() == null || fVar.L().a == null) ? fVar.H() : fVar.L();
    }

    private TransportException getTransportExceptionFromEvent(h hVar) {
        g gVar = (g) hVar;
        TransportException transportExceptionFromProtonEndpoints = getTransportExceptionFromProtonEndpoints(gVar.o(), gVar.i(), gVar.U(), gVar.l(), gVar.T(), gVar.G());
        if (transportExceptionFromProtonEndpoints != null) {
            return transportExceptionFromProtonEndpoints;
        }
        TransportException transportException = new TransportException("Unknown transport exception occurred");
        transportException.setRetryable(true);
        return transportException;
    }

    private TransportException getTransportExceptionFromProtonEndpoints(k.a.b.a.d.f... fVarArr) {
        j errorConditionFromEndpoint;
        k.a.b.a.b.f fVar;
        for (k.a.b.a.d.f fVar2 : fVarArr) {
            if (fVar2 != null && (errorConditionFromEndpoint = getErrorConditionFromEndpoint(fVar2)) != null && (fVar = errorConditionFromEndpoint.a) != null) {
                return AmqpsExceptionTranslator.convertToAmqpException(fVar.x, errorConditionFromEndpoint.b);
            }
        }
        return null;
    }

    private void handleCbsMessage(AmqpsMessage amqpsMessage) {
        log.e("Received message with correlation id {} was a cbs message, handling...", amqpsMessage.getCorrelationId());
        if (amqpsMessage.getApplicationProperties() == null || amqpsMessage.getApplicationProperties().a == null) {
            log.d("CBS message had no application properties, so it was ignored");
            return;
        }
        Map<String, Object> map = amqpsMessage.getApplicationProperties().a;
        if (map.containsKey(APPLICATION_PROPERTY_STATUS_CODE)) {
            String obj = map.get(APPLICATION_PROPERTY_STATUS_CODE).toString();
            try {
                IotHubStatusCode iotHubStatusCode = IotHubStatusCode.getIotHubStatusCode(Integer.valueOf(obj).intValue());
                if (iotHubStatusCode == IotHubStatusCode.OK || iotHubStatusCode == IotHubStatusCode.OK_EMPTY) {
                    this.cbsLinkAuthorizedLatch.countDown();
                    if (this.state != IotHubConnectionStatus.CONNECTED) {
                        log.e("CBS link received 200, one connection has been authorized");
                    } else {
                        log.e("CBS link received 200, one connection has been re-authorized");
                    }
                    if (this.cbsLinkAuthorizedLatch.getCount() <= 0) {
                        if (this.state != IotHubConnectionStatus.CONNECTED) {
                            log.b("All CBS links have received a 200, opening worker links");
                        }
                        this.isAuthenticated = true;
                        this.amqpsSessionManager.openWorkerLinks();
                        return;
                    }
                    return;
                }
                String str = "";
                if (map.containsKey(APPLICATION_PROPERTY_STATUS_DESCRIPTION)) {
                    str = (String) map.get(APPLICATION_PROPERTY_STATUS_DESCRIPTION);
                }
                IotHubServiceException connectionStatusException = IotHubStatusCode.getConnectionStatusException(iotHubStatusCode, str);
                this.savedException = connectionStatusException;
                log.e("CBS authentication was rejected by service", (Throwable) connectionStatusException);
                releaseLatch(this.cbsLinkAuthorizedLatch);
            } catch (NumberFormatException unused) {
                this.savedException = new TransportException("Encountered message from service with invalid status code value");
                log.a("status code received from service on cbs link could not be parsed to integer {}", (Object) obj);
            }
        } else {
            log.d("CBS message had no status code application property, so it was ignored");
        }
    }

    private void handleCloudToDeviceMessage(AmqpsMessage amqpsMessage) {
        log.e("Handling a received message with amqp message correlation id {}", amqpsMessage.getCorrelationId());
        AmqpsConvertFromProtonReturnValue convertFromProton = convertFromProton(amqpsMessage, amqpsMessage.getDeviceClientConfig());
        if (convertFromProton == null) {
            if (amqpsMessage.getAmqpsMessageType() == MessageType.CBS_AUTHENTICATION) {
                handleCbsMessage(amqpsMessage);
            } else {
                log.c("No handler found for received message with amqp correlation id {}, ignoring it", amqpsMessage.getCorrelationId());
            }
        } else if (convertFromProton.getMessageCallback() != null) {
            IotHubTransportMessage message = convertFromProton.getMessage();
            message.setMessageCallback(convertFromProton.getMessageCallback());
            message.setMessageCallbackContext(convertFromProton.getMessageContext());
            log.d("Adding received message to the amqp message map to be acknowledged later ({})", (Object) message);
            this.sendAckMessages.put(message, amqpsMessage);
            this.listener.onMessageReceived(message, (Throwable) null);
        } else {
            log.d("Callback is not defined therefore response to IoT Hub cannot be generated. All received messages will be removed from receive message queue");
            throw new TransportException("callback is not defined");
        }
    }

    private void initializeStateLatches(int i2) {
        this.closeReactorLatch = new CountDownLatch(1);
        if (this.deviceClientConfig.getAuthenticationProvider() instanceof IotHubSasTokenAuthenticationProvider) {
            log.d("Initializing authentication link latch count to {}", (Object) 2);
            this.authenticationLinkOpenLatch = new CountDownLatch(2);
        } else {
            log.e("Initializing authentication link latch count to 0");
            this.authenticationLinkOpenLatch = new CountDownLatch(0);
        }
        int expectedWorkerLinkCount = this.amqpsSessionManager.getExpectedWorkerLinkCount();
        this.workerLinksOpenLatch = new CountDownLatch(expectedWorkerLinkCount);
        log.d("Initializing worker link latch count to {}", (Object) Integer.valueOf(expectedWorkerLinkCount));
        this.cbsLinkAuthorizedLatch = new CountDownLatch(i2);
        log.d("Initializing authentication links authorized latch count to {}", (Object) Integer.valueOf(i2));
    }

    private void openAsync() {
        log.e("OpenAsnyc called for AMQP connection");
        if (this.reactor == null) {
            this.reactor = createReactor();
        }
        if (this.executorService == null) {
            this.executorService = Executors.newFixedThreadPool(1);
        }
        this.executorService.submit(new ReactorRunner(new IotHubReactor(this.reactor), this.listener, this.connectionId));
    }

    private int processMessage(Message message) {
        try {
            AmqpsConvertToProtonReturnValue convertToProton = convertToProton(message);
            if (convertToProton == null) {
                log.c("No handler found for message conversion! Abandoning message ({})", (Object) message);
                return -1;
            }
            try {
                log.e("Sending message over amqp ({})", (Object) message);
                int intValue = sendMessage(convertToProton, message.getConnectionDeviceId()).intValue();
                if (intValue != -1) {
                    log.d("Amqp message was sent, waiting for ack ({})", (Object) message);
                    this.inProgressMessages.put(Integer.valueOf(intValue), message);
                    log.e("Adding amqp delivery tag {} to in progress messages ({})", Integer.valueOf(intValue), message);
                } else {
                    log.d("Amqp message failed to send, adding it back to messages to send queue ({})", (Object) message);
                    this.messagesToSend.add(message);
                }
                return intValue;
            } catch (TransportException e2) {
                if (e2.isRetryable()) {
                    log.b("Encountered exception while sending amqp message, retrying ({})", message, e2);
                    this.messagesToSend.add(message);
                } else {
                    log.d("Encountered non-retryable exception while sending amqp message, abandoning message ({})", message, e2);
                }
                return -1;
            }
        } catch (TransportException e3) {
            if (e3.isRetryable()) {
                log.b("Encountered exception while converting message to proton message, retrying ({})", message, e3);
                this.messagesToSend.add(message);
            } else {
                log.d("Encountered non-retryable exception while converting message to proton message, not retryable so discarding message ({})", message, e3);
            }
            return -1;
        }
    }

    private void processOutgoingMessages() {
        Message poll = this.messagesToSend.poll();
        int i2 = 0;
        int i3 = 0;
        while (poll != null && i2 < 1000 && i3 >= 0) {
            if (!subscriptionChangeHandler(poll)) {
                i2++;
                i3 = processMessage(poll);
            }
            poll = this.messagesToSend.poll();
        }
        if (poll != null) {
            this.messagesToSend.add(poll);
        }
    }

    private void releaseLatch(CountDownLatch countDownLatch) {
        for (int i2 = 0; ((long) i2) < countDownLatch.getCount(); i2++) {
            countDownLatch.countDown();
        }
    }

    private void scheduleReconnection(Throwable th) {
        log.b("Amqp connection was closed, creating a thread to notify transport layer", th);
        if (!this.reconnectionScheduled) {
            this.reconnectionScheduled = true;
            ReconnectionNotifier.notifyDisconnectAsync(th, this.listener, this.connectionId);
        }
    }

    private Integer sendMessage(AmqpsConvertToProtonReturnValue amqpsConvertToProtonReturnValue, String str) {
        if (this.state == IotHubConnectionStatus.DISCONNECTED || amqpsConvertToProtonReturnValue == null) {
            log.e("Amqp connection is disconnected, rejecting attempt to send message with delivery tag -1");
            return -1;
        }
        return this.amqpsSessionManager.sendMessage(amqpsConvertToProtonReturnValue.getMessageImpl(), amqpsConvertToProtonReturnValue.getMessageType(), str);
    }

    private boolean subscriptionChangeHandler(Message message) {
        if (message.getMessageType() != null) {
            int ordinal = message.getMessageType().ordinal();
            if (ordinal != 3) {
                if (ordinal == 4) {
                    IotHubTransportMessage iotHubTransportMessage = (IotHubTransportMessage) message;
                    if (iotHubTransportMessage.getDeviceOperationType() != DeviceOperations.DEVICE_OPERATION_TWIN_UNSUBSCRIBE_DESIRED_PROPERTIES_REQUEST && iotHubTransportMessage.getDeviceOperationType() == DeviceOperations.DEVICE_OPERATION_TWIN_SUBSCRIBE_DESIRED_PROPERTIES_REQUEST) {
                        this.amqpsSessionManager.subscribeDeviceToMessageType(MessageType.DEVICE_TWIN, message.getConnectionDeviceId());
                        this.listener.onMessageSent(message, (Throwable) null);
                        return true;
                    }
                }
            } else if (((IotHubTransportMessage) message).getDeviceOperationType() == DeviceOperations.DEVICE_OPERATION_METHOD_SUBSCRIBE_REQUEST) {
                this.amqpsSessionManager.subscribeDeviceToMessageType(MessageType.DEVICE_METHODS, message.getConnectionDeviceId());
                this.listener.onMessageSent(message, (Throwable) null);
                return true;
            }
        }
        return false;
    }

    public void addDeviceOperationSession(DeviceClientConfig deviceClientConfig2) {
        if (deviceClientConfig2 != null) {
            this.amqpsSessionManager.addDeviceOperationSession(deviceClientConfig2);
            log.e("Added device to session list");
        }
    }

    public void authenticate() {
        log.e("Authenticate called on amqp connection");
        this.amqpsSessionManager.authenticate();
    }

    public void close() {
        log.b("Closing amqp connection...");
        closeAsync();
        try {
            this.closeReactorLatch.await(60000, TimeUnit.MILLISECONDS);
            executorServicesCleanup();
            log.e("Amqp connection closed successfully");
            this.state = IotHubConnectionStatus.DISCONNECTED;
        } catch (InterruptedException e2) {
            log.b("Interrupted while closing proton reactor", (Throwable) e2);
            throw new TransportException("Waited too long for the connection to close.", e2);
        }
    }

    public AmqpsConvertFromProtonReturnValue convertFromProton(AmqpsMessage amqpsMessage, DeviceClientConfig deviceClientConfig2) {
        return this.amqpsSessionManager.convertFromProton(amqpsMessage, deviceClientConfig2);
    }

    public AmqpsConvertToProtonReturnValue convertToProton(Message message) {
        return this.amqpsSessionManager.convertToProton(message);
    }

    public String getConnectionId() {
        return this.connectionId;
    }

    public void onConnectionBound(h hVar) {
        g gVar = (g) hVar;
        c0 l2 = gVar.U().l();
        if (l2 != null) {
            if (this.useWebSockets.booleanValue()) {
                addWebsocketLayer(l2);
            }
            try {
                this.amqpsSessionManager.onConnectionBound(l2);
            } catch (TransportException e2) {
                this.savedException = e2;
                log.e("Encountered an exception while reacting to onConnectionBound event within amqp session", (Throwable) e2);
            }
            if (this.deviceClientConfig.getProxySettings() != null) {
                log.b("Proxy settings set, adding amqp layer for proxy");
                addProxyLayer(l2, gVar.U().f());
            }
        }
    }

    public void onConnectionInit(h hVar) {
        k.a.b.a.d.c U = ((g) hVar).U();
        this.connection = U;
        U.c(this.hostName);
        this.connection.open();
        try {
            this.amqpsSessionManager.onConnectionInit(this.connection);
        } catch (TransportException e2) {
            this.savedException = e2;
            log.e("Encountered an exception while reacting to onConnectionInit within amqp session", (Throwable) e2);
        }
    }

    public void onConnectionUnbound(h hVar) {
        log.e("onConnectionUnbound event fired by proton, setting AMQP connection state to DISCONNECTED");
        this.state = IotHubConnectionStatus.DISCONNECTED;
    }

    public void onDelivery(h hVar) {
        AmqpsMessage amqpsMessage;
        TransportException transportException;
        k.a.b.a.b.f fVar;
        g gVar = (g) hVar;
        n G = gVar.G();
        if (G instanceof x) {
            e h2 = gVar.h();
            while (h2 != null && !h2.K() && h2.e() != null) {
                k.a.b.a.b.n.e e2 = h2.e();
                int intValue = Integer.valueOf(new String(h2.getTag())).intValue();
                if (!G.A().b().equalsIgnoreCase("$cbs")) {
                    log.d("Amqp delivery received that acknowledged a sent message with delivery tag {}", (Object) Integer.valueOf(intValue));
                    log.d("Checking if amqp in progress messages contains delivery tag {}", (Object) Integer.valueOf(intValue));
                    if (this.inProgressMessages.containsKey(Integer.valueOf(intValue))) {
                        log.d("Amqp in progress messages does contain delivery tag {}", (Object) Integer.valueOf(intValue));
                        Message remove = this.inProgressMessages.remove(Integer.valueOf(intValue));
                        if (e2 instanceof a) {
                            log.d("AMQP connection received Accepted acknowledgement for iot hub message ({})", (Object) remove);
                            this.listener.onMessageSent(remove, (Throwable) null);
                        } else if (e2 instanceof r) {
                            log.d("AMQP connection received Rejected acknowledgement for iot hub message  ({})", (Object) remove);
                            j jVar = ((r) e2).a;
                            if (jVar == null || (fVar = jVar.a) == null) {
                                transportException = new TransportException("IotHub rejected the message");
                            } else {
                                String str = fVar.x;
                                String str2 = jVar.b;
                                if (str2 == null) {
                                    str2 = "";
                                }
                                transportException = AmqpsExceptionTranslator.convertToAmqpException(str, str2);
                            }
                            this.listener.onMessageSent(this.inProgressMessages.remove(Integer.valueOf(intValue)), transportException);
                        } else if ((e2 instanceof k.a.b.a.b.k.n) || (e2 instanceof s) || (e2 instanceof q)) {
                            log.d("AMQP connection received Modified, Released or Received acknowledgement for iot hub message  ({})", (Object) remove);
                            TransportException transportException2 = new TransportException("IotHub responded to message with Modified, Received or Released; message needs to be re-delivered");
                            transportException2.setRetryable(true);
                            this.listener.onMessageSent(this.inProgressMessages.remove(Integer.valueOf(intValue)), transportException2);
                        }
                    } else {
                        log.c("Unable to correlate acknowledgement with delivery tag {} to a sent message, ignoring it", (Object) Integer.valueOf(intValue));
                        this.listener.onMessageReceived((IotHubTransportMessage) null, new TransportException("Received response from service about a message that this client did not send"));
                    }
                } else {
                    log.e("Amqp delivery received that acknowledged a sent authentication message");
                }
                h2.a();
                h2 = G.head();
            }
        } else if (G instanceof t) {
            try {
                log.e("Amqp delivery received on a receiver link, checking receiver links for delivered message");
                amqpsMessage = this.amqpsSessionManager.getMessageFromReceiverLink(G.getName());
            } catch (TransportException e3) {
                log.e("Failed to receive message from receiver link", (Throwable) e3);
                this.listener.onMessageReceived((IotHubTransportMessage) null, e3);
                amqpsMessage = null;
            }
            if (amqpsMessage != null) {
                try {
                    handleCloudToDeviceMessage(amqpsMessage);
                } catch (TransportException e4) {
                    this.listener.onMessageReceived((IotHubTransportMessage) null, e4);
                }
            } else {
                log.d("onDelivery called on receiver link, but no message was found on any receiver link");
            }
        }
    }

    public void onLinkInit(h hVar) {
        this.amqpsSessionManager.onLinkInit(((g) hVar).G());
    }

    public void onLinkRemoteClose(h hVar) {
        super.onLinkRemoteClose(hVar);
        g gVar = (g) hVar;
        this.amqpsSessionManager.onLinkRemoteClose(gVar.G());
        log.e("onLinkRemoteClose fired by proton, setting AMQP connection state as DISCONNECTED");
        this.state = IotHubConnectionStatus.DISCONNECTED;
        TransportException transportExceptionFromEvent = getTransportExceptionFromEvent(gVar);
        this.savedException = transportExceptionFromEvent;
        scheduleReconnection(transportExceptionFromEvent);
    }

    public void onLinkRemoteOpen(h hVar) {
        g gVar = (g) hVar;
        this.amqpsSessionManager.onLinkRemoteOpen(gVar.G());
        if (this.amqpsSessionManager.isAuthenticationOpened() && !this.isAuthenticated) {
            try {
                authenticate();
            } catch (TransportException e2) {
                this.savedException = e2;
            }
        }
        if (gVar.G().getName().startsWith(AmqpsDeviceAuthenticationCBS.RECEIVER_LINK_TAG_PREFIX) || gVar.G().getName().startsWith(AmqpsDeviceAuthenticationCBS.SENDER_LINK_TAG_PREFIX)) {
            log.e("authenticationLinkOpenLatch counted down");
            this.authenticationLinkOpenLatch.countDown();
            return;
        }
        log.e("workerLinksOpenLatch counted down");
        this.workerLinksOpenLatch.countDown();
    }

    public void onReactorFinal(h hVar) {
        releaseLatch(this.authenticationLinkOpenLatch);
        releaseLatch(this.workerLinksOpenLatch);
        releaseLatch(this.closeReactorLatch);
        this.reactor = null;
    }

    public void onReactorInit(h hVar) {
        d b = ((g) hVar).b();
        if (this.useWebSockets.booleanValue()) {
            ProxySettings proxySettings = this.deviceClientConfig.getProxySettings();
            if (proxySettings != null) {
                b.a(proxySettings.getHostname(), proxySettings.getPort(), this);
            } else {
                b.a(chooseHostname(), 443, this);
            }
        } else {
            b.a(chooseHostname(), 5671, this);
        }
        b.a(50, this);
        if (this.deviceClientConfig.getAuthenticationProvider() instanceof IotHubSasTokenAuthenticationProvider) {
            b.a(this.deviceClientConfig.getSasTokenAuthentication().getMillisecondsBeforeProactiveRenewal(), this.sasTokenRenewalHandler);
        }
    }

    public void onSessionRemoteOpen(h hVar) {
        this.amqpsSessionManager.onSessionRemoteOpen(((g) hVar).T());
    }

    public void onTimerTask(h hVar) {
        processOutgoingMessages();
        ((g) hVar).b().a(50, this);
    }

    public void onTransportError(h hVar) {
        super.onTransportError(hVar);
        this.state = IotHubConnectionStatus.DISCONNECTED;
        TransportException transportExceptionFromEvent = getTransportExceptionFromEvent(hVar);
        this.savedException = transportExceptionFromEvent;
        scheduleReconnection(transportExceptionFromEvent);
    }

    public void open(Queue<DeviceClientConfig> queue, ScheduledExecutorService scheduledExecutorService) {
        log.b("Opening AMQP connection");
        boolean z = false;
        this.reconnectionScheduled = false;
        this.connectionId = UUID.randomUUID().toString();
        this.isAuthenticated = false;
        this.savedException = null;
        this.sasTokenRenewalHandler = new AmqpSasTokenRenewalHandler(this.amqpsSessionManager, this.deviceClientConfig);
        if (this.state == IotHubConnectionStatus.DISCONNECTED) {
            if (queue.size() > 1) {
                queue.remove();
                while (!queue.isEmpty()) {
                    addDeviceOperationSession(queue.remove());
                }
            }
            initializeStateLatches(queue.size());
            try {
                openAsync();
                log.e("Waiting for authentication links to open...");
                boolean z2 = !this.authenticationLinkOpenLatch.await(SessionTracker.SESSION_TIMEOUT, TimeUnit.MILLISECONDS);
                if (this.savedException == null) {
                    if (z2) {
                        closeConnectionWithException("Timed out waiting for authentication links to open", true);
                    }
                    log.e("Waiting for worker links to open...");
                    if (!this.workerLinksOpenLatch.await(60000, TimeUnit.MILLISECONDS)) {
                        z = true;
                    }
                    if (this.savedException != null) {
                        throw this.savedException;
                    } else if (z) {
                        closeConnectionWithException("Timed out waiting for worker links to open", true);
                    }
                } else {
                    throw this.savedException;
                }
            } catch (InterruptedException e2) {
                executorServicesCleanup();
                log.e("Interrupted while waiting for links to open for AMQP connection", (Throwable) e2);
                throw new TransportException("Interrupted while waiting for links to open for AMQP connection", e2);
            }
        }
        this.listener.onConnectionEstablished(this.connectionId);
        this.state = IotHubConnectionStatus.CONNECTED;
        log.b("AMQP connection opened successfully");
    }

    public boolean sendMessageResult(Message message, IotHubMessageResult iotHubMessageResult) {
        if (this.state != IotHubConnectionStatus.CONNECTED) {
            log.d("Unable to send message acknowledgement because amqp connection is not open");
            return false;
        }
        log.e("Sending amqp acknowledgement for iothub message ({}) with result {}", message, iotHubMessageResult);
        if (this.sendAckMessages.containsKey(message)) {
            AmqpsMessage amqpsMessage = this.sendAckMessages.get(message);
            int ordinal = iotHubMessageResult.ordinal();
            if (ordinal == 0) {
                amqpsMessage.acknowledge(AmqpsMessage.ACK_TYPE.COMPLETE);
            } else if (ordinal == 1) {
                amqpsMessage.acknowledge(AmqpsMessage.ACK_TYPE.ABANDON);
            } else if (ordinal != 2) {
                log.c("Invalid IoT Hub message result {}", (Object) iotHubMessageResult.name());
                return false;
            } else {
                amqpsMessage.acknowledge(AmqpsMessage.ACK_TYPE.REJECT);
            }
            log.d("Removing message from amqp map of messages to acknowledge ({})", (Object) message);
            this.sendAckMessages.remove(message);
            return true;
        }
        log.a("Amqp connection cannot send ack for this iot hub message because it has no mapping from it to any amqp message ({})", (Object) message);
        return false;
    }

    public void setListener(IotHubListener iotHubListener) {
        if (iotHubListener != null) {
            this.listener = iotHubListener;
            return;
        }
        throw new IllegalArgumentException("listener cannot be null");
    }

    public IotHubStatusCode sendMessage(Message message) {
        log.d("Adding message to amqp message queue to be sent later ({})", (Object) message);
        this.messagesToSend.add(message);
        return IotHubStatusCode.OK;
    }
}
