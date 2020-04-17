package com.microsoft.azure.sdk.iot.device.transport;

import com.microsoft.azure.sdk.iot.device.DeviceClientConfig;
import com.microsoft.azure.sdk.iot.device.IotHubConnectionState;
import com.microsoft.azure.sdk.iot.device.IotHubConnectionStateCallback;
import com.microsoft.azure.sdk.iot.device.IotHubConnectionStatusChangeCallback;
import com.microsoft.azure.sdk.iot.device.IotHubConnectionStatusChangeReason;
import com.microsoft.azure.sdk.iot.device.IotHubEventCallback;
import com.microsoft.azure.sdk.iot.device.IotHubMessageResult;
import com.microsoft.azure.sdk.iot.device.IotHubStatusCode;
import com.microsoft.azure.sdk.iot.device.Message;
import com.microsoft.azure.sdk.iot.device.MessageCallback;
import com.microsoft.azure.sdk.iot.device.exceptions.DeviceClientException;
import com.microsoft.azure.sdk.iot.device.exceptions.DeviceOperationTimeoutException;
import com.microsoft.azure.sdk.iot.device.exceptions.IotHubServiceException;
import com.microsoft.azure.sdk.iot.device.exceptions.TransportException;
import com.microsoft.azure.sdk.iot.device.exceptions.UnauthorizedException;
import com.microsoft.azure.sdk.iot.device.transport.amqps.AmqpsIotHubConnection;
import com.microsoft.azure.sdk.iot.device.transport.amqps.exceptions.AmqpConnectionThrottledException;
import com.microsoft.azure.sdk.iot.device.transport.amqps.exceptions.AmqpUnauthorizedAccessException;
import com.microsoft.azure.sdk.iot.device.transport.https.HttpsIotHubConnection;
import com.microsoft.azure.sdk.iot.device.transport.mqtt.MqttIotHubConnection;
import com.microsoft.azure.sdk.iot.device.transport.mqtt.exceptions.MqttUnauthorizedException;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.Map;
import java.util.Queue;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.ConcurrentLinkedQueue;
import java.util.concurrent.Executors;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.TimeUnit;
import k.f.b;
import k.f.c;

public class IotHubTransport implements IotHubListener {
    public static final int MAX_MESSAGES_TO_SEND_PER_THREAD = 10;
    public static final int POOL_SIZE = 1;
    public static final b log = c.a((Class<?>) IotHubTransport.class);
    public final Queue<IotHubTransportPacket> callbackPacketsQueue = new ConcurrentLinkedQueue();
    public volatile IotHubConnectionStatus connectionStatus;
    public IotHubConnectionStatusChangeCallback connectionStatusChangeCallback;
    public Object connectionStatusChangeCallbackContext;
    public int currentReconnectionAttempt;
    public DeviceClientConfig defaultConfig;
    public Queue<DeviceClientConfig> deviceClientConfigs;
    public final Object inProgressMessagesLock = new Object();
    public final Map<String, IotHubTransportPacket> inProgressPackets = new ConcurrentHashMap();
    public IotHubTransportConnection iotHubTransportConnection;
    public final Queue<IotHubTransportMessage> receivedMessagesQueue = new ConcurrentLinkedQueue();
    public long reconnectionAttemptStartTimeMillis;
    public final Object reconnectionLock = new Object();
    public ScheduledExecutorService scheduledExecutorService;
    public IotHubConnectionStateCallback stateCallback;
    public Object stateCallbackContext;
    public ScheduledExecutorService taskScheduler;
    public final Queue<IotHubTransportPacket> waitingPacketsQueue = new ConcurrentLinkedQueue();

    /* renamed from: com.microsoft.azure.sdk.iot.device.transport.IotHubTransport$1  reason: invalid class name */
    public static /* synthetic */ class AnonymousClass1 {
        public static final /* synthetic */ int[] $SwitchMap$com$microsoft$azure$sdk$iot$device$IotHubClientProtocol;

        /* JADX WARNING: Can't wrap try/catch for region: R(13:0|1|2|3|4|5|7|8|9|10|11|12|14) */
        /* JADX WARNING: Code restructure failed: missing block: B:15:?, code lost:
            return;
         */
        /* JADX WARNING: Failed to process nested try/catch */
        /* JADX WARNING: Missing exception handler attribute for start block: B:11:0x0024 */
        /* JADX WARNING: Missing exception handler attribute for start block: B:3:0x000f */
        /* JADX WARNING: Missing exception handler attribute for start block: B:9:0x001e */
        static {
            /*
                com.microsoft.azure.sdk.iot.device.IotHubClientProtocol[] r0 = com.microsoft.azure.sdk.iot.device.IotHubClientProtocol.values()
                int r0 = r0.length
                int[] r0 = new int[r0]
                $SwitchMap$com$microsoft$azure$sdk$iot$device$IotHubClientProtocol = r0
                r1 = 1
                com.microsoft.azure.sdk.iot.device.IotHubClientProtocol r2 = com.microsoft.azure.sdk.iot.device.IotHubClientProtocol.HTTPS     // Catch:{ NoSuchFieldError -> 0x000f }
                r2 = 0
                r0[r2] = r1     // Catch:{ NoSuchFieldError -> 0x000f }
            L_0x000f:
                int[] r0 = $SwitchMap$com$microsoft$azure$sdk$iot$device$IotHubClientProtocol     // Catch:{ NoSuchFieldError -> 0x0016 }
                com.microsoft.azure.sdk.iot.device.IotHubClientProtocol r2 = com.microsoft.azure.sdk.iot.device.IotHubClientProtocol.MQTT     // Catch:{ NoSuchFieldError -> 0x0016 }
                r2 = 2
                r0[r2] = r2     // Catch:{ NoSuchFieldError -> 0x0016 }
            L_0x0016:
                r0 = 3
                r2 = 4
                int[] r3 = $SwitchMap$com$microsoft$azure$sdk$iot$device$IotHubClientProtocol     // Catch:{ NoSuchFieldError -> 0x001e }
                com.microsoft.azure.sdk.iot.device.IotHubClientProtocol r4 = com.microsoft.azure.sdk.iot.device.IotHubClientProtocol.MQTT_WS     // Catch:{ NoSuchFieldError -> 0x001e }
                r3[r2] = r0     // Catch:{ NoSuchFieldError -> 0x001e }
            L_0x001e:
                int[] r3 = $SwitchMap$com$microsoft$azure$sdk$iot$device$IotHubClientProtocol     // Catch:{ NoSuchFieldError -> 0x0024 }
                com.microsoft.azure.sdk.iot.device.IotHubClientProtocol r4 = com.microsoft.azure.sdk.iot.device.IotHubClientProtocol.AMQPS     // Catch:{ NoSuchFieldError -> 0x0024 }
                r3[r1] = r2     // Catch:{ NoSuchFieldError -> 0x0024 }
            L_0x0024:
                int[] r1 = $SwitchMap$com$microsoft$azure$sdk$iot$device$IotHubClientProtocol     // Catch:{ NoSuchFieldError -> 0x002b }
                com.microsoft.azure.sdk.iot.device.IotHubClientProtocol r2 = com.microsoft.azure.sdk.iot.device.IotHubClientProtocol.AMQPS_WS     // Catch:{ NoSuchFieldError -> 0x002b }
                r2 = 5
                r1[r0] = r2     // Catch:{ NoSuchFieldError -> 0x002b }
            L_0x002b:
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: com.microsoft.azure.sdk.iot.device.transport.IotHubTransport.AnonymousClass1.<clinit>():void");
        }
    }

    public class MessageRetryRunnable implements Runnable {
        public final IotHubTransportPacket transportPacket;
        public final Queue<IotHubTransportPacket> waitingPacketsQueue;

        public MessageRetryRunnable(Queue<IotHubTransportPacket> queue, IotHubTransportPacket iotHubTransportPacket) {
            this.waitingPacketsQueue = queue;
            this.transportPacket = iotHubTransportPacket;
        }

        public void run() {
            this.waitingPacketsQueue.add(this.transportPacket);
        }
    }

    public IotHubTransport(DeviceClientConfig deviceClientConfig) {
        if (deviceClientConfig != null) {
            this.defaultConfig = deviceClientConfig;
            this.connectionStatus = IotHubConnectionStatus.DISCONNECTED;
            this.currentReconnectionAttempt = 0;
            return;
        }
        throw new IllegalArgumentException("Config cannot be null");
    }

    private void acknowledgeReceivedMessage(IotHubTransportMessage iotHubTransportMessage) {
        MessageCallback messageCallback = iotHubTransportMessage.getMessageCallback();
        Object messageCallbackContext = iotHubTransportMessage.getMessageCallbackContext();
        if (messageCallback != null) {
            log.e("Executing callback for received message ({})", (Object) iotHubTransportMessage);
            IotHubMessageResult execute = messageCallback.execute(iotHubTransportMessage, messageCallbackContext);
            try {
                log.e("Sending acknowledgement for received cloud to device message ({})", (Object) iotHubTransportMessage);
                this.iotHubTransportConnection.sendMessageResult(iotHubTransportMessage, execute);
            } catch (TransportException e2) {
                log.b("Sending acknowledgement for received cloud to device message failed, adding it back to the queue ({})", iotHubTransportMessage, e2);
                this.receivedMessagesQueue.add(iotHubTransportMessage);
                throw e2;
            }
        }
    }

    private void addReceivedMessagesOverHttpToReceivedQueue() {
        IotHubTransportMessage receiveMessage = ((HttpsIotHubConnection) this.iotHubTransportConnection).receiveMessage();
        if (receiveMessage != null) {
            log.b("Message was received from IotHub ({})", (Object) receiveMessage);
            this.receivedMessagesQueue.add(receiveMessage);
        }
    }

    private void addToCallbackQueue(IotHubTransportPacket iotHubTransportPacket) {
        if (iotHubTransportPacket.getCallback() != null) {
            this.callbackPacketsQueue.add(iotHubTransportPacket);
        }
    }

    private void cancelPendingPackets() {
        IotHubTransportPacket poll = this.waitingPacketsQueue.poll();
        while (poll != null) {
            poll.setStatus(IotHubStatusCode.MESSAGE_CANCELLED_ONCLOSE);
            addToCallbackQueue(poll);
            poll = this.waitingPacketsQueue.poll();
        }
        synchronized (this.inProgressMessagesLock) {
            for (Map.Entry<String, IotHubTransportPacket> value : this.inProgressPackets.entrySet()) {
                IotHubTransportPacket iotHubTransportPacket = (IotHubTransportPacket) value.getValue();
                iotHubTransportPacket.setStatus(IotHubStatusCode.MESSAGE_CANCELLED_ONCLOSE);
                addToCallbackQueue(iotHubTransportPacket);
            }
            this.inProgressPackets.clear();
        }
    }

    private void checkForExpiredMessages() {
        IotHubTransportPacket poll = this.waitingPacketsQueue.poll();
        LinkedBlockingQueue linkedBlockingQueue = new LinkedBlockingQueue();
        while (poll != null) {
            if (poll.getMessage().isExpired()) {
                poll.setStatus(IotHubStatusCode.MESSAGE_EXPIRED);
                addToCallbackQueue(poll);
            } else {
                linkedBlockingQueue.add(poll);
            }
            poll = this.waitingPacketsQueue.poll();
        }
        this.waitingPacketsQueue.addAll(linkedBlockingQueue);
        synchronized (this.inProgressMessagesLock) {
            ArrayList arrayList = new ArrayList();
            for (String next : this.inProgressPackets.keySet()) {
                if (this.inProgressPackets.get(next).getMessage().isExpired()) {
                    arrayList.add(next);
                }
            }
            Iterator it = arrayList.iterator();
            while (it.hasNext()) {
                IotHubTransportPacket remove = this.inProgressPackets.remove((String) it.next());
                remove.setStatus(IotHubStatusCode.MESSAGE_EXPIRED);
                addToCallbackQueue(remove);
            }
        }
    }

    private void checkForUnauthorizedException(TransportException transportException) {
        if (isSasTokenExpired()) {
            return;
        }
        if ((transportException instanceof MqttUnauthorizedException) || (transportException instanceof UnauthorizedException) || (transportException instanceof AmqpUnauthorizedAccessException)) {
            transportException.setRetryable(true);
        }
    }

    private IotHubConnectionStatusChangeReason exceptionToStatusChangeReason(Throwable th) {
        if (th instanceof TransportException) {
            if (((TransportException) th).isRetryable()) {
                log.d("Mapping throwable to NO_NETWORK because it was a retryable exception", th);
                return IotHubConnectionStatusChangeReason.NO_NETWORK;
            } else if (isSasTokenExpired()) {
                log.d("Mapping throwable to EXPIRED_SAS_TOKEN because it was a non-retryable exception and the saved sas token has expired", th);
                return IotHubConnectionStatusChangeReason.EXPIRED_SAS_TOKEN;
            } else if ((th instanceof UnauthorizedException) || (th instanceof MqttUnauthorizedException) || (th instanceof AmqpUnauthorizedAccessException)) {
                log.d("Mapping throwable to BAD_CREDENTIAL because it was a non-retryable exception authorization exception but the saved sas token has not expired yet", th);
                return IotHubConnectionStatusChangeReason.BAD_CREDENTIAL;
            }
        }
        log.d("Mapping exception throwable to COMMUNICATION_ERROR because the sdk was unable to classify the thrown exception to anything other category", th);
        return IotHubConnectionStatusChangeReason.COMMUNICATION_ERROR;
    }

    private void handleDisconnection(TransportException transportException) {
        log.a("Handling a disconnection event", (Throwable) transportException);
        synchronized (this.inProgressMessagesLock) {
            log.e("Due to disconnection event, clearing active queues, and re-queueing them to waiting queues to be re-processed later upon reconnection");
            this.waitingPacketsQueue.addAll(this.inProgressPackets.values());
            this.inProgressPackets.clear();
        }
        updateStatus(IotHubConnectionStatus.DISCONNECTED_RETRYING, exceptionToStatusChangeReason(transportException), transportException);
        checkForUnauthorizedException(transportException);
        log.b("Starting reconnection logic");
        reconnect(transportException);
    }

    private void handleMessageException(IotHubTransportPacket iotHubTransportPacket, TransportException transportException) {
        log.b("Handling an exception from sending message: Attempt number {}", Integer.valueOf(iotHubTransportPacket.getCurrentRetryAttempt()), transportException);
        iotHubTransportPacket.incrementRetryAttempt();
        if (hasOperationTimedOut(iotHubTransportPacket.getStartTimeMillis())) {
            log.b("The device operation timeout has been exceeded for the message, so it has been abandoned ({})", iotHubTransportPacket.getMessage(), transportException);
        } else if (transportException.isRetryable()) {
            RetryDecision retryDecision = this.defaultConfig.getRetryPolicy().getRetryDecision(iotHubTransportPacket.getCurrentRetryAttempt(), transportException);
            if (retryDecision.shouldRetry()) {
                this.taskScheduler.schedule(new MessageRetryRunnable(this.waitingPacketsQueue, iotHubTransportPacket), retryDecision.getDuration(), TimeUnit.MILLISECONDS);
                return;
            }
            log.b("Retry policy dictated that the message should be abandoned, so it has been abandoned ({})", iotHubTransportPacket.getMessage(), transportException);
        } else {
            log.b("Encountering an non-retryable exception while sending a message, so it has been abandoned ({})", iotHubTransportPacket.getMessage(), transportException);
        }
        IotHubStatusCode statusCode = transportException instanceof IotHubServiceException ? ((IotHubServiceException) transportException).getStatusCode() : IotHubStatusCode.ERROR;
        if (transportException instanceof AmqpConnectionThrottledException) {
            statusCode = IotHubStatusCode.THROTTLED;
        }
        iotHubTransportPacket.setStatus(statusCode);
        addToCallbackQueue(iotHubTransportPacket);
    }

    private boolean hasOperationTimedOut(long j2) {
        return j2 != 0 && System.currentTimeMillis() - j2 > this.defaultConfig.getOperationTimeout();
    }

    private void invokeConnectionStateCallback(IotHubConnectionStatus iotHubConnectionStatus, IotHubConnectionStatusChangeReason iotHubConnectionStatusChangeReason) {
        IotHubConnectionStateCallback iotHubConnectionStateCallback = this.stateCallback;
        if (iotHubConnectionStateCallback == null) {
            return;
        }
        if (iotHubConnectionStatus == IotHubConnectionStatus.CONNECTED) {
            iotHubConnectionStateCallback.execute(IotHubConnectionState.CONNECTION_SUCCESS, this.stateCallbackContext);
        } else if (iotHubConnectionStatusChangeReason == IotHubConnectionStatusChangeReason.EXPIRED_SAS_TOKEN) {
            iotHubConnectionStateCallback.execute(IotHubConnectionState.SAS_TOKEN_EXPIRED, this.stateCallbackContext);
        } else if (iotHubConnectionStatus == IotHubConnectionStatus.DISCONNECTED) {
            iotHubConnectionStateCallback.execute(IotHubConnectionState.CONNECTION_DROP, this.stateCallbackContext);
        }
    }

    private void invokeConnectionStatusChangeCallback(IotHubConnectionStatus iotHubConnectionStatus, IotHubConnectionStatusChangeReason iotHubConnectionStatusChangeReason, Throwable th) {
        IotHubConnectionStatusChangeCallback iotHubConnectionStatusChangeCallback = this.connectionStatusChangeCallback;
        if (iotHubConnectionStatusChangeCallback != null) {
            iotHubConnectionStatusChangeCallback.execute(iotHubConnectionStatus, iotHubConnectionStatusChangeReason, th, this.connectionStatusChangeCallbackContext);
        }
    }

    private boolean isMessageValid(IotHubTransportPacket iotHubTransportPacket) {
        Message message = iotHubTransportPacket.getMessage();
        if (message.isExpired()) {
            log.c("Message with has expired, adding to callbacks queue with MESSAGE_EXPIRED ({})", (Object) message);
            iotHubTransportPacket.setStatus(IotHubStatusCode.MESSAGE_EXPIRED);
            addToCallbackQueue(iotHubTransportPacket);
            return false;
        } else if (!isSasTokenExpired()) {
            return true;
        } else {
            log.c("Creating a callback for the message with expired sas token with UNAUTHORIZED status");
            iotHubTransportPacket.setStatus(IotHubStatusCode.UNAUTHORIZED);
            addToCallbackQueue(iotHubTransportPacket);
            updateStatus(IotHubConnectionStatus.DISCONNECTED, IotHubConnectionStatusChangeReason.EXPIRED_SAS_TOKEN, new SecurityException("Your sas token has expired"));
            return false;
        }
    }

    private boolean isSasTokenExpired() {
        return this.defaultConfig.getAuthenticationType() == DeviceClientConfig.AuthType.SAS_TOKEN && this.defaultConfig.getSasTokenAuthentication().isRenewalNecessary();
    }

    private void openConnection() {
        this.scheduledExecutorService = Executors.newScheduledThreadPool(1);
        if (this.iotHubTransportConnection == null) {
            int ordinal = this.defaultConfig.getProtocol().ordinal();
            if (ordinal != 0) {
                if (ordinal != 1) {
                    if (ordinal != 2) {
                        if (ordinal != 3) {
                            if (ordinal != 4) {
                                throw new TransportException("Protocol not supported");
                            }
                        }
                    }
                    this.iotHubTransportConnection = new MqttIotHubConnection(this.defaultConfig);
                }
                this.iotHubTransportConnection = new AmqpsIotHubConnection(this.defaultConfig);
            } else {
                this.iotHubTransportConnection = new HttpsIotHubConnection(this.defaultConfig);
            }
        }
        this.iotHubTransportConnection.setListener(this);
        this.iotHubTransportConnection.open(this.deviceClientConfigs, this.scheduledExecutorService);
        updateStatus(IotHubConnectionStatus.CONNECTED, IotHubConnectionStatusChangeReason.CONNECTION_OK, (Throwable) null);
    }

    private void reconnect(TransportException transportException) {
        if (this.reconnectionAttemptStartTimeMillis == 0) {
            this.reconnectionAttemptStartTimeMillis = System.currentTimeMillis();
        }
        boolean hasOperationTimedOut = hasOperationTimedOut(this.reconnectionAttemptStartTimeMillis);
        RetryDecision retryDecision = null;
        while (this.connectionStatus == IotHubConnectionStatus.DISCONNECTED_RETRYING && !hasOperationTimedOut && transportException != null && transportException.isRetryable()) {
            log.d("Attempting reconnect attempt {}", (Object) Integer.valueOf(this.currentReconnectionAttempt));
            this.currentReconnectionAttempt++;
            retryDecision = this.defaultConfig.getRetryPolicy().getRetryDecision(this.currentReconnectionAttempt, transportException);
            if (!retryDecision.shouldRetry()) {
                break;
            }
            log.e("Sleeping between reconnect attempts");
            sleepUninterruptibly(retryDecision.getDuration(), TimeUnit.MILLISECONDS);
            hasOperationTimedOut = hasOperationTimedOut(this.reconnectionAttemptStartTimeMillis);
            transportException = singleReconnectAttempt();
        }
        if (retryDecision != null) {
            try {
                if (!retryDecision.shouldRetry()) {
                    log.b("Reconnection was abandoned due to the retry policy");
                    close(IotHubConnectionStatusChangeReason.RETRY_EXPIRED, transportException);
                    return;
                }
            } catch (DeviceClientException e2) {
                log.e("Encountered an exception while closing the client object, client instance should no longer be used as the state is unknown", (Throwable) e2);
                updateStatus(IotHubConnectionStatus.DISCONNECTED, IotHubConnectionStatusChangeReason.COMMUNICATION_ERROR, transportException);
                return;
            }
        }
        if (hasOperationTimedOut(this.reconnectionAttemptStartTimeMillis)) {
            log.b("Reconnection was abandoned due to the operation timeout");
            close(IotHubConnectionStatusChangeReason.RETRY_EXPIRED, new DeviceOperationTimeoutException("Device operation for reconnection timed out"));
        } else if (transportException != null && !transportException.isRetryable()) {
            log.e("Reconnection was abandoned due to encountering a non-retryable exception", (Throwable) transportException);
            close(exceptionToStatusChangeReason(transportException), transportException);
        }
    }

    private void sendPacket(IotHubTransportPacket iotHubTransportPacket) {
        Message message = iotHubTransportPacket.getMessage();
        boolean z = !(message instanceof IotHubTransportMessage) || ((IotHubTransportMessage) message).isMessageAckNeeded(this.defaultConfig.getProtocol());
        if (z) {
            try {
                synchronized (this.inProgressMessagesLock) {
                    log.d("Adding transport message to the inProgressPackets to wait for acknowledgement ({})", (Object) message);
                    this.inProgressPackets.put(message.getMessageId(), iotHubTransportPacket);
                }
            } catch (TransportException e2) {
                log.b("Encountered exception while sending message with correlation id {}", message.getCorrelationId(), e2);
                if (z) {
                    synchronized (this.inProgressMessagesLock) {
                        iotHubTransportPacket = this.inProgressPackets.remove(message.getMessageId());
                    }
                }
                handleMessageException(iotHubTransportPacket, e2);
                return;
            }
        }
        log.b("Sending message ({})", (Object) message);
        IotHubStatusCode sendMessage = this.iotHubTransportConnection.sendMessage(message);
        log.e("Sent message ({}) to protocol level, returned status code was {}", message, sendMessage);
        if (sendMessage != IotHubStatusCode.OK_EMPTY && sendMessage != IotHubStatusCode.OK) {
            handleMessageException(this.inProgressPackets.remove(message.getMessageId()), IotHubStatusCode.getConnectionStatusException(sendMessage, ""));
        } else if (!z) {
            iotHubTransportPacket.setStatus(sendMessage);
            addToCallbackQueue(iotHubTransportPacket);
        }
    }

    private TransportException singleReconnectAttempt() {
        try {
            log.e("Attempting to close and re-open the iot hub transport connection...");
            this.iotHubTransportConnection.close();
            openConnection();
            log.e("Successfully closed and re-opened the iot hub transport connection");
            return null;
        } catch (TransportException e2) {
            checkForUnauthorizedException(e2);
            log.b("Failed to close and re-open the iot hub transport connection, checking if another retry attempt should be made", (Throwable) e2);
            return e2;
        }
    }

    public static void sleepUninterruptibly(long j2, TimeUnit timeUnit) {
        long nanos;
        long nanoTime;
        boolean z = false;
        try {
            nanos = timeUnit.toNanos(j2);
            nanoTime = System.nanoTime() + nanos;
            while (true) {
                TimeUnit.NANOSECONDS.sleep(nanos);
                break;
            }
            if (z) {
                Thread.currentThread().interrupt();
            }
        } catch (InterruptedException unused) {
            z = true;
            nanos = nanoTime - System.nanoTime();
        } catch (Throwable th) {
            if (z) {
                Thread.currentThread().interrupt();
            }
            throw th;
        }
    }

    private void updateStatus(IotHubConnectionStatus iotHubConnectionStatus, IotHubConnectionStatusChangeReason iotHubConnectionStatusChangeReason, Throwable th) {
        if (this.connectionStatus != iotHubConnectionStatus) {
            if (th == null) {
                log.a("Updating transport status to new status {} with reason {}", iotHubConnectionStatus, iotHubConnectionStatusChangeReason);
            } else {
                log.c("Updating transport status to new status {} with reason {}", iotHubConnectionStatus, iotHubConnectionStatusChangeReason, th);
            }
            this.connectionStatus = iotHubConnectionStatus;
            log.b("Invoking connection status callbacks with new status details");
            invokeConnectionStateCallback(iotHubConnectionStatus, iotHubConnectionStatusChangeReason);
            invokeConnectionStatusChangeCallback(iotHubConnectionStatus, iotHubConnectionStatusChangeReason, th);
            if (iotHubConnectionStatus == IotHubConnectionStatus.CONNECTED) {
                this.currentReconnectionAttempt = 0;
                this.reconnectionAttemptStartTimeMillis = 0;
            }
        }
    }

    public void addMessage(Message message, IotHubEventCallback iotHubEventCallback, Object obj) {
        if (this.connectionStatus != IotHubConnectionStatus.DISCONNECTED) {
            this.waitingPacketsQueue.add(new IotHubTransportPacket(message, iotHubEventCallback, obj, (IotHubStatusCode) null, System.currentTimeMillis()));
            log.b("Message was queued to be sent later ({})", (Object) message);
            return;
        }
        throw new IllegalStateException("Cannot add a message when the transport is closed.");
    }

    public void close(IotHubConnectionStatusChangeReason iotHubConnectionStatusChangeReason, Throwable th) {
        if (iotHubConnectionStatusChangeReason != null) {
            cancelPendingPackets();
            invokeCallbacks();
            ScheduledExecutorService scheduledExecutorService2 = this.taskScheduler;
            if (scheduledExecutorService2 != null) {
                scheduledExecutorService2.shutdown();
            }
            ScheduledExecutorService scheduledExecutorService3 = this.scheduledExecutorService;
            if (scheduledExecutorService3 != null) {
                scheduledExecutorService3.shutdownNow();
                this.scheduledExecutorService = null;
            }
            IotHubTransportConnection iotHubTransportConnection2 = this.iotHubTransportConnection;
            if (iotHubTransportConnection2 != null) {
                iotHubTransportConnection2.close();
            }
            updateStatus(IotHubConnectionStatus.DISCONNECTED, iotHubConnectionStatusChangeReason, th);
            log.c("Client connection closed successfully");
            return;
        }
        throw new IllegalArgumentException("reason cannot be null");
    }

    public void handleMessage() {
        if (this.connectionStatus == IotHubConnectionStatus.CONNECTED) {
            if (this.iotHubTransportConnection instanceof HttpsIotHubConnection) {
                log.e("Sending http request to check for any cloud to device messages...");
                addReceivedMessagesOverHttpToReceivedQueue();
            }
            IotHubTransportMessage poll = this.receivedMessagesQueue.poll();
            if (poll != null) {
                acknowledgeReceivedMessage(poll);
            }
        }
    }

    public void invokeCallbacks() {
        IotHubTransportPacket poll = this.callbackPacketsQueue.poll();
        while (poll != null) {
            IotHubStatusCode status = poll.getStatus();
            IotHubEventCallback callback = poll.getCallback();
            Object context = poll.getContext();
            log.a("Invoking the callback function for sent message, IoT Hub responded to message ({}) with status {}", poll.getMessage(), status);
            callback.execute(status, context);
            poll = this.callbackPacketsQueue.poll();
        }
    }

    public boolean isEmpty() {
        boolean z;
        synchronized (this.inProgressMessagesLock) {
            z = this.waitingPacketsQueue.isEmpty() && this.inProgressPackets.size() == 0 && this.callbackPacketsQueue.isEmpty();
        }
        return z;
    }

    public void onConnectionEstablished(String str) {
        if (str.equals(this.iotHubTransportConnection.getConnectionId())) {
            log.c("The connection to the IoT Hub has been established");
            updateStatus(IotHubConnectionStatus.CONNECTED, IotHubConnectionStatusChangeReason.CONNECTION_OK, (Throwable) null);
        }
    }

    /* JADX WARNING: Code restructure failed: missing block: B:18:0x003a, code lost:
        return;
     */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public void onConnectionLost(java.lang.Throwable r3, java.lang.String r4) {
        /*
            r2 = this;
            java.lang.Object r0 = r2.reconnectionLock
            monitor-enter(r0)
            com.microsoft.azure.sdk.iot.device.transport.IotHubTransportConnection r1 = r2.iotHubTransportConnection     // Catch:{ all -> 0x003b }
            java.lang.String r1 = r1.getConnectionId()     // Catch:{ all -> 0x003b }
            boolean r4 = r4.equals(r1)     // Catch:{ all -> 0x003b }
            if (r4 != 0) goto L_0x0018
            k.f.b r3 = log     // Catch:{ all -> 0x003b }
            java.lang.String r4 = "OnConnectionLost was fired, but for an outdated connection. Ignoring..."
            r3.e(r4)     // Catch:{ all -> 0x003b }
            monitor-exit(r0)     // Catch:{ all -> 0x003b }
            return
        L_0x0018:
            com.microsoft.azure.sdk.iot.device.transport.IotHubConnectionStatus r4 = r2.connectionStatus     // Catch:{ all -> 0x003b }
            com.microsoft.azure.sdk.iot.device.transport.IotHubConnectionStatus r1 = com.microsoft.azure.sdk.iot.device.transport.IotHubConnectionStatus.CONNECTED     // Catch:{ all -> 0x003b }
            if (r4 == r1) goto L_0x0027
            k.f.b r3 = log     // Catch:{ all -> 0x003b }
            java.lang.String r4 = "OnConnectionLost was fired, but connection is already disocnnected. Ignoring..."
            r3.e(r4)     // Catch:{ all -> 0x003b }
            monitor-exit(r0)     // Catch:{ all -> 0x003b }
            return
        L_0x0027:
            boolean r4 = r3 instanceof com.microsoft.azure.sdk.iot.device.exceptions.TransportException     // Catch:{ all -> 0x003b }
            if (r4 == 0) goto L_0x0031
            com.microsoft.azure.sdk.iot.device.exceptions.TransportException r3 = (com.microsoft.azure.sdk.iot.device.exceptions.TransportException) r3     // Catch:{ all -> 0x003b }
            r2.handleDisconnection(r3)     // Catch:{ all -> 0x003b }
            goto L_0x0039
        L_0x0031:
            com.microsoft.azure.sdk.iot.device.exceptions.TransportException r4 = new com.microsoft.azure.sdk.iot.device.exceptions.TransportException     // Catch:{ all -> 0x003b }
            r4.<init>((java.lang.Throwable) r3)     // Catch:{ all -> 0x003b }
            r2.handleDisconnection(r4)     // Catch:{ all -> 0x003b }
        L_0x0039:
            monitor-exit(r0)     // Catch:{ all -> 0x003b }
            return
        L_0x003b:
            r3 = move-exception
            monitor-exit(r0)     // Catch:{ all -> 0x003b }
            throw r3
        */
        throw new UnsupportedOperationException("Method not decompiled: com.microsoft.azure.sdk.iot.device.transport.IotHubTransport.onConnectionLost(java.lang.Throwable, java.lang.String):void");
    }

    public void onMessageReceived(IotHubTransportMessage iotHubTransportMessage, Throwable th) {
        if (iotHubTransportMessage != null && th != null) {
            log.d("Exception encountered while receiving a message from service {}", iotHubTransportMessage, th);
        } else if (iotHubTransportMessage != null) {
            log.b("Message was received from IotHub ({})", (Object) iotHubTransportMessage);
            this.receivedMessagesQueue.add(iotHubTransportMessage);
        } else {
            log.e("Exception encountered while receiving messages from service", th);
        }
    }

    public void onMessageSent(Message message, Throwable th) {
        IotHubTransportPacket remove;
        if (message == null) {
            log.d("onMessageSent called with null message");
            return;
        }
        log.e("IotHub message was acknowledged. Checking if there is record of sending this message ({})", (Object) message);
        synchronized (this.inProgressMessagesLock) {
            remove = this.inProgressPackets.remove(message.getMessageId());
        }
        if (remove == null) {
            log.c("A message was acknowledged by IoT Hub, but this client has no record of sending it ({})", (Object) message);
        } else if (th == null) {
            log.d("Message was sent by this client, adding it to callbacks queue with OK_EMPTY ({})", (Object) message);
            remove.setStatus(IotHubStatusCode.OK_EMPTY);
            addToCallbackQueue(remove);
        } else if (th instanceof TransportException) {
            handleMessageException(remove, (TransportException) th);
        } else {
            handleMessageException(remove, new TransportException(th));
        }
    }

    public void open(Collection<DeviceClientConfig> collection) {
        if (collection == null || collection.isEmpty()) {
            throw new IllegalArgumentException("deviceClientConfigs cannot be null or empty");
        } else if (this.connectionStatus != IotHubConnectionStatus.CONNECTED) {
            if (this.connectionStatus == IotHubConnectionStatus.DISCONNECTED_RETRYING) {
                throw new TransportException("Open cannot be called while transport is reconnecting");
            } else if (!isSasTokenExpired()) {
                LinkedBlockingQueue linkedBlockingQueue = new LinkedBlockingQueue(collection);
                this.deviceClientConfigs = linkedBlockingQueue;
                this.defaultConfig = (DeviceClientConfig) linkedBlockingQueue.peek();
                this.taskScheduler = Executors.newScheduledThreadPool(1);
                openConnection();
                log.c("Client connection opened successfully");
            } else {
                throw new SecurityException("Your sas token has expired");
            }
        }
    }

    public void registerConnectionStateCallback(IotHubConnectionStateCallback iotHubConnectionStateCallback, Object obj) {
        if (iotHubConnectionStateCallback != null) {
            this.stateCallback = iotHubConnectionStateCallback;
            this.stateCallbackContext = obj;
            return;
        }
        throw new IllegalArgumentException("Callback cannot be null");
    }

    public void registerConnectionStatusChangeCallback(IotHubConnectionStatusChangeCallback iotHubConnectionStatusChangeCallback, Object obj) {
        if (obj == null || iotHubConnectionStatusChangeCallback != null) {
            this.connectionStatusChangeCallback = iotHubConnectionStatusChangeCallback;
            this.connectionStatusChangeCallbackContext = obj;
            return;
        }
        throw new IllegalArgumentException("Callback cannot be null if callback context is null");
    }

    public void sendMessages() {
        checkForExpiredMessages();
        if (this.connectionStatus != IotHubConnectionStatus.DISCONNECTED && this.connectionStatus != IotHubConnectionStatus.DISCONNECTED_RETRYING) {
            int i2 = 10;
            while (this.connectionStatus == IotHubConnectionStatus.CONNECTED) {
                int i3 = i2 - 1;
                if (i2 > 0) {
                    IotHubTransportPacket poll = this.waitingPacketsQueue.poll();
                    if (poll != null) {
                        Message message = poll.getMessage();
                        log.d("Dequeued a message from waiting queue to be sent ({})", (Object) message);
                        if (message != null && isMessageValid(poll)) {
                            sendPacket(poll);
                        }
                    }
                    i2 = i3;
                } else {
                    return;
                }
            }
        }
    }
}
