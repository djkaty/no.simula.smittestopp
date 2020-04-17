package d.s;

import android.app.Activity;
import android.content.ComponentName;
import android.content.Context;
import android.content.ContextWrapper;
import android.content.Intent;
import android.content.res.TypedArray;
import android.net.Uri;
import android.os.Bundle;
import android.text.TextUtils;
import android.util.AttributeSet;
import androidx.navigation.R$styleable;
import d.s.p;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

@p.b("activity")
public class a extends p<C0038a> {
    public Context a;
    public Activity b;

    /* renamed from: d.s.a$a  reason: collision with other inner class name */
    public static class C0038a extends i {
        public Intent F;
        public String G;

        public C0038a(p<? extends C0038a> pVar) {
            super(pVar);
        }

        public void a(Context context, AttributeSet attributeSet) {
            super.a(context, attributeSet);
            TypedArray obtainAttributes = context.getResources().obtainAttributes(attributeSet, R$styleable.ActivityNavigator);
            String string = obtainAttributes.getString(R$styleable.ActivityNavigator_targetPackage);
            if (string != null) {
                string = string.replace("${applicationId}", context.getPackageName());
            }
            if (this.F == null) {
                this.F = new Intent();
            }
            this.F.setPackage(string);
            String string2 = obtainAttributes.getString(R$styleable.ActivityNavigator_android_name);
            if (string2 != null) {
                if (string2.charAt(0) == '.') {
                    string2 = context.getPackageName() + string2;
                }
                ComponentName componentName = new ComponentName(context, string2);
                if (this.F == null) {
                    this.F = new Intent();
                }
                this.F.setComponent(componentName);
            }
            String string3 = obtainAttributes.getString(R$styleable.ActivityNavigator_action);
            if (this.F == null) {
                this.F = new Intent();
            }
            this.F.setAction(string3);
            String string4 = obtainAttributes.getString(R$styleable.ActivityNavigator_data);
            if (string4 != null) {
                Uri parse = Uri.parse(string4);
                if (this.F == null) {
                    this.F = new Intent();
                }
                this.F.setData(parse);
            }
            this.G = obtainAttributes.getString(R$styleable.ActivityNavigator_dataPattern);
            obtainAttributes.recycle();
        }

        public boolean a() {
            return false;
        }

        public String toString() {
            ComponentName componentName;
            Intent intent = this.F;
            String str = null;
            if (intent == null) {
                componentName = null;
            } else {
                componentName = intent.getComponent();
            }
            StringBuilder sb = new StringBuilder();
            sb.append(super.toString());
            if (componentName != null) {
                sb.append(" class=");
                sb.append(componentName.getClassName());
            } else {
                Intent intent2 = this.F;
                if (intent2 != null) {
                    str = intent2.getAction();
                }
                if (str != null) {
                    sb.append(" action=");
                    sb.append(str);
                }
            }
            return sb.toString();
        }
    }

    public static final class b implements p.a {
    }

    public a(Context context) {
        this.a = context;
        while (context instanceof ContextWrapper) {
            if (context instanceof Activity) {
                this.b = (Activity) context;
                return;
            }
            context = ((ContextWrapper) context).getBaseContext();
        }
    }

    public i a(i iVar, Bundle bundle, n nVar, p.a aVar) {
        Intent intent;
        int intExtra;
        C0038a aVar2 = (C0038a) iVar;
        if (aVar2.F != null) {
            Intent intent2 = new Intent(aVar2.F);
            if (bundle != null) {
                intent2.putExtras(bundle);
                String str = aVar2.G;
                if (!TextUtils.isEmpty(str)) {
                    StringBuffer stringBuffer = new StringBuffer();
                    Matcher matcher = Pattern.compile("\\{(.+?)\\}").matcher(str);
                    while (matcher.find()) {
                        String group = matcher.group(1);
                        if (bundle.containsKey(group)) {
                            matcher.appendReplacement(stringBuffer, "");
                            stringBuffer.append(Uri.encode(bundle.get(group).toString()));
                        } else {
                            throw new IllegalArgumentException("Could not find " + group + " in " + bundle + " to fill data pattern " + str);
                        }
                    }
                    matcher.appendTail(stringBuffer);
                    intent2.setData(Uri.parse(stringBuffer.toString()));
                }
            }
            boolean z = aVar instanceof b;
            int i2 = 0;
            if (z) {
                if (((b) aVar) != null) {
                    intent2.addFlags(0);
                } else {
                    throw null;
                }
            }
            if (!(this.a instanceof Activity)) {
                intent2.addFlags(268435456);
            }
            if (nVar != null && nVar.a) {
                intent2.addFlags(536870912);
            }
            Activity activity = this.b;
            if (!(activity == null || (intent = activity.getIntent()) == null || (intExtra = intent.getIntExtra("android-support-navigation:ActivityNavigator:current", 0)) == 0)) {
                intent2.putExtra("android-support-navigation:ActivityNavigator:source", intExtra);
            }
            intent2.putExtra("android-support-navigation:ActivityNavigator:current", aVar2.z);
            if (nVar != null) {
                intent2.putExtra("android-support-navigation:ActivityNavigator:popEnterAnim", nVar.f742f);
                intent2.putExtra("android-support-navigation:ActivityNavigator:popExitAnim", nVar.f743g);
            }
            if (!z) {
                this.a.startActivity(intent2);
            } else if (((b) aVar) != null) {
                this.a.startActivity(intent2);
            } else {
                throw null;
            }
            if (!(nVar == null || this.b == null)) {
                int i3 = nVar.f740d;
                int i4 = nVar.f741e;
                if (!(i3 == -1 && i4 == -1)) {
                    if (i3 == -1) {
                        i3 = 0;
                    }
                    if (i4 != -1) {
                        i2 = i4;
                    }
                    this.b.overridePendingTransition(i3, i2);
                }
            }
            return null;
        }
        throw new IllegalStateException(e.a.a.a.a.a(e.a.a.a.a.a("Destination "), aVar2.z, " does not have an Intent set."));
    }

    public boolean c() {
        Activity activity = this.b;
        if (activity == null) {
            return false;
        }
        activity.finish();
        return true;
    }

    public i a() {
        return new C0038a(this);
    }
}
