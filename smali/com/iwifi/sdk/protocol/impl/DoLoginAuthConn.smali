.class public Lcom/iwifi/sdk/protocol/impl/DoLoginAuthConn;
.super Lcom/iwifi/sdk/tools/HttpUtil;
.source "DoLoginAuthConn.java"


# instance fields
.field private m_iCallback:Lcom/iwifi/sdk/protocol/DoLoginAuthInterface;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/iwifi/sdk/protocol/DoLoginAuthInterface;)V
    .locals 4
    .param p1, "ipGateway"    # Ljava/lang/String;
    .param p2, "phoneNum"    # Ljava/lang/String;
    .param p3, "authKey"    # Ljava/lang/String;
    .param p4, "devType"    # Ljava/lang/String;
    .param p5, "devId"    # Ljava/lang/String;
    .param p6, "callback"    # Lcom/iwifi/sdk/protocol/DoLoginAuthInterface;

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/iwifi/sdk/tools/HttpUtil;-><init>()V

    .line 31
    iput-object p6, p0, Lcom/iwifi/sdk/protocol/impl/DoLoginAuthConn;->m_iCallback:Lcom/iwifi/sdk/protocol/DoLoginAuthInterface;

    .line 32
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 33
    .local v0, "paramList":Ljava/util/List;, "Ljava/util/List<Lcom/iwifi/sdk/tools/DataObject;>;"
    new-instance v1, Lcom/iwifi/sdk/tools/DataObject;

    const-string v2, "phone"

    invoke-direct {v1, v2, p2}, Lcom/iwifi/sdk/tools/DataObject;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 34
    new-instance v1, Lcom/iwifi/sdk/tools/DataObject;

    const-string v2, "data"

    invoke-direct {v1, v2, p3}, Lcom/iwifi/sdk/tools/DataObject;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 35
    new-instance v1, Lcom/iwifi/sdk/tools/DataObject;

    const-string v2, "dev_type"

    invoke-direct {v1, v2, p4}, Lcom/iwifi/sdk/tools/DataObject;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 36
    new-instance v1, Lcom/iwifi/sdk/tools/DataObject;

    const-string v2, "dev_id"

    invoke-direct {v1, v2, p5}, Lcom/iwifi/sdk/tools/DataObject;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 37
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

    const-string v2, "api-hichina/auth"

    const-string v3, ""

    invoke-virtual {p0, v1, v2, v3, v0}, Lcom/iwifi/sdk/protocol/impl/DoLoginAuthConn;->asyncConnect(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    .line 38
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
    .line 42
    if-nez p2, :cond_1

    if-eqz p1, :cond_1

    .line 46
    const-string v0, "ok"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 47
    iget-object v0, p0, Lcom/iwifi/sdk/protocol/impl/DoLoginAuthConn;->m_iCallback:Lcom/iwifi/sdk/protocol/DoLoginAuthInterface;

    invoke-interface {v0, p1}, Lcom/iwifi/sdk/protocol/DoLoginAuthInterface;->doLoginAuthSucc(Ljava/lang/String;)V

    .line 55
    :goto_0
    return-void

    .line 50
    :cond_0
    iget-object v0, p0, Lcom/iwifi/sdk/protocol/impl/DoLoginAuthConn;->m_iCallback:Lcom/iwifi/sdk/protocol/DoLoginAuthInterface;

    invoke-interface {v0, p1}, Lcom/iwifi/sdk/protocol/DoLoginAuthInterface;->doLoginAuthErr(Ljava/lang/String;)V

    goto :goto_0

    .line 53
    :cond_1
    iget-object v0, p0, Lcom/iwifi/sdk/protocol/impl/DoLoginAuthConn;->m_iCallback:Lcom/iwifi/sdk/protocol/DoLoginAuthInterface;

    invoke-static {p1, p2}, Lcom/iwifi/sdk/tools/ErrDeal;->getConnErr(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/iwifi/sdk/protocol/DoLoginAuthInterface;->doLoginAuthErr(Ljava/lang/String;)V

    goto :goto_0
.end method
