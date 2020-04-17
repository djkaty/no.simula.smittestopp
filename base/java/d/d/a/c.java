package d.d.a;

import android.content.Intent;
import android.os.Bundle;
import android.os.IBinder;
import java.util.ArrayList;

public final class c {
    public final Intent a;
    public final Bundle b;

    public static final class a {
        public final Intent a;
        public ArrayList<Bundle> b = null;

        /* renamed from: c  reason: collision with root package name */
        public Bundle f416c = null;

        /* renamed from: d  reason: collision with root package name */
        public ArrayList<Bundle> f417d = null;

        /* renamed from: e  reason: collision with root package name */
        public boolean f418e = true;

        public a(e eVar) {
            Intent intent = new Intent("android.intent.action.VIEW");
            this.a = intent;
            IBinder iBinder = null;
            if (eVar != null) {
                intent.setPackage(eVar.b.getPackageName());
            }
            Bundle bundle = new Bundle();
            bundle.putBinder("android.support.customtabs.extra.SESSION", eVar != null ? eVar.a.asBinder() : iBinder);
            this.a.putExtras(bundle);
        }

        public c a() {
            ArrayList<Bundle> arrayList = this.b;
            if (arrayList != null) {
                this.a.putParcelableArrayListExtra("android.support.customtabs.extra.MENU_ITEMS", arrayList);
            }
            ArrayList<Bundle> arrayList2 = this.f417d;
            if (arrayList2 != null) {
                this.a.putParcelableArrayListExtra("android.support.customtabs.extra.TOOLBAR_ITEMS", arrayList2);
            }
            this.a.putExtra("android.support.customtabs.extra.EXTRA_ENABLE_INSTANT_APPS", this.f418e);
            return new c(this.a, this.f416c);
        }
    }

    public c(Intent intent, Bundle bundle) {
        this.a = intent;
        this.b = bundle;
    }
}
