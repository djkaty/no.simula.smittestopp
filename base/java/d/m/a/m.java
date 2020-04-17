package d.m.a;

import android.app.Activity;
import android.content.Context;
import android.os.Handler;
import d.b.a.r;

public abstract class m<E> extends i {
    public final p A = new r();
    public final Activity x;
    public final Context y;
    public final Handler z;

    public m(c cVar) {
        Handler handler = new Handler();
        this.x = cVar;
        r.a(cVar, (Object) "context == null");
        this.y = cVar;
        r.a(handler, (Object) "handler == null");
        this.z = handler;
    }
}
