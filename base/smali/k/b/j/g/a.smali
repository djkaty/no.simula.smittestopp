.class public Lk/b/j/g/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lk/b/j/g/d;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lk/b/j/g/b;

    invoke-direct {v0}, Lk/b/j/g/b;-><init>()V

    sput-object v0, Lk/b/j/g/a;->a:Lk/b/j/g/d;

    return-void
.end method

.method public static a(Ljava/lang/String;)[B
    .locals 3

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    div-int/lit8 v0, v0, 0x4

    mul-int/lit8 v0, v0, 0x3

    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1, v0}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    :try_start_0
    sget-object v0, Lk/b/j/g/a;->a:Lk/b/j/g/d;

    invoke-interface {v0, p0, v1}, Lk/b/j/g/d;->a(Ljava/lang/String;Ljava/io/OutputStream;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0

    return-object p0

    :catch_0
    move-exception p0

    new-instance v0, Lk/b/j/g/c;

    const-string v1, "unable to decode base64 string: "

    invoke-static {v1}, Le/a/a/a/a;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lk/b/j/g/c;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method
