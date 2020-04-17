package com.microsoft.azure.sdk.iot.device;

import com.microsoft.azure.sdk.iot.device.transport.RetryPolicy;
import java.util.ArrayList;
import k.f.b;
import k.f.c;

public class TransportClient {
    public static long RECEIVE_PERIOD_MILLIS_AMQPS = 10;
    public static long SEND_PERIOD_MILLIS = 10;
    public static final b log = c.a((Class<?>) TransportClient.class);
    public ArrayList<DeviceClient> deviceClientList;
    public DeviceIO deviceIO;
    public IotHubClientProtocol iotHubClientProtocol;
    public TransportClientState transportClientState;

    /* renamed from: com.microsoft.azure.sdk.iot.device.TransportClient$1  reason: invalid class name */
    public static /* synthetic */ class AnonymousClass1 {
        public static final /* synthetic */ int[] $SwitchMap$com$microsoft$azure$sdk$iot$device$IotHubClientProtocol;

        /* JADX WARNING: Can't wrap try/catch for region: R(12:0|(2:1|2)|3|5|6|7|8|9|10|11|12|14) */
        /* JADX WARNING: Code restructure failed: missing block: B:15:?, code lost:
            return;
         */
        /* JADX WARNING: Failed to process nested try/catch */
        /* JADX WARNING: Missing exception handler attribute for start block: B:11:0x0023 */
        /* JADX WARNING: Missing exception handler attribute for start block: B:7:0x0016 */
        /* JADX WARNING: Missing exception handler attribute for start block: B:9:0x001c */
        static {
            /*
                com.microsoft.azure.sdk.iot.device.IotHubClientProtocol[] r0 = com.microsoft.azure.sdk.iot.device.IotHubClientProtocol.values()
                int r0 = r0.length
                int[] r0 = new int[r0]
                $SwitchMap$com$microsoft$azure$sdk$iot$device$IotHubClientProtocol = r0
                com.microsoft.azure.sdk.iot.device.IotHubClientProtocol r1 = com.microsoft.azure.sdk.iot.device.IotHubClientProtocol.AMQPS     // Catch:{ NoSuchFieldError -> 0x000e }
                r1 = 1
                r0[r1] = r1     // Catch:{ NoSuchFieldError -> 0x000e }
            L_0x000e:
                r0 = 2
                r1 = 3
                int[] r2 = $SwitchMap$com$microsoft$azure$sdk$iot$device$IotHubClientProtocol     // Catch:{ NoSuchFieldError -> 0x0016 }
                com.microsoft.azure.sdk.iot.device.IotHubClientProtocol r3 = com.microsoft.azure.sdk.iot.device.IotHubClientProtocol.AMQPS_WS     // Catch:{ NoSuchFieldError -> 0x0016 }
                r2[r1] = r0     // Catch:{ NoSuchFieldError -> 0x0016 }
            L_0x0016:
                int[] r2 = $SwitchMap$com$microsoft$azure$sdk$iot$device$IotHubClientProtocol     // Catch:{ NoSuchFieldError -> 0x001c }
                com.microsoft.azure.sdk.iot.device.IotHubClientProtocol r3 = com.microsoft.azure.sdk.iot.device.IotHubClientProtocol.MQTT     // Catch:{ NoSuchFieldError -> 0x001c }
                r2[r0] = r1     // Catch:{ NoSuchFieldError -> 0x001c }
            L_0x001c:
                int[] r0 = $SwitchMap$com$microsoft$azure$sdk$iot$device$IotHubClientProtocol     // Catch:{ NoSuchFieldError -> 0x0023 }
                com.microsoft.azure.sdk.iot.device.IotHubClientProtocol r1 = com.microsoft.azure.sdk.iot.device.IotHubClientProtocol.MQTT_WS     // Catch:{ NoSuchFieldError -> 0x0023 }
                r1 = 4
                r0[r1] = r1     // Catch:{ NoSuchFieldError -> 0x0023 }
            L_0x0023:
                int[] r0 = $SwitchMap$com$microsoft$azure$sdk$iot$device$IotHubClientProtocol     // Catch:{ NoSuchFieldError -> 0x002b }
                com.microsoft.azure.sdk.iot.device.IotHubClientProtocol r1 = com.microsoft.azure.sdk.iot.device.IotHubClientProtocol.HTTPS     // Catch:{ NoSuchFieldError -> 0x002b }
                r1 = 0
                r2 = 5
                r0[r1] = r2     // Catch:{ NoSuchFieldError -> 0x002b }
            L_0x002b:
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: com.microsoft.azure.sdk.iot.device.TransportClient.AnonymousClass1.<clinit>():void");
        }
    }

    public enum TransportClientState {
        CLOSED,
        OPENED
    }

    public TransportClient(IotHubClientProtocol iotHubClientProtocol2) {
        int ordinal = iotHubClientProtocol2.ordinal();
        if (ordinal != 0) {
            if (ordinal != 1) {
                if (ordinal != 2) {
                    if (ordinal != 3) {
                        if (ordinal != 4) {
                            throw new IllegalStateException("Invalid client protocol specified.");
                        }
                    }
                }
            }
            this.iotHubClientProtocol = iotHubClientProtocol2;
            this.deviceIO = null;
            this.deviceClientList = new ArrayList<>();
            this.transportClientState = TransportClientState.CLOSED;
            return;
        }
        throw new IllegalArgumentException("Multiplexing is only supported for AMQPS and AMQPS_WS");
    }

    public void closeNow() {
        for (int i2 = 0; i2 < this.deviceClientList.size(); i2++) {
            this.deviceClientList.get(i2).closeFileUpload();
        }
        DeviceIO deviceIO2 = this.deviceIO;
        if (deviceIO2 != null) {
            deviceIO2.multiplexClose();
            this.deviceIO = null;
        }
        log.c("Transport client closed successfully");
    }

    public IotHubClientProtocol getIotHubClientProtocol() {
        return this.iotHubClientProtocol;
    }

    public TransportClientState getTransportClientState() {
        return this.transportClientState;
    }

    public void open() {
        DeviceIO deviceIO2 = this.deviceIO;
        if (deviceIO2 == null || !deviceIO2.isOpen()) {
            if (this.deviceClientList.size() > 0) {
                this.deviceIO = new DeviceIO(this.deviceClientList.get(0).getConfig(), SEND_PERIOD_MILLIS, RECEIVE_PERIOD_MILLIS_AMQPS);
                this.deviceClientList.get(0).setDeviceIO(this.deviceIO);
                for (int i2 = 1; i2 < this.deviceClientList.size(); i2++) {
                    this.deviceClientList.get(i2).setDeviceIO(this.deviceIO);
                    this.deviceIO.addClient(this.deviceClientList.get(i2).getConfig());
                }
                this.deviceIO.open();
            }
            this.transportClientState = TransportClientState.OPENED;
            log.c("Transport client opened successfully");
            return;
        }
        throw new IllegalStateException("The transport client connection is already open.");
    }

    public void registerDeviceClient(DeviceClient deviceClient) {
        if (deviceClient != null) {
            DeviceIO deviceIO2 = this.deviceIO;
            if (deviceIO2 == null || !deviceIO2.isOpen()) {
                this.deviceClientList.add(deviceClient);
                log.b("DeviceClient instance successfully added to the transport client");
                return;
            }
            throw new IllegalStateException("deviceClient cannot be registered if the connection is open.");
        }
        throw new IllegalArgumentException("deviceClient parameter cannot be null.");
    }

    public void setRetryPolicy(RetryPolicy retryPolicy) {
        if (this.deviceClientList.size() != 0) {
            for (int i2 = 0; i2 < this.deviceClientList.size(); i2++) {
                this.deviceClientList.get(i2).getConfig().setRetryPolicy(retryPolicy);
            }
            log.b("Retry policy updated successfully in the transport client");
            return;
        }
        throw new UnsupportedOperationException("TransportClient.setRetryPolicy only works when there is at least one registered device client.");
    }

    public void setSendInterval(long j2) {
        DeviceIO deviceIO2;
        if (j2 <= 0) {
            throw new IllegalArgumentException("send interval can not be zero or negative");
        } else if (this.transportClientState != TransportClientState.OPENED || (deviceIO2 = this.deviceIO) == null) {
            throw new IllegalStateException("TransportClient.setSendInterval only works when the transport client is opened");
        } else {
            deviceIO2.setSendPeriodInMilliseconds(j2);
            log.b("Send interval updated successfully in the transport client");
        }
    }
}
