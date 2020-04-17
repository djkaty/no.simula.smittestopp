package androidx.appcompat.widget;

import android.app.PendingIntent;
import android.app.SearchableInfo;
import android.content.ActivityNotFoundException;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.database.Cursor;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import android.text.Editable;
import android.text.SpannableStringBuilder;
import android.text.TextUtils;
import android.text.TextWatcher;
import android.text.style.ImageSpan;
import android.util.AttributeSet;
import android.util.Log;
import android.util.TypedValue;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.TouchDelegate;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.ViewGroup;
import android.view.inputmethod.EditorInfo;
import android.view.inputmethod.InputConnection;
import android.view.inputmethod.InputMethodManager;
import android.widget.AdapterView;
import android.widget.AutoCompleteTextView;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.appcompat.R$attr;
import androidx.appcompat.R$dimen;
import androidx.appcompat.R$id;
import androidx.appcompat.R$layout;
import androidx.appcompat.R$string;
import androidx.appcompat.R$styleable;
import com.microsoft.azure.sdk.iot.deps.serializer.QueryRequestParser;
import com.microsoft.azure.storage.Constants;
import d.b.a.r;
import d.b.e.d1;
import d.b.e.i0;
import d.b.e.r0;
import d.b.e.x0;
import java.lang.reflect.Method;
import java.util.WeakHashMap;

public class SearchView extends i0 implements d.b.d.b {
    public static final k N0 = new k();
    public boolean A0;
    public int B0;
    public SearchableInfo C0;
    public Bundle D0;
    public final Runnable E0;
    public Runnable F0;
    public final WeakHashMap<String, Drawable.ConstantState> G0;
    public final View.OnClickListener H0;
    public View.OnKeyListener I0;
    public final TextView.OnEditorActionListener J0;
    public final AdapterView.OnItemClickListener K0;
    public final AdapterView.OnItemSelectedListener L0;
    public final SearchAutoComplete M;
    public TextWatcher M0;
    public final View N;
    public final View O;
    public final View P;
    public final ImageView Q;
    public final ImageView R;
    public final ImageView S;
    public final ImageView T;
    public final View U;
    public p V;
    public Rect W;
    public Rect a0;
    public int[] b0;
    public int[] c0;
    public final ImageView d0;
    public final Drawable e0;
    public final int f0;
    public final int g0;
    public final Intent h0;
    public final Intent i0;
    public final CharSequence j0;
    public m k0;
    public l l0;
    public View.OnFocusChangeListener m0;
    public n n0;
    public View.OnClickListener o0;
    public boolean p0;
    public boolean q0;
    public d.j.a.a r0;
    public boolean s0;
    public CharSequence t0;
    public boolean u0;
    public boolean v0;
    public int w0;
    public boolean x0;
    public CharSequence y0;
    public CharSequence z0;

    public static class SearchAutoComplete extends d.b.e.d {
        public int A;
        public SearchView B;
        public boolean C;
        public final Runnable D;

        public class a implements Runnable {
            public a() {
            }

            public void run() {
                SearchAutoComplete searchAutoComplete = SearchAutoComplete.this;
                if (searchAutoComplete.C) {
                    ((InputMethodManager) searchAutoComplete.getContext().getSystemService("input_method")).showSoftInput(searchAutoComplete, 0);
                    searchAutoComplete.C = false;
                }
            }
        }

        public SearchAutoComplete(Context context) {
            this(context, (AttributeSet) null);
        }

        private int getSearchViewTextMinWidthDp() {
            Configuration configuration = getResources().getConfiguration();
            int i2 = configuration.screenWidthDp;
            int i3 = configuration.screenHeightDp;
            if (i2 >= 960 && i3 >= 720 && configuration.orientation == 2) {
                return 256;
            }
            if (i2 < 600) {
                return (i2 < 640 || i3 < 480) ? 160 : 192;
            }
            return 192;
        }

        public boolean enoughToFilter() {
            return this.A <= 0 || super.enoughToFilter();
        }

        public InputConnection onCreateInputConnection(EditorInfo editorInfo) {
            InputConnection onCreateInputConnection = super.onCreateInputConnection(editorInfo);
            if (this.C) {
                removeCallbacks(this.D);
                post(this.D);
            }
            return onCreateInputConnection;
        }

        public void onFinishInflate() {
            super.onFinishInflate();
            setMinWidth((int) TypedValue.applyDimension(1, (float) getSearchViewTextMinWidthDp(), getResources().getDisplayMetrics()));
        }

        public void onFocusChanged(boolean z, int i2, Rect rect) {
            super.onFocusChanged(z, i2, rect);
            SearchView searchView = this.B;
            searchView.b(searchView.q0);
            searchView.post(searchView.E0);
            if (searchView.M.hasFocus()) {
                searchView.d();
            }
        }

        public boolean onKeyPreIme(int i2, KeyEvent keyEvent) {
            if (i2 == 4) {
                if (keyEvent.getAction() == 0 && keyEvent.getRepeatCount() == 0) {
                    KeyEvent.DispatcherState keyDispatcherState = getKeyDispatcherState();
                    if (keyDispatcherState != null) {
                        keyDispatcherState.startTracking(keyEvent, this);
                    }
                    return true;
                } else if (keyEvent.getAction() == 1) {
                    KeyEvent.DispatcherState keyDispatcherState2 = getKeyDispatcherState();
                    if (keyDispatcherState2 != null) {
                        keyDispatcherState2.handleUpEvent(keyEvent);
                    }
                    if (keyEvent.isTracking() && !keyEvent.isCanceled()) {
                        this.B.clearFocus();
                        setImeVisibility(false);
                        return true;
                    }
                }
            }
            return super.onKeyPreIme(i2, keyEvent);
        }

        public void onWindowFocusChanged(boolean z) {
            Method method;
            super.onWindowFocusChanged(z);
            if (z && this.B.hasFocus() && getVisibility() == 0) {
                this.C = true;
                if (SearchView.a(getContext()) && (method = SearchView.N0.f26c) != null) {
                    try {
                        method.invoke(this, new Object[]{true});
                    } catch (Exception unused) {
                    }
                }
            }
        }

        public void performCompletion() {
        }

        public void replaceText(CharSequence charSequence) {
        }

        public void setImeVisibility(boolean z) {
            InputMethodManager inputMethodManager = (InputMethodManager) getContext().getSystemService("input_method");
            if (!z) {
                this.C = false;
                removeCallbacks(this.D);
                inputMethodManager.hideSoftInputFromWindow(getWindowToken(), 0);
            } else if (inputMethodManager.isActive(this)) {
                this.C = false;
                removeCallbacks(this.D);
                inputMethodManager.showSoftInput(this, 0);
            } else {
                this.C = true;
            }
        }

        public void setSearchView(SearchView searchView) {
            this.B = searchView;
        }

        public void setThreshold(int i2) {
            super.setThreshold(i2);
            this.A = i2;
        }

        public SearchAutoComplete(Context context, AttributeSet attributeSet) {
            this(context, attributeSet, R$attr.autoCompleteTextViewStyle);
        }

        public SearchAutoComplete(Context context, AttributeSet attributeSet, int i2) {
            super(context, attributeSet, i2);
            this.D = new a();
            this.A = getThreshold();
        }
    }

    public class a implements TextWatcher {
        public a() {
        }

        public void afterTextChanged(Editable editable) {
        }

        public void beforeTextChanged(CharSequence charSequence, int i2, int i3, int i4) {
        }

        public void onTextChanged(CharSequence charSequence, int i2, int i3, int i4) {
            SearchView searchView = SearchView.this;
            Editable text = searchView.M.getText();
            searchView.z0 = text;
            boolean z = !TextUtils.isEmpty(text);
            searchView.a(z);
            searchView.c(!z);
            searchView.h();
            searchView.k();
            if (searchView.k0 != null && !TextUtils.equals(charSequence, searchView.y0)) {
                searchView.k0.a(charSequence.toString());
            }
            searchView.y0 = charSequence.toString();
        }
    }

    public class b implements Runnable {
        public b() {
        }

        public void run() {
            SearchView.this.i();
        }
    }

    public class c implements Runnable {
        public c() {
        }

        public void run() {
            d.j.a.a aVar = SearchView.this.r0;
            if (aVar instanceof r0) {
                aVar.a((Cursor) null);
            }
        }
    }

    public class d implements View.OnFocusChangeListener {
        public d() {
        }

        public void onFocusChange(View view, boolean z) {
            SearchView searchView = SearchView.this;
            View.OnFocusChangeListener onFocusChangeListener = searchView.m0;
            if (onFocusChangeListener != null) {
                onFocusChangeListener.onFocusChange(searchView, z);
            }
        }
    }

    public class e implements View.OnLayoutChangeListener {
        public e() {
        }

        public void onLayoutChange(View view, int i2, int i3, int i4, int i5, int i6, int i7, int i8, int i9) {
            int i10;
            int i11;
            SearchView searchView = SearchView.this;
            if (searchView.U.getWidth() > 1) {
                Resources resources = searchView.getContext().getResources();
                int paddingLeft = searchView.O.getPaddingLeft();
                Rect rect = new Rect();
                boolean a2 = d1.a(searchView);
                if (searchView.p0) {
                    i10 = resources.getDimensionPixelSize(R$dimen.abc_dropdownitem_text_padding_left) + resources.getDimensionPixelSize(R$dimen.abc_dropdownitem_icon_width);
                } else {
                    i10 = 0;
                }
                searchView.M.getDropDownBackground().getPadding(rect);
                if (a2) {
                    i11 = -rect.left;
                } else {
                    i11 = paddingLeft - (rect.left + i10);
                }
                searchView.M.setDropDownHorizontalOffset(i11);
                searchView.M.setDropDownWidth((((searchView.U.getWidth() + rect.left) + rect.right) + i10) - paddingLeft);
            }
        }
    }

    public class f implements View.OnClickListener {
        public f() {
        }

        public void onClick(View view) {
            String str;
            SearchView searchView = SearchView.this;
            if (view == searchView.Q) {
                searchView.f();
            } else if (view == searchView.S) {
                searchView.e();
            } else if (view == searchView.R) {
                searchView.g();
            } else if (view == searchView.T) {
                SearchableInfo searchableInfo = searchView.C0;
                if (searchableInfo != null) {
                    try {
                        if (searchableInfo.getVoiceSearchLaunchWebSearch()) {
                            Intent intent = new Intent(searchView.h0);
                            ComponentName searchActivity = searchableInfo.getSearchActivity();
                            if (searchActivity == null) {
                                str = null;
                            } else {
                                str = searchActivity.flattenToShortString();
                            }
                            intent.putExtra("calling_package", str);
                            searchView.getContext().startActivity(intent);
                        } else if (searchableInfo.getVoiceSearchLaunchRecognizer()) {
                            searchView.getContext().startActivity(searchView.a(searchView.i0, searchableInfo));
                        }
                    } catch (ActivityNotFoundException unused) {
                        Log.w("SearchView", "Could not find voice search activity");
                    }
                }
            } else if (view == searchView.M) {
                searchView.d();
            }
        }
    }

    public class g implements View.OnKeyListener {
        public g() {
        }

        public boolean onKey(View view, int i2, KeyEvent keyEvent) {
            int i3;
            SearchView searchView = SearchView.this;
            if (searchView.C0 == null) {
                return false;
            }
            if (!searchView.M.isPopupShowing() || SearchView.this.M.getListSelection() == -1) {
                if ((TextUtils.getTrimmedLength(SearchView.this.M.getText()) == 0) || !keyEvent.hasNoModifiers() || keyEvent.getAction() != 1 || i2 != 66) {
                    return false;
                }
                view.cancelLongPress();
                SearchView searchView2 = SearchView.this;
                searchView2.a(0, (String) null, searchView2.M.getText().toString());
                return true;
            }
            SearchView searchView3 = SearchView.this;
            if (searchView3.C0 == null || searchView3.r0 == null || keyEvent.getAction() != 0 || !keyEvent.hasNoModifiers()) {
                return false;
            }
            if (i2 == 66 || i2 == 84 || i2 == 61) {
                return searchView3.b(searchView3.M.getListSelection());
            }
            if (i2 == 21 || i2 == 22) {
                if (i2 == 21) {
                    i3 = 0;
                } else {
                    i3 = searchView3.M.length();
                }
                searchView3.M.setSelection(i3);
                searchView3.M.setListSelection(0);
                searchView3.M.clearListSelection();
                k kVar = SearchView.N0;
                SearchAutoComplete searchAutoComplete = searchView3.M;
                Method method = kVar.f26c;
                if (method != null) {
                    try {
                        method.invoke(searchAutoComplete, new Object[]{true});
                    } catch (Exception unused) {
                    }
                }
                return true;
            } else if (i2 != 19) {
                return false;
            } else {
                int listSelection = searchView3.M.getListSelection();
                return false;
            }
        }
    }

    public class h implements TextView.OnEditorActionListener {
        public h() {
        }

        public boolean onEditorAction(TextView textView, int i2, KeyEvent keyEvent) {
            SearchView.this.g();
            return true;
        }
    }

    public class i implements AdapterView.OnItemClickListener {
        public i() {
        }

        public void onItemClick(AdapterView<?> adapterView, View view, int i2, long j2) {
            SearchView.this.b(i2);
        }
    }

    public class j implements AdapterView.OnItemSelectedListener {
        public j() {
        }

        public void onItemSelected(AdapterView<?> adapterView, View view, int i2, long j2) {
            SearchView.this.c(i2);
        }

        public void onNothingSelected(AdapterView<?> adapterView) {
        }
    }

    public static class k {
        public Method a;
        public Method b;

        /* renamed from: c  reason: collision with root package name */
        public Method f26c;

        public k() {
            try {
                Method declaredMethod = AutoCompleteTextView.class.getDeclaredMethod("doBeforeTextChanged", new Class[0]);
                this.a = declaredMethod;
                declaredMethod.setAccessible(true);
            } catch (NoSuchMethodException unused) {
            }
            try {
                Method declaredMethod2 = AutoCompleteTextView.class.getDeclaredMethod("doAfterTextChanged", new Class[0]);
                this.b = declaredMethod2;
                declaredMethod2.setAccessible(true);
            } catch (NoSuchMethodException unused2) {
            }
            Class<AutoCompleteTextView> cls = AutoCompleteTextView.class;
            try {
                Method method = cls.getMethod("ensureImeVisible", new Class[]{Boolean.TYPE});
                this.f26c = method;
                method.setAccessible(true);
            } catch (NoSuchMethodException unused3) {
            }
        }
    }

    public interface l {
        boolean a();
    }

    public interface m {
        boolean a(String str);

        boolean b(String str);
    }

    public interface n {
        boolean a(int i2);

        boolean b(int i2);
    }

    public static class o extends d.k.a.a {
        public static final Parcelable.Creator<o> CREATOR = new a();
        public boolean z;

        public static class a implements Parcelable.ClassLoaderCreator<o> {
            public Object createFromParcel(Parcel parcel, ClassLoader classLoader) {
                return new o(parcel, classLoader);
            }

            public Object[] newArray(int i2) {
                return new o[i2];
            }

            public Object createFromParcel(Parcel parcel) {
                return new o(parcel, (ClassLoader) null);
            }
        }

        public o(Parcelable parcelable) {
            super(parcelable);
        }

        public String toString() {
            StringBuilder a2 = e.a.a.a.a.a("SearchView.SavedState{");
            a2.append(Integer.toHexString(System.identityHashCode(this)));
            a2.append(" isIconified=");
            a2.append(this.z);
            a2.append("}");
            return a2.toString();
        }

        public void writeToParcel(Parcel parcel, int i2) {
            parcel.writeParcelable(this.x, i2);
            parcel.writeValue(Boolean.valueOf(this.z));
        }

        public o(Parcel parcel, ClassLoader classLoader) {
            super(parcel, classLoader);
            this.z = ((Boolean) parcel.readValue((ClassLoader) null)).booleanValue();
        }
    }

    public static class p extends TouchDelegate {
        public final View a;
        public final Rect b = new Rect();

        /* renamed from: c  reason: collision with root package name */
        public final Rect f27c = new Rect();

        /* renamed from: d  reason: collision with root package name */
        public final Rect f28d = new Rect();

        /* renamed from: e  reason: collision with root package name */
        public final int f29e;

        /* renamed from: f  reason: collision with root package name */
        public boolean f30f;

        public p(Rect rect, Rect rect2, View view) {
            super(rect, view);
            this.f29e = ViewConfiguration.get(view.getContext()).getScaledTouchSlop();
            a(rect, rect2);
            this.a = view;
        }

        public void a(Rect rect, Rect rect2) {
            this.b.set(rect);
            this.f28d.set(rect);
            Rect rect3 = this.f28d;
            int i2 = this.f29e;
            rect3.inset(-i2, -i2);
            this.f27c.set(rect2);
        }

        /* JADX WARNING: Removed duplicated region for block: B:19:0x0041  */
        /* JADX WARNING: Removed duplicated region for block: B:26:? A[RETURN, SYNTHETIC] */
        /* Code decompiled incorrectly, please refer to instructions dump. */
        public boolean onTouchEvent(android.view.MotionEvent r8) {
            /*
                r7 = this;
                float r0 = r8.getX()
                int r0 = (int) r0
                float r1 = r8.getY()
                int r1 = (int) r1
                int r2 = r8.getAction()
                r3 = 2
                r4 = 1
                r5 = 0
                if (r2 == 0) goto L_0x0032
                if (r2 == r4) goto L_0x0020
                if (r2 == r3) goto L_0x0020
                r6 = 3
                if (r2 == r6) goto L_0x001b
                goto L_0x003d
            L_0x001b:
                boolean r2 = r7.f30f
                r7.f30f = r5
                goto L_0x002f
            L_0x0020:
                boolean r2 = r7.f30f
                if (r2 == 0) goto L_0x002f
                android.graphics.Rect r6 = r7.f28d
                boolean r6 = r6.contains(r0, r1)
                if (r6 != 0) goto L_0x002f
                r4 = r2
                r2 = 0
                goto L_0x003f
            L_0x002f:
                r4 = r2
            L_0x0030:
                r2 = 1
                goto L_0x003f
            L_0x0032:
                android.graphics.Rect r2 = r7.b
                boolean r2 = r2.contains(r0, r1)
                if (r2 == 0) goto L_0x003d
                r7.f30f = r4
                goto L_0x0030
            L_0x003d:
                r2 = 1
                r4 = 0
            L_0x003f:
                if (r4 == 0) goto L_0x0072
                if (r2 == 0) goto L_0x005f
                android.graphics.Rect r2 = r7.f27c
                boolean r2 = r2.contains(r0, r1)
                if (r2 != 0) goto L_0x005f
                android.view.View r0 = r7.a
                int r0 = r0.getWidth()
                int r0 = r0 / r3
                float r0 = (float) r0
                android.view.View r1 = r7.a
                int r1 = r1.getHeight()
                int r1 = r1 / r3
                float r1 = (float) r1
                r8.setLocation(r0, r1)
                goto L_0x006c
            L_0x005f:
                android.graphics.Rect r2 = r7.f27c
                int r3 = r2.left
                int r0 = r0 - r3
                float r0 = (float) r0
                int r2 = r2.top
                int r1 = r1 - r2
                float r1 = (float) r1
                r8.setLocation(r0, r1)
            L_0x006c:
                android.view.View r0 = r7.a
                boolean r5 = r0.dispatchTouchEvent(r8)
            L_0x0072:
                return r5
            */
            throw new UnsupportedOperationException("Method not decompiled: androidx.appcompat.widget.SearchView.p.onTouchEvent(android.view.MotionEvent):boolean");
        }
    }

    public SearchView(Context context) {
        this(context, (AttributeSet) null);
    }

    private int getPreferredHeight() {
        return getContext().getResources().getDimensionPixelSize(R$dimen.abc_search_view_preferred_height);
    }

    private int getPreferredWidth() {
        return getContext().getResources().getDimensionPixelSize(R$dimen.abc_search_view_preferred_width);
    }

    private void setQuery(CharSequence charSequence) {
        this.M.setText(charSequence);
        this.M.setSelection(TextUtils.isEmpty(charSequence) ? 0 : charSequence.length());
    }

    /* JADX WARNING: Code restructure failed: missing block: B:14:0x001e, code lost:
        if (r2.x0 == false) goto L_0x0023;
     */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public final void a(boolean r3) {
        /*
            r2 = this;
            boolean r0 = r2.s0
            r1 = 0
            if (r0 == 0) goto L_0x0021
            if (r0 != 0) goto L_0x000b
            boolean r0 = r2.x0
            if (r0 == 0) goto L_0x0011
        L_0x000b:
            boolean r0 = r2.q0
            if (r0 != 0) goto L_0x0011
            r0 = 1
            goto L_0x0012
        L_0x0011:
            r0 = 0
        L_0x0012:
            if (r0 == 0) goto L_0x0021
            boolean r0 = r2.hasFocus()
            if (r0 == 0) goto L_0x0021
            if (r3 != 0) goto L_0x0023
            boolean r3 = r2.x0
            if (r3 != 0) goto L_0x0021
            goto L_0x0023
        L_0x0021:
            r1 = 8
        L_0x0023:
            android.widget.ImageView r3 = r2.R
            r3.setVisibility(r1)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.appcompat.widget.SearchView.a(boolean):void");
    }

    public void b() {
        this.M.setText("");
        SearchAutoComplete searchAutoComplete = this.M;
        searchAutoComplete.setSelection(searchAutoComplete.length());
        this.z0 = "";
        clearFocus();
        b(true);
        this.M.setImeOptions(this.B0);
        this.A0 = false;
    }

    public final void c(boolean z) {
        int i2 = 8;
        if (this.x0 && !this.q0 && z) {
            this.R.setVisibility(8);
            i2 = 0;
        }
        this.T.setVisibility(i2);
    }

    public void clearFocus() {
        this.v0 = true;
        super.clearFocus();
        this.M.clearFocus();
        this.M.setImeVisibility(false);
        this.v0 = false;
    }

    public void d() {
        if (Build.VERSION.SDK_INT >= 29) {
            this.M.refreshAutoCompleteResults();
            return;
        }
        k kVar = N0;
        SearchAutoComplete searchAutoComplete = this.M;
        Method method = kVar.a;
        if (method != null) {
            try {
                method.invoke(searchAutoComplete, new Object[0]);
            } catch (Exception unused) {
            }
        }
        k kVar2 = N0;
        SearchAutoComplete searchAutoComplete2 = this.M;
        Method method2 = kVar2.b;
        if (method2 != null) {
            try {
                method2.invoke(searchAutoComplete2, new Object[0]);
            } catch (Exception unused2) {
            }
        }
    }

    public void e() {
        if (!TextUtils.isEmpty(this.M.getText())) {
            this.M.setText("");
            this.M.requestFocus();
            this.M.setImeVisibility(true);
        } else if (this.p0) {
            l lVar = this.l0;
            if (lVar == null || !lVar.a()) {
                clearFocus();
                b(true);
            }
        }
    }

    public void f() {
        b(false);
        this.M.requestFocus();
        this.M.setImeVisibility(true);
        View.OnClickListener onClickListener = this.o0;
        if (onClickListener != null) {
            onClickListener.onClick(this);
        }
    }

    public void g() {
        Editable text = this.M.getText();
        if (text != null && TextUtils.getTrimmedLength(text) > 0) {
            m mVar = this.k0;
            if (mVar == null || !mVar.b(text.toString())) {
                if (this.C0 != null) {
                    a(0, (String) null, text.toString());
                }
                this.M.setImeVisibility(false);
                this.M.dismissDropDown();
            }
        }
    }

    public int getImeOptions() {
        return this.M.getImeOptions();
    }

    public int getInputType() {
        return this.M.getInputType();
    }

    public int getMaxWidth() {
        return this.w0;
    }

    public CharSequence getQuery() {
        return this.M.getText();
    }

    public CharSequence getQueryHint() {
        CharSequence charSequence = this.t0;
        if (charSequence != null) {
            return charSequence;
        }
        SearchableInfo searchableInfo = this.C0;
        if (searchableInfo == null || searchableInfo.getHintId() == 0) {
            return this.j0;
        }
        return getContext().getText(this.C0.getHintId());
    }

    public int getSuggestionCommitIconResId() {
        return this.g0;
    }

    public int getSuggestionRowLayout() {
        return this.f0;
    }

    public d.j.a.a getSuggestionsAdapter() {
        return this.r0;
    }

    public final void h() {
        boolean z = true;
        boolean z2 = !TextUtils.isEmpty(this.M.getText());
        int i2 = 0;
        if (!z2 && (!this.p0 || this.A0)) {
            z = false;
        }
        ImageView imageView = this.S;
        if (!z) {
            i2 = 8;
        }
        imageView.setVisibility(i2);
        Drawable drawable = this.S.getDrawable();
        if (drawable != null) {
            drawable.setState(z2 ? ViewGroup.ENABLED_STATE_SET : ViewGroup.EMPTY_STATE_SET);
        }
    }

    public void i() {
        int[] iArr = this.M.hasFocus() ? ViewGroup.FOCUSED_STATE_SET : ViewGroup.EMPTY_STATE_SET;
        Drawable background = this.O.getBackground();
        if (background != null) {
            background.setState(iArr);
        }
        Drawable background2 = this.P.getBackground();
        if (background2 != null) {
            background2.setState(iArr);
        }
        invalidate();
    }

    public final void j() {
        SpannableStringBuilder queryHint = getQueryHint();
        SearchAutoComplete searchAutoComplete = this.M;
        if (queryHint == null) {
            queryHint = "";
        }
        if (this.p0 && this.e0 != null) {
            int textSize = (int) (((double) this.M.getTextSize()) * 1.25d);
            this.e0.setBounds(0, 0, textSize, textSize);
            SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder("   ");
            spannableStringBuilder.setSpan(new ImageSpan(this.e0), 1, 2, 33);
            spannableStringBuilder.append(queryHint);
            queryHint = spannableStringBuilder;
        }
        searchAutoComplete.setHint(queryHint);
    }

    public final void k() {
        int i2 = 0;
        if (!((this.s0 || this.x0) && !this.q0) || !(this.R.getVisibility() == 0 || this.T.getVisibility() == 0)) {
            i2 = 8;
        }
        this.P.setVisibility(i2);
    }

    public void onDetachedFromWindow() {
        removeCallbacks(this.E0);
        post(this.F0);
        super.onDetachedFromWindow();
    }

    public void onLayout(boolean z, int i2, int i3, int i4, int i5) {
        super.onLayout(z, i2, i3, i4, i5);
        if (z) {
            SearchAutoComplete searchAutoComplete = this.M;
            Rect rect = this.W;
            searchAutoComplete.getLocationInWindow(this.b0);
            getLocationInWindow(this.c0);
            int[] iArr = this.b0;
            int i6 = iArr[1];
            int[] iArr2 = this.c0;
            int i7 = i6 - iArr2[1];
            int i8 = iArr[0] - iArr2[0];
            rect.set(i8, i7, searchAutoComplete.getWidth() + i8, searchAutoComplete.getHeight() + i7);
            Rect rect2 = this.a0;
            Rect rect3 = this.W;
            rect2.set(rect3.left, 0, rect3.right, i5 - i3);
            p pVar = this.V;
            if (pVar == null) {
                p pVar2 = new p(this.a0, this.W, this.M);
                this.V = pVar2;
                setTouchDelegate(pVar2);
                return;
            }
            pVar.a(this.a0, this.W);
        }
    }

    public void onMeasure(int i2, int i3) {
        int i4;
        if (this.q0) {
            super.onMeasure(i2, i3);
            return;
        }
        int mode = View.MeasureSpec.getMode(i2);
        int size = View.MeasureSpec.getSize(i2);
        if (mode == Integer.MIN_VALUE) {
            int i5 = this.w0;
            size = i5 > 0 ? Math.min(i5, size) : Math.min(getPreferredWidth(), size);
        } else if (mode == 0) {
            size = this.w0;
            if (size <= 0) {
                size = getPreferredWidth();
            }
        } else if (mode == 1073741824 && (i4 = this.w0) > 0) {
            size = Math.min(i4, size);
        }
        int mode2 = View.MeasureSpec.getMode(i3);
        int size2 = View.MeasureSpec.getSize(i3);
        if (mode2 == Integer.MIN_VALUE) {
            size2 = Math.min(getPreferredHeight(), size2);
        } else if (mode2 == 0) {
            size2 = getPreferredHeight();
        }
        super.onMeasure(View.MeasureSpec.makeMeasureSpec(size, Constants.GB), View.MeasureSpec.makeMeasureSpec(size2, Constants.GB));
    }

    public void onRestoreInstanceState(Parcelable parcelable) {
        if (!(parcelable instanceof o)) {
            super.onRestoreInstanceState(parcelable);
            return;
        }
        o oVar = (o) parcelable;
        super.onRestoreInstanceState(oVar.x);
        b(oVar.z);
        requestLayout();
    }

    public Parcelable onSaveInstanceState() {
        o oVar = new o(super.onSaveInstanceState());
        oVar.z = this.q0;
        return oVar;
    }

    public void onWindowFocusChanged(boolean z) {
        super.onWindowFocusChanged(z);
        post(this.E0);
    }

    public boolean requestFocus(int i2, Rect rect) {
        if (this.v0 || !isFocusable()) {
            return false;
        }
        if (this.q0) {
            return super.requestFocus(i2, rect);
        }
        boolean requestFocus = this.M.requestFocus(i2, rect);
        if (requestFocus) {
            b(false);
        }
        return requestFocus;
    }

    public void setAppSearchData(Bundle bundle) {
        this.D0 = bundle;
    }

    public void setIconified(boolean z) {
        if (z) {
            e();
        } else {
            f();
        }
    }

    public void setIconifiedByDefault(boolean z) {
        if (this.p0 != z) {
            this.p0 = z;
            b(z);
            j();
        }
    }

    public void setImeOptions(int i2) {
        this.M.setImeOptions(i2);
    }

    public void setInputType(int i2) {
        this.M.setInputType(i2);
    }

    public void setMaxWidth(int i2) {
        this.w0 = i2;
        requestLayout();
    }

    public void setOnCloseListener(l lVar) {
        this.l0 = lVar;
    }

    public void setOnQueryTextFocusChangeListener(View.OnFocusChangeListener onFocusChangeListener) {
        this.m0 = onFocusChangeListener;
    }

    public void setOnQueryTextListener(m mVar) {
        this.k0 = mVar;
    }

    public void setOnSearchClickListener(View.OnClickListener onClickListener) {
        this.o0 = onClickListener;
    }

    public void setOnSuggestionListener(n nVar) {
        this.n0 = nVar;
    }

    public void setQueryHint(CharSequence charSequence) {
        this.t0 = charSequence;
        j();
    }

    public void setQueryRefinementEnabled(boolean z) {
        this.u0 = z;
        d.j.a.a aVar = this.r0;
        if (aVar instanceof r0) {
            ((r0) aVar).O = z ? 2 : 1;
        }
    }

    /* JADX WARNING: Code restructure failed: missing block: B:30:0x009c, code lost:
        if (getContext().getPackageManager().resolveActivity(r2, 65536) != null) goto L_0x00a0;
     */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public void setSearchableInfo(android.app.SearchableInfo r7) {
        /*
            r6 = this;
            r6.C0 = r7
            r0 = 1
            r1 = 65536(0x10000, float:9.18355E-41)
            r2 = 0
            if (r7 == 0) goto L_0x006e
            androidx.appcompat.widget.SearchView$SearchAutoComplete r3 = r6.M
            int r7 = r7.getSuggestThreshold()
            r3.setThreshold(r7)
            androidx.appcompat.widget.SearchView$SearchAutoComplete r7 = r6.M
            android.app.SearchableInfo r3 = r6.C0
            int r3 = r3.getImeOptions()
            r7.setImeOptions(r3)
            android.app.SearchableInfo r7 = r6.C0
            int r7 = r7.getInputType()
            r3 = r7 & 15
            if (r3 != r0) goto L_0x0036
            r3 = -65537(0xfffffffffffeffff, float:NaN)
            r7 = r7 & r3
            android.app.SearchableInfo r3 = r6.C0
            java.lang.String r3 = r3.getSuggestAuthority()
            if (r3 == 0) goto L_0x0036
            r7 = r7 | r1
            r3 = 524288(0x80000, float:7.34684E-40)
            r7 = r7 | r3
        L_0x0036:
            androidx.appcompat.widget.SearchView$SearchAutoComplete r3 = r6.M
            r3.setInputType(r7)
            d.j.a.a r7 = r6.r0
            if (r7 == 0) goto L_0x0042
            r7.a(r2)
        L_0x0042:
            android.app.SearchableInfo r7 = r6.C0
            java.lang.String r7 = r7.getSuggestAuthority()
            if (r7 == 0) goto L_0x006b
            d.b.e.r0 r7 = new d.b.e.r0
            android.content.Context r3 = r6.getContext()
            android.app.SearchableInfo r4 = r6.C0
            java.util.WeakHashMap<java.lang.String, android.graphics.drawable.Drawable$ConstantState> r5 = r6.G0
            r7.<init>(r3, r6, r4, r5)
            r6.r0 = r7
            androidx.appcompat.widget.SearchView$SearchAutoComplete r3 = r6.M
            r3.setAdapter(r7)
            d.j.a.a r7 = r6.r0
            d.b.e.r0 r7 = (d.b.e.r0) r7
            boolean r3 = r6.u0
            if (r3 == 0) goto L_0x0068
            r3 = 2
            goto L_0x0069
        L_0x0068:
            r3 = 1
        L_0x0069:
            r7.O = r3
        L_0x006b:
            r6.j()
        L_0x006e:
            android.app.SearchableInfo r7 = r6.C0
            r3 = 0
            if (r7 == 0) goto L_0x009f
            boolean r7 = r7.getVoiceSearchEnabled()
            if (r7 == 0) goto L_0x009f
            android.app.SearchableInfo r7 = r6.C0
            boolean r7 = r7.getVoiceSearchLaunchWebSearch()
            if (r7 == 0) goto L_0x0084
            android.content.Intent r2 = r6.h0
            goto L_0x008e
        L_0x0084:
            android.app.SearchableInfo r7 = r6.C0
            boolean r7 = r7.getVoiceSearchLaunchRecognizer()
            if (r7 == 0) goto L_0x008e
            android.content.Intent r2 = r6.i0
        L_0x008e:
            if (r2 == 0) goto L_0x009f
            android.content.Context r7 = r6.getContext()
            android.content.pm.PackageManager r7 = r7.getPackageManager()
            android.content.pm.ResolveInfo r7 = r7.resolveActivity(r2, r1)
            if (r7 == 0) goto L_0x009f
            goto L_0x00a0
        L_0x009f:
            r0 = 0
        L_0x00a0:
            r6.x0 = r0
            if (r0 == 0) goto L_0x00ab
            androidx.appcompat.widget.SearchView$SearchAutoComplete r7 = r6.M
            java.lang.String r0 = "nm"
            r7.setPrivateImeOptions(r0)
        L_0x00ab:
            boolean r7 = r6.q0
            r6.b((boolean) r7)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.appcompat.widget.SearchView.setSearchableInfo(android.app.SearchableInfo):void");
    }

    public void setSubmitButtonEnabled(boolean z) {
        this.s0 = z;
        b(this.q0);
    }

    public void setSuggestionsAdapter(d.j.a.a aVar) {
        this.r0 = aVar;
        this.M.setAdapter(aVar);
    }

    public SearchView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, R$attr.searchViewStyle);
    }

    public SearchView(Context context, AttributeSet attributeSet, int i2) {
        super(context, attributeSet, i2);
        this.W = new Rect();
        this.a0 = new Rect();
        this.b0 = new int[2];
        this.c0 = new int[2];
        this.E0 = new b();
        this.F0 = new c();
        this.G0 = new WeakHashMap<>();
        this.H0 = new f();
        this.I0 = new g();
        this.J0 = new h();
        this.K0 = new i();
        this.L0 = new j();
        this.M0 = new a();
        x0 x0Var = new x0(context, context.obtainStyledAttributes(attributeSet, R$styleable.SearchView, i2, 0));
        LayoutInflater.from(context).inflate(x0Var.f(R$styleable.SearchView_layout, R$layout.abc_search_view), this, true);
        SearchAutoComplete searchAutoComplete = (SearchAutoComplete) findViewById(R$id.search_src_text);
        this.M = searchAutoComplete;
        searchAutoComplete.setSearchView(this);
        this.N = findViewById(R$id.search_edit_frame);
        this.O = findViewById(R$id.search_plate);
        this.P = findViewById(R$id.submit_area);
        this.Q = (ImageView) findViewById(R$id.search_button);
        this.R = (ImageView) findViewById(R$id.search_go_btn);
        this.S = (ImageView) findViewById(R$id.search_close_btn);
        this.T = (ImageView) findViewById(R$id.search_voice_btn);
        this.d0 = (ImageView) findViewById(R$id.search_mag_icon);
        d.i.i.n.a(this.O, x0Var.b(R$styleable.SearchView_queryBackground));
        this.P.setBackground(x0Var.b(R$styleable.SearchView_submitBackground));
        this.Q.setImageDrawable(x0Var.b(R$styleable.SearchView_searchIcon));
        this.R.setImageDrawable(x0Var.b(R$styleable.SearchView_goIcon));
        this.S.setImageDrawable(x0Var.b(R$styleable.SearchView_closeIcon));
        this.T.setImageDrawable(x0Var.b(R$styleable.SearchView_voiceIcon));
        this.d0.setImageDrawable(x0Var.b(R$styleable.SearchView_searchIcon));
        this.e0 = x0Var.b(R$styleable.SearchView_searchHintIcon);
        r.a((View) this.Q, (CharSequence) getResources().getString(R$string.abc_searchview_description_search));
        this.f0 = x0Var.f(R$styleable.SearchView_suggestionRowLayout, R$layout.abc_search_dropdown_item_icons_2line);
        this.g0 = x0Var.f(R$styleable.SearchView_commitIcon, 0);
        this.Q.setOnClickListener(this.H0);
        this.S.setOnClickListener(this.H0);
        this.R.setOnClickListener(this.H0);
        this.T.setOnClickListener(this.H0);
        this.M.setOnClickListener(this.H0);
        this.M.addTextChangedListener(this.M0);
        this.M.setOnEditorActionListener(this.J0);
        this.M.setOnItemClickListener(this.K0);
        this.M.setOnItemSelectedListener(this.L0);
        this.M.setOnKeyListener(this.I0);
        this.M.setOnFocusChangeListener(new d());
        setIconifiedByDefault(x0Var.a(R$styleable.SearchView_iconifiedByDefault, true));
        int b2 = x0Var.b(R$styleable.SearchView_android_maxWidth, -1);
        if (b2 != -1) {
            setMaxWidth(b2);
        }
        this.j0 = x0Var.e(R$styleable.SearchView_defaultQueryHint);
        this.t0 = x0Var.e(R$styleable.SearchView_queryHint);
        int c2 = x0Var.c(R$styleable.SearchView_android_imeOptions, -1);
        if (c2 != -1) {
            setImeOptions(c2);
        }
        int c3 = x0Var.c(R$styleable.SearchView_android_inputType, -1);
        if (c3 != -1) {
            setInputType(c3);
        }
        setFocusable(x0Var.a(R$styleable.SearchView_android_focusable, true));
        x0Var.b.recycle();
        Intent intent = new Intent("android.speech.action.WEB_SEARCH");
        this.h0 = intent;
        intent.addFlags(268435456);
        this.h0.putExtra("android.speech.extra.LANGUAGE_MODEL", "web_search");
        Intent intent2 = new Intent("android.speech.action.RECOGNIZE_SPEECH");
        this.i0 = intent2;
        intent2.addFlags(268435456);
        View findViewById = findViewById(this.M.getDropDownAnchor());
        this.U = findViewById;
        if (findViewById != null) {
            findViewById.addOnLayoutChangeListener(new e());
        }
        b(this.p0);
        j();
    }

    public boolean c(int i2) {
        n nVar = this.n0;
        if (nVar != null && nVar.a(i2)) {
            return false;
        }
        Editable text = this.M.getText();
        Cursor cursor = this.r0.z;
        if (cursor == null) {
            return true;
        }
        if (cursor.moveToPosition(i2)) {
            CharSequence b2 = this.r0.b(cursor);
            if (b2 != null) {
                setQuery(b2);
                return true;
            }
            setQuery(text);
            return true;
        }
        setQuery(text);
        return true;
    }

    public void a(CharSequence charSequence) {
        setQuery(charSequence);
    }

    public void a() {
        if (!this.A0) {
            this.A0 = true;
            int imeOptions = this.M.getImeOptions();
            this.B0 = imeOptions;
            this.M.setImeOptions(imeOptions | 33554432);
            this.M.setText("");
            setIconified(false);
        }
    }

    public final void b(boolean z) {
        this.q0 = z;
        int i2 = 0;
        int i3 = z ? 0 : 8;
        boolean z2 = !TextUtils.isEmpty(this.M.getText());
        this.Q.setVisibility(i3);
        a(z2);
        this.N.setVisibility(z ? 8 : 0);
        if (this.d0.getDrawable() == null || this.p0) {
            i2 = 8;
        }
        this.d0.setVisibility(i2);
        h();
        c(!z2);
        k();
    }

    public void a(int i2, String str, String str2) {
        getContext().startActivity(a("android.intent.action.SEARCH", (Uri) null, (String) null, str2, i2, str));
    }

    public final Intent a(String str, Uri uri, String str2, String str3, int i2, String str4) {
        Intent intent = new Intent(str);
        intent.addFlags(268435456);
        if (uri != null) {
            intent.setData(uri);
        }
        intent.putExtra("user_query", this.z0);
        if (str3 != null) {
            intent.putExtra(QueryRequestParser.QUERY_TAG, str3);
        }
        if (str2 != null) {
            intent.putExtra("intent_extra_data_key", str2);
        }
        Bundle bundle = this.D0;
        if (bundle != null) {
            intent.putExtra("app_data", bundle);
        }
        if (i2 != 0) {
            intent.putExtra("action_key", i2);
            intent.putExtra("action_msg", str4);
        }
        intent.setComponent(this.C0.getSearchActivity());
        return intent;
    }

    public boolean b(int i2) {
        int i3;
        Uri uri;
        String a2;
        n nVar = this.n0;
        if (nVar != null && nVar.b(i2)) {
            return false;
        }
        Cursor cursor = this.r0.z;
        if (cursor != null && cursor.moveToPosition(i2)) {
            Intent intent = null;
            try {
                String a3 = r0.a(cursor, "suggest_intent_action");
                if (a3 == null) {
                    a3 = this.C0.getSuggestIntentAction();
                }
                if (a3 == null) {
                    a3 = "android.intent.action.SEARCH";
                }
                String str = a3;
                String a4 = r0.a(cursor, cursor.getColumnIndex("suggest_intent_data"));
                if (a4 == null) {
                    a4 = this.C0.getSuggestIntentData();
                }
                if (!(a4 == null || (a2 = r0.a(cursor, cursor.getColumnIndex("suggest_intent_data_id"))) == null)) {
                    a4 = a4 + "/" + Uri.encode(a2);
                }
                if (a4 == null) {
                    uri = null;
                } else {
                    uri = Uri.parse(a4);
                }
                intent = a(str, uri, r0.a(cursor, cursor.getColumnIndex("suggest_intent_extra_data")), r0.a(cursor, cursor.getColumnIndex("suggest_intent_query")), 0, (String) null);
            } catch (RuntimeException e2) {
                try {
                    i3 = cursor.getPosition();
                } catch (RuntimeException unused) {
                    i3 = -1;
                }
                Log.w("SearchView", "Search suggestions cursor at row " + i3 + " returned exception.", e2);
            }
            if (intent != null) {
                try {
                    getContext().startActivity(intent);
                } catch (RuntimeException e3) {
                    Log.e("SearchView", "Failed launch activity: " + intent, e3);
                }
            }
        }
        this.M.setImeVisibility(false);
        this.M.dismissDropDown();
        return true;
    }

    public final Intent a(Intent intent, SearchableInfo searchableInfo) {
        ComponentName searchActivity = searchableInfo.getSearchActivity();
        Intent intent2 = new Intent("android.intent.action.SEARCH");
        intent2.setComponent(searchActivity);
        PendingIntent activity = PendingIntent.getActivity(getContext(), 0, intent2, Constants.GB);
        Bundle bundle = new Bundle();
        Bundle bundle2 = this.D0;
        if (bundle2 != null) {
            bundle.putParcelable("app_data", bundle2);
        }
        Intent intent3 = new Intent(intent);
        int i2 = 1;
        Resources resources = getResources();
        String string = searchableInfo.getVoiceLanguageModeId() != 0 ? resources.getString(searchableInfo.getVoiceLanguageModeId()) : "free_form";
        String str = null;
        String string2 = searchableInfo.getVoicePromptTextId() != 0 ? resources.getString(searchableInfo.getVoicePromptTextId()) : null;
        String string3 = searchableInfo.getVoiceLanguageId() != 0 ? resources.getString(searchableInfo.getVoiceLanguageId()) : null;
        if (searchableInfo.getVoiceMaxResults() != 0) {
            i2 = searchableInfo.getVoiceMaxResults();
        }
        intent3.putExtra("android.speech.extra.LANGUAGE_MODEL", string);
        intent3.putExtra("android.speech.extra.PROMPT", string2);
        intent3.putExtra("android.speech.extra.LANGUAGE", string3);
        intent3.putExtra("android.speech.extra.MAX_RESULTS", i2);
        if (searchActivity != null) {
            str = searchActivity.flattenToShortString();
        }
        intent3.putExtra("calling_package", str);
        intent3.putExtra("android.speech.extra.RESULTS_PENDINGINTENT", activity);
        intent3.putExtra("android.speech.extra.RESULTS_PENDINGINTENT_BUNDLE", bundle);
        return intent3;
    }

    public static boolean a(Context context) {
        return context.getResources().getConfiguration().orientation == 2;
    }
}
