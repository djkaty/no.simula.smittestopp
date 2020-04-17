package d.b.e;

import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffColorFilter;
import android.graphics.drawable.Drawable;
import androidx.appcompat.R$attr;
import androidx.appcompat.R$color;
import androidx.appcompat.R$drawable;
import d.b.e.n0;

public final class j {
    public static final PorterDuff.Mode b = PorterDuff.Mode.SRC_IN;

    /* renamed from: c  reason: collision with root package name */
    public static j f354c;
    public n0 a;

    public static synchronized j a() {
        j jVar;
        synchronized (j.class) {
            if (f354c == null) {
                b();
            }
            jVar = f354c;
        }
        return jVar;
    }

    public static synchronized void b() {
        synchronized (j.class) {
            if (f354c == null) {
                j jVar = new j();
                f354c = jVar;
                jVar.a = n0.a();
                f354c.a.a((n0.e) new a());
            }
        }
    }

    public synchronized Drawable a(Context context, int i2) {
        return this.a.b(context, i2);
    }

    public synchronized Drawable a(Context context, int i2, boolean z) {
        return this.a.a(context, i2, z);
    }

    public synchronized void a(Context context) {
        this.a.a(context);
    }

    public synchronized ColorStateList b(Context context, int i2) {
        return this.a.c(context, i2);
    }

    public static void a(Drawable drawable, v0 v0Var, int[] iArr) {
        n0.a(drawable, v0Var, iArr);
    }

    public static class a implements n0.e {
        public final int[] a = {R$drawable.abc_textfield_search_default_mtrl_alpha, R$drawable.abc_textfield_default_mtrl_alpha, R$drawable.abc_ab_share_pack_mtrl_alpha};
        public final int[] b = {R$drawable.abc_ic_commit_search_api_mtrl_alpha, R$drawable.abc_seekbar_tick_mark_material, R$drawable.abc_ic_menu_share_mtrl_alpha, R$drawable.abc_ic_menu_copy_mtrl_am_alpha, R$drawable.abc_ic_menu_cut_mtrl_alpha, R$drawable.abc_ic_menu_selectall_mtrl_alpha, R$drawable.abc_ic_menu_paste_mtrl_am_alpha};

        /* renamed from: c  reason: collision with root package name */
        public final int[] f355c = {R$drawable.abc_textfield_activated_mtrl_alpha, R$drawable.abc_textfield_search_activated_mtrl_alpha, R$drawable.abc_cab_background_top_mtrl_alpha, R$drawable.abc_text_cursor_material, R$drawable.abc_text_select_handle_left_mtrl_dark, R$drawable.abc_text_select_handle_middle_mtrl_dark, R$drawable.abc_text_select_handle_right_mtrl_dark, R$drawable.abc_text_select_handle_left_mtrl_light, R$drawable.abc_text_select_handle_middle_mtrl_light, R$drawable.abc_text_select_handle_right_mtrl_light};

        /* renamed from: d  reason: collision with root package name */
        public final int[] f356d = {R$drawable.abc_popup_background_mtrl_mult, R$drawable.abc_cab_background_internal_bg, R$drawable.abc_menu_hardkey_panel_mtrl_mult};

        /* renamed from: e  reason: collision with root package name */
        public final int[] f357e = {R$drawable.abc_tab_indicator_material, R$drawable.abc_textfield_search_material};

        /* renamed from: f  reason: collision with root package name */
        public final int[] f358f = {R$drawable.abc_btn_check_material, R$drawable.abc_btn_radio_material, R$drawable.abc_btn_check_material_anim, R$drawable.abc_btn_radio_material_anim};

        public final ColorStateList a(Context context, int i2) {
            int b2 = s0.b(context, R$attr.colorControlHighlight);
            int a2 = s0.a(context, R$attr.colorButtonNormal);
            return new ColorStateList(new int[][]{s0.b, s0.f379d, s0.f378c, s0.f381f}, new int[]{a2, d.i.c.a.a(b2, i2), d.i.c.a.a(b2, i2), i2});
        }

        public ColorStateList b(Context context, int i2) {
            if (i2 == R$drawable.abc_edit_text_material) {
                return d.b.b.a.a.b(context, R$color.abc_tint_edittext);
            }
            if (i2 == R$drawable.abc_switch_track_mtrl_alpha) {
                return d.b.b.a.a.b(context, R$color.abc_tint_switch_track);
            }
            if (i2 == R$drawable.abc_switch_thumb_material) {
                int[][] iArr = new int[3][];
                int[] iArr2 = new int[3];
                ColorStateList c2 = s0.c(context, R$attr.colorSwitchThumbNormal);
                if (c2 == null || !c2.isStateful()) {
                    iArr[0] = s0.b;
                    iArr2[0] = s0.a(context, R$attr.colorSwitchThumbNormal);
                    iArr[1] = s0.f380e;
                    iArr2[1] = s0.b(context, R$attr.colorControlActivated);
                    iArr[2] = s0.f381f;
                    iArr2[2] = s0.b(context, R$attr.colorSwitchThumbNormal);
                } else {
                    iArr[0] = s0.b;
                    iArr2[0] = c2.getColorForState(iArr[0], 0);
                    iArr[1] = s0.f380e;
                    iArr2[1] = s0.b(context, R$attr.colorControlActivated);
                    iArr[2] = s0.f381f;
                    iArr2[2] = c2.getDefaultColor();
                }
                return new ColorStateList(iArr, iArr2);
            } else if (i2 == R$drawable.abc_btn_default_mtrl_shape) {
                return a(context, s0.b(context, R$attr.colorButtonNormal));
            } else {
                if (i2 == R$drawable.abc_btn_borderless_material) {
                    return a(context, 0);
                }
                if (i2 == R$drawable.abc_btn_colored_material) {
                    return a(context, s0.b(context, R$attr.colorAccent));
                }
                if (i2 == R$drawable.abc_spinner_mtrl_am_alpha || i2 == R$drawable.abc_spinner_textfield_background_material) {
                    return d.b.b.a.a.b(context, R$color.abc_tint_spinner);
                }
                if (a(this.b, i2)) {
                    return s0.c(context, R$attr.colorControlNormal);
                }
                if (a(this.f357e, i2)) {
                    return d.b.b.a.a.b(context, R$color.abc_tint_default);
                }
                if (a(this.f358f, i2)) {
                    return d.b.b.a.a.b(context, R$color.abc_tint_btn_checkable);
                }
                if (i2 == R$drawable.abc_seekbar_thumb_material) {
                    return d.b.b.a.a.b(context, R$color.abc_tint_seek_thumb);
                }
                return null;
            }
        }

        public final void a(Drawable drawable, int i2, PorterDuff.Mode mode) {
            if (e0.a(drawable)) {
                drawable = drawable.mutate();
            }
            if (mode == null) {
                mode = j.b;
            }
            drawable.setColorFilter(j.a(i2, mode));
        }

        public final boolean a(int[] iArr, int i2) {
            for (int i3 : iArr) {
                if (i3 == i2) {
                    return true;
                }
            }
            return false;
        }
    }

    public static synchronized PorterDuffColorFilter a(int i2, PorterDuff.Mode mode) {
        PorterDuffColorFilter a2;
        synchronized (j.class) {
            a2 = n0.a(i2, mode);
        }
        return a2;
    }
}
