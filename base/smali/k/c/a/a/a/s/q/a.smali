.class public Lk/c/a/a/a/s/q/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final d:[Ljava/lang/String;

.field public static final e:[B


# instance fields
.field public a:Ljava/util/Hashtable;

.field public b:Ljava/util/Properties;

.field public c:Lk/c/a/a/a/t/b;


# direct methods
.method public static constructor <clinit>()V
    .locals 14

    const-string v0, "com.ibm.ssl.protocol"

    const-string v1, "com.ibm.ssl.contextProvider"

    const-string v2, "com.ibm.ssl.keyStore"

    const-string v3, "com.ibm.ssl.keyStorePassword"

    const-string v4, "com.ibm.ssl.keyStoreType"

    const-string v5, "com.ibm.ssl.keyStoreProvider"

    const-string v6, "com.ibm.ssl.keyManager"

    const-string v7, "com.ibm.ssl.trustStore"

    const-string v8, "com.ibm.ssl.trustStorePassword"

    const-string v9, "com.ibm.ssl.trustStoreType"

    const-string v10, "com.ibm.ssl.trustStoreProvider"

    const-string v11, "com.ibm.ssl.trustManager"

    const-string v12, "com.ibm.ssl.enabledCipherSuites"

    const-string v13, "com.ibm.ssl.clientAuthentication"

    .line 1
    filled-new-array/range {v0 .. v13}, [Ljava/lang/String;

    move-result-object v0

    .line 2
    sput-object v0, Lk/c/a/a/a/s/q/a;->d:[Ljava/lang/String;

    const/16 v0, 0x8

    new-array v0, v0, [B

    .line 3
    fill-array-data v0, :array_0

    sput-object v0, Lk/c/a/a/a/s/q/a;->e:[B

    return-void

    :array_0
    .array-data 1
        -0x63t
        -0x59t
        -0x27t
        -0x80t
        0x5t
        -0x48t
        -0x77t
        -0x64t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lk/c/a/a/a/s/q/a;->c:Lk/c/a/a/a/t/b;

    .line 3
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lk/c/a/a/a/s/q/a;->a:Ljava/util/Hashtable;

    return-void
.end method

.method public static a([C)Ljava/lang/String;
    .locals 6

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 21
    :cond_0
    array-length v0, p0

    mul-int/lit8 v0, v0, 0x2

    new-array v0, v0, [B

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 22
    :goto_0
    array-length v4, p0

    if-lt v2, v4, :cond_2

    .line 23
    :goto_1
    array-length p0, v0

    if-lt v1, p0, :cond_1

    .line 24
    new-instance p0, Ljava/lang/StringBuilder;

    const-string v1, "{xor}"

    invoke-direct {p0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 25
    new-instance v1, Ljava/lang/String;

    invoke-static {v0}, Lk/c/a/a/a/s/q/b;->a([B)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 27
    :cond_1
    aget-byte p0, v0, v1

    sget-object v2, Lk/c/a/a/a/s/q/a;->e:[B

    array-length v3, v2

    rem-int v3, v1, v3

    aget-byte v2, v2, v3

    xor-int/2addr p0, v2

    and-int/lit16 p0, p0, 0xff

    int-to-byte p0, p0

    aput-byte p0, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    add-int/lit8 v4, v3, 0x1

    .line 28
    aget-char v5, p0, v2

    and-int/lit16 v5, v5, 0xff

    int-to-byte v5, v5

    aput-byte v5, v0, v3

    add-int/lit8 v3, v4, 0x1

    add-int/lit8 v5, v2, 0x1

    .line 29
    aget-char v2, p0, v2

    shr-int/lit8 v2, v2, 0x8

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, v0, v4

    move v2, v5

    goto :goto_0
.end method

.method public static o(Ljava/lang/String;)[C
    .locals 6

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    const/4 v1, 0x5

    .line 1
    :try_start_0
    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lk/c/a/a/a/s/q/b;->a(Ljava/lang/String;)[B

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 2
    :goto_0
    array-length v2, p0

    if-lt v0, v2, :cond_2

    .line 3
    array-length v0, p0

    div-int/lit8 v0, v0, 0x2

    new-array v2, v0, [C

    const/4 v0, 0x0

    .line 4
    :goto_1
    array-length v3, p0

    if-lt v1, v3, :cond_1

    return-object v2

    :cond_1
    add-int/lit8 v3, v0, 0x1

    add-int/lit8 v4, v1, 0x1

    .line 5
    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    add-int/lit8 v5, v4, 0x1

    aget-byte v4, p0, v4

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0x8

    add-int/2addr v1, v4

    int-to-char v1, v1

    aput-char v1, v2, v0

    move v0, v3

    move v1, v5

    goto :goto_1

    .line 6
    :cond_2
    aget-byte v2, p0, v0

    sget-object v3, Lk/c/a/a/a/s/q/a;->e:[B

    array-length v4, v3

    rem-int v4, v0, v4

    aget-byte v3, v3, v4

    xor-int/2addr v2, v3

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, p0, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :catch_0
    return-object v0
.end method


# virtual methods
.method public final a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 30
    iget-object v1, p0, Lk/c/a/a/a/s/q/a;->a:Ljava/util/Hashtable;

    invoke-virtual {v1, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Properties;

    goto :goto_0

    :cond_0
    move-object p1, v0

    :goto_0
    if-eqz p1, :cond_1

    .line 31
    invoke-virtual {p1, p2}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    goto :goto_1

    .line 32
    :cond_1
    iget-object p1, p0, Lk/c/a/a/a/s/q/a;->b:Ljava/util/Properties;

    if-eqz p1, :cond_2

    .line 33
    invoke-virtual {p1, p2}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    move-object v0, p1

    :cond_2
    :goto_1
    if-eqz v0, :cond_3

    return-object v0

    :cond_3
    if-eqz p3, :cond_4

    .line 34
    invoke-static {p3}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_4
    return-object v0
.end method

.method public a(Ljava/lang/String;)Ljavax/net/ssl/SSLSocketFactory;
    .locals 6

    .line 35
    invoke-virtual {p0, p1}, Lk/c/a/a/a/s/q/a;->h(Ljava/lang/String;)Ljavax/net/ssl/SSLContext;

    move-result-object v0

    .line 36
    iget-object v1, p0, Lk/c/a/a/a/s/q/a;->c:Lk/c/a/a/a/t/b;

    if-eqz v1, :cond_2

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    if-eqz p1, :cond_0

    move-object v4, p1

    goto :goto_0

    :cond_0
    const-string v4, "null (broker defaults)"

    :goto_0
    aput-object v4, v2, v3

    const/4 v3, 0x1

    .line 37
    invoke-virtual {p0, p1}, Lk/c/a/a/a/s/q/a;->b(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_1

    const/4 v4, 0x0

    const-string v5, "com.ibm.ssl.enabledCipherSuites"

    invoke-virtual {p0, p1, v5, v4}, Lk/c/a/a/a/s/q/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    :cond_1
    const-string p1, "null (using platform-enabled cipher suites)"

    :goto_1
    aput-object p1, v2, v3

    const-string p1, "org.eclipse.paho.client.mqttv3.internal.security.SSLSocketFactoryFactory"

    const-string v3, "createSocketFactory"

    const-string v4, "12020"

    .line 38
    invoke-interface {v1, p1, v3, v4, v2}, Lk/c/a/a/a/t/b;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 39
    :cond_2
    invoke-virtual {v0}, Ljavax/net/ssl/SSLContext;->getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object p1

    return-object p1
.end method

.method public a(Ljava/util/Properties;Ljava/lang/String;)V
    .locals 6

    .line 1
    invoke-virtual {p1}, Ljava/util/Properties;->keySet()Ljava/util/Set;

    move-result-object v0

    .line 2
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 3
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_3

    .line 4
    new-instance v0, Ljava/util/Properties;

    invoke-direct {v0}, Ljava/util/Properties;-><init>()V

    .line 5
    invoke-virtual {v0, p1}, Ljava/util/Properties;->putAll(Ljava/util/Map;)V

    const-string p1, "com.ibm.ssl.keyStorePassword"

    .line 6
    invoke-virtual {v0, p1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "{xor}"

    if-eqz v1, :cond_0

    .line 7
    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 8
    invoke-virtual {v1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    invoke-static {v1}, Lk/c/a/a/a/s/q/a;->a([C)Ljava/lang/String;

    move-result-object v1

    .line 9
    invoke-virtual {v0, p1, v1}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    const-string p1, "com.ibm.ssl.trustStorePassword"

    .line 10
    invoke-virtual {v0, p1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 11
    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 12
    invoke-virtual {v1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    invoke-static {v1}, Lk/c/a/a/a/s/q/a;->a([C)Ljava/lang/String;

    move-result-object v1

    .line 13
    invoke-virtual {v0, p1, v1}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    if-eqz p2, :cond_2

    .line 14
    iget-object p1, p0, Lk/c/a/a/a/s/q/a;->a:Ljava/util/Hashtable;

    invoke-virtual {p1, p2, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 15
    :cond_2
    iput-object v0, p0, Lk/c/a/a/a/s/q/a;->b:Ljava/util/Properties;

    :goto_1
    return-void

    .line 16
    :cond_3
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 17
    :goto_2
    sget-object v4, Lk/c/a/a/a/s/q/a;->d:[Ljava/lang/String;

    array-length v5, v4

    if-lt v3, v5, :cond_4

    goto :goto_3

    .line 18
    :cond_4
    aget-object v4, v4, v3

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 19
    :goto_3
    sget-object v4, Lk/c/a/a/a/s/q/a;->d:[Ljava/lang/String;

    array-length v4, v4

    if-ge v3, v4, :cond_5

    const/4 v2, 0x1

    :cond_5
    if-eqz v2, :cond_6

    goto :goto_0

    .line 20
    :cond_6
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, " is not a valid IBM SSL property key."

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_7
    add-int/lit8 v3, v3, 0x1

    goto :goto_2
.end method

.method public b(Ljava/lang/String;)[Ljava/lang/String;
    .locals 5

    const/4 v0, 0x0

    const-string v1, "com.ibm.ssl.enabledCipherSuites"

    .line 1
    invoke-virtual {p0, p1, v1, v0}, Lk/c/a/a/a/s/q/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_0

    goto :goto_1

    .line 2
    :cond_0
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    const/16 v1, 0x2c

    .line 3
    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    const/4 v3, 0x0

    :goto_0
    const/4 v4, -0x1

    if-gt v2, v4, :cond_1

    .line 4
    invoke-virtual {p1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 5
    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result p1

    new-array p1, p1, [Ljava/lang/String;

    .line 6
    invoke-virtual {v0, p1}, Ljava/util/Vector;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-object v0, p1

    :goto_1
    return-object v0

    .line 7
    :cond_1
    invoke-virtual {p1, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v2, 0x1

    .line 8
    invoke-virtual {p1, v1, v3}, Ljava/lang/String;->indexOf(II)I

    move-result v2

    goto :goto_0
.end method

.method public c(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const-string v0, "com.ibm.ssl.contextProvider"

    const/4 v1, 0x0

    .line 1
    invoke-virtual {p0, p1, v0, v1}, Lk/c/a/a/a/s/q/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public d(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const-string v0, "com.ibm.ssl.keyManager"

    const-string v1, "ssl.KeyManagerFactory.algorithm"

    .line 1
    invoke-virtual {p0, p1, v0, v1}, Lk/c/a/a/a/s/q/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public e(Ljava/lang/String;)[C
    .locals 2

    const-string v0, "com.ibm.ssl.keyStorePassword"

    const-string v1, "javax.net.ssl.keyStorePassword"

    .line 1
    invoke-virtual {p0, p1, v0, v1}, Lk/c/a/a/a/s/q/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_1

    const-string v0, "{xor}"

    .line 2
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    invoke-static {p1}, Lk/c/a/a/a/s/q/a;->o(Ljava/lang/String;)[C

    move-result-object p1

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object p1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method public f(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const-string v0, "com.ibm.ssl.keyStoreProvider"

    const/4 v1, 0x0

    .line 1
    invoke-virtual {p0, p1, v0, v1}, Lk/c/a/a/a/s/q/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public g(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const-string v0, "com.ibm.ssl.keyStoreType"

    const-string v1, "javax.net.ssl.keyStoreType"

    .line 1
    invoke-virtual {p0, p1, v0, v1}, Lk/c/a/a/a/s/q/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final h(Ljava/lang/String;)Ljavax/net/ssl/SSLContext;
    .locals 20

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    const-string v3, "com.ibm.ssl.keyStore"

    .line 1
    invoke-virtual/range {p0 .. p1}, Lk/c/a/a/a/s/q/a;->i(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_0

    const-string v4, "TLS"

    .line 2
    :cond_0
    iget-object v5, v1, Lk/c/a/a/a/s/q/a;->c:Lk/c/a/a/a/t/b;

    const/4 v6, 0x1

    const-string v7, "null (broker defaults)"

    const/4 v8, 0x0

    const/4 v9, 0x2

    const-string v10, "getSSLContext"

    const-string v11, "org.eclipse.paho.client.mqttv3.internal.security.SSLSocketFactoryFactory"

    if-eqz v5, :cond_2

    new-array v12, v9, [Ljava/lang/Object;

    if-eqz v2, :cond_1

    move-object v13, v2

    goto :goto_0

    :cond_1
    move-object v13, v7

    :goto_0
    aput-object v13, v12, v8

    aput-object v4, v12, v6

    const-string v13, "12000"

    .line 3
    invoke-interface {v5, v11, v10, v13, v12}, Lk/c/a/a/a/t/b;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 4
    :cond_2
    invoke-virtual/range {p0 .. p1}, Lk/c/a/a/a/s/q/a;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_3

    .line 5
    :try_start_0
    invoke-static {v4}, Ljavax/net/ssl/SSLContext;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/SSLContext;

    move-result-object v4

    goto :goto_1

    .line 6
    :cond_3
    invoke-static {v4, v5}, Ljavax/net/ssl/SSLContext;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljavax/net/ssl/SSLContext;

    move-result-object v4

    .line 7
    :goto_1
    iget-object v5, v1, Lk/c/a/a/a/s/q/a;->c:Lk/c/a/a/a/t/b;

    if-eqz v5, :cond_5

    .line 8
    iget-object v5, v1, Lk/c/a/a/a/s/q/a;->c:Lk/c/a/a/a/t/b;

    const-string v12, "12001"

    new-array v13, v9, [Ljava/lang/Object;

    if-eqz v2, :cond_4

    move-object v14, v2

    goto :goto_2

    :cond_4
    move-object v14, v7

    :goto_2
    aput-object v14, v13, v8

    .line 9
    invoke-virtual {v4}, Ljavax/net/ssl/SSLContext;->getProvider()Ljava/security/Provider;

    move-result-object v14

    invoke-virtual {v14}, Ljava/security/Provider;->getName()Ljava/lang/String;

    move-result-object v14

    aput-object v14, v13, v6

    .line 10
    invoke-interface {v5, v11, v10, v12, v13}, Lk/c/a/a/a/t/b;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_5
    const/4 v5, 0x0

    .line 11
    invoke-virtual {v1, v2, v3, v5}, Lk/c/a/a/a/s/q/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    if-nez v12, :cond_6

    const-string v12, "javax.net.ssl.keyStore"

    .line 12
    invoke-virtual {v1, v2, v3, v12}, Lk/c/a/a/a/s/q/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 13
    :cond_6
    iget-object v3, v1, Lk/c/a/a/a/s/q/a;->c:Lk/c/a/a/a/t/b;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_b
    .catch Ljava/security/NoSuchProviderException; {:try_start_0 .. :try_end_0} :catch_a
    .catch Ljava/security/KeyManagementException; {:try_start_0 .. :try_end_0} :catch_9

    const-string v13, "null"

    if-eqz v3, :cond_9

    .line 14
    :try_start_1
    iget-object v3, v1, Lk/c/a/a/a/s/q/a;->c:Lk/c/a/a/a/t/b;

    const-string v14, "12004"

    new-array v15, v9, [Ljava/lang/Object;

    if-eqz v2, :cond_7

    move-object/from16 v16, v2

    goto :goto_3

    :cond_7
    move-object/from16 v16, v7

    :goto_3
    aput-object v16, v15, v8

    if-eqz v12, :cond_8

    move-object/from16 v16, v12

    goto :goto_4

    :cond_8
    move-object/from16 v16, v13

    :goto_4
    aput-object v16, v15, v6

    invoke-interface {v3, v11, v10, v14, v15}, Lk/c/a/a/a/t/b;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 15
    :cond_9
    invoke-virtual/range {p0 .. p1}, Lk/c/a/a/a/s/q/a;->e(Ljava/lang/String;)[C

    move-result-object v3

    .line 16
    iget-object v14, v1, Lk/c/a/a/a/s/q/a;->c:Lk/c/a/a/a/t/b;

    if-eqz v14, :cond_c

    .line 17
    iget-object v14, v1, Lk/c/a/a/a/s/q/a;->c:Lk/c/a/a/a/t/b;

    const-string v15, "12005"

    new-array v5, v9, [Ljava/lang/Object;

    if-eqz v2, :cond_a

    move-object/from16 v17, v2

    goto :goto_5

    :cond_a
    move-object/from16 v17, v7

    :goto_5
    aput-object v17, v5, v8

    if-eqz v3, :cond_b

    .line 18
    invoke-static {v3}, Lk/c/a/a/a/s/q/a;->a([C)Ljava/lang/String;

    move-result-object v17

    goto :goto_6

    :cond_b
    move-object/from16 v17, v13

    :goto_6
    aput-object v17, v5, v6

    .line 19
    invoke-interface {v14, v11, v10, v15, v5}, Lk/c/a/a/a/t/b;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 20
    :cond_c
    invoke-virtual/range {p0 .. p1}, Lk/c/a/a/a/s/q/a;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_d

    .line 21
    invoke-static {}, Ljava/security/KeyStore;->getDefaultType()Ljava/lang/String;

    move-result-object v5

    .line 22
    :cond_d
    iget-object v14, v1, Lk/c/a/a/a/s/q/a;->c:Lk/c/a/a/a/t/b;

    if-eqz v14, :cond_10

    .line 23
    iget-object v14, v1, Lk/c/a/a/a/s/q/a;->c:Lk/c/a/a/a/t/b;

    const-string v15, "12006"

    new-array v6, v9, [Ljava/lang/Object;

    if-eqz v2, :cond_e

    move-object/from16 v18, v2

    goto :goto_7

    :cond_e
    move-object/from16 v18, v7

    :goto_7
    aput-object v18, v6, v8

    if-eqz v5, :cond_f

    move-object/from16 v17, v5

    goto :goto_8

    :cond_f
    move-object/from16 v17, v13

    :goto_8
    const/16 v18, 0x1

    aput-object v17, v6, v18

    invoke-interface {v14, v11, v10, v15, v6}, Lk/c/a/a/a/t/b;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 24
    :cond_10
    invoke-static {}, Ljavax/net/ssl/KeyManagerFactory;->getDefaultAlgorithm()Ljava/lang/String;

    move-result-object v6

    .line 25
    invoke-virtual/range {p0 .. p1}, Lk/c/a/a/a/s/q/a;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 26
    invoke-virtual/range {p0 .. p1}, Lk/c/a/a/a/s/q/a;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15
    :try_end_1
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1 .. :try_end_1} :catch_b
    .catch Ljava/security/NoSuchProviderException; {:try_start_1 .. :try_end_1} :catch_a
    .catch Ljava/security/KeyManagementException; {:try_start_1 .. :try_end_1} :catch_9

    if-eqz v15, :cond_11

    move-object v6, v15

    :cond_11
    if-eqz v12, :cond_16

    if-eqz v5, :cond_16

    if-eqz v6, :cond_16

    .line 27
    :try_start_2
    invoke-static {v5}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v5

    .line 28
    new-instance v15, Ljava/io/FileInputStream;

    invoke-direct {v15, v12}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v15, v3}, Ljava/security/KeyStore;->load(Ljava/io/InputStream;[C)V

    if-eqz v14, :cond_12

    .line 29
    invoke-static {v6, v14}, Ljavax/net/ssl/KeyManagerFactory;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljavax/net/ssl/KeyManagerFactory;

    move-result-object v12

    goto :goto_9

    .line 30
    :cond_12
    invoke-static {v6}, Ljavax/net/ssl/KeyManagerFactory;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/KeyManagerFactory;

    move-result-object v12

    .line 31
    :goto_9
    iget-object v14, v1, Lk/c/a/a/a/s/q/a;->c:Lk/c/a/a/a/t/b;

    if-eqz v14, :cond_15

    .line 32
    iget-object v14, v1, Lk/c/a/a/a/s/q/a;->c:Lk/c/a/a/a/t/b;

    const-string v15, "12010"

    new-array v8, v9, [Ljava/lang/Object;

    if-eqz v2, :cond_13

    move-object/from16 v18, v2

    goto :goto_a

    :cond_13
    move-object/from16 v18, v7

    :goto_a
    const/16 v19, 0x0

    aput-object v18, v8, v19

    const/16 v17, 0x1

    aput-object v6, v8, v17

    invoke-interface {v14, v11, v10, v15, v8}, Lk/c/a/a/a/t/b;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 33
    iget-object v6, v1, Lk/c/a/a/a/s/q/a;->c:Lk/c/a/a/a/t/b;

    const-string v8, "12009"

    new-array v14, v9, [Ljava/lang/Object;

    if-eqz v2, :cond_14

    move-object v15, v2

    goto :goto_b

    :cond_14
    move-object v15, v7

    :goto_b
    const/16 v18, 0x0

    aput-object v15, v14, v18

    .line 34
    invoke-virtual {v12}, Ljavax/net/ssl/KeyManagerFactory;->getProvider()Ljava/security/Provider;

    move-result-object v15

    invoke-virtual {v15}, Ljava/security/Provider;->getName()Ljava/lang/String;

    move-result-object v15

    const/16 v17, 0x1

    aput-object v15, v14, v17

    .line 35
    invoke-interface {v6, v11, v10, v8, v14}, Lk/c/a/a/a/t/b;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 36
    :cond_15
    invoke-virtual {v12, v5, v3}, Ljavax/net/ssl/KeyManagerFactory;->init(Ljava/security/KeyStore;[C)V

    .line 37
    invoke-virtual {v12}, Ljavax/net/ssl/KeyManagerFactory;->getKeyManagers()[Ljavax/net/ssl/KeyManager;

    move-result-object v3
    :try_end_2
    .catch Ljava/security/KeyStoreException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Ljava/security/cert/CertificateException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/security/UnrecoverableKeyException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_2 .. :try_end_2} :catch_b
    .catch Ljava/security/NoSuchProviderException; {:try_start_2 .. :try_end_2} :catch_a
    .catch Ljava/security/KeyManagementException; {:try_start_2 .. :try_end_2} :catch_9

    goto :goto_c

    :catch_0
    move-exception v0

    move-object v2, v0

    .line 38
    :try_start_3
    new-instance v3, Lk/c/a/a/a/p;

    invoke-direct {v3, v2}, Lk/c/a/a/a/p;-><init>(Ljava/lang/Throwable;)V

    throw v3

    :catch_1
    move-exception v0

    move-object v2, v0

    .line 39
    new-instance v3, Lk/c/a/a/a/p;

    invoke-direct {v3, v2}, Lk/c/a/a/a/p;-><init>(Ljava/lang/Throwable;)V

    throw v3

    :catch_2
    move-exception v0

    move-object v2, v0

    .line 40
    new-instance v3, Lk/c/a/a/a/p;

    invoke-direct {v3, v2}, Lk/c/a/a/a/p;-><init>(Ljava/lang/Throwable;)V

    throw v3

    :catch_3
    move-exception v0

    move-object v2, v0

    .line 41
    new-instance v3, Lk/c/a/a/a/p;

    invoke-direct {v3, v2}, Lk/c/a/a/a/p;-><init>(Ljava/lang/Throwable;)V

    throw v3

    :catch_4
    move-exception v0

    move-object v2, v0

    .line 42
    new-instance v3, Lk/c/a/a/a/p;

    invoke-direct {v3, v2}, Lk/c/a/a/a/p;-><init>(Ljava/lang/Throwable;)V

    throw v3

    :cond_16
    const/4 v3, 0x0

    .line 43
    :goto_c
    invoke-virtual/range {p0 .. p1}, Lk/c/a/a/a/s/q/a;->k(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 44
    iget-object v6, v1, Lk/c/a/a/a/s/q/a;->c:Lk/c/a/a/a/t/b;

    if-eqz v6, :cond_19

    .line 45
    iget-object v6, v1, Lk/c/a/a/a/s/q/a;->c:Lk/c/a/a/a/t/b;

    const-string v8, "12011"

    new-array v12, v9, [Ljava/lang/Object;

    if-eqz v2, :cond_17

    move-object v14, v2

    goto :goto_d

    :cond_17
    move-object v14, v7

    :goto_d
    const/4 v15, 0x0

    aput-object v14, v12, v15

    if-eqz v5, :cond_18

    move-object v14, v5

    goto :goto_e

    :cond_18
    move-object v14, v13

    :goto_e
    const/4 v15, 0x1

    aput-object v14, v12, v15

    invoke-interface {v6, v11, v10, v8, v12}, Lk/c/a/a/a/t/b;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 46
    :cond_19
    invoke-virtual/range {p0 .. p1}, Lk/c/a/a/a/s/q/a;->l(Ljava/lang/String;)[C

    move-result-object v6

    .line 47
    iget-object v8, v1, Lk/c/a/a/a/s/q/a;->c:Lk/c/a/a/a/t/b;

    if-eqz v8, :cond_1c

    .line 48
    iget-object v8, v1, Lk/c/a/a/a/s/q/a;->c:Lk/c/a/a/a/t/b;

    const-string v12, "12012"

    new-array v14, v9, [Ljava/lang/Object;

    if-eqz v2, :cond_1a

    move-object v15, v2

    goto :goto_f

    :cond_1a
    move-object v15, v7

    :goto_f
    const/16 v18, 0x0

    aput-object v15, v14, v18

    if-eqz v6, :cond_1b

    .line 49
    invoke-static {v6}, Lk/c/a/a/a/s/q/a;->a([C)Ljava/lang/String;

    move-result-object v15

    goto :goto_10

    :cond_1b
    move-object v15, v13

    :goto_10
    const/16 v17, 0x1

    aput-object v15, v14, v17

    .line 50
    invoke-interface {v8, v11, v10, v12, v14}, Lk/c/a/a/a/t/b;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 51
    :cond_1c
    invoke-virtual/range {p0 .. p1}, Lk/c/a/a/a/s/q/a;->n(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    if-nez v8, :cond_1d

    .line 52
    invoke-static {}, Ljava/security/KeyStore;->getDefaultType()Ljava/lang/String;

    move-result-object v8

    .line 53
    :cond_1d
    iget-object v12, v1, Lk/c/a/a/a/s/q/a;->c:Lk/c/a/a/a/t/b;

    if-eqz v12, :cond_20

    .line 54
    iget-object v12, v1, Lk/c/a/a/a/s/q/a;->c:Lk/c/a/a/a/t/b;

    const-string v14, "12013"

    new-array v15, v9, [Ljava/lang/Object;

    if-eqz v2, :cond_1e

    move-object/from16 v18, v2

    goto :goto_11

    :cond_1e
    move-object/from16 v18, v7

    :goto_11
    const/16 v19, 0x0

    aput-object v18, v15, v19

    if-eqz v8, :cond_1f

    move-object v13, v8

    :cond_1f
    const/16 v17, 0x1

    aput-object v13, v15, v17

    invoke-interface {v12, v11, v10, v14, v15}, Lk/c/a/a/a/t/b;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 55
    :cond_20
    invoke-static {}, Ljavax/net/ssl/TrustManagerFactory;->getDefaultAlgorithm()Ljava/lang/String;

    move-result-object v12

    .line 56
    invoke-virtual/range {p0 .. p1}, Lk/c/a/a/a/s/q/a;->m(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 57
    invoke-virtual/range {p0 .. p1}, Lk/c/a/a/a/s/q/a;->j(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14
    :try_end_3
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_3 .. :try_end_3} :catch_b
    .catch Ljava/security/NoSuchProviderException; {:try_start_3 .. :try_end_3} :catch_a
    .catch Ljava/security/KeyManagementException; {:try_start_3 .. :try_end_3} :catch_9

    if-eqz v14, :cond_21

    move-object v12, v14

    :cond_21
    if-eqz v5, :cond_26

    if-eqz v8, :cond_26

    if-eqz v12, :cond_26

    .line 58
    :try_start_4
    invoke-static {v8}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v8

    .line 59
    new-instance v14, Ljava/io/FileInputStream;

    invoke-direct {v14, v5}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v14, v6}, Ljava/security/KeyStore;->load(Ljava/io/InputStream;[C)V

    if-eqz v13, :cond_22

    .line 60
    invoke-static {v12, v13}, Ljavax/net/ssl/TrustManagerFactory;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljavax/net/ssl/TrustManagerFactory;

    move-result-object v5

    goto :goto_12

    .line 61
    :cond_22
    invoke-static {v12}, Ljavax/net/ssl/TrustManagerFactory;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/TrustManagerFactory;

    move-result-object v5

    .line 62
    :goto_12
    iget-object v6, v1, Lk/c/a/a/a/s/q/a;->c:Lk/c/a/a/a/t/b;

    if-eqz v6, :cond_25

    .line 63
    iget-object v6, v1, Lk/c/a/a/a/s/q/a;->c:Lk/c/a/a/a/t/b;

    const-string v13, "12017"

    new-array v14, v9, [Ljava/lang/Object;

    if-eqz v2, :cond_23

    move-object v15, v2

    goto :goto_13

    :cond_23
    move-object v15, v7

    :goto_13
    const/16 v18, 0x0

    aput-object v15, v14, v18

    const/4 v15, 0x1

    aput-object v12, v14, v15

    invoke-interface {v6, v11, v10, v13, v14}, Lk/c/a/a/a/t/b;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 64
    iget-object v6, v1, Lk/c/a/a/a/s/q/a;->c:Lk/c/a/a/a/t/b;

    const-string v12, "12016"

    new-array v9, v9, [Ljava/lang/Object;

    if-eqz v2, :cond_24

    goto :goto_14

    :cond_24
    move-object v2, v7

    :goto_14
    const/4 v7, 0x0

    aput-object v2, v9, v7

    .line 65
    invoke-virtual {v5}, Ljavax/net/ssl/TrustManagerFactory;->getProvider()Ljava/security/Provider;

    move-result-object v2

    invoke-virtual {v2}, Ljava/security/Provider;->getName()Ljava/lang/String;

    move-result-object v2

    const/4 v7, 0x1

    aput-object v2, v9, v7

    .line 66
    invoke-interface {v6, v11, v10, v12, v9}, Lk/c/a/a/a/t/b;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 67
    :cond_25
    invoke-virtual {v5, v8}, Ljavax/net/ssl/TrustManagerFactory;->init(Ljava/security/KeyStore;)V

    .line 68
    invoke-virtual {v5}, Ljavax/net/ssl/TrustManagerFactory;->getTrustManagers()[Ljavax/net/ssl/TrustManager;

    move-result-object v2
    :try_end_4
    .catch Ljava/security/KeyStoreException; {:try_start_4 .. :try_end_4} :catch_8
    .catch Ljava/security/cert/CertificateException; {:try_start_4 .. :try_end_4} :catch_7
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_6
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_5
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_4 .. :try_end_4} :catch_b
    .catch Ljava/security/NoSuchProviderException; {:try_start_4 .. :try_end_4} :catch_a
    .catch Ljava/security/KeyManagementException; {:try_start_4 .. :try_end_4} :catch_9

    goto :goto_15

    :catch_5
    move-exception v0

    move-object v2, v0

    .line 69
    :try_start_5
    new-instance v3, Lk/c/a/a/a/p;

    invoke-direct {v3, v2}, Lk/c/a/a/a/p;-><init>(Ljava/lang/Throwable;)V

    throw v3

    :catch_6
    move-exception v0

    move-object v2, v0

    .line 70
    new-instance v3, Lk/c/a/a/a/p;

    invoke-direct {v3, v2}, Lk/c/a/a/a/p;-><init>(Ljava/lang/Throwable;)V

    throw v3

    :catch_7
    move-exception v0

    move-object v2, v0

    .line 71
    new-instance v3, Lk/c/a/a/a/p;

    invoke-direct {v3, v2}, Lk/c/a/a/a/p;-><init>(Ljava/lang/Throwable;)V

    throw v3

    :catch_8
    move-exception v0

    move-object v2, v0

    .line 72
    new-instance v3, Lk/c/a/a/a/p;

    invoke-direct {v3, v2}, Lk/c/a/a/a/p;-><init>(Ljava/lang/Throwable;)V

    throw v3

    :cond_26
    const/4 v2, 0x0

    :goto_15
    const/4 v5, 0x0

    .line 73
    invoke-virtual {v4, v3, v2, v5}, Ljavax/net/ssl/SSLContext;->init([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;)V
    :try_end_5
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_5 .. :try_end_5} :catch_b
    .catch Ljava/security/NoSuchProviderException; {:try_start_5 .. :try_end_5} :catch_a
    .catch Ljava/security/KeyManagementException; {:try_start_5 .. :try_end_5} :catch_9

    return-object v4

    :catch_9
    move-exception v0

    move-object v2, v0

    .line 74
    new-instance v3, Lk/c/a/a/a/p;

    invoke-direct {v3, v2}, Lk/c/a/a/a/p;-><init>(Ljava/lang/Throwable;)V

    throw v3

    :catch_a
    move-exception v0

    move-object v2, v0

    .line 75
    new-instance v3, Lk/c/a/a/a/p;

    invoke-direct {v3, v2}, Lk/c/a/a/a/p;-><init>(Ljava/lang/Throwable;)V

    throw v3

    :catch_b
    move-exception v0

    move-object v2, v0

    .line 76
    new-instance v3, Lk/c/a/a/a/p;

    invoke-direct {v3, v2}, Lk/c/a/a/a/p;-><init>(Ljava/lang/Throwable;)V

    throw v3
.end method

.method public i(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const-string v0, "com.ibm.ssl.protocol"

    const/4 v1, 0x0

    .line 1
    invoke-virtual {p0, p1, v0, v1}, Lk/c/a/a/a/s/q/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public j(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const-string v0, "com.ibm.ssl.trustManager"

    const-string v1, "ssl.TrustManagerFactory.algorithm"

    .line 1
    invoke-virtual {p0, p1, v0, v1}, Lk/c/a/a/a/s/q/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public k(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const-string v0, "com.ibm.ssl.trustStore"

    const-string v1, "javax.net.ssl.trustStore"

    .line 1
    invoke-virtual {p0, p1, v0, v1}, Lk/c/a/a/a/s/q/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public l(Ljava/lang/String;)[C
    .locals 2

    const-string v0, "com.ibm.ssl.trustStorePassword"

    const-string v1, "javax.net.ssl.trustStorePassword"

    .line 1
    invoke-virtual {p0, p1, v0, v1}, Lk/c/a/a/a/s/q/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_1

    const-string v0, "{xor}"

    .line 2
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    invoke-static {p1}, Lk/c/a/a/a/s/q/a;->o(Ljava/lang/String;)[C

    move-result-object p1

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object p1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method public m(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const-string v0, "com.ibm.ssl.trustStoreProvider"

    const/4 v1, 0x0

    .line 1
    invoke-virtual {p0, p1, v0, v1}, Lk/c/a/a/a/s/q/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public n(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const-string v0, "com.ibm.ssl.trustStoreType"

    const/4 v1, 0x0

    .line 1
    invoke-virtual {p0, p1, v0, v1}, Lk/c/a/a/a/s/q/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
