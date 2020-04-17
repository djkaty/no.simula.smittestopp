.class public final Ld/i/a/b$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ld/i/a/b;->a(Landroid/app/Activity;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation


# instance fields
.field public final synthetic x:Ld/i/a/b$c;

.field public final synthetic y:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ld/i/a/b$c;Ljava/lang/Object;)V
    .locals 0

    .line 1
    iput-object p1, p0, Ld/i/a/b$a;->x:Ld/i/a/b$c;

    iput-object p2, p0, Ld/i/a/b$a;->y:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Ld/i/a/b$a;->x:Ld/i/a/b$c;

    iget-object v1, p0, Ld/i/a/b$a;->y:Ljava/lang/Object;

    iput-object v1, v0, Ld/i/a/b$c;->x:Ljava/lang/Object;

    return-void
.end method
