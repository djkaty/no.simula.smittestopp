package d.b.d.i;

import android.content.Context;
import android.content.Intent;
import android.content.res.ColorStateList;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import android.view.ActionProvider;
import android.view.ContextMenu;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.MenuItem;
import android.view.SubMenu;
import android.view.View;
import android.view.ViewDebug;
import android.widget.LinearLayout;
import d.b.a.r;
import d.i.d.a.b;
import d.i.i.b;

public final class i implements b {
    public d.i.i.b A;
    public MenuItem.OnActionExpandListener B;
    public boolean C = false;
    public ContextMenu.ContextMenuInfo D;
    public final int a;
    public final int b;

    /* renamed from: c  reason: collision with root package name */
    public final int f304c;

    /* renamed from: d  reason: collision with root package name */
    public final int f305d;

    /* renamed from: e  reason: collision with root package name */
    public CharSequence f306e;

    /* renamed from: f  reason: collision with root package name */
    public CharSequence f307f;

    /* renamed from: g  reason: collision with root package name */
    public Intent f308g;

    /* renamed from: h  reason: collision with root package name */
    public char f309h;

    /* renamed from: i  reason: collision with root package name */
    public int f310i = 4096;

    /* renamed from: j  reason: collision with root package name */
    public char f311j;

    /* renamed from: k  reason: collision with root package name */
    public int f312k = 4096;

    /* renamed from: l  reason: collision with root package name */
    public Drawable f313l;
    public int m = 0;
    public g n;
    public r o;
    public MenuItem.OnMenuItemClickListener p;
    public CharSequence q;
    public CharSequence r;
    public ColorStateList s = null;
    public PorterDuff.Mode t = null;
    public boolean u = false;
    public boolean v = false;
    public boolean w = false;
    public int x = 16;
    public int y = 0;
    public View z;

    public class a implements b.a {
        public a() {
        }
    }

    public i(g gVar, int i2, int i3, int i4, int i5, CharSequence charSequence, int i6) {
        this.n = gVar;
        this.a = i3;
        this.b = i2;
        this.f304c = i4;
        this.f305d = i5;
        this.f306e = charSequence;
        this.y = i6;
    }

    public static void a(StringBuilder sb, int i2, int i3, String str) {
        if ((i2 & i3) == i3) {
            sb.append(str);
        }
    }

    public char b() {
        return this.n.f() ? this.f311j : this.f309h;
    }

    public void c(boolean z2) {
        if (z2) {
            this.x |= 32;
        } else {
            this.x &= -33;
        }
    }

    public boolean collapseActionView() {
        if ((this.y & 8) == 0) {
            return false;
        }
        if (this.z == null) {
            return true;
        }
        MenuItem.OnActionExpandListener onActionExpandListener = this.B;
        if (onActionExpandListener == null || onActionExpandListener.onMenuItemActionCollapse(this)) {
            return this.n.a(this);
        }
        return false;
    }

    public boolean d(boolean z2) {
        int i2 = this.x;
        int i3 = (z2 ? 0 : 8) | (i2 & -9);
        this.x = i3;
        if (i2 != i3) {
            return true;
        }
        return false;
    }

    public boolean e() {
        return (this.x & 4) != 0;
    }

    public boolean expandActionView() {
        if (!c()) {
            return false;
        }
        MenuItem.OnActionExpandListener onActionExpandListener = this.B;
        if (onActionExpandListener == null || onActionExpandListener.onMenuItemActionExpand(this)) {
            return this.n.b(this);
        }
        return false;
    }

    public boolean f() {
        return this.n.g() && b() != 0;
    }

    public ActionProvider getActionProvider() {
        throw new UnsupportedOperationException("This is not supported, use MenuItemCompat.getActionProvider()");
    }

    public View getActionView() {
        View view = this.z;
        if (view != null) {
            return view;
        }
        d.i.i.b bVar = this.A;
        if (bVar == null) {
            return null;
        }
        View a2 = bVar.a((MenuItem) this);
        this.z = a2;
        return a2;
    }

    public int getAlphabeticModifiers() {
        return this.f312k;
    }

    public char getAlphabeticShortcut() {
        return this.f311j;
    }

    public CharSequence getContentDescription() {
        return this.q;
    }

    public int getGroupId() {
        return this.b;
    }

    public Drawable getIcon() {
        Drawable drawable = this.f313l;
        if (drawable != null) {
            return a(drawable);
        }
        int i2 = this.m;
        if (i2 == 0) {
            return null;
        }
        Drawable c2 = d.b.b.a.a.c(this.n.a, i2);
        this.m = 0;
        this.f313l = c2;
        return a(c2);
    }

    public ColorStateList getIconTintList() {
        return this.s;
    }

    public PorterDuff.Mode getIconTintMode() {
        return this.t;
    }

    public Intent getIntent() {
        return this.f308g;
    }

    @ViewDebug.CapturedViewProperty
    public int getItemId() {
        return this.a;
    }

    public ContextMenu.ContextMenuInfo getMenuInfo() {
        return this.D;
    }

    public int getNumericModifiers() {
        return this.f310i;
    }

    public char getNumericShortcut() {
        return this.f309h;
    }

    public int getOrder() {
        return this.f304c;
    }

    public SubMenu getSubMenu() {
        return this.o;
    }

    @ViewDebug.CapturedViewProperty
    public CharSequence getTitle() {
        return this.f306e;
    }

    public CharSequence getTitleCondensed() {
        CharSequence charSequence = this.f307f;
        return charSequence != null ? charSequence : this.f306e;
    }

    public CharSequence getTooltipText() {
        return this.r;
    }

    public boolean hasSubMenu() {
        return this.o != null;
    }

    public boolean isActionViewExpanded() {
        return this.C;
    }

    public boolean isCheckable() {
        return (this.x & 1) == 1;
    }

    public boolean isChecked() {
        return (this.x & 2) == 2;
    }

    public boolean isEnabled() {
        return (this.x & 16) != 0;
    }

    public boolean isVisible() {
        d.i.i.b bVar = this.A;
        if (bVar == null || !bVar.b()) {
            if ((this.x & 8) == 0) {
                return true;
            }
            return false;
        } else if ((this.x & 8) != 0 || !this.A.a()) {
            return false;
        } else {
            return true;
        }
    }

    public MenuItem setActionProvider(ActionProvider actionProvider) {
        throw new UnsupportedOperationException("This is not supported, use MenuItemCompat.setActionProvider()");
    }

    public MenuItem setAlphabeticShortcut(char c2) {
        if (this.f311j == c2) {
            return this;
        }
        this.f311j = Character.toLowerCase(c2);
        this.n.b(false);
        return this;
    }

    public MenuItem setCheckable(boolean z2) {
        int i2 = this.x;
        boolean z3 = z2 | (i2 & true);
        this.x = z3 ? 1 : 0;
        if (i2 != z3) {
            this.n.b(false);
        }
        return this;
    }

    public MenuItem setChecked(boolean z2) {
        if ((this.x & 4) != 0) {
            g gVar = this.n;
            if (gVar != null) {
                int groupId = getGroupId();
                int size = gVar.f297f.size();
                gVar.j();
                for (int i2 = 0; i2 < size; i2++) {
                    i iVar = gVar.f297f.get(i2);
                    if (iVar.b == groupId && iVar.e() && iVar.isCheckable()) {
                        iVar.a(iVar == this);
                    }
                }
                gVar.i();
            } else {
                throw null;
            }
        } else {
            a(z2);
        }
        return this;
    }

    public MenuItem setContentDescription(CharSequence charSequence) {
        this.q = charSequence;
        this.n.b(false);
        return this;
    }

    public MenuItem setEnabled(boolean z2) {
        if (z2) {
            this.x |= 16;
        } else {
            this.x &= -17;
        }
        this.n.b(false);
        return this;
    }

    public MenuItem setIcon(Drawable drawable) {
        this.m = 0;
        this.f313l = drawable;
        this.w = true;
        this.n.b(false);
        return this;
    }

    public MenuItem setIconTintList(ColorStateList colorStateList) {
        this.s = colorStateList;
        this.u = true;
        this.w = true;
        this.n.b(false);
        return this;
    }

    public MenuItem setIconTintMode(PorterDuff.Mode mode) {
        this.t = mode;
        this.v = true;
        this.w = true;
        this.n.b(false);
        return this;
    }

    public MenuItem setIntent(Intent intent) {
        this.f308g = intent;
        return this;
    }

    public MenuItem setNumericShortcut(char c2) {
        if (this.f309h == c2) {
            return this;
        }
        this.f309h = c2;
        this.n.b(false);
        return this;
    }

    public MenuItem setOnActionExpandListener(MenuItem.OnActionExpandListener onActionExpandListener) {
        this.B = onActionExpandListener;
        return this;
    }

    public MenuItem setOnMenuItemClickListener(MenuItem.OnMenuItemClickListener onMenuItemClickListener) {
        this.p = onMenuItemClickListener;
        return this;
    }

    public MenuItem setShortcut(char c2, char c3) {
        this.f309h = c2;
        this.f311j = Character.toLowerCase(c3);
        this.n.b(false);
        return this;
    }

    public void setShowAsAction(int i2) {
        int i3 = i2 & 3;
        if (i3 == 0 || i3 == 1 || i3 == 2) {
            this.y = i2;
            this.n.h();
            return;
        }
        throw new IllegalArgumentException("SHOW_AS_ACTION_ALWAYS, SHOW_AS_ACTION_IF_ROOM, and SHOW_AS_ACTION_NEVER are mutually exclusive.");
    }

    public MenuItem setShowAsActionFlags(int i2) {
        setShowAsAction(i2);
        return this;
    }

    public MenuItem setTitle(CharSequence charSequence) {
        this.f306e = charSequence;
        this.n.b(false);
        r rVar = this.o;
        if (rVar != null) {
            rVar.setHeaderTitle(charSequence);
        }
        return this;
    }

    public MenuItem setTitleCondensed(CharSequence charSequence) {
        this.f307f = charSequence;
        this.n.b(false);
        return this;
    }

    public MenuItem setTooltipText(CharSequence charSequence) {
        this.r = charSequence;
        this.n.b(false);
        return this;
    }

    public MenuItem setVisible(boolean z2) {
        if (d(z2)) {
            g gVar = this.n;
            gVar.f299h = true;
            gVar.b(true);
        }
        return this;
    }

    public String toString() {
        CharSequence charSequence = this.f306e;
        if (charSequence != null) {
            return charSequence.toString();
        }
        return null;
    }

    public final Drawable a(Drawable drawable) {
        if (drawable != null && this.w && (this.u || this.v)) {
            drawable = r.c(drawable).mutate();
            if (this.u) {
                drawable.setTintList(this.s);
            }
            if (this.v) {
                drawable.setTintMode(this.t);
            }
            this.w = false;
        }
        return drawable;
    }

    public void b(boolean z2) {
        this.x = (z2 ? 4 : 0) | (this.x & -5);
    }

    public d.i.d.a.b setActionView(View view) {
        int i2;
        this.z = view;
        this.A = null;
        if (view != null && view.getId() == -1 && (i2 = this.a) > 0) {
            view.setId(i2);
        }
        this.n.h();
        return this;
    }

    public boolean c() {
        d.i.i.b bVar;
        if ((this.y & 8) == 0) {
            return false;
        }
        if (this.z == null && (bVar = this.A) != null) {
            this.z = bVar.a((MenuItem) this);
        }
        if (this.z != null) {
            return true;
        }
        return false;
    }

    public boolean d() {
        return (this.x & 32) == 32;
    }

    /* renamed from: setContentDescription  reason: collision with other method in class */
    public d.i.d.a.b m6setContentDescription(CharSequence charSequence) {
        this.q = charSequence;
        this.n.b(false);
        return this;
    }

    /* renamed from: setTooltipText  reason: collision with other method in class */
    public d.i.d.a.b m7setTooltipText(CharSequence charSequence) {
        this.r = charSequence;
        this.n.b(false);
        return this;
    }

    public MenuItem setAlphabeticShortcut(char c2, int i2) {
        if (this.f311j == c2 && this.f312k == i2) {
            return this;
        }
        this.f311j = Character.toLowerCase(c2);
        this.f312k = KeyEvent.normalizeMetaState(i2);
        this.n.b(false);
        return this;
    }

    public MenuItem setNumericShortcut(char c2, int i2) {
        if (this.f309h == c2 && this.f310i == i2) {
            return this;
        }
        this.f309h = c2;
        this.f310i = KeyEvent.normalizeMetaState(i2);
        this.n.b(false);
        return this;
    }

    public MenuItem setShortcut(char c2, char c3, int i2, int i3) {
        this.f309h = c2;
        this.f310i = KeyEvent.normalizeMetaState(i2);
        this.f311j = Character.toLowerCase(c3);
        this.f312k = KeyEvent.normalizeMetaState(i3);
        this.n.b(false);
        return this;
    }

    public MenuItem setIcon(int i2) {
        this.f313l = null;
        this.m = i2;
        this.w = true;
        this.n.b(false);
        return this;
    }

    public MenuItem setTitle(int i2) {
        setTitle((CharSequence) this.n.a.getString(i2));
        return this;
    }

    public MenuItem setActionView(int i2) {
        Context context = this.n.a;
        setActionView(LayoutInflater.from(context).inflate(i2, new LinearLayout(context), false));
        return this;
    }

    public void a(boolean z2) {
        int i2 = this.x;
        int i3 = (z2 ? 2 : 0) | (i2 & -3);
        this.x = i3;
        if (i2 != i3) {
            this.n.b(false);
        }
    }

    public d.i.i.b a() {
        return this.A;
    }

    public d.i.d.a.b a(d.i.i.b bVar) {
        d.i.i.b bVar2 = this.A;
        if (bVar2 != null) {
            bVar2.a = null;
        }
        this.z = null;
        this.A = bVar;
        this.n.b(true);
        d.i.i.b bVar3 = this.A;
        if (bVar3 != null) {
            bVar3.a((b.a) new a());
        }
        return this;
    }
}
