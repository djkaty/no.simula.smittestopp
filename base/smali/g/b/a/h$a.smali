.class public final Lg/b/a/h$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lg/b/a/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# static fields
.field public static a:Lg/b/a/h;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lg/b/a/h;

    invoke-direct {v0}, Lg/b/a/h;-><init>()V

    sput-object v0, Lg/b/a/h$a;->a:Lg/b/a/h;

    return-void
.end method
