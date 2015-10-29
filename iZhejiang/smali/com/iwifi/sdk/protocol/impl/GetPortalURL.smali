.class public Lcom/iwifi/sdk/protocol/impl/GetPortalURL;
.super Lcom/iwifi/sdk/tools/HttpUtil;
.source "GetPortalURL.java"


# instance fields
.field private m_iCallback:Lcom/iwifi/sdk/protocol/GetPortalUrlCallback;


# direct methods
.method public constructor <init>(Lcom/iwifi/sdk/protocol/GetPortalUrlCallback;)V
    .locals 4
    .param p1, "callback"    # Lcom/iwifi/sdk/protocol/GetPortalUrlCallback;

    .prologue
    .line 15
    invoke-direct {p0}, Lcom/iwifi/sdk/tools/HttpUtil;-><init>()V

    .line 16
    iput-object p1, p0, Lcom/iwifi/sdk/protocol/impl/GetPortalURL;->m_iCallback:Lcom/iwifi/sdk/protocol/GetPortalUrlCallback;

    .line 17
    const-string v0, "http://www.baidu.com"

    const-string v1, "getPortalUrl"

    const-string v2, ""

    const/4 v3, 0x0

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/iwifi/sdk/protocol/impl/GetPortalURL;->asyncConnect(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    .line 18
    return-void
.end method


# virtual methods
.method public generateJson(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "result"    # Ljava/lang/String;
    .param p2, "message"    # Ljava/lang/String;
    .param p3, "portalUrl"    # Ljava/lang/String;

    .prologue
    .line 21
    if-nez p1, :cond_0

    .line 22
    const-string p1, ""

    .line 24
    :cond_0
    if-nez p2, :cond_1

    .line 25
    const-string p2, ""

    .line 27
    :cond_1
    if-nez p3, :cond_2

    .line 28
    const-string p3, ""

    .line 30
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "{\"result\":\""

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\",\"message\":\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\",\"portal_url\":\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\"}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

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
    .line 36
    if-nez p2, :cond_1

    if-eqz p1, :cond_1

    .line 38
    :try_start_0
    const-string v4, "result"

    const-string v5, "message"

    const/4 v6, 0x0

    invoke-static {p1, v4, v5, v6}, Lcom/iwifi/sdk/parser/GetCodeResultParser;->GetCodeResultList(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/iwifi/sdk/data/CodeResult;

    move-result-object v0

    .line 40
    .local v0, "codeRes":Lcom/iwifi/sdk/data/CodeResult;
    invoke-virtual {v0}, Lcom/iwifi/sdk/data/CodeResult;->getResult()Ljava/lang/String;

    move-result-object v4

    const-string v5, "OK"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 41
    const-string v4, "OK"

    const-string v5, "SUCCESS"

    invoke-virtual {v0}, Lcom/iwifi/sdk/data/CodeResult;->getMsg()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v4, v5, v6}, Lcom/iwifi/sdk/protocol/impl/GetPortalURL;->generateJson(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 45
    .local v3, "result":Ljava/lang/String;
    :goto_0
    iget-object v4, p0, Lcom/iwifi/sdk/protocol/impl/GetPortalURL;->m_iCallback:Lcom/iwifi/sdk/protocol/GetPortalUrlCallback;

    invoke-interface {v4, v3}, Lcom/iwifi/sdk/protocol/GetPortalUrlCallback;->getPortalUrlCallback(Ljava/lang/String;)V

    .line 54
    .end local v0    # "codeRes":Lcom/iwifi/sdk/data/CodeResult;
    .end local v3    # "result":Ljava/lang/String;
    :goto_1
    return-void

    .line 43
    .restart local v0    # "codeRes":Lcom/iwifi/sdk/data/CodeResult;
    :cond_0
    const-string v4, "FAIL"

    invoke-virtual {v0}, Lcom/iwifi/sdk/data/CodeResult;->getMsg()Ljava/lang/String;

    move-result-object v5

    const-string v6, ""

    invoke-virtual {p0, v4, v5, v6}, Lcom/iwifi/sdk/protocol/impl/GetPortalURL;->generateJson(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .restart local v3    # "result":Ljava/lang/String;
    goto :goto_0

    .line 46
    .end local v0    # "codeRes":Lcom/iwifi/sdk/data/CodeResult;
    .end local v3    # "result":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 47
    .local v1, "e":Ljava/lang/Exception;
    const-string v4, "FAIL"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Json error :"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, ""

    invoke-virtual {p0, v4, v5, v6}, Lcom/iwifi/sdk/protocol/impl/GetPortalURL;->generateJson(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 48
    .local v2, "err":Ljava/lang/String;
    iget-object v4, p0, Lcom/iwifi/sdk/protocol/impl/GetPortalURL;->m_iCallback:Lcom/iwifi/sdk/protocol/GetPortalUrlCallback;

    invoke-interface {v4, v2}, Lcom/iwifi/sdk/protocol/GetPortalUrlCallback;->getPortalUrlCallback(Ljava/lang/String;)V

    goto :goto_1

    .line 51
    .end local v1    # "e":Ljava/lang/Exception;
    .end local v2    # "err":Ljava/lang/String;
    :cond_1
    const-string v4, "FAIL"

    invoke-static {p1, p2}, Lcom/iwifi/sdk/tools/ErrDeal;->getConnErr(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v5

    const-string v6, ""

    invoke-virtual {p0, v4, v5, v6}, Lcom/iwifi/sdk/protocol/impl/GetPortalURL;->generateJson(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 52
    .restart local v2    # "err":Ljava/lang/String;
    iget-object v4, p0, Lcom/iwifi/sdk/protocol/impl/GetPortalURL;->m_iCallback:Lcom/iwifi/sdk/protocol/GetPortalUrlCallback;

    invoke-interface {v4, v2}, Lcom/iwifi/sdk/protocol/GetPortalUrlCallback;->getPortalUrlCallback(Ljava/lang/String;)V

    goto :goto_1
.end method
