package com.microsoft.azure.sdk.iot.device.DeviceTwin;

import com.microsoft.azure.sdk.iot.deps.twin.TwinCollection;
import com.microsoft.azure.sdk.iot.deps.twin.TwinMetadata;
import com.microsoft.azure.sdk.iot.deps.twin.TwinState;
import com.microsoft.azure.sdk.iot.device.DeviceClientConfig;
import com.microsoft.azure.sdk.iot.device.DeviceIO;
import com.microsoft.azure.sdk.iot.device.IotHubEventCallback;
import com.microsoft.azure.sdk.iot.device.IotHubMessageResult;
import com.microsoft.azure.sdk.iot.device.IotHubStatusCode;
import com.microsoft.azure.sdk.iot.device.Message;
import com.microsoft.azure.sdk.iot.device.MessageCallback;
import com.microsoft.azure.sdk.iot.device.MessageType;
import com.microsoft.azure.sdk.iot.device.transport.IotHubTransportMessage;
import java.io.IOException;
import java.util.Date;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.ConcurrentSkipListMap;
import k.f.b;
import k.f.c;

public class DeviceTwin {
    public static final b log = c.a((Class<?>) DeviceTwin.class);
    public final Object DEVICE_TWIN_LOCK = new Object();
    public DeviceClientConfig config = null;
    public DeviceIO deviceIO = null;
    public PropertyCallBack<String, Object> deviceTwinGenericPropertyChangeCallback;
    public Object deviceTwinGenericPropertyChangeCallbackContext;
    public TwinPropertyCallBack deviceTwinGenericTwinPropertyChangeCallback;
    public IotHubEventCallback deviceTwinStatusCallback;
    public Object deviceTwinStatusCallbackContext;
    public boolean isSubscribed = false;
    public ConcurrentSkipListMap<String, Pair<PropertyCallBack<String, Object>, Object>> onDesiredPropertyChangeMap;
    public ConcurrentSkipListMap<String, Pair<TwinPropertyCallBack, Object>> onDesiredTwinPropertyChangeMap;
    public int requestId;

    /* renamed from: com.microsoft.azure.sdk.iot.device.DeviceTwin.DeviceTwin$1  reason: invalid class name */
    public static /* synthetic */ class AnonymousClass1 {
        public static final /* synthetic */ int[] $SwitchMap$com$microsoft$azure$sdk$iot$device$DeviceTwin$DeviceOperations;

        /* JADX WARNING: Can't wrap try/catch for region: R(8:0|(2:1|2)|3|5|6|7|8|10) */
        /* JADX WARNING: Code restructure failed: missing block: B:11:?, code lost:
            return;
         */
        /* JADX WARNING: Failed to process nested try/catch */
        /* JADX WARNING: Missing exception handler attribute for start block: B:7:0x0016 */
        static {
            /*
                com.microsoft.azure.sdk.iot.device.DeviceTwin.DeviceOperations[] r0 = com.microsoft.azure.sdk.iot.device.DeviceTwin.DeviceOperations.values()
                int r0 = r0.length
                int[] r0 = new int[r0]
                $SwitchMap$com$microsoft$azure$sdk$iot$device$DeviceTwin$DeviceOperations = r0
                com.microsoft.azure.sdk.iot.device.DeviceTwin.DeviceOperations r1 = com.microsoft.azure.sdk.iot.device.DeviceTwin.DeviceOperations.DEVICE_OPERATION_TWIN_GET_RESPONSE     // Catch:{ NoSuchFieldError -> 0x000e }
                r1 = 1
                r0[r1] = r1     // Catch:{ NoSuchFieldError -> 0x000e }
            L_0x000e:
                r0 = 3
                int[] r1 = $SwitchMap$com$microsoft$azure$sdk$iot$device$DeviceTwin$DeviceOperations     // Catch:{ NoSuchFieldError -> 0x0016 }
                com.microsoft.azure.sdk.iot.device.DeviceTwin.DeviceOperations r2 = com.microsoft.azure.sdk.iot.device.DeviceTwin.DeviceOperations.DEVICE_OPERATION_TWIN_UPDATE_REPORTED_PROPERTIES_RESPONSE     // Catch:{ NoSuchFieldError -> 0x0016 }
                r2 = 2
                r1[r0] = r2     // Catch:{ NoSuchFieldError -> 0x0016 }
            L_0x0016:
                int[] r1 = $SwitchMap$com$microsoft$azure$sdk$iot$device$DeviceTwin$DeviceOperations     // Catch:{ NoSuchFieldError -> 0x001d }
                com.microsoft.azure.sdk.iot.device.DeviceTwin.DeviceOperations r2 = com.microsoft.azure.sdk.iot.device.DeviceTwin.DeviceOperations.DEVICE_OPERATION_TWIN_SUBSCRIBE_DESIRED_PROPERTIES_RESPONSE     // Catch:{ NoSuchFieldError -> 0x001d }
                r2 = 5
                r1[r2] = r0     // Catch:{ NoSuchFieldError -> 0x001d }
            L_0x001d:
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: com.microsoft.azure.sdk.iot.device.DeviceTwin.DeviceTwin.AnonymousClass1.<clinit>():void");
        }
    }

    public final class deviceTwinRequestMessageCallback implements IotHubEventCallback {
        public deviceTwinRequestMessageCallback() {
        }

        public void execute(IotHubStatusCode iotHubStatusCode, Object obj) {
            synchronized (DeviceTwin.this.DEVICE_TWIN_LOCK) {
                if (!(iotHubStatusCode == IotHubStatusCode.OK || iotHubStatusCode == IotHubStatusCode.OK_EMPTY)) {
                    DeviceTwin.this.deviceTwinStatusCallback.execute(iotHubStatusCode, DeviceTwin.this.deviceTwinStatusCallbackContext);
                }
            }
        }

        public /* synthetic */ deviceTwinRequestMessageCallback(DeviceTwin deviceTwin, AnonymousClass1 r2) {
            this();
        }
    }

    public final class deviceTwinResponseMessageCallback implements MessageCallback {
        public deviceTwinResponseMessageCallback() {
        }

        public IotHubMessageResult execute(Message message, Object obj) {
            synchronized (DeviceTwin.this.DEVICE_TWIN_LOCK) {
                IotHubStatusCode iotHubStatusCode = IotHubStatusCode.ERROR;
                if (message.getMessageType() != MessageType.DEVICE_TWIN) {
                    System.out.print("Unexpected message type received");
                    DeviceTwin.this.deviceTwinStatusCallback.execute(iotHubStatusCode, DeviceTwin.this.deviceTwinStatusCallbackContext);
                    IotHubMessageResult iotHubMessageResult = IotHubMessageResult.ABANDON;
                    return iotHubMessageResult;
                }
                IotHubTransportMessage iotHubTransportMessage = (IotHubTransportMessage) message;
                String status = iotHubTransportMessage.getStatus();
                int ordinal = iotHubTransportMessage.getDeviceOperationType().ordinal();
                if (ordinal == 1) {
                    if (status != null) {
                        iotHubStatusCode = IotHubStatusCode.getIotHubStatusCode(Integer.parseInt(status));
                    }
                    DeviceTwin.log.d("Executing twin callback for message {}", (Object) iotHubTransportMessage);
                    DeviceTwin.this.deviceTwinStatusCallback.execute(iotHubStatusCode, DeviceTwin.this.deviceTwinStatusCallbackContext);
                    DeviceTwin.log.d("Twin callback returned for message {}", (Object) iotHubTransportMessage);
                    if (iotHubStatusCode == IotHubStatusCode.OK) {
                        TwinState createFromPropertiesJson = TwinState.createFromPropertiesJson(new String(iotHubTransportMessage.getBytes(), Message.DEFAULT_IOTHUB_MESSAGE_CHARSET));
                        if (createFromPropertiesJson.getDesiredProperty() != null) {
                            DeviceTwin.this.OnDesiredPropertyChanged(createFromPropertiesJson.getDesiredProperty());
                        }
                        if (createFromPropertiesJson.getReportedProperty() != null) {
                            DeviceTwin.this.OnReportedPropertyChanged(createFromPropertiesJson.getReportedProperty());
                        }
                    }
                } else if (ordinal == 3) {
                    if (status != null) {
                        iotHubStatusCode = IotHubStatusCode.getIotHubStatusCode(Integer.parseInt(status));
                    }
                    b access$300 = DeviceTwin.log;
                    access$300.e("Executing twin status callback for device operation twin update reported properties response with status " + iotHubStatusCode);
                    DeviceTwin.this.deviceTwinStatusCallback.execute(iotHubStatusCode, DeviceTwin.this.deviceTwinStatusCallbackContext);
                } else if (ordinal == 5) {
                    boolean unused = DeviceTwin.this.isSubscribed = true;
                    TwinState createFromDesiredPropertyJson = TwinState.createFromDesiredPropertyJson(new String(iotHubTransportMessage.getBytes(), Message.DEFAULT_IOTHUB_MESSAGE_CHARSET));
                    if (createFromDesiredPropertyJson.getDesiredProperty() != null) {
                        DeviceTwin.this.OnDesiredPropertyChanged(createFromDesiredPropertyJson.getDesiredProperty());
                    }
                }
                IotHubMessageResult iotHubMessageResult2 = IotHubMessageResult.COMPLETE;
                return iotHubMessageResult2;
            }
        }

        public /* synthetic */ deviceTwinResponseMessageCallback(DeviceTwin deviceTwin, AnonymousClass1 r2) {
            this();
        }
    }

    public DeviceTwin(DeviceIO deviceIO2, DeviceClientConfig deviceClientConfig, IotHubEventCallback iotHubEventCallback, Object obj, PropertyCallBack propertyCallBack, Object obj2) {
        deviceTwinInternal(deviceIO2, deviceClientConfig, iotHubEventCallback, obj, obj2);
        this.deviceTwinGenericPropertyChangeCallback = propertyCallBack;
        this.deviceTwinGenericTwinPropertyChangeCallback = null;
    }

    /* access modifiers changed from: private */
    public void OnDesiredPropertyChanged(TwinCollection twinCollection) {
        synchronized (this.DEVICE_TWIN_LOCK) {
            if (twinCollection != null) {
                Iterator it = twinCollection.entrySet().iterator();
                while (it.hasNext()) {
                    Property property = getProperty(twinCollection, (String) ((Map.Entry) it.next()).getKey(), false);
                    if (!reportPropertyCallback(property)) {
                        reportDeviceTwinGenericPropertyCallback(property);
                    }
                    it.remove();
                }
            }
        }
    }

    /* access modifiers changed from: private */
    public void OnReportedPropertyChanged(TwinCollection twinCollection) {
        synchronized (this.DEVICE_TWIN_LOCK) {
            if (twinCollection != null) {
                Iterator it = twinCollection.entrySet().iterator();
                while (it.hasNext()) {
                    Property property = getProperty(twinCollection, (String) ((Map.Entry) it.next()).getKey(), true);
                    if (this.deviceTwinGenericTwinPropertyChangeCallback != null) {
                        this.deviceTwinGenericTwinPropertyChangeCallback.TwinPropertyCallBack(property, this.deviceTwinGenericPropertyChangeCallbackContext);
                    }
                    it.remove();
                }
            }
        }
    }

    private void checkSubscription() {
        if (!this.isSubscribed) {
            IotHubTransportMessage iotHubTransportMessage = new IotHubTransportMessage(new byte[0], MessageType.DEVICE_TWIN);
            iotHubTransportMessage.setDeviceOperationType(DeviceOperations.DEVICE_OPERATION_TWIN_SUBSCRIBE_DESIRED_PROPERTIES_REQUEST);
            this.deviceIO.sendEventAsync(iotHubTransportMessage, new deviceTwinRequestMessageCallback(this, (AnonymousClass1) null), (Object) null, this.config.getDeviceId());
        }
    }

    private void deviceTwinInternal(DeviceIO deviceIO2, DeviceClientConfig deviceClientConfig, IotHubEventCallback iotHubEventCallback, Object obj, Object obj2) {
        if (deviceIO2 == null || deviceClientConfig == null) {
            throw new IllegalArgumentException("Client or config cannot be null");
        }
        this.deviceIO = deviceIO2;
        this.config = deviceClientConfig;
        deviceClientConfig.setDeviceTwinMessageCallback(new deviceTwinResponseMessageCallback(this, (AnonymousClass1) null), (Object) null);
        this.requestId = 0;
        this.deviceTwinStatusCallback = iotHubEventCallback;
        this.deviceTwinStatusCallbackContext = obj;
        this.deviceTwinGenericPropertyChangeCallbackContext = obj2;
    }

    private Property getProperty(TwinCollection twinCollection, String str, boolean z) {
        Integer num;
        Date date;
        Object obj = twinCollection.get(str);
        Integer versionFinal = twinCollection.getVersionFinal();
        TwinMetadata twinMetadataFinal = twinCollection.getTwinMetadataFinal(str);
        if (twinMetadataFinal != null) {
            Date lastUpdated = twinMetadataFinal.getLastUpdated();
            num = twinMetadataFinal.getLastUpdatedVersion();
            date = lastUpdated;
        } else {
            date = null;
            num = null;
        }
        return new Property(str, obj, versionFinal, z, date, num);
    }

    private boolean reportDeviceTwinGenericPropertyCallback(Property property) {
        PropertyCallBack<String, Object> propertyCallBack = this.deviceTwinGenericPropertyChangeCallback;
        if (propertyCallBack != null) {
            propertyCallBack.PropertyCall(property.getKey(), property.getValue(), this.deviceTwinGenericPropertyChangeCallbackContext);
            return true;
        }
        TwinPropertyCallBack twinPropertyCallBack = this.deviceTwinGenericTwinPropertyChangeCallback;
        if (twinPropertyCallBack == null) {
            return false;
        }
        twinPropertyCallBack.TwinPropertyCallBack(property, this.deviceTwinGenericPropertyChangeCallbackContext);
        return true;
    }

    private boolean reportPropertyCallback(Property property) {
        boolean z;
        Pair pair;
        Pair pair2;
        ConcurrentSkipListMap<String, Pair<PropertyCallBack<String, Object>, Object>> concurrentSkipListMap = this.onDesiredPropertyChangeMap;
        if (concurrentSkipListMap == null || !concurrentSkipListMap.containsKey(property.getKey()) || (pair2 = this.onDesiredPropertyChangeMap.get(property.getKey())) == null || pair2.getKey() == null) {
            z = false;
        } else {
            ((PropertyCallBack) pair2.getKey()).PropertyCall(property.getKey(), property.getValue(), pair2.getValue());
            z = true;
        }
        ConcurrentSkipListMap<String, Pair<TwinPropertyCallBack, Object>> concurrentSkipListMap2 = this.onDesiredTwinPropertyChangeMap;
        if (concurrentSkipListMap2 == null || !concurrentSkipListMap2.containsKey(property.getKey()) || (pair = this.onDesiredTwinPropertyChangeMap.get(property.getKey())) == null || pair.getKey() == null) {
            return z;
        }
        ((TwinPropertyCallBack) pair.getKey()).TwinPropertyCallBack(property, pair.getValue());
        return true;
    }

    public void getDeviceTwin() {
        checkSubscription();
        IotHubTransportMessage iotHubTransportMessage = new IotHubTransportMessage(new byte[0], MessageType.DEVICE_TWIN);
        int i2 = this.requestId;
        this.requestId = i2 + 1;
        iotHubTransportMessage.setRequestId(String.valueOf(i2));
        iotHubTransportMessage.setDeviceOperationType(DeviceOperations.DEVICE_OPERATION_TWIN_GET_REQUEST);
        this.deviceIO.sendEventAsync(iotHubTransportMessage, new deviceTwinRequestMessageCallback(this, (AnonymousClass1) null), (Object) null, this.config.getDeviceId());
    }

    public void subscribeDesiredPropertiesNotification(Map<Property, Pair<PropertyCallBack<String, Object>, Object>> map) {
        if (this.onDesiredPropertyChangeMap == null) {
            this.onDesiredPropertyChangeMap = new ConcurrentSkipListMap<>();
        }
        if (map != null) {
            for (Map.Entry next : map.entrySet()) {
                this.onDesiredPropertyChangeMap.put(((Property) next.getKey()).getKey(), next.getValue());
            }
        }
        checkSubscription();
    }

    public void subscribeDesiredPropertiesTwinPropertyNotification(Map<Property, Pair<TwinPropertyCallBack, Object>> map) {
        if (this.onDesiredTwinPropertyChangeMap == null) {
            this.onDesiredTwinPropertyChangeMap = new ConcurrentSkipListMap<>();
        }
        if (map != null) {
            for (Map.Entry next : map.entrySet()) {
                this.onDesiredTwinPropertyChangeMap.put(((Property) next.getKey()).getKey(), next.getValue());
            }
        }
        checkSubscription();
    }

    public synchronized void updateReportedProperties(Set<Property> set) {
        updateReportedProperties(set, (Integer) null);
    }

    public synchronized void updateReportedProperties(Set<Property> set, Integer num) {
        if (set != null) {
            TwinCollection twinCollection = new TwinCollection();
            for (Property next : set) {
                if (!twinCollection.containsKey(next.getKey())) {
                    twinCollection.putFinal(next.getKey(), next.getValue());
                } else {
                    throw new IOException("Duplicate keys found in reported properties: " + next.getKey());
                }
            }
            String jVar = twinCollection.toJsonElement().toString();
            if (jVar != null) {
                IotHubTransportMessage iotHubTransportMessage = new IotHubTransportMessage(jVar.getBytes(), MessageType.DEVICE_TWIN);
                iotHubTransportMessage.setConnectionDeviceId(this.config.getDeviceId());
                int i2 = this.requestId;
                this.requestId = i2 + 1;
                iotHubTransportMessage.setRequestId(String.valueOf(i2));
                if (num != null) {
                    iotHubTransportMessage.setVersion(Integer.toString(num.intValue()));
                }
                iotHubTransportMessage.setDeviceOperationType(DeviceOperations.DEVICE_OPERATION_TWIN_UPDATE_REPORTED_PROPERTIES_REQUEST);
                this.deviceIO.sendEventAsync(iotHubTransportMessage, new deviceTwinRequestMessageCallback(this, (AnonymousClass1) null), (Object) null, this.config.getDeviceId());
                return;
            }
            return;
        }
        throw new IllegalArgumentException("Reported properties cannot be null");
    }

    public DeviceTwin(DeviceIO deviceIO2, DeviceClientConfig deviceClientConfig, IotHubEventCallback iotHubEventCallback, Object obj, TwinPropertyCallBack twinPropertyCallBack, Object obj2) {
        deviceTwinInternal(deviceIO2, deviceClientConfig, iotHubEventCallback, obj, obj2);
        this.deviceTwinGenericTwinPropertyChangeCallback = twinPropertyCallBack;
        this.deviceTwinGenericPropertyChangeCallback = null;
    }
}
