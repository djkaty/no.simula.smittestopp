package com.microsoft.azure.sdk.iot.deps.transport.amqp;

public interface AmqpListener {
    void connectionEstablished();

    void connectionLost();

    void messageReceived(AmqpMessage amqpMessage);

    void messageSent();
}
