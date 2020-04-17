.class public Lcom/microsoft/azure/proton/transport/proxy/impl/DigestProxyChallengeProcessorImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/microsoft/azure/proton/transport/proxy/ProxyChallengeProcessor;


# static fields
.field public static final DEFAULT_ALGORITHM:Ljava/lang/String; = "MD5"

.field public static final HEX_CODE:[C

.field public static final PROXY_AUTH_DIGEST:Ljava/lang/String; = "Proxy-Authenticate: Digest"


# instance fields
.field public final challenge:Ljava/lang/String;

.field public final headers:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final host:Ljava/lang/String;

.field public final logger:Lk/f/b;

.field public final nonceCounter:Ljava/util/concurrent/atomic/AtomicInteger;

.field public final proxyAuthenticator:Lcom/microsoft/azure/proton/transport/proxy/impl/ProxyAuthenticator;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-string v0, "0123456789ABCDEF"

    .line 1
    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    sput-object v0, Lcom/microsoft/azure/proton/transport/proxy/impl/DigestProxyChallengeProcessorImpl;->HEX_CODE:[C

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/microsoft/azure/proton/transport/proxy/impl/ProxyAuthenticator;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    const-class v0, Lcom/microsoft/azure/proton/transport/proxy/impl/DigestProxyChallengeProcessorImpl;

    invoke-static {v0}, Lk/f/c;->a(Ljava/lang/Class;)Lk/f/b;

    move-result-object v0

    iput-object v0, p0, Lcom/microsoft/azure/proton/transport/proxy/impl/DigestProxyChallengeProcessorImpl;->logger:Lk/f/b;

    .line 3
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/microsoft/azure/proton/transport/proxy/impl/DigestProxyChallengeProcessorImpl;->nonceCounter:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 4
    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    iput-object p1, p0, Lcom/microsoft/azure/proton/transport/proxy/impl/DigestProxyChallengeProcessorImpl;->host:Ljava/lang/String;

    .line 6
    iput-object p2, p0, Lcom/microsoft/azure/proton/transport/proxy/impl/DigestProxyChallengeProcessorImpl;->challenge:Ljava/lang/String;

    .line 7
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/microsoft/azure/proton/transport/proxy/impl/DigestProxyChallengeProcessorImpl;->headers:Ljava/util/Map;

    .line 8
    iput-object p3, p0, Lcom/microsoft/azure/proton/transport/proxy/impl/DigestProxyChallengeProcessorImpl;->proxyAuthenticator:Lcom/microsoft/azure/proton/transport/proxy/impl/ProxyAuthenticator;

    return-void
.end method

.method private computeDigestAuthHeader(Ljava/util/Map;Ljava/lang/String;Ljava/net/PasswordAuthentication;)V
    .locals 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/net/PasswordAuthentication;",
            ")V"
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    const-string v2, "Proxy-Authorization"

    const-string v3, "%s:%s:%s"

    .line 1
    iget-object v4, v1, Lcom/microsoft/azure/proton/transport/proxy/impl/DigestProxyChallengeProcessorImpl;->logger:Lk/f/b;

    invoke-interface {v4}, Lk/f/b;->a()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 2
    iget-object v4, v1, Lcom/microsoft/azure/proton/transport/proxy/impl/DigestProxyChallengeProcessorImpl;->logger:Lk/f/b;

    const-string v5, "Computing password authentication..."

    invoke-interface {v4, v5}, Lk/f/b;->c(Ljava/lang/String;)V

    .line 3
    :cond_0
    invoke-static/range {p3 .. p3}, Lcom/microsoft/azure/proton/transport/proxy/impl/ProxyAuthenticator;->isPasswordAuthenticationHasValues(Ljava/net/PasswordAuthentication;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 4
    iget-object v0, v1, Lcom/microsoft/azure/proton/transport/proxy/impl/DigestProxyChallengeProcessorImpl;->logger:Lk/f/b;

    invoke-interface {v0}, Lk/f/b;->f()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5
    iget-object v0, v1, Lcom/microsoft/azure/proton/transport/proxy/impl/DigestProxyChallengeProcessorImpl;->logger:Lk/f/b;

    const-string v2, "Password authentication does not have values. Not computing authorization header."

    invoke-interface {v0, v2}, Lk/f/b;->a(Ljava/lang/String;)V

    :cond_1
    return-void

    .line 6
    :cond_2
    invoke-virtual/range {p3 .. p3}, Ljava/net/PasswordAuthentication;->getUserName()Ljava/lang/String;

    move-result-object v4

    .line 7
    new-instance v5, Ljava/lang/String;

    invoke-virtual/range {p3 .. p3}, Ljava/net/PasswordAuthentication;->getPassword()[C

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/String;-><init>([C)V

    :try_start_0
    const-string v6, "nonce"

    .line 8
    invoke-interface {v0, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    const-string v7, "realm"

    .line 9
    invoke-interface {v0, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    const-string v8, "qop"

    .line 10
    invoke-interface {v0, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v8, "MD5"

    .line 11
    invoke-static {v8}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v8

    .line 12
    new-instance v9, Ljava/security/SecureRandom;

    invoke-direct {v9}, Ljava/security/SecureRandom;-><init>()V

    const/4 v10, 0x3

    new-array v11, v10, [Ljava/lang/Object;

    const/4 v12, 0x0

    aput-object v4, v11, v12

    const/4 v13, 0x1

    aput-object v7, v11, v13

    const/4 v14, 0x2

    aput-object v5, v11, v14

    .line 13
    invoke-static {v3, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    sget-object v11, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v5, v11}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v5

    invoke-virtual {v8, v5}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v5

    invoke-static {v5}, Lcom/microsoft/azure/proton/transport/proxy/impl/DigestProxyChallengeProcessorImpl;->printHexBinary([B)Ljava/lang/String;

    move-result-object v5

    const-string v11, "%s:%s"

    new-array v15, v14, [Ljava/lang/Object;

    const-string v16, "CONNECT"

    aput-object v16, v15, v12

    aput-object p2, v15, v13

    .line 14
    invoke-static {v11, v15}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    sget-object v15, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v11, v15}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v11

    invoke-virtual {v8, v11}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v11

    invoke-static {v11}, Lcom/microsoft/azure/proton/transport/proxy/impl/DigestProxyChallengeProcessorImpl;->printHexBinary([B)Ljava/lang/String;

    move-result-object v11

    const/16 v15, 0x10

    new-array v15, v15, [B

    .line 15
    invoke-virtual {v9, v15}, Ljava/security/SecureRandom;->nextBytes([B)V

    .line 16
    invoke-static {v15}, Lcom/microsoft/azure/proton/transport/proxy/impl/DigestProxyChallengeProcessorImpl;->printHexBinary([B)Ljava/lang/String;

    move-result-object v9

    .line 17
    invoke-static {v0}, Lcom/microsoft/azure/proton/transport/proxy/impl/StringUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v15

    const/16 v16, 0x5

    const/16 v17, 0x4

    const/4 v14, 0x6

    if-eqz v15, :cond_3

    new-array v0, v10, [Ljava/lang/Object;

    aput-object v5, v0, v12

    aput-object v6, v0, v13

    const/4 v5, 0x2

    aput-object v11, v0, v5

    .line 18
    invoke-static {v3, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sget-object v3, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v0, v3}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    invoke-virtual {v8, v0}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v0

    invoke-static {v0}, Lcom/microsoft/azure/proton/transport/proxy/impl/DigestProxyChallengeProcessorImpl;->printHexBinary([B)Ljava/lang/String;

    move-result-object v0

    const-string v3, "Digest username=\"%s\",realm=\"%s\",nonce=\"%s\",uri=\"%s\",cnonce=\"%s\",response=\"%s\""

    new-array v5, v14, [Ljava/lang/Object;

    aput-object v4, v5, v12

    aput-object v7, v5, v13

    const/4 v4, 0x2

    aput-object v6, v5, v4

    aput-object p2, v5, v10

    aput-object v9, v5, v17

    aput-object v0, v5, v16

    .line 19
    invoke-static {v3, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 20
    :cond_3
    iget-object v3, v1, Lcom/microsoft/azure/proton/transport/proxy/impl/DigestProxyChallengeProcessorImpl;->nonceCounter:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v3

    const-string v15, "%s:%s:%08X:%s:%s:%s"

    new-array v10, v14, [Ljava/lang/Object;

    aput-object v5, v10, v12

    aput-object v6, v10, v13

    .line 21
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/16 v18, 0x2

    aput-object v5, v10, v18

    const/4 v5, 0x3

    aput-object v9, v10, v5

    aput-object v0, v10, v17

    aput-object v11, v10, v16

    invoke-static {v15, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    sget-object v10, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v5, v10}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v5

    invoke-virtual {v8, v5}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v5

    invoke-static {v5}, Lcom/microsoft/azure/proton/transport/proxy/impl/DigestProxyChallengeProcessorImpl;->printHexBinary([B)Ljava/lang/String;

    move-result-object v5

    const-string v8, "Digest username=\"%s\",realm=\"%s\",nonce=\"%s\",uri=\"%s\",cnonce=\"%s\",nc=%08X,response=\"%s\",qop=\"%s\""

    const/16 v10, 0x8

    new-array v10, v10, [Ljava/lang/Object;

    aput-object v4, v10, v12

    aput-object v7, v10, v13

    const/4 v4, 0x2

    aput-object v6, v10, v4

    const/4 v4, 0x3

    aput-object p2, v10, v4

    aput-object v9, v10, v17

    .line 22
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v10, v16

    aput-object v5, v10, v14

    const/4 v3, 0x7

    aput-object v0, v10, v3

    .line 23
    invoke-static {v8, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 24
    :goto_0
    iget-object v3, v1, Lcom/microsoft/azure/proton/transport/proxy/impl/DigestProxyChallengeProcessorImpl;->headers:Ljava/util/Map;

    invoke-interface {v3, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    iget-object v3, v1, Lcom/microsoft/azure/proton/transport/proxy/impl/DigestProxyChallengeProcessorImpl;->logger:Lk/f/b;

    invoke-interface {v3}, Lk/f/b;->a()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 26
    iget-object v3, v1, Lcom/microsoft/azure/proton/transport/proxy/impl/DigestProxyChallengeProcessorImpl;->logger:Lk/f/b;

    const-string v4, "Adding authorization header. {} \'{}\'"

    invoke-interface {v3, v4, v2, v0}, Lk/f/b;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_4
    return-void

    :catch_0
    move-exception v0

    .line 27
    iget-object v2, v1, Lcom/microsoft/azure/proton/transport/proxy/impl/DigestProxyChallengeProcessorImpl;->logger:Lk/f/b;

    invoke-interface {v2}, Lk/f/b;->f()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 28
    iget-object v2, v1, Lcom/microsoft/azure/proton/transport/proxy/impl/DigestProxyChallengeProcessorImpl;->logger:Lk/f/b;

    const-string v3, "Error encountered when computing header."

    invoke-interface {v2, v3, v0}, Lk/f/b;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 29
    :cond_5
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method private getChallengeQuestionHeaders(Ljava/lang/String;Ljava/util/Map;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const/16 v0, 0x1a

    .line 1
    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    const-string v0, ","

    .line 2
    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 3
    iget-object v0, p0, Lcom/microsoft/azure/proton/transport/proxy/impl/DigestProxyChallengeProcessorImpl;->logger:Lk/f/b;

    invoke-interface {v0}, Lk/f/b;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4
    iget-object v0, p0, Lcom/microsoft/azure/proton/transport/proxy/impl/DigestProxyChallengeProcessorImpl;->logger:Lk/f/b;

    const-string v1, "Fetching challenge questions."

    invoke-interface {v0, v1}, Lk/f/b;->c(Ljava/lang/String;)V

    .line 5
    :cond_0
    array-length v0, p1

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_2

    aget-object v3, p1, v2

    const-string v4, "="

    .line 6
    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 7
    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v3, v1, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    .line 8
    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    .line 9
    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    const-string v5, "\""

    const-string v6, ""

    invoke-virtual {v3, v5, v6}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p2, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 10
    :cond_2
    iget-object p1, p0, Lcom/microsoft/azure/proton/transport/proxy/impl/DigestProxyChallengeProcessorImpl;->logger:Lk/f/b;

    invoke-interface {p1}, Lk/f/b;->a()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 11
    iget-object p1, p0, Lcom/microsoft/azure/proton/transport/proxy/impl/DigestProxyChallengeProcessorImpl;->logger:Lk/f/b;

    const-string v0, "Challenge questions are: "

    invoke-interface {p1, v0}, Lk/f/b;->c(Ljava/lang/String;)V

    .line 12
    new-instance p1, Le/d/a/a/a/a/a/a;

    invoke-direct {p1, p0}, Le/d/a/a/a/a/a/a;-><init>(Lcom/microsoft/azure/proton/transport/proxy/impl/DigestProxyChallengeProcessorImpl;)V

    invoke-interface {p2, p1}, Ljava/util/Map;->forEach(Ljava/util/function/BiConsumer;)V

    :cond_3
    return-void
.end method

.method public static printHexBinary([B)Ljava/lang/String;
    .locals 6

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    array-length v1, p0

    mul-int/lit8 v1, v1, 0x2

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 2
    array-length v1, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-byte v3, p0, v2

    .line 3
    sget-object v4, Lcom/microsoft/azure/proton/transport/proxy/impl/DigestProxyChallengeProcessorImpl;->HEX_CODE:[C

    shr-int/lit8 v5, v3, 0x4

    and-int/lit8 v5, v5, 0xf

    aget-char v4, v4, v5

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 4
    sget-object v4, Lcom/microsoft/azure/proton/transport/proxy/impl/DigestProxyChallengeProcessorImpl;->HEX_CODE:[C

    and-int/lit8 v3, v3, 0xf

    aget-char v3, v4, v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    sget-object v0, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {p0, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public synthetic a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/microsoft/azure/proton/transport/proxy/impl/DigestProxyChallengeProcessorImpl;->logger:Lk/f/b;

    const-string v1, "{}: {}"

    invoke-interface {v0, v1, p1, p2}, Lk/f/b;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public synthetic b(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/microsoft/azure/proton/transport/proxy/impl/DigestProxyChallengeProcessorImpl;->logger:Lk/f/b;

    const-string v1, "{}: {}"

    invoke-interface {v0, v1, p1, p2}, Lk/f/b;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public getHeader()Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/Scanner;

    iget-object v1, p0, Lcom/microsoft/azure/proton/transport/proxy/impl/DigestProxyChallengeProcessorImpl;->challenge:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/util/Scanner;-><init>(Ljava/lang/String;)V

    .line 2
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 3
    iget-object v2, p0, Lcom/microsoft/azure/proton/transport/proxy/impl/DigestProxyChallengeProcessorImpl;->logger:Lk/f/b;

    invoke-interface {v2}, Lk/f/b;->a()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 4
    iget-object v2, p0, Lcom/microsoft/azure/proton/transport/proxy/impl/DigestProxyChallengeProcessorImpl;->logger:Lk/f/b;

    const-string v3, "Fetching header from:"

    invoke-interface {v2, v3}, Lk/f/b;->c(Ljava/lang/String;)V

    .line 5
    :cond_0
    invoke-virtual {v0}, Ljava/util/Scanner;->hasNextLine()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 6
    invoke-virtual {v0}, Ljava/util/Scanner;->nextLine()Ljava/lang/String;

    move-result-object v2

    .line 7
    iget-object v3, p0, Lcom/microsoft/azure/proton/transport/proxy/impl/DigestProxyChallengeProcessorImpl;->logger:Lk/f/b;

    invoke-interface {v3}, Lk/f/b;->a()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 8
    iget-object v3, p0, Lcom/microsoft/azure/proton/transport/proxy/impl/DigestProxyChallengeProcessorImpl;->logger:Lk/f/b;

    invoke-interface {v3, v2}, Lk/f/b;->c(Ljava/lang/String;)V

    :cond_1
    const-string v3, "Proxy-Authenticate: Digest"

    .line 9
    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 10
    invoke-direct {p0, v2, v1}, Lcom/microsoft/azure/proton/transport/proxy/impl/DigestProxyChallengeProcessorImpl;->getChallengeQuestionHeaders(Ljava/lang/String;Ljava/util/Map;)V

    .line 11
    iget-object v0, p0, Lcom/microsoft/azure/proton/transport/proxy/impl/DigestProxyChallengeProcessorImpl;->host:Ljava/lang/String;

    iget-object v2, p0, Lcom/microsoft/azure/proton/transport/proxy/impl/DigestProxyChallengeProcessorImpl;->proxyAuthenticator:Lcom/microsoft/azure/proton/transport/proxy/impl/ProxyAuthenticator;

    sget-object v3, Lcom/microsoft/azure/proton/transport/proxy/impl/Constants;->DIGEST_LOWERCASE:Ljava/lang/String;

    .line 12
    invoke-virtual {v2, v3, v0}, Lcom/microsoft/azure/proton/transport/proxy/impl/ProxyAuthenticator;->getPasswordAuthentication(Ljava/lang/String;Ljava/lang/String;)Ljava/net/PasswordAuthentication;

    move-result-object v2

    .line 13
    invoke-direct {p0, v1, v0, v2}, Lcom/microsoft/azure/proton/transport/proxy/impl/DigestProxyChallengeProcessorImpl;->computeDigestAuthHeader(Ljava/util/Map;Ljava/lang/String;Ljava/net/PasswordAuthentication;)V

    .line 14
    iget-object v0, p0, Lcom/microsoft/azure/proton/transport/proxy/impl/DigestProxyChallengeProcessorImpl;->logger:Lk/f/b;

    const-string v1, "Finished getting auth header."

    invoke-interface {v0, v1}, Lk/f/b;->c(Ljava/lang/String;)V

    .line 15
    :cond_2
    iget-object v0, p0, Lcom/microsoft/azure/proton/transport/proxy/impl/DigestProxyChallengeProcessorImpl;->logger:Lk/f/b;

    invoke-interface {v0}, Lk/f/b;->a()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 16
    iget-object v0, p0, Lcom/microsoft/azure/proton/transport/proxy/impl/DigestProxyChallengeProcessorImpl;->logger:Lk/f/b;

    const-string v1, "Headers added are:"

    invoke-interface {v0, v1}, Lk/f/b;->c(Ljava/lang/String;)V

    .line 17
    iget-object v0, p0, Lcom/microsoft/azure/proton/transport/proxy/impl/DigestProxyChallengeProcessorImpl;->headers:Ljava/util/Map;

    new-instance v1, Le/d/a/a/a/a/a/b;

    invoke-direct {v1, p0}, Le/d/a/a/a/a/a/b;-><init>(Lcom/microsoft/azure/proton/transport/proxy/impl/DigestProxyChallengeProcessorImpl;)V

    invoke-interface {v0, v1}, Ljava/util/Map;->forEach(Ljava/util/function/BiConsumer;)V

    .line 18
    :cond_3
    iget-object v0, p0, Lcom/microsoft/azure/proton/transport/proxy/impl/DigestProxyChallengeProcessorImpl;->headers:Ljava/util/Map;

    return-object v0
.end method
