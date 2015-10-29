.class public Lcom/cat/impl/DoCheckNetWorkConn;
.super Lcom/cat/impl/WifiAsyncHttpClient;
.source "DoCheckNetWorkConn.java"


# instance fields
.field private m_iCallback:Lcom/cat/protocol/DoCheckNetWorkInterface;


# direct methods
.method public constructor <init>(Lcom/cat/protocol/DoCheckNetWorkInterface;Landroid/content/Context;)V
    .locals 6
    .param p1, "callback"    # Lcom/cat/protocol/DoCheckNetWorkInterface;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/cat/impl/WifiAsyncHttpClient;-><init>()V

    .line 26
    iput-object p1, p0, Lcom/cat/impl/DoCheckNetWorkConn;->m_iCallback:Lcom/cat/protocol/DoCheckNetWorkInterface;

    .line 27
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 30
    .local v3, "paramList":Ljava/util/List;, "Ljava/util/List<Lcom/ta/util/http/DataObject;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v1, Lcom/cat/tools/HttpConf;->iWiFi_WIFI_TOTAL:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "/test/1"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 31
    const/4 v4, 0x0

    new-instance v5, Lcom/cat/impl/DoCheckNetWorkConn$1;

    invoke-direct {v5, p0}, Lcom/cat/impl/DoCheckNetWorkConn$1;-><init>(Lcom/cat/impl/DoCheckNetWorkConn;)V

    move-object v0, p0

    move-object v1, p2

    .line 29
    invoke-virtual/range {v0 .. v5}, Lcom/cat/impl/DoCheckNetWorkConn;->postTest(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Lcom/ta/util/http/AsyncHttpResponseHandler;)V

    .line 45
    return-void
.end method

.method static synthetic access$0(Lcom/cat/impl/DoCheckNetWorkConn;)Lcom/cat/protocol/DoCheckNetWorkInterface;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lcom/cat/impl/DoCheckNetWorkConn;->m_iCallback:Lcom/cat/protocol/DoCheckNetWorkInterface;

    return-object v0
.end method
