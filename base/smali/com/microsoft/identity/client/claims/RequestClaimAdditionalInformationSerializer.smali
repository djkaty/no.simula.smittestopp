.class public Lcom/microsoft/identity/client/claims/RequestClaimAdditionalInformationSerializer;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/c/c/r;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Le/c/c/r<",
        "Lcom/microsoft/identity/client/claims/RequestedClaimAdditionalInformation;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public serialize(Lcom/microsoft/identity/client/claims/RequestedClaimAdditionalInformation;Ljava/lang/reflect/Type;Le/c/c/q;)Le/c/c/j;
    .locals 3

    .line 2
    new-instance p2, Le/c/c/m;

    invoke-direct {p2}, Le/c/c/m;-><init>()V

    .line 3
    invoke-virtual {p1}, Lcom/microsoft/identity/client/claims/RequestedClaimAdditionalInformation;->getEssential()Ljava/lang/Boolean;

    move-result-object p3

    .line 4
    invoke-virtual {p2, p3}, Le/c/c/m;->a(Ljava/lang/Object;)Le/c/c/j;

    move-result-object p3

    const-string v0, "essential"

    invoke-virtual {p2, v0, p3}, Le/c/c/m;->a(Ljava/lang/String;Le/c/c/j;)V

    .line 5
    invoke-virtual {p1}, Lcom/microsoft/identity/client/claims/RequestedClaimAdditionalInformation;->getValue()Ljava/lang/Object;

    move-result-object p3

    if-eqz p3, :cond_0

    .line 6
    invoke-virtual {p1}, Lcom/microsoft/identity/client/claims/RequestedClaimAdditionalInformation;->getValue()Ljava/lang/Object;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p3

    .line 7
    invoke-virtual {p2, p3}, Le/c/c/m;->a(Ljava/lang/Object;)Le/c/c/j;

    move-result-object p3

    const-string v0, "value"

    invoke-virtual {p2, v0, p3}, Le/c/c/m;->a(Ljava/lang/String;Le/c/c/j;)V

    .line 8
    :cond_0
    invoke-virtual {p1}, Lcom/microsoft/identity/client/claims/RequestedClaimAdditionalInformation;->getValues()Ljava/util/List;

    move-result-object p3

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result p3

    if-lez p3, :cond_3

    .line 9
    new-instance p3, Le/c/c/g;

    invoke-direct {p3}, Le/c/c/g;-><init>()V

    .line 10
    invoke-virtual {p1}, Lcom/microsoft/identity/client/claims/RequestedClaimAdditionalInformation;->getValues()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 11
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 12
    iget-object v1, p3, Le/c/c/g;->x:Ljava/util/List;

    if-nez v0, :cond_1

    sget-object v0, Le/c/c/l;->a:Le/c/c/l;

    goto :goto_1

    :cond_1
    new-instance v2, Le/c/c/p;

    invoke-direct {v2, v0}, Le/c/c/p;-><init>(Ljava/lang/String;)V

    move-object v0, v2

    :goto_1
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    const-string p1, "values"

    .line 13
    invoke-virtual {p2, p1, p3}, Le/c/c/m;->a(Ljava/lang/String;Le/c/c/j;)V

    :cond_3
    return-object p2
.end method

.method public bridge synthetic serialize(Ljava/lang/Object;Ljava/lang/reflect/Type;Le/c/c/q;)Le/c/c/j;
    .locals 0

    .line 1
    check-cast p1, Lcom/microsoft/identity/client/claims/RequestedClaimAdditionalInformation;

    invoke-virtual {p0, p1, p2, p3}, Lcom/microsoft/identity/client/claims/RequestClaimAdditionalInformationSerializer;->serialize(Lcom/microsoft/identity/client/claims/RequestedClaimAdditionalInformation;Ljava/lang/reflect/Type;Le/c/c/q;)Le/c/c/j;

    move-result-object p1

    return-object p1
.end method
