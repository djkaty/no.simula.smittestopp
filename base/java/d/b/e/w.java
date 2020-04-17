package d.b.e;

import android.content.Context;
import android.content.DialogInterface;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.database.DataSetObserver;
import android.graphics.PorterDuff;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.os.Parcel;
import android.os.Parcelable;
import android.util.AttributeSet;
import android.util.Log;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewTreeObserver;
import android.widget.AdapterView;
import android.widget.ListAdapter;
import android.widget.ListView;
import android.widget.PopupWindow;
import android.widget.Spinner;
import android.widget.SpinnerAdapter;
import android.widget.ThemedSpinnerAdapter;
import androidx.appcompat.app.AlertController;
import d.b.a.g;
import d.i.i.n;

public class w extends Spinner {
    public static final int[] F = {16843505};
    public SpinnerAdapter A;
    public final boolean B;
    public f C;
    public int D;
    public final Rect E = new Rect();
    public final e x;
    public final Context y;
    public h0 z;

    public class a implements ViewTreeObserver.OnGlobalLayoutListener {
        public a() {
        }

        public void onGlobalLayout() {
            if (!w.this.getInternalPopup().a()) {
                w.this.a();
            }
            ViewTreeObserver viewTreeObserver = w.this.getViewTreeObserver();
            if (viewTreeObserver != null) {
                viewTreeObserver.removeOnGlobalLayoutListener(this);
            }
        }
    }

    public class b implements f, DialogInterface.OnClickListener {
        public g x;
        public ListAdapter y;
        public CharSequence z;

        public b() {
        }

        public boolean a() {
            g gVar = this.x;
            if (gVar != null) {
                return gVar.isShowing();
            }
            return false;
        }

        public int b() {
            return 0;
        }

        public void b(int i2) {
            Log.e("AppCompatSpinner", "Cannot set vertical offset for MODE_DIALOG, ignoring");
        }

        public void c(int i2) {
            Log.e("AppCompatSpinner", "Cannot set horizontal (original) offset for MODE_DIALOG, ignoring");
        }

        public int d() {
            return 0;
        }

        public void dismiss() {
            g gVar = this.x;
            if (gVar != null) {
                gVar.dismiss();
                this.x = null;
            }
        }

        public Drawable e() {
            return null;
        }

        public CharSequence f() {
            return this.z;
        }

        public void onClick(DialogInterface dialogInterface, int i2) {
            w.this.setSelection(i2);
            if (w.this.getOnItemClickListener() != null) {
                w.this.performItemClick((View) null, i2, this.y.getItemId(i2));
            }
            g gVar = this.x;
            if (gVar != null) {
                gVar.dismiss();
                this.x = null;
            }
        }

        public void a(ListAdapter listAdapter) {
            this.y = listAdapter;
        }

        public void a(CharSequence charSequence) {
            this.z = charSequence;
        }

        public void a(int i2, int i3) {
            if (this.y != null) {
                g.a aVar = new g.a(w.this.getPopupContext());
                CharSequence charSequence = this.z;
                if (charSequence != null) {
                    aVar.a.f13f = charSequence;
                }
                ListAdapter listAdapter = this.y;
                int selectedItemPosition = w.this.getSelectedItemPosition();
                AlertController.b bVar = aVar.a;
                bVar.f19l = listAdapter;
                bVar.m = this;
                bVar.p = selectedItemPosition;
                bVar.o = true;
                g a = aVar.a();
                this.x = a;
                ListView listView = a.z.f4g;
                listView.setTextDirection(i2);
                listView.setTextAlignment(i3);
                this.x.show();
            }
        }

        public void a(Drawable drawable) {
            Log.e("AppCompatSpinner", "Cannot set popup background for MODE_DIALOG, ignoring");
        }

        public void a(int i2) {
            Log.e("AppCompatSpinner", "Cannot set horizontal offset for MODE_DIALOG, ignoring");
        }
    }

    public static class c implements ListAdapter, SpinnerAdapter {
        public SpinnerAdapter x;
        public ListAdapter y;

        public c(SpinnerAdapter spinnerAdapter, Resources.Theme theme) {
            this.x = spinnerAdapter;
            if (spinnerAdapter instanceof ListAdapter) {
                this.y = (ListAdapter) spinnerAdapter;
            }
            if (theme == null) {
                return;
            }
            if (Build.VERSION.SDK_INT >= 23 && (spinnerAdapter instanceof ThemedSpinnerAdapter)) {
                ThemedSpinnerAdapter themedSpinnerAdapter = (ThemedSpinnerAdapter) spinnerAdapter;
                if (themedSpinnerAdapter.getDropDownViewTheme() != theme) {
                    themedSpinnerAdapter.setDropDownViewTheme(theme);
                }
            } else if (spinnerAdapter instanceof t0) {
                t0 t0Var = (t0) spinnerAdapter;
                if (t0Var.getDropDownViewTheme() == null) {
                    t0Var.setDropDownViewTheme(theme);
                }
            }
        }

        public boolean areAllItemsEnabled() {
            ListAdapter listAdapter = this.y;
            if (listAdapter != null) {
                return listAdapter.areAllItemsEnabled();
            }
            return true;
        }

        public int getCount() {
            SpinnerAdapter spinnerAdapter = this.x;
            if (spinnerAdapter == null) {
                return 0;
            }
            return spinnerAdapter.getCount();
        }

        public View getDropDownView(int i2, View view, ViewGroup viewGroup) {
            SpinnerAdapter spinnerAdapter = this.x;
            if (spinnerAdapter == null) {
                return null;
            }
            return spinnerAdapter.getDropDownView(i2, view, viewGroup);
        }

        public Object getItem(int i2) {
            SpinnerAdapter spinnerAdapter = this.x;
            if (spinnerAdapter == null) {
                return null;
            }
            return spinnerAdapter.getItem(i2);
        }

        public long getItemId(int i2) {
            SpinnerAdapter spinnerAdapter = this.x;
            if (spinnerAdapter == null) {
                return -1;
            }
            return spinnerAdapter.getItemId(i2);
        }

        public int getItemViewType(int i2) {
            return 0;
        }

        public View getView(int i2, View view, ViewGroup viewGroup) {
            SpinnerAdapter spinnerAdapter = this.x;
            if (spinnerAdapter == null) {
                return null;
            }
            return spinnerAdapter.getDropDownView(i2, view, viewGroup);
        }

        public int getViewTypeCount() {
            return 1;
        }

        public boolean hasStableIds() {
            SpinnerAdapter spinnerAdapter = this.x;
            return spinnerAdapter != null && spinnerAdapter.hasStableIds();
        }

        public boolean isEmpty() {
            return getCount() == 0;
        }

        public boolean isEnabled(int i2) {
            ListAdapter listAdapter = this.y;
            if (listAdapter != null) {
                return listAdapter.isEnabled(i2);
            }
            return true;
        }

        public void registerDataSetObserver(DataSetObserver dataSetObserver) {
            SpinnerAdapter spinnerAdapter = this.x;
            if (spinnerAdapter != null) {
                spinnerAdapter.registerDataSetObserver(dataSetObserver);
            }
        }

        public void unregisterDataSetObserver(DataSetObserver dataSetObserver) {
            SpinnerAdapter spinnerAdapter = this.x;
            if (spinnerAdapter != null) {
                spinnerAdapter.unregisterDataSetObserver(dataSetObserver);
            }
        }
    }

    public class d extends k0 implements f {
        public CharSequence c0;
        public ListAdapter d0;
        public final Rect e0 = new Rect();
        public int f0;

        public class a implements AdapterView.OnItemClickListener {
            public a(w wVar) {
            }

            public void onItemClick(AdapterView<?> adapterView, View view, int i2, long j2) {
                w.this.setSelection(i2);
                if (w.this.getOnItemClickListener() != null) {
                    d dVar = d.this;
                    w.this.performItemClick(view, i2, dVar.d0.getItemId(i2));
                }
                d.this.dismiss();
            }
        }

        public class b implements ViewTreeObserver.OnGlobalLayoutListener {
            public b() {
            }

            public void onGlobalLayout() {
                d dVar = d.this;
                w wVar = w.this;
                if (dVar != null) {
                    if (!(n.s(wVar) && wVar.getGlobalVisibleRect(dVar.e0))) {
                        d.this.dismiss();
                        return;
                    }
                    d.this.h();
                    d.super.c();
                    return;
                }
                throw null;
            }
        }

        public class c implements PopupWindow.OnDismissListener {
            public final /* synthetic */ ViewTreeObserver.OnGlobalLayoutListener x;

            public c(ViewTreeObserver.OnGlobalLayoutListener onGlobalLayoutListener) {
                this.x = onGlobalLayoutListener;
            }

            public void onDismiss() {
                ViewTreeObserver viewTreeObserver = w.this.getViewTreeObserver();
                if (viewTreeObserver != null) {
                    viewTreeObserver.removeGlobalOnLayoutListener(this.x);
                }
            }
        }

        public d(Context context, AttributeSet attributeSet, int i2) {
            super(context, attributeSet, i2, 0);
            this.O = w.this;
            a(true);
            this.M = 0;
            this.P = new a(w.this);
        }

        public void c(int i2) {
            this.f0 = i2;
        }

        public CharSequence f() {
            return this.c0;
        }

        public void h() {
            int i2;
            Drawable e2 = e();
            int i3 = 0;
            if (e2 != null) {
                e2.getPadding(w.this.E);
                i3 = d1.a(w.this) ? w.this.E.right : -w.this.E.left;
            } else {
                Rect rect = w.this.E;
                rect.right = 0;
                rect.left = 0;
            }
            int paddingLeft = w.this.getPaddingLeft();
            int paddingRight = w.this.getPaddingRight();
            int width = w.this.getWidth();
            w wVar = w.this;
            int i4 = wVar.D;
            if (i4 == -2) {
                int a2 = wVar.a((SpinnerAdapter) this.d0, e());
                int i5 = w.this.getContext().getResources().getDisplayMetrics().widthPixels;
                Rect rect2 = w.this.E;
                int i6 = (i5 - rect2.left) - rect2.right;
                if (a2 > i6) {
                    a2 = i6;
                }
                d(Math.max(a2, (width - paddingLeft) - paddingRight));
            } else if (i4 == -1) {
                d((width - paddingLeft) - paddingRight);
            } else {
                d(i4);
            }
            if (d1.a(w.this)) {
                i2 = (((width - paddingRight) - this.B) - this.f0) + i3;
            } else {
                i2 = paddingLeft + this.f0 + i3;
            }
            this.C = i2;
        }

        public void a(ListAdapter listAdapter) {
            super.a(listAdapter);
            this.d0 = listAdapter;
        }

        public void a(CharSequence charSequence) {
            this.c0 = charSequence;
        }

        public void a(int i2, int i3) {
            ViewTreeObserver viewTreeObserver;
            boolean a2 = a();
            h();
            this.Y.setInputMethodMode(2);
            super.c();
            f0 f0Var = this.z;
            f0Var.setChoiceMode(1);
            f0Var.setTextDirection(i2);
            f0Var.setTextAlignment(i3);
            int selectedItemPosition = w.this.getSelectedItemPosition();
            f0 f0Var2 = this.z;
            if (a() && f0Var2 != null) {
                f0Var2.setListSelectionHidden(false);
                f0Var2.setSelection(selectedItemPosition);
                if (f0Var2.getChoiceMode() != 0) {
                    f0Var2.setItemChecked(selectedItemPosition, true);
                }
            }
            if (!a2 && (viewTreeObserver = w.this.getViewTreeObserver()) != null) {
                b bVar = new b();
                viewTreeObserver.addOnGlobalLayoutListener(bVar);
                this.Y.setOnDismissListener(new c(bVar));
            }
        }
    }

    public static class e extends View.BaseSavedState {
        public static final Parcelable.Creator<e> CREATOR = new a();
        public boolean x;

        public static class a implements Parcelable.Creator<e> {
            public Object createFromParcel(Parcel parcel) {
                return new e(parcel);
            }

            public Object[] newArray(int i2) {
                return new e[i2];
            }
        }

        public e(Parcelable parcelable) {
            super(parcelable);
        }

        public void writeToParcel(Parcel parcel, int i2) {
            super.writeToParcel(parcel, i2);
            parcel.writeByte(this.x ? (byte) 1 : 0);
        }

        public e(Parcel parcel) {
            super(parcel);
            this.x = parcel.readByte() != 0;
        }
    }

    public interface f {
        void a(int i2);

        void a(int i2, int i3);

        void a(Drawable drawable);

        void a(ListAdapter listAdapter);

        void a(CharSequence charSequence);

        boolean a();

        int b();

        void b(int i2);

        void c(int i2);

        int d();

        void dismiss();

        Drawable e();

        CharSequence f();
    }

    /* JADX WARNING: Code restructure failed: missing block: B:20:0x0050, code lost:
        if (r4 != null) goto L_0x0052;
     */
    /* JADX WARNING: Removed duplicated region for block: B:36:0x00d3  */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public w(android.content.Context r9, android.util.AttributeSet r10, int r11) {
        /*
            r8 = this;
            r8.<init>(r9, r10, r11)
            android.graphics.Rect r0 = new android.graphics.Rect
            r0.<init>()
            r8.E = r0
            int[] r0 = androidx.appcompat.R$styleable.Spinner
            r1 = 0
            android.content.res.TypedArray r0 = r9.obtainStyledAttributes(r10, r0, r11, r1)
            d.b.e.e r2 = new d.b.e.e
            r2.<init>(r8)
            r8.x = r2
            int r2 = androidx.appcompat.R$styleable.Spinner_popupTheme
            int r2 = r0.getResourceId(r2, r1)
            if (r2 == 0) goto L_0x0028
            d.b.d.c r3 = new d.b.d.c
            r3.<init>(r9, r2)
            r8.y = r3
            goto L_0x002a
        L_0x0028:
            r8.y = r9
        L_0x002a:
            r2 = 0
            r3 = -1
            int[] r4 = F     // Catch:{ Exception -> 0x0046, all -> 0x0043 }
            android.content.res.TypedArray r4 = r9.obtainStyledAttributes(r10, r4, r11, r1)     // Catch:{ Exception -> 0x0046, all -> 0x0043 }
            boolean r5 = r4.hasValue(r1)     // Catch:{ Exception -> 0x0041 }
            if (r5 == 0) goto L_0x0052
            int r3 = r4.getInt(r1, r1)     // Catch:{ Exception -> 0x0041 }
            goto L_0x0052
        L_0x003d:
            r9 = move-exception
            r2 = r4
            goto L_0x00d1
        L_0x0041:
            r5 = move-exception
            goto L_0x0049
        L_0x0043:
            r9 = move-exception
            goto L_0x00d1
        L_0x0046:
            r4 = move-exception
            r5 = r4
            r4 = r2
        L_0x0049:
            java.lang.String r6 = "AppCompatSpinner"
            java.lang.String r7 = "Could not read android:spinnerMode"
            android.util.Log.i(r6, r7, r5)     // Catch:{ all -> 0x003d }
            if (r4 == 0) goto L_0x0055
        L_0x0052:
            r4.recycle()
        L_0x0055:
            r4 = 1
            if (r3 == 0) goto L_0x0095
            if (r3 == r4) goto L_0x005b
            goto L_0x00a5
        L_0x005b:
            d.b.e.w$d r3 = new d.b.e.w$d
            android.content.Context r5 = r8.y
            r3.<init>(r5, r10, r11)
            android.content.Context r5 = r8.y
            int[] r6 = androidx.appcompat.R$styleable.Spinner
            d.b.e.x0 r1 = d.b.e.x0.a(r5, r10, r6, r11, r1)
            int r5 = androidx.appcompat.R$styleable.Spinner_android_dropDownWidth
            r6 = -2
            int r5 = r1.e(r5, r6)
            r8.D = r5
            int r5 = androidx.appcompat.R$styleable.Spinner_android_popupBackground
            android.graphics.drawable.Drawable r5 = r1.b(r5)
            android.widget.PopupWindow r6 = r3.Y
            r6.setBackgroundDrawable(r5)
            int r5 = androidx.appcompat.R$styleable.Spinner_android_prompt
            java.lang.String r5 = r0.getString(r5)
            r3.c0 = r5
            android.content.res.TypedArray r1 = r1.b
            r1.recycle()
            r8.C = r3
            d.b.e.v r1 = new d.b.e.v
            r1.<init>(r8, r8, r3)
            r8.z = r1
            goto L_0x00a5
        L_0x0095:
            d.b.e.w$b r1 = new d.b.e.w$b
            r1.<init>()
            r8.C = r1
            int r3 = androidx.appcompat.R$styleable.Spinner_android_prompt
            java.lang.String r3 = r0.getString(r3)
            r1.a((java.lang.CharSequence) r3)
        L_0x00a5:
            int r1 = androidx.appcompat.R$styleable.Spinner_android_entries
            java.lang.CharSequence[] r1 = r0.getTextArray(r1)
            if (r1 == 0) goto L_0x00bd
            android.widget.ArrayAdapter r3 = new android.widget.ArrayAdapter
            r5 = 17367048(0x1090008, float:2.5162948E-38)
            r3.<init>(r9, r5, r1)
            int r9 = androidx.appcompat.R$layout.support_simple_spinner_dropdown_item
            r3.setDropDownViewResource(r9)
            r8.setAdapter((android.widget.SpinnerAdapter) r3)
        L_0x00bd:
            r0.recycle()
            r8.B = r4
            android.widget.SpinnerAdapter r9 = r8.A
            if (r9 == 0) goto L_0x00cb
            r8.setAdapter((android.widget.SpinnerAdapter) r9)
            r8.A = r2
        L_0x00cb:
            d.b.e.e r9 = r8.x
            r9.a(r10, r11)
            return
        L_0x00d1:
            if (r2 == 0) goto L_0x00d6
            r2.recycle()
        L_0x00d6:
            throw r9
        */
        throw new UnsupportedOperationException("Method not decompiled: d.b.e.w.<init>(android.content.Context, android.util.AttributeSet, int):void");
    }

    public int a(SpinnerAdapter spinnerAdapter, Drawable drawable) {
        int i2 = 0;
        if (spinnerAdapter == null) {
            return 0;
        }
        int makeMeasureSpec = View.MeasureSpec.makeMeasureSpec(getMeasuredWidth(), 0);
        int makeMeasureSpec2 = View.MeasureSpec.makeMeasureSpec(getMeasuredHeight(), 0);
        int max = Math.max(0, getSelectedItemPosition());
        int min = Math.min(spinnerAdapter.getCount(), max + 15);
        View view = null;
        int i3 = 0;
        for (int max2 = Math.max(0, max - (15 - (min - max))); max2 < min; max2++) {
            int itemViewType = spinnerAdapter.getItemViewType(max2);
            if (itemViewType != i2) {
                view = null;
                i2 = itemViewType;
            }
            view = spinnerAdapter.getView(max2, view, this);
            if (view.getLayoutParams() == null) {
                view.setLayoutParams(new ViewGroup.LayoutParams(-2, -2));
            }
            view.measure(makeMeasureSpec, makeMeasureSpec2);
            i3 = Math.max(i3, view.getMeasuredWidth());
        }
        if (drawable == null) {
            return i3;
        }
        drawable.getPadding(this.E);
        Rect rect = this.E;
        return i3 + rect.left + rect.right;
    }

    public void drawableStateChanged() {
        super.drawableStateChanged();
        e eVar = this.x;
        if (eVar != null) {
            eVar.a();
        }
    }

    public int getDropDownHorizontalOffset() {
        f fVar = this.C;
        if (fVar != null) {
            return fVar.b();
        }
        return super.getDropDownHorizontalOffset();
    }

    public int getDropDownVerticalOffset() {
        f fVar = this.C;
        if (fVar != null) {
            return fVar.d();
        }
        return super.getDropDownVerticalOffset();
    }

    public int getDropDownWidth() {
        if (this.C != null) {
            return this.D;
        }
        return super.getDropDownWidth();
    }

    public final f getInternalPopup() {
        return this.C;
    }

    public Drawable getPopupBackground() {
        f fVar = this.C;
        if (fVar != null) {
            return fVar.e();
        }
        return super.getPopupBackground();
    }

    public Context getPopupContext() {
        return this.y;
    }

    public CharSequence getPrompt() {
        f fVar = this.C;
        return fVar != null ? fVar.f() : super.getPrompt();
    }

    public ColorStateList getSupportBackgroundTintList() {
        e eVar = this.x;
        if (eVar != null) {
            return eVar.b();
        }
        return null;
    }

    public PorterDuff.Mode getSupportBackgroundTintMode() {
        e eVar = this.x;
        if (eVar != null) {
            return eVar.c();
        }
        return null;
    }

    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        f fVar = this.C;
        if (fVar != null && fVar.a()) {
            this.C.dismiss();
        }
    }

    public void onMeasure(int i2, int i3) {
        super.onMeasure(i2, i3);
        if (this.C != null && View.MeasureSpec.getMode(i2) == Integer.MIN_VALUE) {
            setMeasuredDimension(Math.min(Math.max(getMeasuredWidth(), a(getAdapter(), getBackground())), View.MeasureSpec.getSize(i2)), getMeasuredHeight());
        }
    }

    public void onRestoreInstanceState(Parcelable parcelable) {
        ViewTreeObserver viewTreeObserver;
        e eVar = (e) parcelable;
        super.onRestoreInstanceState(eVar.getSuperState());
        if (eVar.x && (viewTreeObserver = getViewTreeObserver()) != null) {
            viewTreeObserver.addOnGlobalLayoutListener(new a());
        }
    }

    public Parcelable onSaveInstanceState() {
        e eVar = new e(super.onSaveInstanceState());
        f fVar = this.C;
        eVar.x = fVar != null && fVar.a();
        return eVar;
    }

    public boolean onTouchEvent(MotionEvent motionEvent) {
        h0 h0Var = this.z;
        if (h0Var == null || !h0Var.onTouch(this, motionEvent)) {
            return super.onTouchEvent(motionEvent);
        }
        return true;
    }

    public boolean performClick() {
        f fVar = this.C;
        if (fVar == null) {
            return super.performClick();
        }
        if (fVar.a()) {
            return true;
        }
        a();
        return true;
    }

    public void setBackgroundDrawable(Drawable drawable) {
        super.setBackgroundDrawable(drawable);
        e eVar = this.x;
        if (eVar != null) {
            eVar.d();
        }
    }

    public void setBackgroundResource(int i2) {
        super.setBackgroundResource(i2);
        e eVar = this.x;
        if (eVar != null) {
            eVar.a(i2);
        }
    }

    public void setDropDownHorizontalOffset(int i2) {
        f fVar = this.C;
        if (fVar != null) {
            fVar.c(i2);
            this.C.a(i2);
            return;
        }
        super.setDropDownHorizontalOffset(i2);
    }

    public void setDropDownVerticalOffset(int i2) {
        f fVar = this.C;
        if (fVar != null) {
            fVar.b(i2);
        } else {
            super.setDropDownVerticalOffset(i2);
        }
    }

    public void setDropDownWidth(int i2) {
        if (this.C != null) {
            this.D = i2;
        } else {
            super.setDropDownWidth(i2);
        }
    }

    public void setPopupBackgroundDrawable(Drawable drawable) {
        f fVar = this.C;
        if (fVar != null) {
            fVar.a(drawable);
        } else {
            super.setPopupBackgroundDrawable(drawable);
        }
    }

    public void setPopupBackgroundResource(int i2) {
        setPopupBackgroundDrawable(d.b.b.a.a.c(getPopupContext(), i2));
    }

    public void setPrompt(CharSequence charSequence) {
        f fVar = this.C;
        if (fVar != null) {
            fVar.a(charSequence);
        } else {
            super.setPrompt(charSequence);
        }
    }

    public void setSupportBackgroundTintList(ColorStateList colorStateList) {
        e eVar = this.x;
        if (eVar != null) {
            eVar.b(colorStateList);
        }
    }

    public void setSupportBackgroundTintMode(PorterDuff.Mode mode) {
        e eVar = this.x;
        if (eVar != null) {
            eVar.a(mode);
        }
    }

    public void setAdapter(SpinnerAdapter spinnerAdapter) {
        if (!this.B) {
            this.A = spinnerAdapter;
            return;
        }
        super.setAdapter(spinnerAdapter);
        if (this.C != null) {
            Context context = this.y;
            if (context == null) {
                context = getContext();
            }
            this.C.a((ListAdapter) new c(spinnerAdapter, context.getTheme()));
        }
    }

    public void a() {
        this.C.a(getTextDirection(), getTextAlignment());
    }
}
