package e.c.a.a.b;

import android.annotation.SuppressLint;
import android.annotation.TargetApi;
import android.app.Activity;
import android.app.AlertDialog;
import android.app.FragmentManager;
import android.app.Notification;
import android.app.NotificationChannel;
import android.app.NotificationManager;
import android.app.PendingIntent;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.content.res.Resources;
import android.os.Looper;
import android.os.Message;
import android.util.Log;
import android.util.TypedValue;
import com.google.android.gms.base.R$drawable;
import com.google.android.gms.base.R$string;
import com.google.android.gms.common.SupportErrorDialogFragment;
import com.microsoft.azure.storage.blob.BlobConstants;
import d.b.a.r;
import d.i.a.f;
import d.i.a.g;
import d.i.a.h;
import d.m.a.p;
import e.c.a.a.b.j.e;
import e.c.a.a.b.j.u;
import e.c.a.a.d.a.c;

public class d extends e {
    public static final Object b = new Object();

    /* renamed from: c  reason: collision with root package name */
    public static final d f1123c = new d();

    @SuppressLint({"HandlerLeak"})
    public class a extends c {
        public final Context a;

        /* JADX INFO: super call moved to the top of the method (can break code semantics) */
        public a(Context context) {
            super(Looper.myLooper() == null ? Looper.getMainLooper() : Looper.myLooper());
            this.a = context.getApplicationContext();
        }

        public final void handleMessage(Message message) {
            int i2 = message.what;
            if (i2 != 1) {
                StringBuilder sb = new StringBuilder(50);
                sb.append("Don't know how to handle this message: ");
                sb.append(i2);
                Log.w("GoogleApiAvailability", sb.toString());
                return;
            }
            int a2 = d.this.a(this.a, e.a);
            PendingIntent pendingIntent = null;
            if (d.this == null) {
                throw null;
            } else if (g.b(a2)) {
                d dVar = d.this;
                Context context = this.a;
                Intent a3 = dVar.a(context, a2, "n");
                if (a3 != null) {
                    pendingIntent = PendingIntent.getActivity(context, 0, a3, BlobConstants.DEFAULT_SINGLE_BLOB_PUT_THRESHOLD_IN_BYTES);
                }
                dVar.a(context, a2, pendingIntent);
            }
        }
    }

    public final String a() {
        synchronized (b) {
        }
        return null;
    }

    public int a(Context context, int i2) {
        return super.a(context, i2);
    }

    public Intent a(Context context, int i2, String str) {
        return super.a(context, i2, str);
    }

    public boolean a(Activity activity, int i2, int i3, DialogInterface.OnCancelListener onCancelListener) {
        AlertDialog alertDialog;
        String str;
        u uVar = new u(super.a(activity, i2, "d"), activity, i3);
        if (i2 == 0) {
            alertDialog = null;
        } else {
            TypedValue typedValue = new TypedValue();
            activity.getTheme().resolveAttribute(16843529, typedValue, true);
            AlertDialog.Builder builder = "Theme.Dialog.Alert".equals(activity.getResources().getResourceEntryName(typedValue.resourceId)) ? new AlertDialog.Builder(activity, 5) : null;
            if (builder == null) {
                builder = new AlertDialog.Builder(activity);
            }
            builder.setMessage(e.a((Context) activity, i2));
            if (onCancelListener != null) {
                builder.setOnCancelListener(onCancelListener);
            }
            Resources resources = activity.getResources();
            if (i2 == 1) {
                str = resources.getString(R$string.common_google_play_services_install_button);
            } else if (i2 == 2) {
                str = resources.getString(R$string.common_google_play_services_update_button);
            } else if (i2 != 3) {
                str = resources.getString(17039370);
            } else {
                str = resources.getString(R$string.common_google_play_services_enable_button);
            }
            if (str != null) {
                builder.setPositiveButton(str, uVar);
            }
            String b2 = e.b(activity, i2);
            if (b2 != null) {
                builder.setTitle(b2);
            }
            alertDialog = builder.create();
        }
        if (alertDialog == null) {
            return false;
        }
        if (activity instanceof d.m.a.c) {
            p supportFragmentManager = ((d.m.a.c) activity).getSupportFragmentManager();
            SupportErrorDialogFragment supportErrorDialogFragment = new SupportErrorDialogFragment();
            r.b(alertDialog, (Object) "Cannot display null dialog");
            alertDialog.setOnCancelListener((DialogInterface.OnCancelListener) null);
            alertDialog.setOnDismissListener((DialogInterface.OnDismissListener) null);
            supportErrorDialogFragment.K = alertDialog;
            if (onCancelListener != null) {
                supportErrorDialogFragment.L = onCancelListener;
            }
            supportErrorDialogFragment.a(supportFragmentManager, "GooglePlayServicesErrorDialog");
        } else {
            FragmentManager fragmentManager = activity.getFragmentManager();
            b bVar = new b();
            r.b(alertDialog, (Object) "Cannot display null dialog");
            alertDialog.setOnCancelListener((DialogInterface.OnCancelListener) null);
            alertDialog.setOnDismissListener((DialogInterface.OnDismissListener) null);
            bVar.x = alertDialog;
            if (onCancelListener != null) {
                bVar.y = onCancelListener;
            }
            bVar.show(fragmentManager, "GooglePlayServicesErrorDialog");
        }
        return true;
    }

    @TargetApi(20)
    public final void a(Context context, int i2, PendingIntent pendingIntent) {
        String str;
        String str2;
        int i3;
        if (i2 == 18) {
            new a(context).sendEmptyMessageDelayed(1, 120000);
        } else if (pendingIntent != null) {
            if (i2 == 6) {
                str = e.a(context, "common_google_play_services_resolution_required_title");
            } else {
                str = e.b(context, i2);
            }
            if (str == null) {
                str = context.getResources().getString(R$string.common_google_play_services_notification_ticker);
            }
            if (i2 == 6) {
                str2 = e.a(context, "common_google_play_services_resolution_required_text", e.a(context));
            } else {
                str2 = e.a(context, i2);
            }
            Resources resources = context.getResources();
            NotificationManager notificationManager = (NotificationManager) context.getSystemService("notification");
            g gVar = new g(context);
            gVar.x = true;
            gVar.a(true);
            gVar.b(str);
            f fVar = new f();
            fVar.f546c = g.c(str2);
            if (gVar.o != fVar) {
                gVar.o = fVar;
                if (fVar.a != gVar) {
                    fVar.a = gVar;
                    gVar.a((h) fVar);
                }
            }
            if (e.c.a.a.b.l.c.a(context)) {
                gVar.O.icon = context.getApplicationInfo().icon;
                gVar.f556l = 2;
                if (e.c.a.a.b.l.c.b(context)) {
                    gVar.a(R$drawable.common_full_open_on_phone, resources.getString(R$string.common_open_on_phone), pendingIntent);
                } else {
                    gVar.f550f = pendingIntent;
                }
            } else {
                gVar.O.icon = 17301642;
                String string = resources.getString(R$string.common_google_play_services_notification_ticker);
                gVar.O.tickerText = g.c(string);
                gVar.O.when = System.currentTimeMillis();
                gVar.f550f = pendingIntent;
                gVar.a((CharSequence) str2);
            }
            if (e.c.a.a.b.l.c.c()) {
                if (e.c.a.a.b.l.c.c()) {
                    a();
                    NotificationChannel notificationChannel = notificationManager.getNotificationChannel("com.google.android.gms.availability");
                    String b2 = e.b(context);
                    if (notificationChannel == null) {
                        notificationManager.createNotificationChannel(new NotificationChannel("com.google.android.gms.availability", b2, 4));
                    } else if (!b2.contentEquals(notificationChannel.getName())) {
                        notificationChannel.setName(b2);
                        notificationManager.createNotificationChannel(notificationChannel);
                    }
                    gVar.I = "com.google.android.gms.availability";
                } else {
                    throw new IllegalStateException();
                }
            }
            Notification a2 = gVar.a();
            if (i2 == 1 || i2 == 2 || i2 == 3) {
                i3 = 10436;
                g.b.set(false);
            } else {
                i3 = 39789;
            }
            notificationManager.notify(i3, a2);
        } else if (i2 == 6) {
            Log.w("GoogleApiAvailability", "Missing resolution for ConnectionResult.RESOLUTION_REQUIRED. Call GoogleApiAvailability#showErrorNotification(Context, ConnectionResult) instead.");
        }
    }
}
