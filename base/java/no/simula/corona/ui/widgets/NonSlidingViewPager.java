package no.simula.corona.ui.widgets;

import android.content.Context;
import android.util.AttributeSet;
import android.view.MotionEvent;
import com.microsoft.appcenter.analytics.ingestion.models.EventLog;
import d.a0.a.b;
import h.k.b.g;

public final class NonSlidingViewPager extends b {
    /* JADX INFO: super call moved to the top of the method (can break code semantics) */
    public NonSlidingViewPager(Context context) {
        super(context);
        if (context != null) {
        } else {
            g.a();
            throw null;
        }
    }

    public boolean onInterceptTouchEvent(MotionEvent motionEvent) {
        if (motionEvent != null) {
            return false;
        }
        g.a(EventLog.TYPE);
        throw null;
    }

    public boolean onTouchEvent(MotionEvent motionEvent) {
        if (motionEvent != null) {
            return false;
        }
        g.a(EventLog.TYPE);
        throw null;
    }

    /* JADX INFO: super call moved to the top of the method (can break code semantics) */
    public NonSlidingViewPager(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        if (context != null) {
        } else {
            g.a();
            throw null;
        }
    }
}
