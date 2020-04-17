package com.microsoft.azure.sdk.iot.device.DeviceTwin;

import com.microsoft.azure.sdk.iot.device.DeviceClientConfig;
import com.microsoft.azure.sdk.iot.device.DeviceIO;
import com.microsoft.azure.sdk.iot.device.IotHubEventCallback;
import com.microsoft.azure.sdk.iot.device.IotHubStatusCode;
import com.microsoft.azure.sdk.iot.device.MessageCallback;
import com.microsoft.azure.sdk.iot.device.MessageType;
import com.microsoft.azure.sdk.iot.device.ObjectLock;
import com.microsoft.azure.sdk.iot.device.transport.IotHubTransportMessage;
import k.f.b;
import k.f.c;

public final class DeviceMethod {
    public static final b log = c.a((Class<?>) DeviceMethod.class);
    public final ObjectLock DEVICE_METHOD_LOCK = new ObjectLock();
    public DeviceClientConfig config;
    public DeviceIO deviceIO;
    public DeviceMethodCallback deviceMethodCallback;
    public Object deviceMethodCallbackContext;
    public IotHubEventCallback deviceMethodStatusCallback;
    public Object deviceMethodStatusCallbackContext;
    public boolean isSubscribed = false;

    /* renamed from: com.microsoft.azure.sdk.iot.device.DeviceTwin.DeviceMethod$1  reason: invalid class name */
    public static /* synthetic */ class AnonymousClass1 {
        public static final /* synthetic */ int[] $SwitchMap$com$microsoft$azure$sdk$iot$device$DeviceTwin$DeviceOperations;

        static {
            int[] iArr = new int[DeviceOperations.values().length];
            $SwitchMap$com$microsoft$azure$sdk$iot$device$DeviceTwin$DeviceOperations = iArr;
            try {
                DeviceOperations deviceOperations = DeviceOperations.DEVICE_OPERATION_METHOD_RECEIVE_REQUEST;
                iArr[10] = 1;
            } catch (NoSuchFieldError unused) {
            }
        }
    }

    public final class deviceMethodRequestMessageCallback implements IotHubEventCallback {
        public deviceMethodRequestMessageCallback() {
        }

        public void execute(IotHubStatusCode iotHubStatusCode, Object obj) {
            if (DeviceMethod.this.deviceMethodStatusCallback != null) {
                DeviceMethod.this.deviceMethodStatusCallback.execute(iotHubStatusCode, DeviceMethod.this.deviceMethodStatusCallbackContext);
            }
        }

        public /* synthetic */ deviceMethodRequestMessageCallback(DeviceMethod deviceMethod, AnonymousClass1 r2) {
            this();
        }
    }

    public DeviceMethod(DeviceIO deviceIO2, DeviceClientConfig deviceClientConfig, IotHubEventCallback iotHubEventCallback, Object obj) {
        if (deviceIO2 == null || deviceClientConfig == null) {
            throw new IllegalArgumentException("Client or config cannot be null");
        } else if (iotHubEventCallback != null) {
            this.deviceIO = deviceIO2;
            this.config = deviceClientConfig;
            this.deviceMethodStatusCallback = iotHubEventCallback;
            this.deviceMethodStatusCallbackContext = obj;
            deviceClientConfig.setDeviceMethodsMessageCallback(new deviceMethodResponseCallback(this, (AnonymousClass1) null), (Object) null);
        } else {
            throw new IllegalArgumentException("Status call back cannot be null");
        }
    }

    public void subscribeToDeviceMethod(DeviceMethodCallback deviceMethodCallback2, Object obj) {
        if (deviceMethodCallback2 != null) {
            this.deviceMethodCallback = deviceMethodCallback2;
            this.deviceMethodCallbackContext = obj;
            if (!this.isSubscribed) {
                IotHubTransportMessage iotHubTransportMessage = new IotHubTransportMessage(new byte[0], MessageType.DEVICE_METHODS);
                iotHubTransportMessage.setDeviceOperationType(DeviceOperations.DEVICE_OPERATION_METHOD_SUBSCRIBE_REQUEST);
                iotHubTransportMessage.setConnectionDeviceId(this.config.getDeviceId());
                this.deviceIO.sendEventAsync(iotHubTransportMessage, new deviceMethodRequestMessageCallback(this, (AnonymousClass1) null), (Object) null, this.config.getDeviceId());
                return;
            }
            return;
        }
        throw new IllegalArgumentException("Callback cannot be null");
    }

    public final class deviceMethodResponseCallback implements MessageCallback {
        public DeviceClientConfig nestedConfig;

        public deviceMethodResponseCallback() {
            this.nestedConfig = DeviceMethod.this.config;
        }

        /* JADX WARNING: Can't wrap try/catch for region: R(2:22|23) */
        /* JADX WARNING: Code restructure failed: missing block: B:23:?, code lost:
            com.microsoft.azure.sdk.iot.device.DeviceTwin.DeviceMethod.access$200().c("User callback did not succeed");
            r1 = com.microsoft.azure.sdk.iot.device.IotHubMessageResult.REJECT;
            com.microsoft.azure.sdk.iot.device.DeviceTwin.DeviceMethod.access$400(r5.this$0).execute(r0, com.microsoft.azure.sdk.iot.device.DeviceTwin.DeviceMethod.access$300(r5.this$0));
         */
        /* JADX WARNING: Missing exception handler attribute for start block: B:22:0x0104 */
        /* Code decompiled incorrectly, please refer to instructions dump. */
        public com.microsoft.azure.sdk.iot.device.IotHubMessageResult execute(com.microsoft.azure.sdk.iot.device.Message r6, java.lang.Object r7) {
            /*
                r5 = this;
                com.microsoft.azure.sdk.iot.device.DeviceTwin.DeviceMethod r7 = com.microsoft.azure.sdk.iot.device.DeviceTwin.DeviceMethod.this
                com.microsoft.azure.sdk.iot.device.ObjectLock r7 = r7.DEVICE_METHOD_LOCK
                monitor-enter(r7)
                com.microsoft.azure.sdk.iot.device.IotHubStatusCode r0 = com.microsoft.azure.sdk.iot.device.IotHubStatusCode.ERROR     // Catch:{ all -> 0x012a }
                com.microsoft.azure.sdk.iot.device.IotHubMessageResult r1 = com.microsoft.azure.sdk.iot.device.IotHubMessageResult.ABANDON     // Catch:{ all -> 0x012a }
                com.microsoft.azure.sdk.iot.device.MessageType r2 = r6.getMessageType()     // Catch:{ all -> 0x012a }
                com.microsoft.azure.sdk.iot.device.MessageType r3 = com.microsoft.azure.sdk.iot.device.MessageType.DEVICE_METHODS     // Catch:{ all -> 0x012a }
                if (r2 == r3) goto L_0x0033
                k.f.b r1 = com.microsoft.azure.sdk.iot.device.DeviceTwin.DeviceMethod.log     // Catch:{ all -> 0x012a }
                java.lang.String r2 = "Unexpected message type received {}"
                com.microsoft.azure.sdk.iot.device.MessageType r6 = r6.getMessageType()     // Catch:{ all -> 0x012a }
                r1.a((java.lang.String) r2, (java.lang.Object) r6)     // Catch:{ all -> 0x012a }
                com.microsoft.azure.sdk.iot.device.DeviceTwin.DeviceMethod r6 = com.microsoft.azure.sdk.iot.device.DeviceTwin.DeviceMethod.this     // Catch:{ all -> 0x012a }
                com.microsoft.azure.sdk.iot.device.IotHubEventCallback r6 = r6.deviceMethodStatusCallback     // Catch:{ all -> 0x012a }
                com.microsoft.azure.sdk.iot.device.DeviceTwin.DeviceMethod r1 = com.microsoft.azure.sdk.iot.device.DeviceTwin.DeviceMethod.this     // Catch:{ all -> 0x012a }
                java.lang.Object r1 = r1.deviceMethodStatusCallbackContext     // Catch:{ all -> 0x012a }
                r6.execute(r0, r1)     // Catch:{ all -> 0x012a }
                com.microsoft.azure.sdk.iot.device.IotHubMessageResult r6 = com.microsoft.azure.sdk.iot.device.IotHubMessageResult.ABANDON     // Catch:{ all -> 0x012a }
                monitor-exit(r7)     // Catch:{ all -> 0x012a }
                return r6
            L_0x0033:
                com.microsoft.azure.sdk.iot.device.transport.IotHubTransportMessage r6 = (com.microsoft.azure.sdk.iot.device.transport.IotHubTransportMessage) r6     // Catch:{ all -> 0x012a }
                com.microsoft.azure.sdk.iot.device.DeviceTwin.DeviceOperations r2 = r6.getDeviceOperationType()     // Catch:{ all -> 0x012a }
                int r2 = r2.ordinal()     // Catch:{ all -> 0x012a }
                r3 = 10
                if (r2 == r3) goto L_0x004c
                k.f.b r6 = com.microsoft.azure.sdk.iot.device.DeviceTwin.DeviceMethod.log     // Catch:{ all -> 0x012a }
                java.lang.String r0 = "Received unknown type message for device methods"
                r6.d(r0)     // Catch:{ all -> 0x012a }
                goto L_0x0128
            L_0x004c:
                com.microsoft.azure.sdk.iot.device.DeviceTwin.DeviceMethod r2 = com.microsoft.azure.sdk.iot.device.DeviceTwin.DeviceMethod.this     // Catch:{ all -> 0x012a }
                com.microsoft.azure.sdk.iot.device.DeviceTwin.DeviceMethodCallback r2 = r2.deviceMethodCallback     // Catch:{ all -> 0x012a }
                if (r2 == 0) goto L_0x011f
                com.microsoft.azure.sdk.iot.device.DeviceTwin.DeviceMethod r1 = com.microsoft.azure.sdk.iot.device.DeviceTwin.DeviceMethod.this     // Catch:{ all -> 0x012a }
                boolean r1 = r1.isSubscribed     // Catch:{ all -> 0x012a }
                if (r1 != 0) goto L_0x0062
                com.microsoft.azure.sdk.iot.device.DeviceTwin.DeviceMethod r1 = com.microsoft.azure.sdk.iot.device.DeviceTwin.DeviceMethod.this     // Catch:{ all -> 0x012a }
                r2 = 1
                boolean unused = r1.isSubscribed = r2     // Catch:{ all -> 0x012a }
            L_0x0062:
                k.f.b r1 = com.microsoft.azure.sdk.iot.device.DeviceTwin.DeviceMethod.log     // Catch:{ Exception -> 0x0104 }
                java.lang.String r2 = "Executing method invocation callback for method name {} for message {}"
                java.lang.String r3 = r6.getMethodName()     // Catch:{ Exception -> 0x0104 }
                r1.e(r2, r3, r6)     // Catch:{ Exception -> 0x0104 }
                com.microsoft.azure.sdk.iot.device.DeviceTwin.DeviceMethod r1 = com.microsoft.azure.sdk.iot.device.DeviceTwin.DeviceMethod.this     // Catch:{ Exception -> 0x0104 }
                com.microsoft.azure.sdk.iot.device.DeviceTwin.DeviceMethodCallback r1 = r1.deviceMethodCallback     // Catch:{ Exception -> 0x0104 }
                java.lang.String r2 = r6.getMethodName()     // Catch:{ Exception -> 0x0104 }
                byte[] r3 = r6.getBytes()     // Catch:{ Exception -> 0x0104 }
                com.microsoft.azure.sdk.iot.device.DeviceTwin.DeviceMethod r4 = com.microsoft.azure.sdk.iot.device.DeviceTwin.DeviceMethod.this     // Catch:{ Exception -> 0x0104 }
                java.lang.Object r4 = r4.deviceMethodCallbackContext     // Catch:{ Exception -> 0x0104 }
                com.microsoft.azure.sdk.iot.device.DeviceTwin.DeviceMethodData r1 = r1.call(r2, r3, r4)     // Catch:{ Exception -> 0x0104 }
                k.f.b r2 = com.microsoft.azure.sdk.iot.device.DeviceTwin.DeviceMethod.log     // Catch:{ Exception -> 0x0104 }
                java.lang.String r3 = "Method invocation callback returned for method name {} for message {}"
                java.lang.String r4 = r6.getMethodName()     // Catch:{ Exception -> 0x0104 }
                r2.e(r3, r4, r6)     // Catch:{ Exception -> 0x0104 }
                if (r1 == 0) goto L_0x00e8
                com.microsoft.azure.sdk.iot.deps.serializer.MethodParser r2 = new com.microsoft.azure.sdk.iot.deps.serializer.MethodParser     // Catch:{ Exception -> 0x0104 }
                java.lang.String r3 = r1.getResponseMessage()     // Catch:{ Exception -> 0x0104 }
                r2.<init>(r3)     // Catch:{ Exception -> 0x0104 }
                com.microsoft.azure.sdk.iot.device.transport.IotHubTransportMessage r3 = new com.microsoft.azure.sdk.iot.device.transport.IotHubTransportMessage     // Catch:{ Exception -> 0x0104 }
                java.lang.String r2 = r2.toJson()     // Catch:{ Exception -> 0x0104 }
                byte[] r2 = r2.getBytes()     // Catch:{ Exception -> 0x0104 }
                com.microsoft.azure.sdk.iot.device.MessageType r4 = com.microsoft.azure.sdk.iot.device.MessageType.DEVICE_METHODS     // Catch:{ Exception -> 0x0104 }
                r3.<init>(r2, r4)     // Catch:{ Exception -> 0x0104 }
                java.lang.String r6 = r6.getRequestId()     // Catch:{ Exception -> 0x0104 }
                r3.setRequestId(r6)     // Catch:{ Exception -> 0x0104 }
                com.microsoft.azure.sdk.iot.device.DeviceClientConfig r6 = r5.nestedConfig     // Catch:{ Exception -> 0x0104 }
                java.lang.String r6 = r6.getDeviceId()     // Catch:{ Exception -> 0x0104 }
                r3.setConnectionDeviceId(r6)     // Catch:{ Exception -> 0x0104 }
                int r6 = r1.getStatus()     // Catch:{ Exception -> 0x0104 }
                java.lang.String r6 = java.lang.String.valueOf(r6)     // Catch:{ Exception -> 0x0104 }
                r3.setStatus(r6)     // Catch:{ Exception -> 0x0104 }
                com.microsoft.azure.sdk.iot.device.DeviceTwin.DeviceOperations r6 = com.microsoft.azure.sdk.iot.device.DeviceTwin.DeviceOperations.DEVICE_OPERATION_METHOD_SEND_RESPONSE     // Catch:{ Exception -> 0x0104 }
                r3.setDeviceOperationType(r6)     // Catch:{ Exception -> 0x0104 }
                com.microsoft.azure.sdk.iot.device.DeviceTwin.DeviceMethod r6 = com.microsoft.azure.sdk.iot.device.DeviceTwin.DeviceMethod.this     // Catch:{ Exception -> 0x0104 }
                com.microsoft.azure.sdk.iot.device.DeviceIO r6 = r6.deviceIO     // Catch:{ Exception -> 0x0104 }
                com.microsoft.azure.sdk.iot.device.DeviceTwin.DeviceMethod$deviceMethodRequestMessageCallback r1 = new com.microsoft.azure.sdk.iot.device.DeviceTwin.DeviceMethod$deviceMethodRequestMessageCallback     // Catch:{ Exception -> 0x0104 }
                com.microsoft.azure.sdk.iot.device.DeviceTwin.DeviceMethod r2 = com.microsoft.azure.sdk.iot.device.DeviceTwin.DeviceMethod.this     // Catch:{ Exception -> 0x0104 }
                r4 = 0
                r1.<init>(r2, r4)     // Catch:{ Exception -> 0x0104 }
                com.microsoft.azure.sdk.iot.device.DeviceClientConfig r2 = r5.nestedConfig     // Catch:{ Exception -> 0x0104 }
                java.lang.String r2 = r2.getDeviceId()     // Catch:{ Exception -> 0x0104 }
                r6.sendEventAsync(r3, r1, r4, r2)     // Catch:{ Exception -> 0x0104 }
                com.microsoft.azure.sdk.iot.device.IotHubMessageResult r6 = com.microsoft.azure.sdk.iot.device.IotHubMessageResult.COMPLETE     // Catch:{ Exception -> 0x0104 }
                goto L_0x0102
            L_0x00e8:
                k.f.b r6 = com.microsoft.azure.sdk.iot.device.DeviceTwin.DeviceMethod.log     // Catch:{ Exception -> 0x0104 }
                java.lang.String r1 = "User callback did not send any data for response"
                r6.c(r1)     // Catch:{ Exception -> 0x0104 }
                com.microsoft.azure.sdk.iot.device.IotHubMessageResult r6 = com.microsoft.azure.sdk.iot.device.IotHubMessageResult.REJECT     // Catch:{ Exception -> 0x0104 }
                com.microsoft.azure.sdk.iot.device.DeviceTwin.DeviceMethod r1 = com.microsoft.azure.sdk.iot.device.DeviceTwin.DeviceMethod.this     // Catch:{ Exception -> 0x0104 }
                com.microsoft.azure.sdk.iot.device.IotHubEventCallback r1 = r1.deviceMethodStatusCallback     // Catch:{ Exception -> 0x0104 }
                com.microsoft.azure.sdk.iot.device.DeviceTwin.DeviceMethod r2 = com.microsoft.azure.sdk.iot.device.DeviceTwin.DeviceMethod.this     // Catch:{ Exception -> 0x0104 }
                java.lang.Object r2 = r2.deviceMethodStatusCallbackContext     // Catch:{ Exception -> 0x0104 }
                r1.execute(r0, r2)     // Catch:{ Exception -> 0x0104 }
            L_0x0102:
                r1 = r6
                goto L_0x0128
            L_0x0104:
                k.f.b r6 = com.microsoft.azure.sdk.iot.device.DeviceTwin.DeviceMethod.log     // Catch:{ all -> 0x012a }
                java.lang.String r1 = "User callback did not succeed"
                r6.c(r1)     // Catch:{ all -> 0x012a }
                com.microsoft.azure.sdk.iot.device.IotHubMessageResult r1 = com.microsoft.azure.sdk.iot.device.IotHubMessageResult.REJECT     // Catch:{ all -> 0x012a }
                com.microsoft.azure.sdk.iot.device.DeviceTwin.DeviceMethod r6 = com.microsoft.azure.sdk.iot.device.DeviceTwin.DeviceMethod.this     // Catch:{ all -> 0x012a }
                com.microsoft.azure.sdk.iot.device.IotHubEventCallback r6 = r6.deviceMethodStatusCallback     // Catch:{ all -> 0x012a }
                com.microsoft.azure.sdk.iot.device.DeviceTwin.DeviceMethod r2 = com.microsoft.azure.sdk.iot.device.DeviceTwin.DeviceMethod.this     // Catch:{ all -> 0x012a }
                java.lang.Object r2 = r2.deviceMethodStatusCallbackContext     // Catch:{ all -> 0x012a }
                r6.execute(r0, r2)     // Catch:{ all -> 0x012a }
                goto L_0x0128
            L_0x011f:
                k.f.b r6 = com.microsoft.azure.sdk.iot.device.DeviceTwin.DeviceMethod.log     // Catch:{ all -> 0x012a }
                java.lang.String r0 = "Received device method request, but device has not setup device method"
                r6.d(r0)     // Catch:{ all -> 0x012a }
            L_0x0128:
                monitor-exit(r7)     // Catch:{ all -> 0x012a }
                return r1
            L_0x012a:
                r6 = move-exception
                monitor-exit(r7)     // Catch:{ all -> 0x012a }
                throw r6
            */
            throw new UnsupportedOperationException("Method not decompiled: com.microsoft.azure.sdk.iot.device.DeviceTwin.DeviceMethod.deviceMethodResponseCallback.execute(com.microsoft.azure.sdk.iot.device.Message, java.lang.Object):com.microsoft.azure.sdk.iot.device.IotHubMessageResult");
        }

        public /* synthetic */ deviceMethodResponseCallback(DeviceMethod deviceMethod, AnonymousClass1 r2) {
            this();
        }
    }
}
