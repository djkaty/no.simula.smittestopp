package d.b.d.i;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.appcompat.view.menu.ActionMenuItemView;
import androidx.appcompat.widget.ActionMenuView;
import d.b.d.i.m;
import d.b.d.i.n;
import d.b.e.c;
import java.util.ArrayList;

public abstract class b implements m {
    public LayoutInflater A;
    public m.a B;
    public int C;
    public int D;
    public n E;
    public int F;
    public Context x;
    public Context y;
    public g z;

    public b(Context context, int i2, int i3) {
        this.x = context;
        this.A = LayoutInflater.from(context);
        this.C = i2;
        this.D = i3;
    }

    public void a(boolean z2) {
        int i2;
        boolean z3;
        ViewGroup viewGroup = (ViewGroup) this.E;
        if (viewGroup != null) {
            g gVar = this.z;
            if (gVar != null) {
                gVar.a();
                ArrayList<i> d2 = this.z.d();
                int size = d2.size();
                i2 = 0;
                for (int i3 = 0; i3 < size; i3++) {
                    i iVar = d2.get(i3);
                    if (iVar.d()) {
                        View childAt = viewGroup.getChildAt(i2);
                        i itemData = childAt instanceof n.a ? ((n.a) childAt).getItemData() : null;
                        View a = a(iVar, childAt, viewGroup);
                        if (iVar != itemData) {
                            a.setPressed(false);
                            a.jumpDrawablesToCurrentState();
                        }
                        if (a != childAt) {
                            ViewGroup viewGroup2 = (ViewGroup) a.getParent();
                            if (viewGroup2 != null) {
                                viewGroup2.removeView(a);
                            }
                            ((ViewGroup) this.E).addView(a, i2);
                        }
                        i2++;
                    }
                }
            } else {
                i2 = 0;
            }
            while (i2 < viewGroup.getChildCount()) {
                if (viewGroup.getChildAt(i2) == ((c) this).G) {
                    z3 = false;
                } else {
                    viewGroup.removeViewAt(i2);
                    z3 = true;
                }
                if (!z3) {
                    i2++;
                }
            }
        }
    }

    public boolean a(g gVar, i iVar) {
        return false;
    }

    public boolean b(g gVar, i iVar) {
        return false;
    }

    public int getId() {
        return this.F;
    }

    public void a(m.a aVar) {
        this.B = aVar;
    }

    public View a(i iVar, View view, ViewGroup viewGroup) {
        n.a aVar;
        if (view instanceof n.a) {
            aVar = (n.a) view;
        } else {
            aVar = (n.a) this.A.inflate(this.D, viewGroup, false);
        }
        c cVar = (c) this;
        aVar.a(iVar, 0);
        ActionMenuItemView actionMenuItemView = (ActionMenuItemView) aVar;
        actionMenuItemView.setItemInvoker((ActionMenuView) cVar.E);
        if (cVar.U == null) {
            cVar.U = new c.b();
        }
        actionMenuItemView.setPopupCallback(cVar.U);
        return (View) aVar;
    }

    public boolean a(r rVar) {
        m.a aVar = this.B;
        if (aVar != null) {
            return aVar.a(rVar);
        }
        return false;
    }
}
