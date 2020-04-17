package d.s.s;

import android.animation.ObjectAnimator;
import android.animation.ValueAnimator;
import android.content.Context;
import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.text.TextUtils;
import androidx.navigation.NavController;
import androidx.navigation.ui.R$string;
import com.microsoft.azure.sdk.iot.deps.serializer.JobPropertiesParser;
import d.b.c.a.d;
import d.s.b;
import d.s.i;
import java.lang.ref.WeakReference;
import java.util.Set;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

public abstract class a implements NavController.b {
    public final Context a;
    public final Set<Integer> b;

    /* renamed from: c  reason: collision with root package name */
    public final WeakReference<d.l.a.a> f756c;

    /* renamed from: d  reason: collision with root package name */
    public d f757d;

    /* renamed from: e  reason: collision with root package name */
    public ValueAnimator f758e;

    public a(Context context, c cVar) {
        this.a = context;
        this.b = cVar.a;
        d.l.a.a aVar = cVar.b;
        if (aVar != null) {
            this.f756c = new WeakReference<>(aVar);
        } else {
            this.f756c = null;
        }
    }

    public abstract void a(Drawable drawable, int i2);

    public void a(NavController navController, i iVar, Bundle bundle) {
        boolean z;
        boolean z2;
        if (!(iVar instanceof b)) {
            WeakReference<d.l.a.a> weakReference = this.f756c;
            d.l.a.a aVar = weakReference != null ? (d.l.a.a) weakReference.get() : null;
            if (this.f756c == null || aVar != null) {
                CharSequence charSequence = iVar.B;
                if (!TextUtils.isEmpty(charSequence)) {
                    StringBuffer stringBuffer = new StringBuffer();
                    Matcher matcher = Pattern.compile("\\{(.+?)\\}").matcher(charSequence);
                    while (matcher.find()) {
                        String group = matcher.group(1);
                        if (bundle == null || !bundle.containsKey(group)) {
                            throw new IllegalArgumentException("Could not find " + group + " in " + bundle + " to fill label " + charSequence);
                        }
                        matcher.appendReplacement(stringBuffer, "");
                        stringBuffer.append(bundle.get(group).toString());
                    }
                    matcher.appendTail(stringBuffer);
                    ((b) this).f759f.k().a((CharSequence) stringBuffer);
                }
                Set<Integer> set = this.b;
                while (true) {
                    if (!set.contains(Integer.valueOf(iVar.z))) {
                        iVar = iVar.y;
                        if (iVar == null) {
                            z = false;
                            break;
                        }
                    } else {
                        z = true;
                        break;
                    }
                }
                if (aVar != null || !z) {
                    boolean z3 = aVar != null && z;
                    if (this.f757d == null) {
                        this.f757d = new d(this.a);
                        z2 = false;
                    } else {
                        z2 = true;
                    }
                    a(this.f757d, z3 ? R$string.nav_app_bar_open_drawer_description : R$string.nav_app_bar_navigate_up_description);
                    float f2 = z3 ? 0.0f : 1.0f;
                    if (z2) {
                        float f3 = this.f757d.f255j;
                        ValueAnimator valueAnimator = this.f758e;
                        if (valueAnimator != null) {
                            valueAnimator.cancel();
                        }
                        ObjectAnimator ofFloat = ObjectAnimator.ofFloat(this.f757d, JobPropertiesParser.PROGRESS_NAME, new float[]{f3, f2});
                        this.f758e = ofFloat;
                        ofFloat.start();
                        return;
                    }
                    this.f757d.setProgress(f2);
                    return;
                }
                a((Drawable) null, 0);
                return;
            }
            navController.f89l.remove(this);
        }
    }
}
