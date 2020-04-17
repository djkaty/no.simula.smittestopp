package e.c.a.a.b.j;

import android.accounts.Account;
import android.view.View;
import com.google.android.gms.common.api.Scope;
import d.f.c;
import java.util.Collections;
import java.util.HashSet;
import java.util.Map;
import java.util.Set;

public final class d {
    public final Account a;
    public final Set<Scope> b;

    /* renamed from: c  reason: collision with root package name */
    public final Set<Scope> f1188c;

    /* renamed from: d  reason: collision with root package name */
    public final Map<e.c.a.a.b.i.a<?>, b> f1189d;

    /* renamed from: e  reason: collision with root package name */
    public final String f1190e;

    /* renamed from: f  reason: collision with root package name */
    public final String f1191f;

    /* renamed from: g  reason: collision with root package name */
    public final e.c.a.a.f.a f1192g;

    /* renamed from: h  reason: collision with root package name */
    public Integer f1193h;

    public static final class a {
        public Account a;
        public c<Scope> b;

        /* renamed from: c  reason: collision with root package name */
        public int f1194c = 0;

        /* renamed from: d  reason: collision with root package name */
        public String f1195d;

        /* renamed from: e  reason: collision with root package name */
        public String f1196e;

        /* renamed from: f  reason: collision with root package name */
        public e.c.a.a.f.a f1197f = e.c.a.a.f.a.f1215i;

        public final d a() {
            return new d(this.a, this.b, (Map<e.c.a.a.b.i.a<?>, b>) null, this.f1194c, (View) null, this.f1195d, this.f1196e, this.f1197f, false);
        }
    }

    public static final class b {
        public final Set<Scope> a;
    }

    public d(Account account, Set<Scope> set, Map<e.c.a.a.b.i.a<?>, b> map, int i2, View view, String str, String str2, e.c.a.a.f.a aVar, boolean z) {
        this.a = account;
        this.b = set == null ? Collections.EMPTY_SET : Collections.unmodifiableSet(set);
        this.f1189d = map == null ? Collections.EMPTY_MAP : map;
        this.f1190e = str;
        this.f1191f = str2;
        this.f1192g = aVar;
        HashSet hashSet = new HashSet(this.b);
        for (b bVar : this.f1189d.values()) {
            hashSet.addAll(bVar.a);
        }
        this.f1188c = Collections.unmodifiableSet(hashSet);
    }
}
