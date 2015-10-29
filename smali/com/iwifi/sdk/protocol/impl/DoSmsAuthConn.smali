.class public Lcom/iwifi/sdk/protocol/impl/DoSmsAuthConn;
.super Lcom/iwifi/sdk/tools/HttpUtil;
.source "DoSmsAuthConn.java"


# instance fields
.field private m_iCallback:Lcom/iwifi/sdk/protocol/DoSmsAuthInterface;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/iwifi/sdk/protocol/DoSmsAuthInterface;)V
    .locals 4
    .param p1, "phoneNumber"    # Ljava/lang/String;
    .param p2, "callback"    # Lcom/iwifi/sdk/protocol/DoSmsAuthInterface;

    .prologue
    .line 19
    invoke-direct {p0}, Lcom/iwifi/sdk/tools/HttpUtil;-><init>()V

    .line 20
    iput-object p2, p0, Lcom/iwifi/sdk/protocol/impl/DoSmsAuthConn;->m_iCallback:Lcom/iwifi/sdk/protocol/DoSmsAuthInterface;

    .line 21
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 22
    .local v0, "paramList":Ljava/util/List;, "Ljava/util/List<Lcom/iwifi/sdk/tools/DataObject;>;"
    new-instance v1, Lcom/iwifi/sdk/tools/DataObject;

    const-string v2, "phone"

    invoke-direct {v1, v2, p1}, Lcom/iwifi/sdk/tools/DataObject;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 23
    const-string v1, "http://www.hichinawifi.com/wifiapp/"

    const-string v2, "sms"

    const-string v3, ""

    invoke-virtual {p0, v1, v2, v3, v0}, Lcom/iwifi/sdk/protocol/impl/DoSmsAuthConn;->asyncConnect(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    .line 24
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
    .line 28
    if-nez p2, :cond_1

    if-eqz p1, :cond_1

    .line 30
    const-string v0, "ok"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 31
    iget-object v0, p0, Lcom/iwifi/sdk/protocol/impl/DoSmsAuthConn;->m_iCallback:Lcom/iwifi/sdk/protocol/DoSmsAuthInterface;

    invoke-interface {v0, p1}, Lcom/iwifi/sdk/protocol/DoSmsAuthInterface;->doSmsAuthSucc(Ljava/lang/String;)V

    .line 38
    :goto_0
    return-void

    .line 33
    :cond_0
    iget-object v0, p0, Lcom/iwifi/sdk/protocol/impl/DoSmsAuthConn;->m_iCallback:Lcom/iwifi/sdk/protocol/DoSmsAuthInterface;

    invoke-interface {v0, p1}, Lcom/iwifi/sdk/protocol/DoSmsAuthInterface;->doSmsAuthErr(Ljava/lang/String;)V

    goto :goto_0

    .line 36
    :cond_1
    iget-object v0, p0, Lcom/iwifi/sdk/protocol/impl/DoSmsAuthConn;->m_iCallback:Lcom/iwifi/sdk/protocol/DoSmsAuthInterface;

    invoke-static {p1, p2}, Lcom/iwifi/sdk/tools/ErrDeal;->getConnErr(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/iwifi/sdk/protocol/DoSmsAuthInterface;->doSmsAuthErr(Ljava/lang/String;)V

    goto :goto_0
.end method
