package com.microsoft.azure.sdk.iot.device;

public enum IotHubConnectionStatusChangeReason {
    EXPIRED_SAS_TOKEN,
    BAD_CREDENTIAL,
    RETRY_EXPIRED,
    NO_NETWORK,
    COMMUNICATION_ERROR,
    CONNECTION_OK,
    CLIENT_CLOSE
}
