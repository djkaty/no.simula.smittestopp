package com.microsoft.azure.sdk.iot.device.transport.amqps;

import com.microsoft.azure.sdk.iot.device.DeviceClientConfig;
import com.microsoft.azure.sdk.iot.device.Message;
import com.microsoft.azure.sdk.iot.device.MessageProperty;
import com.microsoft.azure.sdk.iot.device.MessageType;
import com.microsoft.azure.sdk.iot.device.exceptions.ProtocolException;
import com.microsoft.azure.sdk.iot.device.transport.IotHubTransportMessage;
import com.microsoft.identity.common.internal.cache.CacheKeyValueDelegate;
import java.util.HashMap;
import java.util.Map;
import java.util.UUID;
import k.a.b.a.b.f;
import k.a.b.a.b.k.d;
import k.a.b.a.b.k.u;
import k.a.b.a.b.k.v;
import k.a.b.a.b.n.p;
import k.a.b.a.b.n.q;
import k.a.b.a.b.n.r;
import k.a.b.a.d.e;
import k.a.b.a.d.n;
import k.a.b.a.d.t;
import k.a.b.a.d.x;
import k.a.b.a.d.y;
import k.a.b.a.f.d.a;
import k.f.b;
import k.f.c;

public abstract class AmqpsDeviceOperations {
    public static final String AMQPS_APP_PROPERTY_PREFIX = "iothub-app-";
    public static final String API_VERSION_KEY = "com.microsoft:api-version";
    public static final String INPUT_NAME_PROPERTY_KEY = "x-opt-input-name";
    public static final String TO_KEY = "to";
    public static final String USER_ID_KEY = "userId";
    public static final String VERSION_IDENTIFIER_KEY = "com.microsoft:client-version";
    public static final b log = c.a((Class<?>) AmqpsDeviceOperations.class);
    public Map<f, Object> amqpProperties;
    public AmqpsDeviceOperationLinkState amqpsRecvLinkState;
    public AmqpsDeviceOperationLinkState amqpsSendLinkState;
    public String linkCorrelationId;
    public t receiverLink;
    public String receiverLinkAddress;
    public String receiverLinkEndpointPath;
    public String receiverLinkTag;
    public x senderLink;
    public String senderLinkAddress;
    public String senderLinkEndpointPath;
    public String senderLinkTag;

    public AmqpsDeviceOperations(DeviceClientConfig deviceClientConfig, String str, String str2, String str3, String str4, String str5, String str6) {
        AmqpsDeviceOperationLinkState amqpsDeviceOperationLinkState = AmqpsDeviceOperationLinkState.UNKNOWN;
        this.amqpsSendLinkState = amqpsDeviceOperationLinkState;
        this.amqpsRecvLinkState = amqpsDeviceOperationLinkState;
        if (deviceClientConfig != null) {
            HashMap hashMap = new HashMap();
            this.amqpProperties = hashMap;
            hashMap.put(f.a(VERSION_IDENTIFIER_KEY), deviceClientConfig.getProductInfo().getUserAgentString());
            this.linkCorrelationId = UUID.randomUUID().toString();
            this.senderLink = null;
            this.receiverLink = null;
            AmqpsDeviceOperationLinkState amqpsDeviceOperationLinkState2 = AmqpsDeviceOperationLinkState.CLOSED;
            this.amqpsSendLinkState = amqpsDeviceOperationLinkState2;
            this.amqpsRecvLinkState = amqpsDeviceOperationLinkState2;
            String moduleId = deviceClientConfig.getModuleId();
            String deviceId = deviceClientConfig.getDeviceId();
            if (moduleId == null || moduleId.isEmpty()) {
                this.senderLinkEndpointPath = str;
                this.receiverLinkEndpointPath = str2;
                this.senderLinkTag = str5 + deviceId + CacheKeyValueDelegate.CACHE_VALUE_SEPARATOR + this.linkCorrelationId;
                this.receiverLinkTag = str6 + deviceId + CacheKeyValueDelegate.CACHE_VALUE_SEPARATOR + this.linkCorrelationId;
                this.senderLinkAddress = String.format(this.senderLinkEndpointPath, new Object[]{deviceId});
                this.receiverLinkAddress = String.format(this.receiverLinkEndpointPath, new Object[]{deviceId});
                return;
            }
            this.senderLinkEndpointPath = str3;
            this.receiverLinkEndpointPath = str4;
            this.senderLinkTag = str5 + deviceId + "/" + moduleId + CacheKeyValueDelegate.CACHE_VALUE_SEPARATOR + this.linkCorrelationId;
            this.receiverLinkTag = str6 + deviceId + "/" + moduleId + CacheKeyValueDelegate.CACHE_VALUE_SEPARATOR + this.linkCorrelationId;
            this.senderLinkAddress = String.format(this.senderLinkEndpointPath, new Object[]{deviceId, moduleId});
            this.receiverLinkAddress = String.format(this.receiverLinkEndpointPath, new Object[]{deviceId, moduleId});
            return;
        }
        throw new IllegalArgumentException("device config cannot be null");
    }

    public void closeLinks() {
        x xVar = this.senderLink;
        if (xVar != null) {
            xVar.close();
            this.senderLink = null;
            log.c("Closed {} sender link with link correlation id {}", getLinkInstanceType(), this.linkCorrelationId);
        } else {
            log.e("Sender link was already closed, so nothing was done to the link");
        }
        t tVar = this.receiverLink;
        if (tVar != null) {
            tVar.close();
            this.receiverLink = null;
            log.c("Closed {} receiver link with link correlation id {}", getLinkInstanceType(), this.linkCorrelationId);
        } else {
            log.e("Receiver link was already closed, so nothing was done to the link");
        }
        AmqpsDeviceOperationLinkState amqpsDeviceOperationLinkState = AmqpsDeviceOperationLinkState.CLOSED;
        this.amqpsSendLinkState = amqpsDeviceOperationLinkState;
        this.amqpsRecvLinkState = amqpsDeviceOperationLinkState;
    }

    public abstract AmqpsConvertFromProtonReturnValue convertFromProton(AmqpsMessage amqpsMessage, DeviceClientConfig deviceClientConfig);

    public abstract AmqpsConvertToProtonReturnValue convertToProton(Message message);

    public Map<f, Object> getAmqpProperties() {
        return this.amqpProperties;
    }

    public abstract String getLinkInstanceType();

    public AmqpsMessage getMessageFromReceiverLink(String str) {
        t tVar;
        e k2;
        if (str.isEmpty()) {
            throw new IllegalArgumentException("The linkName cannot be empty.");
        } else if (!str.equals(getReceiverLinkTag()) || (tVar = this.receiverLink) == null || (k2 = tVar.k()) == null || !k2.t() || k2.O()) {
            return null;
        } else {
            int pending = k2.pending();
            byte[] bArr = new byte[pending];
            int b = this.receiverLink.b(bArr, 0, pending);
            log.e("read {} bytes from receiver link {}", Integer.valueOf(b), this.receiverLinkTag);
            if (!this.receiverLink.d()) {
                log.b("{} receiver link with link correlation id {} did not advance after bytes were read from it", getLinkInstanceType(), this.linkCorrelationId);
            }
            if (pending != b) {
                log.c("Amqp read from {} receiver link with link correlation id {} did not read the expected amount of bytes. Read {} but expected {}", getLinkInstanceType(), this.linkCorrelationId, Integer.valueOf(b), Integer.valueOf(pending));
            }
            AmqpsMessage amqpsMessage = new AmqpsMessage();
            amqpsMessage.setDelivery(k2);
            amqpsMessage.decode(bArr, 0, b);
            return amqpsMessage;
        }
    }

    public String getReceiverLinkAddress() {
        return this.receiverLinkAddress;
    }

    public String getReceiverLinkTag() {
        return this.receiverLinkTag;
    }

    public String getSenderLinkAddress() {
        return this.senderLinkAddress;
    }

    public String getSenderLinkTag() {
        return this.senderLinkTag;
    }

    public synchronized void initLink(n nVar) {
        if (nVar != null) {
            String name = nVar.getName();
            if (name.equals(getSenderLinkTag()) && this.amqpsSendLinkState == AmqpsDeviceOperationLinkState.OPENING) {
                v vVar = new v();
                vVar.a = getSenderLinkAddress();
                nVar.a((r) vVar);
                nVar.a(p.UNSETTLED);
                log.d("Initializing sender link with correlation id {}", (Object) this.linkCorrelationId);
            } else if (!name.equals(getReceiverLinkTag()) || this.amqpsRecvLinkState != AmqpsDeviceOperationLinkState.OPENING) {
                log.d("InitLink called, but no link names matched {} or the link was not opening yet", (Object) name);
            } else {
                u uVar = new u();
                uVar.a = getReceiverLinkAddress();
                nVar.a((q) uVar);
                nVar.a(k.a.b.a.b.n.n.FIRST);
                log.d("Initializing receiver link with correlation id {}", (Object) this.linkCorrelationId);
            }
        } else {
            throw new IllegalArgumentException("The link cannot be null.");
        }
    }

    public a iotHubMessageToProtonMessage(Message message) {
        log.b("Converting IoT Hub message to proton message for {} sender link with link correlation id {}. IoT Hub message correlationId {}", getLinkInstanceType(), this.linkCorrelationId, message.getCorrelationId());
        a aVar = new a();
        k.a.b.a.b.k.p pVar = new k.a.b.a.b.k.p();
        if (message.getMessageId() != null) {
            pVar.a = message.getMessageId();
        }
        if (message.getCorrelationId() != null) {
            pVar.f1578f = message.getCorrelationId();
        }
        if (message.getContentType() != null) {
            pVar.f1579g = f.a(message.getContentType());
        }
        if (message.getContentEncoding() != null) {
            pVar.f1580h = f.a(message.getContentEncoding());
        }
        aVar.setProperties(pVar);
        HashMap hashMap = new HashMap();
        if (message.getProperties().length > 0) {
            for (MessageProperty messageProperty : message.getProperties()) {
                if (!MessageProperty.RESERVED_PROPERTY_NAMES.contains(messageProperty.getName())) {
                    hashMap.put(messageProperty.getName(), messageProperty.getValue());
                }
            }
        }
        if (message.getConnectionDeviceId() != null) {
            hashMap.put(MessageProperty.CONNECTION_DEVICE_ID, message.getConnectionDeviceId());
        }
        if (message.getConnectionModuleId() != null) {
            hashMap.put(MessageProperty.CONNECTION_MODULE_ID, message.getConnectionModuleId());
        }
        if (message.getCreationTimeUTC() != null) {
            hashMap.put(MessageProperty.IOTHUB_CREATION_TIME_UTC, message.getCreationTimeUTCString());
        }
        if (message.isSecurityMessage()) {
            hashMap.put(MessageProperty.IOTHUB_SECURITY_INTERFACE_ID, MessageProperty.IOTHUB_SECURITY_INTERFACE_ID_VALUE);
        }
        aVar.setApplicationProperties(new d(hashMap));
        aVar.setBody(new k.a.b.a.b.k.e(new k.a.b.a.b.a(message.getBytes())));
        return aVar;
    }

    public boolean onLinkRemoteClose(String str) {
        if (str.equals(getSenderLinkTag())) {
            this.amqpsSendLinkState = AmqpsDeviceOperationLinkState.CLOSED;
            log.c("{} sender link with link correlation id {} was closed", getLinkInstanceType(), this.linkCorrelationId);
            return true;
        } else if (!str.equals(getReceiverLinkTag())) {
            return false;
        } else {
            this.amqpsRecvLinkState = AmqpsDeviceOperationLinkState.CLOSED;
            log.c("{} receiver link with link correlation id {} was closed", getLinkInstanceType(), this.linkCorrelationId);
            return true;
        }
    }

    public boolean onLinkRemoteOpen(String str) {
        if (str.equals(getSenderLinkTag())) {
            this.amqpsSendLinkState = AmqpsDeviceOperationLinkState.OPENED;
            log.c("{} sender link with link correlation id {} was successfully opened {}", getLinkInstanceType(), this.linkCorrelationId);
            return true;
        } else if (!str.equals(getReceiverLinkTag())) {
            return false;
        } else {
            this.amqpsRecvLinkState = AmqpsDeviceOperationLinkState.OPENED;
            log.c("{} receiver link with link correlation id {} was successfully opened", getLinkInstanceType(), this.linkCorrelationId);
            return true;
        }
    }

    public synchronized void openLinks(y yVar) {
        if (yVar != null) {
            if (this.senderLink == null && this.amqpsSendLinkState == AmqpsDeviceOperationLinkState.CLOSED) {
                x a = yVar.a(getSenderLinkTag());
                this.senderLink = a;
                a.a(getAmqpProperties());
                v vVar = new v();
                u uVar = new u();
                vVar.a = getSenderLinkAddress();
                uVar.a = getReceiverLinkAddress();
                this.senderLink.a((r) vVar);
                this.senderLink.a((q) uVar);
                this.amqpsSendLinkState = AmqpsDeviceOperationLinkState.OPENING;
                this.senderLink.open();
                log.c("Opening {} sender link with link correlation id {}", getLinkInstanceType(), this.linkCorrelationId);
            }
            if (this.receiverLink == null && this.amqpsRecvLinkState == AmqpsDeviceOperationLinkState.CLOSED) {
                t b = yVar.b(getReceiverLinkTag());
                this.receiverLink = b;
                b.a(getAmqpProperties());
                v vVar2 = new v();
                u uVar2 = new u();
                vVar2.a = getSenderLinkAddress();
                uVar2.a = getReceiverLinkAddress();
                this.receiverLink.a((r) vVar2);
                this.receiverLink.a((q) uVar2);
                this.amqpsRecvLinkState = AmqpsDeviceOperationLinkState.OPENING;
                this.receiverLink.open();
                log.c("Opening {} receiver link with link correlation id {}", getLinkInstanceType(), this.linkCorrelationId);
            }
        } else {
            throw new IllegalArgumentException("The session cannot be null.");
        }
    }

    public boolean operationLinksOpened() {
        AmqpsDeviceOperationLinkState amqpsDeviceOperationLinkState = this.amqpsSendLinkState;
        AmqpsDeviceOperationLinkState amqpsDeviceOperationLinkState2 = AmqpsDeviceOperationLinkState.OPENED;
        return amqpsDeviceOperationLinkState == amqpsDeviceOperationLinkState2 && this.amqpsRecvLinkState == amqpsDeviceOperationLinkState2;
    }

    public IotHubTransportMessage protonMessageToIoTHubMessage(a aVar) {
        byte[] bArr;
        log.b("Converting proton message to iot hub message for {} receiver link with link correlation id {}. Proton message correlation id {}", getLinkInstanceType(), this.linkCorrelationId, aVar.getCorrelationId());
        k.a.b.a.b.k.e eVar = (k.a.b.a.b.k.e) aVar.getBody();
        if (eVar != null) {
            k.a.b.a.b.a aVar2 = eVar.a;
            bArr = new byte[aVar2.f1569c];
            aVar2.a().get(bArr);
        } else {
            bArr = new byte[0];
        }
        IotHubTransportMessage iotHubTransportMessage = new IotHubTransportMessage(bArr, MessageType.UNKNOWN);
        k.a.b.a.b.k.p properties = aVar.getProperties();
        if (properties != null) {
            Object obj = properties.f1578f;
            if (obj != null) {
                iotHubTransportMessage.setCorrelationId(obj.toString());
            }
            Object obj2 = properties.a;
            if (obj2 != null) {
                iotHubTransportMessage.setMessageId(obj2.toString());
            }
            String str = properties.f1575c;
            if (str != null) {
                iotHubTransportMessage.setProperty("iothub-app-to", str);
            }
            k.a.b.a.b.a aVar3 = properties.b;
            if (aVar3 != null) {
                iotHubTransportMessage.setProperty("iothub-app-userId", aVar3.toString());
            }
            f fVar = properties.f1580h;
            if (fVar != null) {
                iotHubTransportMessage.setContentEncoding(fVar.x);
            }
            f fVar2 = properties.f1579g;
            if (fVar2 != null) {
                iotHubTransportMessage.setContentType(fVar2.x);
            }
        }
        if (aVar.getApplicationProperties() != null) {
            for (Map.Entry next : aVar.getApplicationProperties().a.entrySet()) {
                String str2 = (String) next.getKey();
                if (str2.equalsIgnoreCase(MessageProperty.CONNECTION_DEVICE_ID)) {
                    iotHubTransportMessage.setConnectionDeviceId(next.getValue().toString());
                } else if (str2.equalsIgnoreCase(MessageProperty.CONNECTION_MODULE_ID)) {
                    iotHubTransportMessage.setConnectionModuleId(next.getValue().toString());
                } else if (!MessageProperty.RESERVED_PROPERTY_NAMES.contains(str2)) {
                    iotHubTransportMessage.setProperty((String) next.getKey(), next.getValue().toString());
                }
            }
        }
        return iotHubTransportMessage;
    }

    public synchronized AmqpsSendReturnValue sendMessageAndGetDeliveryTag(MessageType messageType, byte[] bArr, int i2, int i3, byte[] bArr2) {
        e a;
        if (this.senderLink == null) {
            throw new IllegalStateException("Trying to send but Sender link is not initialized.");
        } else if (bArr2.length != 0) {
            a = this.senderLink.a(bArr2);
            try {
                log.b("Sending {} bytes over the amqp {} sender link with link correlation id {}", Integer.valueOf(i3), getLinkInstanceType(), this.linkCorrelationId);
                int a2 = this.senderLink.a(bArr, i2, i3);
                log.b("{} bytes sent over the amqp {} sender link with link correlation id {}", Integer.valueOf(a2), getLinkInstanceType(), this.linkCorrelationId);
                if (a2 != i3) {
                    throw new ProtocolException(String.format("Amqp send operation did not send all of the expected bytes for %s sender link with link correlation id %s, retrying to send the message", new Object[]{getLinkInstanceType(), this.linkCorrelationId}));
                } else if (this.senderLink.d()) {
                    log.b("Message was sent over {} sender link with delivery tag {} and hash {}", getLinkInstanceType(), new String(bArr2), Integer.valueOf(a.hashCode()));
                } else {
                    throw new ProtocolException(String.format("Failed to advance the senderLink after sending a message on %s sender link with link correlation id %s, retrying to send the message", new Object[]{getLinkInstanceType(), this.linkCorrelationId}));
                }
            } catch (Exception e2) {
                log.c("Encountered a problem while sending a message on {} sender link with link correlation id {}", getLinkInstanceType(), this.linkCorrelationId, e2);
                this.senderLink.d();
                a.a();
                return new AmqpsSendReturnValue(false, -1);
            }
        } else {
            throw new IllegalArgumentException("Trying deliveryTag cannot be null.");
        }
        return new AmqpsSendReturnValue(true, a.hashCode(), bArr2);
    }
}
