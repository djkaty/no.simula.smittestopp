.class public final enum Le/b/a/a/l;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Le/b/a/a/l;",
        ">;"
    }
.end annotation


# static fields
.field public static final synthetic $VALUES:[Le/b/a/a/l;

.field public static final enum END_ARRAY:Le/b/a/a/l;

.field public static final enum END_OBJECT:Le/b/a/a/l;

.field public static final enum FIELD_NAME:Le/b/a/a/l;

.field public static final enum NOT_AVAILABLE:Le/b/a/a/l;

.field public static final enum START_ARRAY:Le/b/a/a/l;

.field public static final enum START_OBJECT:Le/b/a/a/l;

.field public static final enum VALUE_EMBEDDED_OBJECT:Le/b/a/a/l;

.field public static final enum VALUE_FALSE:Le/b/a/a/l;

.field public static final enum VALUE_NULL:Le/b/a/a/l;

.field public static final enum VALUE_NUMBER_FLOAT:Le/b/a/a/l;

.field public static final enum VALUE_NUMBER_INT:Le/b/a/a/l;

.field public static final enum VALUE_STRING:Le/b/a/a/l;

.field public static final enum VALUE_TRUE:Le/b/a/a/l;


# instance fields
.field public final _id:I

.field public final _isBoolean:Z

.field public final _isNumber:Z

.field public final _isScalar:Z

.field public final _isStructEnd:Z

.field public final _isStructStart:Z

.field public final _serialized:Ljava/lang/String;

.field public final _serializedBytes:[B

.field public final _serializedChars:[C


# direct methods
.method public static constructor <clinit>()V
    .locals 16

    .line 1
    new-instance v0, Le/b/a/a/l;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const-string v3, "NOT_AVAILABLE"

    const/4 v4, -0x1

    invoke-direct {v0, v3, v1, v2, v4}, Le/b/a/a/l;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Le/b/a/a/l;->NOT_AVAILABLE:Le/b/a/a/l;

    .line 2
    new-instance v0, Le/b/a/a/l;

    const/4 v3, 0x1

    const-string v4, "START_OBJECT"

    const-string v5, "{"

    invoke-direct {v0, v4, v3, v5, v3}, Le/b/a/a/l;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Le/b/a/a/l;->START_OBJECT:Le/b/a/a/l;

    .line 3
    new-instance v0, Le/b/a/a/l;

    const/4 v4, 0x2

    const-string v5, "END_OBJECT"

    const-string v6, "}"

    invoke-direct {v0, v5, v4, v6, v4}, Le/b/a/a/l;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Le/b/a/a/l;->END_OBJECT:Le/b/a/a/l;

    .line 4
    new-instance v0, Le/b/a/a/l;

    const/4 v5, 0x3

    const-string v6, "START_ARRAY"

    const-string v7, "["

    invoke-direct {v0, v6, v5, v7, v5}, Le/b/a/a/l;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Le/b/a/a/l;->START_ARRAY:Le/b/a/a/l;

    .line 5
    new-instance v0, Le/b/a/a/l;

    const/4 v6, 0x4

    const-string v7, "END_ARRAY"

    const-string v8, "]"

    invoke-direct {v0, v7, v6, v8, v6}, Le/b/a/a/l;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Le/b/a/a/l;->END_ARRAY:Le/b/a/a/l;

    .line 6
    new-instance v0, Le/b/a/a/l;

    const/4 v7, 0x5

    const-string v8, "FIELD_NAME"

    invoke-direct {v0, v8, v7, v2, v7}, Le/b/a/a/l;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Le/b/a/a/l;->FIELD_NAME:Le/b/a/a/l;

    .line 7
    new-instance v0, Le/b/a/a/l;

    const/16 v8, 0xc

    const/4 v9, 0x6

    const-string v10, "VALUE_EMBEDDED_OBJECT"

    invoke-direct {v0, v10, v9, v2, v8}, Le/b/a/a/l;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Le/b/a/a/l;->VALUE_EMBEDDED_OBJECT:Le/b/a/a/l;

    .line 8
    new-instance v0, Le/b/a/a/l;

    const/4 v10, 0x7

    const-string v11, "VALUE_STRING"

    invoke-direct {v0, v11, v10, v2, v9}, Le/b/a/a/l;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Le/b/a/a/l;->VALUE_STRING:Le/b/a/a/l;

    .line 9
    new-instance v0, Le/b/a/a/l;

    const/16 v11, 0x8

    const-string v12, "VALUE_NUMBER_INT"

    invoke-direct {v0, v12, v11, v2, v10}, Le/b/a/a/l;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Le/b/a/a/l;->VALUE_NUMBER_INT:Le/b/a/a/l;

    .line 10
    new-instance v0, Le/b/a/a/l;

    const/16 v12, 0x9

    const-string v13, "VALUE_NUMBER_FLOAT"

    invoke-direct {v0, v13, v12, v2, v11}, Le/b/a/a/l;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Le/b/a/a/l;->VALUE_NUMBER_FLOAT:Le/b/a/a/l;

    .line 11
    new-instance v0, Le/b/a/a/l;

    const/16 v2, 0xa

    const-string v13, "VALUE_TRUE"

    const-string v14, "true"

    invoke-direct {v0, v13, v2, v14, v12}, Le/b/a/a/l;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Le/b/a/a/l;->VALUE_TRUE:Le/b/a/a/l;

    .line 12
    new-instance v0, Le/b/a/a/l;

    const/16 v13, 0xb

    const-string v14, "VALUE_FALSE"

    const-string v15, "false"

    invoke-direct {v0, v14, v13, v15, v2}, Le/b/a/a/l;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Le/b/a/a/l;->VALUE_FALSE:Le/b/a/a/l;

    .line 13
    new-instance v0, Le/b/a/a/l;

    const-string v14, "VALUE_NULL"

    const-string v15, "null"

    invoke-direct {v0, v14, v8, v15, v13}, Le/b/a/a/l;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Le/b/a/a/l;->VALUE_NULL:Le/b/a/a/l;

    const/16 v14, 0xd

    new-array v14, v14, [Le/b/a/a/l;

    .line 14
    sget-object v15, Le/b/a/a/l;->NOT_AVAILABLE:Le/b/a/a/l;

    aput-object v15, v14, v1

    sget-object v1, Le/b/a/a/l;->START_OBJECT:Le/b/a/a/l;

    aput-object v1, v14, v3

    sget-object v1, Le/b/a/a/l;->END_OBJECT:Le/b/a/a/l;

    aput-object v1, v14, v4

    sget-object v1, Le/b/a/a/l;->START_ARRAY:Le/b/a/a/l;

    aput-object v1, v14, v5

    sget-object v1, Le/b/a/a/l;->END_ARRAY:Le/b/a/a/l;

    aput-object v1, v14, v6

    sget-object v1, Le/b/a/a/l;->FIELD_NAME:Le/b/a/a/l;

    aput-object v1, v14, v7

    sget-object v1, Le/b/a/a/l;->VALUE_EMBEDDED_OBJECT:Le/b/a/a/l;

    aput-object v1, v14, v9

    sget-object v1, Le/b/a/a/l;->VALUE_STRING:Le/b/a/a/l;

    aput-object v1, v14, v10

    sget-object v1, Le/b/a/a/l;->VALUE_NUMBER_INT:Le/b/a/a/l;

    aput-object v1, v14, v11

    sget-object v1, Le/b/a/a/l;->VALUE_NUMBER_FLOAT:Le/b/a/a/l;

    aput-object v1, v14, v12

    sget-object v1, Le/b/a/a/l;->VALUE_TRUE:Le/b/a/a/l;

    aput-object v1, v14, v2

    sget-object v1, Le/b/a/a/l;->VALUE_FALSE:Le/b/a/a/l;

    aput-object v1, v14, v13

    aput-object v0, v14, v8

    sput-object v14, Le/b/a/a/l;->$VALUES:[Le/b/a/a/l;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    const/4 p1, 0x0

    if-nez p3, :cond_0

    const/4 p2, 0x0

    .line 2
    iput-object p2, p0, Le/b/a/a/l;->_serialized:Ljava/lang/String;

    .line 3
    iput-object p2, p0, Le/b/a/a/l;->_serializedChars:[C

    .line 4
    iput-object p2, p0, Le/b/a/a/l;->_serializedBytes:[B

    goto :goto_1

    .line 5
    :cond_0
    iput-object p3, p0, Le/b/a/a/l;->_serialized:Ljava/lang/String;

    .line 6
    invoke-virtual {p3}, Ljava/lang/String;->toCharArray()[C

    move-result-object p2

    iput-object p2, p0, Le/b/a/a/l;->_serializedChars:[C

    .line 7
    array-length p2, p2

    .line 8
    new-array p3, p2, [B

    iput-object p3, p0, Le/b/a/a/l;->_serializedBytes:[B

    const/4 p3, 0x0

    :goto_0
    if-ge p3, p2, :cond_1

    .line 9
    iget-object v0, p0, Le/b/a/a/l;->_serializedBytes:[B

    iget-object v1, p0, Le/b/a/a/l;->_serializedChars:[C

    aget-char v1, v1, p3

    int-to-byte v1, v1

    aput-byte v1, v0, p3

    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    .line 10
    :cond_1
    :goto_1
    iput p4, p0, Le/b/a/a/l;->_id:I

    const/16 p2, 0xa

    const/4 p3, 0x1

    if-eq p4, p2, :cond_3

    const/16 p2, 0x9

    if-ne p4, p2, :cond_2

    goto :goto_2

    :cond_2
    const/4 p2, 0x0

    goto :goto_3

    :cond_3
    :goto_2
    const/4 p2, 0x1

    .line 11
    :goto_3
    iput-boolean p2, p0, Le/b/a/a/l;->_isBoolean:Z

    const/4 p2, 0x7

    if-eq p4, p2, :cond_5

    const/16 p2, 0x8

    if-ne p4, p2, :cond_4

    goto :goto_4

    :cond_4
    const/4 p2, 0x0

    goto :goto_5

    :cond_5
    :goto_4
    const/4 p2, 0x1

    .line 12
    :goto_5
    iput-boolean p2, p0, Le/b/a/a/l;->_isNumber:Z

    if-eq p4, p3, :cond_7

    const/4 p2, 0x3

    if-ne p4, p2, :cond_6

    goto :goto_6

    :cond_6
    const/4 p2, 0x0

    goto :goto_7

    :cond_7
    :goto_6
    const/4 p2, 0x1

    .line 13
    :goto_7
    iput-boolean p2, p0, Le/b/a/a/l;->_isStructStart:Z

    const/4 p2, 0x2

    if-eq p4, p2, :cond_9

    const/4 p2, 0x4

    if-ne p4, p2, :cond_8

    goto :goto_8

    :cond_8
    const/4 p2, 0x0

    goto :goto_9

    :cond_9
    :goto_8
    const/4 p2, 0x1

    .line 14
    :goto_9
    iput-boolean p2, p0, Le/b/a/a/l;->_isStructEnd:Z

    .line 15
    iget-boolean v0, p0, Le/b/a/a/l;->_isStructStart:Z

    if-nez v0, :cond_a

    if-nez p2, :cond_a

    const/4 p2, 0x5

    if-eq p4, p2, :cond_a

    const/4 p2, -0x1

    if-eq p4, p2, :cond_a

    const/4 p1, 0x1

    :cond_a
    iput-boolean p1, p0, Le/b/a/a/l;->_isScalar:Z

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Le/b/a/a/l;
    .locals 1

    .line 1
    const-class v0, Le/b/a/a/l;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Le/b/a/a/l;

    return-object p0
.end method

.method public static values()[Le/b/a/a/l;
    .locals 1

    .line 1
    sget-object v0, Le/b/a/a/l;->$VALUES:[Le/b/a/a/l;

    invoke-virtual {v0}, [Le/b/a/a/l;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Le/b/a/a/l;

    return-object v0
.end method


# virtual methods
.method public final asByteArray()[B
    .locals 1

    .line 1
    iget-object v0, p0, Le/b/a/a/l;->_serializedBytes:[B

    return-object v0
.end method

.method public final asCharArray()[C
    .locals 1

    .line 1
    iget-object v0, p0, Le/b/a/a/l;->_serializedChars:[C

    return-object v0
.end method

.method public final asString()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Le/b/a/a/l;->_serialized:Ljava/lang/String;

    return-object v0
.end method

.method public final id()I
    .locals 1

    .line 1
    iget v0, p0, Le/b/a/a/l;->_id:I

    return v0
.end method

.method public final isBoolean()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Le/b/a/a/l;->_isBoolean:Z

    return v0
.end method

.method public final isNumeric()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Le/b/a/a/l;->_isNumber:Z

    return v0
.end method

.method public final isScalarValue()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Le/b/a/a/l;->_isScalar:Z

    return v0
.end method

.method public final isStructEnd()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Le/b/a/a/l;->_isStructEnd:Z

    return v0
.end method

.method public final isStructStart()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Le/b/a/a/l;->_isStructStart:Z

    return v0
.end method
