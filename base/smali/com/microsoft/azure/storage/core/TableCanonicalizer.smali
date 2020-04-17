.class public final Lcom/microsoft/azure/storage/core/TableCanonicalizer;
.super Lcom/microsoft/azure/storage/core/Canonicalizer;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/microsoft/azure/storage/core/Canonicalizer;-><init>()V

    return-void
.end method


# virtual methods
.method public canonicalize(Ljava/net/HttpURLConnection;Ljava/lang/String;Ljava/lang/Long;)Ljava/lang/String;
    .locals 13

    .line 1
    invoke-virtual/range {p3 .. p3}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v4, v0, v2

    if-ltz v4, :cond_0

    .line 2
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getURL()Ljava/net/URL;

    move-result-object v5

    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getRequestMethod()Ljava/lang/String;

    move-result-object v7

    const-string v0, "Content-Type"

    move-object v1, p1

    .line 3
    invoke-static {p1, v0}, Lcom/microsoft/azure/storage/core/Utility;->getStandardHeaderValue(Ljava/net/HttpURLConnection;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual/range {p3 .. p3}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    const/4 v11, 0x0

    move-object v6, p2

    move-object v12, p1

    .line 4
    invoke-static/range {v5 .. v12}, Lcom/microsoft/azure/storage/core/Canonicalizer;->canonicalizeTableHttpRequest(Ljava/net/URL;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/net/HttpURLConnection;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 5
    :cond_0
    new-instance v0, Ljava/security/InvalidParameterException;

    const-string v1, "ContentLength must be set to -1 or positive Long value."

    invoke-direct {v0, v1}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
