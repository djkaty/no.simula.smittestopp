package j.b.a.b0;

import android.annotation.SuppressLint;
import android.app.Application;
import android.os.Handler;
import android.os.Message;
import com.microsoft.appcenter.crashes.Crashes;
import com.microsoft.appcenter.crashes.ingestion.models.ErrorAttachmentLog;
import com.microsoft.identity.client.claims.WWWAuthenticateHeader;
import h.k.b.g;
import java.util.LinkedHashMap;

public final class i {
    public g a;
    public boolean b;

    /* renamed from: c  reason: collision with root package name */
    public boolean f1499c;

    /* renamed from: d  reason: collision with root package name */
    public a f1500d;

    /* renamed from: e  reason: collision with root package name */
    public Application f1501e;

    /* renamed from: f  reason: collision with root package name */
    public h f1502f;

    /* renamed from: g  reason: collision with root package name */
    public final j.a.a.a.a.a.a f1503g;

    @SuppressLint({"HandlerLeak"})
    public static final class a extends Handler {
        public final /* synthetic */ i a;

        public a(i iVar) {
            this.a = iVar;
        }

        public void handleMessage(Message message) {
            if (message != null) {
                super.handleMessage(message);
                int i2 = message.what;
                if (i2 == 3) {
                    StringBuilder a2 = e.a.a.a.a.a("MSG_TIMEOUT ");
                    a2.append(this.a.b);
                    l.a.a.f2455d.b(a2.toString(), new Object[0]);
                    try {
                        if (this.a.b) {
                            StringBuilder sb = new StringBuilder();
                            sb.append("Called from thread:  ");
                            Thread currentThread = Thread.currentThread();
                            g.a((Object) currentThread, "Thread.currentThread()");
                            sb.append(currentThread.getName());
                            l.a.a.f2455d.b(sb.toString(), new Object[0]);
                            g gVar = this.a.a;
                            if (gVar != null) {
                                j jVar = gVar.f1497e;
                                if (jVar != null) {
                                    if (!(System.currentTimeMillis() - jVar.a < 35000)) {
                                        this.a.f1499c = false;
                                    }
                                } else {
                                    throw null;
                                }
                            }
                            this.a.b();
                            i iVar = this.a;
                            if (!iVar.f1499c) {
                                iVar.f1500d.sendEmptyMessageDelayed(4, 120000);
                                return;
                            }
                            iVar.f1500d.sendEmptyMessageDelayed(4, 360000);
                            iVar.f1499c = false;
                        }
                    } catch (Exception e2) {
                        l.a.a.f2455d.a(e2);
                        LinkedHashMap linkedHashMap = new LinkedHashMap();
                        linkedHashMap.put("where", "ScanScheduler::handleMsgTimeout");
                        Crashes.trackError(e2, linkedHashMap, (Iterable<ErrorAttachmentLog>) null);
                    }
                } else if (i2 == 4) {
                    l.a.a.f2455d.b("MSG_RESTART", new Object[0]);
                    try {
                        StringBuilder sb2 = new StringBuilder();
                        sb2.append(this.a.b);
                        sb2.append(WWWAuthenticateHeader.SPACE);
                        sb2.append(this.a.a);
                        l.a.a.f2455d.b(sb2.toString(), new Object[0]);
                        if (this.a.b) {
                            StringBuilder sb3 = new StringBuilder();
                            sb3.append("Called from thread:  ");
                            Thread currentThread2 = Thread.currentThread();
                            g.a((Object) currentThread2, "Thread.currentThread()");
                            sb3.append(currentThread2.getName());
                            l.a.a.f2455d.a(sb3.toString(), new Object[0]);
                            this.a.a();
                            this.a.f1500d.sendEmptyMessageDelayed(3, 35000);
                        }
                    } catch (Exception e3) {
                        l.a.a.f2455d.a(e3);
                        LinkedHashMap linkedHashMap2 = new LinkedHashMap();
                        linkedHashMap2.put("where", "ScanScheduler::handleMsgRestart");
                        Crashes.trackError(e3, linkedHashMap2, (Iterable<ErrorAttachmentLog>) null);
                    }
                }
            } else {
                g.a("msg");
                throw null;
            }
        }
    }

    public i(Application application, h hVar, j.a.a.a.a.a.a aVar) {
        if (application == null) {
            g.a("application");
            throw null;
        } else if (hVar == null) {
            g.a("scanListener");
            throw null;
        } else if (aVar != null) {
            this.f1501e = application;
            this.f1502f = hVar;
            this.f1503g = aVar;
            this.f1500d = new a(this);
        } else {
            g.a("bluetoothLeScanner");
            throw null;
        }
    }

    public final void a() {
        l.a.a.f2455d.b("startScanning", new Object[0]);
        if (this.a == null) {
            this.a = new g(this.f1501e, this.f1502f, this.f1503g);
        }
        g gVar = this.a;
        if (gVar != null) {
            gVar.a(false);
        }
    }

    public final void b() {
        l.a.a.f2455d.b("stopScanning", new Object[0]);
        g gVar = this.a;
        if (gVar != null) {
            try {
                gVar.f1498f.a(gVar.f1497e);
                gVar.f1498f.b(gVar.f1497e);
            } catch (Exception e2) {
                l.a.a.f2455d.a(e2);
            }
        }
        this.a = null;
    }
}
