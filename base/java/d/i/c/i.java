package d.i.c;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Typeface;
import android.os.CancellationSignal;
import d.b.a.r;
import d.i.b.b.c;
import d.i.f.b;
import java.io.File;
import java.io.InputStream;
import java.util.concurrent.ConcurrentHashMap;

public class i {
    public ConcurrentHashMap<Long, c> a = new ConcurrentHashMap<>();

    public Typeface a(Context context, CancellationSignal cancellationSignal, b.f[] fVarArr, int i2) {
        throw null;
    }

    public Typeface a(Context context, c cVar, Resources resources, int i2) {
        throw null;
    }

    public b.f a(b.f[] fVarArr, int i2) {
        int i3 = (i2 & 1) == 0 ? 400 : 700;
        boolean z = (i2 & 2) != 0;
        b.f fVar = null;
        int i4 = Integer.MAX_VALUE;
        for (b.f fVar2 : fVarArr) {
            int abs = (Math.abs(fVar2.f588c - i3) * 2) + (fVar2.f589d == z ? 0 : 1);
            if (fVar == null || i4 > abs) {
                fVar = fVar2;
                i4 = abs;
            }
        }
        return fVar;
    }

    public Typeface a(Context context, InputStream inputStream) {
        File a2 = r.a(context);
        if (a2 == null) {
            return null;
        }
        try {
            if (!r.a(a2, inputStream)) {
                return null;
            }
            Typeface createFromFile = Typeface.createFromFile(a2.getPath());
            a2.delete();
            return createFromFile;
        } catch (RuntimeException unused) {
            return null;
        } finally {
            a2.delete();
        }
    }

    public Typeface a(Context context, Resources resources, int i2, String str, int i3) {
        File a2 = r.a(context);
        if (a2 == null) {
            return null;
        }
        try {
            if (!r.a(a2, resources, i2)) {
                return null;
            }
            Typeface createFromFile = Typeface.createFromFile(a2.getPath());
            a2.delete();
            return createFromFile;
        } catch (RuntimeException unused) {
            return null;
        } finally {
            a2.delete();
        }
    }
}
