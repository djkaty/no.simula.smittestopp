.class public Le/c/a/a/c/a$a;
.super Le/c/a/a/d/b/b;
.source "SourceFile"

# interfaces
.implements Le/c/a/a/c/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le/c/a/a/c/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "a"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string v0, "com.google.android.gms.dynamic.IObjectWrapper"

    .line 1
    invoke-direct {p0, v0}, Le/c/a/a/d/b/b;-><init>(Ljava/lang/String;)V

    return-void
.end method
