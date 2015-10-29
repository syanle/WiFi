.class public Lcom/pubinfo/freewifialliance/protocol/impl/DoNetTypeConn;
.super Lcom/pubinfo/wifi_core/core/net/HttpUtil;
.source "DoNetTypeConn.java"


# instance fields
.field private m_iCallback:Lcom/pubinfo/freewifialliance/protocol/DoNetTypeInterface;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/pubinfo/freewifialliance/protocol/DoNetTypeInterface;)V
    .locals 4
    .param p1, "ip"    # Ljava/lang/String;
    .param p2, "callback"    # Lcom/pubinfo/freewifialliance/protocol/DoNetTypeInterface;

    .prologue
    .line 19
    invoke-direct {p0}, Lcom/pubinfo/wifi_core/core/net/HttpUtil;-><init>()V

    .line 20
    iput-object p2, p0, Lcom/pubinfo/freewifialliance/protocol/impl/DoNetTypeConn;->m_iCallback:Lcom/pubinfo/freewifialliance/protocol/DoNetTypeInterface;

    .line 21
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 22
    .local v0, "paramList":Ljava/util/List;, "Ljava/util/List<Lcom/pubinfo/wifi_core/core/data/DataObject;>;"
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "http://"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":2060/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "api-hichina/info"

    const-string v3, ""

    invoke-virtual {p0, v1, v2, v3, v0}, Lcom/pubinfo/freewifialliance/protocol/impl/DoNetTypeConn;->asyncConnect(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    .line 23
    return-void
.end method


# virtual methods
.method public taskexecute(Ljava/lang/String;Z)V
    .locals 2
    .param p1, "response"    # Ljava/lang/String;
    .param p2, "bTimeOut"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 27
    if-nez p2, :cond_0

    if-eqz p1, :cond_0

    .line 29
    iget-object v0, p0, Lcom/pubinfo/freewifialliance/protocol/impl/DoNetTypeConn;->m_iCallback:Lcom/pubinfo/freewifialliance/protocol/DoNetTypeInterface;

    invoke-interface {v0}, Lcom/pubinfo/freewifialliance/protocol/DoNetTypeInterface;->doNetTypeSucc()V

    .line 33
    :goto_0
    return-void

    .line 31
    :cond_0
    iget-object v0, p0, Lcom/pubinfo/freewifialliance/protocol/impl/DoNetTypeConn;->m_iCallback:Lcom/pubinfo/freewifialliance/protocol/DoNetTypeInterface;

    invoke-static {p1, p2}, Lcom/pubinfo/wifi_core/core/util/ErrDeal;->getConnErr(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/pubinfo/freewifialliance/protocol/DoNetTypeInterface;->doNetTypeErr(Ljava/lang/String;)V

    goto :goto_0
.end method
