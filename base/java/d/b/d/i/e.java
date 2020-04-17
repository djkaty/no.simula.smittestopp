package d.b.d.i;

import android.content.Context;
import android.os.Bundle;
import android.os.Parcelable;
import android.util.SparseArray;
import android.view.ContextThemeWrapper;
import android.view.LayoutInflater;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import android.view.WindowManager;
import android.widget.AdapterView;
import android.widget.BaseAdapter;
import android.widget.ListAdapter;
import androidx.appcompat.R$layout;
import androidx.appcompat.app.AlertController;
import androidx.appcompat.view.menu.ExpandedMenuView;
import com.microsoft.identity.common.adal.internal.AuthenticationConstants;
import d.b.a.g;
import d.b.d.i.m;
import d.b.d.i.n;
import java.util.ArrayList;

public class e implements m, AdapterView.OnItemClickListener {
    public ExpandedMenuView A;
    public int B;
    public int C = 0;
    public int D;
    public m.a E;
    public a F;
    public Context x;
    public LayoutInflater y;
    public g z;

    public class a extends BaseAdapter {
        public int x = -1;

        public a() {
            a();
        }

        public void a() {
            g gVar = e.this.z;
            i iVar = gVar.w;
            if (iVar != null) {
                gVar.a();
                ArrayList<i> arrayList = gVar.f301j;
                int size = arrayList.size();
                for (int i2 = 0; i2 < size; i2++) {
                    if (arrayList.get(i2) == iVar) {
                        this.x = i2;
                        return;
                    }
                }
            }
            this.x = -1;
        }

        public int getCount() {
            g gVar = e.this.z;
            gVar.a();
            int size = gVar.f301j.size() - e.this.B;
            return this.x < 0 ? size : size - 1;
        }

        public long getItemId(int i2) {
            return (long) i2;
        }

        public View getView(int i2, View view, ViewGroup viewGroup) {
            if (view == null) {
                e eVar = e.this;
                view = eVar.y.inflate(eVar.D, viewGroup, false);
            }
            ((n.a) view).a(getItem(i2), 0);
            return view;
        }

        public void notifyDataSetChanged() {
            a();
            super.notifyDataSetChanged();
        }

        public i getItem(int i2) {
            g gVar = e.this.z;
            gVar.a();
            ArrayList<i> arrayList = gVar.f301j;
            int i3 = i2 + e.this.B;
            int i4 = this.x;
            if (i4 >= 0 && i3 >= i4) {
                i3++;
            }
            return arrayList.get(i3);
        }
    }

    public e(Context context, int i2) {
        this.D = i2;
        this.x = context;
        this.y = LayoutInflater.from(context);
    }

    public void a(Context context, g gVar) {
        if (this.C != 0) {
            ContextThemeWrapper contextThemeWrapper = new ContextThemeWrapper(context, this.C);
            this.x = contextThemeWrapper;
            this.y = LayoutInflater.from(contextThemeWrapper);
        } else if (this.x != null) {
            this.x = context;
            if (this.y == null) {
                this.y = LayoutInflater.from(context);
            }
        }
        this.z = gVar;
        a aVar = this.F;
        if (aVar != null) {
            aVar.notifyDataSetChanged();
        }
    }

    public boolean a(g gVar, i iVar) {
        return false;
    }

    public boolean b() {
        return false;
    }

    public boolean b(g gVar, i iVar) {
        return false;
    }

    public Parcelable d() {
        if (this.A == null) {
            return null;
        }
        Bundle bundle = new Bundle();
        SparseArray sparseArray = new SparseArray();
        ExpandedMenuView expandedMenuView = this.A;
        if (expandedMenuView != null) {
            expandedMenuView.saveHierarchyState(sparseArray);
        }
        bundle.putSparseParcelableArray("android:menu:list", sparseArray);
        return bundle;
    }

    public int getId() {
        return 0;
    }

    public void onItemClick(AdapterView<?> adapterView, View view, int i2, long j2) {
        this.z.a((MenuItem) this.F.getItem(i2), (m) this, 0);
    }

    public ListAdapter a() {
        if (this.F == null) {
            this.F = new a();
        }
        return this.F;
    }

    public void a(boolean z2) {
        a aVar = this.F;
        if (aVar != null) {
            aVar.notifyDataSetChanged();
        }
    }

    public void a(m.a aVar) {
        this.E = aVar;
    }

    public boolean a(r rVar) {
        if (!rVar.hasVisibleItems()) {
            return false;
        }
        h hVar = new h(rVar);
        g gVar = hVar.x;
        g.a aVar = new g.a(gVar.a);
        e eVar = new e(aVar.a.a, R$layout.abc_list_menu_item_layout);
        hVar.z = eVar;
        eVar.E = hVar;
        g gVar2 = hVar.x;
        gVar2.a((m) eVar, gVar2.a);
        ListAdapter a2 = hVar.z.a();
        AlertController.b bVar = aVar.a;
        bVar.f19l = a2;
        bVar.m = hVar;
        View view = gVar.o;
        if (view != null) {
            bVar.f14g = view;
        } else {
            bVar.f11d = gVar.n;
            bVar.f13f = gVar.m;
        }
        aVar.a.f18k = hVar;
        g a3 = aVar.a();
        hVar.y = a3;
        a3.setOnDismissListener(hVar);
        WindowManager.LayoutParams attributes = hVar.y.getWindow().getAttributes();
        attributes.type = AuthenticationConstants.UIRequest.BROKER_FLOW;
        attributes.flags |= 131072;
        hVar.y.show();
        m.a aVar2 = this.E;
        if (aVar2 == null) {
            return true;
        }
        aVar2.a(rVar);
        return true;
    }

    public void a(g gVar, boolean z2) {
        m.a aVar = this.E;
        if (aVar != null) {
            aVar.a(gVar, z2);
        }
    }

    public void a(Parcelable parcelable) {
        SparseArray sparseParcelableArray = ((Bundle) parcelable).getSparseParcelableArray("android:menu:list");
        if (sparseParcelableArray != null) {
            this.A.restoreHierarchyState(sparseParcelableArray);
        }
    }
}
