.class public Lk/b/i/b/g/z;
.super Ljava/io/ObjectInputStream;
.source "SourceFile"


# static fields
.field public static final z:Ljava/util/Set;


# instance fields
.field public final x:Ljava/lang/Class;

.field public y:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lk/b/i/b/g/z;->z:Ljava/util/Set;

    const-string v1, "java.util.TreeMap"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lk/b/i/b/g/z;->z:Ljava/util/Set;

    const-string v1, "java.lang.Integer"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lk/b/i/b/g/z;->z:Ljava/util/Set;

    const-string v1, "java.lang.Number"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lk/b/i/b/g/z;->z:Ljava/util/Set;

    const-string v1, "org.bouncycastle.pqc.crypto.xmss.BDS"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lk/b/i/b/g/z;->z:Ljava/util/Set;

    const-string v1, "java.util.ArrayList"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lk/b/i/b/g/z;->z:Ljava/util/Set;

    const-string v1, "org.bouncycastle.pqc.crypto.xmss.XMSSNode"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lk/b/i/b/g/z;->z:Ljava/util/Set;

    const-string v1, "[B"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lk/b/i/b/g/z;->z:Ljava/util/Set;

    const-string v1, "java.util.LinkedList"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lk/b/i/b/g/z;->z:Ljava/util/Set;

    const-string v1, "java.util.Stack"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lk/b/i/b/g/z;->z:Ljava/util/Set;

    const-string v1, "java.util.Vector"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lk/b/i/b/g/z;->z:Ljava/util/Set;

    const-string v1, "[Ljava.lang.Object;"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lk/b/i/b/g/z;->z:Ljava/util/Set;

    const-string v1, "org.bouncycastle.pqc.crypto.xmss.BDSTreeHash"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public constructor <init>(Ljava/lang/Class;Ljava/io/InputStream;)V
    .locals 0

    invoke-direct {p0, p2}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V

    const/4 p2, 0x0

    iput-boolean p2, p0, Lk/b/i/b/g/z;->y:Z

    iput-object p1, p0, Lk/b/i/b/g/z;->x:Ljava/lang/Class;

    return-void
.end method


# virtual methods
.method public resolveClass(Ljava/io/ObjectStreamClass;)Ljava/lang/Class;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/ObjectStreamClass;",
            ")",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    iget-boolean v0, p0, Lk/b/i/b/g/z;->y:Z

    const-string v1, "unexpected class: "

    if-nez v0, :cond_1

    invoke-virtual {p1}, Ljava/io/ObjectStreamClass;->getName()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lk/b/i/b/g/z;->x:Ljava/lang/Class;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lk/b/i/b/g/z;->y:Z

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/io/InvalidClassException;

    invoke-virtual {p1}, Ljava/io/ObjectStreamClass;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Ljava/io/InvalidClassException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    :cond_1
    sget-object v0, Lk/b/i/b/g/z;->z:Ljava/util/Set;

    invoke-virtual {p1}, Ljava/io/ObjectStreamClass;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    :goto_0
    invoke-super {p0, p1}, Ljava/io/ObjectInputStream;->resolveClass(Ljava/io/ObjectStreamClass;)Ljava/lang/Class;

    move-result-object p1

    return-object p1

    :cond_2
    new-instance v0, Ljava/io/InvalidClassException;

    invoke-virtual {p1}, Ljava/io/ObjectStreamClass;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Ljava/io/InvalidClassException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0
.end method