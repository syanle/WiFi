.class public Lcom/cat/impl/DoRePasswordConn;
.super Lcom/cat/impl/WifiAsyncHttpClient;
.source "DoRePasswordConn.java"


# instance fields
.field private m_iCallback:Lcom/cat/protocol/DoRePasswordInterface;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/cat/protocol/DoRePasswordInterface;Landroid/content/Context;)V
    .locals 7
    .param p1, "authid"    # Ljava/lang/String;
    .param p2, "memberid"    # Ljava/lang/String;
    .param p3, "countrycode"    # Ljava/lang/String;
    .param p4, "code"    # Ljava/lang/String;
    .param p5, "pwd"    # Ljava/lang/String;
    .param p6, "callback"    # Lcom/cat/protocol/DoRePasswordInterface;
    .param p7, "context"    # Landroid/content/Context;

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/cat/impl/WifiAsyncHttpClient;-><init>()V

    .line 40
    iput-object p6, p0, Lcom/cat/impl/DoRePasswordConn;->m_iCallback:Lcom/cat/protocol/DoRePasswordInterface;

    .line 41
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 42
    .local v3, "paramList":Ljava/util/List;, "Ljava/util/List<Lcom/ta/util/http/DataObject;>;"
    new-instance v0, Lcom/ta/util/http/DataObject;

    const-string v1, "mobile"

    invoke-direct {v0, v1, p1}, Lcom/ta/util/http/DataObject;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 43
    new-instance v0, Lcom/ta/util/http/DataObject;

    const-string v1, "memberid"

    invoke-direct {v0, v1, p2}, Lcom/ta/util/http/DataObject;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 44
    new-instance v0, Lcom/ta/util/http/DataObject;

    const-string v1, "countrycode"

    invoke-direct {v0, v1, p3}, Lcom/ta/util/http/DataObject;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 45
    new-instance v0, Lcom/ta/util/http/DataObject;

    const-string v1, "code"

    invoke-direct {v0, v1, p4}, Lcom/ta/util/http/DataObject;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 46
    new-instance v0, Lcom/ta/util/http/DataObject;

    const-string v1, "password"

    invoke-direct {v0, v1, p5}, Lcom/ta/util/http/DataObject;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 47
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "mobile="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "&memberid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 48
    const-string v1, "&countrycode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "&code="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 49
    const-string v1, "&password="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 47
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 51
    .local v6, "bodyparam":Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v1, Lcom/cat/tools/HttpConf;->iWiFi_WIFI_HOST:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 52
    const-string v1, "repwd.html"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 53
    const-string v1, "repwd.html"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lcom/cat/impl/DoRePasswordConn$1;

    invoke-direct {v5, p0}, Lcom/cat/impl/DoRePasswordConn$1;-><init>(Lcom/cat/impl/DoRePasswordConn;)V

    move-object v0, p0

    move-object v1, p7

    .line 51
    invoke-virtual/range {v0 .. v5}, Lcom/cat/impl/DoRePasswordConn;->postTest(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Lcom/ta/util/http/AsyncHttpResponseHandler;)V

    .line 67
    return-void
.end method

.method static synthetic access$0(Lcom/cat/impl/DoRePasswordConn;)Lcom/cat/protocol/DoRePasswordInterface;
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lcom/cat/impl/DoRePasswordConn;->m_iCallback:Lcom/cat/protocol/DoRePasswordInterface;

    return-object v0
.end method
