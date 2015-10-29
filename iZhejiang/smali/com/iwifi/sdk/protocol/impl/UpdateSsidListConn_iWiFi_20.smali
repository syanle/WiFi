.class public Lcom/iwifi/sdk/protocol/impl/UpdateSsidListConn_iWiFi_20;
.super Lcom/iwifi/sdk/tools/HttpUtil;
.source "UpdateSsidListConn_iWiFi_20.java"


# instance fields
.field m_iCallback:Lcom/iwifi/sdk/protocol/UpdateSsidListInterface;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/iwifi/sdk/protocol/UpdateSsidListInterface;)V
    .locals 5
    .param p1, "appkey"    # Ljava/lang/String;
    .param p2, "secret"    # Ljava/lang/String;
    .param p3, "callback"    # Lcom/iwifi/sdk/protocol/UpdateSsidListInterface;

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/iwifi/sdk/tools/HttpUtil;-><init>()V

    .line 29
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "mobiletype=android&appkey="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "&secret="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/iwifi/sdk/protocol/impl/SDKCommonMotheds;->getSign(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 30
    .local v0, "md5sign":Ljava/lang/String;
    iput-object p3, p0, Lcom/iwifi/sdk/protocol/impl/UpdateSsidListConn_iWiFi_20;->m_iCallback:Lcom/iwifi/sdk/protocol/UpdateSsidListInterface;

    .line 31
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 32
    .local v1, "paramList":Ljava/util/List;, "Ljava/util/List<Lcom/iwifi/sdk/tools/DataObject;>;"
    new-instance v2, Lcom/iwifi/sdk/tools/DataObject;

    const-string v3, "mobiletype"

    const-string v4, "android"

    invoke-direct {v2, v3, v4}, Lcom/iwifi/sdk/tools/DataObject;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 33
    new-instance v2, Lcom/iwifi/sdk/tools/DataObject;

    const-string v3, "appkey"

    invoke-direct {v2, v3, p1}, Lcom/iwifi/sdk/tools/DataObject;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 35
    new-instance v2, Lcom/iwifi/sdk/tools/DataObject;

    const-string v3, "sign"

    invoke-direct {v2, v3, v0}, Lcom/iwifi/sdk/tools/DataObject;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 36
    sget-object v2, Lcom/iwifi/sdk/protocol/impl/UpdateSsidListConn_iWiFi_20;->iWiFi20_WIFI_HOST:Ljava/lang/String;

    const-string v3, "ssidlists.html"

    const-string v4, ""

    invoke-virtual {p0, v2, v3, v4, v1}, Lcom/iwifi/sdk/protocol/impl/UpdateSsidListConn_iWiFi_20;->asyncConnect(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    .line 37
    return-void
.end method


# virtual methods
.method public taskexecute(Ljava/lang/String;Z)V
    .locals 9
    .param p1, "response"    # Ljava/lang/String;
    .param p2, "bTimeOut"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 42
    if-nez p2, :cond_1

    if-eqz p1, :cond_1

    .line 45
    :try_start_0
    const-string v0, "OK"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 46
    iget-object v0, p0, Lcom/iwifi/sdk/protocol/impl/UpdateSsidListConn_iWiFi_20;->m_iCallback:Lcom/iwifi/sdk/protocol/UpdateSsidListInterface;

    invoke-interface {v0, p1}, Lcom/iwifi/sdk/protocol/UpdateSsidListInterface;->updateSsidErr(Ljava/lang/String;)V

    .line 59
    :goto_0
    return-void

    .line 48
    :cond_0
    const-string v1, "result"

    const-string v2, "message"

    const-string v3, "data"

    const-string v4, "code"

    const-string v5, "version"

    move-object v0, p1

    invoke-static/range {v0 .. v5}, Lcom/iwifi/sdk/parser/SsidListParser;->SsidList(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    .line 49
    .local v8, "result":Ljava/lang/Object;
    iget-object v0, p0, Lcom/iwifi/sdk/protocol/impl/UpdateSsidListConn_iWiFi_20;->m_iCallback:Lcom/iwifi/sdk/protocol/UpdateSsidListInterface;

    check-cast v8, Lcom/iwifi/sdk/data/SsidList;

    .end local v8    # "result":Ljava/lang/Object;
    invoke-interface {v0, v8}, Lcom/iwifi/sdk/protocol/UpdateSsidListInterface;->updateSsidListSucc(Lcom/iwifi/sdk/data/SsidList;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 51
    :catch_0
    move-exception v6

    .line 52
    .local v6, "e":Ljava/lang/Exception;
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "{\"result\":\"FAIL\",\"message\":\"Json error :"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\"}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 53
    .local v7, "err":Ljava/lang/String;
    iget-object v0, p0, Lcom/iwifi/sdk/protocol/impl/UpdateSsidListConn_iWiFi_20;->m_iCallback:Lcom/iwifi/sdk/protocol/UpdateSsidListInterface;

    invoke-interface {v0, v7}, Lcom/iwifi/sdk/protocol/UpdateSsidListInterface;->updateSsidErr(Ljava/lang/String;)V

    goto :goto_0

    .line 56
    .end local v6    # "e":Ljava/lang/Exception;
    .end local v7    # "err":Ljava/lang/String;
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "{\"result\":\"FAIL\",\"message\":\""

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1, p2}, Lcom/iwifi/sdk/tools/ErrDeal;->getConnErr(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\"}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 57
    .restart local v7    # "err":Ljava/lang/String;
    iget-object v0, p0, Lcom/iwifi/sdk/protocol/impl/UpdateSsidListConn_iWiFi_20;->m_iCallback:Lcom/iwifi/sdk/protocol/UpdateSsidListInterface;

    invoke-interface {v0, v7}, Lcom/iwifi/sdk/protocol/UpdateSsidListInterface;->updateSsidErr(Ljava/lang/String;)V

    goto :goto_0
.end method
