package d.d.a;

import android.content.ComponentName;
import android.content.ServiceConnection;
import android.os.IBinder;
import c.a.a.b;

public abstract class d implements ServiceConnection {

    public class a extends b {
        public a(d dVar, b bVar, ComponentName componentName) {
            super(bVar, componentName);
        }
    }

    public abstract void onCustomTabsServiceConnected(ComponentName componentName, b bVar);

    public final void onServiceConnected(ComponentName componentName, IBinder iBinder) {
        onCustomTabsServiceConnected(componentName, new a(this, b.a.a(iBinder), componentName));
    }
}
