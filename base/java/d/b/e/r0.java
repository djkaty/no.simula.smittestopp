package d.b.e;

import android.annotation.SuppressLint;
import android.app.SearchManager;
import android.app.SearchableInfo;
import android.content.Context;
import android.content.pm.PackageManager;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.database.Cursor;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.os.Bundle;
import android.text.TextUtils;
import android.util.Log;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.appcompat.R$id;
import androidx.appcompat.widget.SearchView;
import com.microsoft.azure.sdk.iot.deps.serializer.ConfigurationParser;
import d.j.a.c;
import java.io.FileNotFoundException;
import java.util.List;
import java.util.WeakHashMap;

@SuppressLint({"RestrictedAPI"})
public class r0 extends c implements View.OnClickListener {
    public final SearchView I;
    public final SearchableInfo J;
    public final Context K;
    public final WeakHashMap<String, Drawable.ConstantState> L;
    public final int M;
    public boolean N = false;
    public int O = 1;
    public ColorStateList P;
    public int Q = -1;
    public int R = -1;
    public int S = -1;
    public int T = -1;
    public int U = -1;
    public int V = -1;

    public static final class a {
        public final TextView a;
        public final TextView b;

        /* renamed from: c  reason: collision with root package name */
        public final ImageView f375c;

        /* renamed from: d  reason: collision with root package name */
        public final ImageView f376d;

        /* renamed from: e  reason: collision with root package name */
        public final ImageView f377e;

        public a(View view) {
            this.a = (TextView) view.findViewById(16908308);
            this.b = (TextView) view.findViewById(16908309);
            this.f375c = (ImageView) view.findViewById(16908295);
            this.f376d = (ImageView) view.findViewById(16908296);
            this.f377e = (ImageView) view.findViewById(R$id.edit_query);
        }
    }

    public r0(Context context, SearchView searchView, SearchableInfo searchableInfo, WeakHashMap<String, Drawable.ConstantState> weakHashMap) {
        super(context, searchView.getSuggestionRowLayout(), (Cursor) null, true);
        SearchManager searchManager = (SearchManager) this.A.getSystemService("search");
        this.I = searchView;
        this.J = searchableInfo;
        this.M = searchView.getSuggestionCommitIconResId();
        this.K = context;
        this.L = weakHashMap;
    }

    public View a(Context context, Cursor cursor, ViewGroup viewGroup) {
        View inflate = this.H.inflate(this.F, viewGroup, false);
        inflate.setTag(new a(inflate));
        ((ImageView) inflate.findViewById(R$id.edit_query)).setImageResource(this.M);
        return inflate;
    }

    public CharSequence b(Cursor cursor) {
        String a2;
        String a3;
        if (cursor == null) {
            return null;
        }
        String a4 = a(cursor, cursor.getColumnIndex("suggest_intent_query"));
        if (a4 != null) {
            return a4;
        }
        if (this.J.shouldRewriteQueryFromData() && (a3 = a(cursor, cursor.getColumnIndex("suggest_intent_data"))) != null) {
            return a3;
        }
        if (!this.J.shouldRewriteQueryFromText() || (a2 = a(cursor, cursor.getColumnIndex("suggest_text_1"))) == null) {
            return null;
        }
        return a2;
    }

    public final void c(Cursor cursor) {
        Bundle extras = cursor != null ? cursor.getExtras() : null;
        if (extras == null || extras.getBoolean("in_progress")) {
        }
    }

    public View getDropDownView(int i2, View view, ViewGroup viewGroup) {
        try {
            if (!this.x) {
                return null;
            }
            this.z.moveToPosition(i2);
            if (view == null) {
                view = this.H.inflate(this.G, viewGroup, false);
            }
            a(view, this.A, this.z);
            return view;
        } catch (RuntimeException e2) {
            Log.w("SuggestionsAdapter", "Search suggestions cursor threw exception.", e2);
            View inflate = this.H.inflate(this.G, viewGroup, false);
            if (inflate != null) {
                ((a) inflate.getTag()).a.setText(e2.toString());
            }
            return inflate;
        }
    }

    public View getView(int i2, View view, ViewGroup viewGroup) {
        try {
            return super.getView(i2, view, viewGroup);
        } catch (RuntimeException e2) {
            Log.w("SuggestionsAdapter", "Search suggestions cursor threw exception.", e2);
            View a2 = a(this.A, this.z, viewGroup);
            if (a2 != null) {
                ((a) a2.getTag()).a.setText(e2.toString());
            }
            return a2;
        }
    }

    public boolean hasStableIds() {
        return false;
    }

    public void notifyDataSetChanged() {
        super.notifyDataSetChanged();
        c(this.z);
    }

    public void notifyDataSetInvalidated() {
        super.notifyDataSetInvalidated();
        c(this.z);
    }

    public void onClick(View view) {
        Object tag = view.getTag();
        if (tag instanceof CharSequence) {
            this.I.a((CharSequence) tag);
        }
    }

    public void a(Cursor cursor) {
        if (this.N) {
            Log.w("SuggestionsAdapter", "Tried to change cursor after adapter was closed.");
            if (cursor != null) {
                cursor.close();
                return;
            }
            return;
        }
        try {
            super.a(cursor);
            if (cursor != null) {
                this.Q = cursor.getColumnIndex("suggest_text_1");
                this.R = cursor.getColumnIndex("suggest_text_2");
                this.S = cursor.getColumnIndex("suggest_text_2_url");
                this.T = cursor.getColumnIndex("suggest_icon_1");
                this.U = cursor.getColumnIndex("suggest_icon_2");
                this.V = cursor.getColumnIndex("suggest_flags");
            }
        } catch (Exception e2) {
            Log.e("SuggestionsAdapter", "error changing cursor and caching columns", e2);
        }
    }

    /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r9v6, resolved type: java.lang.String} */
    /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r9v9, resolved type: android.text.SpannableString} */
    /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r9v13, resolved type: java.lang.String} */
    /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r9v14, resolved type: java.lang.String} */
    /* JADX WARNING: Multi-variable type inference failed */
    /* JADX WARNING: Removed duplicated region for block: B:56:0x0144  */
    /* JADX WARNING: Removed duplicated region for block: B:57:0x0146  */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public void a(android.view.View r18, android.content.Context r19, android.database.Cursor r20) {
        /*
            r17 = this;
            r1 = r17
            r2 = r20
            java.lang.Object r0 = r18.getTag()
            r3 = r0
            d.b.e.r0$a r3 = (d.b.e.r0.a) r3
            int r0 = r1.V
            r4 = 0
            r5 = -1
            if (r0 == r5) goto L_0x0017
            int r0 = r2.getInt(r0)
            r5 = r0
            goto L_0x0019
        L_0x0017:
            r0 = 0
            r5 = 0
        L_0x0019:
            android.widget.TextView r0 = r3.a
            r6 = 8
            if (r0 == 0) goto L_0x0037
            int r0 = r1.Q
            java.lang.String r0 = a((android.database.Cursor) r2, (int) r0)
            android.widget.TextView r7 = r3.a
            r7.setText(r0)
            boolean r0 = android.text.TextUtils.isEmpty(r0)
            if (r0 == 0) goto L_0x0034
            r7.setVisibility(r6)
            goto L_0x0037
        L_0x0034:
            r7.setVisibility(r4)
        L_0x0037:
            android.widget.TextView r0 = r3.b
            r7 = 2
            r8 = 1
            if (r0 == 0) goto L_0x00bf
            int r0 = r1.S
            java.lang.String r0 = a((android.database.Cursor) r2, (int) r0)
            if (r0 == 0) goto L_0x0086
            android.content.res.ColorStateList r9 = r1.P
            if (r9 != 0) goto L_0x0067
            android.util.TypedValue r9 = new android.util.TypedValue
            r9.<init>()
            android.content.Context r10 = r1.A
            android.content.res.Resources$Theme r10 = r10.getTheme()
            int r11 = androidx.appcompat.R$attr.textColorSearchUrl
            r10.resolveAttribute(r11, r9, r8)
            android.content.Context r10 = r1.A
            android.content.res.Resources r10 = r10.getResources()
            int r9 = r9.resourceId
            android.content.res.ColorStateList r9 = r10.getColorStateList(r9)
            r1.P = r9
        L_0x0067:
            android.text.SpannableString r9 = new android.text.SpannableString
            r9.<init>(r0)
            android.text.style.TextAppearanceSpan r15 = new android.text.style.TextAppearanceSpan
            r11 = 0
            r12 = 0
            r13 = 0
            android.content.res.ColorStateList r14 = r1.P
            r16 = 0
            r10 = r15
            r6 = r15
            r15 = r16
            r10.<init>(r11, r12, r13, r14, r15)
            int r0 = r0.length()
            r10 = 33
            r9.setSpan(r6, r4, r0, r10)
            goto L_0x008c
        L_0x0086:
            int r0 = r1.R
            java.lang.String r9 = a((android.database.Cursor) r2, (int) r0)
        L_0x008c:
            boolean r0 = android.text.TextUtils.isEmpty(r9)
            if (r0 == 0) goto L_0x009f
            android.widget.TextView r0 = r3.a
            if (r0 == 0) goto L_0x00ab
            r0.setSingleLine(r4)
            android.widget.TextView r0 = r3.a
            r0.setMaxLines(r7)
            goto L_0x00ab
        L_0x009f:
            android.widget.TextView r0 = r3.a
            if (r0 == 0) goto L_0x00ab
            r0.setSingleLine(r8)
            android.widget.TextView r0 = r3.a
            r0.setMaxLines(r8)
        L_0x00ab:
            android.widget.TextView r0 = r3.b
            r0.setText(r9)
            boolean r6 = android.text.TextUtils.isEmpty(r9)
            if (r6 == 0) goto L_0x00bc
            r6 = 8
            r0.setVisibility(r6)
            goto L_0x00bf
        L_0x00bc:
            r0.setVisibility(r4)
        L_0x00bf:
            android.widget.ImageView r6 = r3.f375c
            if (r6 == 0) goto L_0x0170
            int r0 = r1.T
            r9 = -1
            if (r0 != r9) goto L_0x00cb
            r0 = 0
            goto L_0x015d
        L_0x00cb:
            java.lang.String r0 = r2.getString(r0)
            android.graphics.drawable.Drawable r0 = r1.a((java.lang.String) r0)
            if (r0 == 0) goto L_0x00d7
            goto L_0x015d
        L_0x00d7:
            android.app.SearchableInfo r0 = r1.J
            android.content.ComponentName r0 = r0.getSearchActivity()
            java.lang.String r9 = r0.flattenToShortString()
            java.util.WeakHashMap<java.lang.String, android.graphics.drawable.Drawable$ConstantState> r10 = r1.L
            boolean r10 = r10.containsKey(r9)
            if (r10 == 0) goto L_0x0100
            java.util.WeakHashMap<java.lang.String, android.graphics.drawable.Drawable$ConstantState> r0 = r1.L
            java.lang.Object r0 = r0.get(r9)
            android.graphics.drawable.Drawable$ConstantState r0 = (android.graphics.drawable.Drawable.ConstantState) r0
            if (r0 != 0) goto L_0x00f5
            r0 = 0
            goto L_0x0150
        L_0x00f5:
            android.content.Context r9 = r1.K
            android.content.res.Resources r9 = r9.getResources()
            android.graphics.drawable.Drawable r0 = r0.newDrawable(r9)
            goto L_0x0150
        L_0x0100:
            java.lang.String r10 = "SuggestionsAdapter"
            android.content.Context r11 = r1.A
            android.content.pm.PackageManager r11 = r11.getPackageManager()
            r12 = 128(0x80, float:1.794E-43)
            android.content.pm.ActivityInfo r12 = r11.getActivityInfo(r0, r12)     // Catch:{ NameNotFoundException -> 0x0138 }
            int r13 = r12.getIconResource()
            if (r13 != 0) goto L_0x0115
            goto L_0x0141
        L_0x0115:
            java.lang.String r14 = r0.getPackageName()
            android.content.pm.ApplicationInfo r12 = r12.applicationInfo
            android.graphics.drawable.Drawable r11 = r11.getDrawable(r14, r13, r12)
            if (r11 != 0) goto L_0x0142
            java.lang.String r11 = "Invalid icon resource "
            java.lang.String r12 = " for "
            java.lang.StringBuilder r11 = e.a.a.a.a.a((java.lang.String) r11, (int) r13, (java.lang.String) r12)
            java.lang.String r0 = r0.flattenToShortString()
            r11.append(r0)
            java.lang.String r0 = r11.toString()
            android.util.Log.w(r10, r0)
            goto L_0x0141
        L_0x0138:
            r0 = move-exception
            r11 = r0
            java.lang.String r0 = r11.toString()
            android.util.Log.w(r10, r0)
        L_0x0141:
            r11 = 0
        L_0x0142:
            if (r11 != 0) goto L_0x0146
            r0 = 0
            goto L_0x014a
        L_0x0146:
            android.graphics.drawable.Drawable$ConstantState r0 = r11.getConstantState()
        L_0x014a:
            java.util.WeakHashMap<java.lang.String, android.graphics.drawable.Drawable$ConstantState> r10 = r1.L
            r10.put(r9, r0)
            r0 = r11
        L_0x0150:
            if (r0 == 0) goto L_0x0153
            goto L_0x015d
        L_0x0153:
            android.content.Context r0 = r1.A
            android.content.pm.PackageManager r0 = r0.getPackageManager()
            android.graphics.drawable.Drawable r0 = r0.getDefaultActivityIcon()
        L_0x015d:
            r9 = 4
            r6.setImageDrawable(r0)
            if (r0 != 0) goto L_0x0167
            r6.setVisibility(r9)
            goto L_0x0170
        L_0x0167:
            r6.setVisibility(r4)
            r0.setVisible(r4, r4)
            r0.setVisible(r8, r4)
        L_0x0170:
            android.widget.ImageView r0 = r3.f376d
            if (r0 == 0) goto L_0x0197
            int r6 = r1.U
            r9 = -1
            if (r6 != r9) goto L_0x017b
            r2 = 0
            goto L_0x0183
        L_0x017b:
            java.lang.String r2 = r2.getString(r6)
            android.graphics.drawable.Drawable r2 = r1.a((java.lang.String) r2)
        L_0x0183:
            r0.setImageDrawable(r2)
            if (r2 != 0) goto L_0x018e
            r6 = 8
            r0.setVisibility(r6)
            goto L_0x0197
        L_0x018e:
            r0.setVisibility(r4)
            r2.setVisible(r4, r4)
            r2.setVisible(r8, r4)
        L_0x0197:
            int r0 = r1.O
            if (r0 == r7) goto L_0x01aa
            if (r0 != r8) goto L_0x01a2
            r0 = r5 & 1
            if (r0 == 0) goto L_0x01a2
            goto L_0x01aa
        L_0x01a2:
            android.widget.ImageView r0 = r3.f377e
            r2 = 8
            r0.setVisibility(r2)
            goto L_0x01bf
        L_0x01aa:
            android.widget.ImageView r0 = r3.f377e
            r0.setVisibility(r4)
            android.widget.ImageView r0 = r3.f377e
            android.widget.TextView r2 = r3.a
            java.lang.CharSequence r2 = r2.getText()
            r0.setTag(r2)
            android.widget.ImageView r0 = r3.f377e
            r0.setOnClickListener(r1)
        L_0x01bf:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: d.b.e.r0.a(android.view.View, android.content.Context, android.database.Cursor):void");
    }

    /* JADX WARNING: Can't wrap try/catch for region: R(3:34|35|36) */
    /* JADX WARNING: Code restructure failed: missing block: B:36:0x00b5, code lost:
        throw new java.io.FileNotFoundException("Resource does not exist: " + r2);
     */
    /* JADX WARNING: Missing exception handler attribute for start block: B:34:0x009f */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public final android.graphics.drawable.Drawable a(java.lang.String r8) {
        /*
            r7 = this;
            java.lang.String r0 = "SuggestionsAdapter"
            r1 = 0
            if (r8 == 0) goto L_0x013b
            boolean r2 = r8.isEmpty()
            if (r2 != 0) goto L_0x013b
            java.lang.String r2 = "0"
            boolean r2 = r2.equals(r8)
            if (r2 == 0) goto L_0x0015
            goto L_0x013b
        L_0x0015:
            int r2 = java.lang.Integer.parseInt(r8)     // Catch:{ NumberFormatException -> 0x0072, NotFoundException -> 0x005d }
            java.lang.StringBuilder r3 = new java.lang.StringBuilder     // Catch:{ NumberFormatException -> 0x0072, NotFoundException -> 0x005d }
            r3.<init>()     // Catch:{ NumberFormatException -> 0x0072, NotFoundException -> 0x005d }
            java.lang.String r4 = "android.resource://"
            r3.append(r4)     // Catch:{ NumberFormatException -> 0x0072, NotFoundException -> 0x005d }
            android.content.Context r4 = r7.K     // Catch:{ NumberFormatException -> 0x0072, NotFoundException -> 0x005d }
            java.lang.String r4 = r4.getPackageName()     // Catch:{ NumberFormatException -> 0x0072, NotFoundException -> 0x005d }
            r3.append(r4)     // Catch:{ NumberFormatException -> 0x0072, NotFoundException -> 0x005d }
            java.lang.String r4 = "/"
            r3.append(r4)     // Catch:{ NumberFormatException -> 0x0072, NotFoundException -> 0x005d }
            r3.append(r2)     // Catch:{ NumberFormatException -> 0x0072, NotFoundException -> 0x005d }
            java.lang.String r3 = r3.toString()     // Catch:{ NumberFormatException -> 0x0072, NotFoundException -> 0x005d }
            java.util.WeakHashMap<java.lang.String, android.graphics.drawable.Drawable$ConstantState> r4 = r7.L     // Catch:{ NumberFormatException -> 0x0072, NotFoundException -> 0x005d }
            java.lang.Object r4 = r4.get(r3)     // Catch:{ NumberFormatException -> 0x0072, NotFoundException -> 0x005d }
            android.graphics.drawable.Drawable$ConstantState r4 = (android.graphics.drawable.Drawable.ConstantState) r4     // Catch:{ NumberFormatException -> 0x0072, NotFoundException -> 0x005d }
            if (r4 != 0) goto L_0x0044
            r4 = r1
            goto L_0x0048
        L_0x0044:
            android.graphics.drawable.Drawable r4 = r4.newDrawable()     // Catch:{ NumberFormatException -> 0x0072, NotFoundException -> 0x005d }
        L_0x0048:
            if (r4 == 0) goto L_0x004b
            return r4
        L_0x004b:
            android.content.Context r4 = r7.K     // Catch:{ NumberFormatException -> 0x0072, NotFoundException -> 0x005d }
            android.graphics.drawable.Drawable r2 = d.i.b.a.c(r4, r2)     // Catch:{ NumberFormatException -> 0x0072, NotFoundException -> 0x005d }
            if (r2 == 0) goto L_0x005c
            java.util.WeakHashMap<java.lang.String, android.graphics.drawable.Drawable$ConstantState> r4 = r7.L     // Catch:{ NumberFormatException -> 0x0072, NotFoundException -> 0x005d }
            android.graphics.drawable.Drawable$ConstantState r5 = r2.getConstantState()     // Catch:{ NumberFormatException -> 0x0072, NotFoundException -> 0x005d }
            r4.put(r3, r5)     // Catch:{ NumberFormatException -> 0x0072, NotFoundException -> 0x005d }
        L_0x005c:
            return r2
        L_0x005d:
            java.lang.StringBuilder r2 = new java.lang.StringBuilder
            r2.<init>()
            java.lang.String r3 = "Icon resource not found: "
            r2.append(r3)
            r2.append(r8)
            java.lang.String r8 = r2.toString()
            android.util.Log.w(r0, r8)
            return r1
        L_0x0072:
            java.util.WeakHashMap<java.lang.String, android.graphics.drawable.Drawable$ConstantState> r2 = r7.L
            java.lang.Object r2 = r2.get(r8)
            android.graphics.drawable.Drawable$ConstantState r2 = (android.graphics.drawable.Drawable.ConstantState) r2
            if (r2 != 0) goto L_0x007f
            r2 = r1
            goto L_0x0083
        L_0x007f:
            android.graphics.drawable.Drawable r2 = r2.newDrawable()
        L_0x0083:
            if (r2 == 0) goto L_0x0086
            return r2
        L_0x0086:
            android.net.Uri r2 = android.net.Uri.parse(r8)
            java.lang.String r3 = "Error closing icon stream for "
            java.lang.String r4 = r2.getScheme()     // Catch:{ FileNotFoundException -> 0x010f }
            java.lang.String r5 = "android.resource"
            boolean r4 = r5.equals(r4)     // Catch:{ FileNotFoundException -> 0x010f }
            if (r4 == 0) goto L_0x00b6
            android.graphics.drawable.Drawable r0 = r7.a((android.net.Uri) r2)     // Catch:{ NotFoundException -> 0x009f }
            r1 = r0
            goto L_0x0130
        L_0x009f:
            java.io.FileNotFoundException r3 = new java.io.FileNotFoundException     // Catch:{ FileNotFoundException -> 0x010f }
            java.lang.StringBuilder r4 = new java.lang.StringBuilder     // Catch:{ FileNotFoundException -> 0x010f }
            r4.<init>()     // Catch:{ FileNotFoundException -> 0x010f }
            java.lang.String r5 = "Resource does not exist: "
            r4.append(r5)     // Catch:{ FileNotFoundException -> 0x010f }
            r4.append(r2)     // Catch:{ FileNotFoundException -> 0x010f }
            java.lang.String r4 = r4.toString()     // Catch:{ FileNotFoundException -> 0x010f }
            r3.<init>(r4)     // Catch:{ FileNotFoundException -> 0x010f }
            throw r3     // Catch:{ FileNotFoundException -> 0x010f }
        L_0x00b6:
            android.content.Context r4 = r7.K     // Catch:{ FileNotFoundException -> 0x010f }
            android.content.ContentResolver r4 = r4.getContentResolver()     // Catch:{ FileNotFoundException -> 0x010f }
            java.io.InputStream r4 = r4.openInputStream(r2)     // Catch:{ FileNotFoundException -> 0x010f }
            if (r4 == 0) goto L_0x00f8
            android.graphics.drawable.Drawable r5 = android.graphics.drawable.Drawable.createFromStream(r4, r1)     // Catch:{ all -> 0x00df }
            r4.close()     // Catch:{ IOException -> 0x00ca }
            goto L_0x00dd
        L_0x00ca:
            r4 = move-exception
            java.lang.StringBuilder r6 = new java.lang.StringBuilder     // Catch:{ FileNotFoundException -> 0x010f }
            r6.<init>()     // Catch:{ FileNotFoundException -> 0x010f }
            r6.append(r3)     // Catch:{ FileNotFoundException -> 0x010f }
            r6.append(r2)     // Catch:{ FileNotFoundException -> 0x010f }
            java.lang.String r3 = r6.toString()     // Catch:{ FileNotFoundException -> 0x010f }
            android.util.Log.e(r0, r3, r4)     // Catch:{ FileNotFoundException -> 0x010f }
        L_0x00dd:
            r1 = r5
            goto L_0x0130
        L_0x00df:
            r5 = move-exception
            r4.close()     // Catch:{ IOException -> 0x00e4 }
            goto L_0x00f7
        L_0x00e4:
            r4 = move-exception
            java.lang.StringBuilder r6 = new java.lang.StringBuilder     // Catch:{ FileNotFoundException -> 0x010f }
            r6.<init>()     // Catch:{ FileNotFoundException -> 0x010f }
            r6.append(r3)     // Catch:{ FileNotFoundException -> 0x010f }
            r6.append(r2)     // Catch:{ FileNotFoundException -> 0x010f }
            java.lang.String r3 = r6.toString()     // Catch:{ FileNotFoundException -> 0x010f }
            android.util.Log.e(r0, r3, r4)     // Catch:{ FileNotFoundException -> 0x010f }
        L_0x00f7:
            throw r5     // Catch:{ FileNotFoundException -> 0x010f }
        L_0x00f8:
            java.io.FileNotFoundException r3 = new java.io.FileNotFoundException     // Catch:{ FileNotFoundException -> 0x010f }
            java.lang.StringBuilder r4 = new java.lang.StringBuilder     // Catch:{ FileNotFoundException -> 0x010f }
            r4.<init>()     // Catch:{ FileNotFoundException -> 0x010f }
            java.lang.String r5 = "Failed to open "
            r4.append(r5)     // Catch:{ FileNotFoundException -> 0x010f }
            r4.append(r2)     // Catch:{ FileNotFoundException -> 0x010f }
            java.lang.String r4 = r4.toString()     // Catch:{ FileNotFoundException -> 0x010f }
            r3.<init>(r4)     // Catch:{ FileNotFoundException -> 0x010f }
            throw r3     // Catch:{ FileNotFoundException -> 0x010f }
        L_0x010f:
            r3 = move-exception
            java.lang.StringBuilder r4 = new java.lang.StringBuilder
            r4.<init>()
            java.lang.String r5 = "Icon not found: "
            r4.append(r5)
            r4.append(r2)
            java.lang.String r2 = ", "
            r4.append(r2)
            java.lang.String r2 = r3.getMessage()
            r4.append(r2)
            java.lang.String r2 = r4.toString()
            android.util.Log.w(r0, r2)
        L_0x0130:
            if (r1 == 0) goto L_0x013b
            java.util.WeakHashMap<java.lang.String, android.graphics.drawable.Drawable$ConstantState> r0 = r7.L
            android.graphics.drawable.Drawable$ConstantState r2 = r1.getConstantState()
            r0.put(r8, r2)
        L_0x013b:
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: d.b.e.r0.a(java.lang.String):android.graphics.drawable.Drawable");
    }

    public static String a(Cursor cursor, String str) {
        return a(cursor, cursor.getColumnIndex(str));
    }

    public static String a(Cursor cursor, int i2) {
        if (i2 == -1) {
            return null;
        }
        try {
            return cursor.getString(i2);
        } catch (Exception e2) {
            Log.e("SuggestionsAdapter", "unexpected error retrieving valid column from cursor, did the remote process die?", e2);
            return null;
        }
    }

    public Drawable a(Uri uri) {
        int i2;
        String authority = uri.getAuthority();
        if (!TextUtils.isEmpty(authority)) {
            try {
                Resources resourcesForApplication = this.A.getPackageManager().getResourcesForApplication(authority);
                List<String> pathSegments = uri.getPathSegments();
                if (pathSegments != null) {
                    int size = pathSegments.size();
                    if (size == 1) {
                        try {
                            i2 = Integer.parseInt(pathSegments.get(0));
                        } catch (NumberFormatException unused) {
                            throw new FileNotFoundException("Single path segment is not a resource ID: " + uri);
                        }
                    } else if (size == 2) {
                        i2 = resourcesForApplication.getIdentifier(pathSegments.get(1), pathSegments.get(0), authority);
                    } else {
                        throw new FileNotFoundException("More than two path segments: " + uri);
                    }
                    if (i2 != 0) {
                        return resourcesForApplication.getDrawable(i2);
                    }
                    throw new FileNotFoundException("No resource found for: " + uri);
                }
                throw new FileNotFoundException("No path: " + uri);
            } catch (PackageManager.NameNotFoundException unused2) {
                throw new FileNotFoundException("No package found for authority: " + uri);
            }
        } else {
            throw new FileNotFoundException("No authority: " + uri);
        }
    }

    public Cursor a(SearchableInfo searchableInfo, String str, int i2) {
        String suggestAuthority;
        String[] strArr = null;
        if (searchableInfo == null || (suggestAuthority = searchableInfo.getSuggestAuthority()) == null) {
            return null;
        }
        Uri.Builder fragment = new Uri.Builder().scheme(ConfigurationParser.CONTENT_NAME).authority(suggestAuthority).query("").fragment("");
        String suggestPath = searchableInfo.getSuggestPath();
        if (suggestPath != null) {
            fragment.appendEncodedPath(suggestPath);
        }
        fragment.appendPath("search_suggest_query");
        String suggestSelection = searchableInfo.getSuggestSelection();
        if (suggestSelection != null) {
            strArr = new String[]{str};
        } else {
            fragment.appendPath(str);
        }
        String[] strArr2 = strArr;
        if (i2 > 0) {
            fragment.appendQueryParameter("limit", String.valueOf(i2));
        }
        return this.A.getContentResolver().query(fragment.build(), (String[]) null, suggestSelection, strArr2, (String) null);
    }
}
