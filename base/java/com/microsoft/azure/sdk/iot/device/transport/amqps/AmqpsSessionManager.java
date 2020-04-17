package com.microsoft.azure.sdk.iot.device.transport.amqps;

import com.microsoft.azure.sdk.iot.device.DeviceClientConfig;
import com.microsoft.azure.sdk.iot.device.Message;
import com.microsoft.azure.sdk.iot.device.MessageType;
import java.util.ArrayList;
import java.util.Iterator;
import k.a.b.a.d.c0;
import k.a.b.a.d.n;
import k.a.b.a.d.y;
import k.a.b.a.f.a;
import k.f.b;
import k.f.c;

public class AmqpsSessionManager {
    public static final b log = c.a((Class<?>) AmqpsSessionManager.class);
    public AmqpsDeviceAuthentication amqpsDeviceAuthentication;
    public ArrayList<AmqpsSessionDeviceOperation> amqpsDeviceSessionList = new ArrayList<>();
    public final DeviceClientConfig deviceClientConfig;
    public y session = null;

    /* renamed from: com.microsoft.azure.sdk.iot.device.transport.amqps.AmqpsSessionManager$1  reason: invalid class name */
    public static /* synthetic */ class AnonymousClass1 {
        public static final /* synthetic */ int[] $SwitchMap$com$microsoft$azure$sdk$iot$device$DeviceClientConfig$AuthType;

        /* JADX WARNING: Failed to process nested try/catch */
        /* JADX WARNING: Missing exception handler attribute for start block: B:3:0x000e */
        static {
            /*
                com.microsoft.azure.sdk.iot.device.DeviceClientConfig$AuthType[] r0 = com.microsoft.azure.sdk.iot.device.DeviceClientConfig.AuthType.values()
                int r0 = r0.length
                int[] r0 = new int[r0]
                $SwitchMap$com$microsoft$azure$sdk$iot$device$DeviceClientConfig$AuthType = r0
                com.microsoft.azure.sdk.iot.device.DeviceClientConfig$AuthType r1 = com.microsoft.azure.sdk.iot.device.DeviceClientConfig.AuthType.SAS_TOKEN     // Catch:{ NoSuchFieldError -> 0x000e }
                r1 = 1
                r0[r1] = r1     // Catch:{ NoSuchFieldError -> 0x000e }
            L_0x000e:
                int[] r0 = $SwitchMap$com$microsoft$azure$sdk$iot$device$DeviceClientConfig$AuthType     // Catch:{ NoSuchFieldError -> 0x0016 }
                com.microsoft.azure.sdk.iot.device.DeviceClientConfig$AuthType r1 = com.microsoft.azure.sdk.iot.device.DeviceClientConfig.AuthType.X509_CERTIFICATE     // Catch:{ NoSuchFieldError -> 0x0016 }
                r1 = 0
                r2 = 2
                r0[r1] = r2     // Catch:{ NoSuchFieldError -> 0x0016 }
            L_0x0016:
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: com.microsoft.azure.sdk.iot.device.transport.amqps.AmqpsSessionManager.AnonymousClass1.<clinit>():void");
        }
    }

    public AmqpsSessionManager(DeviceClientConfig deviceClientConfig2) {
        if (deviceClientConfig2 != null) {
            this.deviceClientConfig = deviceClientConfig2;
            int ordinal = deviceClientConfig2.getAuthenticationType().ordinal();
            if (ordinal == 0) {
                this.amqpsDeviceAuthentication = new AmqpsDeviceAuthenticationX509(this.deviceClientConfig);
            } else if (ordinal == 1) {
                this.amqpsDeviceAuthentication = new AmqpsDeviceAuthenticationCBS(this.deviceClientConfig);
            }
            addDeviceOperationSession(this.deviceClientConfig);
            return;
        }
        throw new IllegalArgumentException("deviceClientConfig cannot be null.");
    }

    public final void addDeviceOperationSession(DeviceClientConfig deviceClientConfig2) {
        if (deviceClientConfig2 != null) {
            this.amqpsDeviceSessionList.add(new AmqpsSessionDeviceOperation(deviceClientConfig2, this.amqpsDeviceAuthentication));
            return;
        }
        throw new IllegalArgumentException("deviceClientConfig cannot be null.");
    }

    public void authenticate() {
        if (this.deviceClientConfig.getAuthenticationType() == DeviceClientConfig.AuthType.SAS_TOKEN) {
            for (int i2 = 0; i2 < this.amqpsDeviceSessionList.size(); i2++) {
                if (this.amqpsDeviceSessionList.get(i2) != null) {
                    this.amqpsDeviceSessionList.get(i2).authenticate();
                }
            }
        }
    }

    public void closeNow() {
        log.b("Closing AMQP session");
        for (int i2 = 0; i2 < this.amqpsDeviceSessionList.size(); i2++) {
            if (this.amqpsDeviceSessionList.get(i2) != null) {
                this.amqpsDeviceSessionList.get(i2).close();
            }
        }
        this.amqpsDeviceAuthentication.closeLinks();
        y yVar = this.session;
        if (yVar != null) {
            yVar.close();
            this.session = null;
        }
    }

    public AmqpsConvertFromProtonReturnValue convertFromProton(AmqpsMessage amqpsMessage, DeviceClientConfig deviceClientConfig2) {
        AmqpsConvertFromProtonReturnValue amqpsConvertFromProtonReturnValue = null;
        int i2 = 0;
        while (i2 < this.amqpsDeviceSessionList.size() && (amqpsConvertFromProtonReturnValue = this.amqpsDeviceSessionList.get(i2).convertFromProton(amqpsMessage, deviceClientConfig2)) == null) {
            i2++;
        }
        return amqpsConvertFromProtonReturnValue;
    }

    public AmqpsConvertToProtonReturnValue convertToProton(Message message) {
        AmqpsConvertToProtonReturnValue amqpsConvertToProtonReturnValue = null;
        int i2 = 0;
        while (i2 < this.amqpsDeviceSessionList.size() && (amqpsConvertToProtonReturnValue = this.amqpsDeviceSessionList.get(i2).convertToProton(message)) == null) {
            i2++;
        }
        return amqpsConvertToProtonReturnValue;
    }

    public int getExpectedWorkerLinkCount() {
        Iterator<AmqpsSessionDeviceOperation> it = this.amqpsDeviceSessionList.iterator();
        int i2 = 0;
        while (it.hasNext()) {
            i2 += it.next().getExpectedWorkerLinkCount();
        }
        return i2;
    }

    public AmqpsMessage getMessageFromReceiverLink(String str) {
        AmqpsMessage amqpsMessage = null;
        if (this.session != null) {
            int i2 = 0;
            if (str.startsWith(AmqpsDeviceAuthenticationCBS.RECEIVER_LINK_TAG_PREFIX) || str.startsWith(AmqpsDeviceAuthenticationCBS.SENDER_LINK_TAG_PREFIX)) {
                amqpsMessage = this.amqpsDeviceAuthentication.getMessageFromReceiverLink(str);
                while (i2 < this.amqpsDeviceSessionList.size() && !this.amqpsDeviceSessionList.get(i2).handleAuthenticationMessage(amqpsMessage)) {
                    i2++;
                }
            } else {
                while (i2 < this.amqpsDeviceSessionList.size() && (amqpsMessage = this.amqpsDeviceSessionList.get(i2).getMessageFromReceiverLink(str)) == null) {
                    i2++;
                }
            }
        }
        return amqpsMessage;
    }

    public boolean isAuthenticationOpened() {
        return this.amqpsDeviceAuthentication.operationLinksOpened();
    }

    public void onConnectionBound(c0 c0Var) {
        if (this.session != null) {
            this.amqpsDeviceAuthentication.setSslDomain(c0Var);
        }
    }

    public void onConnectionInit(k.a.b.a.d.c cVar) {
        if (cVar != null && this.session == null) {
            this.session = cVar.D();
            log.e("Opening session...");
            this.session.open();
        }
    }

    public void onLinkInit(n nVar) {
        if (this.session == null) {
            return;
        }
        if (isAuthenticationOpened()) {
            for (int i2 = 0; i2 < this.amqpsDeviceSessionList.size(); i2++) {
                this.amqpsDeviceSessionList.get(i2).initLink(nVar);
            }
            return;
        }
        this.amqpsDeviceAuthentication.initLink(nVar);
    }

    public void onLinkRemoteClose(n nVar) {
        String name = nVar.getName();
        int i2 = 0;
        while (i2 < this.amqpsDeviceSessionList.size()) {
            if (!this.amqpsDeviceSessionList.get(i2).onLinkRemoteClose(name)) {
                i2++;
            } else {
                return;
            }
        }
        if (!this.amqpsDeviceAuthentication.onLinkRemoteClose(name)) {
            log.d("onLinkRemoteClose could not be correlated with a local link, ignoring it");
        }
    }

    public boolean onLinkRemoteOpen(n nVar) {
        String name = nVar.getName();
        if (!isAuthenticationOpened()) {
            return this.amqpsDeviceAuthentication.onLinkRemoteOpen(name);
        }
        for (int i2 = 0; i2 < this.amqpsDeviceSessionList.size(); i2++) {
            if (this.amqpsDeviceSessionList.get(i2).onLinkRemoteOpen(name)) {
                return true;
            }
        }
        log.d("onLinkRemoteOpen could not be correlated with a local link, ignoring it");
        return false;
    }

    public void onSessionRemoteOpen(y yVar) {
        AmqpsDeviceAuthentication amqpsDeviceAuthentication2 = this.amqpsDeviceAuthentication;
        if (amqpsDeviceAuthentication2 instanceof AmqpsDeviceAuthenticationCBS) {
            amqpsDeviceAuthentication2.openLinks(yVar);
        } else {
            openWorkerLinks();
        }
    }

    public void openWorkerLinks() {
        if (this.session != null) {
            for (int i2 = 0; i2 < this.amqpsDeviceSessionList.size(); i2++) {
                if (this.amqpsDeviceSessionList.get(i2) != null) {
                    this.amqpsDeviceSessionList.get(i2).openLinks(this.session);
                }
            }
        }
    }

    public Integer sendMessage(a aVar, MessageType messageType, String str) {
        Integer num = -1;
        if (this.session != null) {
            for (int i2 = 0; i2 < this.amqpsDeviceSessionList.size(); i2++) {
                num = this.amqpsDeviceSessionList.get(i2).sendMessage(aVar, messageType, str);
                if (num.intValue() != -1) {
                    break;
                }
            }
            log.d("Attempt to send message over amqp failed because no session handled it ({})", (Object) aVar);
        }
        return num;
    }

    public void subscribeDeviceToMessageType(MessageType messageType, String str) {
        log.d("Subscribing to {}", (Object) messageType);
        if (this.session != null) {
            for (int i2 = 0; i2 < this.amqpsDeviceSessionList.size(); i2++) {
                if (this.amqpsDeviceSessionList.get(i2).getDeviceId().equals(str)) {
                    this.amqpsDeviceSessionList.get(i2).subscribeToMessageType(this.session, messageType);
                    return;
                }
            }
        }
    }
}
