package d.i.a;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.os.Bundle;
import android.util.Log;
import d.b.a.r;
import java.util.ArrayList;
import java.util.Iterator;

public final class l implements Iterable<Intent> {
    public final ArrayList<Intent> x = new ArrayList<>();
    public final Context y;

    public interface a {
        Intent c();
    }

    public l(Context context) {
        this.y = context;
    }

    public l a(ComponentName componentName) {
        int size = this.x.size();
        try {
            Intent a2 = r.a(this.y, componentName);
            while (a2 != null) {
                this.x.add(size, a2);
                a2 = r.a(this.y, a2.getComponent());
            }
            return this;
        } catch (PackageManager.NameNotFoundException e2) {
            Log.e("TaskStackBuilder", "Bad ComponentName while traversing activity parent metadata");
            throw new IllegalArgumentException(e2);
        }
    }

    @Deprecated
    public Iterator<Intent> iterator() {
        return this.x.iterator();
    }

    public void a() {
        if (!this.x.isEmpty()) {
            ArrayList<Intent> arrayList = this.x;
            Intent[] intentArr = (Intent[]) arrayList.toArray(new Intent[arrayList.size()]);
            intentArr[0] = new Intent(intentArr[0]).addFlags(268484608);
            d.i.b.a.a(this.y, intentArr, (Bundle) null);
            return;
        }
        throw new IllegalStateException("No intents added to TaskStackBuilder; cannot startActivities");
    }
}
