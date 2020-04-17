package e.e.a;

public final class i extends a {
    @Deprecated
    public static final i A = new i("RSA-OAEP", r.OPTIONAL);
    public static final i B = new i("RSA-OAEP-256", r.OPTIONAL);
    public static final i C = new i("A128KW", r.RECOMMENDED);
    public static final i D = new i("A192KW", r.OPTIONAL);
    public static final i E = new i("A256KW", r.RECOMMENDED);
    public static final i F = new i("dir", r.RECOMMENDED);
    public static final i G = new i("ECDH-ES", r.RECOMMENDED);
    public static final i H = new i("ECDH-ES+A128KW", r.RECOMMENDED);
    public static final i I = new i("ECDH-ES+A192KW", r.OPTIONAL);
    public static final i J = new i("ECDH-ES+A256KW", r.RECOMMENDED);
    public static final i K = new i("A128GCMKW", r.OPTIONAL);
    public static final i L = new i("A192GCMKW", r.OPTIONAL);
    public static final i M = new i("A256GCMKW", r.OPTIONAL);
    public static final i N = new i("PBES2-HS256+A128KW", r.OPTIONAL);
    public static final i O = new i("PBES2-HS384+A192KW", r.OPTIONAL);
    public static final i P = new i("PBES2-HS512+A256KW", r.OPTIONAL);
    @Deprecated
    public static final i z = new i("RSA1_5", r.REQUIRED);

    public i(String str, r rVar) {
        super(str, rVar);
    }

    public i(String str) {
        super(str, (r) null);
    }
}
