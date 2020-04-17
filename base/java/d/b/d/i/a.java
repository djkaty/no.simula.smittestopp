package d.b.d.i;

import android.content.Context;
import android.content.Intent;
import android.content.res.ColorStateList;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import android.view.ActionProvider;
import android.view.ContextMenu;
import android.view.KeyEvent;
import android.view.MenuItem;
import android.view.SubMenu;
import android.view.View;
import d.b.a.r;
import d.i.d.a.b;

public class a implements b {
    public final int a;
    public final int b;

    /* renamed from: c  reason: collision with root package name */
    public final int f282c;

    /* renamed from: d  reason: collision with root package name */
    public CharSequence f283d;

    /* renamed from: e  reason: collision with root package name */
    public CharSequence f284e;

    /* renamed from: f  reason: collision with root package name */
    public Intent f285f;

    /* renamed from: g  reason: collision with root package name */
    public char f286g;

    /* renamed from: h  reason: collision with root package name */
    public int f287h = 4096;

    /* renamed from: i  reason: collision with root package name */
    public char f288i;

    /* renamed from: j  reason: collision with root package name */
    public int f289j = 4096;

    /* renamed from: k  reason: collision with root package name */
    public Drawable f290k;

    /* renamed from: l  reason: collision with root package name */
    public Context f291l;
    public CharSequence m;
    public CharSequence n;
    public ColorStateList o = null;
    public PorterDuff.Mode p = null;
    public boolean q = false;
    public boolean r = false;
    public int s = 16;

    public a(Context context, int i2, int i3, int i4, int i5, CharSequence charSequence) {
        this.f291l = context;
        this.a = i3;
        this.b = i2;
        this.f282c = i5;
        this.f283d = charSequence;
    }

    public b a(d.i.i.b bVar) {
        throw new UnsupportedOperationException();
    }

    public d.i.i.b a() {
        return null;
    }

    public final void b() {
        if (this.f290k == null) {
            return;
        }
        if (this.q || this.r) {
            Drawable c2 = r.c(this.f290k);
            this.f290k = c2;
            Drawable mutate = c2.mutate();
            this.f290k = mutate;
            if (this.q) {
                mutate.setTintList(this.o);
            }
            if (this.r) {
                this.f290k.setTintMode(this.p);
            }
        }
    }

    public boolean collapseActionView() {
        return false;
    }

    public boolean expandActionView() {
        return false;
    }

    public ActionProvider getActionProvider() {
        throw new UnsupportedOperationException();
    }

    public View getActionView() {
        return null;
    }

    public int getAlphabeticModifiers() {
        return this.f289j;
    }

    public char getAlphabeticShortcut() {
        return this.f288i;
    }

    public CharSequence getContentDescription() {
        return this.m;
    }

    public int getGroupId() {
        return this.b;
    }

    public Drawable getIcon() {
        return this.f290k;
    }

    public ColorStateList getIconTintList() {
        return this.o;
    }

    public PorterDuff.Mode getIconTintMode() {
        return this.p;
    }

    public Intent getIntent() {
        return this.f285f;
    }

    public int getItemId() {
        return this.a;
    }

    public ContextMenu.ContextMenuInfo getMenuInfo() {
        return null;
    }

    public int getNumericModifiers() {
        return this.f287h;
    }

    public char getNumericShortcut() {
        return this.f286g;
    }

    public int getOrder() {
        return this.f282c;
    }

    public SubMenu getSubMenu() {
        return null;
    }

    public CharSequence getTitle() {
        return this.f283d;
    }

    public CharSequence getTitleCondensed() {
        CharSequence charSequence = this.f284e;
        return charSequence != null ? charSequence : this.f283d;
    }

    public CharSequence getTooltipText() {
        return this.n;
    }

    public boolean hasSubMenu() {
        return false;
    }

    public boolean isActionViewExpanded() {
        return false;
    }

    public boolean isCheckable() {
        return (this.s & 1) != 0;
    }

    public boolean isChecked() {
        return (this.s & 2) != 0;
    }

    public boolean isEnabled() {
        return (this.s & 16) != 0;
    }

    public boolean isVisible() {
        return (this.s & 8) == 0;
    }

    public MenuItem setActionProvider(ActionProvider actionProvider) {
        throw new UnsupportedOperationException();
    }

    public MenuItem setActionView(View view) {
        throw new UnsupportedOperationException();
    }

    public MenuItem setAlphabeticShortcut(char c2) {
        this.f288i = Character.toLowerCase(c2);
        return this;
    }

    public MenuItem setCheckable(boolean z) {
        this.s = z | (this.s & true) ? 1 : 0;
        return this;
    }

    public MenuItem setChecked(boolean z) {
        this.s = (z ? 2 : 0) | (this.s & -3);
        return this;
    }

    public MenuItem setContentDescription(CharSequence charSequence) {
        this.m = charSequence;
        return this;
    }

    public MenuItem setEnabled(boolean z) {
        this.s = (z ? 16 : 0) | (this.s & -17);
        return this;
    }

    public MenuItem setIcon(Drawable drawable) {
        this.f290k = drawable;
        b();
        return this;
    }

    public MenuItem setIconTintList(ColorStateList colorStateList) {
        this.o = colorStateList;
        this.q = true;
        b();
        return this;
    }

    public MenuItem setIconTintMode(PorterDuff.Mode mode) {
        this.p = mode;
        this.r = true;
        b();
        return this;
    }

    public MenuItem setIntent(Intent intent) {
        this.f285f = intent;
        return this;
    }

    public MenuItem setNumericShortcut(char c2) {
        this.f286g = c2;
        return this;
    }

    public MenuItem setOnActionExpandListener(MenuItem.OnActionExpandListener onActionExpandListener) {
        throw new UnsupportedOperationException();
    }

    public MenuItem setOnMenuItemClickListener(MenuItem.OnMenuItemClickListener onMenuItemClickListener) {
        return this;
    }

    public MenuItem setShortcut(char c2, char c3) {
        this.f286g = c2;
        this.f288i = Character.toLowerCase(c3);
        return this;
    }

    public void setShowAsAction(int i2) {
    }

    public MenuItem setShowAsActionFlags(int i2) {
        return this;
    }

    public MenuItem setTitle(CharSequence charSequence) {
        this.f283d = charSequence;
        return this;
    }

    public MenuItem setTitleCondensed(CharSequence charSequence) {
        this.f284e = charSequence;
        return this;
    }

    public MenuItem setTooltipText(CharSequence charSequence) {
        this.n = charSequence;
        return this;
    }

    public MenuItem setVisible(boolean z) {
        int i2 = 8;
        int i3 = this.s & 8;
        if (z) {
            i2 = 0;
        }
        this.s = i3 | i2;
        return this;
    }

    public MenuItem setActionView(int i2) {
        throw new UnsupportedOperationException();
    }

    public MenuItem setAlphabeticShortcut(char c2, int i2) {
        this.f288i = Character.toLowerCase(c2);
        this.f289j = KeyEvent.normalizeMetaState(i2);
        return this;
    }

    /* renamed from: setContentDescription  reason: collision with other method in class */
    public b m4setContentDescription(CharSequence charSequence) {
        this.m = charSequence;
        return this;
    }

    public MenuItem setNumericShortcut(char c2, int i2) {
        this.f286g = c2;
        this.f287h = KeyEvent.normalizeMetaState(i2);
        return this;
    }

    public MenuItem setTitle(int i2) {
        this.f283d = this.f291l.getResources().getString(i2);
        return this;
    }

    /* renamed from: setTooltipText  reason: collision with other method in class */
    public b m5setTooltipText(CharSequence charSequence) {
        this.n = charSequence;
        return this;
    }

    public MenuItem setIcon(int i2) {
        this.f290k = d.i.b.a.c(this.f291l, i2);
        b();
        return this;
    }

    public MenuItem setShortcut(char c2, char c3, int i2, int i3) {
        this.f286g = c2;
        this.f287h = KeyEvent.normalizeMetaState(i2);
        this.f288i = Character.toLowerCase(c3);
        this.f289j = KeyEvent.normalizeMetaState(i3);
        return this;
    }
}
