package d.j.a;

import android.content.Context;
import android.database.ContentObserver;
import android.database.Cursor;
import android.database.DataSetObserver;
import android.os.Handler;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.Filter;
import android.widget.Filterable;
import d.j.a.b;

public abstract class a extends BaseAdapter implements Filterable, b.a {
    public Context A;
    public int B;
    public C0030a C;
    public DataSetObserver D;
    public b E;
    public boolean x;
    public boolean y;
    public Cursor z;

    /* renamed from: d.j.a.a$a  reason: collision with other inner class name */
    public class C0030a extends ContentObserver {
        public C0030a() {
            super(new Handler());
        }

        public boolean deliverSelfNotifications() {
            return true;
        }

        public void onChange(boolean z) {
            Cursor cursor;
            a aVar = a.this;
            if (aVar.y && (cursor = aVar.z) != null && !cursor.isClosed()) {
                aVar.x = aVar.z.requery();
            }
        }
    }

    public class b extends DataSetObserver {
        public b() {
        }

        public void onChanged() {
            a aVar = a.this;
            aVar.x = true;
            aVar.notifyDataSetChanged();
        }

        public void onInvalidated() {
            a aVar = a.this;
            aVar.x = false;
            aVar.notifyDataSetInvalidated();
        }
    }

    public a(Context context, Cursor cursor, boolean z2) {
        boolean z3 = true;
        char c2 = z2 ? (char) 1 : 2;
        if ((c2 & 1) == 1) {
            c2 |= 2;
            this.y = true;
        } else {
            this.y = false;
        }
        z3 = cursor == null ? false : z3;
        this.z = cursor;
        this.x = z3;
        this.A = context;
        this.B = z3 ? cursor.getColumnIndexOrThrow("_id") : -1;
        if ((c2 & 2) == 2) {
            this.C = new C0030a();
            this.D = new b();
        } else {
            this.C = null;
            this.D = null;
        }
        if (z3) {
            C0030a aVar = this.C;
            if (aVar != null) {
                cursor.registerContentObserver(aVar);
            }
            DataSetObserver dataSetObserver = this.D;
            if (dataSetObserver != null) {
                cursor.registerDataSetObserver(dataSetObserver);
            }
        }
    }

    public abstract View a(Context context, Cursor cursor, ViewGroup viewGroup);

    public void a(Cursor cursor) {
        Cursor cursor2 = this.z;
        if (cursor == cursor2) {
            cursor2 = null;
        } else {
            if (cursor2 != null) {
                C0030a aVar = this.C;
                if (aVar != null) {
                    cursor2.unregisterContentObserver(aVar);
                }
                DataSetObserver dataSetObserver = this.D;
                if (dataSetObserver != null) {
                    cursor2.unregisterDataSetObserver(dataSetObserver);
                }
            }
            this.z = cursor;
            if (cursor != null) {
                C0030a aVar2 = this.C;
                if (aVar2 != null) {
                    cursor.registerContentObserver(aVar2);
                }
                DataSetObserver dataSetObserver2 = this.D;
                if (dataSetObserver2 != null) {
                    cursor.registerDataSetObserver(dataSetObserver2);
                }
                this.B = cursor.getColumnIndexOrThrow("_id");
                this.x = true;
                notifyDataSetChanged();
            } else {
                this.B = -1;
                this.x = false;
                notifyDataSetInvalidated();
            }
        }
        if (cursor2 != null) {
            cursor2.close();
        }
    }

    public abstract void a(View view, Context context, Cursor cursor);

    public abstract CharSequence b(Cursor cursor);

    public int getCount() {
        Cursor cursor;
        if (!this.x || (cursor = this.z) == null) {
            return 0;
        }
        return cursor.getCount();
    }

    public View getDropDownView(int i2, View view, ViewGroup viewGroup) {
        if (!this.x) {
            return null;
        }
        this.z.moveToPosition(i2);
        if (view == null) {
            c cVar = (c) this;
            view = cVar.H.inflate(cVar.G, viewGroup, false);
        }
        a(view, this.A, this.z);
        return view;
    }

    public Filter getFilter() {
        if (this.E == null) {
            this.E = new b(this);
        }
        return this.E;
    }

    public Object getItem(int i2) {
        Cursor cursor;
        if (!this.x || (cursor = this.z) == null) {
            return null;
        }
        cursor.moveToPosition(i2);
        return this.z;
    }

    public long getItemId(int i2) {
        Cursor cursor;
        if (!this.x || (cursor = this.z) == null || !cursor.moveToPosition(i2)) {
            return 0;
        }
        return this.z.getLong(this.B);
    }

    public View getView(int i2, View view, ViewGroup viewGroup) {
        if (!this.x) {
            throw new IllegalStateException("this should only be called when the cursor is valid");
        } else if (this.z.moveToPosition(i2)) {
            if (view == null) {
                view = a(this.A, this.z, viewGroup);
            }
            a(view, this.A, this.z);
            return view;
        } else {
            throw new IllegalStateException(e.a.a.a.a.a("couldn't move cursor to position ", i2));
        }
    }
}
