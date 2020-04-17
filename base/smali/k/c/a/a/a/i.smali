.class public Lk/c/a/a/a/i;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:I

.field public b:I

.field public c:Ljava/lang/String;

.field public d:Lk/c/a/a/a/l;

.field public e:Ljava/lang/String;

.field public f:[C

.field public g:Ljavax/net/SocketFactory;

.field public h:Ljava/util/Properties;

.field public i:Z

.field public j:Ljavax/net/ssl/HostnameVerifier;

.field public k:Z

.field public l:I

.field public m:[Ljava/lang/String;

.field public n:I

.field public o:Z

.field public p:I

.field public q:Ljava/util/Properties;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x3c

    .line 2
    iput v0, p0, Lk/c/a/a/a/i;->a:I

    const/16 v0, 0xa

    .line 3
    iput v0, p0, Lk/c/a/a/a/i;->b:I

    const/4 v0, 0x0

    .line 4
    iput-object v0, p0, Lk/c/a/a/a/i;->c:Ljava/lang/String;

    .line 5
    iput-object v0, p0, Lk/c/a/a/a/i;->d:Lk/c/a/a/a/l;

    .line 6
    iput-object v0, p0, Lk/c/a/a/a/i;->h:Ljava/util/Properties;

    const/4 v1, 0x1

    .line 7
    iput-boolean v1, p0, Lk/c/a/a/a/i;->i:Z

    .line 8
    iput-object v0, p0, Lk/c/a/a/a/i;->j:Ljavax/net/ssl/HostnameVerifier;

    .line 9
    iput-boolean v1, p0, Lk/c/a/a/a/i;->k:Z

    const/16 v1, 0x1e

    .line 10
    iput v1, p0, Lk/c/a/a/a/i;->l:I

    .line 11
    iput-object v0, p0, Lk/c/a/a/a/i;->m:[Ljava/lang/String;

    const/4 v1, 0x0

    .line 12
    iput v1, p0, Lk/c/a/a/a/i;->n:I

    .line 13
    iput-boolean v1, p0, Lk/c/a/a/a/i;->o:Z

    const v1, 0x1f400

    .line 14
    iput v1, p0, Lk/c/a/a/a/i;->p:I

    .line 15
    iput-object v0, p0, Lk/c/a/a/a/i;->q:Ljava/util/Properties;

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 5

    if-eqz p1, :cond_1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_1

    const/4 v1, 0x4

    if-ne p1, v1, :cond_0

    goto :goto_0

    .line 1
    :cond_0
    new-instance v2, Ljava/lang/IllegalArgumentException;

    .line 2
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "An incorrect version was used \""

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "\". Acceptable version options are "

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 p1, 0x0

    .line 3
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", "

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " and "

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "."

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 5
    invoke-direct {v2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 6
    :cond_1
    :goto_0
    iput p1, p0, Lk/c/a/a/a/i;->n:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 1
    new-instance v0, Ljava/util/Properties;

    invoke-direct {v0}, Ljava/util/Properties;-><init>()V

    .line 2
    iget v1, p0, Lk/c/a/a/a/i;->n:I

    .line 3
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "MqttVersion"

    invoke-virtual {v0, v2, v1}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    iget-boolean v1, p0, Lk/c/a/a/a/i;->k:Z

    .line 5
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string v2, "CleanSession"

    invoke-virtual {v0, v2, v1}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    iget v1, p0, Lk/c/a/a/a/i;->l:I

    .line 7
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "ConTimeout"

    invoke-virtual {v0, v2, v1}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    iget v1, p0, Lk/c/a/a/a/i;->a:I

    .line 9
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "KeepAliveInterval"

    invoke-virtual {v0, v2, v1}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    iget-object v1, p0, Lk/c/a/a/a/i;->e:Ljava/lang/String;

    const-string v2, "null"

    if-nez v1, :cond_0

    move-object v1, v2

    :cond_0
    const-string v3, "UserName"

    .line 11
    invoke-virtual {v0, v3, v1}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    iget-object v1, p0, Lk/c/a/a/a/i;->c:Ljava/lang/String;

    if-nez v1, :cond_1

    move-object v1, v2

    :cond_1
    const-string v3, "WillDestination"

    .line 13
    invoke-virtual {v0, v3, v1}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    iget-object v1, p0, Lk/c/a/a/a/i;->g:Ljavax/net/SocketFactory;

    const-string v3, "SocketFactory"

    if-nez v1, :cond_2

    .line 15
    invoke-virtual {v0, v3, v2}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 16
    :cond_2
    invoke-virtual {v0, v3, v1}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    :goto_0
    iget-object v1, p0, Lk/c/a/a/a/i;->h:Ljava/util/Properties;

    const-string v3, "SSLProperties"

    if-nez v1, :cond_3

    .line 18
    invoke-virtual {v0, v3, v2}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 19
    :cond_3
    invoke-virtual {v0, v3, v1}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_1
    const-string v1, "Connection options"

    .line 20
    invoke-static {v0, v1}, Lk/c/a/a/a/w/a;->a(Ljava/util/Properties;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
