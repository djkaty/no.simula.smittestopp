package com.microsoft.azure.sdk.iot.device.transport.amqps;

import com.microsoft.azure.sdk.iot.device.DeviceClientConfig;
import com.microsoft.azure.sdk.iot.device.MessageProperty;
import com.microsoft.azure.sdk.iot.device.MessageType;
import com.microsoft.azure.sdk.iot.device.exceptions.TransportException;
import com.microsoft.azure.sdk.iot.device.transport.TransportUtils;
import com.microsoft.azure.sdk.iot.device.transport.amqps.AmqpsMessage;
import e.a.a.a.a;
import java.io.IOException;
import java.nio.BufferOverflowException;
import java.util.HashMap;
import java.util.Map;
import java.util.UUID;
import k.a.b.a.b.f;
import k.a.b.a.b.k.d;
import k.a.b.a.b.k.p;
import k.a.b.a.d.c0;
import k.a.b.a.d.g0.v;
import k.f.b;
import k.f.c;

public final class AmqpsDeviceAuthenticationCBS extends AmqpsDeviceAuthentication {
    public static final String CBS_REPLY = "cbs";
    public static final String CBS_TO = "$cbs";
    public static final String DEVICES_PATH = "/devices/";
    public static final String NAME_KEY = "name";
    public static final String OPERATION_KEY = "operation";
    public static final String OPERATION_VALUE = "put-token";
    public static final String RECEIVER_LINK_ENDPOINT_PATH = "$cbs";
    public static final String RECEIVER_LINK_TAG_PREFIX = "cbs-receiver-";
    public static final String SENDER_LINK_ENDPOINT_PATH = "$cbs";
    public static final String SENDER_LINK_TAG_PREFIX = "cbs-sender-";
    public static final String TYPE_KEY = "type";
    public static final String TYPE_VALUE = "servicebus.windows.net:sastoken";
    public static final b log = c.a((Class<?>) AmqpsDeviceAuthenticationCBS.class);
    public String PROP_KEY_STATUS_CODE = AmqpsIotHubConnection.APPLICATION_PROPERTY_STATUS_CODE;
    public final DeviceClientConfig deviceClientConfig;
    public long nextTag = 0;

    public AmqpsDeviceAuthenticationCBS(DeviceClientConfig deviceClientConfig2) {
        super(deviceClientConfig2);
        this.deviceClientConfig = deviceClientConfig2;
        this.senderLinkEndpointPath = "$cbs";
        this.receiverLinkEndpointPath = "$cbs";
        StringBuilder a = a.a(SENDER_LINK_TAG_PREFIX);
        a.append(this.senderLinkTag);
        this.senderLinkTag = a.toString();
        StringBuilder a2 = a.a(RECEIVER_LINK_TAG_PREFIX);
        a2.append(this.receiverLinkTag);
        this.receiverLinkTag = a2.toString();
        this.senderLinkAddress = this.senderLinkEndpointPath;
        this.receiverLinkAddress = this.receiverLinkEndpointPath;
        this.amqpProperties.put(f.a(AmqpsDeviceOperations.API_VERSION_KEY), TransportUtils.IOTHUB_API_VERSION);
        this.amqpProperties.put(f.a(MessageProperty.CONNECTION_DEVICE_ID), deviceClientConfig2.getDeviceId());
    }

    private k.a.b.a.f.d.a createCBSAuthenticationMessage(DeviceClientConfig deviceClientConfig2, UUID uuid) {
        k.a.b.a.f.d.a aVar = new k.a.b.a.f.d.a();
        p pVar = new p();
        pVar.a = uuid;
        pVar.f1575c = "$cbs";
        pVar.f1577e = CBS_REPLY;
        aVar.setProperties(pVar);
        HashMap hashMap = new HashMap(3);
        hashMap.put("operation", OPERATION_VALUE);
        hashMap.put("type", TYPE_VALUE);
        String gatewayHostname = deviceClientConfig2.getGatewayHostname();
        if (gatewayHostname == null || gatewayHostname.isEmpty()) {
            gatewayHostname = deviceClientConfig2.getIotHubHostname();
        }
        StringBuilder a = a.a(gatewayHostname, DEVICES_PATH);
        a.append(deviceClientConfig2.getDeviceId());
        hashMap.put("name", a.toString());
        aVar.setApplicationProperties(new d(hashMap));
        try {
            aVar.setBody(new k.a.b.a.b.k.c(deviceClientConfig2.getSasTokenAuthentication().getRenewedSasToken(true, true)));
            return aVar;
        } catch (IOException e2) {
            log.e("getRenewedSasToken has thrown exception while building new cbs authentication message", (Throwable) e2);
            throw new TransportException((Throwable) e2);
        }
    }

    public void authenticate(DeviceClientConfig deviceClientConfig2, UUID uuid) {
        int encode;
        log.e("authenticate called in AmqpsDeviceAuthenticationCBS");
        k.a.b.a.f.d.a createCBSAuthenticationMessage = createCBSAuthenticationMessage(deviceClientConfig2, uuid);
        byte[] bArr = new byte[1024];
        while (true) {
            try {
                encode = createCBSAuthenticationMessage.encode(bArr, 0, bArr.length);
                break;
            } catch (BufferOverflowException unused) {
                bArr = new byte[(bArr.length * 2)];
            }
        }
        byte[] bytes = String.valueOf(this.nextTag).getBytes();
        long j2 = this.nextTag;
        if (j2 == 2147483647L || j2 < 0) {
            this.nextTag = 0;
        } else {
            this.nextTag = j2 + 1;
        }
        sendMessageAndGetDeliveryTag(MessageType.CBS_AUTHENTICATION, bArr, 0, encode, bytes);
    }

    public String getLinkInstanceType() {
        return CBS_REPLY;
    }

    public AmqpsMessage getMessageFromReceiverLink(String str) {
        AmqpsMessage messageFromReceiverLink = super.getMessageFromReceiverLink(str);
        if (messageFromReceiverLink != null) {
            messageFromReceiverLink.setAmqpsMessageType(MessageType.CBS_AUTHENTICATION);
            if (messageFromReceiverLink.getCorrelationId() != null) {
                log.c("Received amqp message on cbs receiver link with link correlation id {} and message correlation id {}", this.linkCorrelationId, messageFromReceiverLink.getCorrelationId());
            } else {
                log.e("Received amqp message on cbs receiver link with link correlation id {}", (Object) this.linkCorrelationId);
            }
        }
        return messageFromReceiverLink;
    }

    public boolean handleAuthenticationMessage(AmqpsMessage amqpsMessage, UUID uuid) {
        if (amqpsMessage == null) {
            log.d("Could not handle authentication message because it was null");
        } else if (amqpsMessage.getApplicationProperties() == null || amqpsMessage.getProperties() == null) {
            log.d("Could not handle authentication message because it had no application properties or had no system properties");
        } else if (amqpsMessage.getProperties().f1578f.equals(uuid)) {
            for (Map.Entry next : amqpsMessage.getApplicationProperties().a.entrySet()) {
                if (((String) next.getKey()).equals(this.PROP_KEY_STATUS_CODE) && (next.getValue() instanceof Integer)) {
                    int intValue = ((Integer) next.getValue()).intValue();
                    if (intValue == 200) {
                        log.b("CBS authentication message was acknowledged with status 200, authentication for one cbs link pair was successful");
                        amqpsMessage.acknowledge(AmqpsMessage.ACK_TYPE.COMPLETE);
                        return true;
                    }
                    log.a("CBS authentication message was rejected with status {}, authentication has failed", (Object) Integer.valueOf(intValue));
                    return false;
                }
            }
            log.d("Could not handle authentication message because the received message did not contain a status code even though the correlation id was the expected value");
        } else {
            log.e("Could not handle authentication message because the received correlation id did not match the expected value");
        }
        return false;
    }

    public void setSslDomain(c0 c0Var) {
        ((v) c0Var.E()).a("ANONYMOUS");
        try {
            c0Var.a(makeDomain(this.deviceClientConfig.getAuthenticationProvider().getSSLContext()));
        } catch (IOException e2) {
            log.e("setSslDomain has thrown an exception", (Throwable) e2);
            throw new TransportException((Throwable) e2);
        }
    }
}
