package e.e.a;

import com.microsoft.identity.common.adal.internal.JWSBuilder;

public final class l extends a {
    public static final l A = new l("HS384", r.OPTIONAL);
    public static final l B = new l("HS512", r.OPTIONAL);
    public static final l C = new l(JWSBuilder.JWS_HEADER_ALG, r.RECOMMENDED);
    public static final l D = new l("RS384", r.OPTIONAL);
    public static final l E = new l("RS512", r.OPTIONAL);
    public static final l F = new l("ES256", r.RECOMMENDED);
    public static final l G = new l("ES256K", r.OPTIONAL);
    public static final l H = new l("ES384", r.OPTIONAL);
    public static final l I = new l("ES512", r.OPTIONAL);
    public static final l J = new l("PS256", r.OPTIONAL);
    public static final l K = new l("PS384", r.OPTIONAL);
    public static final l L = new l("PS512", r.OPTIONAL);
    public static final l M = new l("EdDSA", r.OPTIONAL);
    public static final l z = new l("HS256", r.REQUIRED);

    public l(String str, r rVar) {
        super(str, rVar);
    }

    public l(String str) {
        super(str, (r) null);
    }
}
