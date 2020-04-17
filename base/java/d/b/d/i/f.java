package d.b.d.i;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import androidx.appcompat.view.menu.ListMenuItemView;
import d.b.d.i.n;
import java.util.ArrayList;

public class f extends BaseAdapter {
    public final boolean A;
    public final LayoutInflater B;
    public final int C;
    public g x;
    public int y = -1;
    public boolean z;

    public f(g gVar, LayoutInflater layoutInflater, boolean z2, int i2) {
        this.A = z2;
        this.B = layoutInflater;
        this.x = gVar;
        this.C = i2;
        a();
    }

    public void a() {
        g gVar = this.x;
        i iVar = gVar.w;
        if (iVar != null) {
            gVar.a();
            ArrayList<i> arrayList = gVar.f301j;
            int size = arrayList.size();
            for (int i2 = 0; i2 < size; i2++) {
                if (arrayList.get(i2) == iVar) {
                    this.y = i2;
                    return;
                }
            }
        }
        this.y = -1;
    }

    public int getCount() {
        ArrayList<i> arrayList;
        if (this.A) {
            g gVar = this.x;
            gVar.a();
            arrayList = gVar.f301j;
        } else {
            arrayList = this.x.d();
        }
        if (this.y < 0) {
            return arrayList.size();
        }
        return arrayList.size() - 1;
    }

    public long getItemId(int i2) {
        return (long) i2;
    }

    public View getView(int i2, View view, ViewGroup viewGroup) {
        if (view == null) {
            view = this.B.inflate(this.C, viewGroup, false);
        }
        int i3 = getItem(i2).b;
        int i4 = i2 - 1;
        ListMenuItemView listMenuItemView = (ListMenuItemView) view;
        listMenuItemView.setGroupDividerEnabled(this.x.e() && i3 != (i4 >= 0 ? getItem(i4).b : i3));
        n.a aVar = (n.a) view;
        if (this.z) {
            listMenuItemView.setForceShowIcon(true);
        }
        aVar.a(getItem(i2), 0);
        return view;
    }

    public void notifyDataSetChanged() {
        a();
        super.notifyDataSetChanged();
    }

    public i getItem(int i2) {
        ArrayList<i> arrayList;
        if (this.A) {
            g gVar = this.x;
            gVar.a();
            arrayList = gVar.f301j;
        } else {
            arrayList = this.x.d();
        }
        int i3 = this.y;
        if (i3 >= 0 && i2 >= i3) {
            i2++;
        }
        return arrayList.get(i2);
    }
}
