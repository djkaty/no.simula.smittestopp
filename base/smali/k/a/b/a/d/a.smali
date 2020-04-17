.class public Lk/a/b/a/d/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lk/a/b/a/d/d;


# instance fields
.field public children:Ljava/util/LinkedHashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashSet<",
            "Lk/a/b/a/d/l;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v0, p0, Lk/a/b/a/d/a;->children:Ljava/util/LinkedHashSet;

    return-void
.end method

.method public static getHandler(Lk/a/b/a/d/j;)Lk/a/b/a/d/l;
    .locals 1

    .line 4
    const-class v0, Lk/a/b/a/d/l;

    invoke-interface {p0}, Lk/a/b/a/d/j;->q()Lk/a/b/a/d/u;

    move-result-object p0

    check-cast p0, Lk/a/b/a/d/g0/r;

    .line 5
    iget-object p0, p0, Lk/a/b/a/d/g0/r;->a:Ljava/util/Map;

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .line 6
    check-cast p0, Lk/a/b/a/d/l;

    return-object p0
.end method

.method public static getHandler(Lk/a/b/a/d/u;)Lk/a/b/a/d/l;
    .locals 1

    .line 1
    const-class v0, Lk/a/b/a/d/l;

    check-cast p0, Lk/a/b/a/d/g0/r;

    .line 2
    iget-object p0, p0, Lk/a/b/a/d/g0/r;->a:Ljava/util/Map;

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .line 3
    check-cast p0, Lk/a/b/a/d/l;

    return-object p0
.end method

.method public static setHandler(Lk/a/b/a/d/j;Lk/a/b/a/d/l;)V
    .locals 1

    .line 3
    invoke-interface {p0}, Lk/a/b/a/d/j;->q()Lk/a/b/a/d/u;

    move-result-object p0

    const-class v0, Lk/a/b/a/d/l;

    check-cast p0, Lk/a/b/a/d/g0/r;

    .line 4
    iget-object p0, p0, Lk/a/b/a/d/g0/r;->a:Ljava/util/Map;

    invoke-interface {p0, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static setHandler(Lk/a/b/a/d/u;Lk/a/b/a/d/l;)V
    .locals 1

    .line 1
    const-class v0, Lk/a/b/a/d/l;

    check-cast p0, Lk/a/b/a/d/g0/r;

    .line 2
    iget-object p0, p0, Lk/a/b/a/d/g0/r;->a:Ljava/util/Map;

    invoke-interface {p0, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public add(Lk/a/b/a/d/l;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lk/a/b/a/d/a;->children:Ljava/util/LinkedHashSet;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public children()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Lk/a/b/a/d/l;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lk/a/b/a/d/a;->children:Ljava/util/LinkedHashSet;

    invoke-virtual {v0}, Ljava/util/LinkedHashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public handle(Lk/a/b/a/d/h;)V
    .locals 1

    .line 1
    check-cast p1, Lk/a/b/a/d/g0/g;

    invoke-virtual {p1}, Lk/a/b/a/d/g0/g;->w()Lk/a/b/a/d/h$b;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_0

    .line 2
    :pswitch_0
    invoke-virtual {p0, p1}, Lk/a/b/a/d/a;->onUnhandled(Lk/a/b/a/d/h;)V

    goto/16 :goto_0

    .line 3
    :pswitch_1
    invoke-virtual {p0, p1}, Lk/a/b/a/d/a;->onTimerTask(Lk/a/b/a/d/h;)V

    goto/16 :goto_0

    .line 4
    :pswitch_2
    invoke-virtual {p0, p1}, Lk/a/b/a/d/a;->onSelectableWritable(Lk/a/b/a/d/h;)V

    goto/16 :goto_0

    .line 5
    :pswitch_3
    invoke-virtual {p0, p1}, Lk/a/b/a/d/a;->onSelectableWritable(Lk/a/b/a/d/h;)V

    goto/16 :goto_0

    .line 6
    :pswitch_4
    invoke-virtual {p0, p1}, Lk/a/b/a/d/a;->onSelectableReadable(Lk/a/b/a/d/h;)V

    goto/16 :goto_0

    .line 7
    :pswitch_5
    invoke-virtual {p0, p1}, Lk/a/b/a/d/a;->onSelectableInit(Lk/a/b/a/d/h;)V

    goto/16 :goto_0

    .line 8
    :pswitch_6
    invoke-virtual {p0, p1}, Lk/a/b/a/d/a;->onSelectableFinal(Lk/a/b/a/d/h;)V

    goto/16 :goto_0

    .line 9
    :pswitch_7
    invoke-virtual {p0, p1}, Lk/a/b/a/d/a;->onSelectableExpired(Lk/a/b/a/d/h;)V

    goto/16 :goto_0

    .line 10
    :pswitch_8
    invoke-virtual {p0, p1}, Lk/a/b/a/d/a;->onSelectableError(Lk/a/b/a/d/h;)V

    goto/16 :goto_0

    .line 11
    :pswitch_9
    invoke-virtual {p0, p1}, Lk/a/b/a/d/a;->onReactorInit(Lk/a/b/a/d/h;)V

    goto/16 :goto_0

    .line 12
    :pswitch_a
    invoke-virtual {p0, p1}, Lk/a/b/a/d/a;->onReactorQuiesced(Lk/a/b/a/d/h;)V

    goto/16 :goto_0

    .line 13
    :pswitch_b
    invoke-virtual {p0, p1}, Lk/a/b/a/d/a;->onReactorFinal(Lk/a/b/a/d/h;)V

    goto/16 :goto_0

    .line 14
    :pswitch_c
    invoke-virtual {p0, p1}, Lk/a/b/a/d/a;->onTransportClosed(Lk/a/b/a/d/h;)V

    goto/16 :goto_0

    .line 15
    :pswitch_d
    invoke-virtual {p0, p1}, Lk/a/b/a/d/a;->onTransportTailClosed(Lk/a/b/a/d/h;)V

    goto/16 :goto_0

    .line 16
    :pswitch_e
    invoke-virtual {p0, p1}, Lk/a/b/a/d/a;->onTransportHeadClosed(Lk/a/b/a/d/h;)V

    goto/16 :goto_0

    .line 17
    :pswitch_f
    invoke-virtual {p0, p1}, Lk/a/b/a/d/a;->onTransportError(Lk/a/b/a/d/h;)V

    goto/16 :goto_0

    .line 18
    :pswitch_10
    invoke-virtual {p0, p1}, Lk/a/b/a/d/a;->onTransport(Lk/a/b/a/d/h;)V

    goto/16 :goto_0

    .line 19
    :pswitch_11
    invoke-virtual {p0, p1}, Lk/a/b/a/d/a;->onDelivery(Lk/a/b/a/d/h;)V

    goto/16 :goto_0

    .line 20
    :pswitch_12
    invoke-virtual {p0, p1}, Lk/a/b/a/d/a;->onLinkFinal(Lk/a/b/a/d/h;)V

    goto/16 :goto_0

    .line 21
    :pswitch_13
    invoke-virtual {p0, p1}, Lk/a/b/a/d/a;->onLinkFlow(Lk/a/b/a/d/h;)V

    goto :goto_0

    .line 22
    :pswitch_14
    invoke-virtual {p0, p1}, Lk/a/b/a/d/a;->onLinkRemoteClose(Lk/a/b/a/d/h;)V

    goto :goto_0

    .line 23
    :pswitch_15
    invoke-virtual {p0, p1}, Lk/a/b/a/d/a;->onLinkLocalClose(Lk/a/b/a/d/h;)V

    goto :goto_0

    .line 24
    :pswitch_16
    invoke-virtual {p0, p1}, Lk/a/b/a/d/a;->onLinkRemoteDetach(Lk/a/b/a/d/h;)V

    goto :goto_0

    .line 25
    :pswitch_17
    invoke-virtual {p0, p1}, Lk/a/b/a/d/a;->onLinkLocalDetach(Lk/a/b/a/d/h;)V

    goto :goto_0

    .line 26
    :pswitch_18
    invoke-virtual {p0, p1}, Lk/a/b/a/d/a;->onLinkRemoteOpen(Lk/a/b/a/d/h;)V

    goto :goto_0

    .line 27
    :pswitch_19
    invoke-virtual {p0, p1}, Lk/a/b/a/d/a;->onLinkLocalOpen(Lk/a/b/a/d/h;)V

    goto :goto_0

    .line 28
    :pswitch_1a
    invoke-virtual {p0, p1}, Lk/a/b/a/d/a;->onLinkInit(Lk/a/b/a/d/h;)V

    goto :goto_0

    .line 29
    :pswitch_1b
    invoke-virtual {p0, p1}, Lk/a/b/a/d/a;->onSessionFinal(Lk/a/b/a/d/h;)V

    goto :goto_0

    .line 30
    :pswitch_1c
    invoke-virtual {p0, p1}, Lk/a/b/a/d/a;->onSessionRemoteClose(Lk/a/b/a/d/h;)V

    goto :goto_0

    .line 31
    :pswitch_1d
    invoke-virtual {p0, p1}, Lk/a/b/a/d/a;->onSessionLocalClose(Lk/a/b/a/d/h;)V

    goto :goto_0

    .line 32
    :pswitch_1e
    invoke-virtual {p0, p1}, Lk/a/b/a/d/a;->onSessionRemoteOpen(Lk/a/b/a/d/h;)V

    goto :goto_0

    .line 33
    :pswitch_1f
    invoke-virtual {p0, p1}, Lk/a/b/a/d/a;->onSessionLocalOpen(Lk/a/b/a/d/h;)V

    goto :goto_0

    .line 34
    :pswitch_20
    invoke-virtual {p0, p1}, Lk/a/b/a/d/a;->onSessionInit(Lk/a/b/a/d/h;)V

    goto :goto_0

    .line 35
    :pswitch_21
    invoke-virtual {p0, p1}, Lk/a/b/a/d/a;->onConnectionFinal(Lk/a/b/a/d/h;)V

    goto :goto_0

    .line 36
    :pswitch_22
    invoke-virtual {p0, p1}, Lk/a/b/a/d/a;->onConnectionUnbound(Lk/a/b/a/d/h;)V

    goto :goto_0

    .line 37
    :pswitch_23
    invoke-virtual {p0, p1}, Lk/a/b/a/d/a;->onConnectionBound(Lk/a/b/a/d/h;)V

    goto :goto_0

    .line 38
    :pswitch_24
    invoke-virtual {p0, p1}, Lk/a/b/a/d/a;->onConnectionRemoteClose(Lk/a/b/a/d/h;)V

    goto :goto_0

    .line 39
    :pswitch_25
    invoke-virtual {p0, p1}, Lk/a/b/a/d/a;->onConnectionLocalClose(Lk/a/b/a/d/h;)V

    goto :goto_0

    .line 40
    :pswitch_26
    invoke-virtual {p0, p1}, Lk/a/b/a/d/a;->onConnectionRemoteOpen(Lk/a/b/a/d/h;)V

    goto :goto_0

    .line 41
    :pswitch_27
    invoke-virtual {p0, p1}, Lk/a/b/a/d/a;->onConnectionLocalOpen(Lk/a/b/a/d/h;)V

    goto :goto_0

    .line 42
    :pswitch_28
    invoke-virtual {p0, p1}, Lk/a/b/a/d/a;->onConnectionInit(Lk/a/b/a/d/h;)V

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_1
        :pswitch_28
        :pswitch_23
        :pswitch_22
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_5
        :pswitch_3
        :pswitch_4
        :pswitch_2
        :pswitch_7
        :pswitch_8
        :pswitch_6
        :pswitch_0
    .end packed-switch
.end method

.method public onConnectionBound(Lk/a/b/a/d/h;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lk/a/b/a/d/a;->onUnhandled(Lk/a/b/a/d/h;)V

    return-void
.end method

.method public onConnectionFinal(Lk/a/b/a/d/h;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lk/a/b/a/d/a;->onUnhandled(Lk/a/b/a/d/h;)V

    return-void
.end method

.method public onConnectionInit(Lk/a/b/a/d/h;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lk/a/b/a/d/a;->onUnhandled(Lk/a/b/a/d/h;)V

    return-void
.end method

.method public onConnectionLocalClose(Lk/a/b/a/d/h;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lk/a/b/a/d/a;->onUnhandled(Lk/a/b/a/d/h;)V

    return-void
.end method

.method public onConnectionLocalOpen(Lk/a/b/a/d/h;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lk/a/b/a/d/a;->onUnhandled(Lk/a/b/a/d/h;)V

    return-void
.end method

.method public onConnectionRemoteClose(Lk/a/b/a/d/h;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lk/a/b/a/d/a;->onUnhandled(Lk/a/b/a/d/h;)V

    return-void
.end method

.method public onConnectionRemoteOpen(Lk/a/b/a/d/h;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lk/a/b/a/d/a;->onUnhandled(Lk/a/b/a/d/h;)V

    return-void
.end method

.method public onConnectionUnbound(Lk/a/b/a/d/h;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lk/a/b/a/d/a;->onUnhandled(Lk/a/b/a/d/h;)V

    return-void
.end method

.method public onDelivery(Lk/a/b/a/d/h;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lk/a/b/a/d/a;->onUnhandled(Lk/a/b/a/d/h;)V

    return-void
.end method

.method public onLinkFinal(Lk/a/b/a/d/h;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lk/a/b/a/d/a;->onUnhandled(Lk/a/b/a/d/h;)V

    return-void
.end method

.method public onLinkFlow(Lk/a/b/a/d/h;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lk/a/b/a/d/a;->onUnhandled(Lk/a/b/a/d/h;)V

    return-void
.end method

.method public onLinkInit(Lk/a/b/a/d/h;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lk/a/b/a/d/a;->onUnhandled(Lk/a/b/a/d/h;)V

    return-void
.end method

.method public onLinkLocalClose(Lk/a/b/a/d/h;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lk/a/b/a/d/a;->onUnhandled(Lk/a/b/a/d/h;)V

    return-void
.end method

.method public onLinkLocalDetach(Lk/a/b/a/d/h;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lk/a/b/a/d/a;->onUnhandled(Lk/a/b/a/d/h;)V

    return-void
.end method

.method public onLinkLocalOpen(Lk/a/b/a/d/h;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lk/a/b/a/d/a;->onUnhandled(Lk/a/b/a/d/h;)V

    return-void
.end method

.method public onLinkRemoteClose(Lk/a/b/a/d/h;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lk/a/b/a/d/a;->onUnhandled(Lk/a/b/a/d/h;)V

    return-void
.end method

.method public onLinkRemoteDetach(Lk/a/b/a/d/h;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lk/a/b/a/d/a;->onUnhandled(Lk/a/b/a/d/h;)V

    return-void
.end method

.method public onLinkRemoteOpen(Lk/a/b/a/d/h;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lk/a/b/a/d/a;->onUnhandled(Lk/a/b/a/d/h;)V

    return-void
.end method

.method public onReactorFinal(Lk/a/b/a/d/h;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lk/a/b/a/d/a;->onUnhandled(Lk/a/b/a/d/h;)V

    return-void
.end method

.method public onReactorInit(Lk/a/b/a/d/h;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lk/a/b/a/d/a;->onUnhandled(Lk/a/b/a/d/h;)V

    return-void
.end method

.method public onReactorQuiesced(Lk/a/b/a/d/h;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lk/a/b/a/d/a;->onUnhandled(Lk/a/b/a/d/h;)V

    return-void
.end method

.method public onSelectableError(Lk/a/b/a/d/h;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lk/a/b/a/d/a;->onUnhandled(Lk/a/b/a/d/h;)V

    return-void
.end method

.method public onSelectableExpired(Lk/a/b/a/d/h;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lk/a/b/a/d/a;->onUnhandled(Lk/a/b/a/d/h;)V

    return-void
.end method

.method public onSelectableFinal(Lk/a/b/a/d/h;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lk/a/b/a/d/a;->onUnhandled(Lk/a/b/a/d/h;)V

    return-void
.end method

.method public onSelectableInit(Lk/a/b/a/d/h;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lk/a/b/a/d/a;->onUnhandled(Lk/a/b/a/d/h;)V

    return-void
.end method

.method public onSelectableReadable(Lk/a/b/a/d/h;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lk/a/b/a/d/a;->onUnhandled(Lk/a/b/a/d/h;)V

    return-void
.end method

.method public onSelectableUpdated(Lk/a/b/a/d/h;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lk/a/b/a/d/a;->onUnhandled(Lk/a/b/a/d/h;)V

    return-void
.end method

.method public onSelectableWritable(Lk/a/b/a/d/h;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lk/a/b/a/d/a;->onUnhandled(Lk/a/b/a/d/h;)V

    return-void
.end method

.method public onSessionFinal(Lk/a/b/a/d/h;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lk/a/b/a/d/a;->onUnhandled(Lk/a/b/a/d/h;)V

    return-void
.end method

.method public onSessionInit(Lk/a/b/a/d/h;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lk/a/b/a/d/a;->onUnhandled(Lk/a/b/a/d/h;)V

    return-void
.end method

.method public onSessionLocalClose(Lk/a/b/a/d/h;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lk/a/b/a/d/a;->onUnhandled(Lk/a/b/a/d/h;)V

    return-void
.end method

.method public onSessionLocalOpen(Lk/a/b/a/d/h;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lk/a/b/a/d/a;->onUnhandled(Lk/a/b/a/d/h;)V

    return-void
.end method

.method public onSessionRemoteClose(Lk/a/b/a/d/h;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lk/a/b/a/d/a;->onUnhandled(Lk/a/b/a/d/h;)V

    return-void
.end method

.method public onSessionRemoteOpen(Lk/a/b/a/d/h;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lk/a/b/a/d/a;->onUnhandled(Lk/a/b/a/d/h;)V

    return-void
.end method

.method public onTimerTask(Lk/a/b/a/d/h;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lk/a/b/a/d/a;->onUnhandled(Lk/a/b/a/d/h;)V

    return-void
.end method

.method public onTransport(Lk/a/b/a/d/h;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lk/a/b/a/d/a;->onUnhandled(Lk/a/b/a/d/h;)V

    return-void
.end method

.method public onTransportClosed(Lk/a/b/a/d/h;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lk/a/b/a/d/a;->onUnhandled(Lk/a/b/a/d/h;)V

    return-void
.end method

.method public onTransportError(Lk/a/b/a/d/h;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lk/a/b/a/d/a;->onUnhandled(Lk/a/b/a/d/h;)V

    return-void
.end method

.method public onTransportHeadClosed(Lk/a/b/a/d/h;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lk/a/b/a/d/a;->onUnhandled(Lk/a/b/a/d/h;)V

    return-void
.end method

.method public onTransportTailClosed(Lk/a/b/a/d/h;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lk/a/b/a/d/a;->onUnhandled(Lk/a/b/a/d/h;)V

    return-void
.end method

.method public onUnhandled(Lk/a/b/a/d/h;)V
    .locals 0

    return-void
.end method
