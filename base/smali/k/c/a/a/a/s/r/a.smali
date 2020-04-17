.class public Lk/c/a/a/a/s/r/a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lk/c/a/a/a/s/r/a$a;
    }
.end annotation


# static fields
.field public static final a:Lk/c/a/a/a/s/r/a;

.field public static final b:Lk/c/a/a/a/s/r/a$a;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lk/c/a/a/a/s/r/a;

    invoke-direct {v0}, Lk/c/a/a/a/s/r/a;-><init>()V

    sput-object v0, Lk/c/a/a/a/s/r/a;->a:Lk/c/a/a/a/s/r/a;

    .line 2
    new-instance v0, Lk/c/a/a/a/s/r/a$a;

    sget-object v1, Lk/c/a/a/a/s/r/a;->a:Lk/c/a/a/a/s/r/a;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v0, v1}, Lk/c/a/a/a/s/r/a$a;-><init>(Lk/c/a/a/a/s/r/a;)V

    sput-object v0, Lk/c/a/a/a/s/r/a;->b:Lk/c/a/a/a/s/r/a$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
