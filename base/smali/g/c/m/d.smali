.class public Lg/c/m/d;
.super Lg/c/f;
.source "SourceFile"


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Ljava/lang/Throwable;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lg/c/f;-><init>()V

    .line 2
    iput-object p1, p0, Lg/c/m/d;->a:Ljava/lang/String;

    .line 3
    iput-object p2, p0, Lg/c/m/d;->b:Ljava/lang/Throwable;

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    .line 3
    invoke-virtual {p0}, Lg/c/m/d;->c()Ljava/lang/UnsatisfiedLinkError;

    const/4 v0, 0x0

    throw v0
.end method

.method public a(Lg/c/c;)Lg/c/i;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lg/c/m/d;->c()Ljava/lang/UnsatisfiedLinkError;

    const/4 p1, 0x0

    throw p1
.end method

.method public a(Lg/c/j;)Lg/c/i;
    .locals 0

    .line 2
    invoke-virtual {p0}, Lg/c/m/d;->c()Ljava/lang/UnsatisfiedLinkError;

    const/4 p1, 0x0

    throw p1
.end method

.method public b()Lg/c/m/f;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lg/c/m/d;->c()Ljava/lang/UnsatisfiedLinkError;

    const/4 v0, 0x0

    throw v0
.end method

.method public final c()Ljava/lang/UnsatisfiedLinkError;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/UnsatisfiedLinkError;

    iget-object v1, p0, Lg/c/m/d;->a:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/UnsatisfiedLinkError;-><init>(Ljava/lang/String;)V

    .line 2
    iget-object v1, p0, Lg/c/m/d;->b:Ljava/lang/Throwable;

    invoke-virtual {v0, v1}, Ljava/lang/UnsatisfiedLinkError;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 3
    throw v0
.end method
