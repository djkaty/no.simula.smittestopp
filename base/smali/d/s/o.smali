.class public abstract Ld/s/o;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ld/s/o$o;,
        Ld/s/o$l;,
        Ld/s/o$p;,
        Ld/s/o$m;,
        Ld/s/o$n;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field public static final b:Ld/s/o;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ld/s/o<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final c:Ld/s/o;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ld/s/o<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final d:Ld/s/o;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ld/s/o<",
            "[I>;"
        }
    .end annotation
.end field

.field public static final e:Ld/s/o;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ld/s/o<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field public static final f:Ld/s/o;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ld/s/o<",
            "[J>;"
        }
    .end annotation
.end field

.field public static final g:Ld/s/o;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ld/s/o<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field public static final h:Ld/s/o;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ld/s/o<",
            "[F>;"
        }
    .end annotation
.end field

.field public static final i:Ld/s/o;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ld/s/o<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public static final j:Ld/s/o;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ld/s/o<",
            "[Z>;"
        }
    .end annotation
.end field

.field public static final k:Ld/s/o;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ld/s/o<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final l:Ld/s/o;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ld/s/o<",
            "[",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final a:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Ld/s/o$c;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ld/s/o$c;-><init>(Z)V

    sput-object v0, Ld/s/o;->b:Ld/s/o;

    .line 2
    new-instance v0, Ld/s/o$d;

    invoke-direct {v0, v1}, Ld/s/o$d;-><init>(Z)V

    sput-object v0, Ld/s/o;->c:Ld/s/o;

    .line 3
    new-instance v0, Ld/s/o$e;

    const/4 v2, 0x1

    invoke-direct {v0, v2}, Ld/s/o$e;-><init>(Z)V

    sput-object v0, Ld/s/o;->d:Ld/s/o;

    .line 4
    new-instance v0, Ld/s/o$f;

    invoke-direct {v0, v1}, Ld/s/o$f;-><init>(Z)V

    sput-object v0, Ld/s/o;->e:Ld/s/o;

    .line 5
    new-instance v0, Ld/s/o$g;

    invoke-direct {v0, v2}, Ld/s/o$g;-><init>(Z)V

    sput-object v0, Ld/s/o;->f:Ld/s/o;

    .line 6
    new-instance v0, Ld/s/o$h;

    invoke-direct {v0, v1}, Ld/s/o$h;-><init>(Z)V

    sput-object v0, Ld/s/o;->g:Ld/s/o;

    .line 7
    new-instance v0, Ld/s/o$i;

    invoke-direct {v0, v2}, Ld/s/o$i;-><init>(Z)V

    sput-object v0, Ld/s/o;->h:Ld/s/o;

    .line 8
    new-instance v0, Ld/s/o$j;

    invoke-direct {v0, v1}, Ld/s/o$j;-><init>(Z)V

    sput-object v0, Ld/s/o;->i:Ld/s/o;

    .line 9
    new-instance v0, Ld/s/o$k;

    invoke-direct {v0, v2}, Ld/s/o$k;-><init>(Z)V

    sput-object v0, Ld/s/o;->j:Ld/s/o;

    .line 10
    new-instance v0, Ld/s/o$a;

    invoke-direct {v0, v2}, Ld/s/o$a;-><init>(Z)V

    sput-object v0, Ld/s/o;->k:Ld/s/o;

    .line 11
    new-instance v0, Ld/s/o$b;

    invoke-direct {v0, v2}, Ld/s/o$b;-><init>(Z)V

    sput-object v0, Ld/s/o;->l:Ld/s/o;

    return-void
.end method

.method public constructor <init>(Z)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-boolean p1, p0, Ld/s/o;->a:Z

    return-void
.end method

.method public static a(Ljava/lang/Object;)Ld/s/o;
    .locals 2

    .line 1
    instance-of v0, p0, Ljava/lang/Integer;

    if-eqz v0, :cond_0

    .line 2
    sget-object p0, Ld/s/o;->b:Ld/s/o;

    return-object p0

    .line 3
    :cond_0
    instance-of v0, p0, [I

    if-eqz v0, :cond_1

    .line 4
    sget-object p0, Ld/s/o;->d:Ld/s/o;

    return-object p0

    .line 5
    :cond_1
    instance-of v0, p0, Ljava/lang/Long;

    if-eqz v0, :cond_2

    .line 6
    sget-object p0, Ld/s/o;->e:Ld/s/o;

    return-object p0

    .line 7
    :cond_2
    instance-of v0, p0, [J

    if-eqz v0, :cond_3

    .line 8
    sget-object p0, Ld/s/o;->f:Ld/s/o;

    return-object p0

    .line 9
    :cond_3
    instance-of v0, p0, Ljava/lang/Float;

    if-eqz v0, :cond_4

    .line 10
    sget-object p0, Ld/s/o;->g:Ld/s/o;

    return-object p0

    .line 11
    :cond_4
    instance-of v0, p0, [F

    if-eqz v0, :cond_5

    .line 12
    sget-object p0, Ld/s/o;->h:Ld/s/o;

    return-object p0

    .line 13
    :cond_5
    instance-of v0, p0, Ljava/lang/Boolean;

    if-eqz v0, :cond_6

    .line 14
    sget-object p0, Ld/s/o;->i:Ld/s/o;

    return-object p0

    .line 15
    :cond_6
    instance-of v0, p0, [Z

    if-eqz v0, :cond_7

    .line 16
    sget-object p0, Ld/s/o;->j:Ld/s/o;

    return-object p0

    .line 17
    :cond_7
    instance-of v0, p0, Ljava/lang/String;

    if-nez v0, :cond_f

    if-nez p0, :cond_8

    goto/16 :goto_0

    .line 18
    :cond_8
    instance-of v0, p0, [Ljava/lang/String;

    if-eqz v0, :cond_9

    .line 19
    sget-object p0, Ld/s/o;->l:Ld/s/o;

    return-object p0

    .line 20
    :cond_9
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->isArray()Z

    move-result v0

    if-eqz v0, :cond_a

    const-class v0, Landroid/os/Parcelable;

    .line 21
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 22
    new-instance v0, Ld/s/o$m;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object p0

    invoke-direct {v0, p0}, Ld/s/o$m;-><init>(Ljava/lang/Class;)V

    return-object v0

    .line 23
    :cond_a
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->isArray()Z

    move-result v0

    if-eqz v0, :cond_b

    const-class v0, Ljava/io/Serializable;

    .line 24
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 25
    new-instance v0, Ld/s/o$o;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object p0

    invoke-direct {v0, p0}, Ld/s/o$o;-><init>(Ljava/lang/Class;)V

    return-object v0

    .line 26
    :cond_b
    instance-of v0, p0, Landroid/os/Parcelable;

    if-eqz v0, :cond_c

    .line 27
    new-instance v0, Ld/s/o$n;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-direct {v0, p0}, Ld/s/o$n;-><init>(Ljava/lang/Class;)V

    return-object v0

    .line 28
    :cond_c
    instance-of v0, p0, Ljava/lang/Enum;

    if-eqz v0, :cond_d

    .line 29
    new-instance v0, Ld/s/o$l;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-direct {v0, p0}, Ld/s/o$l;-><init>(Ljava/lang/Class;)V

    return-object v0

    .line 30
    :cond_d
    instance-of v0, p0, Ljava/io/Serializable;

    if-eqz v0, :cond_e

    .line 31
    new-instance v0, Ld/s/o$p;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-direct {v0, p0}, Ld/s/o$p;-><init>(Ljava/lang/Class;)V

    return-object v0

    .line 32
    :cond_e
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Object of type "

    invoke-static {v1}, Le/a/a/a/a;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " is not supported for navigation arguments."

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 33
    :cond_f
    :goto_0
    sget-object p0, Ld/s/o;->k:Ld/s/o;

    return-object p0
.end method


# virtual methods
.method public abstract a(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Bundle;",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation
.end method

.method public abstract a(Ljava/lang/String;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation
.end method

.method public abstract a()Ljava/lang/String;
.end method

.method public abstract a(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Bundle;",
            "Ljava/lang/String;",
            "TT;)V"
        }
    .end annotation
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-virtual {p0}, Ld/s/o;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
