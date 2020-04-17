.class public final Lcom/microsoft/azure/storage/table/EntityProperty;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public dateBackwardCompatibility:Z

.field public edmType:Lcom/microsoft/azure/storage/table/EdmType;

.field public isEncrypted:Z

.field public type:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field public value:Ljava/lang/String;


# direct methods
.method public constructor <init>(D)V
    .locals 1

    .line 146
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 147
    sget-object v0, Lcom/microsoft/azure/storage/table/EdmType;->NULL:Lcom/microsoft/azure/storage/table/EdmType;

    iput-object v0, p0, Lcom/microsoft/azure/storage/table/EntityProperty;->edmType:Lcom/microsoft/azure/storage/table/EdmType;

    const/4 v0, 0x0

    .line 148
    iput-boolean v0, p0, Lcom/microsoft/azure/storage/table/EntityProperty;->isEncrypted:Z

    .line 149
    iput-boolean v0, p0, Lcom/microsoft/azure/storage/table/EntityProperty;->dateBackwardCompatibility:Z

    .line 150
    invoke-virtual {p0, p1, p2}, Lcom/microsoft/azure/storage/table/EntityProperty;->setValue(D)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    .line 156
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 157
    sget-object v0, Lcom/microsoft/azure/storage/table/EdmType;->NULL:Lcom/microsoft/azure/storage/table/EdmType;

    iput-object v0, p0, Lcom/microsoft/azure/storage/table/EntityProperty;->edmType:Lcom/microsoft/azure/storage/table/EdmType;

    const/4 v0, 0x0

    .line 158
    iput-boolean v0, p0, Lcom/microsoft/azure/storage/table/EntityProperty;->isEncrypted:Z

    .line 159
    iput-boolean v0, p0, Lcom/microsoft/azure/storage/table/EntityProperty;->dateBackwardCompatibility:Z

    .line 160
    invoke-virtual {p0, p1}, Lcom/microsoft/azure/storage/table/EntityProperty;->setValue(I)V

    return-void
.end method

.method public constructor <init>(J)V
    .locals 1

    .line 166
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 167
    sget-object v0, Lcom/microsoft/azure/storage/table/EdmType;->NULL:Lcom/microsoft/azure/storage/table/EdmType;

    iput-object v0, p0, Lcom/microsoft/azure/storage/table/EntityProperty;->edmType:Lcom/microsoft/azure/storage/table/EdmType;

    const/4 v0, 0x0

    .line 168
    iput-boolean v0, p0, Lcom/microsoft/azure/storage/table/EntityProperty;->isEncrypted:Z

    .line 169
    iput-boolean v0, p0, Lcom/microsoft/azure/storage/table/EntityProperty;->dateBackwardCompatibility:Z

    .line 170
    invoke-virtual {p0, p1, p2}, Lcom/microsoft/azure/storage/table/EntityProperty;->setValue(J)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Boolean;)V
    .locals 1

    .line 126
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 127
    sget-object v0, Lcom/microsoft/azure/storage/table/EdmType;->NULL:Lcom/microsoft/azure/storage/table/EdmType;

    iput-object v0, p0, Lcom/microsoft/azure/storage/table/EntityProperty;->edmType:Lcom/microsoft/azure/storage/table/EdmType;

    const/4 v0, 0x0

    .line 128
    iput-boolean v0, p0, Lcom/microsoft/azure/storage/table/EntityProperty;->isEncrypted:Z

    .line 129
    iput-boolean v0, p0, Lcom/microsoft/azure/storage/table/EntityProperty;->dateBackwardCompatibility:Z

    .line 130
    invoke-virtual {p0, p1}, Lcom/microsoft/azure/storage/table/EntityProperty;->setValue(Ljava/lang/Boolean;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Double;)V
    .locals 1

    .line 151
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 152
    sget-object v0, Lcom/microsoft/azure/storage/table/EdmType;->NULL:Lcom/microsoft/azure/storage/table/EdmType;

    iput-object v0, p0, Lcom/microsoft/azure/storage/table/EntityProperty;->edmType:Lcom/microsoft/azure/storage/table/EdmType;

    const/4 v0, 0x0

    .line 153
    iput-boolean v0, p0, Lcom/microsoft/azure/storage/table/EntityProperty;->isEncrypted:Z

    .line 154
    iput-boolean v0, p0, Lcom/microsoft/azure/storage/table/EntityProperty;->dateBackwardCompatibility:Z

    .line 155
    invoke-virtual {p0, p1}, Lcom/microsoft/azure/storage/table/EntityProperty;->setValue(Ljava/lang/Double;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Integer;)V
    .locals 1

    .line 161
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 162
    sget-object v0, Lcom/microsoft/azure/storage/table/EdmType;->NULL:Lcom/microsoft/azure/storage/table/EdmType;

    iput-object v0, p0, Lcom/microsoft/azure/storage/table/EntityProperty;->edmType:Lcom/microsoft/azure/storage/table/EdmType;

    const/4 v0, 0x0

    .line 163
    iput-boolean v0, p0, Lcom/microsoft/azure/storage/table/EntityProperty;->isEncrypted:Z

    .line 164
    iput-boolean v0, p0, Lcom/microsoft/azure/storage/table/EntityProperty;->dateBackwardCompatibility:Z

    .line 165
    invoke-virtual {p0, p1}, Lcom/microsoft/azure/storage/table/EntityProperty;->setValue(Ljava/lang/Integer;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Long;)V
    .locals 1

    .line 171
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 172
    sget-object v0, Lcom/microsoft/azure/storage/table/EdmType;->NULL:Lcom/microsoft/azure/storage/table/EdmType;

    iput-object v0, p0, Lcom/microsoft/azure/storage/table/EntityProperty;->edmType:Lcom/microsoft/azure/storage/table/EdmType;

    const/4 v0, 0x0

    .line 173
    iput-boolean v0, p0, Lcom/microsoft/azure/storage/table/EntityProperty;->isEncrypted:Z

    .line 174
    iput-boolean v0, p0, Lcom/microsoft/azure/storage/table/EntityProperty;->dateBackwardCompatibility:Z

    .line 175
    invoke-virtual {p0, p1}, Lcom/microsoft/azure/storage/table/EntityProperty;->setValue(Ljava/lang/Long;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;Ljava/lang/Class;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    sget-object v0, Lcom/microsoft/azure/storage/table/EdmType;->NULL:Lcom/microsoft/azure/storage/table/EdmType;

    iput-object v0, p0, Lcom/microsoft/azure/storage/table/EntityProperty;->edmType:Lcom/microsoft/azure/storage/table/EdmType;

    const/4 v0, 0x0

    .line 48
    iput-boolean v0, p0, Lcom/microsoft/azure/storage/table/EntityProperty;->isEncrypted:Z

    .line 49
    iput-boolean v0, p0, Lcom/microsoft/azure/storage/table/EntityProperty;->dateBackwardCompatibility:Z

    .line 50
    const-class v1, [B

    invoke-virtual {p2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 51
    check-cast p1, [B

    invoke-virtual {p0, p1}, Lcom/microsoft/azure/storage/table/EntityProperty;->setValue([B)V

    .line 52
    iput-object p2, p0, Lcom/microsoft/azure/storage/table/EntityProperty;->type:Ljava/lang/Class;

    goto/16 :goto_0

    .line 53
    :cond_0
    const-class v1, [Ljava/lang/Byte;

    invoke-virtual {p2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 54
    check-cast p1, [Ljava/lang/Byte;

    invoke-virtual {p0, p1}, Lcom/microsoft/azure/storage/table/EntityProperty;->setValue([Ljava/lang/Byte;)V

    .line 55
    iput-object p2, p0, Lcom/microsoft/azure/storage/table/EntityProperty;->type:Ljava/lang/Class;

    goto/16 :goto_0

    .line 56
    :cond_1
    const-class v1, Ljava/lang/String;

    invoke-virtual {p2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 57
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/microsoft/azure/storage/table/EntityProperty;->setValue(Ljava/lang/String;)V

    .line 58
    iput-object p2, p0, Lcom/microsoft/azure/storage/table/EntityProperty;->type:Ljava/lang/Class;

    goto/16 :goto_0

    .line 59
    :cond_2
    sget-object v1, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-virtual {p2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 60
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/microsoft/azure/storage/table/EntityProperty;->setValue(Z)V

    .line 61
    iput-object p2, p0, Lcom/microsoft/azure/storage/table/EntityProperty;->type:Ljava/lang/Class;

    goto/16 :goto_0

    .line 62
    :cond_3
    const-class v1, Ljava/lang/Boolean;

    invoke-virtual {p2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 63
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/microsoft/azure/storage/table/EntityProperty;->setValue(Ljava/lang/Boolean;)V

    .line 64
    iput-object p2, p0, Lcom/microsoft/azure/storage/table/EntityProperty;->type:Ljava/lang/Class;

    goto/16 :goto_0

    .line 65
    :cond_4
    sget-object v1, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-virtual {p2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 66
    check-cast p1, Ljava/lang/Double;

    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/microsoft/azure/storage/table/EntityProperty;->setValue(D)V

    .line 67
    iput-object p2, p0, Lcom/microsoft/azure/storage/table/EntityProperty;->type:Ljava/lang/Class;

    goto/16 :goto_0

    .line 68
    :cond_5
    const-class v1, Ljava/lang/Double;

    invoke-virtual {p2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 69
    check-cast p1, Ljava/lang/Double;

    invoke-virtual {p0, p1}, Lcom/microsoft/azure/storage/table/EntityProperty;->setValue(Ljava/lang/Double;)V

    .line 70
    iput-object p2, p0, Lcom/microsoft/azure/storage/table/EntityProperty;->type:Ljava/lang/Class;

    goto :goto_0

    .line 71
    :cond_6
    const-class v1, Ljava/util/UUID;

    invoke-virtual {p2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 72
    check-cast p1, Ljava/util/UUID;

    invoke-virtual {p0, p1}, Lcom/microsoft/azure/storage/table/EntityProperty;->setValue(Ljava/util/UUID;)V

    .line 73
    iput-object p2, p0, Lcom/microsoft/azure/storage/table/EntityProperty;->type:Ljava/lang/Class;

    goto :goto_0

    .line 74
    :cond_7
    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-virtual {p2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 75
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/microsoft/azure/storage/table/EntityProperty;->setValue(I)V

    .line 76
    iput-object p2, p0, Lcom/microsoft/azure/storage/table/EntityProperty;->type:Ljava/lang/Class;

    goto :goto_0

    .line 77
    :cond_8
    const-class v1, Ljava/lang/Integer;

    invoke-virtual {p2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 78
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/microsoft/azure/storage/table/EntityProperty;->setValue(Ljava/lang/Integer;)V

    .line 79
    iput-object p2, p0, Lcom/microsoft/azure/storage/table/EntityProperty;->type:Ljava/lang/Class;

    goto :goto_0

    .line 80
    :cond_9
    sget-object v1, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    invoke-virtual {p2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 81
    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/microsoft/azure/storage/table/EntityProperty;->setValue(J)V

    .line 82
    iput-object p2, p0, Lcom/microsoft/azure/storage/table/EntityProperty;->type:Ljava/lang/Class;

    goto :goto_0

    .line 83
    :cond_a
    const-class v1, Ljava/lang/Long;

    invoke-virtual {p2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 84
    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p0, p1}, Lcom/microsoft/azure/storage/table/EntityProperty;->setValue(Ljava/lang/Long;)V

    .line 85
    iput-object p2, p0, Lcom/microsoft/azure/storage/table/EntityProperty;->type:Ljava/lang/Class;

    goto :goto_0

    .line 86
    :cond_b
    const-class v1, Ljava/util/Date;

    invoke-virtual {p2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 87
    check-cast p1, Ljava/util/Date;

    invoke-virtual {p0, p1}, Lcom/microsoft/azure/storage/table/EntityProperty;->setValue(Ljava/util/Date;)V

    .line 88
    iput-object p2, p0, Lcom/microsoft/azure/storage/table/EntityProperty;->type:Ljava/lang/Class;

    :goto_0
    return-void

    .line 89
    :cond_c
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p2}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object p2

    aput-object p2, v1, v0

    const-string p2, "Type %s is not supported."

    invoke-static {p2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 176
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 177
    sget-object v0, Lcom/microsoft/azure/storage/table/EdmType;->NULL:Lcom/microsoft/azure/storage/table/EdmType;

    iput-object v0, p0, Lcom/microsoft/azure/storage/table/EntityProperty;->edmType:Lcom/microsoft/azure/storage/table/EdmType;

    const/4 v0, 0x0

    .line 178
    iput-boolean v0, p0, Lcom/microsoft/azure/storage/table/EntityProperty;->isEncrypted:Z

    .line 179
    iput-boolean v0, p0, Lcom/microsoft/azure/storage/table/EntityProperty;->dateBackwardCompatibility:Z

    .line 180
    invoke-virtual {p0, p1}, Lcom/microsoft/azure/storage/table/EntityProperty;->setValue(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/microsoft/azure/storage/table/EdmType;)V
    .locals 2

    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 91
    sget-object v0, Lcom/microsoft/azure/storage/table/EdmType;->NULL:Lcom/microsoft/azure/storage/table/EdmType;

    iput-object v0, p0, Lcom/microsoft/azure/storage/table/EntityProperty;->edmType:Lcom/microsoft/azure/storage/table/EdmType;

    const/4 v0, 0x0

    .line 92
    iput-boolean v0, p0, Lcom/microsoft/azure/storage/table/EntityProperty;->isEncrypted:Z

    .line 93
    iput-boolean v0, p0, Lcom/microsoft/azure/storage/table/EntityProperty;->dateBackwardCompatibility:Z

    .line 94
    iput-object p2, p0, Lcom/microsoft/azure/storage/table/EntityProperty;->edmType:Lcom/microsoft/azure/storage/table/EdmType;

    .line 95
    iput-object p1, p0, Lcom/microsoft/azure/storage/table/EntityProperty;->value:Ljava/lang/String;

    .line 96
    sget-object p1, Lcom/microsoft/azure/storage/table/EdmType;->STRING:Lcom/microsoft/azure/storage/table/EdmType;

    if-ne p2, p1, :cond_0

    .line 97
    const-class p1, Ljava/lang/String;

    iput-object p1, p0, Lcom/microsoft/azure/storage/table/EntityProperty;->type:Ljava/lang/Class;

    return-void

    .line 98
    :cond_0
    sget-object p1, Lcom/microsoft/azure/storage/table/EdmType;->BINARY:Lcom/microsoft/azure/storage/table/EdmType;

    if-ne p2, p1, :cond_1

    .line 99
    invoke-virtual {p0}, Lcom/microsoft/azure/storage/table/EntityProperty;->getValueAsByteArray()[B

    .line 100
    const-class p1, [Ljava/lang/Byte;

    iput-object p1, p0, Lcom/microsoft/azure/storage/table/EntityProperty;->type:Ljava/lang/Class;

    goto :goto_0

    .line 101
    :cond_1
    sget-object p1, Lcom/microsoft/azure/storage/table/EdmType;->BOOLEAN:Lcom/microsoft/azure/storage/table/EdmType;

    if-ne p2, p1, :cond_2

    .line 102
    invoke-virtual {p0}, Lcom/microsoft/azure/storage/table/EntityProperty;->getValueAsBoolean()Z

    .line 103
    const-class p1, Ljava/lang/Boolean;

    iput-object p1, p0, Lcom/microsoft/azure/storage/table/EntityProperty;->type:Ljava/lang/Class;

    goto :goto_0

    .line 104
    :cond_2
    sget-object p1, Lcom/microsoft/azure/storage/table/EdmType;->DOUBLE:Lcom/microsoft/azure/storage/table/EdmType;

    if-ne p2, p1, :cond_3

    .line 105
    invoke-virtual {p0}, Lcom/microsoft/azure/storage/table/EntityProperty;->getValueAsDouble()D

    .line 106
    const-class p1, Ljava/lang/Double;

    iput-object p1, p0, Lcom/microsoft/azure/storage/table/EntityProperty;->type:Ljava/lang/Class;

    goto :goto_0

    .line 107
    :cond_3
    sget-object p1, Lcom/microsoft/azure/storage/table/EdmType;->GUID:Lcom/microsoft/azure/storage/table/EdmType;

    if-ne p2, p1, :cond_4

    .line 108
    invoke-virtual {p0}, Lcom/microsoft/azure/storage/table/EntityProperty;->getValueAsUUID()Ljava/util/UUID;

    .line 109
    const-class p1, Ljava/util/UUID;

    iput-object p1, p0, Lcom/microsoft/azure/storage/table/EntityProperty;->type:Ljava/lang/Class;

    goto :goto_0

    .line 110
    :cond_4
    sget-object p1, Lcom/microsoft/azure/storage/table/EdmType;->INT32:Lcom/microsoft/azure/storage/table/EdmType;

    if-ne p2, p1, :cond_5

    .line 111
    invoke-virtual {p0}, Lcom/microsoft/azure/storage/table/EntityProperty;->getValueAsInteger()I

    .line 112
    const-class p1, Ljava/lang/Integer;

    iput-object p1, p0, Lcom/microsoft/azure/storage/table/EntityProperty;->type:Ljava/lang/Class;

    goto :goto_0

    .line 113
    :cond_5
    sget-object p1, Lcom/microsoft/azure/storage/table/EdmType;->INT64:Lcom/microsoft/azure/storage/table/EdmType;

    if-ne p2, p1, :cond_6

    .line 114
    invoke-virtual {p0}, Lcom/microsoft/azure/storage/table/EntityProperty;->getValueAsLong()J

    .line 115
    const-class p1, Ljava/lang/Long;

    iput-object p1, p0, Lcom/microsoft/azure/storage/table/EntityProperty;->type:Ljava/lang/Class;

    goto :goto_0

    .line 116
    :cond_6
    sget-object p1, Lcom/microsoft/azure/storage/table/EdmType;->DATE_TIME:Lcom/microsoft/azure/storage/table/EdmType;

    if-ne p2, p1, :cond_7

    .line 117
    invoke-virtual {p0}, Lcom/microsoft/azure/storage/table/EntityProperty;->getValueAsDate()Ljava/util/Date;

    .line 118
    const-class p1, Ljava/util/Date;

    iput-object p1, p0, Lcom/microsoft/azure/storage/table/EntityProperty;->type:Ljava/lang/Class;

    :goto_0
    return-void

    :cond_7
    if-nez p2, :cond_8

    .line 119
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "EdmType cannot be null."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 120
    :cond_8
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p2}, Lcom/microsoft/azure/storage/table/EdmType;->toString()Ljava/lang/String;

    move-result-object p2

    aput-object p2, v1, v0

    const-string p2, "Invalid value \'%s\' for EdmType."

    invoke-static {p2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Class;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    sget-object v0, Lcom/microsoft/azure/storage/table/EdmType;->NULL:Lcom/microsoft/azure/storage/table/EdmType;

    iput-object v0, p0, Lcom/microsoft/azure/storage/table/EntityProperty;->edmType:Lcom/microsoft/azure/storage/table/EdmType;

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Lcom/microsoft/azure/storage/table/EntityProperty;->isEncrypted:Z

    .line 4
    iput-boolean v0, p0, Lcom/microsoft/azure/storage/table/EntityProperty;->dateBackwardCompatibility:Z

    .line 5
    iput-object p2, p0, Lcom/microsoft/azure/storage/table/EntityProperty;->type:Ljava/lang/Class;

    .line 6
    iput-object p1, p0, Lcom/microsoft/azure/storage/table/EntityProperty;->value:Ljava/lang/String;

    .line 7
    const-class p1, [B

    invoke-virtual {p2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 8
    invoke-virtual {p0}, Lcom/microsoft/azure/storage/table/EntityProperty;->getValueAsByteArray()[B

    .line 9
    sget-object p1, Lcom/microsoft/azure/storage/table/EdmType;->BINARY:Lcom/microsoft/azure/storage/table/EdmType;

    iput-object p1, p0, Lcom/microsoft/azure/storage/table/EntityProperty;->edmType:Lcom/microsoft/azure/storage/table/EdmType;

    goto/16 :goto_0

    .line 10
    :cond_0
    const-class p1, [Ljava/lang/Byte;

    invoke-virtual {p2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 11
    invoke-virtual {p0}, Lcom/microsoft/azure/storage/table/EntityProperty;->getValueAsByteObjectArray()[Ljava/lang/Byte;

    .line 12
    sget-object p1, Lcom/microsoft/azure/storage/table/EdmType;->BINARY:Lcom/microsoft/azure/storage/table/EdmType;

    iput-object p1, p0, Lcom/microsoft/azure/storage/table/EntityProperty;->edmType:Lcom/microsoft/azure/storage/table/EdmType;

    goto/16 :goto_0

    .line 13
    :cond_1
    const-class p1, Ljava/lang/String;

    invoke-virtual {p2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 14
    sget-object p1, Lcom/microsoft/azure/storage/table/EdmType;->STRING:Lcom/microsoft/azure/storage/table/EdmType;

    iput-object p1, p0, Lcom/microsoft/azure/storage/table/EntityProperty;->edmType:Lcom/microsoft/azure/storage/table/EdmType;

    goto/16 :goto_0

    .line 15
    :cond_2
    sget-object p1, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-virtual {p2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 16
    invoke-virtual {p0}, Lcom/microsoft/azure/storage/table/EntityProperty;->getValueAsBoolean()Z

    .line 17
    sget-object p1, Lcom/microsoft/azure/storage/table/EdmType;->BOOLEAN:Lcom/microsoft/azure/storage/table/EdmType;

    iput-object p1, p0, Lcom/microsoft/azure/storage/table/EntityProperty;->edmType:Lcom/microsoft/azure/storage/table/EdmType;

    goto/16 :goto_0

    .line 18
    :cond_3
    const-class p1, Ljava/lang/Boolean;

    invoke-virtual {p2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 19
    invoke-virtual {p0}, Lcom/microsoft/azure/storage/table/EntityProperty;->getValueAsBooleanObject()Ljava/lang/Boolean;

    .line 20
    sget-object p1, Lcom/microsoft/azure/storage/table/EdmType;->BOOLEAN:Lcom/microsoft/azure/storage/table/EdmType;

    iput-object p1, p0, Lcom/microsoft/azure/storage/table/EntityProperty;->edmType:Lcom/microsoft/azure/storage/table/EdmType;

    goto/16 :goto_0

    .line 21
    :cond_4
    const-class p1, Ljava/util/Date;

    invoke-virtual {p2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 22
    invoke-virtual {p0}, Lcom/microsoft/azure/storage/table/EntityProperty;->getValueAsDate()Ljava/util/Date;

    .line 23
    sget-object p1, Lcom/microsoft/azure/storage/table/EdmType;->DATE_TIME:Lcom/microsoft/azure/storage/table/EdmType;

    iput-object p1, p0, Lcom/microsoft/azure/storage/table/EntityProperty;->edmType:Lcom/microsoft/azure/storage/table/EdmType;

    goto/16 :goto_0

    .line 24
    :cond_5
    sget-object p1, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-virtual {p2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6

    .line 25
    invoke-virtual {p0}, Lcom/microsoft/azure/storage/table/EntityProperty;->getValueAsDouble()D

    .line 26
    sget-object p1, Lcom/microsoft/azure/storage/table/EdmType;->DOUBLE:Lcom/microsoft/azure/storage/table/EdmType;

    iput-object p1, p0, Lcom/microsoft/azure/storage/table/EntityProperty;->edmType:Lcom/microsoft/azure/storage/table/EdmType;

    goto :goto_0

    .line 27
    :cond_6
    const-class p1, Ljava/lang/Double;

    invoke-virtual {p2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_7

    .line 28
    invoke-virtual {p0}, Lcom/microsoft/azure/storage/table/EntityProperty;->getValueAsDoubleObject()Ljava/lang/Double;

    .line 29
    sget-object p1, Lcom/microsoft/azure/storage/table/EdmType;->DOUBLE:Lcom/microsoft/azure/storage/table/EdmType;

    iput-object p1, p0, Lcom/microsoft/azure/storage/table/EntityProperty;->edmType:Lcom/microsoft/azure/storage/table/EdmType;

    goto :goto_0

    .line 30
    :cond_7
    const-class p1, Ljava/util/UUID;

    invoke-virtual {p2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_8

    .line 31
    invoke-virtual {p0}, Lcom/microsoft/azure/storage/table/EntityProperty;->getValueAsUUID()Ljava/util/UUID;

    .line 32
    sget-object p1, Lcom/microsoft/azure/storage/table/EdmType;->GUID:Lcom/microsoft/azure/storage/table/EdmType;

    iput-object p1, p0, Lcom/microsoft/azure/storage/table/EntityProperty;->edmType:Lcom/microsoft/azure/storage/table/EdmType;

    goto :goto_0

    .line 33
    :cond_8
    sget-object p1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-virtual {p2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_9

    .line 34
    invoke-virtual {p0}, Lcom/microsoft/azure/storage/table/EntityProperty;->getValueAsInteger()I

    .line 35
    sget-object p1, Lcom/microsoft/azure/storage/table/EdmType;->INT32:Lcom/microsoft/azure/storage/table/EdmType;

    iput-object p1, p0, Lcom/microsoft/azure/storage/table/EntityProperty;->edmType:Lcom/microsoft/azure/storage/table/EdmType;

    goto :goto_0

    .line 36
    :cond_9
    const-class p1, Ljava/lang/Integer;

    invoke-virtual {p2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_a

    .line 37
    invoke-virtual {p0}, Lcom/microsoft/azure/storage/table/EntityProperty;->getValueAsIntegerObject()Ljava/lang/Integer;

    .line 38
    sget-object p1, Lcom/microsoft/azure/storage/table/EdmType;->INT32:Lcom/microsoft/azure/storage/table/EdmType;

    iput-object p1, p0, Lcom/microsoft/azure/storage/table/EntityProperty;->edmType:Lcom/microsoft/azure/storage/table/EdmType;

    goto :goto_0

    .line 39
    :cond_a
    sget-object p1, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    invoke-virtual {p2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_b

    .line 40
    invoke-virtual {p0}, Lcom/microsoft/azure/storage/table/EntityProperty;->getValueAsLong()J

    .line 41
    sget-object p1, Lcom/microsoft/azure/storage/table/EdmType;->INT64:Lcom/microsoft/azure/storage/table/EdmType;

    iput-object p1, p0, Lcom/microsoft/azure/storage/table/EntityProperty;->edmType:Lcom/microsoft/azure/storage/table/EdmType;

    goto :goto_0

    .line 42
    :cond_b
    const-class p1, Ljava/lang/Long;

    invoke-virtual {p2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_c

    .line 43
    invoke-virtual {p0}, Lcom/microsoft/azure/storage/table/EntityProperty;->getValueAsLongObject()Ljava/lang/Long;

    .line 44
    sget-object p1, Lcom/microsoft/azure/storage/table/EdmType;->INT64:Lcom/microsoft/azure/storage/table/EdmType;

    iput-object p1, p0, Lcom/microsoft/azure/storage/table/EntityProperty;->edmType:Lcom/microsoft/azure/storage/table/EdmType;

    :goto_0
    return-void

    .line 45
    :cond_c
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p2}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object p2

    aput-object p2, v1, v0

    const-string p2, "Type %s is not supported."

    invoke-static {p2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public constructor <init>(Ljava/util/Date;)V
    .locals 1

    .line 141
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 142
    sget-object v0, Lcom/microsoft/azure/storage/table/EdmType;->NULL:Lcom/microsoft/azure/storage/table/EdmType;

    iput-object v0, p0, Lcom/microsoft/azure/storage/table/EntityProperty;->edmType:Lcom/microsoft/azure/storage/table/EdmType;

    const/4 v0, 0x0

    .line 143
    iput-boolean v0, p0, Lcom/microsoft/azure/storage/table/EntityProperty;->isEncrypted:Z

    .line 144
    iput-boolean v0, p0, Lcom/microsoft/azure/storage/table/EntityProperty;->dateBackwardCompatibility:Z

    .line 145
    invoke-virtual {p0, p1}, Lcom/microsoft/azure/storage/table/EntityProperty;->setValue(Ljava/util/Date;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/UUID;)V
    .locals 1

    .line 181
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 182
    sget-object v0, Lcom/microsoft/azure/storage/table/EdmType;->NULL:Lcom/microsoft/azure/storage/table/EdmType;

    iput-object v0, p0, Lcom/microsoft/azure/storage/table/EntityProperty;->edmType:Lcom/microsoft/azure/storage/table/EdmType;

    const/4 v0, 0x0

    .line 183
    iput-boolean v0, p0, Lcom/microsoft/azure/storage/table/EntityProperty;->isEncrypted:Z

    .line 184
    iput-boolean v0, p0, Lcom/microsoft/azure/storage/table/EntityProperty;->dateBackwardCompatibility:Z

    .line 185
    invoke-virtual {p0, p1}, Lcom/microsoft/azure/storage/table/EntityProperty;->setValue(Ljava/util/UUID;)V

    return-void
.end method

.method public constructor <init>(Z)V
    .locals 1

    .line 121
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 122
    sget-object v0, Lcom/microsoft/azure/storage/table/EdmType;->NULL:Lcom/microsoft/azure/storage/table/EdmType;

    iput-object v0, p0, Lcom/microsoft/azure/storage/table/EntityProperty;->edmType:Lcom/microsoft/azure/storage/table/EdmType;

    const/4 v0, 0x0

    .line 123
    iput-boolean v0, p0, Lcom/microsoft/azure/storage/table/EntityProperty;->isEncrypted:Z

    .line 124
    iput-boolean v0, p0, Lcom/microsoft/azure/storage/table/EntityProperty;->dateBackwardCompatibility:Z

    .line 125
    invoke-virtual {p0, p1}, Lcom/microsoft/azure/storage/table/EntityProperty;->setValue(Z)V

    return-void
.end method

.method public constructor <init>([B)V
    .locals 1

    .line 131
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 132
    sget-object v0, Lcom/microsoft/azure/storage/table/EdmType;->NULL:Lcom/microsoft/azure/storage/table/EdmType;

    iput-object v0, p0, Lcom/microsoft/azure/storage/table/EntityProperty;->edmType:Lcom/microsoft/azure/storage/table/EdmType;

    const/4 v0, 0x0

    .line 133
    iput-boolean v0, p0, Lcom/microsoft/azure/storage/table/EntityProperty;->isEncrypted:Z

    .line 134
    iput-boolean v0, p0, Lcom/microsoft/azure/storage/table/EntityProperty;->dateBackwardCompatibility:Z

    .line 135
    invoke-virtual {p0, p1}, Lcom/microsoft/azure/storage/table/EntityProperty;->setValue([B)V

    return-void
.end method

.method public constructor <init>([Ljava/lang/Byte;)V
    .locals 1

    .line 136
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 137
    sget-object v0, Lcom/microsoft/azure/storage/table/EdmType;->NULL:Lcom/microsoft/azure/storage/table/EdmType;

    iput-object v0, p0, Lcom/microsoft/azure/storage/table/EntityProperty;->edmType:Lcom/microsoft/azure/storage/table/EdmType;

    const/4 v0, 0x0

    .line 138
    iput-boolean v0, p0, Lcom/microsoft/azure/storage/table/EntityProperty;->isEncrypted:Z

    .line 139
    iput-boolean v0, p0, Lcom/microsoft/azure/storage/table/EntityProperty;->dateBackwardCompatibility:Z

    .line 140
    invoke-virtual {p0, p1}, Lcom/microsoft/azure/storage/table/EntityProperty;->setValue([Ljava/lang/Byte;)V

    return-void
.end method


# virtual methods
.method public getEdmType()Lcom/microsoft/azure/storage/table/EdmType;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/microsoft/azure/storage/table/EntityProperty;->edmType:Lcom/microsoft/azure/storage/table/EdmType;

    return-object v0
.end method

.method public getIsNull()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/microsoft/azure/storage/table/EntityProperty;->value:Ljava/lang/String;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getType()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/microsoft/azure/storage/table/EntityProperty;->type:Ljava/lang/Class;

    return-object v0
.end method

.method public getValueAsBoolean()Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/microsoft/azure/storage/table/EntityProperty;->getIsNull()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/microsoft/azure/storage/table/EntityProperty;->value:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    return v0

    .line 3
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "EntityProperty cannot be set to null for primitive value types."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getValueAsBooleanObject()Ljava/lang/Boolean;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/microsoft/azure/storage/table/EntityProperty;->getIsNull()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/microsoft/azure/storage/table/EntityProperty;->value:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public getValueAsByteArray()[B
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/microsoft/azure/storage/table/EntityProperty;->getIsNull()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/microsoft/azure/storage/table/EntityProperty;->value:Ljava/lang/String;

    invoke-static {v0}, Lcom/microsoft/azure/storage/core/Base64;->decode(Ljava/lang/String;)[B

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public getValueAsByteObjectArray()[Ljava/lang/Byte;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/microsoft/azure/storage/table/EntityProperty;->getIsNull()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/microsoft/azure/storage/table/EntityProperty;->value:Ljava/lang/String;

    invoke-static {v0}, Lcom/microsoft/azure/storage/core/Base64;->decodeAsByteObjectArray(Ljava/lang/String;)[Ljava/lang/Byte;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public getValueAsDate()Ljava/util/Date;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/microsoft/azure/storage/table/EntityProperty;->getIsNull()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/microsoft/azure/storage/table/EntityProperty;->value:Ljava/lang/String;

    iget-boolean v1, p0, Lcom/microsoft/azure/storage/table/EntityProperty;->dateBackwardCompatibility:Z

    invoke-static {v0, v1}, Lcom/microsoft/azure/storage/core/Utility;->parseDate(Ljava/lang/String;Z)Ljava/util/Date;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public getValueAsDouble()D
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/microsoft/azure/storage/table/EntityProperty;->getIsNull()Z

    move-result v0

    if-nez v0, :cond_5

    .line 2
    iget-object v0, p0, Lcom/microsoft/azure/storage/table/EntityProperty;->value:Ljava/lang/String;

    const-string v1, "Infinity"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/microsoft/azure/storage/table/EntityProperty;->value:Ljava/lang/String;

    const-string v1, "INF"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/microsoft/azure/storage/table/EntityProperty;->value:Ljava/lang/String;

    const-string v1, "-Infinity"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/microsoft/azure/storage/table/EntityProperty;->value:Ljava/lang/String;

    const-string v1, "-INF"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 4
    :cond_1
    iget-object v0, p0, Lcom/microsoft/azure/storage/table/EntityProperty;->value:Ljava/lang/String;

    const-string v1, "NaN"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-wide/high16 v0, 0x7ff8000000000000L    # Double.NaN

    return-wide v0

    .line 5
    :cond_2
    iget-object v0, p0, Lcom/microsoft/azure/storage/table/EntityProperty;->value:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    return-wide v0

    :cond_3
    :goto_0
    const-wide/high16 v0, -0x10000000000000L    # Double.NEGATIVE_INFINITY

    return-wide v0

    :cond_4
    :goto_1
    const-wide/high16 v0, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    return-wide v0

    .line 6
    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "EntityProperty cannot be set to null for primitive value types."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getValueAsDoubleObject()Ljava/lang/Double;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/microsoft/azure/storage/table/EntityProperty;->getIsNull()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/microsoft/azure/storage/table/EntityProperty;->value:Ljava/lang/String;

    const-string v1, "Infinity"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/microsoft/azure/storage/table/EntityProperty;->value:Ljava/lang/String;

    const-string v1, "INF"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_1

    .line 3
    :cond_1
    iget-object v0, p0, Lcom/microsoft/azure/storage/table/EntityProperty;->value:Ljava/lang/String;

    const-string v1, "-Infinity"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/microsoft/azure/storage/table/EntityProperty;->value:Ljava/lang/String;

    const-string v1, "-INF"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_0

    .line 4
    :cond_2
    iget-object v0, p0, Lcom/microsoft/azure/storage/table/EntityProperty;->value:Ljava/lang/String;

    const-string v1, "NaN"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-wide/high16 v0, 0x7ff8000000000000L    # Double.NaN

    .line 5
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    return-object v0

    .line 6
    :cond_3
    iget-object v0, p0, Lcom/microsoft/azure/storage/table/EntityProperty;->value:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    return-object v0

    :cond_4
    :goto_0
    const-wide/high16 v0, -0x10000000000000L    # Double.NEGATIVE_INFINITY

    .line 7
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    return-object v0

    :cond_5
    :goto_1
    const-wide/high16 v0, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    .line 8
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    return-object v0
.end method

.method public getValueAsInteger()I
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/microsoft/azure/storage/table/EntityProperty;->getIsNull()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/microsoft/azure/storage/table/EntityProperty;->value:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    return v0

    .line 3
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "EntityProperty cannot be set to null for primitive value types."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getValueAsIntegerObject()Ljava/lang/Integer;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/microsoft/azure/storage/table/EntityProperty;->getIsNull()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/microsoft/azure/storage/table/EntityProperty;->value:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public getValueAsLong()J
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/microsoft/azure/storage/table/EntityProperty;->getIsNull()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/microsoft/azure/storage/table/EntityProperty;->value:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0

    .line 3
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "EntityProperty cannot be set to null for primitive value types."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getValueAsLongObject()Ljava/lang/Long;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/microsoft/azure/storage/table/EntityProperty;->getIsNull()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/microsoft/azure/storage/table/EntityProperty;->value:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public getValueAsString()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/microsoft/azure/storage/table/EntityProperty;->getIsNull()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/microsoft/azure/storage/table/EntityProperty;->value:Ljava/lang/String;

    :goto_0
    return-object v0
.end method

.method public getValueAsUUID()Ljava/util/UUID;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/microsoft/azure/storage/table/EntityProperty;->getIsNull()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/microsoft/azure/storage/table/EntityProperty;->value:Ljava/lang/String;

    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public isEncrypted()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/microsoft/azure/storage/table/EntityProperty;->isEncrypted:Z

    return v0
.end method

.method public setDateBackwardCompatibility(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/microsoft/azure/storage/table/EntityProperty;->dateBackwardCompatibility:Z

    return-void
.end method

.method public setIsEncrypted(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/microsoft/azure/storage/table/EntityProperty;->isEncrypted:Z

    return-void
.end method

.method public final declared-synchronized setValue(D)V
    .locals 1

    monitor-enter p0

    .line 22
    :try_start_0
    sget-object v0, Lcom/microsoft/azure/storage/table/EdmType;->DOUBLE:Lcom/microsoft/azure/storage/table/EdmType;

    iput-object v0, p0, Lcom/microsoft/azure/storage/table/EntityProperty;->edmType:Lcom/microsoft/azure/storage/table/EdmType;

    .line 23
    sget-object v0, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    iput-object v0, p0, Lcom/microsoft/azure/storage/table/EntityProperty;->type:Ljava/lang/Class;

    .line 24
    invoke-static {p1, p2}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/microsoft/azure/storage/table/EntityProperty;->value:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 25
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized setValue(I)V
    .locals 1

    monitor-enter p0

    .line 30
    :try_start_0
    sget-object v0, Lcom/microsoft/azure/storage/table/EdmType;->INT32:Lcom/microsoft/azure/storage/table/EdmType;

    iput-object v0, p0, Lcom/microsoft/azure/storage/table/EntityProperty;->edmType:Lcom/microsoft/azure/storage/table/EdmType;

    .line 31
    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    iput-object v0, p0, Lcom/microsoft/azure/storage/table/EntityProperty;->type:Ljava/lang/Class;

    .line 32
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/microsoft/azure/storage/table/EntityProperty;->value:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 33
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized setValue(J)V
    .locals 1

    monitor-enter p0

    .line 38
    :try_start_0
    sget-object v0, Lcom/microsoft/azure/storage/table/EdmType;->INT64:Lcom/microsoft/azure/storage/table/EdmType;

    iput-object v0, p0, Lcom/microsoft/azure/storage/table/EntityProperty;->edmType:Lcom/microsoft/azure/storage/table/EdmType;

    .line 39
    sget-object v0, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    iput-object v0, p0, Lcom/microsoft/azure/storage/table/EntityProperty;->type:Ljava/lang/Class;

    .line 40
    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/microsoft/azure/storage/table/EntityProperty;->value:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 41
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized setValue(Ljava/lang/Boolean;)V
    .locals 1

    monitor-enter p0

    .line 5
    :try_start_0
    sget-object v0, Lcom/microsoft/azure/storage/table/EdmType;->BOOLEAN:Lcom/microsoft/azure/storage/table/EdmType;

    iput-object v0, p0, Lcom/microsoft/azure/storage/table/EntityProperty;->edmType:Lcom/microsoft/azure/storage/table/EdmType;

    .line 6
    const-class v0, Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/microsoft/azure/storage/table/EntityProperty;->type:Ljava/lang/Class;

    if-nez p1, :cond_0

    const/4 p1, 0x0

    .line 7
    iput-object p1, p0, Lcom/microsoft/azure/storage/table/EntityProperty;->value:Ljava/lang/String;

    goto :goto_1

    .line 8
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_1

    const-string p1, "true"

    goto :goto_0

    :cond_1
    const-string p1, "false"

    :goto_0
    iput-object p1, p0, Lcom/microsoft/azure/storage/table/EntityProperty;->value:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9
    :goto_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized setValue(Ljava/lang/Double;)V
    .locals 2

    monitor-enter p0

    .line 26
    :try_start_0
    sget-object v0, Lcom/microsoft/azure/storage/table/EdmType;->DOUBLE:Lcom/microsoft/azure/storage/table/EdmType;

    iput-object v0, p0, Lcom/microsoft/azure/storage/table/EntityProperty;->edmType:Lcom/microsoft/azure/storage/table/EdmType;

    .line 27
    const-class v0, Ljava/lang/Double;

    iput-object v0, p0, Lcom/microsoft/azure/storage/table/EntityProperty;->type:Ljava/lang/Class;

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 28
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object p1

    :goto_0
    iput-object p1, p0, Lcom/microsoft/azure/storage/table/EntityProperty;->value:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 29
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized setValue(Ljava/lang/Integer;)V
    .locals 1

    monitor-enter p0

    .line 34
    :try_start_0
    sget-object v0, Lcom/microsoft/azure/storage/table/EdmType;->INT32:Lcom/microsoft/azure/storage/table/EdmType;

    iput-object v0, p0, Lcom/microsoft/azure/storage/table/EntityProperty;->edmType:Lcom/microsoft/azure/storage/table/EdmType;

    .line 35
    const-class v0, Ljava/lang/Integer;

    iput-object v0, p0, Lcom/microsoft/azure/storage/table/EntityProperty;->type:Ljava/lang/Class;

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 36
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    :goto_0
    iput-object p1, p0, Lcom/microsoft/azure/storage/table/EntityProperty;->value:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 37
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized setValue(Ljava/lang/Long;)V
    .locals 2

    monitor-enter p0

    .line 42
    :try_start_0
    sget-object v0, Lcom/microsoft/azure/storage/table/EdmType;->INT64:Lcom/microsoft/azure/storage/table/EdmType;

    iput-object v0, p0, Lcom/microsoft/azure/storage/table/EntityProperty;->edmType:Lcom/microsoft/azure/storage/table/EdmType;

    .line 43
    const-class v0, Ljava/lang/Long;

    iput-object v0, p0, Lcom/microsoft/azure/storage/table/EntityProperty;->type:Ljava/lang/Class;

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 44
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p1

    :goto_0
    iput-object p1, p0, Lcom/microsoft/azure/storage/table/EntityProperty;->value:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 45
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized setValue(Ljava/lang/String;)V
    .locals 1

    monitor-enter p0

    .line 46
    :try_start_0
    sget-object v0, Lcom/microsoft/azure/storage/table/EdmType;->STRING:Lcom/microsoft/azure/storage/table/EdmType;

    iput-object v0, p0, Lcom/microsoft/azure/storage/table/EntityProperty;->edmType:Lcom/microsoft/azure/storage/table/EdmType;

    .line 47
    const-class v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/microsoft/azure/storage/table/EntityProperty;->type:Ljava/lang/Class;

    .line 48
    iput-object p1, p0, Lcom/microsoft/azure/storage/table/EntityProperty;->value:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 49
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized setValue(Ljava/util/Date;)V
    .locals 1

    monitor-enter p0

    .line 18
    :try_start_0
    sget-object v0, Lcom/microsoft/azure/storage/table/EdmType;->DATE_TIME:Lcom/microsoft/azure/storage/table/EdmType;

    iput-object v0, p0, Lcom/microsoft/azure/storage/table/EntityProperty;->edmType:Lcom/microsoft/azure/storage/table/EdmType;

    .line 19
    const-class v0, Ljava/util/Date;

    iput-object v0, p0, Lcom/microsoft/azure/storage/table/EntityProperty;->type:Ljava/lang/Class;

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 20
    :cond_0
    invoke-static {p1}, Lcom/microsoft/azure/storage/core/Utility;->getJavaISO8601Time(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p1

    :goto_0
    iput-object p1, p0, Lcom/microsoft/azure/storage/table/EntityProperty;->value:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 21
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized setValue(Ljava/util/UUID;)V
    .locals 1

    monitor-enter p0

    .line 50
    :try_start_0
    sget-object v0, Lcom/microsoft/azure/storage/table/EdmType;->GUID:Lcom/microsoft/azure/storage/table/EdmType;

    iput-object v0, p0, Lcom/microsoft/azure/storage/table/EntityProperty;->edmType:Lcom/microsoft/azure/storage/table/EdmType;

    .line 51
    const-class v0, Ljava/util/UUID;

    iput-object v0, p0, Lcom/microsoft/azure/storage/table/EntityProperty;->type:Ljava/lang/Class;

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 52
    :cond_0
    invoke-virtual {p1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_0
    iput-object p1, p0, Lcom/microsoft/azure/storage/table/EntityProperty;->value:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 53
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized setValue(Z)V
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    sget-object v0, Lcom/microsoft/azure/storage/table/EdmType;->BOOLEAN:Lcom/microsoft/azure/storage/table/EdmType;

    iput-object v0, p0, Lcom/microsoft/azure/storage/table/EntityProperty;->edmType:Lcom/microsoft/azure/storage/table/EdmType;

    .line 2
    sget-object v0, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    iput-object v0, p0, Lcom/microsoft/azure/storage/table/EntityProperty;->type:Ljava/lang/Class;

    if-eqz p1, :cond_0

    const-string p1, "true"

    goto :goto_0

    :cond_0
    const-string p1, "false"

    .line 3
    :goto_0
    iput-object p1, p0, Lcom/microsoft/azure/storage/table/EntityProperty;->value:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized setValue([B)V
    .locals 1

    monitor-enter p0

    .line 10
    :try_start_0
    sget-object v0, Lcom/microsoft/azure/storage/table/EdmType;->BINARY:Lcom/microsoft/azure/storage/table/EdmType;

    iput-object v0, p0, Lcom/microsoft/azure/storage/table/EntityProperty;->edmType:Lcom/microsoft/azure/storage/table/EdmType;

    .line 11
    const-class v0, [B

    iput-object v0, p0, Lcom/microsoft/azure/storage/table/EntityProperty;->type:Ljava/lang/Class;

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 12
    :cond_0
    invoke-static {p1}, Lcom/microsoft/azure/storage/core/Base64;->encode([B)Ljava/lang/String;

    move-result-object p1

    :goto_0
    iput-object p1, p0, Lcom/microsoft/azure/storage/table/EntityProperty;->value:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 13
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized setValue([Ljava/lang/Byte;)V
    .locals 1

    monitor-enter p0

    .line 14
    :try_start_0
    sget-object v0, Lcom/microsoft/azure/storage/table/EdmType;->BINARY:Lcom/microsoft/azure/storage/table/EdmType;

    iput-object v0, p0, Lcom/microsoft/azure/storage/table/EntityProperty;->edmType:Lcom/microsoft/azure/storage/table/EdmType;

    .line 15
    const-class v0, [Ljava/lang/Byte;

    iput-object v0, p0, Lcom/microsoft/azure/storage/table/EntityProperty;->type:Ljava/lang/Class;

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 16
    :cond_0
    invoke-static {p1}, Lcom/microsoft/azure/storage/core/Base64;->encode([Ljava/lang/Byte;)Ljava/lang/String;

    move-result-object p1

    :goto_0
    iput-object p1, p0, Lcom/microsoft/azure/storage/table/EntityProperty;->value:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 17
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
