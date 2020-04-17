.class public abstract Lno/simula/corona/MeasurementDatabase;
.super Ld/u/g;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lno/simula/corona/MeasurementDatabase$a;
    }
.end annotation


# static fields
.field public static volatile j:Lno/simula/corona/MeasurementDatabase;

.field public static final k:Lno/simula/corona/MeasurementDatabase$a;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lno/simula/corona/MeasurementDatabase$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lno/simula/corona/MeasurementDatabase$a;-><init>(Lh/k/b/f;)V

    sput-object v0, Lno/simula/corona/MeasurementDatabase;->k:Lno/simula/corona/MeasurementDatabase$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ld/u/g;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract h()Lj/b/a/b;
.end method

.method public abstract i()Lj/b/a/s;
.end method
