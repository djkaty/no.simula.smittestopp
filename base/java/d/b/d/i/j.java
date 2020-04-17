package d.b.d.i;

import android.content.Context;
import android.content.Intent;
import android.content.res.ColorStateList;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import android.view.ActionProvider;
import android.view.CollapsibleActionView;
import android.view.ContextMenu;
import android.view.MenuItem;
import android.view.SubMenu;
import android.view.View;
import android.widget.FrameLayout;
import d.i.i.b;
import java.lang.reflect.Method;

public class j extends c implements MenuItem {

    /* renamed from: d  reason: collision with root package name */
    public final d.i.d.a.b f314d;

    /* renamed from: e  reason: collision with root package name */
    public Method f315e;

    public class a extends d.i.i.b {
        public final ActionProvider b;

        public a(Context context, ActionProvider actionProvider) {
            super(context);
            this.b = actionProvider;
        }
    }

    public class b extends a implements ActionProvider.VisibilityListener {

        /* renamed from: d  reason: collision with root package name */
        public b.a f317d;

        public b(j jVar, Context context, ActionProvider actionProvider) {
            super(context, actionProvider);
        }

        public View a(MenuItem menuItem) {
            return this.b.onCreateActionView(menuItem);
        }

        public boolean b() {
            return this.b.overridesItemVisibility();
        }

        public void onActionProviderVisibilityChanged(boolean z) {
            b.a aVar = this.f317d;
            if (aVar != null) {
                g gVar = i.this.n;
                gVar.f299h = true;
                gVar.b(true);
            }
        }

        public boolean a() {
            return this.b.isVisible();
        }

        public void a(b.a aVar) {
            this.f317d = aVar;
            this.b.setVisibilityListener(aVar != null ? this : null);
        }
    }

    public static class c extends FrameLayout implements d.b.d.b {
        public final CollapsibleActionView x;

        public c(View view) {
            super(view.getContext());
            this.x = (CollapsibleActionView) view;
            addView(view);
        }

        public void a() {
            this.x.onActionViewExpanded();
        }

        public void b() {
            this.x.onActionViewCollapsed();
        }
    }

    public class d implements MenuItem.OnActionExpandListener {
        public final MenuItem.OnActionExpandListener a;

        public d(MenuItem.OnActionExpandListener onActionExpandListener) {
            this.a = onActionExpandListener;
        }

        public boolean onMenuItemActionCollapse(MenuItem menuItem) {
            return this.a.onMenuItemActionCollapse(j.this.a(menuItem));
        }

        public boolean onMenuItemActionExpand(MenuItem menuItem) {
            return this.a.onMenuItemActionExpand(j.this.a(menuItem));
        }
    }

    public class e implements MenuItem.OnMenuItemClickListener {
        public final MenuItem.OnMenuItemClickListener a;

        public e(MenuItem.OnMenuItemClickListener onMenuItemClickListener) {
            this.a = onMenuItemClickListener;
        }

        public boolean onMenuItemClick(MenuItem menuItem) {
            return this.a.onMenuItemClick(j.this.a(menuItem));
        }
    }

    public j(Context context, d.i.d.a.b bVar) {
        super(context);
        if (bVar != null) {
            this.f314d = bVar;
            return;
        }
        throw new IllegalArgumentException("Wrapped Object can not be null.");
    }

    public boolean collapseActionView() {
        return this.f314d.collapseActionView();
    }

    public boolean expandActionView() {
        return this.f314d.expandActionView();
    }

    public ActionProvider getActionProvider() {
        d.i.i.b a2 = this.f314d.a();
        if (a2 instanceof a) {
            return ((a) a2).b;
        }
        return null;
    }

    public View getActionView() {
        View actionView = this.f314d.getActionView();
        return actionView instanceof c ? (View) ((c) actionView).x : actionView;
    }

    public int getAlphabeticModifiers() {
        return this.f314d.getAlphabeticModifiers();
    }

    public char getAlphabeticShortcut() {
        return this.f314d.getAlphabeticShortcut();
    }

    public CharSequence getContentDescription() {
        return this.f314d.getContentDescription();
    }

    public int getGroupId() {
        return this.f314d.getGroupId();
    }

    public Drawable getIcon() {
        return this.f314d.getIcon();
    }

    public ColorStateList getIconTintList() {
        return this.f314d.getIconTintList();
    }

    public PorterDuff.Mode getIconTintMode() {
        return this.f314d.getIconTintMode();
    }

    public Intent getIntent() {
        return this.f314d.getIntent();
    }

    public int getItemId() {
        return this.f314d.getItemId();
    }

    public ContextMenu.ContextMenuInfo getMenuInfo() {
        return this.f314d.getMenuInfo();
    }

    public int getNumericModifiers() {
        return this.f314d.getNumericModifiers();
    }

    public char getNumericShortcut() {
        return this.f314d.getNumericShortcut();
    }

    public int getOrder() {
        return this.f314d.getOrder();
    }

    public SubMenu getSubMenu() {
        return a(this.f314d.getSubMenu());
    }

    public CharSequence getTitle() {
        return this.f314d.getTitle();
    }

    public CharSequence getTitleCondensed() {
        return this.f314d.getTitleCondensed();
    }

    public CharSequence getTooltipText() {
        return this.f314d.getTooltipText();
    }

    public boolean hasSubMenu() {
        return this.f314d.hasSubMenu();
    }

    public boolean isActionViewExpanded() {
        return this.f314d.isActionViewExpanded();
    }

    public boolean isCheckable() {
        return this.f314d.isCheckable();
    }

    public boolean isChecked() {
        return this.f314d.isChecked();
    }

    public boolean isEnabled() {
        return this.f314d.isEnabled();
    }

    public boolean isVisible() {
        return this.f314d.isVisible();
    }

    public MenuItem setActionProvider(ActionProvider actionProvider) {
        b bVar = new b(this, this.a, actionProvider);
        d.i.d.a.b bVar2 = this.f314d;
        if (actionProvider == null) {
            bVar = null;
        }
        bVar2.a(bVar);
        return this;
    }

    public MenuItem setActionView(View view) {
        if (view instanceof CollapsibleActionView) {
            view = new c(view);
        }
        this.f314d.setActionView(view);
        return this;
    }

    public MenuItem setAlphabeticShortcut(char c2) {
        this.f314d.setAlphabeticShortcut(c2);
        return this;
    }

    public MenuItem setCheckable(boolean z) {
        this.f314d.setCheckable(z);
        return this;
    }

    public MenuItem setChecked(boolean z) {
        this.f314d.setChecked(z);
        return this;
    }

    public MenuItem setContentDescription(CharSequence charSequence) {
        this.f314d.setContentDescription(charSequence);
        return this;
    }

    public MenuItem setEnabled(boolean z) {
        this.f314d.setEnabled(z);
        return this;
    }

    public MenuItem setIcon(Drawable drawable) {
        this.f314d.setIcon(drawable);
        return this;
    }

    public MenuItem setIconTintList(ColorStateList colorStateList) {
        this.f314d.setIconTintList(colorStateList);
        return this;
    }

    public MenuItem setIconTintMode(PorterDuff.Mode mode) {
        this.f314d.setIconTintMode(mode);
        return this;
    }

    public MenuItem setIntent(Intent intent) {
        this.f314d.setIntent(intent);
        return this;
    }

    public MenuItem setNumericShortcut(char c2) {
        this.f314d.setNumericShortcut(c2);
        return this;
    }

    public MenuItem setOnActionExpandListener(MenuItem.OnActionExpandListener onActionExpandListener) {
        this.f314d.setOnActionExpandListener(onActionExpandListener != null ? new d(onActionExpandListener) : null);
        return this;
    }

    public MenuItem setOnMenuItemClickListener(MenuItem.OnMenuItemClickListener onMenuItemClickListener) {
        this.f314d.setOnMenuItemClickListener(onMenuItemClickListener != null ? new e(onMenuItemClickListener) : null);
        return this;
    }

    public MenuItem setShortcut(char c2, char c3) {
        this.f314d.setShortcut(c2, c3);
        return this;
    }

    public void setShowAsAction(int i2) {
        this.f314d.setShowAsAction(i2);
    }

    public MenuItem setShowAsActionFlags(int i2) {
        this.f314d.setShowAsActionFlags(i2);
        return this;
    }

    public MenuItem setTitle(CharSequence charSequence) {
        this.f314d.setTitle(charSequence);
        return this;
    }

    public MenuItem setTitleCondensed(CharSequence charSequence) {
        this.f314d.setTitleCondensed(charSequence);
        return this;
    }

    public MenuItem setTooltipText(CharSequence charSequence) {
        this.f314d.setTooltipText(charSequence);
        return this;
    }

    public MenuItem setVisible(boolean z) {
        return this.f314d.setVisible(z);
    }

    public MenuItem setAlphabeticShortcut(char c2, int i2) {
        this.f314d.setAlphabeticShortcut(c2, i2);
        return this;
    }

    public MenuItem setIcon(int i2) {
        this.f314d.setIcon(i2);
        return this;
    }

    public MenuItem setNumericShortcut(char c2, int i2) {
        this.f314d.setNumericShortcut(c2, i2);
        return this;
    }

    public MenuItem setShortcut(char c2, char c3, int i2, int i3) {
        this.f314d.setShortcut(c2, c3, i2, i3);
        return this;
    }

    public MenuItem setTitle(int i2) {
        this.f314d.setTitle(i2);
        return this;
    }

    public MenuItem setActionView(int i2) {
        this.f314d.setActionView(i2);
        View actionView = this.f314d.getActionView();
        if (actionView instanceof CollapsibleActionView) {
            this.f314d.setActionView((View) new c(actionView));
        }
        return this;
    }
}
