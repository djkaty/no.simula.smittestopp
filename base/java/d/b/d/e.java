package d.b.d;

import android.content.Context;
import android.view.ActionMode;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View;
import d.b.d.a;
import d.b.d.i.j;
import d.b.d.i.o;
import d.f.h;
import d.i.d.a.b;
import java.util.ArrayList;

public class e extends ActionMode {
    public final Context a;
    public final a b;

    public e(Context context, a aVar) {
        this.a = context;
        this.b = aVar;
    }

    public void finish() {
        this.b.a();
    }

    public View getCustomView() {
        return this.b.b();
    }

    public Menu getMenu() {
        return new o(this.a, (d.i.d.a.a) this.b.c());
    }

    public MenuInflater getMenuInflater() {
        return this.b.d();
    }

    public CharSequence getSubtitle() {
        return this.b.e();
    }

    public Object getTag() {
        return this.b.x;
    }

    public CharSequence getTitle() {
        return this.b.f();
    }

    public boolean getTitleOptionalHint() {
        return this.b.y;
    }

    public void invalidate() {
        this.b.g();
    }

    public boolean isTitleOptional() {
        return this.b.h();
    }

    public void setCustomView(View view) {
        this.b.a(view);
    }

    public void setSubtitle(CharSequence charSequence) {
        this.b.a(charSequence);
    }

    public void setTag(Object obj) {
        this.b.x = obj;
    }

    public void setTitle(CharSequence charSequence) {
        this.b.b(charSequence);
    }

    public void setTitleOptionalHint(boolean z) {
        this.b.a(z);
    }

    public void setSubtitle(int i2) {
        this.b.a(i2);
    }

    public void setTitle(int i2) {
        this.b.b(i2);
    }

    public static class a implements a.C0012a {
        public final ActionMode.Callback a;
        public final Context b;

        /* renamed from: c  reason: collision with root package name */
        public final ArrayList<e> f260c = new ArrayList<>();

        /* renamed from: d  reason: collision with root package name */
        public final h<Menu, Menu> f261d = new h<>();

        public a(Context context, ActionMode.Callback callback) {
            this.b = context;
            this.a = callback;
        }

        public boolean a(a aVar, Menu menu) {
            return this.a.onPrepareActionMode(b(aVar), a(menu));
        }

        public boolean b(a aVar, Menu menu) {
            return this.a.onCreateActionMode(b(aVar), a(menu));
        }

        public boolean a(a aVar, MenuItem menuItem) {
            return this.a.onActionItemClicked(b(aVar), new j(this.b, (b) menuItem));
        }

        public ActionMode b(a aVar) {
            int size = this.f260c.size();
            for (int i2 = 0; i2 < size; i2++) {
                e eVar = this.f260c.get(i2);
                if (eVar != null && eVar.b == aVar) {
                    return eVar;
                }
            }
            e eVar2 = new e(this.b, aVar);
            this.f260c.add(eVar2);
            return eVar2;
        }

        public void a(a aVar) {
            this.a.onDestroyActionMode(b(aVar));
        }

        public final Menu a(Menu menu) {
            Menu orDefault = this.f261d.getOrDefault(menu, null);
            if (orDefault != null) {
                return orDefault;
            }
            o oVar = new o(this.b, (d.i.d.a.a) menu);
            this.f261d.put(menu, oVar);
            return oVar;
        }
    }
}
