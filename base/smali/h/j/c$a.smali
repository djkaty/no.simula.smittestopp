.class public final Lh/j/c$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lh/j/d$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lh/j/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lh/j/d$b<",
        "Lh/j/c;",
        ">;"
    }
.end annotation


# static fields
.field public static final synthetic a:Lh/j/c$a;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lh/j/c$a;

    invoke-direct {v0}, Lh/j/c$a;-><init>()V

    sput-object v0, Lh/j/c$a;->a:Lh/j/c$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
