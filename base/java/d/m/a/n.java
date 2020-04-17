package d.m.a;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.View;
import androidx.fragment.R$styleable;
import androidx.fragment.app.Fragment;
import e.a.a.a.a;

public class n implements LayoutInflater.Factory2 {
    public final p x;

    public n(p pVar) {
        this.x = pVar;
    }

    public View onCreateView(String str, Context context, AttributeSet attributeSet) {
        return onCreateView((View) null, str, context, attributeSet);
    }

    public View onCreateView(View view, String str, Context context, AttributeSet attributeSet) {
        if (j.class.getName().equals(str)) {
            return new j(context, attributeSet, this.x);
        }
        Fragment fragment = null;
        if (!"fragment".equals(str)) {
            return null;
        }
        String attributeValue = attributeSet.getAttributeValue((String) null, "class");
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R$styleable.Fragment);
        if (attributeValue == null) {
            attributeValue = obtainStyledAttributes.getString(R$styleable.Fragment_android_name);
        }
        int resourceId = obtainStyledAttributes.getResourceId(R$styleable.Fragment_android_id, -1);
        String string = obtainStyledAttributes.getString(R$styleable.Fragment_android_tag);
        obtainStyledAttributes.recycle();
        if (attributeValue == null || !l.b(context.getClassLoader(), attributeValue)) {
            return null;
        }
        int id = view != null ? view.getId() : 0;
        if (id == -1 && resourceId == -1 && string == null) {
            throw new IllegalArgumentException(attributeSet.getPositionDescription() + ": Must specify unique android:id, android:tag, or have a parent with an id for " + attributeValue);
        }
        if (resourceId != -1) {
            fragment = this.x.b(resourceId);
        }
        if (fragment == null && string != null) {
            fragment = this.x.b(string);
        }
        if (fragment == null && id != -1) {
            fragment = this.x.b(id);
        }
        if (p.c(2)) {
            StringBuilder a = a.a("onCreateView: id=0x");
            a.append(Integer.toHexString(resourceId));
            a.append(" fname=");
            a.append(attributeValue);
            a.append(" existing=");
            a.append(fragment);
            Log.v("FragmentManager", a.toString());
        }
        if (fragment == null) {
            fragment = this.x.h().a(context.getClassLoader(), attributeValue);
            fragment.mFromLayout = true;
            fragment.mFragmentId = resourceId != 0 ? resourceId : id;
            fragment.mContainerId = id;
            fragment.mTag = string;
            fragment.mInLayout = true;
            p pVar = this.x;
            fragment.mFragmentManager = pVar;
            m<?> mVar = pVar.n;
            fragment.mHost = mVar;
            fragment.onInflate(mVar.y, attributeSet, fragment.mSavedFragmentState);
            this.x.a(fragment);
            p pVar2 = this.x;
            pVar2.a(fragment, pVar2.m);
        } else if (!fragment.mInLayout) {
            fragment.mInLayout = true;
            m<?> mVar2 = this.x.n;
            fragment.mHost = mVar2;
            fragment.onInflate(mVar2.y, attributeSet, fragment.mSavedFragmentState);
        } else {
            throw new IllegalArgumentException(attributeSet.getPositionDescription() + ": Duplicate id 0x" + Integer.toHexString(resourceId) + ", tag " + string + ", or parent id 0x" + Integer.toHexString(id) + " with another fragment for " + attributeValue);
        }
        p pVar3 = this.x;
        if (pVar3.m >= 1 || !fragment.mFromLayout) {
            p pVar4 = this.x;
            pVar4.a(fragment, pVar4.m);
        } else {
            pVar3.a(fragment, 1);
        }
        View view2 = fragment.mView;
        if (view2 != null) {
            if (resourceId != 0) {
                view2.setId(resourceId);
            }
            if (fragment.mView.getTag() == null) {
                fragment.mView.setTag(string);
            }
            return fragment.mView;
        }
        throw new IllegalStateException(a.a("Fragment ", attributeValue, " did not create a view."));
    }
}
