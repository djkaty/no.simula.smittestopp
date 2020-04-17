package com.microsoft.azure.sdk.iot.deps.transport.amqp;

import com.microsoft.azure.sdk.iot.deps.util.CustomLogger;
import com.microsoft.azure.sdk.iot.deps.util.ObjectLock;
import com.microsoft.azure.sdk.iot.deps.ws.WebSocketHandler;
import com.microsoft.azure.sdk.iot.deps.ws.impl.WebSocketImpl;
import java.io.IOException;
import java.nio.BufferOverflowException;
import java.util.Map;
import java.util.concurrent.Callable;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.TimeUnit;
import javax.net.ssl.SSLContext;
import k.a.b.a.b.k.a;
import k.a.b.a.d.a0;
import k.a.b.a.d.c;
import k.a.b.a.d.c0;
import k.a.b.a.d.g0.g;
import k.a.b.a.d.g0.m0.e;
import k.a.b.a.d.g0.v;
import k.a.b.a.d.h;
import k.a.b.a.d.m;
import k.a.b.a.d.y;
import k.a.b.a.g.b;
import k.a.b.a.g.d;
import k.a.b.a.g.f;

public class AmqpsConnection extends ErrorLoggingBaseHandlerWithCleanup {
    public static final int AMQP_PORT = 5671;
    public static final int AMQP_WEB_SOCKET_PORT = 443;
    public static final int MAX_WAIT_TO_OPEN_CLOSE_CONNECTION = 60000;
    public static final int MAX_WAIT_TO_TERMINATE_EXECUTOR = 30;
    public static final int THREAD_POOL_MAX_NUMBER = 1;
    public static final String WEB_SOCKET_PATH = "/$iothub/websocket";
    public static final String WEB_SOCKET_SUB_PROTOCOL = "AMQPWSB10";
    public AmqpDeviceOperations amqpDeviceOperations;
    public final ObjectLock closeLock;
    public c connection;
    public ExecutorService executorService;
    public String fullHostAddress;
    public String hostName;
    public Boolean isOpen;
    public int linkCredit;
    public CustomLogger logger = new CustomLogger();
    public AmqpListener msgListener;
    public long nextTag;
    public CountDownLatch openLatch;
    public d reactor;
    public SaslListenerImpl saslListener;
    public y session;
    public SSLContext sslContext;
    public Boolean useWebSockets;

    public class ReactorRunner implements Callable {
        public static final String THREAD_NAME = "azure-iot-sdk-ReactorRunner";
        public final AmqpReactor amqpReactor;
        public final CustomLogger logger;

        public ReactorRunner(AmqpReactor amqpReactor2, CustomLogger customLogger) {
            this.amqpReactor = amqpReactor2;
            this.logger = customLogger;
        }

        public Object call() {
            Thread.currentThread().setName("azure-iot-sdk-ReactorRunner");
            try {
                this.amqpReactor.run();
                return null;
            } catch (m e2) {
                this.logger.LogError(e2);
                throw e2;
            }
        }
    }

    public AmqpsConnection(String str, AmqpDeviceOperations amqpDeviceOperations2, SSLContext sSLContext, SaslHandler saslHandler, boolean z) {
        if (str == null || str.isEmpty()) {
            throw new IllegalArgumentException("The hostname cannot be null or empty.");
        }
        this.linkCredit = -1;
        this.nextTag = 0;
        this.amqpDeviceOperations = amqpDeviceOperations2;
        this.useWebSockets = Boolean.valueOf(z);
        if (saslHandler != null) {
            this.saslListener = new SaslListenerImpl(saslHandler);
        }
        this.openLatch = new CountDownLatch(1);
        this.closeLock = new ObjectLock();
        this.sslContext = sSLContext;
        this.isOpen = false;
        Object[] objArr = new Object[2];
        objArr[0] = str;
        objArr[1] = Integer.valueOf(this.useWebSockets.booleanValue() ? 443 : 5671);
        this.fullHostAddress = String.format("%s:%d", objArr);
        this.hostName = str;
        add(new k.a.b.a.g.c());
        add(new b());
        try {
            f fVar = new f();
            fVar.a = false;
            this.reactor = e.c.a.a.b.l.c.a(fVar, this);
        } catch (IOException e2) {
            this.logger.LogError(e2);
            throw new IOException("Could not create Proton reactor", e2);
        }
    }

    private a0 makeDomain() {
        e eVar = new e();
        eVar.b = a0.b.VERIFY_PEER;
        k.a.b.a.d.g0.m0.f fVar = eVar.f1894d;
        fVar.a = null;
        a0.a aVar = a0.a.CLIENT;
        fVar.a = null;
        eVar.a = aVar;
        eVar.f1893c = this.sslContext;
        return eVar;
    }

    public void close() {
        CustomLogger customLogger = this.logger;
        customLogger.LogDebug("Entered in method %s", customLogger.getMethodName());
        if (this.isOpen.booleanValue()) {
            this.amqpDeviceOperations.closeLinks();
            y yVar = this.session;
            if (yVar != null) {
                yVar.close();
            }
            c cVar = this.connection;
            if (cVar != null) {
                cVar.close();
            }
            d dVar = this.reactor;
            if (dVar != null) {
                dVar.stop();
            }
            try {
                synchronized (this.closeLock) {
                    this.closeLock.waitLock(60000);
                }
                ExecutorService executorService2 = this.executorService;
                if (executorService2 != null) {
                    executorService2.shutdown();
                    try {
                        if (!this.executorService.awaitTermination(30, TimeUnit.SECONDS)) {
                            this.executorService.shutdownNow();
                            if (!this.executorService.awaitTermination(30, TimeUnit.SECONDS)) {
                                this.logger.LogInfo("Pool did not terminate", new Object[0]);
                            }
                        }
                    } catch (InterruptedException unused) {
                        this.executorService.shutdownNow();
                    }
                }
                this.isOpen = false;
            } catch (InterruptedException e2) {
                this.logger.LogError(e2);
                throw new IOException("Waited too long for the connection to open.");
            }
        }
        CustomLogger customLogger2 = this.logger;
        customLogger2.LogDebug("Exited from method %s", customLogger2.getMethodName());
    }

    public boolean isConnected() {
        SaslListenerImpl saslListenerImpl = this.saslListener;
        if (saslListenerImpl == null || saslListenerImpl.getSavedException() == null) {
            return this.isOpen.booleanValue();
        }
        throw this.saslListener.getSavedException();
    }

    public void onConnectionBound(h hVar) {
        CustomLogger customLogger = this.logger;
        customLogger.LogDebug("Entered in method %s", customLogger.getMethodName());
        c0 l2 = ((g) hVar).U().l();
        if (l2 != null) {
            if (this.saslListener != null) {
                ((v) l2.E()).x = this.saslListener;
            }
            if (this.useWebSockets.booleanValue()) {
                WebSocketImpl webSocketImpl = new WebSocketImpl();
                webSocketImpl.configure(this.hostName, "/$iothub/websocket", 0, "AMQPWSB10", (Map<String, String>) null, (WebSocketHandler) null);
                ((k.a.b.a.d.g0.c0) l2).a(webSocketImpl);
            }
            try {
                l2.a(makeDomain());
            } catch (IOException e2) {
                this.logger.LogDebug("onConnectionBound has thrown exception while creating ssl context: %s", e2.getMessage());
            }
        }
        CustomLogger customLogger2 = this.logger;
        customLogger2.LogDebug("Exited from method %s", customLogger2.getMethodName());
    }

    public void onConnectionInit(h hVar) {
        CustomLogger customLogger = this.logger;
        customLogger.LogDebug("Entered in method %s", customLogger.getMethodName());
        c U = ((g) hVar).U();
        this.connection = U;
        U.c(this.fullHostAddress);
        this.session = this.connection.D();
        this.connection.open();
        this.session.open();
        try {
            this.amqpDeviceOperations.openLinks(this.session);
        } catch (Exception e2) {
            this.logger.LogDebug("openLinks has thrown exception: %s", e2.getMessage());
        }
        CustomLogger customLogger2 = this.logger;
        customLogger2.LogDebug("Exited from method %s", customLogger2.getMethodName());
    }

    public void onConnectionUnbound(h hVar) {
        CustomLogger customLogger = this.logger;
        customLogger.LogDebug("Entered in method %s", customLogger.getMethodName());
        this.isOpen = false;
        CustomLogger customLogger2 = this.logger;
        customLogger2.LogDebug("Exited from method %s", customLogger2.getMethodName());
    }

    public void onDelivery(h hVar) {
        CustomLogger customLogger = this.logger;
        customLogger.LogDebug("Entered in method %s", customLogger.getMethodName());
        g gVar = (g) hVar;
        AmqpMessage receiverMessageFromLink = this.amqpDeviceOperations.receiverMessageFromLink(gVar.G().getName());
        if (receiverMessageFromLink != null) {
            this.msgListener.messageReceived(receiverMessageFromLink);
        } else if (gVar.w() == h.b.DELIVERY) {
            k.a.b.a.d.e h2 = gVar.h();
            h2.e().equals(a.a);
            h2.a();
        }
        CustomLogger customLogger2 = this.logger;
        customLogger2.LogDebug("Exited from method %s", customLogger2.getMethodName());
    }

    public void onLinkFlow(h hVar) {
        CustomLogger customLogger = this.logger;
        customLogger.LogDebug("Entered in method %s", customLogger.getMethodName());
        int x = ((g) hVar).G().x();
        this.linkCredit = x;
        this.logger.LogDebug("The link credit value is %s, method name is %s", Integer.valueOf(x), this.logger.getMethodName());
        CustomLogger customLogger2 = this.logger;
        customLogger2.LogDebug("Exited from method %s", customLogger2.getMethodName());
    }

    public void onLinkInit(h hVar) {
        CustomLogger customLogger = this.logger;
        customLogger.LogDebug("Entered in method %s", customLogger.getMethodName());
        try {
            this.amqpDeviceOperations.initLink(((g) hVar).G());
        } catch (Exception e2) {
            this.logger.LogDebug("Exception in onLinkInit: %s", e2.getMessage());
        }
        CustomLogger customLogger2 = this.logger;
        customLogger2.LogDebug("Exited from method %s", customLogger2.getMethodName());
    }

    public void onLinkRemoteOpen(h hVar) {
        CustomLogger customLogger = this.logger;
        customLogger.LogDebug("Entered in method %s", customLogger.getMethodName());
        if (this.amqpDeviceOperations.isReceiverLinkTag(((g) hVar).G().getName())) {
            this.isOpen = true;
            AmqpListener amqpListener = this.msgListener;
            if (amqpListener != null) {
                amqpListener.connectionEstablished();
                this.openLatch.countDown();
            }
        }
        CustomLogger customLogger2 = this.logger;
        customLogger2.LogDebug("Exited from method %s", customLogger2.getMethodName());
    }

    public void onReactorFinal(h hVar) {
        CustomLogger customLogger = this.logger;
        customLogger.LogDebug("Entered in method %s", customLogger.getMethodName());
        this.reactor = null;
        synchronized (this.closeLock) {
            this.closeLock.notifyLock();
        }
        CustomLogger customLogger2 = this.logger;
        customLogger2.LogDebug("Exited from method %s", customLogger2.getMethodName());
    }

    public void onReactorInit(h hVar) {
        CustomLogger customLogger = this.logger;
        customLogger.LogDebug("Entered in method %s", customLogger.getMethodName());
        ((g) hVar).b().a(this.hostName, this.useWebSockets.booleanValue() ? 443 : 5671, this);
        CustomLogger customLogger2 = this.logger;
        customLogger2.LogDebug("Exited from method %s", customLogger2.getMethodName());
    }

    public void onTransportError(h hVar) {
        super.onTransportError(hVar);
        this.isOpen = false;
    }

    public void onTransportHeadClosed(h hVar) {
        this.openLatch.countDown();
    }

    public void open() {
        CustomLogger customLogger = this.logger;
        customLogger.LogDebug("Entered in method %s", customLogger.getMethodName());
        if (!this.isOpen.booleanValue()) {
            try {
                openAmqpAsync();
                try {
                    this.openLatch.await(60000, TimeUnit.MILLISECONDS);
                } catch (InterruptedException e2) {
                    this.logger.LogError(e2);
                    close();
                    throw new IOException("Waited too long for the connection to open.");
                }
            } catch (Exception e3) {
                this.logger.LogError(e3);
                close();
                throw new IOException("Error opening Amqp connection: ", e3);
            }
        }
        if (this.isOpen.booleanValue()) {
            CustomLogger customLogger2 = this.logger;
            customLogger2.LogDebug("Exited from method %s", customLogger2.getMethodName());
            return;
        }
        throw new IOException("Failed to open the connection");
    }

    public void openAmqpAsync() {
        CustomLogger customLogger = this.logger;
        customLogger.LogDebug("Entered in method %s", customLogger.getMethodName());
        this.openLatch = new CountDownLatch(1);
        if (this.executorService == null) {
            this.executorService = Executors.newFixedThreadPool(1);
        }
        this.executorService.submit(new ReactorRunner(new AmqpReactor(this.reactor), this.logger));
        CustomLogger customLogger2 = this.logger;
        customLogger2.LogDebug("Exited from method %s", customLogger2.getMethodName());
    }

    public boolean sendAmqpMessage(AmqpMessage amqpMessage) {
        boolean z;
        SaslListenerImpl saslListenerImpl = this.saslListener;
        if (saslListenerImpl == null || saslListenerImpl.getSavedException() == null) {
            CustomLogger customLogger = this.logger;
            customLogger.LogDebug("Entered in method %s", customLogger.getMethodName());
            if (this.isOpen.booleanValue()) {
                byte[] bArr = new byte[1024];
                boolean z2 = false;
                int i2 = 0;
                do {
                    try {
                        i2 = amqpMessage.encode(bArr, 0);
                        z2 = true;
                        continue;
                    } catch (BufferOverflowException unused) {
                        bArr = new byte[(bArr.length * 2)];
                        continue;
                    }
                } while (!z2);
                if (i2 > 0) {
                    byte[] bytes = String.valueOf(this.nextTag).getBytes();
                    long j2 = this.nextTag;
                    if (j2 == 2147483647L || j2 < 0) {
                        this.nextTag = 0;
                    } else {
                        this.nextTag = j2 + 1;
                    }
                    this.amqpDeviceOperations.sendMessage(bytes, bArr, i2, 0);
                    z = true;
                    CustomLogger customLogger2 = this.logger;
                    customLogger2.LogDebug("Exited from method %s", customLogger2.getMethodName());
                    return z;
                }
            }
            z = false;
            CustomLogger customLogger22 = this.logger;
            customLogger22.LogDebug("Exited from method %s", customLogger22.getMethodName());
            return z;
        }
        throw this.saslListener.getSavedException();
    }

    public void setListener(AmqpListener amqpListener) {
        if (amqpListener != null) {
            this.msgListener = amqpListener;
            return;
        }
        throw new IllegalArgumentException("The listener cannot be null.");
    }
}
