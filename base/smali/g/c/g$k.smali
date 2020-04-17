.class public Lg/c/g$k;
.super Lg/c/g$f;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lg/c/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "k"
.end annotation


# direct methods
.method public constructor <init>(Lg/c/g;)V
    .locals 1

    .line 1
    sget-object v0, Lg/c/c;->USHORT:Lg/c/c;

    invoke-direct {p0, p1, v0}, Lg/c/g$f;-><init>(Lg/c/g;Lg/c/c;)V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Number;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lg/c/g$f;->a()V

    invoke-virtual {p0}, Lg/c/g$f;->c()J

    invoke-virtual {p1}, Ljava/lang/Number;->shortValue()S

    const/4 p1, 0x0

    throw p1
.end method

.method public final b()I
    .locals 1

    .line 1
    invoke-virtual {p0}, Lg/c/g$f;->a()V

    invoke-virtual {p0}, Lg/c/g$f;->c()J

    const/4 v0, 0x0

    throw v0
.end method
