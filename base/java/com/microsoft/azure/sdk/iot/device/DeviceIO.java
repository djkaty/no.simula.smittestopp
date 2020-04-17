package com.microsoft.azure.sdk.iot.device;

import com.microsoft.azure.sdk.iot.device.exceptions.DeviceClientException;
import com.microsoft.azure.sdk.iot.device.transport.IotHubReceiveTask;
import com.microsoft.azure.sdk.iot.device.transport.IotHubSendTask;
import com.microsoft.azure.sdk.iot.device.transport.IotHubTransport;
import java.io.IOException;
import java.util.LinkedList;
import java.util.List;
import java.util.concurrent.Executors;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.TimeUnit;
import k.f.b;
import k.f.c;

public final class DeviceIO {
    public static final b log = c.a((Class<?>) DeviceIO.class);
    public DeviceClientConfig config;
    public List<DeviceClientConfig> deviceClientConfigs;
    public IotHubClientProtocol protocol = null;
    public long receivePeriodInMilliseconds;
    public IotHubReceiveTask receiveTask = null;
    public long sendPeriodInMilliseconds;
    public IotHubSendTask sendTask = null;
    public IotHubClientState state;
    public ScheduledExecutorService taskScheduler;
    public IotHubTransport transport;

    public enum IotHubClientState {
        OPEN,
        CLOSED
    }

    public DeviceIO(DeviceClientConfig deviceClientConfig, long j2, long j3) {
        LinkedList linkedList = new LinkedList();
        this.deviceClientConfigs = linkedList;
        if (deviceClientConfig != null) {
            linkedList.add(deviceClientConfig);
            this.config = deviceClientConfig;
            IotHubClientProtocol protocol2 = deviceClientConfig.getProtocol();
            this.protocol = protocol2;
            this.sendPeriodInMilliseconds = j2;
            this.receivePeriodInMilliseconds = j3;
            this.state = IotHubClientState.CLOSED;
            if (protocol2 == IotHubClientProtocol.AMQPS_WS || protocol2 == IotHubClientProtocol.MQTT_WS) {
                this.config.setUseWebsocket(true);
            }
            this.transport = new IotHubTransport(deviceClientConfig);
            this.sendPeriodInMilliseconds = j2;
            this.receivePeriodInMilliseconds = j3;
            this.state = IotHubClientState.CLOSED;
            return;
        }
        throw new IllegalArgumentException("Config cannot be null.");
    }

    private void commonOpenSetup() {
        this.sendTask = new IotHubSendTask(this.transport);
        this.receiveTask = new IotHubReceiveTask(this.transport);
        ScheduledExecutorService newScheduledThreadPool = Executors.newScheduledThreadPool(2);
        this.taskScheduler = newScheduledThreadPool;
        newScheduledThreadPool.scheduleAtFixedRate(this.sendTask, 0, this.sendPeriodInMilliseconds, TimeUnit.MILLISECONDS);
        this.taskScheduler.scheduleAtFixedRate(this.receiveTask, 0, this.receivePeriodInMilliseconds, TimeUnit.MILLISECONDS);
        this.state = IotHubClientState.OPEN;
    }

    public void addClient(DeviceClientConfig deviceClientConfig) {
        if (deviceClientConfig != null) {
            this.deviceClientConfigs.add(deviceClientConfig);
            return;
        }
        throw new IllegalArgumentException("Config cannot be null");
    }

    public void close() {
        ScheduledExecutorService scheduledExecutorService = this.taskScheduler;
        if (scheduledExecutorService != null) {
            scheduledExecutorService.shutdown();
        }
        try {
            this.transport.close(IotHubConnectionStatusChangeReason.CLIENT_CLOSE, (Throwable) null);
            this.state = IotHubClientState.CLOSED;
        } catch (DeviceClientException e2) {
            this.state = IotHubClientState.CLOSED;
            throw new IOException(e2);
        }
    }

    public IotHubClientProtocol getProtocol() {
        return this.protocol;
    }

    public long getReceivePeriodInMilliseconds() {
        return this.receivePeriodInMilliseconds;
    }

    public long getSendPeriodInMilliseconds() {
        return this.sendPeriodInMilliseconds;
    }

    public boolean isEmpty() {
        return this.transport.isEmpty();
    }

    public boolean isOpen() {
        return this.state == IotHubClientState.OPEN;
    }

    public void multiplexClose() {
        close();
    }

    public void open() {
        if (this.state != IotHubClientState.OPEN) {
            try {
                this.transport.open(this.deviceClientConfigs);
                commonOpenSetup();
            } catch (DeviceClientException e2) {
                throw new IOException("Could not open the connection", e2);
            }
        }
    }

    public void registerConnectionStateCallback(IotHubConnectionStateCallback iotHubConnectionStateCallback, Object obj) {
        this.transport.registerConnectionStateCallback(iotHubConnectionStateCallback, obj);
    }

    public void registerConnectionStatusChangeCallback(IotHubConnectionStatusChangeCallback iotHubConnectionStatusChangeCallback, Object obj) {
        this.transport.registerConnectionStatusChangeCallback(iotHubConnectionStatusChangeCallback, obj);
    }

    public synchronized void sendEventAsync(Message message, IotHubEventCallback iotHubEventCallback, Object obj, String str) {
        if (this.state == IotHubClientState.CLOSED) {
            throw new IllegalStateException("Cannot send event from an IoT Hub client that is closed.");
        } else if (message != null) {
            if (str != null) {
                message.setConnectionDeviceId(str);
            }
            this.transport.addMessage(message, iotHubEventCallback, obj);
        } else {
            throw new IllegalArgumentException("Cannot send message 'null'.");
        }
    }

    public void setReceivePeriodInMilliseconds(long j2) {
        if (j2 > 0) {
            this.receivePeriodInMilliseconds = j2;
            ScheduledExecutorService scheduledExecutorService = this.taskScheduler;
            if (scheduledExecutorService != null) {
                IotHubReceiveTask iotHubReceiveTask = this.receiveTask;
                if (iotHubReceiveTask != null) {
                    scheduledExecutorService.scheduleAtFixedRate(iotHubReceiveTask, 0, j2, TimeUnit.MILLISECONDS);
                    return;
                }
                throw new IOException("transport receive task not set");
            }
            return;
        }
        throw new IllegalArgumentException("receive interval can not be zero or negative");
    }

    public void setSendPeriodInMilliseconds(long j2) {
        if (j2 > 0) {
            this.sendPeriodInMilliseconds = j2;
            ScheduledExecutorService scheduledExecutorService = this.taskScheduler;
            if (scheduledExecutorService != null) {
                IotHubSendTask iotHubSendTask = this.sendTask;
                if (iotHubSendTask != null) {
                    scheduledExecutorService.scheduleAtFixedRate(iotHubSendTask, 0, j2, TimeUnit.MILLISECONDS);
                    return;
                }
                throw new IOException("transport send task not set");
            }
            return;
        }
        throw new IllegalArgumentException("send interval can not be zero or negative");
    }
}
