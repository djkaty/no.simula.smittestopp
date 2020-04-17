.class public Le/c/c/w/g$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/c/c/w/s;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/c/c/w/g;->a(Le/c/c/x/a;)Le/c/c/w/s;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Le/c/c/w/s<",
        "TT;>;"
    }
.end annotation


# instance fields
.field public final synthetic a:Le/c/c/f;

.field public final synthetic b:Ljava/lang/reflect/Type;


# direct methods
.method public constructor <init>(Le/c/c/w/g;Le/c/c/f;Ljava/lang/reflect/Type;)V
    .locals 0

    .line 1
    iput-object p2, p0, Le/c/c/w/g$b;->a:Le/c/c/f;

    iput-object p3, p0, Le/c/c/w/g$b;->b:Ljava/lang/reflect/Type;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/c/c/w/g$b;->a:Le/c/c/f;

    iget-object v1, p0, Le/c/c/w/g$b;->b:Ljava/lang/reflect/Type;

    invoke-interface {v0, v1}, Le/c/c/f;->a(Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
