.class public Lcom/cat/impl/DoCTPassConn;
.super Lcom/cat/impl/WifiAsyncHttpClient;
.source "DoCTPassConn.java"


# instance fields
.field private m_iCallback:Lcom/cat/protocol/DoCTPassInterface;


# direct methods
.method public constructor <init>(Lcom/cat/protocol/DoCTPassInterface;Landroid/content/Context;)V
    .locals 7
    .param p1, "callback"    # Lcom/cat/protocol/DoCTPassInterface;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/cat/impl/WifiAsyncHttpClient;-><init>()V

    .line 30
    iput-object p1, p0, Lcom/cat/impl/DoCTPassConn;->m_iCallback:Lcom/cat/protocol/DoCTPassInterface;

    .line 31
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 33
    .local v3, "paramList":Ljava/util/List;, "Ljava/util/List<Lcom/ta/util/http/DataObject;>;"
    const-string v6, ""

    .line 35
    .local v6, "bodyparam":Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v1, Lcom/cat/tools/HttpConf;->iWiFi_WIFI_HOSTNFC:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 36
    const-string v1, "getctpass.html"

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

    .line 37
    const-string v1, "getctpass.html"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lcom/cat/impl/DoCTPassConn$1;

    invoke-direct {v5, p0}, Lcom/cat/impl/DoCTPassConn$1;-><init>(Lcom/cat/impl/DoCTPassConn;)V

    move-object v0, p0

    move-object v1, p2

    .line 35
    invoke-virtual/range {v0 .. v5}, Lcom/cat/impl/DoCTPassConn;->postTest(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Lcom/ta/util/http/AsyncHttpResponseHandler;)V

    .line 51
    return-void
.end method

.method static synthetic access$0(Lcom/cat/impl/DoCTPassConn;)Lcom/cat/protocol/DoCTPassInterface;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lcom/cat/impl/DoCTPassConn;->m_iCallback:Lcom/cat/protocol/DoCTPassInterface;

    return-object v0
.end method
