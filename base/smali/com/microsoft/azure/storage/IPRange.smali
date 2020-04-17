.class public final Lcom/microsoft/azure/storage/IPRange;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public ipMax:Ljava/lang/String;

.field public ipMin:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "ip"

    .line 2
    invoke-static {v0, p1}, Lcom/microsoft/azure/storage/core/Utility;->assertNotNull(Ljava/lang/String;Ljava/lang/Object;)V

    .line 3
    invoke-static {p1}, Lcom/microsoft/azure/storage/IPRange;->validateIPAddress(Ljava/lang/String;)V

    .line 4
    iput-object p1, p0, Lcom/microsoft/azure/storage/IPRange;->ipMin:Ljava/lang/String;

    .line 5
    iput-object p1, p0, Lcom/microsoft/azure/storage/IPRange;->ipMax:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "mininimumIP"

    .line 7
    invoke-static {v0, p1}, Lcom/microsoft/azure/storage/core/Utility;->assertNotNull(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "maximumIP"

    .line 8
    invoke-static {v0, p2}, Lcom/microsoft/azure/storage/core/Utility;->assertNotNull(Ljava/lang/String;Ljava/lang/Object;)V

    .line 9
    invoke-static {p1}, Lcom/microsoft/azure/storage/IPRange;->validateIPAddress(Ljava/lang/String;)V

    .line 10
    invoke-static {p2}, Lcom/microsoft/azure/storage/IPRange;->validateIPAddress(Ljava/lang/String;)V

    .line 11
    iput-object p1, p0, Lcom/microsoft/azure/storage/IPRange;->ipMin:Ljava/lang/String;

    .line 12
    iput-object p2, p0, Lcom/microsoft/azure/storage/IPRange;->ipMax:Ljava/lang/String;

    return-void
.end method

.method public static validateIPAddress(Ljava/lang/String;)V
    .locals 4

    .line 1
    :try_start_0
    invoke-static {p0}, Ljava/net/Inet4Address;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v0

    check-cast v0, Ljava/net/Inet4Address;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 2
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    const-string p0, "Error when parsing IPv4 address: IP address \'%s\' is invalid."

    invoke-static {p0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method


# virtual methods
.method public getIpMax()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/microsoft/azure/storage/IPRange;->ipMax:Ljava/lang/String;

    return-object v0
.end method

.method public getIpMin()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/microsoft/azure/storage/IPRange;->ipMin:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/microsoft/azure/storage/IPRange;->ipMin:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 2
    iget-object v1, p0, Lcom/microsoft/azure/storage/IPRange;->ipMin:Ljava/lang/String;

    iget-object v2, p0, Lcom/microsoft/azure/storage/IPRange;->ipMax:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "-"

    .line 3
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4
    iget-object v1, p0, Lcom/microsoft/azure/storage/IPRange;->ipMax:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
