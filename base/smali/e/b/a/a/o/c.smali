.class public abstract Le/b/a/a/o/c;
.super Le/b/a/a/i;
.source "SourceFile"


# static fields
.field public static final A:Ljava/math/BigInteger;

.field public static final B:Ljava/math/BigInteger;

.field public static final C:Ljava/math/BigInteger;

.field public static final D:Ljava/math/BigInteger;

.field public static final z:[B


# instance fields
.field public y:Le/b/a/a/l;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x0

    new-array v0, v0, [B

    .line 1
    sput-object v0, Le/b/a/a/o/c;->z:[B

    const-wide/32 v0, -0x80000000

    .line 2
    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    sput-object v0, Le/b/a/a/o/c;->A:Ljava/math/BigInteger;

    const-wide/32 v0, 0x7fffffff

    .line 3
    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    sput-object v0, Le/b/a/a/o/c;->B:Ljava/math/BigInteger;

    const-wide/high16 v0, -0x8000000000000000L

    .line 4
    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    sput-object v0, Le/b/a/a/o/c;->C:Ljava/math/BigInteger;

    const-wide v0, 0x7fffffffffffffffL

    .line 5
    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    sput-object v0, Le/b/a/a/o/c;->D:Ljava/math/BigInteger;

    .line 6
    new-instance v0, Ljava/math/BigDecimal;

    sget-object v1, Le/b/a/a/o/c;->C:Ljava/math/BigInteger;

    invoke-direct {v0, v1}, Ljava/math/BigDecimal;-><init>(Ljava/math/BigInteger;)V

    .line 7
    new-instance v0, Ljava/math/BigDecimal;

    sget-object v1, Le/b/a/a/o/c;->D:Ljava/math/BigInteger;

    invoke-direct {v0, v1}, Ljava/math/BigDecimal;-><init>(Ljava/math/BigInteger;)V

    .line 8
    new-instance v0, Ljava/math/BigDecimal;

    sget-object v1, Le/b/a/a/o/c;->A:Ljava/math/BigInteger;

    invoke-direct {v0, v1}, Ljava/math/BigDecimal;-><init>(Ljava/math/BigInteger;)V

    .line 9
    new-instance v0, Ljava/math/BigDecimal;

    sget-object v1, Le/b/a/a/o/c;->B:Ljava/math/BigInteger;

    invoke-direct {v0, v1}, Ljava/math/BigDecimal;-><init>(Ljava/math/BigInteger;)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Le/b/a/a/i;-><init>(I)V

    return-void
.end method

.method public static final b(I)Ljava/lang/String;
    .locals 5

    int-to-char v0, p0

    .line 10
    invoke-static {v0}, Ljava/lang/Character;->isISOControl(C)Z

    move-result v1

    const-string v2, ")"

    if-eqz v1, :cond_0

    const-string v0, "(CTRL-CHAR, code "

    .line 11
    invoke-static {v0, p0, v2}, Le/a/a/a/a;->b(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const/16 v1, 0xff

    const-string v3, "\' (code "

    const-string v4, "\'"

    if-le p0, v1, :cond_1

    .line 12
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " / 0x"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 13
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public a(C)C
    .locals 1

    .line 11
    sget-object v0, Le/b/a/a/i$a;->ALLOW_BACKSLASH_ESCAPING_ANY_CHARACTER:Le/b/a/a/i$a;

    invoke-virtual {p0, v0}, Le/b/a/a/i;->a(Le/b/a/a/i$a;)Z

    move-result v0

    if-eqz v0, :cond_0

    return p1

    :cond_0
    const/16 v0, 0x27

    if-ne p1, v0, :cond_1

    .line 12
    sget-object v0, Le/b/a/a/i$a;->ALLOW_SINGLE_QUOTES:Le/b/a/a/i$a;

    invoke-virtual {p0, v0}, Le/b/a/a/i;->a(Le/b/a/a/i$a;)Z

    move-result v0

    if-eqz v0, :cond_1

    return p1

    :cond_1
    const-string v0, "Unrecognized character escape "

    .line 13
    invoke-static {v0}, Le/a/a/a/a;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Le/b/a/a/o/c;->b(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 14
    invoke-virtual {p0, p1}, Le/b/a/a/i;->a(Ljava/lang/String;)Le/b/a/a/h;

    move-result-object p1

    throw p1
.end method

.method public a(I)V
    .locals 1

    int-to-char p1, p1

    const-string v0, "Illegal character ("

    .line 9
    invoke-static {v0}, Le/a/a/a/a;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Le/b/a/a/o/c;->b(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "): only regular white space (\\r, \\n, \\t) is allowed between tokens"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 10
    invoke-virtual {p0, p1}, Le/b/a/a/i;->a(Ljava/lang/String;)Le/b/a/a/h;

    move-result-object p1

    throw p1
.end method

.method public a(ILjava/lang/String;)V
    .locals 2

    if-ltz p1, :cond_1

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    .line 1
    invoke-static {p1}, Le/b/a/a/o/c;->b(I)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v0, v1

    const-string p1, "Unexpected character (%s)"

    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    if-eqz p2, :cond_0

    const-string v0, ": "

    .line 2
    invoke-static {p1, v0, p2}, Le/a/a/a/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 3
    :cond_0
    invoke-virtual {p0, p1}, Le/b/a/a/i;->a(Ljava/lang/String;)Le/b/a/a/h;

    move-result-object p1

    throw p1

    .line 4
    :cond_1
    invoke-virtual {p0}, Le/b/a/a/o/c;->h()V

    const/4 p1, 0x0

    throw p1
.end method

.method public a(Le/b/a/a/l;)V
    .locals 1

    .line 5
    sget-object v0, Le/b/a/a/l;->VALUE_STRING:Le/b/a/a/l;

    if-eq p1, v0, :cond_2

    .line 6
    sget-object v0, Le/b/a/a/l;->VALUE_NUMBER_INT:Le/b/a/a/l;

    if-eq p1, v0, :cond_1

    sget-object v0, Le/b/a/a/l;->VALUE_NUMBER_FLOAT:Le/b/a/a/l;

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, " in a value"

    goto :goto_1

    :cond_1
    :goto_0
    const-string v0, " in a Number value"

    goto :goto_1

    :cond_2
    const-string v0, " in a String value"

    .line 7
    :goto_1
    invoke-virtual {p0, v0, p1}, Le/b/a/a/o/c;->a(Ljava/lang/String;Le/b/a/a/l;)V

    const/4 p1, 0x0

    throw p1
.end method

.method public a(Ljava/lang/String;Le/b/a/a/l;)V
    .locals 2

    .line 8
    new-instance v0, Le/b/a/a/p/c;

    const-string v1, "Unexpected end-of-input"

    invoke-static {v1, p1}, Le/a/a/a/a;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p0, p2, p1}, Le/b/a/a/p/c;-><init>(Le/b/a/a/i;Le/b/a/a/l;Ljava/lang/String;)V

    throw v0
.end method

.method public final a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p2, v0, v1

    const/4 p2, 0x1

    aput-object p3, v0, p2

    .line 15
    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Le/b/a/a/i;->a(Ljava/lang/String;)Le/b/a/a/h;

    move-result-object p1

    throw p1
.end method

.method public b(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Le/b/a/a/o/c;->y:Le/b/a/a/l;

    sget-object v1, Le/b/a/a/l;->VALUE_STRING:Le/b/a/a/l;

    if-ne v0, v1, :cond_0

    .line 2
    invoke-virtual {p0}, Le/b/a/a/o/c;->i()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 3
    :cond_0
    sget-object v1, Le/b/a/a/l;->FIELD_NAME:Le/b/a/a/l;

    if-ne v0, v1, :cond_1

    .line 4
    invoke-virtual {p0}, Le/b/a/a/i;->c()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_1
    if-eqz v0, :cond_3

    .line 5
    sget-object v1, Le/b/a/a/l;->VALUE_NULL:Le/b/a/a/l;

    if-eq v0, v1, :cond_3

    invoke-virtual {v0}, Le/b/a/a/l;->isScalarValue()Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    .line 6
    :cond_2
    invoke-virtual {p0}, Le/b/a/a/o/c;->i()Ljava/lang/String;

    move-result-object p1

    :cond_3
    :goto_0
    return-object p1
.end method

.method public b(ILjava/lang/String;)V
    .locals 1

    .line 7
    sget-object v0, Le/b/a/a/i$a;->ALLOW_UNQUOTED_CONTROL_CHARS:Le/b/a/a/i$a;

    invoke-virtual {p0, v0}, Le/b/a/a/i;->a(Le/b/a/a/i$a;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x20

    if-gt p1, v0, :cond_0

    return-void

    :cond_0
    int-to-char p1, p1

    const-string v0, "Illegal unquoted character ("

    .line 8
    invoke-static {v0}, Le/a/a/a/a;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Le/b/a/a/o/c;->b(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "): has to be escaped using backslash to be included in "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 9
    invoke-virtual {p0, p1}, Le/b/a/a/i;->a(Ljava/lang/String;)Le/b/a/a/h;

    move-result-object p1

    throw p1
.end method

.method public c(ILjava/lang/String;)V
    .locals 2

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    .line 1
    invoke-static {p1}, Le/b/a/a/o/c;->b(I)Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string p1, "Unexpected character (%s) in numeric value"

    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    if-eqz p2, :cond_0

    const-string v0, ": "

    .line 2
    invoke-static {p1, v0, p2}, Le/a/a/a/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 3
    :cond_0
    invoke-virtual {p0, p1}, Le/b/a/a/i;->a(Ljava/lang/String;)Le/b/a/a/h;

    move-result-object p1

    throw p1
.end method

.method public e()Z
    .locals 1

    .line 1
    iget-object v0, p0, Le/b/a/a/o/c;->y:Le/b/a/a/l;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public g()Le/b/a/a/l;
    .locals 2

    .line 1
    invoke-virtual {p0}, Le/b/a/a/i;->f()Le/b/a/a/l;

    move-result-object v0

    .line 2
    sget-object v1, Le/b/a/a/l;->FIELD_NAME:Le/b/a/a/l;

    if-ne v0, v1, :cond_0

    .line 3
    invoke-virtual {p0}, Le/b/a/a/i;->f()Le/b/a/a/l;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public h()V
    .locals 2

    const-string v0, " in "

    .line 1
    invoke-static {v0}, Le/a/a/a/a;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Le/b/a/a/o/c;->y:Le/b/a/a/l;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Le/b/a/a/o/c;->y:Le/b/a/a/l;

    invoke-virtual {p0, v0, v1}, Le/b/a/a/o/c;->a(Ljava/lang/String;Le/b/a/a/l;)V

    const/4 v0, 0x0

    throw v0
.end method

.method public abstract i()Ljava/lang/String;
.end method
