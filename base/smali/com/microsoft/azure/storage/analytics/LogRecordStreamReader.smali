.class public Lcom/microsoft/azure/storage/analytics/LogRecordStreamReader;
.super Ljava/io/InputStreamReader;
.source "SourceFile"


# static fields
.field public static final FIELD_DELIMITER:C = ';'

.field public static final QUOTE_CHAR:C = '\"'

.field public static final RECORD_DELIMITER:C = '\n'


# instance fields
.field public isFirstFieldInRecord:Z

.field public peekedCharacter:Ljava/lang/Integer;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    const/4 p1, 0x0

    .line 2
    iput-object p1, p0, Lcom/microsoft/azure/storage/analytics/LogRecordStreamReader;->peekedCharacter:Ljava/lang/Integer;

    const/4 p1, 0x1

    .line 3
    iput-boolean p1, p0, Lcom/microsoft/azure/storage/analytics/LogRecordStreamReader;->isFirstFieldInRecord:Z

    return-void
.end method

.method private readDelimiter(C)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/microsoft/azure/storage/analytics/LogRecordStreamReader;->isEndOfFile()Z

    move-result v0

    if-nez v0, :cond_1

    .line 2
    invoke-virtual {p0}, Lcom/microsoft/azure/storage/analytics/LogRecordStreamReader;->read()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    int-to-char v0, v0

    if-ne v0, p1, :cond_0

    return-void

    .line 3
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Error parsing log record: unexpected delimiter encountered."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 4
    :cond_1
    new-instance p1, Ljava/io/EOFException;

    const-string v0, "Error parsing log record: unexpected end of stream."

    invoke-direct {p1, v0}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private readField(Z)Ljava/lang/String;
    .locals 8

    .line 1
    iget-boolean v0, p0, Lcom/microsoft/azure/storage/analytics/LogRecordStreamReader;->isFirstFieldInRecord:Z

    const/16 v1, 0x3b

    const/4 v2, 0x0

    if-nez v0, :cond_0

    .line 2
    invoke-direct {p0, v1}, Lcom/microsoft/azure/storage/analytics/LogRecordStreamReader;->readDelimiter(C)V

    goto :goto_0

    .line 3
    :cond_0
    iput-boolean v2, p0, Lcom/microsoft/azure/storage/analytics/LogRecordStreamReader;->isFirstFieldInRecord:Z

    .line 4
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v3, 0x0

    .line 5
    :cond_1
    :goto_1
    invoke-virtual {p0}, Lcom/microsoft/azure/storage/analytics/LogRecordStreamReader;->isEndOfFile()Z

    move-result v4

    if-nez v4, :cond_a

    .line 6
    invoke-virtual {p0}, Lcom/microsoft/azure/storage/analytics/LogRecordStreamReader;->peek()I

    move-result v4

    int-to-char v4, v4

    const/4 v5, 0x1

    if-eqz p1, :cond_2

    if-nez v2, :cond_2

    .line 7
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v6

    if-nez v6, :cond_3

    :cond_2
    if-eq v4, v1, :cond_8

    const/16 v6, 0xa

    if-ne v4, v6, :cond_3

    goto :goto_2

    :cond_3
    const-string v6, "Error parsing log record: unexpected quote character encountered."

    if-nez v2, :cond_7

    .line 8
    invoke-virtual {p0}, Lcom/microsoft/azure/storage/analytics/LogRecordStreamReader;->read()I

    .line 9
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 v7, 0x22

    if-ne v4, v7, :cond_1

    if-eqz p1, :cond_6

    .line 10
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    if-ne v4, v5, :cond_4

    const/4 v3, 0x1

    goto :goto_1

    :cond_4
    if-eqz v3, :cond_5

    const/4 v2, 0x1

    goto :goto_1

    .line 11
    :cond_5
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 12
    :cond_6
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 13
    :cond_7
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_8
    :goto_2
    if-eqz p1, :cond_9

    .line 14
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result p1

    if-eqz p1, :cond_9

    .line 15
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result p1

    sub-int/2addr p1, v5

    invoke-virtual {v0, v5, p1}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    move-result-object p1

    goto :goto_3

    .line 16
    :cond_9
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_3
    return-object p1

    .line 17
    :cond_a
    new-instance p1, Ljava/io/EOFException;

    const-string v0, "Error parsing log record: unexpected end of stream."

    invoke-direct {p1, v0}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private tryPeekDelimiter(C)Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/microsoft/azure/storage/analytics/LogRecordStreamReader;->isEndOfFile()Z

    move-result v0

    if-nez v0, :cond_1

    .line 2
    invoke-virtual {p0}, Lcom/microsoft/azure/storage/analytics/LogRecordStreamReader;->peek()I

    move-result v0

    int-to-char v0, v0

    if-eq v0, p1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    const/4 p1, 0x1

    return p1

    .line 3
    :cond_1
    new-instance p1, Ljava/io/EOFException;

    const-string v0, "Error parsing log record: unexpected end of stream."

    invoke-direct {p1, v0}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public endCurrentRecord()V
    .locals 1

    const/16 v0, 0xa

    .line 1
    invoke-direct {p0, v0}, Lcom/microsoft/azure/storage/analytics/LogRecordStreamReader;->readDelimiter(C)V

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/microsoft/azure/storage/analytics/LogRecordStreamReader;->isFirstFieldInRecord:Z

    return-void
.end method

.method public hasMoreFieldsInRecord()Z
    .locals 1

    const/16 v0, 0x3b

    .line 1
    invoke-direct {p0, v0}, Lcom/microsoft/azure/storage/analytics/LogRecordStreamReader;->tryPeekDelimiter(C)Z

    move-result v0

    return v0
.end method

.method public isEndOfFile()Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/microsoft/azure/storage/analytics/LogRecordStreamReader;->peek()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public peek()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/microsoft/azure/storage/analytics/LogRecordStreamReader;->peekedCharacter:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0

    .line 3
    :cond_0
    invoke-super {p0}, Ljava/io/InputStreamReader;->read()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/microsoft/azure/storage/analytics/LogRecordStreamReader;->peekedCharacter:Ljava/lang/Integer;

    .line 4
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public read()I
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/microsoft/azure/storage/analytics/LogRecordStreamReader;->peekedCharacter:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x0

    .line 3
    iput-object v1, p0, Lcom/microsoft/azure/storage/analytics/LogRecordStreamReader;->peekedCharacter:Ljava/lang/Integer;

    return v0

    .line 4
    :cond_0
    invoke-super {p0}, Ljava/io/InputStreamReader;->read()I

    move-result v0

    return v0
.end method

.method public readBoolean()Ljava/lang/Boolean;
    .locals 2

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Lcom/microsoft/azure/storage/analytics/LogRecordStreamReader;->readField(Z)Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-static {v0}, Lcom/microsoft/azure/storage/core/Utility;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 3
    :cond_0
    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public readDate(Ljava/text/DateFormat;)Ljava/util/Date;
    .locals 2

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Lcom/microsoft/azure/storage/analytics/LogRecordStreamReader;->readField(Z)Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-static {v0}, Lcom/microsoft/azure/storage/core/Utility;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 3
    :cond_0
    invoke-virtual {p1, v0}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object p1

    return-object p1
.end method

.method public readDouble()Ljava/lang/Double;
    .locals 2

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Lcom/microsoft/azure/storage/analytics/LogRecordStreamReader;->readField(Z)Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-static {v0}, Lcom/microsoft/azure/storage/core/Utility;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 3
    :cond_0
    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    return-object v0
.end method

.method public readInteger()Ljava/lang/Integer;
    .locals 2

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Lcom/microsoft/azure/storage/analytics/LogRecordStreamReader;->readField(Z)Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-static {v0}, Lcom/microsoft/azure/storage/core/Utility;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 3
    :cond_0
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public readLong()Ljava/lang/Long;
    .locals 2

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Lcom/microsoft/azure/storage/analytics/LogRecordStreamReader;->readField(Z)Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-static {v0}, Lcom/microsoft/azure/storage/core/Utility;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 3
    :cond_0
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public readQuotedString()Ljava/lang/String;
    .locals 2

    const/4 v0, 0x1

    .line 1
    invoke-direct {p0, v0}, Lcom/microsoft/azure/storage/analytics/LogRecordStreamReader;->readField(Z)Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-static {v0}, Lcom/microsoft/azure/storage/core/Utility;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    :cond_0
    return-object v0
.end method

.method public readString()Ljava/lang/String;
    .locals 2

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Lcom/microsoft/azure/storage/analytics/LogRecordStreamReader;->readField(Z)Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-static {v0}, Lcom/microsoft/azure/storage/core/Utility;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    :cond_0
    return-object v0
.end method

.method public readUri()Ljava/net/URI;
    .locals 10

    const/4 v0, 0x1

    .line 1
    invoke-direct {p0, v0}, Lcom/microsoft/azure/storage/analytics/LogRecordStreamReader;->readField(Z)Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-static {v0}, Lcom/microsoft/azure/storage/core/Utility;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    return-object v2

    .line 3
    :cond_0
    new-instance v1, Ljava/net/URI;

    .line 4
    sget-object v3, Lk/a/a/b/b;->b:Lk/a/a/b/d/a/b;

    if-eqz v3, :cond_5

    if-nez v0, :cond_1

    goto :goto_2

    .line 5
    :cond_1
    :try_start_0
    new-instance v2, Ljava/io/StringWriter;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v4

    mul-int/lit8 v4, v4, 0x2

    invoke-direct {v2, v4}, Ljava/io/StringWriter;-><init>(I)V

    .line 6
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    :cond_2
    :goto_0
    if-ge v6, v4, :cond_4

    .line 7
    invoke-virtual {v3, v0, v6, v2}, Lk/a/a/b/d/a/b;->a(Ljava/lang/CharSequence;ILjava/io/Writer;)I

    move-result v7

    if-nez v7, :cond_3

    .line 8
    invoke-interface {v0, v6}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v7

    .line 9
    invoke-virtual {v2, v7}, Ljava/io/Writer;->write(I)V

    add-int/lit8 v6, v6, 0x1

    .line 10
    invoke-static {v7}, Ljava/lang/Character;->isHighSurrogate(C)Z

    move-result v7

    if-eqz v7, :cond_2

    if-ge v6, v4, :cond_2

    .line 11
    invoke-interface {v0, v6}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v7

    .line 12
    invoke-static {v7}, Ljava/lang/Character;->isLowSurrogate(C)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 13
    invoke-virtual {v2, v7}, Ljava/io/Writer;->write(I)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_3
    const/4 v8, 0x0

    :goto_1
    if-ge v8, v7, :cond_2

    .line 14
    invoke-static {v0, v6}, Ljava/lang/Character;->codePointAt(Ljava/lang/CharSequence;I)I

    move-result v9

    invoke-static {v9}, Ljava/lang/Character;->charCount(I)I

    move-result v9

    add-int/2addr v6, v9

    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 15
    :cond_4
    invoke-virtual {v2}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 16
    :goto_2
    invoke-direct {v1, v2}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    return-object v1

    :catch_0
    move-exception v0

    .line 17
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 18
    :cond_5
    throw v2
.end method

.method public readUuid()Ljava/util/UUID;
    .locals 2

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Lcom/microsoft/azure/storage/analytics/LogRecordStreamReader;->readField(Z)Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-static {v0}, Lcom/microsoft/azure/storage/core/Utility;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 3
    :cond_0
    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    return-object v0
.end method
