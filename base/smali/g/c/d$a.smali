.class public synthetic Lg/c/d$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lg/c/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1009
    name = null
.end annotation


# static fields
.field public static final synthetic a:[I

.field public static final synthetic b:[I


# direct methods
.method public static constructor <clinit>()V
    .locals 13

    .line 1
    invoke-static {}, Lg/c/d$b;->values()[Lg/c/d$b;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lg/c/d$a;->b:[I

    const/4 v1, 0x0

    const/4 v2, 0x1

    :try_start_0
    sget-object v3, Lg/c/d$b;->I386:Lg/c/d$b;

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    const/4 v0, 0x2

    :try_start_1
    sget-object v3, Lg/c/d$a;->b:[I

    sget-object v4, Lg/c/d$b;->PPC:Lg/c/d$b;

    aput v0, v3, v0
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    const/4 v3, 0x3

    const/4 v4, 0x5

    :try_start_2
    sget-object v5, Lg/c/d$a;->b:[I

    sget-object v6, Lg/c/d$b;->SPARC:Lg/c/d$b;

    aput v3, v5, v4
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    const/4 v5, 0x4

    :try_start_3
    sget-object v6, Lg/c/d$a;->b:[I

    sget-object v7, Lg/c/d$b;->X86_64:Lg/c/d$b;

    aput v5, v6, v2
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_3

    :catch_3
    :try_start_4
    sget-object v6, Lg/c/d$a;->b:[I

    sget-object v7, Lg/c/d$b;->PPC64:Lg/c/d$b;

    aput v4, v6, v3
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_4

    :catch_4
    const/4 v6, 0x6

    :try_start_5
    sget-object v7, Lg/c/d$a;->b:[I

    sget-object v8, Lg/c/d$b;->PPC64LE:Lg/c/d$b;

    aput v6, v7, v5
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_5

    :catch_5
    const/4 v7, 0x7

    :try_start_6
    sget-object v8, Lg/c/d$a;->b:[I

    sget-object v9, Lg/c/d$b;->SPARCV9:Lg/c/d$b;

    aput v7, v8, v6
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_6

    :catch_6
    const/16 v8, 0x8

    :try_start_7
    sget-object v9, Lg/c/d$a;->b:[I

    sget-object v10, Lg/c/d$b;->S390X:Lg/c/d$b;

    aput v8, v9, v7
    :try_end_7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_7} :catch_7

    :catch_7
    const/16 v9, 0x9

    const/16 v10, 0xa

    :try_start_8
    sget-object v11, Lg/c/d$a;->b:[I

    sget-object v12, Lg/c/d$b;->AARCH64:Lg/c/d$b;

    aput v9, v11, v10
    :try_end_8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8 .. :try_end_8} :catch_8

    .line 2
    :catch_8
    invoke-static {}, Lg/c/d$f;->values()[Lg/c/d$f;

    move-result-object v11

    array-length v11, v11

    new-array v11, v11, [I

    sput-object v11, Lg/c/d$a;->a:[I

    :try_start_9
    sget-object v12, Lg/c/d$f;->DARWIN:Lg/c/d$f;

    aput v2, v11, v1
    :try_end_9
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_9} :catch_9

    :catch_9
    :try_start_a
    sget-object v1, Lg/c/d$a;->a:[I

    sget-object v11, Lg/c/d$f;->LINUX:Lg/c/d$f;

    aput v0, v1, v4
    :try_end_a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a .. :try_end_a} :catch_a

    :catch_a
    :try_start_b
    sget-object v1, Lg/c/d$a;->a:[I

    sget-object v11, Lg/c/d$f;->WINDOWS:Lg/c/d$f;

    aput v3, v1, v7
    :try_end_b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_b .. :try_end_b} :catch_b

    :catch_b
    :try_start_c
    sget-object v1, Lg/c/d$a;->a:[I

    sget-object v3, Lg/c/d$f;->UNKNOWN:Lg/c/d$f;

    aput v5, v1, v10
    :try_end_c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_c .. :try_end_c} :catch_c

    :catch_c
    :try_start_d
    sget-object v1, Lg/c/d$a;->a:[I

    sget-object v3, Lg/c/d$f;->SOLARIS:Lg/c/d$f;

    aput v4, v1, v6
    :try_end_d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_d .. :try_end_d} :catch_d

    :catch_d
    :try_start_e
    sget-object v1, Lg/c/d$a;->a:[I

    sget-object v3, Lg/c/d$f;->DRAGONFLY:Lg/c/d$f;

    aput v6, v1, v5
    :try_end_e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_e .. :try_end_e} :catch_e

    :catch_e
    :try_start_f
    sget-object v1, Lg/c/d$a;->a:[I

    sget-object v3, Lg/c/d$f;->FREEBSD:Lg/c/d$f;

    aput v7, v1, v2
    :try_end_f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_f .. :try_end_f} :catch_f

    :catch_f
    :try_start_10
    sget-object v1, Lg/c/d$a;->a:[I

    sget-object v2, Lg/c/d$f;->NETBSD:Lg/c/d$f;

    aput v8, v1, v0
    :try_end_10
    .catch Ljava/lang/NoSuchFieldError; {:try_start_10 .. :try_end_10} :catch_10

    :catch_10
    :try_start_11
    sget-object v0, Lg/c/d$a;->a:[I

    sget-object v1, Lg/c/d$f;->AIX:Lg/c/d$f;

    aput v9, v0, v8
    :try_end_11
    .catch Ljava/lang/NoSuchFieldError; {:try_start_11 .. :try_end_11} :catch_11

    :catch_11
    return-void
.end method
