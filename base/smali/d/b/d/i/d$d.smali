.class public Ld/b/d/i/d$d;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ld/b/d/i/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "d"
.end annotation


# instance fields
.field public final a:Ld/b/e/m0;

.field public final b:Ld/b/d/i/g;

.field public final c:I


# direct methods
.method public constructor <init>(Ld/b/e/m0;Ld/b/d/i/g;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Ld/b/d/i/d$d;->a:Ld/b/e/m0;

    .line 3
    iput-object p2, p0, Ld/b/d/i/d$d;->b:Ld/b/d/i/g;

    .line 4
    iput p3, p0, Ld/b/d/i/d$d;->c:I

    return-void
.end method
