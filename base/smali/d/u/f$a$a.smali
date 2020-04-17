.class public Ld/u/f$a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ld/u/f$a;->a([Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic x:[Ljava/lang/String;

.field public final synthetic y:Ld/u/f$a;


# direct methods
.method public constructor <init>(Ld/u/f$a;[Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Ld/u/f$a$a;->y:Ld/u/f$a;

    iput-object p2, p0, Ld/u/f$a$a;->x:[Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Ld/u/f$a$a;->y:Ld/u/f$a;

    iget-object v0, v0, Ld/u/f$a;->a:Ld/u/f;

    iget-object v0, v0, Ld/u/f;->d:Ld/u/e;

    iget-object v1, p0, Ld/u/f$a$a;->x:[Ljava/lang/String;

    invoke-virtual {v0, v1}, Ld/u/e;->a([Ljava/lang/String;)V

    return-void
.end method
