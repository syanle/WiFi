.class public Lcom/pubinfo/freewifialliance/protocol/impl/HeartHitConn;
.super Lcom/pubinfo/wifi_core/core/net/HttpUtil;
.source "HeartHitConn.java"


# instance fields
.field private m_iCallback:Lcom/pubinfo/freewifialliance/protocol/HeartHitInterface;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Lcom/pubinfo/freewifialliance/protocol/HeartHitInterface;)V
    .locals 5
    .param p1, "phone"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .param p3, "mac"    # Ljava/lang/String;
    .param p4, "devtype"    # I
    .param p5, "devId"    # Ljava/lang/String;
    .param p6, "ssid"    # Ljava/lang/String;
    .param p7, "callback"    # Lcom/pubinfo/freewifialliance/protocol/HeartHitInterface;

    .prologue
    .line 16
    invoke-direct {p0}, Lcom/pubinfo/wifi_core/core/net/HttpUtil;-><init>()V

    .line 17
    iput-object p7, p0, Lcom/pubinfo/freewifialliance/protocol/impl/HeartHitConn;->m_iCallback:Lcom/pubinfo/freewifialliance/protocol/HeartHitInterface;

    .line 18
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 19
    .local v0, "paramList":Ljava/util/List;, "Ljava/util/List<Lcom/pubinfo/wifi_core/core/data/DataObject;>;"
    new-instance v1, Lcom/pubinfo/wifi_core/core/data/DataObject;

    const-string v2, "phone"

    invoke-direct {v1, v2, p1}, Lcom/pubinfo/wifi_core/core/data/DataObject;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 20
    new-instance v1, Lcom/pubinfo/wifi_core/core/data/DataObject;

    const-string v2, "data"

    invoke-direct {v1, v2, p2}, Lcom/pubinfo/wifi_core/core/data/DataObject;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 21
    new-instance v1, Lcom/pubinfo/wifi_core/core/data/DataObject;

    const-string v2, "mac"

    invoke-direct {v1, v2, p3}, Lcom/pubinfo/wifi_core/core/data/DataObject;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 22
    new-instance v1, Lcom/pubinfo/wifi_core/core/data/DataObject;

    const-string v2, "devtype"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {p4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/pubinfo/wifi_core/core/data/DataObject;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 23
    new-instance v1, Lcom/pubinfo/wifi_core/core/data/DataObject;

    const-string v2, "devId"

    invoke-direct {v1, v2, p5}, Lcom/pubinfo/wifi_core/core/data/DataObject;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 24
    new-instance v1, Lcom/pubinfo/wifi_core/core/data/DataObject;

    const-string v2, "ssid"

    invoke-direct {v1, v2, p6}, Lcom/pubinfo/wifi_core/core/data/DataObject;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 25
    const-string v1, "http://115.239.134.129/wifiapp/"

    const-string v2, "chinanetheartbeat"

    const-string v3, ""

    invoke-virtual {p0, v1, v2, v3, v0}, Lcom/pubinfo/freewifialliance/protocol/impl/HeartHitConn;->asyncConnect(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    .line 26
    return-void
.end method


# virtual methods
.method public taskexecute(Ljava/lang/String;Z)V
    .locals 3
    .param p1, "response"    # Ljava/lang/String;
    .param p2, "bTimeOut"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 31
    if-nez p2, :cond_1

    if-eqz p1, :cond_1

    .line 34
    :try_start_0
    invoke-static {p1}, Lcom/pubinfo/freewifialliance/parser/HeartHitParser;->HeartHit(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 35
    .local v1, "result":Ljava/lang/Object;
    const-string v2, "ok"

    invoke-virtual {p1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 36
    iget-object v2, p0, Lcom/pubinfo/freewifialliance/protocol/impl/HeartHitConn;->m_iCallback:Lcom/pubinfo/freewifialliance/protocol/HeartHitInterface;

    invoke-interface {v2}, Lcom/pubinfo/freewifialliance/protocol/HeartHitInterface;->HeartHitErr()V

    .line 46
    .end local v1    # "result":Ljava/lang/Object;
    :goto_0
    return-void

    .line 38
    .restart local v1    # "result":Ljava/lang/Object;
    :cond_0
    iget-object v2, p0, Lcom/pubinfo/freewifialliance/protocol/impl/HeartHitConn;->m_iCallback:Lcom/pubinfo/freewifialliance/protocol/HeartHitInterface;

    invoke-interface {v2}, Lcom/pubinfo/freewifialliance/protocol/HeartHitInterface;->HeartHitSucc()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 40
    .end local v1    # "result":Ljava/lang/Object;
    :catch_0
    move-exception v0

    .line 41
    .local v0, "e":Ljava/lang/Exception;
    iget-object v2, p0, Lcom/pubinfo/freewifialliance/protocol/impl/HeartHitConn;->m_iCallback:Lcom/pubinfo/freewifialliance/protocol/HeartHitInterface;

    invoke-interface {v2}, Lcom/pubinfo/freewifialliance/protocol/HeartHitInterface;->HeartHitErr()V

    goto :goto_0

    .line 44
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_1
    iget-object v2, p0, Lcom/pubinfo/freewifialliance/protocol/impl/HeartHitConn;->m_iCallback:Lcom/pubinfo/freewifialliance/protocol/HeartHitInterface;

    invoke-interface {v2}, Lcom/pubinfo/freewifialliance/protocol/HeartHitInterface;->HeartHitErr()V

    goto :goto_0
.end method
