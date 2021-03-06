.class public Lcom/cat/impl/DoLoginConn;
.super Lcom/cat/impl/WifiAsyncHttpClient;
.source "DoLoginConn.java"


# instance fields
.field private m_iCallback:Lcom/cat/protocol/DoLoginInterface;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/cat/protocol/DoLoginInterface;Landroid/content/Context;)V
    .locals 7
    .param p1, "username"    # Ljava/lang/String;
    .param p2, "countrycode"    # Ljava/lang/String;
    .param p3, "password"    # Ljava/lang/String;
    .param p4, "callback"    # Lcom/cat/protocol/DoLoginInterface;
    .param p5, "context"    # Landroid/content/Context;

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/cat/impl/WifiAsyncHttpClient;-><init>()V

    .line 38
    iput-object p4, p0, Lcom/cat/impl/DoLoginConn;->m_iCallback:Lcom/cat/protocol/DoLoginInterface;

    .line 39
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 40
    .local v3, "paramList":Ljava/util/List;, "Ljava/util/List<Lcom/ta/util/http/DataObject;>;"
    new-instance v0, Lcom/ta/util/http/DataObject;

    const-string v1, "authid"

    invoke-direct {v0, v1, p1}, Lcom/ta/util/http/DataObject;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 41
    new-instance v0, Lcom/ta/util/http/DataObject;

    const-string v1, "countrycode"

    invoke-direct {v0, v1, p2}, Lcom/ta/util/http/DataObject;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 42
    new-instance v0, Lcom/ta/util/http/DataObject;

    const-string v1, "password"

    invoke-direct {v0, v1, p3}, Lcom/ta/util/http/DataObject;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 44
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "authid="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "&countrycode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 45
    const-string v1, "&password="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 44
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 48
    .local v6, "bodyparam":Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v1, Lcom/cat/tools/HttpConf;->iWiFi_WIFI_HOST:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "login.html"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 49
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "login.html"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 50
    new-instance v5, Lcom/cat/impl/DoLoginConn$1;

    invoke-direct {v5, p0}, Lcom/cat/impl/DoLoginConn$1;-><init>(Lcom/cat/impl/DoLoginConn;)V

    move-object v0, p0

    move-object v1, p5

    .line 47
    invoke-virtual/range {v0 .. v5}, Lcom/cat/impl/DoLoginConn;->postTest(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Lcom/ta/util/http/AsyncHttpResponseHandler;)V

    .line 64
    return-void
.end method

.method static synthetic access$0(Lcom/cat/impl/DoLoginConn;)Lcom/cat/protocol/DoLoginInterface;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lcom/cat/impl/DoLoginConn;->m_iCallback:Lcom/cat/protocol/DoLoginInterface;

    return-object v0
.end method
