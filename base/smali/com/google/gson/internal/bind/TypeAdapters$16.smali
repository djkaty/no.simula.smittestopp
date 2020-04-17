.class public final Lcom/google/gson/internal/bind/TypeAdapters$16;
.super Lcom/google/gson/TypeAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/gson/internal/bind/TypeAdapters;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/gson/TypeAdapter<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/gson/TypeAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public read(Le/c/c/y/a;)Ljava/lang/Object;
    .locals 2

    .line 1
    invoke-virtual {p1}, Le/c/c/y/a;->r()Le/c/c/y/b;

    move-result-object v0

    .line 2
    sget-object v1, Le/c/c/y/b;->NULL:Le/c/c/y/b;

    if-ne v0, v1, :cond_0

    .line 3
    invoke-virtual {p1}, Le/c/c/y/a;->o()V

    const/4 p1, 0x0

    goto :goto_0

    .line 4
    :cond_0
    sget-object v1, Le/c/c/y/b;->BOOLEAN:Le/c/c/y/b;

    if-ne v0, v1, :cond_1

    .line 5
    invoke-virtual {p1}, Le/c/c/y/a;->j()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 6
    :cond_1
    invoke-virtual {p1}, Le/c/c/y/a;->p()Ljava/lang/String;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public write(Le/c/c/y/c;Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p2, Ljava/lang/String;

    .line 2
    invoke-virtual {p1, p2}, Le/c/c/y/c;->c(Ljava/lang/String;)Le/c/c/y/c;

    return-void
.end method
