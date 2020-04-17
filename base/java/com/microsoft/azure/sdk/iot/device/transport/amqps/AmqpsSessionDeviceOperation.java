package com.microsoft.azure.sdk.iot.device.transport.amqps;

import com.microsoft.azure.sdk.iot.device.DeviceClientConfig;
import com.microsoft.azure.sdk.iot.device.Message;
import com.microsoft.azure.sdk.iot.device.MessageType;
import java.nio.BufferOverflowException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.UUID;
import k.a.b.a.d.n;
import k.a.b.a.d.y;
import k.a.b.a.f.a;
import k.f.b;
import k.f.c;

public class AmqpsSessionDeviceOperation {
    public static final b log = c.a((Class<?>) AmqpsSessionDeviceOperation.class);
    public static long nextTag = 0;
    public AmqpsDeviceAuthenticationState amqpsAuthenticatorState = AmqpsDeviceAuthenticationState.UNKNOWN;
    public final AmqpsDeviceAuthentication amqpsDeviceAuthentication;
    public Map<MessageType, AmqpsDeviceOperations> amqpsDeviceOperationsMap = new HashMap();
    public List<UUID> cbsCorrelationIdList = Collections.synchronizedList(new ArrayList());
    public final DeviceClientConfig deviceClientConfig;
    public Integer openLock = new Integer(1);

    public AmqpsSessionDeviceOperation(DeviceClientConfig deviceClientConfig2, AmqpsDeviceAuthentication amqpsDeviceAuthentication2) {
        if (deviceClientConfig2 == null) {
            throw new IllegalArgumentException("deviceClientConfig cannot be null.");
        } else if (amqpsDeviceAuthentication2 != null) {
            this.deviceClientConfig = deviceClientConfig2;
            this.amqpsDeviceAuthentication = amqpsDeviceAuthentication2;
            this.amqpsDeviceOperationsMap.put(MessageType.DEVICE_TELEMETRY, new AmqpsDeviceTelemetry(this.deviceClientConfig));
            if (this.deviceClientConfig.getAuthenticationType() == DeviceClientConfig.AuthType.SAS_TOKEN) {
                this.amqpsAuthenticatorState = AmqpsDeviceAuthenticationState.NOT_AUTHENTICATED;
            } else {
                this.amqpsAuthenticatorState = AmqpsDeviceAuthenticationState.AUTHENTICATED;
            }
        } else {
            throw new IllegalArgumentException("amqpsDeviceAuthentication cannot be null.");
        }
    }

    private Integer sendMessageAndGetDeliveryTag(MessageType messageType, byte[] bArr, int i2, int i3, byte[] bArr2) {
        if (this.amqpsDeviceOperationsMap.get(messageType) != null) {
            AmqpsSendReturnValue sendMessageAndGetDeliveryTag = this.amqpsDeviceOperationsMap.get(messageType).sendMessageAndGetDeliveryTag(messageType, bArr, i2, i3, bArr2);
            if (sendMessageAndGetDeliveryTag.isDeliverySuccessful()) {
                return Integer.valueOf(Integer.parseInt(new String(sendMessageAndGetDeliveryTag.getDeliveryTag())));
            }
        }
        return -1;
    }

    public void authenticate() {
        if (this.deviceClientConfig.getAuthenticationType() == DeviceClientConfig.AuthType.SAS_TOKEN) {
            UUID randomUUID = UUID.randomUUID();
            synchronized (this.cbsCorrelationIdList) {
                log.d("Adding correlation id to cbs correlation id list {}", (Object) randomUUID);
                this.cbsCorrelationIdList.add(randomUUID);
            }
            this.amqpsDeviceAuthentication.authenticate(this.deviceClientConfig, randomUUID);
            log.e("Setting amqps device authentication state to AUTHENTICATING");
            this.amqpsAuthenticatorState = AmqpsDeviceAuthenticationState.AUTHENTICATING;
            log.e("Amqp session now waiting for service to acknowledge the sent authentication message");
        }
    }

    public void close() {
        closeLinks();
        if (this.deviceClientConfig.getAuthenticationType() == DeviceClientConfig.AuthType.SAS_TOKEN) {
            this.amqpsAuthenticatorState = AmqpsDeviceAuthenticationState.NOT_AUTHENTICATED;
            log.e("Setting amqps device authentication state to NOT_AUTHENTICATED");
        }
    }

    public void closeLinks() {
        for (Map.Entry<MessageType, AmqpsDeviceOperations> value : this.amqpsDeviceOperationsMap.entrySet()) {
            ((AmqpsDeviceOperations) value.getValue()).closeLinks();
        }
    }

    public AmqpsConvertFromProtonReturnValue convertFromProton(AmqpsMessage amqpsMessage, DeviceClientConfig deviceClientConfig2) {
        if (this.amqpsDeviceOperationsMap.get(amqpsMessage.getAmqpsMessageType()) != null) {
            return this.amqpsDeviceOperationsMap.get(amqpsMessage.getAmqpsMessageType()).convertFromProton(amqpsMessage, deviceClientConfig2);
        }
        return null;
    }

    public AmqpsConvertToProtonReturnValue convertToProton(Message message) {
        MessageType messageType;
        if (message.getMessageType() == null) {
            messageType = MessageType.DEVICE_TELEMETRY;
        } else {
            messageType = message.getMessageType();
        }
        if (this.amqpsDeviceOperationsMap.get(messageType) != null) {
            return this.amqpsDeviceOperationsMap.get(messageType).convertToProton(message);
        }
        return null;
    }

    public String getDeviceId() {
        return this.deviceClientConfig.getDeviceId();
    }

    public int getExpectedWorkerLinkCount() {
        return this.amqpsDeviceOperationsMap.size() * 2;
    }

    /* JADX WARNING: Removed duplicated region for block: B:4:0x000c A[LOOP:0: B:4:0x000c->B:7:0x0022, LOOP_START, PHI: r0 
      PHI: (r0v1 com.microsoft.azure.sdk.iot.device.transport.amqps.AmqpsMessage) = (r0v0 com.microsoft.azure.sdk.iot.device.transport.amqps.AmqpsMessage), (r0v7 com.microsoft.azure.sdk.iot.device.transport.amqps.AmqpsMessage) binds: [B:3:?, B:7:0x0022] A[DONT_GENERATE, DONT_INLINE]] */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public synchronized com.microsoft.azure.sdk.iot.device.transport.amqps.AmqpsMessage getMessageFromReceiverLink(java.lang.String r4) {
        /*
            r3 = this;
            monitor-enter(r3)
            r0 = 0
            java.util.Map<com.microsoft.azure.sdk.iot.device.MessageType, com.microsoft.azure.sdk.iot.device.transport.amqps.AmqpsDeviceOperations> r1 = r3.amqpsDeviceOperationsMap     // Catch:{ all -> 0x0026 }
            java.util.Set r1 = r1.entrySet()     // Catch:{ all -> 0x0026 }
            java.util.Iterator r1 = r1.iterator()     // Catch:{ all -> 0x0026 }
        L_0x000c:
            boolean r2 = r1.hasNext()     // Catch:{ all -> 0x0026 }
            if (r2 == 0) goto L_0x0024
            java.lang.Object r0 = r1.next()     // Catch:{ all -> 0x0026 }
            java.util.Map$Entry r0 = (java.util.Map.Entry) r0     // Catch:{ all -> 0x0026 }
            java.lang.Object r0 = r0.getValue()     // Catch:{ all -> 0x0026 }
            com.microsoft.azure.sdk.iot.device.transport.amqps.AmqpsDeviceOperations r0 = (com.microsoft.azure.sdk.iot.device.transport.amqps.AmqpsDeviceOperations) r0     // Catch:{ all -> 0x0026 }
            com.microsoft.azure.sdk.iot.device.transport.amqps.AmqpsMessage r0 = r0.getMessageFromReceiverLink(r4)     // Catch:{ all -> 0x0026 }
            if (r0 == 0) goto L_0x000c
        L_0x0024:
            monitor-exit(r3)
            return r0
        L_0x0026:
            r4 = move-exception
            monitor-exit(r3)
            throw r4
        */
        throw new UnsupportedOperationException("Method not decompiled: com.microsoft.azure.sdk.iot.device.transport.amqps.AmqpsSessionDeviceOperation.getMessageFromReceiverLink(java.lang.String):com.microsoft.azure.sdk.iot.device.transport.amqps.AmqpsMessage");
    }

    public boolean handleAuthenticationMessage(AmqpsMessage amqpsMessage) {
        boolean z = false;
        if (amqpsMessage != null) {
            synchronized (this.cbsCorrelationIdList) {
                UUID uuid = null;
                Iterator<UUID> it = this.cbsCorrelationIdList.iterator();
                while (true) {
                    if (!it.hasNext()) {
                        break;
                    }
                    UUID next = it.next();
                    if (this.amqpsDeviceAuthentication.handleAuthenticationMessage(amqpsMessage, next)) {
                        log.e("Setting amqps device authentication state to AUTHENTICATED");
                        this.amqpsAuthenticatorState = AmqpsDeviceAuthenticationState.AUTHENTICATED;
                        uuid = next;
                        break;
                    }
                }
                if (uuid != null) {
                    this.cbsCorrelationIdList.remove(uuid);
                    z = true;
                }
            }
        }
        return z;
    }

    public void initLink(n nVar) {
        if (nVar != null && this.amqpsAuthenticatorState == AmqpsDeviceAuthenticationState.AUTHENTICATED) {
            for (Map.Entry<MessageType, AmqpsDeviceOperations> value : this.amqpsDeviceOperationsMap.entrySet()) {
                ((AmqpsDeviceOperations) value.getValue()).initLink(nVar);
            }
        }
    }

    public boolean onLinkRemoteClose(String str) {
        for (Map.Entry<MessageType, AmqpsDeviceOperations> value : this.amqpsDeviceOperationsMap.entrySet()) {
            if (((AmqpsDeviceOperations) value.getValue()).onLinkRemoteClose(str)) {
                return true;
            }
        }
        return false;
    }

    public boolean onLinkRemoteOpen(String str) {
        if (this.amqpsAuthenticatorState != AmqpsDeviceAuthenticationState.AUTHENTICATED) {
            return false;
        }
        for (Map.Entry<MessageType, AmqpsDeviceOperations> value : this.amqpsDeviceOperationsMap.entrySet()) {
            if (((AmqpsDeviceOperations) value.getValue()).onLinkRemoteOpen(str)) {
                return true;
            }
        }
        return false;
    }

    public void openLinks(y yVar) {
        if (yVar != null && this.amqpsAuthenticatorState == AmqpsDeviceAuthenticationState.AUTHENTICATED) {
            synchronized (this.openLock) {
                for (AmqpsDeviceOperations openLinks : this.amqpsDeviceOperationsMap.values()) {
                    openLinks.openLinks(yVar);
                }
            }
        }
    }

    public Integer sendMessage(a aVar, MessageType messageType, String str) {
        int encode;
        if (this.amqpsAuthenticatorState != AmqpsDeviceAuthenticationState.AUTHENTICATED) {
            log.d("Attempted to send a message while state was not AUTHENTICATED, returning delivery tag of -1 ({})", (Object) aVar);
            return -1;
        } else if (!this.deviceClientConfig.getDeviceId().equals(str)) {
            return -1;
        } else {
            byte[] bArr = new byte[1024];
            while (true) {
                try {
                    encode = aVar.encode(bArr, 0, bArr.length);
                    break;
                } catch (BufferOverflowException unused) {
                    bArr = new byte[(bArr.length * 2)];
                }
            }
            byte[] bytes = String.valueOf(nextTag).getBytes();
            long j2 = nextTag;
            if (j2 == 2147483647L || j2 < 0) {
                nextTag = 0;
            } else {
                nextTag = j2 + 1;
            }
            return sendMessageAndGetDeliveryTag(messageType, bArr, 0, encode, bytes);
        }
    }

    public void subscribeToMessageType(y yVar, MessageType messageType) {
        if (messageType == MessageType.DEVICE_METHODS && !this.amqpsDeviceOperationsMap.keySet().contains(MessageType.DEVICE_METHODS)) {
            this.amqpsDeviceOperationsMap.put(MessageType.DEVICE_METHODS, new AmqpsDeviceMethods(this.deviceClientConfig));
            openLinks(yVar);
        }
        if (messageType == MessageType.DEVICE_TWIN && !this.amqpsDeviceOperationsMap.keySet().contains(MessageType.DEVICE_TWIN)) {
            this.amqpsDeviceOperationsMap.put(MessageType.DEVICE_TWIN, new AmqpsDeviceTwin(this.deviceClientConfig));
            openLinks(yVar);
        }
    }
}
