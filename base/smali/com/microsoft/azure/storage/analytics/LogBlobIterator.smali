.class public Lcom/microsoft/azure/storage/analytics/LogBlobIterator;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "Lcom/microsoft/azure/storage/blob/ListBlobItem;",
        ">;"
    }
.end annotation


# static fields
.field public static final DAY_FORMAT:Ljava/text/DateFormat;

.field public static final DAY_FORMAT_LENGTH:I

.field public static final DAY_STRING:Ljava/lang/String; = "yyyy/MM/dd"

.field public static final HOUR_FORMAT:Ljava/text/DateFormat;

.field public static final HOUR_FORMAT_LENGTH:I

.field public static final HOUR_STRING:Ljava/lang/String; = "yyyy/MM/dd/HH"

.field public static final MONTH_FORMAT:Ljava/text/DateFormat;

.field public static final MONTH_FORMAT_LENGTH:I

.field public static final MONTH_STRING:Ljava/lang/String; = "yyyy/MM"

.field public static final YEAR_FORMAT:Ljava/text/DateFormat;

.field public static final YEAR_STRING:Ljava/lang/String; = "yyyy"


# instance fields
.field public currentIterator:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator<",
            "Lcom/microsoft/azure/storage/blob/ListBlobItem;",
            ">;"
        }
    .end annotation
.end field

.field public currentPrefixTime:Ljava/lang/String;

.field public final details:Ljava/util/EnumSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/EnumSet<",
            "Lcom/microsoft/azure/storage/blob/BlobListingDetails;",
            ">;"
        }
    .end annotation
.end field

.field public endDate:Ljava/util/Calendar;

.field public endPrefix:Ljava/lang/String;

.field public isExpired:Ljava/lang/Boolean;

.field public isItemPending:Ljava/lang/Boolean;

.field public final logDirectory:Lcom/microsoft/azure/storage/blob/CloudBlobDirectory;

.field public final opContext:Lcom/microsoft/azure/storage/OperationContext;

.field public final operations:Ljava/util/EnumSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/EnumSet<",
            "Lcom/microsoft/azure/storage/LoggingOperations;",
            ">;"
        }
    .end annotation
.end field

.field public final options:Lcom/microsoft/azure/storage/blob/BlobRequestOptions;

.field public pendingItem:Lcom/microsoft/azure/storage/blob/ListBlobItem;

.field public startDate:Ljava/util/Calendar;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy/MM/dd/HH"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/microsoft/azure/storage/analytics/LogBlobIterator;->HOUR_FORMAT:Ljava/text/DateFormat;

    .line 2
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy/MM/dd"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/microsoft/azure/storage/analytics/LogBlobIterator;->DAY_FORMAT:Ljava/text/DateFormat;

    .line 3
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy/MM"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/microsoft/azure/storage/analytics/LogBlobIterator;->MONTH_FORMAT:Ljava/text/DateFormat;

    .line 4
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/microsoft/azure/storage/analytics/LogBlobIterator;->YEAR_FORMAT:Ljava/text/DateFormat;

    const/16 v0, 0xd

    .line 5
    sput v0, Lcom/microsoft/azure/storage/analytics/LogBlobIterator;->HOUR_FORMAT_LENGTH:I

    const/16 v0, 0xa

    .line 6
    sput v0, Lcom/microsoft/azure/storage/analytics/LogBlobIterator;->DAY_FORMAT_LENGTH:I

    const/4 v0, 0x7

    .line 7
    sput v0, Lcom/microsoft/azure/storage/analytics/LogBlobIterator;->MONTH_FORMAT_LENGTH:I

    return-void
.end method

.method public constructor <init>(Lcom/microsoft/azure/storage/blob/CloudBlobDirectory;Ljava/util/Date;Ljava/util/Date;Ljava/util/EnumSet;Ljava/util/EnumSet;Lcom/microsoft/azure/storage/blob/BlobRequestOptions;Lcom/microsoft/azure/storage/OperationContext;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/microsoft/azure/storage/blob/CloudBlobDirectory;",
            "Ljava/util/Date;",
            "Ljava/util/Date;",
            "Ljava/util/EnumSet<",
            "Lcom/microsoft/azure/storage/LoggingOperations;",
            ">;",
            "Ljava/util/EnumSet<",
            "Lcom/microsoft/azure/storage/blob/BlobListingDetails;",
            ">;",
            "Lcom/microsoft/azure/storage/blob/BlobRequestOptions;",
            "Lcom/microsoft/azure/storage/OperationContext;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/microsoft/azure/storage/analytics/LogBlobIterator;->startDate:Ljava/util/Calendar;

    .line 3
    iput-object v0, p0, Lcom/microsoft/azure/storage/analytics/LogBlobIterator;->endDate:Ljava/util/Calendar;

    .line 4
    iput-object v0, p0, Lcom/microsoft/azure/storage/analytics/LogBlobIterator;->currentPrefixTime:Ljava/lang/String;

    const/4 v0, 0x0

    .line 5
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/microsoft/azure/storage/analytics/LogBlobIterator;->isItemPending:Ljava/lang/Boolean;

    .line 6
    iput-object v0, p0, Lcom/microsoft/azure/storage/analytics/LogBlobIterator;->isExpired:Ljava/lang/Boolean;

    const-string v0, "GMT"

    .line 7
    invoke-static {v0}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v0

    .line 8
    sget-object v1, Lcom/microsoft/azure/storage/analytics/LogBlobIterator;->HOUR_FORMAT:Ljava/text/DateFormat;

    invoke-virtual {v1, v0}, Ljava/text/DateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 9
    sget-object v1, Lcom/microsoft/azure/storage/analytics/LogBlobIterator;->DAY_FORMAT:Ljava/text/DateFormat;

    invoke-virtual {v1, v0}, Ljava/text/DateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 10
    sget-object v1, Lcom/microsoft/azure/storage/analytics/LogBlobIterator;->MONTH_FORMAT:Ljava/text/DateFormat;

    invoke-virtual {v1, v0}, Ljava/text/DateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 11
    sget-object v1, Lcom/microsoft/azure/storage/analytics/LogBlobIterator;->YEAR_FORMAT:Ljava/text/DateFormat;

    invoke-virtual {v1, v0}, Ljava/text/DateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 12
    iput-object p1, p0, Lcom/microsoft/azure/storage/analytics/LogBlobIterator;->logDirectory:Lcom/microsoft/azure/storage/blob/CloudBlobDirectory;

    .line 13
    iput-object p4, p0, Lcom/microsoft/azure/storage/analytics/LogBlobIterator;->operations:Ljava/util/EnumSet;

    .line 14
    iput-object p5, p0, Lcom/microsoft/azure/storage/analytics/LogBlobIterator;->details:Ljava/util/EnumSet;

    .line 15
    iput-object p7, p0, Lcom/microsoft/azure/storage/analytics/LogBlobIterator;->opContext:Lcom/microsoft/azure/storage/OperationContext;

    if-nez p6, :cond_0

    .line 16
    new-instance p1, Lcom/microsoft/azure/storage/blob/BlobRequestOptions;

    invoke-direct {p1}, Lcom/microsoft/azure/storage/blob/BlobRequestOptions;-><init>()V

    iput-object p1, p0, Lcom/microsoft/azure/storage/analytics/LogBlobIterator;->options:Lcom/microsoft/azure/storage/blob/BlobRequestOptions;

    goto :goto_0

    .line 17
    :cond_0
    iput-object p6, p0, Lcom/microsoft/azure/storage/analytics/LogBlobIterator;->options:Lcom/microsoft/azure/storage/blob/BlobRequestOptions;

    :goto_0
    if-eqz p2, :cond_1

    .line 18
    new-instance p1, Ljava/util/GregorianCalendar;

    invoke-direct {p1}, Ljava/util/GregorianCalendar;-><init>()V

    iput-object p1, p0, Lcom/microsoft/azure/storage/analytics/LogBlobIterator;->startDate:Ljava/util/Calendar;

    .line 19
    invoke-virtual {p1, p2}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 20
    iget-object p1, p0, Lcom/microsoft/azure/storage/analytics/LogBlobIterator;->startDate:Ljava/util/Calendar;

    const/16 p2, 0xc

    invoke-virtual {p1, p2}, Ljava/util/Calendar;->get(I)I

    move-result p4

    neg-int p4, p4

    invoke-virtual {p1, p2, p4}, Ljava/util/Calendar;->add(II)V

    .line 21
    iget-object p1, p0, Lcom/microsoft/azure/storage/analytics/LogBlobIterator;->startDate:Ljava/util/Calendar;

    invoke-virtual {p1, v0}, Ljava/util/Calendar;->setTimeZone(Ljava/util/TimeZone;)V

    :cond_1
    if-eqz p3, :cond_2

    .line 22
    new-instance p1, Ljava/util/GregorianCalendar;

    invoke-direct {p1}, Ljava/util/GregorianCalendar;-><init>()V

    iput-object p1, p0, Lcom/microsoft/azure/storage/analytics/LogBlobIterator;->endDate:Ljava/util/Calendar;

    .line 23
    invoke-virtual {p1, p3}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 24
    iget-object p1, p0, Lcom/microsoft/azure/storage/analytics/LogBlobIterator;->endDate:Ljava/util/Calendar;

    invoke-virtual {p1, v0}, Ljava/util/Calendar;->setTimeZone(Ljava/util/TimeZone;)V

    .line 25
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p2, p0, Lcom/microsoft/azure/storage/analytics/LogBlobIterator;->logDirectory:Lcom/microsoft/azure/storage/blob/CloudBlobDirectory;

    invoke-virtual {p2}, Lcom/microsoft/azure/storage/blob/CloudBlobDirectory;->getPrefix()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p2, Lcom/microsoft/azure/storage/analytics/LogBlobIterator;->HOUR_FORMAT:Ljava/text/DateFormat;

    iget-object p3, p0, Lcom/microsoft/azure/storage/analytics/LogBlobIterator;->endDate:Ljava/util/Calendar;

    invoke-virtual {p3}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/microsoft/azure/storage/analytics/LogBlobIterator;->endPrefix:Ljava/lang/String;

    :cond_2
    return-void
.end method

.method private isCorrectLogType(Lcom/microsoft/azure/storage/blob/ListBlobItem;)Z
    .locals 3

    .line 1
    check-cast p1, Lcom/microsoft/azure/storage/blob/CloudBlob;

    invoke-virtual {p1}, Lcom/microsoft/azure/storage/blob/CloudBlob;->getMetadata()Ljava/util/HashMap;

    move-result-object p1

    const-string v0, "LogType"

    .line 2
    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    const/4 v0, 0x1

    if-nez p1, :cond_0

    return v0

    .line 3
    :cond_0
    iget-object v1, p0, Lcom/microsoft/azure/storage/analytics/LogBlobIterator;->operations:Ljava/util/EnumSet;

    sget-object v2, Lcom/microsoft/azure/storage/LoggingOperations;->READ:Lcom/microsoft/azure/storage/LoggingOperations;

    invoke-virtual {v1, v2}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "read"

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    return v0

    .line 4
    :cond_1
    iget-object v1, p0, Lcom/microsoft/azure/storage/analytics/LogBlobIterator;->operations:Ljava/util/EnumSet;

    sget-object v2, Lcom/microsoft/azure/storage/LoggingOperations;->WRITE:Lcom/microsoft/azure/storage/LoggingOperations;

    invoke-virtual {v1, v2}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "write"

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    return v0

    .line 5
    :cond_2
    iget-object v1, p0, Lcom/microsoft/azure/storage/analytics/LogBlobIterator;->operations:Ljava/util/EnumSet;

    sget-object v2, Lcom/microsoft/azure/storage/LoggingOperations;->DELETE:Lcom/microsoft/azure/storage/LoggingOperations;

    invoke-virtual {v1, v2}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v1, "delete"

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_3

    return v0

    :cond_3
    const/4 p1, 0x0

    return p1
.end method

.method private updateIterator()V
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/microsoft/azure/storage/analytics/LogBlobIterator;->currentPrefixTime:Ljava/lang/String;

    const/4 v1, 0x1

    .line 2
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4
    iput-object v2, p0, Lcom/microsoft/azure/storage/analytics/LogBlobIterator;->isExpired:Ljava/lang/Boolean;

    return-void

    .line 5
    :cond_0
    new-instance v0, Ljava/util/GregorianCalendar;

    invoke-direct {v0}, Ljava/util/GregorianCalendar;-><init>()V

    const/16 v3, 0xb

    .line 6
    invoke-virtual {v0, v3, v1}, Ljava/util/GregorianCalendar;->add(II)V

    const-string v1, "GMT"

    .line 7
    invoke-static {v1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/GregorianCalendar;->setTimeZone(Ljava/util/TimeZone;)V

    .line 8
    invoke-direct {p0}, Lcom/microsoft/azure/storage/analytics/LogBlobIterator;->updatePrefix()V

    .line 9
    iget-object v1, p0, Lcom/microsoft/azure/storage/analytics/LogBlobIterator;->startDate:Ljava/util/Calendar;

    if-eqz v1, :cond_1

    invoke-virtual {v1, v0}, Ljava/util/Calendar;->compareTo(Ljava/util/Calendar;)I

    move-result v0

    if-gtz v0, :cond_2

    :cond_1
    iget-object v0, p0, Lcom/microsoft/azure/storage/analytics/LogBlobIterator;->endDate:Ljava/util/Calendar;

    if-eqz v0, :cond_3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/microsoft/azure/storage/analytics/LogBlobIterator;->logDirectory:Lcom/microsoft/azure/storage/blob/CloudBlobDirectory;

    .line 10
    invoke-virtual {v1}, Lcom/microsoft/azure/storage/blob/CloudBlobDirectory;->getPrefix()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/microsoft/azure/storage/analytics/LogBlobIterator;->currentPrefixTime:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/microsoft/azure/storage/analytics/LogBlobIterator;->endPrefix:Ljava/lang/String;

    .line 11
    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-gtz v0, :cond_2

    goto :goto_0

    .line 12
    :cond_2
    iput-object v2, p0, Lcom/microsoft/azure/storage/analytics/LogBlobIterator;->isExpired:Ljava/lang/Boolean;

    goto :goto_1

    .line 13
    :cond_3
    :goto_0
    iget-object v3, p0, Lcom/microsoft/azure/storage/analytics/LogBlobIterator;->logDirectory:Lcom/microsoft/azure/storage/blob/CloudBlobDirectory;

    iget-object v4, p0, Lcom/microsoft/azure/storage/analytics/LogBlobIterator;->currentPrefixTime:Ljava/lang/String;

    const/4 v5, 0x1

    iget-object v6, p0, Lcom/microsoft/azure/storage/analytics/LogBlobIterator;->details:Ljava/util/EnumSet;

    iget-object v7, p0, Lcom/microsoft/azure/storage/analytics/LogBlobIterator;->options:Lcom/microsoft/azure/storage/blob/BlobRequestOptions;

    iget-object v8, p0, Lcom/microsoft/azure/storage/analytics/LogBlobIterator;->opContext:Lcom/microsoft/azure/storage/OperationContext;

    invoke-virtual/range {v3 .. v8}, Lcom/microsoft/azure/storage/blob/CloudBlobDirectory;->listBlobs(Ljava/lang/String;ZLjava/util/EnumSet;Lcom/microsoft/azure/storage/blob/BlobRequestOptions;Lcom/microsoft/azure/storage/OperationContext;)Ljava/lang/Iterable;

    move-result-object v0

    .line 14
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    iput-object v0, p0, Lcom/microsoft/azure/storage/analytics/LogBlobIterator;->currentIterator:Ljava/util/Iterator;

    :goto_1
    return-void
.end method

.method private updatePrefix()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/microsoft/azure/storage/analytics/LogBlobIterator;->startDate:Ljava/util/Calendar;

    if-nez v0, :cond_0

    const-string v0, ""

    .line 2
    iput-object v0, p0, Lcom/microsoft/azure/storage/analytics/LogBlobIterator;->currentPrefixTime:Ljava/lang/String;

    goto/16 :goto_0

    .line 3
    :cond_0
    iget-object v1, p0, Lcom/microsoft/azure/storage/analytics/LogBlobIterator;->currentPrefixTime:Ljava/lang/String;

    if-nez v1, :cond_1

    .line 4
    sget-object v1, Lcom/microsoft/azure/storage/analytics/LogBlobIterator;->HOUR_FORMAT:Ljava/text/DateFormat;

    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/microsoft/azure/storage/analytics/LogBlobIterator;->currentPrefixTime:Ljava/lang/String;

    goto/16 :goto_0

    .line 5
    :cond_1
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    sget v1, Lcom/microsoft/azure/storage/analytics/LogBlobIterator;->HOUR_FORMAT_LENGTH:I

    const/4 v2, 0x1

    if-ne v0, v1, :cond_3

    .line 6
    iget-object v0, p0, Lcom/microsoft/azure/storage/analytics/LogBlobIterator;->startDate:Ljava/util/Calendar;

    const/16 v1, 0xb

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->add(II)V

    .line 7
    iget-object v0, p0, Lcom/microsoft/azure/storage/analytics/LogBlobIterator;->startDate:Ljava/util/Calendar;

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    if-eqz v0, :cond_2

    .line 8
    sget-object v0, Lcom/microsoft/azure/storage/analytics/LogBlobIterator;->HOUR_FORMAT:Ljava/text/DateFormat;

    iget-object v1, p0, Lcom/microsoft/azure/storage/analytics/LogBlobIterator;->startDate:Ljava/util/Calendar;

    invoke-virtual {v1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/microsoft/azure/storage/analytics/LogBlobIterator;->currentPrefixTime:Ljava/lang/String;

    goto/16 :goto_0

    .line 9
    :cond_2
    sget-object v0, Lcom/microsoft/azure/storage/analytics/LogBlobIterator;->DAY_FORMAT:Ljava/text/DateFormat;

    iget-object v1, p0, Lcom/microsoft/azure/storage/analytics/LogBlobIterator;->startDate:Ljava/util/Calendar;

    invoke-virtual {v1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/microsoft/azure/storage/analytics/LogBlobIterator;->currentPrefixTime:Ljava/lang/String;

    goto/16 :goto_0

    .line 10
    :cond_3
    iget-object v0, p0, Lcom/microsoft/azure/storage/analytics/LogBlobIterator;->currentPrefixTime:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    sget v1, Lcom/microsoft/azure/storage/analytics/LogBlobIterator;->DAY_FORMAT_LENGTH:I

    if-ne v0, v1, :cond_5

    .line 11
    iget-object v0, p0, Lcom/microsoft/azure/storage/analytics/LogBlobIterator;->startDate:Ljava/util/Calendar;

    const/4 v1, 0x5

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->add(II)V

    .line 12
    iget-object v0, p0, Lcom/microsoft/azure/storage/analytics/LogBlobIterator;->startDate:Ljava/util/Calendar;

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    if-eq v0, v2, :cond_4

    .line 13
    sget-object v0, Lcom/microsoft/azure/storage/analytics/LogBlobIterator;->DAY_FORMAT:Ljava/text/DateFormat;

    iget-object v1, p0, Lcom/microsoft/azure/storage/analytics/LogBlobIterator;->startDate:Ljava/util/Calendar;

    invoke-virtual {v1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/microsoft/azure/storage/analytics/LogBlobIterator;->currentPrefixTime:Ljava/lang/String;

    goto :goto_0

    .line 14
    :cond_4
    sget-object v0, Lcom/microsoft/azure/storage/analytics/LogBlobIterator;->MONTH_FORMAT:Ljava/text/DateFormat;

    iget-object v1, p0, Lcom/microsoft/azure/storage/analytics/LogBlobIterator;->startDate:Ljava/util/Calendar;

    invoke-virtual {v1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/microsoft/azure/storage/analytics/LogBlobIterator;->currentPrefixTime:Ljava/lang/String;

    goto :goto_0

    .line 15
    :cond_5
    iget-object v0, p0, Lcom/microsoft/azure/storage/analytics/LogBlobIterator;->currentPrefixTime:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    sget v1, Lcom/microsoft/azure/storage/analytics/LogBlobIterator;->MONTH_FORMAT_LENGTH:I

    if-ne v0, v1, :cond_7

    .line 16
    iget-object v0, p0, Lcom/microsoft/azure/storage/analytics/LogBlobIterator;->startDate:Ljava/util/Calendar;

    const/4 v1, 0x2

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->add(II)V

    .line 17
    iget-object v0, p0, Lcom/microsoft/azure/storage/analytics/LogBlobIterator;->startDate:Ljava/util/Calendar;

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    const/16 v1, 0xd

    if-eq v0, v1, :cond_6

    .line 18
    sget-object v0, Lcom/microsoft/azure/storage/analytics/LogBlobIterator;->MONTH_FORMAT:Ljava/text/DateFormat;

    iget-object v1, p0, Lcom/microsoft/azure/storage/analytics/LogBlobIterator;->startDate:Ljava/util/Calendar;

    invoke-virtual {v1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/microsoft/azure/storage/analytics/LogBlobIterator;->currentPrefixTime:Ljava/lang/String;

    goto :goto_0

    .line 19
    :cond_6
    sget-object v0, Lcom/microsoft/azure/storage/analytics/LogBlobIterator;->YEAR_FORMAT:Ljava/text/DateFormat;

    iget-object v1, p0, Lcom/microsoft/azure/storage/analytics/LogBlobIterator;->startDate:Ljava/util/Calendar;

    invoke-virtual {v1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/microsoft/azure/storage/analytics/LogBlobIterator;->currentPrefixTime:Ljava/lang/String;

    goto :goto_0

    .line 20
    :cond_7
    iget-object v0, p0, Lcom/microsoft/azure/storage/analytics/LogBlobIterator;->startDate:Ljava/util/Calendar;

    invoke-virtual {v0, v2, v2}, Ljava/util/Calendar;->add(II)V

    .line 21
    sget-object v0, Lcom/microsoft/azure/storage/analytics/LogBlobIterator;->YEAR_FORMAT:Ljava/text/DateFormat;

    iget-object v1, p0, Lcom/microsoft/azure/storage/analytics/LogBlobIterator;->startDate:Ljava/util/Calendar;

    invoke-virtual {v1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/microsoft/azure/storage/analytics/LogBlobIterator;->currentPrefixTime:Ljava/lang/String;

    :goto_0
    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 7

    const-string v0, "An error occurred while enumerating the result, check the original exception for details."

    .line 1
    iget-object v1, p0, Lcom/microsoft/azure/storage/analytics/LogBlobIterator;->isItemPending:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    const/4 v2, 0x1

    .line 2
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    if-eqz v1, :cond_0

    return v2

    .line 3
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/microsoft/azure/storage/analytics/LogBlobIterator;->currentIterator:Ljava/util/Iterator;

    if-nez v1, :cond_1

    .line 4
    invoke-direct {p0}, Lcom/microsoft/azure/storage/analytics/LogBlobIterator;->updateIterator()V

    .line 5
    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/microsoft/azure/storage/analytics/LogBlobIterator;->isExpired:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    const/4 v4, 0x0

    if-nez v1, :cond_6

    .line 6
    :cond_2
    iget-object v1, p0, Lcom/microsoft/azure/storage/analytics/LogBlobIterator;->currentIterator:Ljava/util/Iterator;

    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 7
    iget-object v1, p0, Lcom/microsoft/azure/storage/analytics/LogBlobIterator;->currentIterator:Ljava/util/Iterator;

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/microsoft/azure/storage/blob/ListBlobItem;

    .line 8
    iget-object v5, p0, Lcom/microsoft/azure/storage/analytics/LogBlobIterator;->endDate:Ljava/util/Calendar;

    if-eqz v5, :cond_4

    invoke-interface {v1}, Lcom/microsoft/azure/storage/blob/ListBlobItem;->getParent()Lcom/microsoft/azure/storage/blob/CloudBlobDirectory;

    move-result-object v5

    invoke-virtual {v5}, Lcom/microsoft/azure/storage/blob/CloudBlobDirectory;->getPrefix()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/microsoft/azure/storage/analytics/LogBlobIterator;->endPrefix:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v5

    if-gtz v5, :cond_3

    goto :goto_1

    .line 9
    :cond_3
    iput-object v3, p0, Lcom/microsoft/azure/storage/analytics/LogBlobIterator;->isExpired:Ljava/lang/Boolean;

    return v4

    .line 10
    :cond_4
    :goto_1
    invoke-direct {p0, v1}, Lcom/microsoft/azure/storage/analytics/LogBlobIterator;->isCorrectLogType(Lcom/microsoft/azure/storage/blob/ListBlobItem;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 11
    iput-object v1, p0, Lcom/microsoft/azure/storage/analytics/LogBlobIterator;->pendingItem:Lcom/microsoft/azure/storage/blob/ListBlobItem;

    .line 12
    iput-object v3, p0, Lcom/microsoft/azure/storage/analytics/LogBlobIterator;->isItemPending:Ljava/lang/Boolean;

    return v2

    .line 13
    :cond_5
    invoke-direct {p0}, Lcom/microsoft/azure/storage/analytics/LogBlobIterator;->updateIterator()V
    :try_end_0
    .catch Lcom/microsoft/azure/storage/StorageException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :cond_6
    return v4

    :catch_0
    move-exception v1

    .line 14
    new-instance v2, Ljava/util/NoSuchElementException;

    invoke-direct {v2, v0}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    .line 15
    invoke-virtual {v2, v1}, Ljava/util/NoSuchElementException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 16
    throw v2

    :catch_1
    move-exception v1

    .line 17
    new-instance v2, Ljava/util/NoSuchElementException;

    invoke-direct {v2, v0}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    .line 18
    invoke-virtual {v2, v1}, Ljava/util/NoSuchElementException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 19
    throw v2
.end method

.method public next()Lcom/microsoft/azure/storage/blob/ListBlobItem;
    .locals 2

    .line 2
    iget-object v0, p0, Lcom/microsoft/azure/storage/analytics/LogBlobIterator;->isItemPending:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 3
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/microsoft/azure/storage/analytics/LogBlobIterator;->isItemPending:Ljava/lang/Boolean;

    .line 4
    iget-object v0, p0, Lcom/microsoft/azure/storage/analytics/LogBlobIterator;->pendingItem:Lcom/microsoft/azure/storage/blob/ListBlobItem;

    return-object v0

    .line 5
    :cond_0
    invoke-virtual {p0}, Lcom/microsoft/azure/storage/analytics/LogBlobIterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 6
    invoke-virtual {p0}, Lcom/microsoft/azure/storage/analytics/LogBlobIterator;->next()Lcom/microsoft/azure/storage/blob/ListBlobItem;

    move-result-object v0

    return-object v0

    .line 7
    :cond_1
    new-instance v0, Ljava/util/NoSuchElementException;

    const-string v1, "There are no more elements in this enumeration."

    invoke-direct {v0, v1}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/microsoft/azure/storage/analytics/LogBlobIterator;->next()Lcom/microsoft/azure/storage/blob/ListBlobItem;

    move-result-object v0

    return-object v0
.end method

.method public remove()V
    .locals 1

    .line 1
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
