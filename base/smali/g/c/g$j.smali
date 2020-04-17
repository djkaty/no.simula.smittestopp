.class public Lg/c/g$j;
.super Lg/c/g$h;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lg/c/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "j"
.end annotation


# direct methods
.method public constructor <init>(Lg/c/g;ILjava/nio/charset/Charset;)V
    .locals 6

    mul-int/lit8 v2, p2, 0x8

    const/16 v3, 0x8

    move-object v0, p0

    move-object v1, p1

    move v4, p2

    move-object v5, p3

    .line 1
    invoke-direct/range {v0 .. v5}, Lg/c/g$h;-><init>(Lg/c/g;IIILjava/nio/charset/Charset;)V

    return-void
.end method


# virtual methods
.method public final c()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lg/c/g$a;->a()V

    invoke-virtual {p0}, Lg/c/g$a;->b()J

    const/4 v0, 0x0

    throw v0
.end method
