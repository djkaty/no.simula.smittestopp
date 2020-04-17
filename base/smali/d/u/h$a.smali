.class public abstract Ld/u/h$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ld/u/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "a"
.end annotation


# instance fields
.field public final a:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Ld/u/h$a;->a:I

    return-void
.end method


# virtual methods
.method public abstract a(Ld/w/a/b;)V
.end method

.method public abstract b(Ld/w/a/b;)Ld/u/h$b;
.end method
