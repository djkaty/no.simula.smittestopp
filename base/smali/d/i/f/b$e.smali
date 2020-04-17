.class public Ld/i/f/b$e;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ld/i/f/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "e"
.end annotation


# instance fields
.field public final a:I

.field public final b:[Ld/i/f/b$f;


# direct methods
.method public constructor <init>(I[Ld/i/f/b$f;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Ld/i/f/b$e;->a:I

    .line 3
    iput-object p2, p0, Ld/i/f/b$e;->b:[Ld/i/f/b$f;

    return-void
.end method
