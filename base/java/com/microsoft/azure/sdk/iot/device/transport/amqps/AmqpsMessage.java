package com.microsoft.azure.sdk.iot.device.transport.amqps;

import com.microsoft.azure.sdk.iot.device.DeviceClientConfig;
import com.microsoft.azure.sdk.iot.device.MessageType;
import k.a.b.a.b.k.r;
import k.a.b.a.b.k.s;
import k.a.b.a.d.e;
import k.a.b.a.f.d.a;

public class AmqpsMessage extends a {
    public e _delivery;
    public MessageType amqpsMessageType;
    public DeviceClientConfig deviceClientConfig;

    /* renamed from: com.microsoft.azure.sdk.iot.device.transport.amqps.AmqpsMessage$1  reason: invalid class name */
    public static /* synthetic */ class AnonymousClass1 {
        public static final /* synthetic */ int[] $SwitchMap$com$microsoft$azure$sdk$iot$device$transport$amqps$AmqpsMessage$ACK_TYPE;

        /* JADX WARNING: Can't wrap try/catch for region: R(8:0|(2:1|2)|3|5|6|7|8|10) */
        /* JADX WARNING: Code restructure failed: missing block: B:11:?, code lost:
            return;
         */
        /* JADX WARNING: Failed to process nested try/catch */
        /* JADX WARNING: Missing exception handler attribute for start block: B:7:0x0016 */
        static {
            /*
                com.microsoft.azure.sdk.iot.device.transport.amqps.AmqpsMessage$ACK_TYPE[] r0 = com.microsoft.azure.sdk.iot.device.transport.amqps.AmqpsMessage.ACK_TYPE.values()
                int r0 = r0.length
                int[] r0 = new int[r0]
                $SwitchMap$com$microsoft$azure$sdk$iot$device$transport$amqps$AmqpsMessage$ACK_TYPE = r0
                r1 = 1
                com.microsoft.azure.sdk.iot.device.transport.amqps.AmqpsMessage$ACK_TYPE r2 = com.microsoft.azure.sdk.iot.device.transport.amqps.AmqpsMessage.ACK_TYPE.COMPLETE     // Catch:{ NoSuchFieldError -> 0x000f }
                r2 = 0
                r0[r2] = r1     // Catch:{ NoSuchFieldError -> 0x000f }
            L_0x000f:
                r0 = 2
                int[] r2 = $SwitchMap$com$microsoft$azure$sdk$iot$device$transport$amqps$AmqpsMessage$ACK_TYPE     // Catch:{ NoSuchFieldError -> 0x0016 }
                com.microsoft.azure.sdk.iot.device.transport.amqps.AmqpsMessage$ACK_TYPE r3 = com.microsoft.azure.sdk.iot.device.transport.amqps.AmqpsMessage.ACK_TYPE.ABANDON     // Catch:{ NoSuchFieldError -> 0x0016 }
                r2[r1] = r0     // Catch:{ NoSuchFieldError -> 0x0016 }
            L_0x0016:
                int[] r1 = $SwitchMap$com$microsoft$azure$sdk$iot$device$transport$amqps$AmqpsMessage$ACK_TYPE     // Catch:{ NoSuchFieldError -> 0x001d }
                com.microsoft.azure.sdk.iot.device.transport.amqps.AmqpsMessage$ACK_TYPE r2 = com.microsoft.azure.sdk.iot.device.transport.amqps.AmqpsMessage.ACK_TYPE.REJECT     // Catch:{ NoSuchFieldError -> 0x001d }
                r2 = 3
                r1[r0] = r2     // Catch:{ NoSuchFieldError -> 0x001d }
            L_0x001d:
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: com.microsoft.azure.sdk.iot.device.transport.amqps.AmqpsMessage.AnonymousClass1.<clinit>():void");
        }
    }

    public enum ACK_TYPE {
        COMPLETE,
        ABANDON,
        REJECT
    }

    public void acknowledge(ACK_TYPE ack_type) {
        int ordinal = ack_type.ordinal();
        if (ordinal == 0) {
            this._delivery.a(k.a.b.a.b.k.a.a);
        } else if (ordinal == 1) {
            this._delivery.a(s.a);
        } else if (ordinal == 2) {
            this._delivery.a(new r());
        } else {
            throw new IllegalStateException("Invalid ack type given. Type " + ack_type + " does not exist.");
        }
        this._delivery.R();
    }

    public MessageType getAmqpsMessageType() {
        return this.amqpsMessageType;
    }

    public DeviceClientConfig getDeviceClientConfig() {
        return this.deviceClientConfig;
    }

    public void setAmqpsMessageType(MessageType messageType) {
        this.amqpsMessageType = messageType;
    }

    public void setDelivery(e eVar) {
        this._delivery = eVar;
    }

    public void setDeviceClientConfig(DeviceClientConfig deviceClientConfig2) {
        this.deviceClientConfig = deviceClientConfig2;
    }
}
