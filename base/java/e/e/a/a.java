package e.e.a;

import com.microsoft.identity.common.internal.providers.microsoft.azureactivedirectory.AzureActiveDirectoryAuthorizationRequest;
import i.a.b.b;
import i.a.b.d;
import java.io.Serializable;

public class a implements b, Serializable {
    public static final a y = new a(AzureActiveDirectoryAuthorizationRequest.Prompt.AUTO, r.REQUIRED);
    public final String x;

    public a(String str, r rVar) {
        if (str != null) {
            this.x = str;
            return;
        }
        throw new IllegalArgumentException("The algorithm name must not be null");
    }

    public final String a() {
        StringBuilder a = e.a.a.a.a.a("\"");
        a.append(d.c(this.x));
        a.append('\"');
        return a.toString();
    }

    public boolean equals(Object obj) {
        return obj != null && (obj instanceof a) && this.x.equals(obj.toString());
    }

    public final int hashCode() {
        return this.x.hashCode();
    }

    public final String toString() {
        return this.x;
    }
}
