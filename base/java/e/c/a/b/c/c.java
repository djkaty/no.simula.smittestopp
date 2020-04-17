package e.c.a.b.c;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import androidx.appcompat.widget.ActionMenuView;
import com.google.android.material.bottomappbar.BottomAppBar;

public class c extends AnimatorListenerAdapter {
    public boolean a;
    public final /* synthetic */ ActionMenuView b;

    /* renamed from: c  reason: collision with root package name */
    public final /* synthetic */ int f1253c;

    /* renamed from: d  reason: collision with root package name */
    public final /* synthetic */ boolean f1254d;

    /* renamed from: e  reason: collision with root package name */
    public final /* synthetic */ BottomAppBar f1255e;

    public c(BottomAppBar bottomAppBar, ActionMenuView actionMenuView, int i2, boolean z) {
        this.f1255e = bottomAppBar;
        this.b = actionMenuView;
        this.f1253c = i2;
        this.f1254d = z;
    }

    public void onAnimationCancel(Animator animator) {
        this.a = true;
    }

    public void onAnimationEnd(Animator animator) {
        if (!this.a) {
            this.f1255e.a(this.b, this.f1253c, this.f1254d);
        }
    }
}
