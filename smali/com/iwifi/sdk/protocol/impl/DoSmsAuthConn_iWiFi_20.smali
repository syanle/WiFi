.class public Lcom/iwifi/sdk/protocol/impl/DoSmsAuthConn_iWiFi_20;
.super Lcom/iwifi/sdk/tools/HttpUtil;
.source "DoSmsAuthConn_iWiFi_20.java"


# instance fields
.field private m_iCallback:Lcom/iwifi/sdk/protocol/DoSmsAuthInterface;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/iwifi/sdk/protocol/DoSmsAuthInterface;)V
    .locals 7
    .param p1, "phoneNumber"    # Ljava/lang/String;
    .param p2, "dev_id"    # Ljava/lang/String;
    .param p3, "terminal_mac"    # Ljava/lang/String;
    .param p4, "portal_url"    # Ljava/lang/String;
    .param p5, "callback"    # Lcom/iwifi/sdk/protocol/DoSmsAuthInterface;

    .prologue
    .line 32
    const-string v3, "APPMOBILE"

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/iwifi/sdk/protocol/impl/DoSmsAuthConn_iWiFi_20;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/iwifi/sdk/protocol/DoSmsAuthInterface;)V

    .line 33
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/iwifi/sdk/protocol/DoSmsAuthInterface;)V
    .locals 4
    .param p1, "phoneNumber"    # Ljava/lang/String;
    .param p2, "dev_id"    # Ljava/lang/String;
    .param p3, "auth_type"    # Ljava/lang/String;
    .param p4, "terminal_mac"    # Ljava/lang/String;
    .param p5, "portal_url"    # Ljava/lang/String;
    .param p6, "callback"    # Lcom/iwifi/sdk/protocol/DoSmsAuthInterface;

    .prologue
    .line 42
    invoke-direct {p0}, Lcom/iwifi/sdk/tools/HttpUtil;-><init>()V

    .line 47
    iput-object p6, p0, Lcom/iwifi/sdk/protocol/impl/DoSmsAuthConn_iWiFi_20;->m_iCallback:Lcom/iwifi/sdk/protocol/DoSmsAuthInterface;

    .line 48
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 49
    .local v0, "paramList":Ljava/util/List;, "Ljava/util/List<Lcom/iwifi/sdk/tools/DataObject;>;"
    new-instance v1, Lcom/iwifi/sdk/tools/DataObject;

    const-string v2, "auth_id"

    invoke-direct {v1, v2, p1}, Lcom/iwifi/sdk/tools/DataObject;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 50
    new-instance v1, Lcom/iwifi/sdk/tools/DataObject;

    const-string v2, "dev_id"

    invoke-direct {v1, v2, p2}, Lcom/iwifi/sdk/tools/DataObject;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 51
    new-instance v1, Lcom/iwifi/sdk/tools/DataObject;

    const-string v2, "auth_type"

    invoke-direct {v1, v2, p3}, Lcom/iwifi/sdk/tools/DataObject;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 52
    new-instance v1, Lcom/iwifi/sdk/tools/DataObject;

    const-string v2, "ter_mac"

    invoke-direct {v1, v2, p4}, Lcom/iwifi/sdk/tools/DataObject;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 53
    new-instance v1, Lcom/iwifi/sdk/tools/DataObject;

    const-string v2, "portal_url"

    invoke-direct {v1, v2, p5}, Lcom/iwifi/sdk/tools/DataObject;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 55
    sget-object v1, Lcom/iwifi/sdk/protocol/impl/DoSmsAuthConn_iWiFi_20;->iWiFi20_WIFI_HOST:Ljava/lang/String;

    const-string v2, "platform10/sendcode-p.htm"

    const-string v3, ""

    invoke-virtual {p0, v1, v2, v3, v0}, Lcom/iwifi/sdk/protocol/impl/DoSmsAuthConn_iWiFi_20;->asyncConnect(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    .line 56
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
    .line 60
    if-nez p2, :cond_1

    if-eqz p1, :cond_1

    .line 64
    :try_start_0
    const-string v4, "result"

    const-string v5, "message"

    const/4 v6, 0x0

    invoke-static {p1, v4, v5, v6}, Lcom/iwifi/sdk/parser/GetCodeResultParser;->GetCodeResultList(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/iwifi/sdk/data/CodeResult;

    move-result-object v0

    .line 65
    .local v0, "codeRes":Lcom/iwifi/sdk/data/CodeResult;
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "{\"result\":\""

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/iwifi/sdk/data/CodeResult;->getResult()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\",\"message\":\""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Lcom/iwifi/sdk/data/CodeResult;->getMsg()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\"}"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 66
    .local v3, "result":Ljava/lang/String;
    const-string v4, "OK"

    invoke-virtual {p1, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 67
    iget-object v4, p0, Lcom/iwifi/sdk/protocol/impl/DoSmsAuthConn_iWiFi_20;->m_iCallback:Lcom/iwifi/sdk/protocol/DoSmsAuthInterface;

    invoke-interface {v4, v3}, Lcom/iwifi/sdk/protocol/DoSmsAuthInterface;->doSmsAuthErr(Ljava/lang/String;)V

    .line 79
    .end local v0    # "codeRes":Lcom/iwifi/sdk/data/CodeResult;
    .end local v3    # "result":Ljava/lang/String;
    :goto_0
    return-void

    .line 69
    .restart local v0    # "codeRes":Lcom/iwifi/sdk/data/CodeResult;
    .restart local v3    # "result":Ljava/lang/String;
    :cond_0
    iget-object v4, p0, Lcom/iwifi/sdk/protocol/impl/DoSmsAuthConn_iWiFi_20;->m_iCallback:Lcom/iwifi/sdk/protocol/DoSmsAuthInterface;

    invoke-interface {v4, v3}, Lcom/iwifi/sdk/protocol/DoSmsAuthInterface;->doSmsAuthSucc(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 71
    .end local v0    # "codeRes":Lcom/iwifi/sdk/data/CodeResult;
    .end local v3    # "result":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 72
    .local v1, "e":Ljava/lang/Exception;
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "{\"result\":\"FAIL\",\"message\":\"Json error :"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\"}"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 73
    .local v2, "err":Ljava/lang/String;
    iget-object v4, p0, Lcom/iwifi/sdk/protocol/impl/DoSmsAuthConn_iWiFi_20;->m_iCallback:Lcom/iwifi/sdk/protocol/DoSmsAuthInterface;

    invoke-interface {v4, v2}, Lcom/iwifi/sdk/protocol/DoSmsAuthInterface;->doSmsAuthErr(Ljava/lang/String;)V

    goto :goto_0

    .line 76
    .end local v1    # "e":Ljava/lang/Exception;
    .end local v2    # "err":Ljava/lang/String;
    :cond_1
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "{\"result\":\"FAIL\",\"message\":\""

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1, p2}, Lcom/iwifi/sdk/tools/ErrDeal;->getConnErr(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\"}"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 77
    .restart local v2    # "err":Ljava/lang/String;
    iget-object v4, p0, Lcom/iwifi/sdk/protocol/impl/DoSmsAuthConn_iWiFi_20;->m_iCallback:Lcom/iwifi/sdk/protocol/DoSmsAuthInterface;

    invoke-interface {v4, v2}, Lcom/iwifi/sdk/protocol/DoSmsAuthInterface;->doSmsAuthErr(Ljava/lang/String;)V

    goto :goto_0
.end method
