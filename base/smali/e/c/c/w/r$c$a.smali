.class public Le/c/c/w/r$c$a;
.super Le/c/c/w/r$d;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/c/c/w/r$c;->iterator()Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Le/c/c/w/r<",
        "TK;TV;>.d<TK;>;"
    }
.end annotation


# direct methods
.method public constructor <init>(Le/c/c/w/r$c;)V
    .locals 0

    .line 1
    iget-object p1, p1, Le/c/c/w/r$c;->x:Le/c/c/w/r;

    invoke-direct {p0, p1}, Le/c/c/w/r$d;-><init>(Le/c/c/w/r;)V

    return-void
.end method


# virtual methods
.method public next()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Le/c/c/w/r$d;->a()Le/c/c/w/r$e;

    move-result-object v0

    iget-object v0, v0, Le/c/c/w/r$e;->C:Ljava/lang/Object;

    return-object v0
.end method
