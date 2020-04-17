package d.m.a;

import android.view.View;
import android.view.ViewGroup;
import android.view.animation.Animation;
import androidx.fragment.app.Fragment;
import d.m.a.f0;
import d.m.a.p;

public final class e implements Animation.AnimationListener {
    public final /* synthetic */ ViewGroup a;
    public final /* synthetic */ Fragment b;

    /* renamed from: c  reason: collision with root package name */
    public final /* synthetic */ f0.a f645c;

    /* renamed from: d  reason: collision with root package name */
    public final /* synthetic */ d.i.e.a f646d;

    public class a implements Runnable {
        public a() {
        }

        public void run() {
            if (e.this.b.getAnimatingAway() != null) {
                e.this.b.setAnimatingAway((View) null);
                e eVar = e.this;
                ((p.b) eVar.f645c).a(eVar.b, eVar.f646d);
            }
        }
    }

    public e(ViewGroup viewGroup, Fragment fragment, f0.a aVar, d.i.e.a aVar2) {
        this.a = viewGroup;
        this.b = fragment;
        this.f645c = aVar;
        this.f646d = aVar2;
    }

    public void onAnimationEnd(Animation animation) {
        this.a.post(new a());
    }

    public void onAnimationRepeat(Animation animation) {
    }

    public void onAnimationStart(Animation animation) {
    }
}
