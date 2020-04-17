package d.i.f;

import android.util.Base64;
import com.microsoft.identity.common.internal.cache.CacheKeyValueDelegate;
import java.util.List;

public final class a {
    public final String a;
    public final String b;

    /* renamed from: c  reason: collision with root package name */
    public final String f579c;

    /* renamed from: d  reason: collision with root package name */
    public final List<List<byte[]>> f580d;

    /* renamed from: e  reason: collision with root package name */
    public final int f581e;

    /* renamed from: f  reason: collision with root package name */
    public final String f582f;

    public a(String str, String str2, String str3, List<List<byte[]>> list) {
        if (str != null) {
            this.a = str;
            if (str2 != null) {
                this.b = str2;
                if (str3 != null) {
                    this.f579c = str3;
                    if (list != null) {
                        this.f580d = list;
                        this.f581e = 0;
                        this.f582f = str + CacheKeyValueDelegate.CACHE_VALUE_SEPARATOR + this.b + CacheKeyValueDelegate.CACHE_VALUE_SEPARATOR + this.f579c;
                        return;
                    }
                    throw null;
                }
                throw null;
            }
            throw null;
        }
        throw null;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        StringBuilder a2 = e.a.a.a.a.a("FontRequest {mProviderAuthority: ");
        a2.append(this.a);
        a2.append(", mProviderPackage: ");
        a2.append(this.b);
        a2.append(", mQuery: ");
        a2.append(this.f579c);
        a2.append(", mCertificates:");
        sb.append(a2.toString());
        for (int i2 = 0; i2 < this.f580d.size(); i2++) {
            sb.append(" [");
            List list = this.f580d.get(i2);
            for (int i3 = 0; i3 < list.size(); i3++) {
                sb.append(" \"");
                sb.append(Base64.encodeToString((byte[]) list.get(i3), 0));
                sb.append("\"");
            }
            sb.append(" ]");
        }
        sb.append("}");
        sb.append("mCertificatesArray: " + this.f581e);
        return sb.toString();
    }
}
