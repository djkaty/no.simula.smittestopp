.class public Lk/a/b/a/d/g0/m0/f;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lk/a/b/a/d/g0/m0/f$b;
    }
.end annotation


# static fields
.field public static final b:Ljava/util/logging/Logger;

.field public static final c:Ljava/lang/reflect/Constructor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/reflect/Constructor<",
            "*>;"
        }
    .end annotation
.end field

.field public static final d:Ljava/lang/reflect/Method;

.field public static final e:Ljava/lang/reflect/Constructor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/reflect/Constructor<",
            "*>;"
        }
    .end annotation
.end field

.field public static final f:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field public static final g:Ljava/lang/reflect/Method;

.field public static final h:Ljava/lang/reflect/Method;

.field public static final i:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field public static final j:Ljava/lang/reflect/Method;

.field public static final k:Ljava/lang/reflect/Constructor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/reflect/Constructor<",
            "*>;"
        }
    .end annotation
.end field

.field public static final l:Ljava/lang/reflect/Method;

.field public static final m:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field public static final n:Ljava/lang/Exception;

.field public static final o:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public a:Ljavax/net/ssl/SSLContext;


# direct methods
.method public static constructor <clinit>()V
    .locals 16

    .line 1
    const-class v0, Lk/a/b/a/d/g0/m0/f;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lk/a/b/a/d/g0/m0/f;->b:Ljava/util/logging/Logger;

    const/4 v1, 0x0

    :try_start_0
    const-string v0, "k.b.g.e"

    .line 2
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Class;

    .line 3
    const-class v4, Ljava/io/Reader;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-virtual {v0, v3}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_b
    .catchall {:try_start_0 .. :try_end_0} :catchall_b

    :try_start_1
    const-string v4, "readObject"

    new-array v6, v5, [Ljava/lang/Class;

    .line 4
    invoke-virtual {v0, v4, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_a
    .catchall {:try_start_1 .. :try_end_1} :catchall_a

    :try_start_2
    const-string v0, "k.b.g.g.a"

    .line 5
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    new-array v6, v5, [Ljava/lang/Class;

    .line 6
    invoke-virtual {v0, v6}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v6
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_9
    .catchall {:try_start_2 .. :try_end_2} :catchall_9

    :try_start_3
    const-string v7, "k.b.g.c"

    .line 7
    invoke-static {v7}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v7
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_8
    .catchall {:try_start_3 .. :try_end_3} :catchall_8

    :try_start_4
    const-string v8, "getKeyPair"

    new-array v9, v2, [Ljava/lang/Class;

    aput-object v7, v9, v5

    .line 8
    invoke-virtual {v0, v8, v9}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v8
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_7
    .catchall {:try_start_4 .. :try_end_4} :catchall_7

    :try_start_5
    const-string v9, "org.bouncycastle.openssl.PEMDecryptorProvider"

    .line 9
    invoke-static {v9}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v9

    const-string v10, "k.b.g.a"

    .line 10
    invoke-static {v10}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v10
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_6
    .catchall {:try_start_5 .. :try_end_5} :catchall_6

    :try_start_6
    const-string v11, "decryptKeyPair"

    new-array v12, v2, [Ljava/lang/Class;

    aput-object v9, v12, v5

    .line 11
    invoke-virtual {v10, v11, v12}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v9
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_5
    .catchall {:try_start_6 .. :try_end_6} :catchall_5

    :try_start_7
    const-string v11, "k.b.g.g.b"

    .line 12
    invoke-static {v11}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v11

    new-array v12, v5, [Ljava/lang/Class;

    .line 13
    invoke-virtual {v11, v12}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v12
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_4
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    :try_start_8
    const-string v13, "build"

    new-array v14, v2, [Ljava/lang/Class;

    .line 14
    const-class v15, [C

    aput-object v15, v14, v5

    invoke-virtual {v11, v13, v14}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v11
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_3
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    :try_start_9
    const-string v13, "k.b.a.i2.f"

    .line 15
    invoke-static {v13}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v13
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_2
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    :try_start_a
    const-string v14, "getPrivateKey"

    new-array v2, v2, [Ljava/lang/Class;

    aput-object v13, v2, v5

    .line 16
    invoke-virtual {v0, v14, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_1
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    .line 17
    :try_start_b
    invoke-static {}, Lk/a/b/a/d/g0/m0/f;->a()V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_0
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    .line 18
    sput-object v3, Lk/a/b/a/d/g0/m0/f;->c:Ljava/lang/reflect/Constructor;

    .line 19
    sput-object v4, Lk/a/b/a/d/g0/m0/f;->d:Ljava/lang/reflect/Method;

    .line 20
    sput-object v6, Lk/a/b/a/d/g0/m0/f;->e:Ljava/lang/reflect/Constructor;

    .line 21
    sput-object v7, Lk/a/b/a/d/g0/m0/f;->f:Ljava/lang/Class;

    .line 22
    sput-object v8, Lk/a/b/a/d/g0/m0/f;->g:Ljava/lang/reflect/Method;

    .line 23
    sput-object v2, Lk/a/b/a/d/g0/m0/f;->h:Ljava/lang/reflect/Method;

    .line 24
    sput-object v10, Lk/a/b/a/d/g0/m0/f;->i:Ljava/lang/Class;

    .line 25
    sput-object v9, Lk/a/b/a/d/g0/m0/f;->j:Ljava/lang/reflect/Method;

    .line 26
    sput-object v12, Lk/a/b/a/d/g0/m0/f;->k:Ljava/lang/reflect/Constructor;

    .line 27
    sput-object v11, Lk/a/b/a/d/g0/m0/f;->l:Ljava/lang/reflect/Method;

    .line 28
    sput-object v13, Lk/a/b/a/d/g0/m0/f;->m:Ljava/lang/Class;

    .line 29
    sput-object v1, Lk/a/b/a/d/g0/m0/f;->n:Ljava/lang/Exception;

    goto/16 :goto_e

    :catchall_0
    move-exception v0

    goto/16 :goto_c

    :catch_0
    move-exception v0

    goto/16 :goto_5

    :catchall_1
    move-exception v0

    move-object v2, v1

    goto/16 :goto_c

    :catch_1
    move-exception v0

    move-object v2, v1

    goto/16 :goto_5

    :catchall_2
    move-exception v0

    move-object v2, v1

    move-object v13, v2

    goto/16 :goto_c

    :catch_2
    move-exception v0

    move-object v2, v1

    move-object v13, v2

    goto/16 :goto_5

    :catchall_3
    move-exception v0

    move-object v2, v1

    move-object v11, v2

    move-object v13, v11

    goto/16 :goto_c

    :catch_3
    move-exception v0

    move-object v2, v1

    move-object v11, v2

    move-object v13, v11

    goto/16 :goto_5

    :catchall_4
    move-exception v0

    move-object v2, v1

    move-object v11, v2

    goto/16 :goto_b

    :catch_4
    move-exception v0

    move-object v2, v1

    move-object v11, v2

    goto/16 :goto_4

    :catchall_5
    move-exception v0

    move-object v2, v1

    move-object v9, v2

    move-object v11, v9

    goto/16 :goto_b

    :catch_5
    move-exception v0

    move-object v2, v1

    move-object v9, v2

    move-object v11, v9

    goto :goto_4

    :catchall_6
    move-exception v0

    move-object v2, v1

    move-object v9, v2

    goto/16 :goto_a

    :catch_6
    move-exception v0

    move-object v2, v1

    move-object v9, v2

    goto :goto_3

    :catchall_7
    move-exception v0

    move-object v2, v1

    move-object v8, v2

    goto :goto_9

    :catch_7
    move-exception v0

    move-object v2, v1

    move-object v8, v2

    goto :goto_2

    :catchall_8
    move-exception v0

    move-object v2, v1

    move-object v7, v2

    goto :goto_8

    :catch_8
    move-exception v0

    move-object v2, v1

    move-object v7, v2

    goto :goto_1

    :catchall_9
    move-exception v0

    move-object v2, v1

    move-object v6, v2

    goto :goto_7

    :catch_9
    move-exception v0

    move-object v2, v1

    move-object v6, v2

    goto :goto_0

    :catchall_a
    move-exception v0

    move-object v2, v1

    move-object v4, v2

    goto :goto_6

    :catch_a
    move-exception v0

    move-object v2, v1

    move-object v4, v2

    move-object v6, v4

    :goto_0
    move-object v7, v6

    :goto_1
    move-object v8, v7

    :goto_2
    move-object v9, v8

    :goto_3
    move-object v10, v9

    move-object v11, v10

    :goto_4
    move-object v12, v11

    move-object v13, v12

    :goto_5
    move-object v1, v3

    goto :goto_d

    :catchall_b
    move-exception v0

    move-object v2, v1

    move-object v3, v2

    move-object v4, v3

    :goto_6
    move-object v6, v4

    :goto_7
    move-object v7, v6

    :goto_8
    move-object v8, v7

    :goto_9
    move-object v9, v8

    :goto_a
    move-object v10, v9

    move-object v11, v10

    :goto_b
    move-object v12, v11

    move-object v13, v12

    .line 30
    :goto_c
    sput-object v3, Lk/a/b/a/d/g0/m0/f;->c:Ljava/lang/reflect/Constructor;

    .line 31
    sput-object v4, Lk/a/b/a/d/g0/m0/f;->d:Ljava/lang/reflect/Method;

    .line 32
    sput-object v6, Lk/a/b/a/d/g0/m0/f;->e:Ljava/lang/reflect/Constructor;

    .line 33
    sput-object v7, Lk/a/b/a/d/g0/m0/f;->f:Ljava/lang/Class;

    .line 34
    sput-object v8, Lk/a/b/a/d/g0/m0/f;->g:Ljava/lang/reflect/Method;

    .line 35
    sput-object v2, Lk/a/b/a/d/g0/m0/f;->h:Ljava/lang/reflect/Method;

    .line 36
    sput-object v10, Lk/a/b/a/d/g0/m0/f;->i:Ljava/lang/Class;

    .line 37
    sput-object v9, Lk/a/b/a/d/g0/m0/f;->j:Ljava/lang/reflect/Method;

    .line 38
    sput-object v12, Lk/a/b/a/d/g0/m0/f;->k:Ljava/lang/reflect/Constructor;

    .line 39
    sput-object v11, Lk/a/b/a/d/g0/m0/f;->l:Ljava/lang/reflect/Method;

    .line 40
    sput-object v13, Lk/a/b/a/d/g0/m0/f;->m:Ljava/lang/Class;

    .line 41
    sput-object v1, Lk/a/b/a/d/g0/m0/f;->n:Ljava/lang/Exception;

    .line 42
    throw v0

    :catch_b
    move-exception v0

    move-object v2, v1

    move-object v4, v2

    move-object v6, v4

    move-object v7, v6

    move-object v8, v7

    move-object v9, v8

    move-object v10, v9

    move-object v11, v10

    move-object v12, v11

    move-object v13, v12

    .line 43
    :goto_d
    sput-object v1, Lk/a/b/a/d/g0/m0/f;->c:Ljava/lang/reflect/Constructor;

    .line 44
    sput-object v4, Lk/a/b/a/d/g0/m0/f;->d:Ljava/lang/reflect/Method;

    .line 45
    sput-object v6, Lk/a/b/a/d/g0/m0/f;->e:Ljava/lang/reflect/Constructor;

    .line 46
    sput-object v7, Lk/a/b/a/d/g0/m0/f;->f:Ljava/lang/Class;

    .line 47
    sput-object v8, Lk/a/b/a/d/g0/m0/f;->g:Ljava/lang/reflect/Method;

    .line 48
    sput-object v2, Lk/a/b/a/d/g0/m0/f;->h:Ljava/lang/reflect/Method;

    .line 49
    sput-object v10, Lk/a/b/a/d/g0/m0/f;->i:Ljava/lang/Class;

    .line 50
    sput-object v9, Lk/a/b/a/d/g0/m0/f;->j:Ljava/lang/reflect/Method;

    .line 51
    sput-object v12, Lk/a/b/a/d/g0/m0/f;->k:Ljava/lang/reflect/Constructor;

    .line 52
    sput-object v11, Lk/a/b/a/d/g0/m0/f;->l:Ljava/lang/reflect/Method;

    .line 53
    sput-object v13, Lk/a/b/a/d/g0/m0/f;->m:Ljava/lang/Class;

    .line 54
    sput-object v0, Lk/a/b/a/d/g0/m0/f;->n:Ljava/lang/Exception;

    :goto_e
    const-string v0, "TLS_DH_anon_WITH_AES_128_CBC_SHA"

    const-string v1, "SSL_DH_anon_WITH_3DES_EDE_CBC_SHA"

    const-string v2, "SSL_DH_anon_WITH_DES_CBC_SHA"

    const-string v3, "SSL_DH_anon_EXPORT_WITH_DES40_CBC_SHA"

    .line 55
    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lk/a/b/a/d/g0/m0/f;->o:Ljava/util/List;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()V
    .locals 3

    const-string v0, "k.b.e.a.a"

    .line 1
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Class;

    .line 2
    invoke-virtual {v0, v2}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/security/Provider;

    .line 3
    const-class v1, Ljava/security/Security;

    monitor-enter v1

    .line 4
    :try_start_0
    invoke-virtual {v0}, Ljava/security/Provider;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/security/Security;->getProvider(Ljava/lang/String;)Ljava/security/Provider;

    move-result-object v2

    if-nez v2, :cond_0

    .line 5
    invoke-static {v0}, Ljava/security/Security;->addProvider(Ljava/security/Provider;)I

    .line 6
    :cond_0
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method


# virtual methods
.method public final a(Lk/a/b/a/d/a0;[C)Ljava/security/KeyStore;
    .locals 2

    const-string p2, "Unexpected exception creating keystore"

    .line 7
    :try_start_0
    invoke-static {}, Ljava/security/KeyStore;->getDefaultType()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v0

    const/4 v1, 0x0

    .line 8
    invoke-virtual {v0, v1, v1}, Ljava/security/KeyStore;->load(Ljava/io/InputStream;[C)V

    .line 9
    check-cast p1, Lk/a/b/a/d/g0/m0/e;

    if-eqz p1, :cond_0

    return-object v0

    .line 10
    :cond_0
    throw v1
    :try_end_0
    .catch Ljava/security/KeyStoreException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p1

    .line 11
    new-instance v0, Lk/a/b/a/d/d0;

    invoke-direct {v0, p2, p1}, Lk/a/b/a/d/d0;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :catch_1
    move-exception p1

    .line 12
    new-instance v0, Lk/a/b/a/d/d0;

    invoke-direct {v0, p2, p1}, Lk/a/b/a/d/d0;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :catch_2
    move-exception p1

    .line 13
    new-instance v0, Lk/a/b/a/d/d0;

    invoke-direct {v0, p2, p1}, Lk/a/b/a/d/d0;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :catch_3
    move-exception p1

    .line 14
    new-instance v0, Lk/a/b/a/d/d0;

    invoke-direct {v0, p2, p1}, Lk/a/b/a/d/d0;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method
