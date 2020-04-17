.class public final Lno/simula/corona/CoronaApp;
.super Ld/r/b;
.source "SourceFile"

# interfaces
.implements Ld/o/k;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lno/simula/corona/CoronaApp$a;
    }
.end annotation


# static fields
.field public static z:Lno/simula/corona/CoronaApp;


# instance fields
.field public x:Z

.field public y:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ld/r/b;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAppBackgrounded()V
    .locals 1
    .annotation runtime Ld/o/s;
        value = .enum Ld/o/g$a;->ON_STOP:Ld/o/g$a;
    .end annotation

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lno/simula/corona/CoronaApp;->x:Z

    return-void
.end method

.method public final onAppForegrounded()V
    .locals 1
    .annotation runtime Ld/o/s;
        value = .enum Ld/o/g$a;->ON_START:Ld/o/g$a;
    .end annotation

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Lno/simula/corona/CoronaApp;->x:Z

    return-void
.end method

.method public onCreate()V
    .locals 4

    .line 1
    invoke-super {p0}, Landroid/app/Application;->onCreate()V

    .line 2
    sput-object p0, Lno/simula/corona/CoronaApp;->z:Lno/simula/corona/CoronaApp;

    .line 3
    sget-object v0, Ld/o/t;->F:Ld/o/t;

    .line 4
    invoke-interface {v0}, Ld/o/l;->getLifecycle()Ld/o/g;

    move-result-object v0

    invoke-virtual {v0, p0}, Ld/o/g;->a(Ld/o/k;)V

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Class;

    .line 5
    const-class v1, Lcom/microsoft/appcenter/analytics/Analytics;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const/4 v1, 0x1

    const-class v3, Lcom/microsoft/appcenter/crashes/Crashes;

    aput-object v3, v0, v1

    const-string v1, "a236c750-5e31-41e9-b5c4-00cf94decfb0"

    .line 6
    invoke-static {p0, v1, v0}, Lcom/microsoft/appcenter/AppCenter;->start(Landroid/app/Application;Ljava/lang/String;[Ljava/lang/Class;)V

    .line 7
    new-instance v0, Lno/simula/corona/CoronaApp$a;

    invoke-direct {v0}, Lno/simula/corona/CoronaApp$a;-><init>()V

    invoke-static {v0}, Ll/a/a;->a(Ll/a/a$b;)V

    new-array v0, v2, [Ljava/lang/Object;

    .line 8
    sget-object v1, Ll/a/a;->d:Ll/a/a$b;

    const-string v2, "starting app"

    invoke-virtual {v1, v2, v0}, Ll/a/a$b;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method
