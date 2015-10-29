.class public Lcom/iwifi/sdk/protocol/impl/GetPlatformToken;
.super Lcom/iwifi/sdk/tools/HttpUtil;
.source "GetPlatformToken.java"


# instance fields
.field private mCallback:Lcom/iwifi/sdk/protocol/GetPlatformTokenCallback;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/iwifi/sdk/protocol/GetPlatformTokenCallback;)V
    .locals 4
    .param p1, "auth_id"    # Ljava/lang/String;
    .param p2, "auth_unqid"    # Ljava/lang/String;
    .param p3, "auth_type"    # Ljava/lang/String;
    .param p4, "ter_mac"    # Ljava/lang/String;
    .param p5, "ter_ip"    # Ljava/lang/String;
    .param p6, "terminal_type"    # Ljava/lang/String;
    .param p7, "imei"    # Ljava/lang/String;
    .param p8, "dev_id"    # Ljava/lang/String;
    .param p9, "platform_code"    # Ljava/lang/String;
    .param p10, "portal_url"    # Ljava/lang/String;
    .param p11, "callback"    # Lcom/iwifi/sdk/protocol/GetPlatformTokenCallback;

    .prologue
    .line 16
    invoke-direct {p0}, Lcom/iwifi/sdk/tools/HttpUtil;-><init>()V

    .line 27
    iput-object p11, p0, Lcom/iwifi/sdk/protocol/impl/GetPlatformToken;->mCallback:Lcom/iwifi/sdk/protocol/GetPlatformTokenCallback;

    .line 28
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 29
    .local v0, "paramList":Ljava/util/List;, "Ljava/util/List<Lcom/iwifi/sdk/tools/DataObject;>;"
    new-instance v1, Lcom/iwifi/sdk/tools/DataObject;

    const-string v2, "auth_id"

    invoke-direct {v1, v2, p1}, Lcom/iwifi/sdk/tools/DataObject;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 30
    new-instance v1, Lcom/iwifi/sdk/tools/DataObject;

    const-string v2, "auth_unqid"

    invoke-direct {v1, v2, p2}, Lcom/iwifi/sdk/tools/DataObject;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 31
    new-instance v1, Lcom/iwifi/sdk/tools/DataObject;

    const-string v2, "auth_type"

    invoke-direct {v1, v2, p3}, Lcom/iwifi/sdk/tools/DataObject;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 32
    new-instance v1, Lcom/iwifi/sdk/tools/DataObject;

    const-string v2, "ter_mac"

    invoke-direct {v1, v2, p4}, Lcom/iwifi/sdk/tools/DataObject;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 33
    new-instance v1, Lcom/iwifi/sdk/tools/DataObject;

    const-string v2, "ter_ip"

    invoke-direct {v1, v2, p5}, Lcom/iwifi/sdk/tools/DataObject;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 34
    new-instance v1, Lcom/iwifi/sdk/tools/DataObject;

    const-string v2, "terminal_type"

    invoke-direct {v1, v2, p6}, Lcom/iwifi/sdk/tools/DataObject;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 35
    new-instance v1, Lcom/iwifi/sdk/tools/DataObject;

    const-string v2, "imei"

    invoke-direct {v1, v2, p7}, Lcom/iwifi/sdk/tools/DataObject;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 36
    new-instance v1, Lcom/iwifi/sdk/tools/DataObject;

    const-string v2, "dev_id"

    invoke-direct {v1, v2, p8}, Lcom/iwifi/sdk/tools/DataObject;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 37
    new-instance v1, Lcom/iwifi/sdk/tools/DataObject;

    const-string v2, "platform_code"

    invoke-direct {v1, v2, p9}, Lcom/iwifi/sdk/tools/DataObject;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 38
    new-instance v1, Lcom/iwifi/sdk/tools/DataObject;

    const-string v2, "portal_url"

    invoke-direct {v1, v2, p10}, Lcom/iwifi/sdk/tools/DataObject;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 40
    sget-object v1, Lcom/iwifi/sdk/protocol/impl/GetPlatformToken;->iWiFi20_WIFI_HOST:Ljava/lang/String;

    const-string v2, "token.html"

    const-string v3, ""

    invoke-virtual {p0, v1, v2, v3, v0}, Lcom/iwifi/sdk/protocol/impl/GetPlatformToken;->asyncConnect(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    .line 41
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
    .line 47
    if-nez p2, :cond_1

    if-eqz p1, :cond_1

    .line 49
    :try_start_0
    const-string v5, "result"

    const-string v6, "message"

    const/4 v7, 0x0

    invoke-static {p1, v5, v6, v7}, Lcom/iwifi/sdk/parser/GetCodeResultParser;->GetCodeResultList(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/iwifi/sdk/data/CodeResult;

    move-result-object v0

    .line 50
    .local v0, "codeResult":Lcom/iwifi/sdk/data/CodeResult;
    invoke-virtual {v0}, Lcom/iwifi/sdk/data/CodeResult;->getResult()Ljava/lang/String;

    move-result-object v5

    const-string v6, "OK"

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 51
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "{\"result\":\"FAIL\",\"message\":\""

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/iwifi/sdk/data/CodeResult;->getMsg()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\",\"token\":\""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\"\""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\",\"appauth_type\":\""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\"\""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\"}"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 52
    .local v4, "result":Ljava/lang/String;
    iget-object v5, p0, Lcom/iwifi/sdk/protocol/impl/GetPlatformToken;->mCallback:Lcom/iwifi/sdk/protocol/GetPlatformTokenCallback;

    invoke-interface {v5, v4}, Lcom/iwifi/sdk/protocol/GetPlatformTokenCallback;->getTokenCallback(Ljava/lang/String;)V

    .line 66
    .end local v0    # "codeResult":Lcom/iwifi/sdk/data/CodeResult;
    .end local v4    # "result":Ljava/lang/String;
    :goto_0
    return-void

    .line 54
    .restart local v0    # "codeResult":Lcom/iwifi/sdk/data/CodeResult;
    :cond_0
    const-string v5, "result"

    const-string v6, "message"

    const-string v7, "token"

    const-string v8, "appauth_type"

    invoke-static {p1, v5, v6, v7, v8}, Lcom/iwifi/sdk/parser/GetCodeResultParser;->GetCodeResultList(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/iwifi/sdk/data/CodeResult;

    move-result-object v1

    .line 55
    .local v1, "codeResult2":Lcom/iwifi/sdk/data/CodeResult;
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "{\"result\":\"OK\",\"message\":\""

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/iwifi/sdk/data/CodeResult;->getMsg()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\",\"token\":\""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Lcom/iwifi/sdk/data/CodeResult;->getData()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\",\"appauth_type\":\""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Lcom/iwifi/sdk/data/CodeResult;->getData1()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\"}"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 56
    .restart local v4    # "result":Ljava/lang/String;
    iget-object v5, p0, Lcom/iwifi/sdk/protocol/impl/GetPlatformToken;->mCallback:Lcom/iwifi/sdk/protocol/GetPlatformTokenCallback;

    invoke-interface {v5, v4}, Lcom/iwifi/sdk/protocol/GetPlatformTokenCallback;->getTokenCallback(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 58
    .end local v0    # "codeResult":Lcom/iwifi/sdk/data/CodeResult;
    .end local v1    # "codeResult2":Lcom/iwifi/sdk/data/CodeResult;
    .end local v4    # "result":Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 59
    .local v2, "e":Ljava/lang/Exception;
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "{\"result\":\"FAIL\",\"message\":\"Json error :"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\",\"token\":\""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\"\""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\",\"appauth_type\":\""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\"\""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\"}"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 60
    .local v3, "err":Ljava/lang/String;
    iget-object v5, p0, Lcom/iwifi/sdk/protocol/impl/GetPlatformToken;->mCallback:Lcom/iwifi/sdk/protocol/GetPlatformTokenCallback;

    invoke-interface {v5, v3}, Lcom/iwifi/sdk/protocol/GetPlatformTokenCallback;->getTokenCallback(Ljava/lang/String;)V

    goto :goto_0

    .line 63
    .end local v2    # "e":Ljava/lang/Exception;
    .end local v3    # "err":Ljava/lang/String;
    :cond_1
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "{\"result\":\"FAIL\",\"message\":\""

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1, p2}, Lcom/iwifi/sdk/tools/ErrDeal;->getConnErr(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\",\"token\":\""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\"\""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\",\"appauth_type\":\""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\"\""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\"}"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 64
    .restart local v3    # "err":Ljava/lang/String;
    iget-object v5, p0, Lcom/iwifi/sdk/protocol/impl/GetPlatformToken;->mCallback:Lcom/iwifi/sdk/protocol/GetPlatformTokenCallback;

    invoke-interface {v5, v3}, Lcom/iwifi/sdk/protocol/GetPlatformTokenCallback;->getTokenCallback(Ljava/lang/String;)V

    goto/16 :goto_0
.end method
