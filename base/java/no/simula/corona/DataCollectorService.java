package no.simula.corona;

import android.app.Application;
import android.app.Notification;
import android.app.NotificationChannel;
import android.app.NotificationManager;
import android.app.PendingIntent;
import android.app.Service;
import android.bluetooth.BluetoothAdapter;
import android.bluetooth.BluetoothGattServer;
import android.bluetooth.BluetoothManager;
import android.bluetooth.le.BluetoothLeAdvertiser;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.location.Location;
import android.os.Build;
import android.os.IBinder;
import android.os.Looper;
import com.google.android.gms.location.LocationRequest;
import com.google.android.gms.location.LocationResult;
import com.microsoft.appcenter.analytics.Analytics;
import com.microsoft.appcenter.analytics.EventProperties;
import com.microsoft.appcenter.analytics.ingestion.models.EventLog;
import com.microsoft.appcenter.crashes.Crashes;
import com.microsoft.appcenter.crashes.ingestion.models.ErrorAttachmentLog;
import com.microsoft.appcenter.ingestion.models.Device;
import com.microsoft.azure.sdk.iot.device.DeviceClient;
import com.microsoft.azure.sdk.iot.device.IotHubEventCallback;
import com.microsoft.azure.sdk.iot.device.IotHubStatusCode;
import com.microsoft.azure.sdk.iot.device.Message;
import com.microsoft.azure.storage.blob.BlobConstants;
import com.microsoft.identity.client.PublicClientApplication;
import com.microsoft.identity.client.claims.WWWAuthenticateHeader;
import h.k.b.g;
import j.b.a.a0;
import j.b.a.b0.e;
import j.b.a.b0.h;
import j.b.a.b0.i;
import j.b.a.d;
import j.b.a.f;
import j.b.a.o;
import j.b.a.p;
import j.b.a.r;
import j.b.a.s;
import j.b.a.t;
import j.b.a.v;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import k.d.a.m;
import org.greenrobot.eventbus.ThreadMode;
import org.json.JSONObject;

public final class DataCollectorService extends Service implements h {
    public boolean A;
    public LocationRequest B;
    public e.c.a.a.e.b C;
    public e.c.a.a.e.a D;
    public long E;
    public final int F;
    public j.b.a.d0.a G;
    public Notification H;
    public Notification I;
    public Notification J;
    public MeasurementDatabase K;
    public f L;
    public j.b.a.h M;
    public j.b.a.b0.c N;
    public boolean O;
    public j.b.a.b0.a P;
    public i Q;
    public e R;
    public v x;
    public boolean y;
    public final d z = new d(this);

    public final class a implements IotHubEventCallback {
        public final String a;
        public final List<Integer> b;

        /* renamed from: c  reason: collision with root package name */
        public final /* synthetic */ DataCollectorService f2456c;

        public a(DataCollectorService dataCollectorService, String str, List<Integer> list) {
            if (str == null) {
                g.a("mode");
                throw null;
            } else if (list != null) {
                this.f2456c = dataCollectorService;
                this.a = str;
                this.b = list;
            } else {
                g.a("tobeUpdated");
                throw null;
            }
        }

        public void execute(IotHubStatusCode iotHubStatusCode, Object obj) {
            String str;
            if (iotHubStatusCode != null) {
                int ordinal = iotHubStatusCode.ordinal();
                if (ordinal == 0 || ordinal == 1) {
                    l.a.a.f2455d.c(e.a.a.a.a.a(e.a.a.a.a.a("Uploaded "), this.a, " data, OK, OK_EMPTY"), new Object[0]);
                    DataCollectorService.a(this.f2456c, this.a, (List) this.b);
                    this.f2456c.L = null;
                } else if (ordinal == 5) {
                    DataCollectorService.a(this.f2456c);
                    this.f2456c.L = null;
                }
            }
            StringBuilder a2 = e.a.a.a.a.a("Uploaded failed because ");
            if (iotHubStatusCode == null || (str = iotHubStatusCode.name()) == null) {
                str = "N/A";
            }
            a2.append(str);
            String sb = a2.toString();
            Analytics.trackEvent(sb);
            l.a.a.f2455d.b(sb, new Object[0]);
            this.f2456c.L = null;
        }
    }

    public static final class b extends e.c.a.a.e.b {
        public final /* synthetic */ DataCollectorService a;

        public b(DataCollectorService dataCollectorService) {
            this.a = dataCollectorService;
        }

        public void a(LocationResult locationResult) {
            if (locationResult == null) {
                l.a.a.f2455d.c("Location result is null", new Object[0]);
                return;
            }
            for (Location next : locationResult.x) {
                DataCollectorService dataCollectorService = this.a;
                g.a((Object) next, "location");
                DataCollectorService.a(dataCollectorService, next);
            }
        }
    }

    public static final class c implements j.b.a.e {
        public final /* synthetic */ DataCollectorService a;

        public c(DataCollectorService dataCollectorService) {
            this.a = dataCollectorService;
        }

        public void a(p pVar) {
            if (pVar != null) {
                DataCollectorService.a(this.a, "gps", pVar.a);
                DataCollectorService.a(this.a, "bluetooth", pVar.b);
            }
        }
    }

    public DataCollectorService() {
        LocationRequest locationRequest = new LocationRequest();
        LocationRequest.a(12000);
        locationRequest.y = 12000;
        if (!locationRequest.A) {
            locationRequest.z = (long) (((double) 12000) / 6.0d);
        }
        LocationRequest.a(10000);
        locationRequest.A = true;
        locationRequest.z = 10000;
        locationRequest.x = 100;
        this.B = locationRequest;
        this.E = a0.a();
        this.F = 1;
    }

    public static final /* synthetic */ void a(DataCollectorService dataCollectorService, String str, o oVar) {
        if (dataCollectorService != null) {
            int size = oVar.a.size();
            for (int i2 = 0; i2 < size; i2++) {
                h.c cVar = oVar.a.get(i2);
                List list = (List) cVar.x;
                JSONObject jSONObject = (JSONObject) cVar.y;
                if (jSONObject.length() > 0 && jSONObject.getJSONArray("events").length() > 0) {
                    Message message = new Message(jSONObject.toString());
                    message.setProperty("eventType", str);
                    j.b.a.h hVar = dataCollectorService.M;
                    if (hVar != null) {
                        a aVar = new a(dataCollectorService, str, list);
                        if (!hVar.f1509c || hVar.b == null) {
                            l.a.a.f2455d.c("Device is not connected or provisioned", new Object[0]);
                            aVar.execute(IotHubStatusCode.ERROR, new ArrayList());
                        } else {
                            if (!g.a((Object) message.getContentType(), (Object) hVar.f1514h)) {
                                message.setContentTypeFinal(hVar.f1514h);
                            }
                            if (!g.a((Object) message.getContentEncoding(), (Object) hVar.f1513g)) {
                                message.setContentEncoding(hVar.f1513g);
                            }
                            try {
                                DeviceClient deviceClient = hVar.b;
                                if (deviceClient != null) {
                                    deviceClient.sendEventAsync(message, aVar, (Object) null);
                                }
                                l.a.a.f2455d.c("Pushed message", new Object[0]);
                            } catch (Exception e2) {
                                LinkedHashMap linkedHashMap = new LinkedHashMap();
                                linkedHashMap.put("where", "IoTHubDevice::sendEventAsync");
                                Crashes.trackError(e2, linkedHashMap, (Iterable<ErrorAttachmentLog>) null);
                                l.a.a.f2455d.a(e2);
                                aVar.execute(IotHubStatusCode.ERROR, new ArrayList());
                            }
                        }
                    } else {
                        g.b("mDevice");
                        throw null;
                    }
                }
            }
            return;
        }
        throw null;
    }

    public static final void b(Context context) {
        if (context != null) {
            Intent intent = new Intent(context, DataCollectorService.class);
            intent.putExtra("service-command", 1);
            context.startService(intent);
            return;
        }
        g.a(PublicClientApplication.NONNULL_CONSTANTS.CONTEXT);
        throw null;
    }

    public final void c() {
        this.H = null;
        this.I = null;
        Object systemService = getSystemService("notification");
        if (systemService != null) {
            NotificationManager notificationManager = (NotificationManager) systemService;
            notificationManager.cancel(14);
            notificationManager.cancel(15);
            return;
        }
        throw new h.e("null cannot be cast to non-null type android.app.NotificationManager");
    }

    public final void d() {
        BluetoothLeAdvertiser bluetoothLeAdvertiser;
        if (!((this.R == null || this.P == null || this.Q == null) ? false : true)) {
            l.a.a.f2455d.a("Initializing bluetooth components", new Object[0]);
            Object systemService = getSystemService("bluetooth");
            if (systemService != null) {
                BluetoothManager bluetoothManager = (BluetoothManager) systemService;
                try {
                    BluetoothAdapter adapter = bluetoothManager.getAdapter();
                    if (adapter == null || !adapter.isEnabled()) {
                        l.a.a.f2455d.a("Bluetooth adapter is null", new Object[0]);
                    } else {
                        BluetoothAdapter adapter2 = bluetoothManager.getAdapter();
                        g.a((Object) adapter2, "bluetoothManager.adapter");
                        if (adapter2.getBluetoothLeAdvertiser() == null) {
                            l.a.a.f2455d.d("Le advertiser is not supported on this device", new Object[0]);
                            EventProperties eventProperties = new EventProperties();
                            eventProperties.set("what", "Not supported");
                            eventProperties.set(Device.MODEL, Build.MANUFACTURER + WWWAuthenticateHeader.SPACE + Build.MODEL);
                            Analytics.trackEvent("LeAdvertise", eventProperties);
                        }
                        this.R = new e(this, bluetoothManager);
                        BluetoothAdapter adapter3 = bluetoothManager.getAdapter();
                        g.a((Object) adapter3, "bluetoothManager.adapter");
                        this.P = new j.b.a.b0.a(adapter3.getBluetoothLeAdvertiser());
                        Application application = getApplication();
                        g.a((Object) application, "this.application");
                        j.a.a.a.a.a.a a2 = j.a.a.a.a.a.a.a();
                        g.a((Object) a2, "BluetoothLeScannerCompat.getScanner()");
                        this.Q = new i(application, this, a2);
                    }
                } catch (Exception e2) {
                    LinkedHashMap linkedHashMap = new LinkedHashMap();
                    linkedHashMap.put("where", "DataCollector::initializeBluetooth");
                    Crashes.trackError(e2, linkedHashMap, (Iterable<ErrorAttachmentLog>) null);
                }
            } else {
                throw new h.e("null cannot be cast to non-null type android.bluetooth.BluetoothManager");
            }
        }
        Object systemService2 = getSystemService("bluetooth");
        if (systemService2 != null) {
            BluetoothManager bluetoothManager2 = (BluetoothManager) systemService2;
            l.a.a.f2455d.c("Starting bluetooth updates", new Object[0]);
            try {
                BluetoothAdapter adapter4 = bluetoothManager2.getAdapter();
                if (adapter4 == null || !adapter4.isEnabled()) {
                    l.a.a.f2455d.b("Bluetooth adaptor is off", new Object[0]);
                    return;
                }
                e eVar = this.R;
                if (eVar != null) {
                    BluetoothGattServer openGattServer = eVar.f1492e.openGattServer(eVar.f1491d, new j.b.a.b0.d(eVar));
                    if (openGattServer != null) {
                        openGattServer.addService(eVar.b);
                    }
                    eVar.f1490c = openGattServer;
                }
                j.b.a.b0.a aVar = this.P;
                if (!(aVar == null || (bluetoothLeAdvertiser = aVar.f1489d) == null)) {
                    bluetoothLeAdvertiser.startAdvertising(aVar.b, aVar.a, aVar.f1488c);
                }
                i iVar = this.Q;
                if (iVar != null) {
                    iVar.b = true;
                    iVar.a();
                    iVar.f1500d.sendEmptyMessageDelayed(3, 35000);
                }
                this.O = true;
                k.d.a.c.b().a((Object) new j.b.a.c0.b(true));
                v vVar = this.x;
                if (vVar != null) {
                    vVar.e();
                }
            } catch (SecurityException unused) {
                l.a.a.f2455d.b("Lost bluetooth permissions", new Object[0]);
            }
        } else {
            throw new h.e("null cannot be cast to non-null type android.bluetooth.BluetoothManager");
        }
    }

    public final void e() {
        l.a.a.f2455d.c("Starting location updates", new Object[0]);
        try {
            if (!j.b.a.d0.a.a(this)) {
                l.a.a.f2455d.b("Location services are off", new Object[0]);
                return;
            }
            e.c.a.a.e.a aVar = this.D;
            if (aVar != null) {
                LocationRequest locationRequest = this.B;
                e.c.a.a.e.b bVar = this.C;
                if (bVar != null) {
                    aVar.a(locationRequest, bVar, Looper.myLooper());
                    this.y = true;
                    k.d.a.c.b().a((Object) new j.b.a.c0.c(true));
                    v vVar = this.x;
                    if (vVar != null) {
                        vVar.d();
                        return;
                    }
                    return;
                }
                g.b("locationCallback");
                throw null;
            }
            g.b("fusedLocationClient");
            throw null;
        } catch (SecurityException e2) {
            l.a.a.f2455d.b("Lost location permissions", new Object[0]);
            Crashes.trackError(e2);
        }
    }

    /* JADX WARNING: Removed duplicated region for block: B:31:0x00c3  */
    /* JADX WARNING: Removed duplicated region for block: B:35:0x0103  */
    /* JADX WARNING: Removed duplicated region for block: B:38:0x0150  */
    /* JADX WARNING: Removed duplicated region for block: B:41:0x0162  */
    /* JADX WARNING: Removed duplicated region for block: B:42:0x016c  */
    /* JADX WARNING: Removed duplicated region for block: B:48:0x0100 A[EDGE_INSN: B:48:0x0100->B:34:0x0100 ?: BREAK  , SYNTHETIC] */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public final void f() {
        /*
            r11 = this;
            j.b.a.f r0 = r11.L
            r1 = 1
            if (r0 == 0) goto L_0x000c
            boolean r0 = r0.a()
            if (r0 != r1) goto L_0x000c
            return
        L_0x000c:
            j.b.a.h r0 = r11.M
            r2 = 0
            if (r0 == 0) goto L_0x018c
            boolean r3 = r0.f1509c
            if (r3 != 0) goto L_0x0019
            r0.a()
            return
        L_0x0019:
            java.lang.String r0 = r0.f1512f
            java.lang.String r3 = "."
            java.lang.String[] r4 = new java.lang.String[]{r3}
            r5 = 6
            r6 = 0
            java.lang.String r7 = "1.0.2"
            java.util.List r4 = h.o.g.a(r7, r4, r6, r6, r5)
            int r7 = r4.size()
            r8 = 3
            if (r7 >= r8) goto L_0x0031
            goto L_0x0099
        L_0x0031:
            java.lang.Object r7 = r4.get(r6)
            java.lang.String r7 = (java.lang.String) r7
            int r7 = java.lang.Integer.parseInt(r7)
            java.lang.Object r9 = r4.get(r1)
            java.lang.String r9 = (java.lang.String) r9
            int r9 = java.lang.Integer.parseInt(r9)
            r10 = 2
            java.lang.Object r4 = r4.get(r10)
            java.lang.String r4 = (java.lang.String) r4
            int r4 = java.lang.Integer.parseInt(r4)
            java.lang.String[] r3 = new java.lang.String[]{r3}
            java.util.List r3 = h.o.g.a(r0, r3, r6, r6, r5)
            int r5 = r3.size()
            if (r5 == r8) goto L_0x006e
            com.microsoft.appcenter.analytics.EventProperties r3 = new com.microsoft.appcenter.analytics.EventProperties
            r3.<init>()
            java.lang.String r4 = "version"
            r3.set((java.lang.String) r4, (java.lang.String) r0)
            java.lang.String r0 = "Malformed version string"
            com.microsoft.appcenter.analytics.Analytics.trackEvent((java.lang.String) r0, (com.microsoft.appcenter.analytics.EventProperties) r3)
            goto L_0x0099
        L_0x006e:
            java.lang.Object r0 = r3.get(r6)
            java.lang.String r0 = (java.lang.String) r0
            int r0 = java.lang.Integer.parseInt(r0)
            java.lang.Object r5 = r3.get(r1)
            java.lang.String r5 = (java.lang.String) r5
            int r5 = java.lang.Integer.parseInt(r5)
            java.lang.Object r3 = r3.get(r10)
            java.lang.String r3 = (java.lang.String) r3
            int r3 = java.lang.Integer.parseInt(r3)
            if (r0 > r7) goto L_0x009b
            if (r0 != r7) goto L_0x0092
            if (r5 > r9) goto L_0x009b
        L_0x0092:
            if (r0 != r7) goto L_0x0099
            if (r5 != r9) goto L_0x0099
            if (r3 <= r4) goto L_0x0099
            goto L_0x009b
        L_0x0099:
            r0 = 0
            goto L_0x009c
        L_0x009b:
            r0 = 1
        L_0x009c:
            if (r0 == 0) goto L_0x0174
            android.app.Notification r0 = r11.J
            if (r0 == 0) goto L_0x00a4
            goto L_0x0174
        L_0x00a4:
            android.content.Intent r0 = new android.content.Intent
            java.lang.String r3 = "market://details?id=no.simula.smittestopp"
            android.net.Uri r4 = android.net.Uri.parse(r3)
            java.lang.String r5 = "android.intent.action.VIEW"
            r0.<init>(r5, r4)
            android.content.pm.PackageManager r4 = r11.getPackageManager()
            java.util.List r0 = r4.queryIntentActivities(r0, r6)
            java.util.Iterator r0 = r0.iterator()
        L_0x00bd:
            boolean r4 = r0.hasNext()
            if (r4 == 0) goto L_0x0100
            java.lang.Object r4 = r0.next()
            android.content.pm.ResolveInfo r4 = (android.content.pm.ResolveInfo) r4
            android.content.pm.ActivityInfo r7 = r4.activityInfo
            android.content.pm.ApplicationInfo r7 = r7.applicationInfo
            java.lang.String r7 = r7.packageName
            java.lang.String r8 = "com.android.vending"
            boolean r7 = h.k.b.g.a((java.lang.Object) r7, (java.lang.Object) r8)
            if (r7 == 0) goto L_0x00bd
            android.content.pm.ActivityInfo r0 = r4.activityInfo
            android.content.ComponentName r2 = new android.content.ComponentName
            android.content.pm.ApplicationInfo r4 = r0.applicationInfo
            java.lang.String r4 = r4.packageName
            java.lang.String r0 = r0.name
            r2.<init>(r4, r0)
            android.content.Intent r0 = new android.content.Intent
            android.net.Uri r3 = android.net.Uri.parse(r3)
            r0.<init>(r5, r3)
            r3 = 268435456(0x10000000, float:2.5243549E-29)
            r0.addFlags(r3)
            r3 = 2097152(0x200000, float:2.938736E-39)
            r0.addFlags(r3)
            r3 = 67108864(0x4000000, float:1.5046328E-36)
            r0.addFlags(r3)
            r0.setComponent(r2)
            r2 = r0
        L_0x0100:
            if (r2 == 0) goto L_0x0103
            goto L_0x011f
        L_0x0103:
            android.content.Intent r2 = new android.content.Intent
            java.lang.StringBuilder r0 = new java.lang.StringBuilder
            r0.<init>()
            java.lang.String r3 = "https://play.google.com/store/apps/details?id="
            r0.append(r3)
            java.lang.String r3 = "no.simula.smittestopp"
            r0.append(r3)
            java.lang.String r0 = r0.toString()
            android.net.Uri r0 = android.net.Uri.parse(r0)
            r2.<init>(r5, r0)
        L_0x011f:
            android.app.PendingIntent r0 = android.app.PendingIntent.getActivity(r11, r6, r2, r6)
            d.i.a.g r2 = new d.i.a.g
            r2.<init>(r11)
            r3 = 2131886191(0x7f12006f, float:1.9406954E38)
            java.lang.String r3 = r11.getString(r3)
            r2.b(r3)
            r3 = 2131230888(0x7f0800a8, float:1.8077841E38)
            android.app.Notification r4 = r2.O
            r4.icon = r3
            r3 = 2131886192(0x7f120070, float:1.9406956E38)
            java.lang.String r3 = r11.getString(r3)
            r2.a((java.lang.CharSequence) r3)
            r2.f556l = r1
            r2.f550f = r0
            r2.a((boolean) r1)
            int r0 = android.os.Build.VERSION.SDK_INT
            r1 = 26
            if (r0 < r1) goto L_0x0154
            java.lang.String r0 = "Smittestopp Reminders"
            r2.I = r0
        L_0x0154:
            android.app.Notification r0 = r2.a()
            r11.J = r0
            java.lang.String r0 = "notification"
            java.lang.Object r0 = r11.getSystemService(r0)
            if (r0 == 0) goto L_0x016c
            android.app.NotificationManager r0 = (android.app.NotificationManager) r0
            r1 = 16
            android.app.Notification r2 = r11.J
            r0.notify(r1, r2)
            goto L_0x0174
        L_0x016c:
            h.e r0 = new h.e
            java.lang.String r1 = "null cannot be cast to non-null type android.app.NotificationManager"
            r0.<init>(r1)
            throw r0
        L_0x0174:
            long r0 = j.b.a.a0.a()
            r11.E = r0
            j.b.a.f r0 = new j.b.a.f
            no.simula.corona.DataCollectorService$c r1 = new no.simula.corona.DataCollectorService$c
            r1.<init>(r11)
            r0.<init>(r11, r1)
            r11.L = r0
            java.lang.Object[] r1 = new java.lang.Object[r6]
            r0.execute(r1)
            return
        L_0x018c:
            java.lang.String r0 = "mDevice"
            h.k.b.g.b(r0)
            throw r2
        */
        throw new UnsupportedOperationException("Method not decompiled: no.simula.corona.DataCollectorService.f():void");
    }

    public final void g() {
        BluetoothLeAdvertiser bluetoothLeAdvertiser;
        BluetoothGattServer bluetoothGattServer;
        if (this.O) {
            l.a.a.f2455d.c("Stopping bluetooth updates", new Object[0]);
            Object systemService = getSystemService("bluetooth");
            if (systemService != null) {
                BluetoothAdapter adapter = ((BluetoothManager) systemService).getAdapter();
                if (adapter == null || !adapter.isEnabled()) {
                    i iVar = this.Q;
                    if (iVar != null) {
                        iVar.b = false;
                        iVar.f1500d.removeMessages(4);
                        iVar.b();
                    }
                    this.O = false;
                    k.d.a.c.b().a((Object) new j.b.a.c0.b(false));
                    return;
                }
                try {
                    e eVar = this.R;
                    if (!(eVar == null || (bluetoothGattServer = eVar.f1490c) == null)) {
                        bluetoothGattServer.close();
                    }
                    i iVar2 = this.Q;
                    if (iVar2 != null) {
                        iVar2.b = false;
                        iVar2.f1500d.removeMessages(4);
                        iVar2.b();
                    }
                    j.b.a.b0.a aVar = this.P;
                    if (!(aVar == null || (bluetoothLeAdvertiser = aVar.f1489d) == null)) {
                        bluetoothLeAdvertiser.stopAdvertising(aVar.f1488c);
                    }
                    this.O = false;
                    k.d.a.c.b().a((Object) new j.b.a.c0.b(false));
                } catch (Exception e2) {
                    l.a.a.f2455d.a(e2);
                    LinkedHashMap linkedHashMap = new LinkedHashMap();
                    linkedHashMap.put("where", "DataCollector::stopBluetoothUpdates");
                    Crashes.trackError(e2, linkedHashMap, (Iterable<ErrorAttachmentLog>) null);
                }
            } else {
                throw new h.e("null cannot be cast to non-null type android.bluetooth.BluetoothManager");
            }
        } else {
            l.a.a.f2455d.c("bluetooth is already closed", new Object[0]);
        }
    }

    public final void h() {
        if (this.y) {
            l.a.a.f2455d.c("Stopping location updates", new Object[0]);
            try {
                e.c.a.a.e.a aVar = this.D;
                if (aVar != null) {
                    e.c.a.a.e.b bVar = this.C;
                    if (bVar != null) {
                        aVar.a(bVar);
                        this.y = false;
                        v vVar = this.x;
                        if (vVar != null) {
                            vVar.g();
                        }
                        k.d.a.c.b().a((Object) new j.b.a.c0.c(false));
                        this.y = false;
                        return;
                    }
                    g.b("locationCallback");
                    throw null;
                }
                g.b("fusedLocationClient");
                throw null;
            } catch (SecurityException e2) {
                l.a.a.f2455d.a(e2);
                Crashes.trackError(e2);
            }
        } else {
            l.a.a.f2455d.c("location services already closed", new Object[0]);
        }
    }

    public final boolean i() {
        if (!a0.j(this)) {
            if (!a0.h(this)) {
                CoronaApp coronaApp = CoronaApp.z;
                if (g.a((Object) coronaApp != null ? Boolean.valueOf(coronaApp.x) : null, (Object) true)) {
                    Object systemService = getSystemService("notification");
                    if (systemService != null) {
                        NotificationManager notificationManager = (NotificationManager) systemService;
                        CoronaApp coronaApp2 = CoronaApp.z;
                        if (coronaApp2 != null && !coronaApp2.y) {
                            PendingIntent activity = PendingIntent.getActivity(this, 0, new Intent(this, SplashActivity.class), 0);
                            d.i.a.g gVar = new d.i.a.g(this);
                            gVar.b(getString(R$string.persistent_notification_title));
                            gVar.O.icon = R$drawable.ic_stat_name;
                            gVar.a((CharSequence) getString(R$string.you_need_authentication));
                            gVar.f556l = 1;
                            gVar.f550f = activity;
                            gVar.a(true);
                            if (Build.VERSION.SDK_INT >= 26) {
                                gVar.I = "Smittestopp Notification Channel";
                            }
                            Notification a2 = gVar.a();
                            g.a((Object) a2, "builder.build()");
                            notificationManager.notify(13, a2);
                            CoronaApp coronaApp3 = CoronaApp.z;
                            if (coronaApp3 != null) {
                                coronaApp3.y = true;
                            }
                        }
                        h();
                        g();
                        stopSelf();
                    } else {
                        throw new h.e("null cannot be cast to non-null type android.app.NotificationManager");
                    }
                }
            } else {
                String f2 = a0.f(this);
                if (true ^ h.o.g.b(f2)) {
                    Application application = getApplication();
                    g.a((Object) application, "this.application");
                    new j.b.a.h(application).a(f2, new j.b.a.g());
                }
            }
            return false;
        } else if (a0.a() > this.E + ((long) (this.F * 60 * 60))) {
            return true;
        } else {
            return false;
        }
    }

    public IBinder onBind(Intent intent) {
        this.A = true;
        c();
        stopForeground(true);
        return this.z;
    }

    public void onCreate() {
        l.a.a.f2455d.c("onCreate", new Object[0]);
        this.K = MeasurementDatabase.f2458k.a(this);
        Application application = getApplication();
        g.a((Object) application, "this.application");
        j.b.a.h hVar = new j.b.a.h(application);
        this.M = hVar;
        if (hVar != null) {
            hVar.a();
            e.c.a.a.e.a a2 = e.c.a.a.e.c.a(this);
            g.a((Object) a2, "LocationServices.getFuse…ationProviderClient(this)");
            this.D = a2;
            this.C = new b(this);
            if (Build.VERSION.SDK_INT >= 26) {
                NotificationChannel notificationChannel = new NotificationChannel("Smittestopp Notification Channel", "Smittestopp", 3);
                NotificationChannel notificationChannel2 = new NotificationChannel("Smittestopp Reminders", "Smittestopp Reminders", 3);
                Object systemService = getSystemService("notification");
                if (systemService != null) {
                    NotificationManager notificationManager = (NotificationManager) systemService;
                    notificationManager.createNotificationChannel(notificationChannel);
                    notificationManager.createNotificationChannel(notificationChannel2);
                } else {
                    throw new h.e("null cannot be cast to non-null type android.app.NotificationManager");
                }
            }
            this.G = new j.b.a.d0.a();
            registerReceiver(this.G, new IntentFilter("android.location.PROVIDERS_CHANGED"));
            this.N = new j.b.a.b0.c();
            IntentFilter intentFilter = new IntentFilter();
            intentFilter.addAction("android.bluetooth.adapter.action.STATE_CHANGED");
            intentFilter.addAction("android.bluetooth.adapter.action.CONNECTION_STATE_CHANGED");
            intentFilter.addAction("android.bluetooth.device.action.ACL_CONNECTED");
            intentFilter.addAction("android.bluetooth.device.action.ACL_DISCONNECTED");
            registerReceiver(this.N, intentFilter);
            k.d.a.c.b().b(this);
            return;
        }
        g.b("mDevice");
        throw null;
    }

    public void onDestroy() {
        stopForeground(true);
        if (this.y) {
            h();
        }
        if (this.O) {
            g();
        }
        this.J = null;
        j.b.a.h hVar = this.M;
        if (hVar == null) {
            g.b("mDevice");
            throw null;
        } else if (hVar != null) {
            try {
                DeviceClient deviceClient = hVar.b;
                if (deviceClient != null) {
                    deviceClient.closeNow();
                }
                hVar.b = null;
                hVar.f1509c = false;
                hVar.f1510d = false;
                hVar.f1511e = false;
            } catch (IOException e2) {
                LinkedHashMap linkedHashMap = new LinkedHashMap();
                linkedHashMap.put("where", "IoTHubDevice::close");
                Crashes.trackError(e2, linkedHashMap, (Iterable<ErrorAttachmentLog>) null);
                l.a.a.f2455d.a(e2);
            }
            f fVar = this.L;
            if (fVar != null && fVar.a()) {
                try {
                    f fVar2 = this.L;
                    if (fVar2 != null) {
                        fVar2.cancel(true);
                    }
                } catch (Exception e3) {
                    LinkedHashMap linkedHashMap2 = new LinkedHashMap();
                    linkedHashMap2.put("where", "DataCollector::onDestroy");
                    Crashes.trackError(e3, linkedHashMap2, (Iterable<ErrorAttachmentLog>) null);
                }
            }
            this.L = null;
            v vVar = this.x;
            if (vVar != null) {
                vVar.a();
            }
            j.b.a.d0.a aVar = this.G;
            if (aVar != null) {
                unregisterReceiver(aVar);
            }
            unregisterReceiver(this.N);
            k.d.a.c.b().c(this);
            super.onDestroy();
        } else {
            throw null;
        }
    }

    @m(threadMode = ThreadMode.MAIN)
    public final void onEvent(j.b.a.c0.a aVar) {
        if (aVar != null) {
            boolean z2 = false;
            l.a.a.f2455d.a(aVar.toString(), new Object[0]);
            if (this.O) {
                g();
            }
            if (aVar.a && this.I == null && a0.c(this) && !this.A) {
                int i2 = R$string.bluetooth_reminder;
                if (this.H != null) {
                    i2 = R$string.location_gps_reminder;
                    z2 = true;
                    c();
                }
                Notification a2 = a(i2);
                this.I = a2;
                if (z2) {
                    this.H = a2;
                }
                Object systemService = getSystemService("notification");
                if (systemService != null) {
                    ((NotificationManager) systemService).notify(15, this.I);
                    return;
                }
                throw new h.e("null cannot be cast to non-null type android.app.NotificationManager");
            }
            return;
        }
        g.a(EventLog.TYPE);
        throw null;
    }

    public void onRebind(Intent intent) {
        this.A = true;
        c();
        stopForeground(true);
        super.onRebind(intent);
    }

    public int onStartCommand(Intent intent, int i2, int i3) {
        l.a.a.f2455d.c("onStartCommand", new Object[0]);
        if (intent != null && intent.getBooleanExtra("from-service", false)) {
            a0.a((Context) this, false);
            a0.b(this, false);
            h();
            g();
            stopSelf();
        }
        if (intent != null && intent.hasExtra("service-command")) {
            int intExtra = intent.getIntExtra("service-command", -1);
            if (intExtra == 0) {
                l.a.a.f2455d.c("stop location updates", new Object[0]);
                h();
            } else if (intExtra == 1) {
                l.a.a.f2455d.c("start location updates", new Object[0]);
                e();
            } else if (intExtra == 2) {
                l.a.a.f2455d.c("start bt updates", new Object[0]);
                d();
            } else if (intExtra == 3) {
                l.a.a.f2455d.c("stop bt updates", new Object[0]);
                g();
            } else if (intExtra == 4) {
                l.a.a.f2455d.c("start all updates", new Object[0]);
                if (a0.d(this)) {
                    e();
                }
                if (a0.c(this)) {
                    d();
                }
                if (intent.getBooleanExtra("auto_start", false)) {
                    startForeground(12, a());
                }
            } else if (intExtra == 5) {
                l.a.a.f2455d.c("stop all updates", new Object[0]);
                h();
                g();
                stopSelf();
            }
        }
        return 2;
    }

    public boolean onUnbind(Intent intent) {
        this.A = false;
        if (!b()) {
            return true;
        }
        startForeground(12, a());
        return true;
    }

    public final boolean b() {
        return this.y || this.O;
    }

    @m(threadMode = ThreadMode.MAIN)
    public final void onEvent(j.b.a.c0.d dVar) {
        if (dVar != null) {
            boolean z2 = false;
            l.a.a.f2455d.a(dVar.toString(), new Object[0]);
            if (this.y) {
                h();
            }
            if (dVar.a && this.H == null && a0.d(this) && !this.A) {
                int i2 = R$string.location_reminder;
                if (this.I != null) {
                    i2 = R$string.location_gps_reminder;
                    z2 = true;
                    c();
                }
                Notification a2 = a(i2);
                this.H = a2;
                if (z2) {
                    this.I = a2;
                }
                Object systemService = getSystemService("notification");
                if (systemService != null) {
                    ((NotificationManager) systemService).notify(14, this.H);
                    return;
                }
                throw new h.e("null cannot be cast to non-null type android.app.NotificationManager");
            }
            return;
        }
        g.a(EventLog.TYPE);
        throw null;
    }

    public static final void a(Context context) {
        if (context != null) {
            Intent intent = new Intent(context, DataCollectorService.class);
            intent.putExtra("service-command", 2);
            context.startService(intent);
            return;
        }
        g.a(PublicClientApplication.NONNULL_CONSTANTS.CONTEXT);
        throw null;
    }

    public final Notification a() {
        Intent intent = new Intent(this, DataCollectorService.class);
        intent.putExtra("from-service", true);
        PendingIntent service = PendingIntent.getService(this, 0, intent, BlobConstants.DEFAULT_SINGLE_BLOB_PUT_THRESHOLD_IN_BYTES);
        Intent intent2 = new Intent(this, MainActivity.class);
        intent2.setFlags(268468224);
        PendingIntent activity = PendingIntent.getActivity(this, 0, intent2, 0);
        d.i.a.g gVar = new d.i.a.g(this);
        gVar.b(getString(R$string.persistent_notification_title));
        gVar.O.icon = R$drawable.ic_stat_name;
        gVar.a((CharSequence) getString(R$string.notification_description));
        gVar.f556l = 1;
        gVar.a(R$drawable.ic_stop_red, getString(R$string.stop), service);
        gVar.a(R$drawable.ic_settings_green, getString(R$string.open), activity);
        if (Build.VERSION.SDK_INT >= 26) {
            gVar.I = "Smittestopp Notification Channel";
        }
        Notification a2 = gVar.a();
        g.a((Object) a2, "builder.build()");
        return a2;
    }

    /* JADX INFO: finally extract failed */
    public static final /* synthetic */ void a(DataCollectorService dataCollectorService, Location location) {
        double d2;
        double d3;
        double d4;
        DataCollectorService dataCollectorService2 = dataCollectorService;
        if (dataCollectorService2 != null) {
            l.a.a.f2455d.c('(' + location.getLatitude() + ", " + location.getLongitude() + "), accuracy: " + location.getAccuracy(), new Object[0]);
            long time = location.getTime() / ((long) 1000);
            double latitude = location.getLatitude();
            double longitude = location.getLongitude();
            double accuracy = (double) location.getAccuracy();
            double altitude = location.getAltitude();
            double speed = (double) location.getSpeed();
            if (Build.VERSION.SDK_INT >= 26) {
                d3 = latitude;
                d4 = (double) location.getVerticalAccuracyMeters();
                d2 = (double) location.getSpeedAccuracyMetersPerSecond();
            } else {
                d3 = latitude;
                d4 = -1.0d;
                d2 = -1.0d;
            }
            MeasurementDatabase measurementDatabase = dataCollectorService2.K;
            if (measurementDatabase != null) {
                s i2 = measurementDatabase.i();
                r[] rVarArr = {new r(time, Double.valueOf(d3), Double.valueOf(longitude), Double.valueOf(accuracy), Double.valueOf(altitude), Double.valueOf(d4), Double.valueOf(speed), Double.valueOf(d2), false)};
                t tVar = (t) i2;
                tVar.a.b();
                tVar.a.c();
                try {
                    tVar.b.a(rVarArr);
                    tVar.a.g();
                    tVar.a.d();
                    if (dataCollectorService.i()) {
                        dataCollectorService.f();
                    }
                } catch (Throwable th) {
                    tVar.a.d();
                    throw th;
                }
            } else {
                g.b("mDatabase");
                throw null;
            }
        } else {
            throw null;
        }
    }

    public static final /* synthetic */ void a(DataCollectorService dataCollectorService, String str, List list) {
        if (dataCollectorService != null) {
            int hashCode = str.hashCode();
            int i2 = 1;
            if (hashCode != 102570) {
                if (hashCode == 1968882350 && str.equals("bluetooth")) {
                    MeasurementDatabase measurementDatabase = dataCollectorService.K;
                    if (measurementDatabase != null) {
                        j.b.a.c cVar = (j.b.a.c) measurementDatabase.h();
                        cVar.a.b();
                        StringBuilder sb = new StringBuilder();
                        sb.append("UPDATE bluetoothcontact SET isUploaded = 1 WHERE id in (");
                        d.u.m.c.a(sb, list.size());
                        sb.append(")");
                        d.w.a.f.f a2 = cVar.a.a(sb.toString());
                        Iterator it = list.iterator();
                        while (it.hasNext()) {
                            Integer num = (Integer) it.next();
                            if (num == null) {
                                a2.x.bindNull(i2);
                            } else {
                                a2.x.bindLong(i2, (long) num.intValue());
                            }
                            i2++;
                        }
                        cVar.a.c();
                        try {
                            a2.a();
                            cVar.a.g();
                            return;
                        } finally {
                            cVar.a.d();
                        }
                    } else {
                        g.b("mDatabase");
                        throw null;
                    }
                }
            } else if (str.equals("gps")) {
                MeasurementDatabase measurementDatabase2 = dataCollectorService.K;
                if (measurementDatabase2 != null) {
                    t tVar = (t) measurementDatabase2.i();
                    tVar.a.b();
                    StringBuilder sb2 = new StringBuilder();
                    sb2.append("UPDATE measurement SET isUploaded = 1 WHERE id in (");
                    d.u.m.c.a(sb2, list.size());
                    sb2.append(")");
                    d.w.a.f.f a3 = tVar.a.a(sb2.toString());
                    Iterator it2 = list.iterator();
                    while (it2.hasNext()) {
                        Integer num2 = (Integer) it2.next();
                        if (num2 == null) {
                            a3.x.bindNull(i2);
                        } else {
                            a3.x.bindLong(i2, (long) num2.intValue());
                        }
                        i2++;
                    }
                    tVar.a.c();
                    try {
                        a3.a();
                        tVar.a.g();
                        return;
                    } finally {
                        tVar.a.d();
                    }
                } else {
                    g.b("mDatabase");
                    throw null;
                }
            }
            EventProperties eventProperties = new EventProperties();
            eventProperties.set("eventType", str);
            Analytics.trackEvent("Mark upload failed", eventProperties);
            return;
        }
        throw null;
    }

    /* JADX INFO: finally extract failed */
    public void a(String str, int i2, int i3, long j2) {
        if (str != null) {
            StringBuilder sb = new StringBuilder();
            sb.append("found connection to ");
            sb.append(str);
            sb.append(", signal strength ");
            int i4 = i2;
            sb.append(i2);
            l.a.a.f2455d.c(sb.toString(), new Object[0]);
            long j3 = j2 / ((long) 1000);
            MeasurementDatabase measurementDatabase = this.K;
            if (measurementDatabase != null) {
                j.b.a.b h2 = measurementDatabase.h();
                j.b.a.a[] aVarArr = {new j.b.a.a(j3, str, i2, i3, false)};
                j.b.a.c cVar = (j.b.a.c) h2;
                cVar.a.b();
                cVar.a.c();
                try {
                    cVar.b.a(aVarArr);
                    cVar.a.g();
                    cVar.a.d();
                    if (i()) {
                        f();
                    }
                } catch (Throwable th) {
                    cVar.a.d();
                    throw th;
                }
            } else {
                g.b("mDatabase");
                throw null;
            }
        } else {
            g.a("deviceId");
            throw null;
        }
    }

    public static final /* synthetic */ void a(DataCollectorService dataCollectorService) {
        if (dataCollectorService != null) {
            PendingIntent activity = PendingIntent.getActivity(dataCollectorService, 0, new Intent(dataCollectorService, SplashActivity.class), 0);
            dataCollectorService.h();
            dataCollectorService.g();
            a0.b(dataCollectorService);
            MeasurementDatabase measurementDatabase = dataCollectorService.K;
            if (measurementDatabase != null) {
                ((j.b.a.c) measurementDatabase.h()).a();
                MeasurementDatabase measurementDatabase2 = dataCollectorService.K;
                if (measurementDatabase2 != null) {
                    ((t) measurementDatabase2.i()).a();
                    d.i.a.g gVar = new d.i.a.g(dataCollectorService);
                    gVar.b(dataCollectorService.getString(R$string.data_deleted_notification));
                    gVar.O.icon = R$drawable.ic_stat_name;
                    gVar.a((CharSequence) dataCollectorService.getString(R$string.data_deleted_action));
                    gVar.f556l = 1;
                    gVar.f550f = activity;
                    gVar.a(true);
                    if (Build.VERSION.SDK_INT >= 26) {
                        gVar.I = "Smittestopp Reminders";
                    }
                    Notification a2 = gVar.a();
                    Object systemService = dataCollectorService.getSystemService("notification");
                    if (systemService != null) {
                        ((NotificationManager) systemService).notify(17, a2);
                        v vVar = dataCollectorService.x;
                        if (vVar != null) {
                            vVar.f();
                        }
                        dataCollectorService.stopSelf();
                        return;
                    }
                    throw new h.e("null cannot be cast to non-null type android.app.NotificationManager");
                }
                g.b("mDatabase");
                throw null;
            }
            g.b("mDatabase");
            throw null;
        }
        throw null;
    }

    public final Notification a(int i2) {
        PendingIntent activity = PendingIntent.getActivity(this, 0, new Intent(this, SplashActivity.class), 0);
        d.i.a.g gVar = new d.i.a.g(this);
        gVar.b(getString(i2));
        gVar.O.icon = R$drawable.ic_stat_name;
        gVar.a((CharSequence) getString(R$string.reminder_description));
        gVar.f556l = 1;
        gVar.f550f = activity;
        gVar.a(true);
        if (Build.VERSION.SDK_INT >= 26) {
            gVar.I = "Smittestopp Reminders";
        }
        Notification a2 = gVar.a();
        g.a((Object) a2, "notification.build()");
        return a2;
    }
}
