.class public final Ld/s/g$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ld/o/a0;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ld/s/g;
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
.method public a(Ljava/lang/Class;)Ld/o/y;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ld/o/y;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 1
    new-instance p1, Ld/s/g;

    invoke-direct {p1}, Ld/s/g;-><init>()V

    return-object p1
.end method
