.class public Lk/b/j/g/e;
.super Ljava/lang/IllegalStateException;
.source "SourceFile"


# instance fields
.field public x:Ljava/lang/Throwable;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    iput-object p2, p0, Lk/b/j/g/e;->x:Ljava/lang/Throwable;

    return-void
.end method


# virtual methods
.method public getCause()Ljava/lang/Throwable;
    .locals 1

    iget-object v0, p0, Lk/b/j/g/e;->x:Ljava/lang/Throwable;

    return-object v0
.end method
