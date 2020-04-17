package d.a0.a;

import android.database.DataSetObservable;
import android.database.DataSetObserver;
import android.os.Parcelable;
import android.view.ViewGroup;

public abstract class a {
    public a() {
        new DataSetObservable();
    }

    public void a(DataSetObserver dataSetObserver) {
        synchronized (this) {
        }
    }

    public abstract void a(Parcelable parcelable, ClassLoader classLoader);

    public abstract void a(ViewGroup viewGroup);

    public abstract void a(ViewGroup viewGroup, int i2, Object obj);

    public abstract void b(ViewGroup viewGroup);
}
