package com.microsoft.azure.sdk.iot.device.transport;

import com.microsoft.azure.sdk.iot.device.exceptions.TransportException;
import com.microsoft.identity.common.internal.telemetry.TelemetryEventStrings;
import e.a.a.a.a;

public class TransportUtils {
    public static final String CLIENT_VERSION = "1.20.2";
    public static String IOTHUB_API_VERSION = "2018-06-30";
    public static final String JAVA_DEVICE_CLIENT_IDENTIFIER = "com.microsoft.azure.sdk.iot.iot-device-client";
    public static String JAVA_RUNTIME = System.getProperty("java.version");
    public static String OPERATING_SYSTEM = (System.getProperty("java.runtime.name").toLowerCase().contains(TelemetryEventStrings.Os.OS_NAME) ? "Android" : System.getProperty("os.name"));
    public static String PROCESSOR_ARCHITECTURE = System.getProperty("os.arch");
    public static final String USER_AGENT_STRING;

    static {
        StringBuilder a = a.a("com.microsoft.azure.sdk.iot.iot-device-client/1.20.2 (");
        a.append(JAVA_RUNTIME);
        a.append("; ");
        a.append(OPERATING_SYSTEM);
        a.append("; ");
        USER_AGENT_STRING = a.a(a, PROCESSOR_ARCHITECTURE, ")");
    }

    public static void throwTransportExceptionWithIotHubServiceType(String str, TransportException.IotHubService iotHubService) {
        TransportException transportException = new TransportException(str);
        transportException.setIotHubService(iotHubService);
        throw transportException;
    }

    public static void throwTransportExceptionWithIotHubServiceType(Exception exc, TransportException.IotHubService iotHubService) {
        TransportException transportException = new TransportException((Throwable) exc);
        transportException.setIotHubService(iotHubService);
        throw transportException;
    }
}
