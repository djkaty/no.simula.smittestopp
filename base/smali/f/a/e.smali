.class public interface abstract Lf/a/e;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lf/a/e$b;
    }
.end annotation


# static fields
.field public static final b:Lf/a/e;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lf/a/e$a;

    invoke-direct {v0}, Lf/a/e$a;-><init>()V

    sput-object v0, Lf/a/e;->b:Lf/a/e;

    return-void
.end method


# virtual methods
.method public abstract a()Lf/a/e$b;
.end method
