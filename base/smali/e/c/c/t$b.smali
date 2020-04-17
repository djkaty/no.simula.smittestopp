.class public final enum Le/c/c/t$b;
.super Le/c/c/t;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le/c/c/t;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4009
    name = null
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, p2, v0}, Le/c/c/t;-><init>(Ljava/lang/String;ILe/c/c/t$a;)V

    return-void
.end method


# virtual methods
.method public serialize(Ljava/lang/Long;)Le/c/c/j;
    .locals 1

    .line 1
    new-instance v0, Le/c/c/p;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Le/c/c/p;-><init>(Ljava/lang/String;)V

    return-object v0
.end method
