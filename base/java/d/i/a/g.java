package d.i.a;

import android.app.Notification;
import android.app.PendingIntent;
import android.app.RemoteInput;
import android.content.Context;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.drawable.Icon;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.text.TextUtils;
import android.widget.RemoteViews;
import androidx.core.graphics.drawable.IconCompat;
import com.microsoft.azure.storage.Constants;
import com.microsoft.azure.storage.file.FileConstants;
import java.util.ArrayList;
import java.util.Iterator;

public class g {
    public String A;
    public Bundle B;
    public int C = 0;
    public int D = 0;
    public Notification E;
    public RemoteViews F;
    public RemoteViews G;
    public RemoteViews H;
    public String I;
    public int J = 0;
    public String K;
    public long L;
    public int M = 0;
    public boolean N;
    public Notification O;
    @Deprecated
    public ArrayList<String> P;
    public Context a;
    public ArrayList<e> b = new ArrayList<>();

    /* renamed from: c  reason: collision with root package name */
    public ArrayList<e> f547c = new ArrayList<>();

    /* renamed from: d  reason: collision with root package name */
    public CharSequence f548d;

    /* renamed from: e  reason: collision with root package name */
    public CharSequence f549e;

    /* renamed from: f  reason: collision with root package name */
    public PendingIntent f550f;

    /* renamed from: g  reason: collision with root package name */
    public PendingIntent f551g;

    /* renamed from: h  reason: collision with root package name */
    public RemoteViews f552h;

    /* renamed from: i  reason: collision with root package name */
    public Bitmap f553i;

    /* renamed from: j  reason: collision with root package name */
    public CharSequence f554j;

    /* renamed from: k  reason: collision with root package name */
    public int f555k;

    /* renamed from: l  reason: collision with root package name */
    public int f556l;
    public boolean m = true;
    public boolean n;
    public h o;
    public CharSequence p;
    public CharSequence[] q;
    public int r;
    public int s;
    public boolean t;
    public String u;
    public boolean v;
    public String w;
    public boolean x = false;
    public boolean y;
    public boolean z;

    @Deprecated
    public g(Context context) {
        Notification notification = new Notification();
        this.O = notification;
        this.a = context;
        this.I = null;
        notification.when = System.currentTimeMillis();
        this.O.audioStreamType = -1;
        this.f556l = 0;
        this.P = new ArrayList<>();
        this.N = true;
    }

    public static CharSequence c(CharSequence charSequence) {
        return (charSequence != null && charSequence.length() > 5120) ? charSequence.subSequence(0, FileConstants.MAX_SHARE_QUOTA) : charSequence;
    }

    public Notification a() {
        Notification.Builder builder;
        Notification notification;
        Notification.Action.Builder builder2;
        Bundle bundle;
        Icon icon;
        int i2;
        new ArrayList();
        Bundle bundle2 = new Bundle();
        if (Build.VERSION.SDK_INT >= 26) {
            builder = new Notification.Builder(this.a, this.I);
        } else {
            builder = new Notification.Builder(this.a);
        }
        Notification notification2 = this.O;
        builder.setWhen(notification2.when).setSmallIcon(notification2.icon, notification2.iconLevel).setContent(notification2.contentView).setTicker(notification2.tickerText, this.f552h).setVibrate(notification2.vibrate).setLights(notification2.ledARGB, notification2.ledOnMS, notification2.ledOffMS).setOngoing((notification2.flags & 2) != 0).setOnlyAlertOnce((notification2.flags & 8) != 0).setAutoCancel((notification2.flags & 16) != 0).setDefaults(notification2.defaults).setContentTitle(this.f548d).setContentText(this.f549e).setContentInfo(this.f554j).setContentIntent(this.f550f).setDeleteIntent(notification2.deleteIntent).setFullScreenIntent(this.f551g, (notification2.flags & 128) != 0).setLargeIcon(this.f553i).setNumber(this.f555k).setProgress(this.r, this.s, this.t);
        builder.setSubText(this.p).setUsesChronometer(this.n).setPriority(this.f556l);
        Iterator<e> it = this.b.iterator();
        while (it.hasNext()) {
            e next = it.next();
            if (Build.VERSION.SDK_INT >= 23) {
                if (next.b == null && (i2 = next.f543i) != 0) {
                    next.b = IconCompat.a((Resources) null, "", i2);
                }
                IconCompat iconCompat = next.b;
                if (iconCompat == null) {
                    icon = null;
                } else {
                    icon = iconCompat.c();
                }
                builder2 = new Notification.Action.Builder(icon, next.f544j, next.f545k);
            } else {
                builder2 = new Notification.Action.Builder(next.f543i, next.f544j, next.f545k);
            }
            j[] jVarArr = next.f537c;
            if (jVarArr != null) {
                RemoteInput[] remoteInputArr = new RemoteInput[jVarArr.length];
                if (jVarArr.length <= 0) {
                    for (RemoteInput addRemoteInput : remoteInputArr) {
                        builder2.addRemoteInput(addRemoteInput);
                    }
                } else {
                    j jVar = jVarArr[0];
                    throw null;
                }
            }
            if (next.a != null) {
                bundle = new Bundle(next.a);
            } else {
                bundle = new Bundle();
            }
            bundle.putBoolean("android.support.allowGeneratedReplies", next.f539e);
            if (Build.VERSION.SDK_INT >= 24) {
                builder2.setAllowGeneratedReplies(next.f539e);
            }
            bundle.putInt("android.support.action.semanticAction", next.f541g);
            if (Build.VERSION.SDK_INT >= 28) {
                builder2.setSemanticAction(next.f541g);
            }
            if (Build.VERSION.SDK_INT >= 29) {
                builder2.setContextual(next.f542h);
            }
            bundle.putBoolean("android.support.action.showsUserInterface", next.f540f);
            builder2.addExtras(bundle);
            builder.addAction(builder2.build());
        }
        Bundle bundle3 = this.B;
        if (bundle3 != null) {
            bundle2.putAll(bundle3);
        }
        RemoteViews remoteViews = this.F;
        RemoteViews remoteViews2 = this.G;
        builder.setShowWhen(this.m);
        builder.setLocalOnly(this.x).setGroup(this.u).setGroupSummary(this.v).setSortKey(this.w);
        int i3 = this.M;
        builder.setCategory(this.A).setColor(this.C).setVisibility(this.D).setPublicVersion(this.E).setSound(notification2.sound, notification2.audioAttributes);
        Iterator<String> it2 = this.P.iterator();
        while (it2.hasNext()) {
            builder.addPerson(it2.next());
        }
        RemoteViews remoteViews3 = this.H;
        if (this.f547c.size() > 0) {
            if (this.B == null) {
                this.B = new Bundle();
            }
            Bundle bundle4 = this.B.getBundle("android.car.EXTENSIONS");
            if (bundle4 == null) {
                bundle4 = new Bundle();
            }
            Bundle bundle5 = new Bundle();
            for (int i4 = 0; i4 < this.f547c.size(); i4++) {
                bundle5.putBundle(Integer.toString(i4), i.a(this.f547c.get(i4)));
            }
            bundle4.putBundle("invisible_actions", bundle5);
            if (this.B == null) {
                this.B = new Bundle();
            }
            this.B.putBundle("android.car.EXTENSIONS", bundle4);
            bundle2.putBundle("android.car.EXTENSIONS", bundle4);
        }
        if (Build.VERSION.SDK_INT >= 24) {
            builder.setExtras(this.B).setRemoteInputHistory(this.q);
            RemoteViews remoteViews4 = this.F;
            if (remoteViews4 != null) {
                builder.setCustomContentView(remoteViews4);
            }
            RemoteViews remoteViews5 = this.G;
            if (remoteViews5 != null) {
                builder.setCustomBigContentView(remoteViews5);
            }
            RemoteViews remoteViews6 = this.H;
            if (remoteViews6 != null) {
                builder.setCustomHeadsUpContentView(remoteViews6);
            }
        }
        if (Build.VERSION.SDK_INT >= 26) {
            builder.setBadgeIconType(this.J).setShortcutId(this.K).setTimeoutAfter(this.L).setGroupAlertBehavior(this.M);
            if (this.z) {
                builder.setColorized(this.y);
            }
            if (!TextUtils.isEmpty(this.I)) {
                builder.setSound((Uri) null).setDefaults(0).setLights(0, 0, 0).setVibrate((long[]) null);
            }
        }
        if (Build.VERSION.SDK_INT >= 29) {
            builder.setAllowSystemGeneratedContextualActions(this.N);
            builder.setBubbleMetadata((Notification.BubbleMetadata) null);
        }
        h hVar = this.o;
        if (hVar != null) {
            f fVar = (f) hVar;
            Notification.BigTextStyle bigText = new Notification.BigTextStyle(builder).setBigContentTitle((CharSequence) null).bigText(fVar.f546c);
            if (fVar.b) {
                bigText.setSummaryText((CharSequence) null);
            }
        }
        int i5 = Build.VERSION.SDK_INT;
        if (i5 >= 26) {
            notification = builder.build();
        } else if (i5 >= 24) {
            notification = builder.build();
            if (i3 != 0) {
                if (!(notification.getGroup() == null || (notification.flags & Constants.PAGE_SIZE) == 0 || i3 != 2)) {
                    notification.sound = null;
                    notification.vibrate = null;
                    int i6 = notification.defaults & -2;
                    notification.defaults = i6;
                    notification.defaults = i6 & -3;
                }
                if (notification.getGroup() != null && (notification.flags & Constants.PAGE_SIZE) == 0 && i3 == 1) {
                    notification.sound = null;
                    notification.vibrate = null;
                    int i7 = notification.defaults & -2;
                    notification.defaults = i7;
                    notification.defaults = i7 & -3;
                }
            }
        } else {
            builder.setExtras(bundle2);
            notification = builder.build();
            if (remoteViews != null) {
                notification.contentView = remoteViews;
            }
            if (remoteViews2 != null) {
                notification.bigContentView = remoteViews2;
            }
            if (remoteViews3 != null) {
                notification.headsUpContentView = remoteViews3;
            }
            if (i3 != 0) {
                if (!(notification.getGroup() == null || (notification.flags & Constants.PAGE_SIZE) == 0 || i3 != 2)) {
                    notification.sound = null;
                    notification.vibrate = null;
                    int i8 = notification.defaults & -2;
                    notification.defaults = i8;
                    notification.defaults = i8 & -3;
                }
                if (notification.getGroup() != null && (notification.flags & Constants.PAGE_SIZE) == 0 && i3 == 1) {
                    notification.sound = null;
                    notification.vibrate = null;
                    int i9 = notification.defaults & -2;
                    notification.defaults = i9;
                    notification.defaults = i9 & -3;
                }
            }
        }
        RemoteViews remoteViews7 = this.F;
        if (remoteViews7 != null) {
            notification.contentView = remoteViews7;
        }
        if (hVar == null || this.o != null) {
            if (hVar != null) {
                Bundle bundle6 = notification.extras;
            }
            return notification;
        }
        throw null;
    }

    public g b(CharSequence charSequence) {
        this.f548d = c(charSequence);
        return this;
    }

    public g a(CharSequence charSequence) {
        this.f549e = c(charSequence);
        return this;
    }

    public g a(boolean z2) {
        if (z2) {
            this.O.flags |= 16;
        } else {
            this.O.flags &= -17;
        }
        return this;
    }

    public g a(int i2, CharSequence charSequence, PendingIntent pendingIntent) {
        this.b.add(new e(i2, charSequence, pendingIntent));
        return this;
    }

    public g a(h hVar) {
        if (this.o != hVar) {
            this.o = hVar;
            if (!(hVar == null || hVar.a == this)) {
                hVar.a = this;
                a(hVar);
            }
        }
        return this;
    }
}
