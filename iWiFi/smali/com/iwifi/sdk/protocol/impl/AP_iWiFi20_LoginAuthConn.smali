.class public Lcom/iwifi/sdk/protocol/impl/AP_iWiFi20_LoginAuthConn;
.super Lcom/iwifi/sdk/tools/HttpUtil;
.source "AP_iWiFi20_LoginAuthConn.java"


# instance fields
.field private m_iCallback:Lcom/iwifi/sdk/protocol/DoLoginAuthInterface;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/iwifi/sdk/protocol/DoLoginAuthInterface;)V
    .locals 4
    .param p1, "ipGateway"    # Ljava/lang/String;
    .param p2, "phoneNum"    # Ljava/lang/String;
    .param p3, "authKey"    # Ljava/lang/String;
    .param p4, "devType"    # Ljava/lang/String;
    .param p5, "devId"    # Ljava/lang/String;
    .param p6, "url"    # Ljava/lang/String;
    .param p7, "callback"    # Lcom/iwifi/sdk/protocol/DoLoginAuthInterface;

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/iwifi/sdk/tools/HttpUtil;-><init>()V

    .line 33
    iput-object p7, p0, Lcom/iwifi/sdk/protocol/impl/AP_iWiFi20_LoginAuthConn;->m_iCallback:Lcom/iwifi/sdk/protocol/DoLoginAuthInterface;

    .line 34
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 35
    .local v0, "paramList":Ljava/util/List;, "Ljava/util/List<Lcom/iwifi/sdk/tools/DataObject;>;"
    new-instance v1, Lcom/iwifi/sdk/tools/DataObject;

    const-string v2, "phone"

    invoke-direct {v1, v2, p2}, Lcom/iwifi/sdk/tools/DataObject;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 36
    new-instance v1, Lcom/iwifi/sdk/tools/DataObject;

    const-string v2, "token"

    invoke-direct {v1, v2, p3}, Lcom/iwifi/sdk/tools/DataObject;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 37
    new-instance v1, Lcom/iwifi/sdk/tools/DataObject;

    const-string v2, "dev_type"

    invoke-direct {v1, v2, p4}, Lcom/iwifi/sdk/tools/DataObject;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 38
    new-instance v1, Lcom/iwifi/sdk/tools/DataObject;

    const-string v2, "dev_id"

    invoke-direct {v1, v2, p5}, Lcom/iwifi/sdk/tools/DataObject;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 39
    new-instance v1, Lcom/iwifi/sdk/tools/DataObject;

    const-string v2, "url"

    invoke-direct {v1, v2, p6}, Lcom/iwifi/sdk/tools/DataObject;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 40
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

    const-string v2, "smartwifi/auth"

    const-string v3, ""

    invoke-virtual {p0, v1, v2, v3, v0}, Lcom/iwifi/sdk/protocol/impl/AP_iWiFi20_LoginAuthConn;->asyncConnect(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    .line 41
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
    .line 45
    if-nez p2, :cond_2

    if-eqz p1, :cond_2

    .line 49
    :try_start_0
    const-string v4, "result"

    const-string v5, "message"

    const/4 v6, 0x0

    invoke-static {p1, v4, v5, v6}, Lcom/iwifi/sdk/parser/GetCodeResultParser;->GetCodeResultList(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/iwifi/sdk/data/CodeResult;

    move-result-object v0

    .line 51
    .local v0, "codeRes":Lcom/iwifi/sdk/data/CodeResult;
    invoke-virtual {v0}, Lcom/iwifi/sdk/data/CodeResult;->getMsg()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_0

    invoke-virtual {v0}, Lcom/iwifi/sdk/data/CodeResult;->getMsg()Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lcom/iwifi/sdk/protocol/impl/AP_iWiFi20_LoginAuthConn;->iWiFi20_AUTHEN_STR:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 52
    :cond_0
    const-string v3, "{\"result\":\"FAIL\",\"message\":\"\u8ba4\u8bc1\u5931\u8d25\"}"

    .line 53
    .local v3, "result":Ljava/lang/String;
    iget-object v4, p0, Lcom/iwifi/sdk/protocol/impl/AP_iWiFi20_LoginAuthConn;->m_iCallback:Lcom/iwifi/sdk/protocol/DoLoginAuthInterface;

    invoke-interface {v4, v3}, Lcom/iwifi/sdk/protocol/DoLoginAuthInterface;->doLoginAuthErr(Ljava/lang/String;)V

    .line 66
    .end local v0    # "codeRes":Lcom/iwifi/sdk/data/CodeResult;
    .end local v3    # "result":Ljava/lang/String;
    :goto_0
    return-void

    .line 55
    .restart local v0    # "codeRes":Lcom/iwifi/sdk/data/CodeResult;
    :cond_1
    const-string v3, "{\"result\":\"OK\",\"message\":\"\u8ba4\u8bc1\u6210\u529f\"}"

    .line 56
    .restart local v3    # "result":Ljava/lang/String;
    iget-object v4, p0, Lcom/iwifi/sdk/protocol/impl/AP_iWiFi20_LoginAuthConn;->m_iCallback:Lcom/iwifi/sdk/protocol/DoLoginAuthInterface;

    invoke-interface {v4, v3}, Lcom/iwifi/sdk/protocol/DoLoginAuthInterface;->doLoginAuthSucc(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 58
    .end local v0    # "codeRes":Lcom/iwifi/sdk/data/CodeResult;
    .end local v3    # "result":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 59
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

    .line 60
    .local v2, "err":Ljava/lang/String;
    iget-object v4, p0, Lcom/iwifi/sdk/protocol/impl/AP_iWiFi20_LoginAuthConn;->m_iCallback:Lcom/iwifi/sdk/protocol/DoLoginAuthInterface;

    invoke-interface {v4, v2}, Lcom/iwifi/sdk/protocol/DoLoginAuthInterface;->doLoginAuthErr(Ljava/lang/String;)V

    goto :goto_0

    .line 63
    .end local v1    # "e":Ljava/lang/Exception;
    .end local v2    # "err":Ljava/lang/String;
    :cond_2
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

    .line 64
    .restart local v2    # "err":Ljava/lang/String;
    iget-object v4, p0, Lcom/iwifi/sdk/protocol/impl/AP_iWiFi20_LoginAuthConn;->m_iCallback:Lcom/iwifi/sdk/protocol/DoLoginAuthInterface;

    invoke-interface {v4, v2}, Lcom/iwifi/sdk/protocol/DoLoginAuthInterface;->doLoginAuthErr(Ljava/lang/String;)V

    goto :goto_0
.end method
