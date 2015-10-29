.class public Lcom/iwifi/sdk/protocol/impl/CheckCodeAuthConn;
.super Lcom/iwifi/sdk/tools/HttpUtil;
.source "CheckCodeAuthConn.java"


# instance fields
.field private m_iCallback:Lcom/iwifi/sdk/protocol/CheckCodeAuthInterface;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/iwifi/sdk/protocol/CheckCodeAuthInterface;)V
    .locals 4
    .param p1, "phoneNumber"    # Ljava/lang/String;
    .param p2, "code"    # Ljava/lang/String;
    .param p3, "devType"    # Ljava/lang/String;
    .param p4, "devid"    # Ljava/lang/String;
    .param p5, "callback"    # Lcom/iwifi/sdk/protocol/CheckCodeAuthInterface;

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/iwifi/sdk/tools/HttpUtil;-><init>()V

    .line 30
    iput-object p5, p0, Lcom/iwifi/sdk/protocol/impl/CheckCodeAuthConn;->m_iCallback:Lcom/iwifi/sdk/protocol/CheckCodeAuthInterface;

    .line 31
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 32
    .local v0, "paramList":Ljava/util/List;, "Ljava/util/List<Lcom/iwifi/sdk/tools/DataObject;>;"
    new-instance v1, Lcom/iwifi/sdk/tools/DataObject;

    const-string v2, "phone"

    invoke-direct {v1, v2, p1}, Lcom/iwifi/sdk/tools/DataObject;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 33
    new-instance v1, Lcom/iwifi/sdk/tools/DataObject;

    const-string v2, "code"

    invoke-direct {v1, v2, p2}, Lcom/iwifi/sdk/tools/DataObject;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 34
    new-instance v1, Lcom/iwifi/sdk/tools/DataObject;

    const-string v2, "dev_type"

    invoke-direct {v1, v2, p3}, Lcom/iwifi/sdk/tools/DataObject;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 35
    new-instance v1, Lcom/iwifi/sdk/tools/DataObject;

    const-string v2, "dev_id"

    invoke-direct {v1, v2, p4}, Lcom/iwifi/sdk/tools/DataObject;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 36
    const-string v1, "http://www.hichinawifi.com/wifiapp/"

    const-string v2, "checkcode"

    const-string v3, ""

    invoke-virtual {p0, v1, v2, v3, v0}, Lcom/iwifi/sdk/protocol/impl/CheckCodeAuthConn;->asyncConnect(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    .line 37
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
    .line 41
    if-nez p2, :cond_1

    if-eqz p1, :cond_1

    .line 44
    :try_start_0
    invoke-static {p1}, Lcom/iwifi/sdk/parser/GetCodeResultParser;->GetCodeResultList(Ljava/lang/String;)Lcom/iwifi/sdk/data/CodeResult;

    move-result-object v1

    .line 45
    .local v1, "result":Lcom/iwifi/sdk/data/CodeResult;
    const-string v2, "ok"

    invoke-virtual {p1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 46
    iget-object v2, p0, Lcom/iwifi/sdk/protocol/impl/CheckCodeAuthConn;->m_iCallback:Lcom/iwifi/sdk/protocol/CheckCodeAuthInterface;

    invoke-interface {v2, p1}, Lcom/iwifi/sdk/protocol/CheckCodeAuthInterface;->checkCodeAuthErr(Ljava/lang/String;)V

    .line 56
    .end local v1    # "result":Lcom/iwifi/sdk/data/CodeResult;
    :goto_0
    return-void

    .line 48
    .restart local v1    # "result":Lcom/iwifi/sdk/data/CodeResult;
    :cond_0
    iget-object v2, p0, Lcom/iwifi/sdk/protocol/impl/CheckCodeAuthConn;->m_iCallback:Lcom/iwifi/sdk/protocol/CheckCodeAuthInterface;

    invoke-interface {v2, p1}, Lcom/iwifi/sdk/protocol/CheckCodeAuthInterface;->checkCodeAuthSucc(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 50
    .end local v1    # "result":Lcom/iwifi/sdk/data/CodeResult;
    :catch_0
    move-exception v0

    .line 51
    .local v0, "e":Ljava/lang/Exception;
    iget-object v2, p0, Lcom/iwifi/sdk/protocol/impl/CheckCodeAuthConn;->m_iCallback:Lcom/iwifi/sdk/protocol/CheckCodeAuthInterface;

    const-string v3, ""

    invoke-interface {v2, v3}, Lcom/iwifi/sdk/protocol/CheckCodeAuthInterface;->checkCodeAuthErr(Ljava/lang/String;)V

    goto :goto_0

    .line 54
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_1
    iget-object v2, p0, Lcom/iwifi/sdk/protocol/impl/CheckCodeAuthConn;->m_iCallback:Lcom/iwifi/sdk/protocol/CheckCodeAuthInterface;

    invoke-static {p1, p2}, Lcom/iwifi/sdk/tools/ErrDeal;->getConnErr(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/iwifi/sdk/protocol/CheckCodeAuthInterface;->checkCodeAuthErr(Ljava/lang/String;)V

    goto :goto_0
.end method
