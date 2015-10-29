.class public Lcom/iwifi/sdk/protocol/impl/UpdateSsidListConn;
.super Lcom/iwifi/sdk/tools/HttpUtil;
.source "UpdateSsidListConn.java"


# instance fields
.field m_iCallback:Lcom/iwifi/sdk/protocol/UpdateSsidListInterface;


# direct methods
.method public constructor <init>(Lcom/iwifi/sdk/protocol/UpdateSsidListInterface;)V
    .locals 4
    .param p1, "callback"    # Lcom/iwifi/sdk/protocol/UpdateSsidListInterface;

    .prologue
    .line 19
    invoke-direct {p0}, Lcom/iwifi/sdk/tools/HttpUtil;-><init>()V

    .line 21
    iput-object p1, p0, Lcom/iwifi/sdk/protocol/impl/UpdateSsidListConn;->m_iCallback:Lcom/iwifi/sdk/protocol/UpdateSsidListInterface;

    .line 22
    const-string v0, "http://www.hichinawifi.com/wifiapp/"

    const-string v1, "ssidlists"

    const-string v2, ""

    const/4 v3, 0x0

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/iwifi/sdk/protocol/impl/UpdateSsidListConn;->asyncConnect(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    .line 23
    return-void
.end method


# virtual methods
.method public taskexecute(Ljava/lang/String;Z)V
    .locals 4
    .param p1, "response"    # Ljava/lang/String;
    .param p2, "bTimeOut"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 28
    if-nez p2, :cond_1

    if-eqz p1, :cond_1

    .line 31
    :try_start_0
    invoke-static {p1}, Lcom/iwifi/sdk/parser/SsidListParser;->SsidList(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 32
    .local v1, "result":Ljava/lang/Object;
    const-string v2, "ok"

    invoke-virtual {p1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 33
    iget-object v2, p0, Lcom/iwifi/sdk/protocol/impl/UpdateSsidListConn;->m_iCallback:Lcom/iwifi/sdk/protocol/UpdateSsidListInterface;

    invoke-interface {v2, p1}, Lcom/iwifi/sdk/protocol/UpdateSsidListInterface;->updateSsidErr(Ljava/lang/String;)V

    .line 43
    .end local v1    # "result":Ljava/lang/Object;
    :goto_0
    return-void

    .line 35
    .restart local v1    # "result":Ljava/lang/Object;
    :cond_0
    iget-object v2, p0, Lcom/iwifi/sdk/protocol/impl/UpdateSsidListConn;->m_iCallback:Lcom/iwifi/sdk/protocol/UpdateSsidListInterface;

    check-cast v1, Lcom/iwifi/sdk/data/SsidList;

    .end local v1    # "result":Ljava/lang/Object;
    invoke-interface {v2, v1}, Lcom/iwifi/sdk/protocol/UpdateSsidListInterface;->updateSsidListSucc(Lcom/iwifi/sdk/data/SsidList;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 37
    :catch_0
    move-exception v0

    .line 38
    .local v0, "e":Ljava/lang/Exception;
    iget-object v2, p0, Lcom/iwifi/sdk/protocol/impl/UpdateSsidListConn;->m_iCallback:Lcom/iwifi/sdk/protocol/UpdateSsidListInterface;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/iwifi/sdk/protocol/UpdateSsidListInterface;->updateSsidErr(Ljava/lang/String;)V

    goto :goto_0

    .line 41
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_1
    iget-object v2, p0, Lcom/iwifi/sdk/protocol/impl/UpdateSsidListConn;->m_iCallback:Lcom/iwifi/sdk/protocol/UpdateSsidListInterface;

    const-string v3, ""

    invoke-interface {v2, v3}, Lcom/iwifi/sdk/protocol/UpdateSsidListInterface;->updateSsidErr(Ljava/lang/String;)V

    goto :goto_0
.end method
