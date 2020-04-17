.class public abstract Lg/c/h$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lg/c/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401
    name = "a"
.end annotation


# instance fields
.field public final a:I

.field public final synthetic b:Lg/c/h;


# direct methods
.method public constructor <init>(Lg/c/h;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lg/c/h$a;->b:Lg/c/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p2, p0, Lg/c/h$a;->a:I

    return-void
.end method


# virtual methods
.method public final a()J
    .locals 2

    .line 1
    iget v0, p0, Lg/c/h$a;->a:I

    iget-object v1, p0, Lg/c/h$a;->b:Lg/c/h;

    iget v1, v1, Lg/c/h;->c:I

    add-int/2addr v0, v1

    int-to-long v0, v0

    return-wide v0
.end method
