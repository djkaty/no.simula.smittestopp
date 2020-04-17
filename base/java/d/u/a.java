package d.u;

import android.content.Context;
import d.u.g;
import d.w.a.c;
import java.io.File;
import java.util.List;
import java.util.Set;
import java.util.concurrent.Executor;

public class a {
    public final c.C0049c a;
    public final Context b;

    /* renamed from: c  reason: collision with root package name */
    public final String f867c;

    /* renamed from: d  reason: collision with root package name */
    public final g.d f868d;

    /* renamed from: e  reason: collision with root package name */
    public final List<g.b> f869e;

    /* renamed from: f  reason: collision with root package name */
    public final boolean f870f;

    /* renamed from: g  reason: collision with root package name */
    public final g.c f871g;

    /* renamed from: h  reason: collision with root package name */
    public final Executor f872h;

    /* renamed from: i  reason: collision with root package name */
    public final Executor f873i;

    /* renamed from: j  reason: collision with root package name */
    public final boolean f874j;

    /* renamed from: k  reason: collision with root package name */
    public final boolean f875k;

    /* renamed from: l  reason: collision with root package name */
    public final boolean f876l;
    public final Set<Integer> m;

    public a(Context context, String str, c.C0049c cVar, g.d dVar, List<g.b> list, boolean z, g.c cVar2, Executor executor, Executor executor2, boolean z2, boolean z3, boolean z4, Set<Integer> set, String str2, File file) {
        this.a = cVar;
        this.b = context;
        this.f867c = str;
        this.f868d = dVar;
        this.f869e = list;
        this.f870f = z;
        this.f871g = cVar2;
        this.f872h = executor;
        this.f873i = executor2;
        this.f874j = z2;
        this.f875k = z3;
        this.f876l = z4;
        this.m = set;
    }

    public boolean a(int i2, int i3) {
        Set<Integer> set;
        if ((!(i2 > i3) || !this.f876l) && this.f875k && ((set = this.m) == null || !set.contains(Integer.valueOf(i2)))) {
            return true;
        }
        return false;
    }
}
