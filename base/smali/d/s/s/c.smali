.class public final Ld/s/s/c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ld/s/s/c$b;
    }
.end annotation


# instance fields
.field public final a:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public final b:Ld/l/a/a;


# direct methods
.method public synthetic constructor <init>(Ljava/util/Set;Ld/l/a/a;Ld/s/s/c$b;Ld/s/s/c$a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Ld/s/s/c;->a:Ljava/util/Set;

    .line 3
    iput-object p2, p0, Ld/s/s/c;->b:Ld/l/a/a;

    return-void
.end method
