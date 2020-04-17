package androidx.activity;

import android.annotation.SuppressLint;
import d.a.b;
import d.o.g;
import d.o.j;
import d.o.l;
import d.o.m;
import java.util.ArrayDeque;
import java.util.Iterator;

public final class OnBackPressedDispatcher {
    public final Runnable a;
    public final ArrayDeque<b> b = new ArrayDeque<>();

    public class LifecycleOnBackPressedCancellable implements j, d.a.a {
        public final g x;
        public final b y;
        public d.a.a z;

        public LifecycleOnBackPressedCancellable(g gVar, b bVar) {
            this.x = gVar;
            this.y = bVar;
            gVar.a(this);
        }

        public void a(l lVar, g.a aVar) {
            if (aVar == g.a.ON_START) {
                OnBackPressedDispatcher onBackPressedDispatcher = OnBackPressedDispatcher.this;
                b bVar = this.y;
                onBackPressedDispatcher.b.add(bVar);
                a aVar2 = new a(bVar);
                bVar.b.add(aVar2);
                this.z = aVar2;
            } else if (aVar == g.a.ON_STOP) {
                d.a.a aVar3 = this.z;
                if (aVar3 != null) {
                    aVar3.cancel();
                }
            } else if (aVar == g.a.ON_DESTROY) {
                cancel();
            }
        }

        public void cancel() {
            ((m) this.x).a.remove(this);
            this.y.b.remove(this);
            d.a.a aVar = this.z;
            if (aVar != null) {
                aVar.cancel();
                this.z = null;
            }
        }
    }

    public class a implements d.a.a {
        public final b x;

        public a(b bVar) {
            this.x = bVar;
        }

        public void cancel() {
            OnBackPressedDispatcher.this.b.remove(this.x);
            this.x.b.remove(this);
        }
    }

    public OnBackPressedDispatcher(Runnable runnable) {
        this.a = runnable;
    }

    @SuppressLint({"LambdaLast"})
    public void a(l lVar, b bVar) {
        g lifecycle = lVar.getLifecycle();
        if (((m) lifecycle).b != g.b.DESTROYED) {
            bVar.b.add(new LifecycleOnBackPressedCancellable(lifecycle, bVar));
        }
    }

    public void a() {
        Iterator<b> descendingIterator = this.b.descendingIterator();
        while (descendingIterator.hasNext()) {
            b next = descendingIterator.next();
            if (next.a) {
                next.a();
                return;
            }
        }
        Runnable runnable = this.a;
        if (runnable != null) {
            runnable.run();
        }
    }
}
