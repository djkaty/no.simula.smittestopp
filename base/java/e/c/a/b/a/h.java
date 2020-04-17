package e.c.a.b.a;

import android.animation.Animator;
import android.animation.TimeInterpolator;
import android.animation.ValueAnimator;
import e.a.a.a.a;

public class h {
    public long a = 0;
    public long b = 300;

    /* renamed from: c  reason: collision with root package name */
    public TimeInterpolator f1233c = null;

    /* renamed from: d  reason: collision with root package name */
    public int f1234d = 0;

    /* renamed from: e  reason: collision with root package name */
    public int f1235e = 1;

    public h(long j2, long j3) {
        this.a = j2;
        this.b = j3;
    }

    public void a(Animator animator) {
        animator.setStartDelay(this.a);
        animator.setDuration(this.b);
        animator.setInterpolator(a());
        if (animator instanceof ValueAnimator) {
            ValueAnimator valueAnimator = (ValueAnimator) animator;
            valueAnimator.setRepeatCount(this.f1234d);
            valueAnimator.setRepeatMode(this.f1235e);
        }
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || h.class != obj.getClass()) {
            return false;
        }
        h hVar = (h) obj;
        if (this.a == hVar.a && this.b == hVar.b && this.f1234d == hVar.f1234d && this.f1235e == hVar.f1235e) {
            return a().getClass().equals(hVar.a().getClass());
        }
        return false;
    }

    public int hashCode() {
        long j2 = this.a;
        long j3 = this.b;
        return ((((a().getClass().hashCode() + (((((int) (j2 ^ (j2 >>> 32))) * 31) + ((int) (j3 ^ (j3 >>> 32)))) * 31)) * 31) + this.f1234d) * 31) + this.f1235e;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append(10);
        sb.append(h.class.getName());
        sb.append('{');
        sb.append(Integer.toHexString(System.identityHashCode(this)));
        sb.append(" delay: ");
        sb.append(this.a);
        sb.append(" duration: ");
        sb.append(this.b);
        sb.append(" interpolator: ");
        sb.append(a().getClass());
        sb.append(" repeatCount: ");
        sb.append(this.f1234d);
        sb.append(" repeatMode: ");
        return a.a(sb, this.f1235e, "}\n");
    }

    public h(long j2, long j3, TimeInterpolator timeInterpolator) {
        this.a = j2;
        this.b = j3;
        this.f1233c = timeInterpolator;
    }

    public TimeInterpolator a() {
        TimeInterpolator timeInterpolator = this.f1233c;
        return timeInterpolator != null ? timeInterpolator : a.a;
    }
}
