.class public Lcom/cat/impl/DoTimeDifferenceConn;
.super Lcom/ta/util/http/AsyncHttpClient;
.source "DoTimeDifferenceConn.java"


# instance fields
.field private m_iCallback:Lcom/cat/protocol/DoTimeDifferenceInterface;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/cat/protocol/DoTimeDifferenceInterface;)V
    .locals 3
    .param p1, "timestamp"    # Ljava/lang/String;
    .param p2, "callback"    # Lcom/cat/protocol/DoTimeDifferenceInterface;

    .prologue
    .line 26
    invoke-direct {p0}, Lcom/ta/util/http/AsyncHttpClient;-><init>()V

    .line 28
    iput-object p2, p0, Lcom/cat/impl/DoTimeDifferenceConn;->m_iCallback:Lcom/cat/protocol/DoTimeDifferenceInterface;

    .line 29
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 30
    .local v0, "paramList":Ljava/util/List;, "Ljava/util/List<Lcom/ta/util/http/DataObject;>;"
    new-instance v1, Lcom/ta/util/http/DataObject;

    const-string v2, "timestamp"

    invoke-direct {v1, v2, p1}, Lcom/ta/util/http/DataObject;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 32
    new-instance v1, Ljava/lang/StringBuilder;

    sget-object v2, Lcom/cat/tools/HttpConf;->iWiFi_WIFI_HOSTGE:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "gettimedifference.html"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 33
    new-instance v2, Lcom/cat/impl/DoTimeDifferenceConn$1;

    invoke-direct {v2, p0}, Lcom/cat/impl/DoTimeDifferenceConn$1;-><init>(Lcom/cat/impl/DoTimeDifferenceConn;)V

    .line 32
    invoke-virtual {p0, v1, v0, v2}, Lcom/cat/impl/DoTimeDifferenceConn;->postL(Ljava/lang/String;Ljava/util/List;Lcom/ta/util/http/AsyncHttpResponseHandler;)V

    .line 47
    return-void
.end method

.method static synthetic access$0(Lcom/cat/impl/DoTimeDifferenceConn;)Lcom/cat/protocol/DoTimeDifferenceInterface;
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Lcom/cat/impl/DoTimeDifferenceConn;->m_iCallback:Lcom/cat/protocol/DoTimeDifferenceInterface;

    return-object v0
.end method
