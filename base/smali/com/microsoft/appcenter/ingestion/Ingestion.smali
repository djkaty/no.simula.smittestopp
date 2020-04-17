.class public interface abstract Lcom/microsoft/appcenter/ingestion/Ingestion;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Closeable;


# virtual methods
.method public abstract reopen()V
.end method

.method public abstract sendAsync(Ljava/lang/String;Ljava/util/UUID;Lcom/microsoft/appcenter/ingestion/models/LogContainer;Lcom/microsoft/appcenter/http/ServiceCallback;)Lcom/microsoft/appcenter/http/ServiceCall;
.end method

.method public abstract setLogUrl(Ljava/lang/String;)V
.end method
