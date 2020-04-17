.class public abstract Lg/c/d;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lg/c/d$j;,
        Lg/c/d$e;,
        Lg/c/d$c;,
        Lg/c/d$d;,
        Lg/c/d$i;,
        Lg/c/d$h;,
        Lg/c/d$b;,
        Lg/c/d$f;,
        Lg/c/d$g;
    }
.end annotation


# static fields
.field public static final d:Ljava/util/Locale;


# instance fields
.field public final a:Lg/c/d$f;

.field public final b:Lg/c/d$b;

.field public final c:I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    sput-object v0, Lg/c/d;->d:Ljava/util/Locale;

    return-void
.end method

.method public synthetic constructor <init>(Lg/c/d$f;Lg/c/d$a;)V
    .locals 5

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lg/c/d;->a:Lg/c/d$f;

    const-string p2, "os.arch"

    .line 3
    invoke-static {p2}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const-string v0, "x86"

    .line 4
    invoke-static {v0, p2}, Lg/c/d;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_11

    const-string v0, "i386"

    .line 5
    invoke-static {v0, p2}, Lg/c/d;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_11

    const-string v0, "i86pc"

    .line 6
    invoke-static {v0, p2}, Lg/c/d;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_11

    const-string v0, "i686"

    .line 7
    invoke-static {v0, p2}, Lg/c/d;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_7

    :cond_0
    const-string v0, "x86_64"

    .line 8
    invoke-static {v0, p2}, Lg/c/d;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_10

    const-string v0, "amd64"

    invoke-static {v0, p2}, Lg/c/d;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto/16 :goto_6

    :cond_1
    const-string v0, "ppc"

    .line 9
    invoke-static {v0, p2}, Lg/c/d;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_f

    const-string v0, "powerpc"

    invoke-static {v0, p2}, Lg/c/d;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto/16 :goto_5

    :cond_2
    const-string v0, "ppc64"

    .line 10
    invoke-static {v0, p2}, Lg/c/d;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_d

    const-string v0, "powerpc64"

    invoke-static {v0, p2}, Lg/c/d;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    goto/16 :goto_4

    :cond_3
    const-string v0, "ppc64le"

    .line 11
    invoke-static {v0, p2}, Lg/c/d;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_c

    const-string v0, "powerpc64le"

    invoke-static {v0, p2}, Lg/c/d;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    goto :goto_3

    :cond_4
    const-string v0, "s390"

    .line 12
    invoke-static {v0, p2}, Lg/c/d;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_b

    const-string v0, "s390x"

    invoke-static {v0, p2}, Lg/c/d;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    goto :goto_2

    :cond_5
    const-string v0, "aarch64"

    .line 13
    invoke-static {v0, p2}, Lg/c/d;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 14
    sget-object p2, Lg/c/d$b;->AARCH64:Lg/c/d$b;

    goto :goto_8

    :cond_6
    const-string v0, "arm"

    .line 15
    invoke-static {v0, p2}, Lg/c/d;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_a

    const-string v0, "armv7l"

    invoke-static {v0, p2}, Lg/c/d;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    goto :goto_1

    .line 16
    :cond_7
    invoke-static {}, Lg/c/d$b;->values()[Lg/c/d$b;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_9

    aget-object v3, v0, v2

    .line 17
    invoke-virtual {v3}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, p2}, Lg/c/d;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_8

    move-object p2, v3

    goto :goto_8

    :cond_8
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 18
    :cond_9
    sget-object p2, Lg/c/d$b;->UNKNOWN:Lg/c/d$b;

    goto :goto_8

    .line 19
    :cond_a
    :goto_1
    sget-object p2, Lg/c/d$b;->ARM:Lg/c/d$b;

    goto :goto_8

    .line 20
    :cond_b
    :goto_2
    sget-object p2, Lg/c/d$b;->S390X:Lg/c/d$b;

    goto :goto_8

    .line 21
    :cond_c
    :goto_3
    sget-object p2, Lg/c/d$b;->PPC64LE:Lg/c/d$b;

    goto :goto_8

    :cond_d
    :goto_4
    const-string p2, "sun.cpu.endian"

    .line 22
    invoke-static {p2}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const-string v0, "little"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_e

    .line 23
    sget-object p2, Lg/c/d$b;->PPC64LE:Lg/c/d$b;

    goto :goto_8

    .line 24
    :cond_e
    sget-object p2, Lg/c/d$b;->PPC64:Lg/c/d$b;

    goto :goto_8

    .line 25
    :cond_f
    :goto_5
    sget-object p2, Lg/c/d$b;->PPC:Lg/c/d$b;

    goto :goto_8

    .line 26
    :cond_10
    :goto_6
    sget-object p2, Lg/c/d$b;->X86_64:Lg/c/d$b;

    goto :goto_8

    .line 27
    :cond_11
    :goto_7
    sget-object p2, Lg/c/d$b;->I386:Lg/c/d$b;

    .line 28
    :goto_8
    iput-object p2, p0, Lg/c/d;->b:Lg/c/d$b;

    .line 29
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    if-eqz p1, :cond_13

    const/4 p2, 0x7

    if-eq p1, p2, :cond_12

    const-string p1, "lib.*\\.so.*$"

    goto :goto_9

    :cond_12
    const-string p1, ".*\\.dll$"

    goto :goto_9

    :cond_13
    const-string p1, "lib.*\\.(dylib|jnilib)$"

    .line 30
    :goto_9
    invoke-static {p1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 31
    iget-object p1, p0, Lg/c/d;->b:Lg/c/d$b;

    const-string p2, "sun.arch.data.model"

    .line 32
    invoke-static {p2}, Ljava/lang/Integer;->getInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p2

    const/16 v0, 0x40

    const/16 v1, 0x20

    if-eqz p2, :cond_14

    .line 33
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-eq v2, v1, :cond_16

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-eq v2, v0, :cond_16

    .line 34
    :cond_14
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    const/16 p2, 0xa

    if-eq p1, p2, :cond_15

    packed-switch p1, :pswitch_data_0

    .line 35
    new-instance p1, Ljava/lang/ExceptionInInitializerError;

    const-string p2, "Cannot determine cpu address size"

    invoke-direct {p1, p2}, Ljava/lang/ExceptionInInitializerError;-><init>(Ljava/lang/String;)V

    throw p1

    .line 36
    :pswitch_0
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    goto :goto_a

    .line 37
    :cond_15
    :pswitch_1
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    .line 38
    :cond_16
    :goto_a
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 39
    iput p1, p0, Lg/c/d;->c:I

    .line 40
    sget-object p1, Lg/c/d$f;->WINDOWS:Lg/c/d$f;

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2

    .line 3
    invoke-virtual {p0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lg/c/d;->d:Ljava/util/Locale;

    .line 4
    invoke-virtual {p0, v0}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lg/c/d;->d:Ljava/util/Locale;

    invoke-virtual {p1, v1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lg/c/d;->d:Ljava/util/Locale;

    .line 5
    invoke-virtual {p0, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    sget-object v0, Lg/c/d;->d:Ljava/util/Locale;

    invoke-virtual {p1, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public static b(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2

    .line 2
    invoke-virtual {p0, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lg/c/d;->d:Ljava/util/Locale;

    .line 3
    invoke-virtual {p0, v0}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lg/c/d;->d:Ljava/util/Locale;

    invoke-virtual {p1, v1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lg/c/d;->d:Ljava/util/Locale;

    .line 4
    invoke-virtual {p0, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    sget-object v0, Lg/c/d;->d:Ljava/util/Locale;

    invoke-virtual {p1, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public static synthetic c()Lg/c/d;
    .locals 3

    const-string v0, "jnr.ffi.provider"

    .line 1
    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "$Platform"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 3
    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lg/c/d;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_4

    :catch_0
    move-exception v0

    .line 4
    new-instance v1, Ljava/lang/ExceptionInInitializerError;

    invoke-direct {v1, v0}, Ljava/lang/ExceptionInInitializerError;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :catch_1
    move-exception v0

    .line 5
    new-instance v1, Ljava/lang/ExceptionInInitializerError;

    invoke-direct {v1, v0}, Ljava/lang/ExceptionInInitializerError;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :catch_2
    nop

    const-string v0, "os.name"

    .line 6
    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    const-string v1, "mac"

    .line 7
    invoke-static {v0, v1}, Lg/c/d;->b(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_9

    const-string v1, "darwin"

    invoke-static {v0, v1}, Lg/c/d;->b(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    :cond_0
    const-string v1, "linux"

    .line 8
    invoke-static {v0, v1}, Lg/c/d;->b(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 9
    sget-object v0, Lg/c/d$f;->LINUX:Lg/c/d$f;

    goto :goto_2

    :cond_1
    const-string v1, "sunos"

    .line 10
    invoke-static {v0, v1}, Lg/c/d;->b(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_8

    const-string v1, "solaris"

    invoke-static {v0, v1}, Lg/c/d;->b(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_0

    :cond_2
    const-string v1, "aix"

    .line 11
    invoke-static {v0, v1}, Lg/c/d;->b(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 12
    sget-object v0, Lg/c/d$f;->AIX:Lg/c/d$f;

    goto :goto_2

    :cond_3
    const-string v1, "openbsd"

    .line 13
    invoke-static {v0, v1}, Lg/c/d;->b(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 14
    sget-object v0, Lg/c/d$f;->OPENBSD:Lg/c/d$f;

    goto :goto_2

    :cond_4
    const-string v1, "freebsd"

    .line 15
    invoke-static {v0, v1}, Lg/c/d;->b(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 16
    sget-object v0, Lg/c/d$f;->FREEBSD:Lg/c/d$f;

    goto :goto_2

    :cond_5
    const-string v1, "dragonfly"

    .line 17
    invoke-static {v0, v1}, Lg/c/d;->b(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 18
    sget-object v0, Lg/c/d$f;->DRAGONFLY:Lg/c/d$f;

    goto :goto_2

    :cond_6
    const-string v1, "windows"

    .line 19
    invoke-static {v0, v1}, Lg/c/d;->b(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 20
    sget-object v0, Lg/c/d$f;->WINDOWS:Lg/c/d$f;

    goto :goto_2

    .line 21
    :cond_7
    sget-object v0, Lg/c/d$f;->UNKNOWN:Lg/c/d$f;

    goto :goto_2

    .line 22
    :cond_8
    :goto_0
    sget-object v0, Lg/c/d$f;->SOLARIS:Lg/c/d$f;

    goto :goto_2

    .line 23
    :cond_9
    :goto_1
    sget-object v0, Lg/c/d$f;->DARWIN:Lg/c/d$f;

    .line 24
    :goto_2
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    if-eqz v1, :cond_d

    const/4 v2, 0x5

    if-eq v1, v2, :cond_c

    const/4 v2, 0x7

    if-eq v1, v2, :cond_b

    const/16 v2, 0xa

    if-eq v1, v2, :cond_a

    .line 25
    new-instance v1, Lg/c/d$d;

    invoke-direct {v1, v0}, Lg/c/d$d;-><init>(Lg/c/d$f;)V

    goto :goto_3

    .line 26
    :cond_a
    new-instance v1, Lg/c/d$i;

    invoke-direct {v1, v0}, Lg/c/d$i;-><init>(Lg/c/d$f;)V

    :goto_3
    move-object v0, v1

    goto :goto_4

    .line 27
    :cond_b
    new-instance v0, Lg/c/d$j;

    invoke-direct {v0}, Lg/c/d$j;-><init>()V

    goto :goto_4

    .line 28
    :cond_c
    new-instance v0, Lg/c/d$e;

    invoke-direct {v0}, Lg/c/d$e;-><init>()V

    goto :goto_4

    .line 29
    :cond_d
    new-instance v0, Lg/c/d$c;

    invoke-direct {v0}, Lg/c/d$c;-><init>()V

    :goto_4
    return-object v0
.end method

.method public static d()Lg/c/d;
    .locals 1

    .line 1
    sget-object v0, Lg/c/d$g;->a:Lg/c/d;

    return-object v0
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lg/c/d;->a:Lg/c/d$f;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    const/4 v1, 0x5

    if-eq v0, v1, :cond_3

    const/4 v1, 0x7

    if-eq v0, v1, :cond_2

    const/16 v1, 0x8

    if-eq v0, v1, :cond_0

    const-string v0, "c"

    return-object v0

    .line 2
    :cond_0
    iget v0, p0, Lg/c/d;->c:I

    const/16 v1, 0x20

    if-ne v0, v1, :cond_1

    const-string v0, "libc.a(shr.o)"

    goto :goto_0

    :cond_1
    const-string v0, "libc.a(shr_64.o)"

    :goto_0
    return-object v0

    :cond_2
    const-string v0, "msvcrt"

    return-object v0

    :cond_3
    const-string v0, "libc.so.6"

    return-object v0
.end method

.method public final b()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lg/c/d;->a:Lg/c/d$f;

    sget-object v1, Lg/c/d$f;->FREEBSD:Lg/c/d$f;

    if-eq v0, v1, :cond_1

    sget-object v1, Lg/c/d$f;->OPENBSD:Lg/c/d$f;

    if-eq v0, v1, :cond_1

    sget-object v1, Lg/c/d$f;->NETBSD:Lg/c/d$f;

    if-eq v0, v1, :cond_1

    sget-object v1, Lg/c/d$f;->DARWIN:Lg/c/d$f;

    if-eq v0, v1, :cond_1

    sget-object v1, Lg/c/d$f;->DRAGONFLY:Lg/c/d$f;

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method
