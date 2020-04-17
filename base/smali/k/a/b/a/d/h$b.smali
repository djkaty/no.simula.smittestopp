.class public enum Lk/a/b/a/d/h$b;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Lk/a/b/a/d/i;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lk/a/b/a/d/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4009
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lk/a/b/a/d/h$b;",
        ">;",
        "Lk/a/b/a/d/i;"
    }
.end annotation


# static fields
.field public static final synthetic $VALUES:[Lk/a/b/a/d/h$b;

.field public static final enum CONNECTION_BOUND:Lk/a/b/a/d/h$b;

.field public static final enum CONNECTION_FINAL:Lk/a/b/a/d/h$b;

.field public static final enum CONNECTION_INIT:Lk/a/b/a/d/h$b;

.field public static final enum CONNECTION_LOCAL_CLOSE:Lk/a/b/a/d/h$b;

.field public static final enum CONNECTION_LOCAL_OPEN:Lk/a/b/a/d/h$b;

.field public static final enum CONNECTION_REMOTE_CLOSE:Lk/a/b/a/d/h$b;

.field public static final enum CONNECTION_REMOTE_OPEN:Lk/a/b/a/d/h$b;

.field public static final enum CONNECTION_UNBOUND:Lk/a/b/a/d/h$b;

.field public static final enum DELIVERY:Lk/a/b/a/d/h$b;

.field public static final enum LINK_FINAL:Lk/a/b/a/d/h$b;

.field public static final enum LINK_FLOW:Lk/a/b/a/d/h$b;

.field public static final enum LINK_INIT:Lk/a/b/a/d/h$b;

.field public static final enum LINK_LOCAL_CLOSE:Lk/a/b/a/d/h$b;

.field public static final enum LINK_LOCAL_DETACH:Lk/a/b/a/d/h$b;

.field public static final enum LINK_LOCAL_OPEN:Lk/a/b/a/d/h$b;

.field public static final enum LINK_REMOTE_CLOSE:Lk/a/b/a/d/h$b;

.field public static final enum LINK_REMOTE_DETACH:Lk/a/b/a/d/h$b;

.field public static final enum LINK_REMOTE_OPEN:Lk/a/b/a/d/h$b;

.field public static final enum NON_CORE_EVENT:Lk/a/b/a/d/h$b;

.field public static final enum REACTOR_FINAL:Lk/a/b/a/d/h$b;

.field public static final enum REACTOR_INIT:Lk/a/b/a/d/h$b;

.field public static final enum REACTOR_QUIESCED:Lk/a/b/a/d/h$b;

.field public static final enum SELECTABLE_ERROR:Lk/a/b/a/d/h$b;

.field public static final enum SELECTABLE_EXPIRED:Lk/a/b/a/d/h$b;

.field public static final enum SELECTABLE_FINAL:Lk/a/b/a/d/h$b;

.field public static final enum SELECTABLE_INIT:Lk/a/b/a/d/h$b;

.field public static final enum SELECTABLE_READABLE:Lk/a/b/a/d/h$b;

.field public static final enum SELECTABLE_UPDATED:Lk/a/b/a/d/h$b;

.field public static final enum SELECTABLE_WRITABLE:Lk/a/b/a/d/h$b;

.field public static final enum SESSION_FINAL:Lk/a/b/a/d/h$b;

.field public static final enum SESSION_INIT:Lk/a/b/a/d/h$b;

.field public static final enum SESSION_LOCAL_CLOSE:Lk/a/b/a/d/h$b;

.field public static final enum SESSION_LOCAL_OPEN:Lk/a/b/a/d/h$b;

.field public static final enum SESSION_REMOTE_CLOSE:Lk/a/b/a/d/h$b;

.field public static final enum SESSION_REMOTE_OPEN:Lk/a/b/a/d/h$b;

.field public static final enum TIMER_TASK:Lk/a/b/a/d/h$b;

.field public static final enum TRANSPORT:Lk/a/b/a/d/h$b;

.field public static final enum TRANSPORT_CLOSED:Lk/a/b/a/d/h$b;

.field public static final enum TRANSPORT_ERROR:Lk/a/b/a/d/h$b;

.field public static final enum TRANSPORT_HEAD_CLOSED:Lk/a/b/a/d/h$b;

.field public static final enum TRANSPORT_TAIL_CLOSED:Lk/a/b/a/d/h$b;


# direct methods
.method public static constructor <clinit>()V
    .locals 16

    .line 1
    new-instance v0, Lk/a/b/a/d/h$b;

    const/4 v1, 0x0

    const-string v2, "REACTOR_INIT"

    invoke-direct {v0, v2, v1}, Lk/a/b/a/d/h$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lk/a/b/a/d/h$b;->REACTOR_INIT:Lk/a/b/a/d/h$b;

    .line 2
    new-instance v0, Lk/a/b/a/d/h$b;

    const/4 v2, 0x1

    const-string v3, "REACTOR_QUIESCED"

    invoke-direct {v0, v3, v2}, Lk/a/b/a/d/h$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lk/a/b/a/d/h$b;->REACTOR_QUIESCED:Lk/a/b/a/d/h$b;

    .line 3
    new-instance v0, Lk/a/b/a/d/h$b;

    const/4 v3, 0x2

    const-string v4, "REACTOR_FINAL"

    invoke-direct {v0, v4, v3}, Lk/a/b/a/d/h$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lk/a/b/a/d/h$b;->REACTOR_FINAL:Lk/a/b/a/d/h$b;

    .line 4
    new-instance v0, Lk/a/b/a/d/h$b;

    const/4 v4, 0x3

    const-string v5, "TIMER_TASK"

    invoke-direct {v0, v5, v4}, Lk/a/b/a/d/h$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lk/a/b/a/d/h$b;->TIMER_TASK:Lk/a/b/a/d/h$b;

    .line 5
    new-instance v0, Lk/a/b/a/d/h$b;

    const/4 v5, 0x4

    const-string v6, "CONNECTION_INIT"

    invoke-direct {v0, v6, v5}, Lk/a/b/a/d/h$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lk/a/b/a/d/h$b;->CONNECTION_INIT:Lk/a/b/a/d/h$b;

    .line 6
    new-instance v0, Lk/a/b/a/d/h$b;

    const/4 v6, 0x5

    const-string v7, "CONNECTION_BOUND"

    invoke-direct {v0, v7, v6}, Lk/a/b/a/d/h$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lk/a/b/a/d/h$b;->CONNECTION_BOUND:Lk/a/b/a/d/h$b;

    .line 7
    new-instance v0, Lk/a/b/a/d/h$b;

    const/4 v7, 0x6

    const-string v8, "CONNECTION_UNBOUND"

    invoke-direct {v0, v8, v7}, Lk/a/b/a/d/h$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lk/a/b/a/d/h$b;->CONNECTION_UNBOUND:Lk/a/b/a/d/h$b;

    .line 8
    new-instance v0, Lk/a/b/a/d/h$b;

    const/4 v8, 0x7

    const-string v9, "CONNECTION_LOCAL_OPEN"

    invoke-direct {v0, v9, v8}, Lk/a/b/a/d/h$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lk/a/b/a/d/h$b;->CONNECTION_LOCAL_OPEN:Lk/a/b/a/d/h$b;

    .line 9
    new-instance v0, Lk/a/b/a/d/h$b;

    const/16 v9, 0x8

    const-string v10, "CONNECTION_REMOTE_OPEN"

    invoke-direct {v0, v10, v9}, Lk/a/b/a/d/h$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lk/a/b/a/d/h$b;->CONNECTION_REMOTE_OPEN:Lk/a/b/a/d/h$b;

    .line 10
    new-instance v0, Lk/a/b/a/d/h$b;

    const/16 v10, 0x9

    const-string v11, "CONNECTION_LOCAL_CLOSE"

    invoke-direct {v0, v11, v10}, Lk/a/b/a/d/h$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lk/a/b/a/d/h$b;->CONNECTION_LOCAL_CLOSE:Lk/a/b/a/d/h$b;

    .line 11
    new-instance v0, Lk/a/b/a/d/h$b;

    const/16 v11, 0xa

    const-string v12, "CONNECTION_REMOTE_CLOSE"

    invoke-direct {v0, v12, v11}, Lk/a/b/a/d/h$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lk/a/b/a/d/h$b;->CONNECTION_REMOTE_CLOSE:Lk/a/b/a/d/h$b;

    .line 12
    new-instance v0, Lk/a/b/a/d/h$b;

    const/16 v12, 0xb

    const-string v13, "CONNECTION_FINAL"

    invoke-direct {v0, v13, v12}, Lk/a/b/a/d/h$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lk/a/b/a/d/h$b;->CONNECTION_FINAL:Lk/a/b/a/d/h$b;

    .line 13
    new-instance v0, Lk/a/b/a/d/h$b;

    const/16 v13, 0xc

    const-string v14, "SESSION_INIT"

    invoke-direct {v0, v14, v13}, Lk/a/b/a/d/h$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lk/a/b/a/d/h$b;->SESSION_INIT:Lk/a/b/a/d/h$b;

    .line 14
    new-instance v0, Lk/a/b/a/d/h$b;

    const/16 v14, 0xd

    const-string v15, "SESSION_LOCAL_OPEN"

    invoke-direct {v0, v15, v14}, Lk/a/b/a/d/h$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lk/a/b/a/d/h$b;->SESSION_LOCAL_OPEN:Lk/a/b/a/d/h$b;

    .line 15
    new-instance v0, Lk/a/b/a/d/h$b;

    const/16 v15, 0xe

    const-string v14, "SESSION_REMOTE_OPEN"

    invoke-direct {v0, v14, v15}, Lk/a/b/a/d/h$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lk/a/b/a/d/h$b;->SESSION_REMOTE_OPEN:Lk/a/b/a/d/h$b;

    .line 16
    new-instance v0, Lk/a/b/a/d/h$b;

    const/16 v14, 0xf

    const-string v15, "SESSION_LOCAL_CLOSE"

    invoke-direct {v0, v15, v14}, Lk/a/b/a/d/h$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lk/a/b/a/d/h$b;->SESSION_LOCAL_CLOSE:Lk/a/b/a/d/h$b;

    .line 17
    new-instance v0, Lk/a/b/a/d/h$b;

    const/16 v15, 0x10

    const-string v14, "SESSION_REMOTE_CLOSE"

    invoke-direct {v0, v14, v15}, Lk/a/b/a/d/h$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lk/a/b/a/d/h$b;->SESSION_REMOTE_CLOSE:Lk/a/b/a/d/h$b;

    .line 18
    new-instance v0, Lk/a/b/a/d/h$b;

    const/16 v14, 0x11

    const-string v15, "SESSION_FINAL"

    invoke-direct {v0, v15, v14}, Lk/a/b/a/d/h$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lk/a/b/a/d/h$b;->SESSION_FINAL:Lk/a/b/a/d/h$b;

    .line 19
    new-instance v0, Lk/a/b/a/d/h$b;

    const/16 v15, 0x12

    const-string v14, "LINK_INIT"

    invoke-direct {v0, v14, v15}, Lk/a/b/a/d/h$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lk/a/b/a/d/h$b;->LINK_INIT:Lk/a/b/a/d/h$b;

    .line 20
    new-instance v0, Lk/a/b/a/d/h$b;

    const/16 v14, 0x13

    const-string v15, "LINK_LOCAL_OPEN"

    invoke-direct {v0, v15, v14}, Lk/a/b/a/d/h$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lk/a/b/a/d/h$b;->LINK_LOCAL_OPEN:Lk/a/b/a/d/h$b;

    .line 21
    new-instance v0, Lk/a/b/a/d/h$b;

    const/16 v15, 0x14

    const-string v14, "LINK_REMOTE_OPEN"

    invoke-direct {v0, v14, v15}, Lk/a/b/a/d/h$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lk/a/b/a/d/h$b;->LINK_REMOTE_OPEN:Lk/a/b/a/d/h$b;

    .line 22
    new-instance v0, Lk/a/b/a/d/h$b;

    const/16 v14, 0x15

    const-string v15, "LINK_LOCAL_DETACH"

    invoke-direct {v0, v15, v14}, Lk/a/b/a/d/h$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lk/a/b/a/d/h$b;->LINK_LOCAL_DETACH:Lk/a/b/a/d/h$b;

    .line 23
    new-instance v0, Lk/a/b/a/d/h$b;

    const-string v15, "LINK_REMOTE_DETACH"

    const/16 v14, 0x16

    invoke-direct {v0, v15, v14}, Lk/a/b/a/d/h$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lk/a/b/a/d/h$b;->LINK_REMOTE_DETACH:Lk/a/b/a/d/h$b;

    .line 24
    new-instance v0, Lk/a/b/a/d/h$b;

    const-string v14, "LINK_LOCAL_CLOSE"

    const/16 v15, 0x17

    invoke-direct {v0, v14, v15}, Lk/a/b/a/d/h$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lk/a/b/a/d/h$b;->LINK_LOCAL_CLOSE:Lk/a/b/a/d/h$b;

    .line 25
    new-instance v0, Lk/a/b/a/d/h$b;

    const-string v14, "LINK_REMOTE_CLOSE"

    const/16 v15, 0x18

    invoke-direct {v0, v14, v15}, Lk/a/b/a/d/h$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lk/a/b/a/d/h$b;->LINK_REMOTE_CLOSE:Lk/a/b/a/d/h$b;

    .line 26
    new-instance v0, Lk/a/b/a/d/h$b;

    const-string v14, "LINK_FLOW"

    const/16 v15, 0x19

    invoke-direct {v0, v14, v15}, Lk/a/b/a/d/h$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lk/a/b/a/d/h$b;->LINK_FLOW:Lk/a/b/a/d/h$b;

    .line 27
    new-instance v0, Lk/a/b/a/d/h$b;

    const-string v14, "LINK_FINAL"

    const/16 v15, 0x1a

    invoke-direct {v0, v14, v15}, Lk/a/b/a/d/h$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lk/a/b/a/d/h$b;->LINK_FINAL:Lk/a/b/a/d/h$b;

    .line 28
    new-instance v0, Lk/a/b/a/d/h$b;

    const-string v14, "DELIVERY"

    const/16 v15, 0x1b

    invoke-direct {v0, v14, v15}, Lk/a/b/a/d/h$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lk/a/b/a/d/h$b;->DELIVERY:Lk/a/b/a/d/h$b;

    .line 29
    new-instance v0, Lk/a/b/a/d/h$b;

    const-string v14, "TRANSPORT"

    const/16 v15, 0x1c

    invoke-direct {v0, v14, v15}, Lk/a/b/a/d/h$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lk/a/b/a/d/h$b;->TRANSPORT:Lk/a/b/a/d/h$b;

    .line 30
    new-instance v0, Lk/a/b/a/d/h$b;

    const-string v14, "TRANSPORT_ERROR"

    const/16 v15, 0x1d

    invoke-direct {v0, v14, v15}, Lk/a/b/a/d/h$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lk/a/b/a/d/h$b;->TRANSPORT_ERROR:Lk/a/b/a/d/h$b;

    .line 31
    new-instance v0, Lk/a/b/a/d/h$b;

    const-string v14, "TRANSPORT_HEAD_CLOSED"

    const/16 v15, 0x1e

    invoke-direct {v0, v14, v15}, Lk/a/b/a/d/h$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lk/a/b/a/d/h$b;->TRANSPORT_HEAD_CLOSED:Lk/a/b/a/d/h$b;

    .line 32
    new-instance v0, Lk/a/b/a/d/h$b;

    const-string v14, "TRANSPORT_TAIL_CLOSED"

    const/16 v15, 0x1f

    invoke-direct {v0, v14, v15}, Lk/a/b/a/d/h$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lk/a/b/a/d/h$b;->TRANSPORT_TAIL_CLOSED:Lk/a/b/a/d/h$b;

    .line 33
    new-instance v0, Lk/a/b/a/d/h$b;

    const-string v14, "TRANSPORT_CLOSED"

    const/16 v15, 0x20

    invoke-direct {v0, v14, v15}, Lk/a/b/a/d/h$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lk/a/b/a/d/h$b;->TRANSPORT_CLOSED:Lk/a/b/a/d/h$b;

    .line 34
    new-instance v0, Lk/a/b/a/d/h$b;

    const-string v14, "SELECTABLE_INIT"

    const/16 v15, 0x21

    invoke-direct {v0, v14, v15}, Lk/a/b/a/d/h$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lk/a/b/a/d/h$b;->SELECTABLE_INIT:Lk/a/b/a/d/h$b;

    .line 35
    new-instance v0, Lk/a/b/a/d/h$b;

    const-string v14, "SELECTABLE_UPDATED"

    const/16 v15, 0x22

    invoke-direct {v0, v14, v15}, Lk/a/b/a/d/h$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lk/a/b/a/d/h$b;->SELECTABLE_UPDATED:Lk/a/b/a/d/h$b;

    .line 36
    new-instance v0, Lk/a/b/a/d/h$b;

    const-string v14, "SELECTABLE_READABLE"

    const/16 v15, 0x23

    invoke-direct {v0, v14, v15}, Lk/a/b/a/d/h$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lk/a/b/a/d/h$b;->SELECTABLE_READABLE:Lk/a/b/a/d/h$b;

    .line 37
    new-instance v0, Lk/a/b/a/d/h$b;

    const-string v14, "SELECTABLE_WRITABLE"

    const/16 v15, 0x24

    invoke-direct {v0, v14, v15}, Lk/a/b/a/d/h$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lk/a/b/a/d/h$b;->SELECTABLE_WRITABLE:Lk/a/b/a/d/h$b;

    .line 38
    new-instance v0, Lk/a/b/a/d/h$b;

    const-string v14, "SELECTABLE_EXPIRED"

    const/16 v15, 0x25

    invoke-direct {v0, v14, v15}, Lk/a/b/a/d/h$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lk/a/b/a/d/h$b;->SELECTABLE_EXPIRED:Lk/a/b/a/d/h$b;

    .line 39
    new-instance v0, Lk/a/b/a/d/h$b;

    const-string v14, "SELECTABLE_ERROR"

    const/16 v15, 0x26

    invoke-direct {v0, v14, v15}, Lk/a/b/a/d/h$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lk/a/b/a/d/h$b;->SELECTABLE_ERROR:Lk/a/b/a/d/h$b;

    .line 40
    new-instance v0, Lk/a/b/a/d/h$b;

    const-string v14, "SELECTABLE_FINAL"

    const/16 v15, 0x27

    invoke-direct {v0, v14, v15}, Lk/a/b/a/d/h$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lk/a/b/a/d/h$b;->SELECTABLE_FINAL:Lk/a/b/a/d/h$b;

    .line 41
    new-instance v0, Lk/a/b/a/d/h$b$a;

    const-string v14, "NON_CORE_EVENT"

    const/16 v15, 0x28

    invoke-direct {v0, v14, v15}, Lk/a/b/a/d/h$b$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lk/a/b/a/d/h$b;->NON_CORE_EVENT:Lk/a/b/a/d/h$b;

    const/16 v14, 0x29

    new-array v14, v14, [Lk/a/b/a/d/h$b;

    .line 42
    sget-object v15, Lk/a/b/a/d/h$b;->REACTOR_INIT:Lk/a/b/a/d/h$b;

    aput-object v15, v14, v1

    sget-object v1, Lk/a/b/a/d/h$b;->REACTOR_QUIESCED:Lk/a/b/a/d/h$b;

    aput-object v1, v14, v2

    sget-object v1, Lk/a/b/a/d/h$b;->REACTOR_FINAL:Lk/a/b/a/d/h$b;

    aput-object v1, v14, v3

    sget-object v1, Lk/a/b/a/d/h$b;->TIMER_TASK:Lk/a/b/a/d/h$b;

    aput-object v1, v14, v4

    sget-object v1, Lk/a/b/a/d/h$b;->CONNECTION_INIT:Lk/a/b/a/d/h$b;

    aput-object v1, v14, v5

    sget-object v1, Lk/a/b/a/d/h$b;->CONNECTION_BOUND:Lk/a/b/a/d/h$b;

    aput-object v1, v14, v6

    sget-object v1, Lk/a/b/a/d/h$b;->CONNECTION_UNBOUND:Lk/a/b/a/d/h$b;

    aput-object v1, v14, v7

    sget-object v1, Lk/a/b/a/d/h$b;->CONNECTION_LOCAL_OPEN:Lk/a/b/a/d/h$b;

    aput-object v1, v14, v8

    sget-object v1, Lk/a/b/a/d/h$b;->CONNECTION_REMOTE_OPEN:Lk/a/b/a/d/h$b;

    aput-object v1, v14, v9

    sget-object v1, Lk/a/b/a/d/h$b;->CONNECTION_LOCAL_CLOSE:Lk/a/b/a/d/h$b;

    aput-object v1, v14, v10

    sget-object v1, Lk/a/b/a/d/h$b;->CONNECTION_REMOTE_CLOSE:Lk/a/b/a/d/h$b;

    aput-object v1, v14, v11

    sget-object v1, Lk/a/b/a/d/h$b;->CONNECTION_FINAL:Lk/a/b/a/d/h$b;

    aput-object v1, v14, v12

    sget-object v1, Lk/a/b/a/d/h$b;->SESSION_INIT:Lk/a/b/a/d/h$b;

    aput-object v1, v14, v13

    sget-object v1, Lk/a/b/a/d/h$b;->SESSION_LOCAL_OPEN:Lk/a/b/a/d/h$b;

    const/16 v2, 0xd

    aput-object v1, v14, v2

    sget-object v1, Lk/a/b/a/d/h$b;->SESSION_REMOTE_OPEN:Lk/a/b/a/d/h$b;

    const/16 v2, 0xe

    aput-object v1, v14, v2

    sget-object v1, Lk/a/b/a/d/h$b;->SESSION_LOCAL_CLOSE:Lk/a/b/a/d/h$b;

    const/16 v2, 0xf

    aput-object v1, v14, v2

    sget-object v1, Lk/a/b/a/d/h$b;->SESSION_REMOTE_CLOSE:Lk/a/b/a/d/h$b;

    const/16 v2, 0x10

    aput-object v1, v14, v2

    sget-object v1, Lk/a/b/a/d/h$b;->SESSION_FINAL:Lk/a/b/a/d/h$b;

    const/16 v2, 0x11

    aput-object v1, v14, v2

    sget-object v1, Lk/a/b/a/d/h$b;->LINK_INIT:Lk/a/b/a/d/h$b;

    const/16 v2, 0x12

    aput-object v1, v14, v2

    sget-object v1, Lk/a/b/a/d/h$b;->LINK_LOCAL_OPEN:Lk/a/b/a/d/h$b;

    const/16 v2, 0x13

    aput-object v1, v14, v2

    sget-object v1, Lk/a/b/a/d/h$b;->LINK_REMOTE_OPEN:Lk/a/b/a/d/h$b;

    const/16 v2, 0x14

    aput-object v1, v14, v2

    sget-object v1, Lk/a/b/a/d/h$b;->LINK_LOCAL_DETACH:Lk/a/b/a/d/h$b;

    const/16 v2, 0x15

    aput-object v1, v14, v2

    sget-object v1, Lk/a/b/a/d/h$b;->LINK_REMOTE_DETACH:Lk/a/b/a/d/h$b;

    const/16 v2, 0x16

    aput-object v1, v14, v2

    sget-object v1, Lk/a/b/a/d/h$b;->LINK_LOCAL_CLOSE:Lk/a/b/a/d/h$b;

    const/16 v2, 0x17

    aput-object v1, v14, v2

    sget-object v1, Lk/a/b/a/d/h$b;->LINK_REMOTE_CLOSE:Lk/a/b/a/d/h$b;

    const/16 v2, 0x18

    aput-object v1, v14, v2

    sget-object v1, Lk/a/b/a/d/h$b;->LINK_FLOW:Lk/a/b/a/d/h$b;

    const/16 v2, 0x19

    aput-object v1, v14, v2

    sget-object v1, Lk/a/b/a/d/h$b;->LINK_FINAL:Lk/a/b/a/d/h$b;

    const/16 v2, 0x1a

    aput-object v1, v14, v2

    sget-object v1, Lk/a/b/a/d/h$b;->DELIVERY:Lk/a/b/a/d/h$b;

    const/16 v2, 0x1b

    aput-object v1, v14, v2

    sget-object v1, Lk/a/b/a/d/h$b;->TRANSPORT:Lk/a/b/a/d/h$b;

    const/16 v2, 0x1c

    aput-object v1, v14, v2

    sget-object v1, Lk/a/b/a/d/h$b;->TRANSPORT_ERROR:Lk/a/b/a/d/h$b;

    const/16 v2, 0x1d

    aput-object v1, v14, v2

    sget-object v1, Lk/a/b/a/d/h$b;->TRANSPORT_HEAD_CLOSED:Lk/a/b/a/d/h$b;

    const/16 v2, 0x1e

    aput-object v1, v14, v2

    sget-object v1, Lk/a/b/a/d/h$b;->TRANSPORT_TAIL_CLOSED:Lk/a/b/a/d/h$b;

    const/16 v2, 0x1f

    aput-object v1, v14, v2

    sget-object v1, Lk/a/b/a/d/h$b;->TRANSPORT_CLOSED:Lk/a/b/a/d/h$b;

    const/16 v2, 0x20

    aput-object v1, v14, v2

    sget-object v1, Lk/a/b/a/d/h$b;->SELECTABLE_INIT:Lk/a/b/a/d/h$b;

    const/16 v2, 0x21

    aput-object v1, v14, v2

    sget-object v1, Lk/a/b/a/d/h$b;->SELECTABLE_UPDATED:Lk/a/b/a/d/h$b;

    const/16 v2, 0x22

    aput-object v1, v14, v2

    sget-object v1, Lk/a/b/a/d/h$b;->SELECTABLE_READABLE:Lk/a/b/a/d/h$b;

    const/16 v2, 0x23

    aput-object v1, v14, v2

    sget-object v1, Lk/a/b/a/d/h$b;->SELECTABLE_WRITABLE:Lk/a/b/a/d/h$b;

    const/16 v2, 0x24

    aput-object v1, v14, v2

    sget-object v1, Lk/a/b/a/d/h$b;->SELECTABLE_EXPIRED:Lk/a/b/a/d/h$b;

    const/16 v2, 0x25

    aput-object v1, v14, v2

    sget-object v1, Lk/a/b/a/d/h$b;->SELECTABLE_ERROR:Lk/a/b/a/d/h$b;

    const/16 v2, 0x26

    aput-object v1, v14, v2

    sget-object v1, Lk/a/b/a/d/h$b;->SELECTABLE_FINAL:Lk/a/b/a/d/h$b;

    const/16 v2, 0x27

    aput-object v1, v14, v2

    const/16 v1, 0x28

    aput-object v0, v14, v1

    sput-object v14, Lk/a/b/a/d/h$b;->$VALUES:[Lk/a/b/a/d/h$b;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;ILk/a/b/a/d/h$a;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2}, Lk/a/b/a/d/h$b;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lk/a/b/a/d/h$b;
    .locals 1

    .line 1
    const-class v0, Lk/a/b/a/d/h$b;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lk/a/b/a/d/h$b;

    return-object p0
.end method

.method public static values()[Lk/a/b/a/d/h$b;
    .locals 1

    .line 1
    sget-object v0, Lk/a/b/a/d/h$b;->$VALUES:[Lk/a/b/a/d/h$b;

    invoke-virtual {v0}, [Lk/a/b/a/d/h$b;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lk/a/b/a/d/h$b;

    return-object v0
.end method


# virtual methods
.method public isValid()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
