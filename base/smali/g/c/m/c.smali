.class public final Lg/c/m/c;
.super Lg/c/m/a;
.source "SourceFile"


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Ljava/lang/Throwable;

.field public final c:Lg/c/f;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lg/c/m/a;-><init>()V

    .line 2
    iput-object p1, p0, Lg/c/m/c;->a:Ljava/lang/String;

    .line 3
    iput-object p2, p0, Lg/c/m/c;->b:Ljava/lang/Throwable;

    .line 4
    new-instance v0, Lg/c/m/d;

    invoke-direct {v0, p1, p2}, Lg/c/m/d;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    iput-object v0, p0, Lg/c/m/c;->c:Lg/c/f;

    return-void
.end method
