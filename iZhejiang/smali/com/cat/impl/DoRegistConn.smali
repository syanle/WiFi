.class public Lcom/cat/impl/DoRegistConn;
.super Lcom/cat/impl/WifiAsyncHttpClient;
.source "DoRegistConn.java"


# instance fields
.field private m_iCallback:Lcom/cat/protocol/DoRegistInterface;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/cat/protocol/DoRegistInterface;Landroid/content/Context;)V
    .locals 7
    .param p1, "mobile"    # Ljava/lang/String;
    .param p2, "code"    # Ljava/lang/String;
    .param p3, "type"    # Ljava/lang/String;
    .param p4, "callback"    # Lcom/cat/protocol/DoRegistInterface;
    .param p5, "context"    # Landroid/content/Context;

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/cat/impl/WifiAsyncHttpClient;-><init>()V

    .line 42
    iput-object p4, p0, Lcom/cat/impl/DoRegistConn;->m_iCallback:Lcom/cat/protocol/DoRegistInterface;

    .line 43
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 44
    .local v3, "paramList":Ljava/util/List;, "Ljava/util/List<Lcom/ta/util/http/DataObject;>;"
    new-instance v0, Lcom/ta/util/http/DataObject;

    const-string v1, "mobile"

    invoke-direct {v0, v1, p1}, Lcom/ta/util/http/DataObject;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 45
    new-instance v0, Lcom/ta/util/http/DataObject;

    const-string v1, "code"

    invoke-direct {v0, v1, p2}, Lcom/ta/util/http/DataObject;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 46
    new-instance v0, Lcom/ta/util/http/DataObject;

    const-string v1, "type"

    invoke-direct {v0, v1, p3}, Lcom/ta/util/http/DataObject;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 48
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "mobile="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "&code="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "&type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 49
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 48
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 51
    .local v6, "bodyparam":Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v1, Lcom/cat/tools/HttpConf;->iWiFi_WIFI_HOST:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "checksms.html"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 52
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "checksms.html"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 53
    new-instance v5, Lcom/cat/impl/DoRegistConn$1;

    invoke-direct {v5, p0}, Lcom/cat/impl/DoRegistConn$1;-><init>(Lcom/cat/impl/DoRegistConn;)V

    move-object v0, p0

    move-object v1, p5

    .line 51
    invoke-virtual/range {v0 .. v5}, Lcom/cat/impl/DoRegistConn;->postTest(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Lcom/ta/util/http/AsyncHttpResponseHandler;)V

    .line 67
    return-void
.end method

.method static synthetic access$0(Lcom/cat/impl/DoRegistConn;)Lcom/cat/protocol/DoRegistInterface;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lcom/cat/impl/DoRegistConn;->m_iCallback:Lcom/cat/protocol/DoRegistInterface;

    return-object v0
.end method
