.class Lcom/cat/impl/WifiAsyncHttpClient$1;
.super Ljava/lang/Object;
.source "WifiAsyncHttpClient.java"

# interfaces
.implements Lorg/apache/http/HttpRequestInterceptor;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cat/impl/WifiAsyncHttpClient;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cat/impl/WifiAsyncHttpClient;


# direct methods
.method constructor <init>(Lcom/cat/impl/WifiAsyncHttpClient;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/cat/impl/WifiAsyncHttpClient$1;->this$0:Lcom/cat/impl/WifiAsyncHttpClient;

    .line 149
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public process(Lorg/apache/http/HttpRequest;Lorg/apache/http/protocol/HttpContext;)V
    .locals 3
    .param p1, "request"    # Lorg/apache/http/HttpRequest;
    .param p2, "context"    # Lorg/apache/http/protocol/HttpContext;

    .prologue
    .line 152
    const-string v1, "Accept-Encoding"

    invoke-interface {p1, v1}, Lorg/apache/http/HttpRequest;->containsHeader(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 153
    const-string v1, "Accept-Encoding"

    const-string v2, "gzip"

    invoke-interface {p1, v1, v2}, Lorg/apache/http/HttpRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 155
    :cond_0
    iget-object v1, p0, Lcom/cat/impl/WifiAsyncHttpClient$1;->this$0:Lcom/cat/impl/WifiAsyncHttpClient;

    # getter for: Lcom/cat/impl/WifiAsyncHttpClient;->clientHeaderMap:Ljava/util/Map;
    invoke-static {v1}, Lcom/cat/impl/WifiAsyncHttpClient;->access$0(Lcom/cat/impl/WifiAsyncHttpClient;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_1

    .line 158
    return-void

    .line 155
    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 156
    .local v0, "header":Ljava/lang/String;
    iget-object v1, p0, Lcom/cat/impl/WifiAsyncHttpClient$1;->this$0:Lcom/cat/impl/WifiAsyncHttpClient;

    # getter for: Lcom/cat/impl/WifiAsyncHttpClient;->clientHeaderMap:Ljava/util/Map;
    invoke-static {v1}, Lcom/cat/impl/WifiAsyncHttpClient;->access$0(Lcom/cat/impl/WifiAsyncHttpClient;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {p1, v0, v1}, Lorg/apache/http/HttpRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
