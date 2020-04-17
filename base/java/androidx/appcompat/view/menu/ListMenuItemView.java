package androidx.appcompat.view.menu;

import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.ViewGroup;
import android.widget.AbsListView;
import android.widget.CheckBox;
import android.widget.CompoundButton;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RadioButton;
import android.widget.TextView;
import androidx.appcompat.R$attr;
import androidx.appcompat.R$id;
import androidx.appcompat.R$layout;
import androidx.appcompat.R$string;
import androidx.appcompat.R$styleable;
import d.b.d.i.i;
import d.b.d.i.n;
import d.b.e.x0;

public class ListMenuItemView extends LinearLayout implements n.a, AbsListView.SelectionBoundsAdjuster {
    public TextView A;
    public CheckBox B;
    public TextView C;
    public ImageView D;
    public ImageView E;
    public LinearLayout F;
    public Drawable G;
    public int H;
    public Context I;
    public boolean J;
    public Drawable K;
    public boolean L;
    public LayoutInflater M;
    public boolean N;
    public i x;
    public ImageView y;
    public RadioButton z;

    public ListMenuItemView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, R$attr.listMenuViewStyle);
    }

    private LayoutInflater getInflater() {
        if (this.M == null) {
            this.M = LayoutInflater.from(getContext());
        }
        return this.M;
    }

    private void setSubMenuArrowVisible(boolean z2) {
        ImageView imageView = this.D;
        if (imageView != null) {
            imageView.setVisibility(z2 ? 0 : 8);
        }
    }

    public void a(i iVar, int i2) {
        CharSequence charSequence;
        String str;
        this.x = iVar;
        int i3 = 0;
        setVisibility(iVar.isVisible() ? 0 : 8);
        if (c()) {
            charSequence = iVar.getTitleCondensed();
        } else {
            charSequence = iVar.f306e;
        }
        setTitle(charSequence);
        setCheckable(iVar.isCheckable());
        boolean f2 = iVar.f();
        iVar.b();
        if (!f2 || !this.x.f()) {
            i3 = 8;
        }
        if (i3 == 0) {
            TextView textView = this.C;
            i iVar2 = this.x;
            char b = iVar2.b();
            if (b == 0) {
                str = "";
            } else {
                Resources resources = iVar2.n.a.getResources();
                StringBuilder sb = new StringBuilder();
                if (ViewConfiguration.get(iVar2.n.a).hasPermanentMenuKey()) {
                    sb.append(resources.getString(R$string.abc_prepend_shortcut_label));
                }
                int i4 = iVar2.n.f() ? iVar2.f312k : iVar2.f310i;
                i.a(sb, i4, 65536, resources.getString(R$string.abc_menu_meta_shortcut_label));
                i.a(sb, i4, 4096, resources.getString(R$string.abc_menu_ctrl_shortcut_label));
                i.a(sb, i4, 2, resources.getString(R$string.abc_menu_alt_shortcut_label));
                i.a(sb, i4, 1, resources.getString(R$string.abc_menu_shift_shortcut_label));
                i.a(sb, i4, 4, resources.getString(R$string.abc_menu_sym_shortcut_label));
                i.a(sb, i4, 8, resources.getString(R$string.abc_menu_function_shortcut_label));
                if (b == 8) {
                    sb.append(resources.getString(R$string.abc_menu_delete_shortcut_label));
                } else if (b == 10) {
                    sb.append(resources.getString(R$string.abc_menu_enter_shortcut_label));
                } else if (b != ' ') {
                    sb.append(b);
                } else {
                    sb.append(resources.getString(R$string.abc_menu_space_shortcut_label));
                }
                str = sb.toString();
            }
            textView.setText(str);
        }
        if (this.C.getVisibility() != i3) {
            this.C.setVisibility(i3);
        }
        setIcon(iVar.getIcon());
        setEnabled(iVar.isEnabled());
        setSubMenuArrowVisible(iVar.hasSubMenu());
        setContentDescription(iVar.q);
    }

    public void adjustListItemSelectionBounds(Rect rect) {
        ImageView imageView = this.E;
        if (imageView != null && imageView.getVisibility() == 0) {
            LinearLayout.LayoutParams layoutParams = (LinearLayout.LayoutParams) this.E.getLayoutParams();
            rect.top = this.E.getHeight() + layoutParams.topMargin + layoutParams.bottomMargin + rect.top;
        }
    }

    public final void b() {
        RadioButton radioButton = (RadioButton) getInflater().inflate(R$layout.abc_list_menu_item_radio, this, false);
        this.z = radioButton;
        LinearLayout linearLayout = this.F;
        if (linearLayout != null) {
            linearLayout.addView(radioButton, -1);
        } else {
            addView(radioButton, -1);
        }
    }

    public boolean c() {
        return false;
    }

    public i getItemData() {
        return this.x;
    }

    public void onFinishInflate() {
        super.onFinishInflate();
        d.i.i.n.a((View) this, this.G);
        TextView textView = (TextView) findViewById(R$id.title);
        this.A = textView;
        int i2 = this.H;
        if (i2 != -1) {
            textView.setTextAppearance(this.I, i2);
        }
        this.C = (TextView) findViewById(R$id.shortcut);
        ImageView imageView = (ImageView) findViewById(R$id.submenuarrow);
        this.D = imageView;
        if (imageView != null) {
            imageView.setImageDrawable(this.K);
        }
        this.E = (ImageView) findViewById(R$id.group_divider);
        this.F = (LinearLayout) findViewById(R$id.content);
    }

    public void onMeasure(int i2, int i3) {
        if (this.y != null && this.J) {
            ViewGroup.LayoutParams layoutParams = getLayoutParams();
            LinearLayout.LayoutParams layoutParams2 = (LinearLayout.LayoutParams) this.y.getLayoutParams();
            int i4 = layoutParams.height;
            if (i4 > 0 && layoutParams2.width <= 0) {
                layoutParams2.width = i4;
            }
        }
        super.onMeasure(i2, i3);
    }

    public void setCheckable(boolean z2) {
        CompoundButton compoundButton;
        CompoundButton compoundButton2;
        if (z2 || this.z != null || this.B != null) {
            if (this.x.e()) {
                if (this.z == null) {
                    b();
                }
                compoundButton2 = this.z;
                compoundButton = this.B;
            } else {
                if (this.B == null) {
                    a();
                }
                compoundButton2 = this.B;
                compoundButton = this.z;
            }
            if (z2) {
                compoundButton2.setChecked(this.x.isChecked());
                if (compoundButton2.getVisibility() != 0) {
                    compoundButton2.setVisibility(0);
                }
                if (compoundButton != null && compoundButton.getVisibility() != 8) {
                    compoundButton.setVisibility(8);
                    return;
                }
                return;
            }
            CheckBox checkBox = this.B;
            if (checkBox != null) {
                checkBox.setVisibility(8);
            }
            RadioButton radioButton = this.z;
            if (radioButton != null) {
                radioButton.setVisibility(8);
            }
        }
    }

    public void setChecked(boolean z2) {
        CompoundButton compoundButton;
        if (this.x.e()) {
            if (this.z == null) {
                b();
            }
            compoundButton = this.z;
        } else {
            if (this.B == null) {
                a();
            }
            compoundButton = this.B;
        }
        compoundButton.setChecked(z2);
    }

    public void setForceShowIcon(boolean z2) {
        this.N = z2;
        this.J = z2;
    }

    public void setGroupDividerEnabled(boolean z2) {
        ImageView imageView = this.E;
        if (imageView != null) {
            imageView.setVisibility((this.L || !z2) ? 8 : 0);
        }
    }

    public void setIcon(Drawable drawable) {
        boolean z2 = this.x.n.s || this.N;
        if (!z2 && !this.J) {
            return;
        }
        if (this.y != null || drawable != null || this.J) {
            if (this.y == null) {
                ImageView imageView = (ImageView) getInflater().inflate(R$layout.abc_list_menu_item_icon, this, false);
                this.y = imageView;
                LinearLayout linearLayout = this.F;
                if (linearLayout != null) {
                    linearLayout.addView(imageView, 0);
                } else {
                    addView(imageView, 0);
                }
            }
            if (drawable != null || this.J) {
                ImageView imageView2 = this.y;
                if (!z2) {
                    drawable = null;
                }
                imageView2.setImageDrawable(drawable);
                if (this.y.getVisibility() != 0) {
                    this.y.setVisibility(0);
                    return;
                }
                return;
            }
            this.y.setVisibility(8);
        }
    }

    public void setTitle(CharSequence charSequence) {
        if (charSequence != null) {
            this.A.setText(charSequence);
            if (this.A.getVisibility() != 0) {
                this.A.setVisibility(0);
            }
        } else if (this.A.getVisibility() != 8) {
            this.A.setVisibility(8);
        }
    }

    public ListMenuItemView(Context context, AttributeSet attributeSet, int i2) {
        super(context, attributeSet);
        x0 a = x0.a(getContext(), attributeSet, R$styleable.MenuView, i2, 0);
        this.G = a.b(R$styleable.MenuView_android_itemBackground);
        this.H = a.f(R$styleable.MenuView_android_itemTextAppearance, -1);
        this.J = a.a(R$styleable.MenuView_preserveIconSpacing, false);
        this.I = context;
        this.K = a.b(R$styleable.MenuView_subMenuArrow);
        TypedArray obtainStyledAttributes = context.getTheme().obtainStyledAttributes((AttributeSet) null, new int[]{16843049}, R$attr.dropDownListViewStyle, 0);
        this.L = obtainStyledAttributes.hasValue(0);
        a.b.recycle();
        obtainStyledAttributes.recycle();
    }

    public final void a() {
        CheckBox checkBox = (CheckBox) getInflater().inflate(R$layout.abc_list_menu_item_checkbox, this, false);
        this.B = checkBox;
        LinearLayout linearLayout = this.F;
        if (linearLayout != null) {
            linearLayout.addView(checkBox, -1);
        } else {
            addView(checkBox, -1);
        }
    }
}
