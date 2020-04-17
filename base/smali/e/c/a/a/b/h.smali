.class public Le/c/a/a/b/h;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Ljavax/annotation/CheckReturnValue;
.end annotation


# static fields
.field public static a:Le/c/a/a/b/h;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    return-void
.end method

.method public static a(Landroid/content/Context;)Le/c/a/a/b/h;
    .locals 2

    .line 1
    invoke-static {p0}, Ld/b/a/r;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    const-class v0, Le/c/a/a/b/h;

    monitor-enter v0

    .line 3
    :try_start_0
    sget-object v1, Le/c/a/a/b/h;->a:Le/c/a/a/b/h;

    if-nez v1, :cond_0

    .line 4
    invoke-static {p0}, Le/c/a/a/b/p;->a(Landroid/content/Context;)V

    .line 5
    new-instance v1, Le/c/a/a/b/h;

    invoke-direct {v1, p0}, Le/c/a/a/b/h;-><init>(Landroid/content/Context;)V

    sput-object v1, Le/c/a/a/b/h;->a:Le/c/a/a/b/h;

    .line 6
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7
    sget-object p0, Le/c/a/a/b/h;->a:Le/c/a/a/b/h;

    return-object p0

    :catchall_0
    move-exception p0

    .line 8
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public static varargs a(Landroid/content/pm/PackageInfo;[Le/c/a/a/b/q;)Le/c/a/a/b/q;
    .locals 3

    .line 12
    iget-object v0, p0, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 13
    :cond_0
    array-length v0, v0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_1

    const-string p0, "GoogleSignatureVerifier"

    const-string p1, "Package has more than one signature."

    .line 14
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    .line 15
    :cond_1
    new-instance v0, Le/c/a/a/b/r;

    iget-object p0, p0, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    const/4 v2, 0x0

    aget-object p0, p0, v2

    invoke-virtual {p0}, Landroid/content/pm/Signature;->toByteArray()[B

    move-result-object p0

    invoke-direct {v0, p0}, Le/c/a/a/b/r;-><init>([B)V

    .line 16
    :goto_0
    array-length p0, p1

    if-ge v2, p0, :cond_3

    .line 17
    aget-object p0, p1, v2

    invoke-virtual {p0, v0}, Le/c/a/a/b/q;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    .line 18
    aget-object p0, p1, v2

    return-object p0

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    return-object v1
.end method

.method public static a(Landroid/content/pm/PackageInfo;Z)Z
    .locals 3

    const/4 v0, 0x0

    if-eqz p0, :cond_1

    .line 9
    iget-object v1, p0, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    if-eqz p1, :cond_0

    .line 10
    sget-object p1, Le/c/a/a/b/t;->a:[Le/c/a/a/b/q;

    invoke-static {p0, p1}, Le/c/a/a/b/h;->a(Landroid/content/pm/PackageInfo;[Le/c/a/a/b/q;)Le/c/a/a/b/q;

    move-result-object p0

    goto :goto_0

    :cond_0
    new-array p1, v1, [Le/c/a/a/b/q;

    .line 11
    sget-object v2, Le/c/a/a/b/t;->a:[Le/c/a/a/b/q;

    aget-object v2, v2, v0

    aput-object v2, p1, v0

    invoke-static {p0, p1}, Le/c/a/a/b/h;->a(Landroid/content/pm/PackageInfo;[Le/c/a/a/b/q;)Le/c/a/a/b/q;

    move-result-object p0

    :goto_0
    if-eqz p0, :cond_1

    return v1

    :cond_1
    return v0
.end method
