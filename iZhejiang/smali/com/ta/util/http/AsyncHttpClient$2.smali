.class Lcom/ta/util/http/AsyncHttpClient$2;
.super Ljava/lang/Object;
.source "AsyncHttpClient.java"

# interfaces
.implements Lorg/apache/http/HttpResponseInterceptor;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ta/util/http/AsyncHttpClient;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ta/util/http/AsyncHttpClient;


# direct methods
.method constructor <init>(Lcom/ta/util/http/AsyncHttpClient;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/ta/util/http/AsyncHttpClient$2;->this$0:Lcom/ta/util/http/AsyncHttpClient;

    .line 150
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public process(Lorg/apache/http/HttpResponse;Lorg/apache/http/protocol/HttpContext;)V
    .locals 8
    .param p1, "response"    # Lorg/apache/http/HttpResponse;
    .param p2, "context"    # Lorg/apache/http/protocol/HttpContext;

    .prologue
    .line 153
    invoke-interface {p1}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v2

    .line 154
    .local v2, "entity":Lorg/apache/http/HttpEntity;
    if-nez v2, :cond_1

    .line 167
    :cond_0
    :goto_0
    return-void

    .line 157
    :cond_1
    invoke-interface {v2}, Lorg/apache/http/HttpEntity;->getContentEncoding()Lorg/apache/http/Header;

    move-result-object v1

    .line 158
    .local v1, "encoding":Lorg/apache/http/Header;
    if-eqz v1, :cond_0

    .line 159
    invoke-interface {v1}, Lorg/apache/http/Header;->getElements()[Lorg/apache/http/HeaderElement;

    move-result-object v4

    array-length v5, v4

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v5, :cond_0

    aget-object v0, v4, v3

    .line 160
    .local v0, "element":Lorg/apache/http/HeaderElement;
    invoke-interface {v0}, Lorg/apache/http/HeaderElement;->getName()Ljava/lang/String;

    move-result-object v6

    const-string v7, "gzip"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 161
    new-instance v3, Lcom/ta/util/http/AsyncHttpClient$InflatingEntity;

    .line 162
    invoke-interface {p1}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/ta/util/http/AsyncHttpClient$InflatingEntity;-><init>(Lorg/apache/http/HttpEntity;)V

    .line 161
    invoke-interface {p1, v3}, Lorg/apache/http/HttpResponse;->setEntity(Lorg/apache/http/HttpEntity;)V

    goto :goto_0

    .line 159
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1
.end method
