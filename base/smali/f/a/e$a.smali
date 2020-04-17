.class public final Lf/a/e$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lf/a/e;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lf/a/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lf/a/e$b;
    .locals 1

    .line 1
    sget-object v0, Lf/a/e$b;->NULL:Lf/a/e$b;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    .line 1
    instance-of v0, p1, Lf/a/e;

    if-eqz v0, :cond_0

    .line 2
    sget-object v0, Lf/a/e$b;->NULL:Lf/a/e$b;

    .line 3
    check-cast p1, Lf/a/e;

    invoke-interface {p1}, Lf/a/e;->a()Lf/a/e$b;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public hashCode()I
    .locals 1

    .line 1
    sget-object v0, Lf/a/e$b;->NULL:Lf/a/e$b;

    invoke-virtual {v0}, Ljava/lang/Enum;->hashCode()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    const-string v0, "null"

    return-object v0
.end method
