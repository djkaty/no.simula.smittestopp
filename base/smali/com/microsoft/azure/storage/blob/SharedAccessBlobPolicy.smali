.class public final Lcom/microsoft/azure/storage/blob/SharedAccessBlobPolicy;
.super Lcom/microsoft/azure/storage/SharedAccessPolicy;
.source "SourceFile"


# instance fields
.field public permissions:Ljava/util/EnumSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/EnumSet<",
            "Lcom/microsoft/azure/storage/blob/SharedAccessBlobPermissions;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/microsoft/azure/storage/SharedAccessPolicy;-><init>()V

    return-void
.end method


# virtual methods
.method public getPermissions()Ljava/util/EnumSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/EnumSet<",
            "Lcom/microsoft/azure/storage/blob/SharedAccessBlobPermissions;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/microsoft/azure/storage/blob/SharedAccessBlobPolicy;->permissions:Ljava/util/EnumSet;

    return-object v0
.end method

.method public permissionsToString()Ljava/lang/String;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/microsoft/azure/storage/blob/SharedAccessBlobPolicy;->permissions:Ljava/util/EnumSet;

    if-nez v0, :cond_0

    const-string v0, ""

    return-object v0

    .line 2
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 3
    iget-object v1, p0, Lcom/microsoft/azure/storage/blob/SharedAccessBlobPolicy;->permissions:Ljava/util/EnumSet;

    sget-object v2, Lcom/microsoft/azure/storage/blob/SharedAccessBlobPermissions;->READ:Lcom/microsoft/azure/storage/blob/SharedAccessBlobPermissions;

    invoke-virtual {v1, v2}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "r"

    .line 4
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5
    :cond_1
    iget-object v1, p0, Lcom/microsoft/azure/storage/blob/SharedAccessBlobPolicy;->permissions:Ljava/util/EnumSet;

    sget-object v2, Lcom/microsoft/azure/storage/blob/SharedAccessBlobPermissions;->ADD:Lcom/microsoft/azure/storage/blob/SharedAccessBlobPermissions;

    invoke-virtual {v1, v2}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "a"

    .line 6
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7
    :cond_2
    iget-object v1, p0, Lcom/microsoft/azure/storage/blob/SharedAccessBlobPolicy;->permissions:Ljava/util/EnumSet;

    sget-object v2, Lcom/microsoft/azure/storage/blob/SharedAccessBlobPermissions;->CREATE:Lcom/microsoft/azure/storage/blob/SharedAccessBlobPermissions;

    invoke-virtual {v1, v2}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v1, "c"

    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    :cond_3
    iget-object v1, p0, Lcom/microsoft/azure/storage/blob/SharedAccessBlobPolicy;->permissions:Ljava/util/EnumSet;

    sget-object v2, Lcom/microsoft/azure/storage/blob/SharedAccessBlobPermissions;->WRITE:Lcom/microsoft/azure/storage/blob/SharedAccessBlobPermissions;

    invoke-virtual {v1, v2}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const-string v1, "w"

    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    :cond_4
    iget-object v1, p0, Lcom/microsoft/azure/storage/blob/SharedAccessBlobPolicy;->permissions:Ljava/util/EnumSet;

    sget-object v2, Lcom/microsoft/azure/storage/blob/SharedAccessBlobPermissions;->DELETE:Lcom/microsoft/azure/storage/blob/SharedAccessBlobPermissions;

    invoke-virtual {v1, v2}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    const-string v1, "d"

    .line 12
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    :cond_5
    iget-object v1, p0, Lcom/microsoft/azure/storage/blob/SharedAccessBlobPolicy;->permissions:Ljava/util/EnumSet;

    sget-object v2, Lcom/microsoft/azure/storage/blob/SharedAccessBlobPermissions;->LIST:Lcom/microsoft/azure/storage/blob/SharedAccessBlobPermissions;

    invoke-virtual {v1, v2}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    const-string v1, "l"

    .line 14
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    :cond_6
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public setPermissions(Ljava/util/EnumSet;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/EnumSet<",
            "Lcom/microsoft/azure/storage/blob/SharedAccessBlobPermissions;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/microsoft/azure/storage/blob/SharedAccessBlobPolicy;->permissions:Ljava/util/EnumSet;

    return-void
.end method

.method public setPermissionsFromString(Ljava/lang/String;)V
    .locals 5

    .line 1
    const-class v0, Lcom/microsoft/azure/storage/blob/SharedAccessBlobPermissions;

    invoke-static {v0}, Ljava/util/EnumSet;->noneOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v0

    .line 2
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object p1

    array-length v1, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_6

    aget-char v3, p1, v2

    const/16 v4, 0x61

    if-eq v3, v4, :cond_5

    const/16 v4, 0x6c

    if-eq v3, v4, :cond_4

    const/16 v4, 0x72

    if-eq v3, v4, :cond_3

    const/16 v4, 0x77

    if-eq v3, v4, :cond_2

    const/16 v4, 0x63

    if-eq v3, v4, :cond_1

    const/16 v4, 0x64

    if-ne v3, v4, :cond_0

    .line 3
    sget-object v3, Lcom/microsoft/azure/storage/blob/SharedAccessBlobPermissions;->DELETE:Lcom/microsoft/azure/storage/blob/SharedAccessBlobPermissions;

    invoke-virtual {v0, v3}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 4
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "value"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 5
    :cond_1
    sget-object v3, Lcom/microsoft/azure/storage/blob/SharedAccessBlobPermissions;->CREATE:Lcom/microsoft/azure/storage/blob/SharedAccessBlobPermissions;

    invoke-virtual {v0, v3}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 6
    :cond_2
    sget-object v3, Lcom/microsoft/azure/storage/blob/SharedAccessBlobPermissions;->WRITE:Lcom/microsoft/azure/storage/blob/SharedAccessBlobPermissions;

    invoke-virtual {v0, v3}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 7
    :cond_3
    sget-object v3, Lcom/microsoft/azure/storage/blob/SharedAccessBlobPermissions;->READ:Lcom/microsoft/azure/storage/blob/SharedAccessBlobPermissions;

    invoke-virtual {v0, v3}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 8
    :cond_4
    sget-object v3, Lcom/microsoft/azure/storage/blob/SharedAccessBlobPermissions;->LIST:Lcom/microsoft/azure/storage/blob/SharedAccessBlobPermissions;

    invoke-virtual {v0, v3}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 9
    :cond_5
    sget-object v3, Lcom/microsoft/azure/storage/blob/SharedAccessBlobPermissions;->ADD:Lcom/microsoft/azure/storage/blob/SharedAccessBlobPermissions;

    invoke-virtual {v0, v3}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 10
    :cond_6
    iput-object v0, p0, Lcom/microsoft/azure/storage/blob/SharedAccessBlobPolicy;->permissions:Ljava/util/EnumSet;

    return-void
.end method
