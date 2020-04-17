.class public final Lk/a/b/a/b/k/f;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lk/a/b/a/b/k/f;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lk/a/b/a/b/k/f;

    invoke-direct {v0}, Lk/a/b/a/b/k/f;-><init>()V

    sput-object v0, Lk/a/b/a/b/k/f;->a:Lk/a/b/a/b/k/f;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    const-string v0, "DeleteOnClose{}"

    return-object v0
.end method
