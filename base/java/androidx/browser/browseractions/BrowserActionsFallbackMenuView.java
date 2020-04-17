package androidx.browser.browseractions;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.widget.LinearLayout;
import androidx.browser.R$dimen;
import com.microsoft.azure.storage.Constants;

public class BrowserActionsFallbackMenuView extends LinearLayout {
    public final int x = getResources().getDimensionPixelOffset(R$dimen.browser_actions_context_menu_min_padding);
    public final int y = getResources().getDimensionPixelOffset(R$dimen.browser_actions_context_menu_max_width);

    public BrowserActionsFallbackMenuView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    public void onMeasure(int i2, int i3) {
        super.onMeasure(View.MeasureSpec.makeMeasureSpec(Math.min(getResources().getDisplayMetrics().widthPixels - (this.x * 2), this.y), Constants.GB), i3);
    }
}
