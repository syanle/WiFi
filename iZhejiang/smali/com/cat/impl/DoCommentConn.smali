.class public Lcom/cat/impl/DoCommentConn;
.super Lcom/cat/impl/WifiAsyncHttpClient;
.source "DoCommentConn.java"


# instance fields
.field private m_iCallback:Lcom/cat/protocol/DoCommentInterface;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/cat/protocol/DoCommentInterface;Landroid/content/Context;)V
    .locals 7
    .param p1, "mac"    # Ljava/lang/String;
    .param p2, "authid"    # Ljava/lang/String;
    .param p3, "info"    # Ljava/lang/String;
    .param p4, "type"    # Ljava/lang/String;
    .param p5, "callback"    # Lcom/cat/protocol/DoCommentInterface;
    .param p6, "context"    # Landroid/content/Context;

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/cat/impl/WifiAsyncHttpClient;-><init>()V

    .line 31
    iput-object p5, p0, Lcom/cat/impl/DoCommentConn;->m_iCallback:Lcom/cat/protocol/DoCommentInterface;

    .line 32
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 33
    .local v3, "paramList":Ljava/util/List;, "Ljava/util/List<Lcom/ta/util/http/DataObject;>;"
    new-instance v0, Lcom/ta/util/http/DataObject;

    const-string v1, "mac"

    invoke-direct {v0, v1, p1}, Lcom/ta/util/http/DataObject;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 34
    new-instance v0, Lcom/ta/util/http/DataObject;

    const-string v1, "authid"

    invoke-direct {v0, v1, p2}, Lcom/ta/util/http/DataObject;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 35
    new-instance v0, Lcom/ta/util/http/DataObject;

    const-string v1, "info"

    invoke-direct {v0, v1, p3}, Lcom/ta/util/http/DataObject;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 36
    new-instance v0, Lcom/ta/util/http/DataObject;

    const-string v1, "type"

    invoke-direct {v0, v1, p4}, Lcom/ta/util/http/DataObject;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 38
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "mac="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "&authid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "&info="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 39
    const-string v1, "&type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 38
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 41
    .local v6, "bodyparam":Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v1, Lcom/cat/tools/HttpConf;->iWiFi_WIFI_HOSTAP:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 42
    const-string v1, "comment.html"

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

    .line 43
    const-string v1, "comment.html"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lcom/cat/impl/DoCommentConn$1;

    invoke-direct {v5, p0}, Lcom/cat/impl/DoCommentConn$1;-><init>(Lcom/cat/impl/DoCommentConn;)V

    move-object v0, p0

    move-object v1, p6

    .line 41
    invoke-virtual/range {v0 .. v5}, Lcom/cat/impl/DoCommentConn;->postTest(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Lcom/ta/util/http/AsyncHttpResponseHandler;)V

    .line 57
    return-void
.end method

.method static synthetic access$0(Lcom/cat/impl/DoCommentConn;)Lcom/cat/protocol/DoCommentInterface;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lcom/cat/impl/DoCommentConn;->m_iCallback:Lcom/cat/protocol/DoCommentInterface;

    return-object v0
.end method
