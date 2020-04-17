package com.microsoft.azure.sdk.iot.device;

import com.microsoft.appcenter.utils.crypto.CryptoConstants;
import com.microsoft.azure.sdk.iot.device.auth.IotHubSasToken;
import java.io.UnsupportedEncodingException;
import java.net.URI;
import java.net.URLDecoder;
import java.nio.charset.Charset;
import java.nio.charset.StandardCharsets;
import k.f.b;
import k.f.c;

public class IotHubConnectionString {
    public static final Charset CONNECTION_STRING_CHARSET = StandardCharsets.UTF_8;
    public static final String DEVICE_ID_ATTRIBUTE = "DeviceId=";
    public static final String GATEWAY_HOST_NAME_ATTRIBUTE = "GatewayHostName=";
    public static final String HOSTNAME_ATTRIBUTE = "HostName=";
    public static final String MODULE_ID_ATTRIBUTE = "ModuleId=";
    public static final String SHARED_ACCESS_KEY_ATTRIBUTE = "SharedAccessKey=";
    public static final String SHARED_ACCESS_TOKEN_ATTRIBUTE = "SharedAccessSignature=";
    public static final String X509_ENABLED_ATTRIBUTE = "x509=true";
    public static final b log = c.a((Class<?>) IotHubConnectionString.class);
    public String deviceId;
    public String gatewayHostName;
    public String hostName;
    public String hubName;
    public boolean isUsingX509;
    public String moduleId;
    public String sharedAccessKey;
    public String sharedAccessToken;

    public IotHubConnectionString(String str) {
        this.hostName = null;
        this.hubName = null;
        this.deviceId = null;
        this.sharedAccessKey = null;
        this.sharedAccessToken = null;
        this.moduleId = null;
        this.isUsingX509 = false;
        this.gatewayHostName = null;
        if (str == null || str.isEmpty()) {
            throw new IllegalArgumentException("The connection string cannot be null or empty.");
        }
        for (String str2 : str.split(";")) {
            if (str2.toLowerCase().startsWith("HostName=".toLowerCase())) {
                this.hostName = str2.substring(9);
            } else if (str2.toLowerCase().startsWith("DeviceId=".toLowerCase())) {
                try {
                    this.deviceId = URLDecoder.decode(str2.substring(9), CONNECTION_STRING_CHARSET.name());
                } catch (UnsupportedEncodingException e2) {
                    throw new IllegalStateException(e2);
                }
            } else if (str2.toLowerCase().startsWith("SharedAccessKey=".toLowerCase())) {
                this.sharedAccessKey = str2.substring(16);
            } else if (str2.toLowerCase().startsWith("SharedAccessSignature=".toLowerCase())) {
                String substring = str2.substring(22);
                this.sharedAccessToken = substring;
                if (IotHubSasToken.isExpired(substring)) {
                    throw new SecurityException("Your SAS Token has expired");
                }
            } else if (str2.toLowerCase().startsWith(MODULE_ID_ATTRIBUTE.toLowerCase())) {
                this.moduleId = str2.substring(9);
            } else if (str2.toLowerCase().startsWith(GATEWAY_HOST_NAME_ATTRIBUTE.toLowerCase())) {
                this.gatewayHostName = str2.substring(16);
            }
        }
        boolean contains = str.contains(X509_ENABLED_ATTRIBUTE);
        this.isUsingX509 = contains;
        validateTerms(this.hostName, this.deviceId, this.sharedAccessKey, this.sharedAccessToken, contains);
        this.hubName = parseHubName(this.hostName);
    }

    public static String parseHubName(String str) {
        int indexOf = str.indexOf(CryptoConstants.ALIAS_SEPARATOR);
        if (indexOf != -1) {
            return str.substring(0, indexOf);
        }
        throw new IllegalArgumentException(String.format("Provided hostname did not include a valid IoT Hub name as its prefix. An IoT Hub hostname has the following format: [iotHubName].[valid URI chars]", new Object[0]));
    }

    public static void validateTerms(String str, String str2, String str3, String str4, boolean z) {
        if (str == null || str.isEmpty()) {
            throw new IllegalArgumentException("IoT Hub hostName cannot be null.");
        }
        new URI(str);
        parseHubName(str);
        if (str2 == null || str2.isEmpty()) {
            throw new IllegalArgumentException("Device ID cannot be null.");
        } else if (str3 != null && str4 != null) {
            throw new IllegalArgumentException("Either of device key or Shared Access Signature should be provided, but not both.");
        } else if (z) {
        } else {
            if (str3 != null && !str3.isEmpty()) {
                return;
            }
            if (str4 == null || str4.isEmpty()) {
                throw new IllegalArgumentException("Device key and Shared Access Signature both cannot be null unless using x509 authentication.");
            }
        }
    }

    public String getDeviceId() {
        return this.deviceId;
    }

    public String getGatewayHostName() {
        return this.gatewayHostName;
    }

    public String getHostName() {
        return this.hostName;
    }

    public String getHubName() {
        return this.hubName;
    }

    public String getModuleId() {
        return this.moduleId;
    }

    public String getSharedAccessKey() {
        return this.sharedAccessKey;
    }

    public String getSharedAccessToken() {
        return this.sharedAccessToken;
    }

    public boolean isUsingX509() {
        return this.isUsingX509;
    }

    public void setSharedAccessToken(String str) {
        if (str == null || str.isEmpty()) {
            throw new IllegalArgumentException("Shared access token cannot be set to null or empty");
        }
        this.sharedAccessToken = str;
    }

    public IotHubConnectionString(String str, String str2, String str3, String str4) {
        this(str, str2, str3, str4, (String) null);
    }

    public IotHubConnectionString(String str, String str2, String str3, String str4, String str5) {
        this.hostName = null;
        this.hubName = null;
        this.deviceId = null;
        this.sharedAccessKey = null;
        this.sharedAccessToken = null;
        this.moduleId = null;
        boolean z = false;
        this.isUsingX509 = false;
        this.gatewayHostName = null;
        if (str3 == null && str4 == null) {
            z = true;
        }
        this.isUsingX509 = z;
        validateTerms(str, str2, str3, str4, z);
        this.hostName = str;
        this.hubName = parseHubName(str);
        this.deviceId = str2;
        this.sharedAccessKey = str3;
        this.sharedAccessToken = str4;
        if (str4 == null || !IotHubSasToken.isExpired(str4)) {
            this.gatewayHostName = str5;
            if (str5 != null && !str5.isEmpty()) {
                this.hostName = str5;
                return;
            }
            return;
        }
        throw new SecurityException("Your SAS Token has expired");
    }
}
