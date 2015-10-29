.class public Lcom/iwifi/sdk/protocol/impl/CheckCodeAuthConn_iWiFi_20;
.super Lcom/iwifi/sdk/tools/HttpUtil;
.source "CheckCodeAuthConn_iWiFi_20.java"


# instance fields
.field private m_iCallback:Lcom/iwifi/sdk/protocol/CheckCodeAuthInterface;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/iwifi/sdk/protocol/CheckCodeAuthInterface;)V
    .locals 10
    .param p1, "phoneNumber"    # Ljava/lang/String;
    .param p2, "code"    # Ljava/lang/String;
    .param p3, "devType"    # Ljava/lang/String;
    .param p4, "mac"    # Ljava/lang/String;
    .param p5, "devid"    # Ljava/lang/String;
    .param p6, "appkey"    # Ljava/lang/String;
    .param p7, "secret"    # Ljava/lang/String;
    .param p8, "callback"    # Lcom/iwifi/sdk/protocol/CheckCodeAuthInterface;

    .prologue
    .line 33
    const-string v3, "APPMOBILE"

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    .line 34
    invoke-direct/range {v0 .. v9}, Lcom/iwifi/sdk/protocol/impl/CheckCodeAuthConn_iWiFi_20;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/iwifi/sdk/protocol/CheckCodeAuthInterface;)V

    .line 35
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/iwifi/sdk/protocol/CheckCodeAuthInterface;)V
    .locals 5
    .param p1, "phoneNumber"    # Ljava/lang/String;
    .param p2, "code"    # Ljava/lang/String;
    .param p3, "auth_type"    # Ljava/lang/String;
    .param p4, "terminal_type"    # Ljava/lang/String;
    .param p5, "mac"    # Ljava/lang/String;
    .param p6, "devid"    # Ljava/lang/String;
    .param p7, "appkey"    # Ljava/lang/String;
    .param p8, "secret"    # Ljava/lang/String;
    .param p9, "callback"    # Lcom/iwifi/sdk/protocol/CheckCodeAuthInterface;

    .prologue
    .line 54
    invoke-direct {p0}, Lcom/iwifi/sdk/tools/HttpUtil;-><init>()V

    .line 57
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "auth_id="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 58
    const-string v3, "&auth_code="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "&auth_type="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 59
    const-string v3, "&terminal_type="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "&ter_mac="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 60
    const-string v3, "&dev_id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "&appkey="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "&secret="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 61
    invoke-virtual {v2, p8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 57
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/iwifi/sdk/protocol/impl/SDKCommonMotheds;->getSign(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 62
    .local v0, "md5sign":Ljava/lang/String;
    iput-object p9, p0, Lcom/iwifi/sdk/protocol/impl/CheckCodeAuthConn_iWiFi_20;->m_iCallback:Lcom/iwifi/sdk/protocol/CheckCodeAuthInterface;

    .line 63
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 64
    .local v1, "paramList":Ljava/util/List;, "Ljava/util/List<Lcom/iwifi/sdk/tools/DataObject;>;"
    new-instance v2, Lcom/iwifi/sdk/tools/DataObject;

    const-string v3, "auth_id"

    invoke-direct {v2, v3, p1}, Lcom/iwifi/sdk/tools/DataObject;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 65
    new-instance v2, Lcom/iwifi/sdk/tools/DataObject;

    const-string v3, "auth_code"

    invoke-direct {v2, v3, p2}, Lcom/iwifi/sdk/tools/DataObject;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 66
    new-instance v2, Lcom/iwifi/sdk/tools/DataObject;

    const-string v3, "auth_type"

    invoke-direct {v2, v3, p3}, Lcom/iwifi/sdk/tools/DataObject;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 67
    new-instance v2, Lcom/iwifi/sdk/tools/DataObject;

    const-string v3, "terminal_type"

    invoke-direct {v2, v3, p4}, Lcom/iwifi/sdk/tools/DataObject;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 68
    new-instance v2, Lcom/iwifi/sdk/tools/DataObject;

    const-string v3, "ter_mac"

    invoke-direct {v2, v3, p5}, Lcom/iwifi/sdk/tools/DataObject;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 69
    new-instance v2, Lcom/iwifi/sdk/tools/DataObject;

    const-string v3, "dev_id"

    invoke-direct {v2, v3, p6}, Lcom/iwifi/sdk/tools/DataObject;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 70
    new-instance v2, Lcom/iwifi/sdk/tools/DataObject;

    const-string v3, "appkey"

    invoke-direct {v2, v3, p7}, Lcom/iwifi/sdk/tools/DataObject;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 72
    new-instance v2, Lcom/iwifi/sdk/tools/DataObject;

    const-string v3, "sign"

    invoke-direct {v2, v3, v0}, Lcom/iwifi/sdk/tools/DataObject;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 74
    sget-object v2, Lcom/iwifi/sdk/protocol/impl/CheckCodeAuthConn_iWiFi_20;->iWiFi20_WIFI_HOST:Ljava/lang/String;

    const-string v3, "checkcode.html"

    const-string v4, ""

    invoke-virtual {p0, v2, v3, v4, v1}, Lcom/iwifi/sdk/protocol/impl/CheckCodeAuthConn_iWiFi_20;->asyncConnect(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    .line 75
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
    .line 79
    if-nez p2, :cond_1

    if-eqz p1, :cond_1

    .line 85
    :try_start_0
    const-string v2, "OK"

    invoke-virtual {p1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 90
    iget-object v2, p0, Lcom/iwifi/sdk/protocol/impl/CheckCodeAuthConn_iWiFi_20;->m_iCallback:Lcom/iwifi/sdk/protocol/CheckCodeAuthInterface;

    invoke-interface {v2, p1}, Lcom/iwifi/sdk/protocol/CheckCodeAuthInterface;->checkCodeAuthErr(Ljava/lang/String;)V

    .line 106
    :goto_0
    return-void

    .line 94
    :cond_0
    iget-object v2, p0, Lcom/iwifi/sdk/protocol/impl/CheckCodeAuthConn_iWiFi_20;->m_iCallback:Lcom/iwifi/sdk/protocol/CheckCodeAuthInterface;

    invoke-interface {v2, p1}, Lcom/iwifi/sdk/protocol/CheckCodeAuthInterface;->checkCodeAuthSucc(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 96
    :catch_0
    move-exception v0

    .line 97
    .local v0, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "{\"result\":\"FAIL\",\"message\":\"Json error :"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 98
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\"}"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 97
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 99
    .local v1, "err":Ljava/lang/String;
    iget-object v2, p0, Lcom/iwifi/sdk/protocol/impl/CheckCodeAuthConn_iWiFi_20;->m_iCallback:Lcom/iwifi/sdk/protocol/CheckCodeAuthInterface;

    invoke-interface {v2, p1}, Lcom/iwifi/sdk/protocol/CheckCodeAuthInterface;->checkCodeAuthErr(Ljava/lang/String;)V

    goto :goto_0

    .line 102
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v1    # "err":Ljava/lang/String;
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "{\"result\":\"FAIL\",\"message\":\""

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 103
    invoke-static {p1, p2}, Lcom/iwifi/sdk/tools/ErrDeal;->getConnErr(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\"}"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 102
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 104
    .restart local v1    # "err":Ljava/lang/String;
    iget-object v2, p0, Lcom/iwifi/sdk/protocol/impl/CheckCodeAuthConn_iWiFi_20;->m_iCallback:Lcom/iwifi/sdk/protocol/CheckCodeAuthInterface;

    invoke-interface {v2, p1}, Lcom/iwifi/sdk/protocol/CheckCodeAuthInterface;->checkCodeAuthErr(Ljava/lang/String;)V

    goto :goto_0
.end method
