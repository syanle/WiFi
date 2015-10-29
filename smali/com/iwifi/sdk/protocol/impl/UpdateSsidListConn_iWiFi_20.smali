.class public Lcom/iwifi/sdk/protocol/impl/UpdateSsidListConn_iWiFi_20;
.super Lcom/iwifi/sdk/tools/HttpUtil;
.source "UpdateSsidListConn_iWiFi_20.java"


# instance fields
.field m_iCallback:Lcom/iwifi/sdk/protocol/UpdateSsidListInterface;


# direct methods
.method public constructor <init>(Lcom/iwifi/sdk/protocol/UpdateSsidListInterface;)V
    .locals 4
    .param p1, "callback"    # Lcom/iwifi/sdk/protocol/UpdateSsidListInterface;

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/iwifi/sdk/tools/HttpUtil;-><init>()V

    .line 26
    iput-object p1, p0, Lcom/iwifi/sdk/protocol/impl/UpdateSsidListConn_iWiFi_20;->m_iCallback:Lcom/iwifi/sdk/protocol/UpdateSsidListInterface;

    .line 27
    sget-object v0, Lcom/iwifi/sdk/protocol/impl/UpdateSsidListConn_iWiFi_20;->iWiFi20_WIFI_HOST:Ljava/lang/String;

    const-string v1, "platform10/ssidlists.htm"

    const-string v2, ""

    const/4 v3, 0x0

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/iwifi/sdk/protocol/impl/UpdateSsidListConn_iWiFi_20;->asyncConnect(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    .line 28
    return-void
.end method


# virtual methods
.method public taskexecute(Ljava/lang/String;Z)V
    .locals 7
    .param p1, "response"    # Ljava/lang/String;
    .param p2, "bTimeOut"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 33
    if-nez p2, :cond_1

    if-eqz p1, :cond_1

    .line 36
    :try_start_0
    const-string v3, "OK"

    invoke-virtual {p1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 37
    iget-object v3, p0, Lcom/iwifi/sdk/protocol/impl/UpdateSsidListConn_iWiFi_20;->m_iCallback:Lcom/iwifi/sdk/protocol/UpdateSsidListInterface;

    invoke-interface {v3, p1}, Lcom/iwifi/sdk/protocol/UpdateSsidListInterface;->updateSsidErr(Ljava/lang/String;)V

    .line 50
    :goto_0
    return-void

    .line 39
    :cond_0
    const-string v3, "result"

    const-string v4, "message"

    const-string v5, "data"

    const-string v6, "version"

    invoke-static {p1, v3, v4, v5, v6}, Lcom/iwifi/sdk/parser/SsidListParser;->SsidList(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    .line 40
    .local v2, "result":Ljava/lang/Object;
    iget-object v3, p0, Lcom/iwifi/sdk/protocol/impl/UpdateSsidListConn_iWiFi_20;->m_iCallback:Lcom/iwifi/sdk/protocol/UpdateSsidListInterface;

    check-cast v2, Lcom/iwifi/sdk/data/SsidList;

    .end local v2    # "result":Ljava/lang/Object;
    invoke-interface {v3, v2}, Lcom/iwifi/sdk/protocol/UpdateSsidListInterface;->updateSsidListSucc(Lcom/iwifi/sdk/data/SsidList;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 42
    :catch_0
    move-exception v0

    .line 43
    .local v0, "e":Ljava/lang/Exception;
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "{\"result\":\"FAIL\",\"message\":\"Json error :"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\"}"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 44
    .local v1, "err":Ljava/lang/String;
    iget-object v3, p0, Lcom/iwifi/sdk/protocol/impl/UpdateSsidListConn_iWiFi_20;->m_iCallback:Lcom/iwifi/sdk/protocol/UpdateSsidListInterface;

    invoke-interface {v3, v1}, Lcom/iwifi/sdk/protocol/UpdateSsidListInterface;->updateSsidErr(Ljava/lang/String;)V

    goto :goto_0

    .line 47
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v1    # "err":Ljava/lang/String;
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "{\"result\":\"FAIL\",\"message\":\""

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1, p2}, Lcom/iwifi/sdk/tools/ErrDeal;->getConnErr(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\"}"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 48
    .restart local v1    # "err":Ljava/lang/String;
    iget-object v3, p0, Lcom/iwifi/sdk/protocol/impl/UpdateSsidListConn_iWiFi_20;->m_iCallback:Lcom/iwifi/sdk/protocol/UpdateSsidListInterface;

    invoke-interface {v3, v1}, Lcom/iwifi/sdk/protocol/UpdateSsidListInterface;->updateSsidErr(Ljava/lang/String;)V

    goto :goto_0
.end method
