package d.s;

import android.content.Context;
import android.content.res.TypedArray;
import android.net.Uri;
import android.util.AttributeSet;
import androidx.navigation.common.R$styleable;
import d.f.i;
import d.s.i;
import java.util.Iterator;
import java.util.NoSuchElementException;

public class j extends i implements Iterable<i> {
    public final i<i> F = new i<>(10);
    public int G;
    public String H;

    public class a implements Iterator<i> {
        public int x = -1;
        public boolean y = false;

        public a() {
        }

        public boolean hasNext() {
            return this.x + 1 < j.this.F.b();
        }

        public Object next() {
            if (hasNext()) {
                this.y = true;
                i<i> iVar = j.this.F;
                int i2 = this.x + 1;
                this.x = i2;
                return iVar.d(i2);
            }
            throw new NoSuchElementException();
        }

        public void remove() {
            if (this.y) {
                j.this.F.d(this.x).y = null;
                i<i> iVar = j.this.F;
                int i2 = this.x;
                Object[] objArr = iVar.z;
                Object obj = objArr[i2];
                Object obj2 = i.B;
                if (obj != obj2) {
                    objArr[i2] = obj2;
                    iVar.x = true;
                }
                this.x--;
                this.y = false;
                return;
            }
            throw new IllegalStateException("You must call next() before you can remove an element");
        }
    }

    public j(p<? extends j> pVar) {
        super(pVar);
    }

    public void a(Context context, AttributeSet attributeSet) {
        super.a(context, attributeSet);
        TypedArray obtainAttributes = context.getResources().obtainAttributes(attributeSet, R$styleable.NavGraphNavigator);
        int resourceId = obtainAttributes.getResourceId(R$styleable.NavGraphNavigator_startDestination, 0);
        this.G = resourceId;
        this.H = null;
        this.H = i.a(context, resourceId);
        obtainAttributes.recycle();
    }

    public final i b(int i2) {
        return a(i2, true);
    }

    public final Iterator<i> iterator() {
        return new a();
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append(super.toString());
        sb.append(" startDestination=");
        i b = b(this.G);
        if (b == null) {
            String str = this.H;
            if (str == null) {
                sb.append("0x");
                sb.append(Integer.toHexString(this.G));
            } else {
                sb.append(str);
            }
        } else {
            sb.append("{");
            sb.append(b.toString());
            sb.append("}");
        }
        return sb.toString();
    }

    public i.a a(Uri uri) {
        i.a a2 = super.a(uri);
        a aVar = new a();
        while (aVar.hasNext()) {
            i.a a3 = ((i) aVar.next()).a(uri);
            if (a3 != null && (a2 == null || a3.compareTo(a2) > 0)) {
                a2 = a3;
            }
        }
        return a2;
    }

    public final i a(int i2, boolean z) {
        j jVar;
        i b = this.F.b(i2, null);
        if (b != null) {
            return b;
        }
        if (!z || (jVar = this.y) == null) {
            return null;
        }
        return jVar.b(i2);
    }

    public final void a(i iVar) {
        int i2 = iVar.z;
        if (i2 != 0) {
            i a2 = this.F.a(i2);
            if (a2 != iVar) {
                if (iVar.y == null) {
                    if (a2 != null) {
                        a2.y = null;
                    }
                    iVar.y = this;
                    this.F.c(iVar.z, iVar);
                    return;
                }
                throw new IllegalStateException("Destination already has a parent set. Call NavGraph.remove() to remove the previous parent.");
            }
            return;
        }
        throw new IllegalArgumentException("Destinations must have an id. Call setId() or include an android:id in your navigation XML.");
    }
}
