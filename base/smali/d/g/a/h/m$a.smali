.class public Ld/g/a/h/m$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ld/g/a/h/m;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public a:Ld/g/a/h/c;

.field public b:Ld/g/a/h/c;

.field public c:I

.field public d:Ld/g/a/h/c$b;

.field public e:I


# direct methods
.method public constructor <init>(Ld/g/a/h/c;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Ld/g/a/h/m$a;->a:Ld/g/a/h/c;

    .line 3
    iget-object v0, p1, Ld/g/a/h/c;->d:Ld/g/a/h/c;

    .line 4
    iput-object v0, p0, Ld/g/a/h/m$a;->b:Ld/g/a/h/c;

    .line 5
    invoke-virtual {p1}, Ld/g/a/h/c;->a()I

    move-result v0

    iput v0, p0, Ld/g/a/h/m$a;->c:I

    .line 6
    iget-object v0, p1, Ld/g/a/h/c;->g:Ld/g/a/h/c$b;

    .line 7
    iput-object v0, p0, Ld/g/a/h/m$a;->d:Ld/g/a/h/c$b;

    .line 8
    iget p1, p1, Ld/g/a/h/c;->h:I

    .line 9
    iput p1, p0, Ld/g/a/h/m$a;->e:I

    return-void
.end method
