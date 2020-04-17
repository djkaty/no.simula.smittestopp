package com.microsoft.azure.sdk.iot.deps.transport.amqp;

public interface SaslHandler {

    public enum SaslOutcome {
        OK,
        AUTH,
        SYS,
        SYS_PERM,
        SYS_TEMP
    }

    String chooseSaslMechanism(String[] strArr);

    byte[] getInitPayload(String str);

    String getPlainPassword();

    String getPlainUsername();

    byte[] handleChallenge(byte[] bArr);

    void handleOutcome(SaslOutcome saslOutcome);

    void setSasToken(String str);
}
