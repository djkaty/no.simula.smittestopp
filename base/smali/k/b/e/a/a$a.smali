.class public Lk/b/e/a/a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/security/PrivilegedAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lk/b/e/a/a;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lk/b/e/a/a;


# direct methods
.method public constructor <init>(Lk/b/e/a/a;)V
    .locals 0

    iput-object p1, p0, Lk/b/e/a/a$a;->a:Lk/b/e/a/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()Ljava/lang/Object;
    .locals 4

    iget-object v0, p0, Lk/b/e/a/a$a;->a:Lk/b/e/a/a;

    .line 1
    sget-object v1, Lk/b/e/a/a;->D:[Ljava/lang/String;

    const-string v2, "org.bouncycastle.jcajce.provider.digest."

    invoke-virtual {v0, v2, v1}, Lk/b/e/a/a;->a(Ljava/lang/String;[Ljava/lang/String;)V

    sget-object v1, Lk/b/e/a/a;->y:[Ljava/lang/String;

    const-string v2, "org.bouncycastle.jcajce.provider.symmetric."

    invoke-virtual {v0, v2, v1}, Lk/b/e/a/a;->a(Ljava/lang/String;[Ljava/lang/String;)V

    sget-object v1, Lk/b/e/a/a;->z:[Ljava/lang/String;

    invoke-virtual {v0, v2, v1}, Lk/b/e/a/a;->a(Ljava/lang/String;[Ljava/lang/String;)V

    sget-object v1, Lk/b/e/a/a;->A:[Ljava/lang/String;

    invoke-virtual {v0, v2, v1}, Lk/b/e/a/a;->a(Ljava/lang/String;[Ljava/lang/String;)V

    sget-object v1, Lk/b/e/a/a;->B:[Ljava/lang/String;

    const-string v2, "org.bouncycastle.jcajce.provider.asymmetric."

    invoke-virtual {v0, v2, v1}, Lk/b/e/a/a;->a(Ljava/lang/String;[Ljava/lang/String;)V

    sget-object v1, Lk/b/e/a/a;->C:[Ljava/lang/String;

    invoke-virtual {v0, v2, v1}, Lk/b/e/a/a;->a(Ljava/lang/String;[Ljava/lang/String;)V

    sget-object v1, Lk/b/e/a/a;->E:[Ljava/lang/String;

    const-string v2, "org.bouncycastle.jcajce.provider.keystore."

    invoke-virtual {v0, v2, v1}, Lk/b/e/a/a;->a(Ljava/lang/String;[Ljava/lang/String;)V

    sget-object v1, Lk/b/e/a/a;->F:[Ljava/lang/String;

    const-string v2, "org.bouncycastle.jcajce.provider.drbg."

    invoke-virtual {v0, v2, v1}, Lk/b/e/a/a;->a(Ljava/lang/String;[Ljava/lang/String;)V

    .line 2
    sget-object v1, Lk/b/i/a/e;->e:Lk/b/a/o;

    new-instance v2, Lk/b/i/c/b/e/c;

    invoke-direct {v2}, Lk/b/i/c/b/e/c;-><init>()V

    invoke-virtual {v0, v1, v2}, Lk/b/e/a/a;->a(Lk/b/a/o;Lk/b/d/a/c/b;)V

    sget-object v1, Lk/b/i/a/e;->f:Lk/b/a/o;

    new-instance v2, Lk/b/i/c/b/b/c;

    invoke-direct {v2}, Lk/b/i/c/b/b/c;-><init>()V

    invoke-virtual {v0, v1, v2}, Lk/b/e/a/a;->a(Lk/b/a/o;Lk/b/d/a/c/b;)V

    sget-object v1, Lk/b/i/a/e;->g:Lk/b/a/o;

    new-instance v2, Lk/b/i/c/b/f/e;

    invoke-direct {v2}, Lk/b/i/c/b/f/e;-><init>()V

    invoke-virtual {v0, v1, v2}, Lk/b/e/a/a;->a(Lk/b/a/o;Lk/b/d/a/c/b;)V

    sget-object v1, Lk/b/i/a/e;->l:Lk/b/a/o;

    new-instance v2, Lk/b/i/c/b/f/f;

    invoke-direct {v2}, Lk/b/i/c/b/f/f;-><init>()V

    invoke-virtual {v0, v1, v2}, Lk/b/e/a/a;->a(Lk/b/a/o;Lk/b/d/a/c/b;)V

    sget-object v1, Lk/b/i/a/e;->c:Lk/b/a/o;

    new-instance v2, Lk/b/i/c/b/a/f;

    invoke-direct {v2}, Lk/b/i/c/b/a/f;-><init>()V

    invoke-virtual {v0, v1, v2}, Lk/b/e/a/a;->a(Lk/b/a/o;Lk/b/d/a/c/b;)V

    sget-object v1, Lk/b/i/a/e;->d:Lk/b/a/o;

    new-instance v2, Lk/b/i/c/b/a/e;

    invoke-direct {v2}, Lk/b/i/c/b/a/e;-><init>()V

    invoke-virtual {v0, v1, v2}, Lk/b/e/a/a;->a(Lk/b/a/o;Lk/b/d/a/c/b;)V

    sget-object v1, Lk/b/i/a/e;->a:Lk/b/a/o;

    new-instance v2, Lk/b/i/c/b/d/c;

    invoke-direct {v2}, Lk/b/i/c/b/d/c;-><init>()V

    invoke-virtual {v0, v1, v2}, Lk/b/e/a/a;->a(Lk/b/a/o;Lk/b/d/a/c/b;)V

    sget-object v1, Lk/b/i/a/e;->q:Lk/b/a/o;

    new-instance v2, Lk/b/i/c/b/c/c;

    invoke-direct {v2}, Lk/b/i/c/b/c/c;-><init>()V

    invoke-virtual {v0, v1, v2}, Lk/b/e/a/a;->a(Lk/b/a/o;Lk/b/d/a/c/b;)V

    sget-object v1, Lk/b/i/a/e;->r:Lk/b/a/o;

    new-instance v2, Lk/b/i/c/b/c/c;

    invoke-direct {v2}, Lk/b/i/c/b/c/c;-><init>()V

    invoke-virtual {v0, v1, v2}, Lk/b/e/a/a;->a(Lk/b/a/o;Lk/b/d/a/c/b;)V

    const-string v1, "X509Store.CERTIFICATE/COLLECTION"

    const-string v2, "org.bouncycastle.jce.provider.X509StoreCertCollection"

    .line 3
    invoke-virtual {v0, v1, v2}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "X509Store.ATTRIBUTECERTIFICATE/COLLECTION"

    const-string v2, "org.bouncycastle.jce.provider.X509StoreAttrCertCollection"

    invoke-virtual {v0, v1, v2}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "X509Store.CRL/COLLECTION"

    const-string v2, "org.bouncycastle.jce.provider.X509StoreCRLCollection"

    invoke-virtual {v0, v1, v2}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "X509Store.CERTIFICATEPAIR/COLLECTION"

    const-string v2, "org.bouncycastle.jce.provider.X509StoreCertPairCollection"

    invoke-virtual {v0, v1, v2}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "X509Store.CERTIFICATE/LDAP"

    const-string v2, "org.bouncycastle.jce.provider.X509StoreLDAPCerts"

    invoke-virtual {v0, v1, v2}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "X509Store.CRL/LDAP"

    const-string v2, "org.bouncycastle.jce.provider.X509StoreLDAPCRLs"

    invoke-virtual {v0, v1, v2}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "X509Store.ATTRIBUTECERTIFICATE/LDAP"

    const-string v2, "org.bouncycastle.jce.provider.X509StoreLDAPAttrCerts"

    invoke-virtual {v0, v1, v2}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "X509Store.CERTIFICATEPAIR/LDAP"

    const-string v2, "org.bouncycastle.jce.provider.X509StoreLDAPCertPairs"

    invoke-virtual {v0, v1, v2}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "X509StreamParser.CERTIFICATE"

    const-string v2, "org.bouncycastle.jce.provider.X509CertParser"

    invoke-virtual {v0, v1, v2}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "X509StreamParser.ATTRIBUTECERTIFICATE"

    const-string v2, "org.bouncycastle.jce.provider.X509AttrCertParser"

    invoke-virtual {v0, v1, v2}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "X509StreamParser.CRL"

    const-string v2, "org.bouncycastle.jce.provider.X509CRLParser"

    invoke-virtual {v0, v1, v2}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "X509StreamParser.CERTIFICATEPAIR"

    const-string v2, "org.bouncycastle.jce.provider.X509CertPairParser"

    invoke-virtual {v0, v1, v2}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "Cipher.BROKENPBEWITHMD5ANDDES"

    const-string v2, "org.bouncycastle.jce.provider.BrokenJCEBlockCipher$BrokePBEWithMD5AndDES"

    invoke-virtual {v0, v1, v2}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "Cipher.BROKENPBEWITHSHA1ANDDES"

    const-string v2, "org.bouncycastle.jce.provider.BrokenJCEBlockCipher$BrokePBEWithSHA1AndDES"

    invoke-virtual {v0, v1, v2}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "Cipher.OLDPBEWITHSHAANDTWOFISH-CBC"

    const-string v2, "org.bouncycastle.jce.provider.BrokenJCEBlockCipher$OldPBEWithSHAAndTwofish"

    invoke-virtual {v0, v1, v2}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "CertPathValidator.RFC3281"

    const-string v2, "org.bouncycastle.jce.provider.PKIXAttrCertPathValidatorSpi"

    invoke-virtual {v0, v1, v2}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "CertPathBuilder.RFC3281"

    const-string v2, "org.bouncycastle.jce.provider.PKIXAttrCertPathBuilderSpi"

    invoke-virtual {v0, v1, v2}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "org.bouncycastle.jce.provider.PKIXCertPathValidatorSpi"

    const-string v2, "CertPathValidator.RFC3280"

    invoke-virtual {v0, v2, v1}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "org.bouncycastle.jce.provider.PKIXCertPathBuilderSpi"

    const-string v3, "CertPathBuilder.RFC3280"

    invoke-virtual {v0, v3, v2}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "CertPathValidator.PKIX"

    invoke-virtual {v0, v3, v1}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "CertPathBuilder.PKIX"

    invoke-virtual {v0, v1, v2}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "CertStore.Collection"

    const-string v2, "org.bouncycastle.jce.provider.CertStoreCollectionSpi"

    invoke-virtual {v0, v1, v2}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "CertStore.LDAP"

    const-string v2, "org.bouncycastle.jce.provider.X509LDAPCertStoreSpi"

    invoke-virtual {v0, v1, v2}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "CertStore.Multi"

    const-string v2, "org.bouncycastle.jce.provider.MultiCertStoreSpi"

    invoke-virtual {v0, v1, v2}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "Alg.Alias.CertStore.X509LDAP"

    const-string v2, "LDAP"

    invoke-virtual {v0, v1, v2}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x0

    return-object v0
.end method
