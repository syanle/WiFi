.class public Lcom/ta/TASyncHttpClient;
.super Lcom/ta/util/http/AsyncHttpClient;
.source "TASyncHttpClient.java"


# instance fields
.field private responseCode:I

.field protected responseHandler:Lcom/ta/util/http/AsyncHttpResponseHandler;

.field protected result:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/ta/util/http/AsyncHttpClient;-><init>()V

    .line 45
    new-instance v0, Lcom/ta/TASyncHttpClient$1;

    invoke-direct {v0, p0}, Lcom/ta/TASyncHttpClient$1;-><init>(Lcom/ta/TASyncHttpClient;)V

    iput-object v0, p0, Lcom/ta/TASyncHttpClient;->responseHandler:Lcom/ta/util/http/AsyncHttpResponseHandler;

    .line 41
    return-void
.end method

.method static synthetic access$0(Lcom/ta/TASyncHttpClient;I)V
    .locals 0

    .prologue
    .line 43
    iput p1, p0, Lcom/ta/TASyncHttpClient;->responseCode:I

    return-void
.end method


# virtual methods
.method public delete(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 154
    const/4 v0, 0x0

    iget-object v1, p0, Lcom/ta/TASyncHttpClient;->responseHandler:Lcom/ta/util/http/AsyncHttpResponseHandler;

    invoke-virtual {p0, p1, v0, v1}, Lcom/ta/TASyncHttpClient;->delete(Ljava/lang/String;Lcom/ta/util/http/RequestParams;Lcom/ta/util/http/AsyncHttpResponseHandler;)V

    .line 155
    iget-object v0, p0, Lcom/ta/TASyncHttpClient;->result:Ljava/lang/String;

    return-object v0
.end method

.method public delete(Ljava/lang/String;Lcom/ta/util/http/RequestParams;)Ljava/lang/String;
    .locals 1
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "params"    # Lcom/ta/util/http/RequestParams;

    .prologue
    .line 148
    iget-object v0, p0, Lcom/ta/TASyncHttpClient;->responseHandler:Lcom/ta/util/http/AsyncHttpResponseHandler;

    invoke-virtual {p0, p1, p2, v0}, Lcom/ta/TASyncHttpClient;->delete(Ljava/lang/String;Lcom/ta/util/http/RequestParams;Lcom/ta/util/http/AsyncHttpResponseHandler;)V

    .line 149
    iget-object v0, p0, Lcom/ta/TASyncHttpClient;->result:Ljava/lang/String;

    return-object v0
.end method

.method public delete(Ljava/lang/String;Lcom/ta/util/http/RequestParams;Lcom/ta/util/http/AsyncHttpResponseHandler;)V
    .locals 0
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "queryParams"    # Lcom/ta/util/http/RequestParams;
    .param p3, "responseHandler"    # Lcom/ta/util/http/AsyncHttpResponseHandler;

    .prologue
    .line 101
    invoke-virtual {p0, p1, p3}, Lcom/ta/TASyncHttpClient;->delete(Ljava/lang/String;Lcom/ta/util/http/AsyncHttpResponseHandler;)V

    .line 102
    return-void
.end method

.method public get(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 112
    const/4 v0, 0x0

    iget-object v1, p0, Lcom/ta/TASyncHttpClient;->responseHandler:Lcom/ta/util/http/AsyncHttpResponseHandler;

    invoke-virtual {p0, p1, v0, v1}, Lcom/ta/TASyncHttpClient;->get(Ljava/lang/String;Lcom/ta/util/http/RequestParams;Lcom/ta/util/http/AsyncHttpResponseHandler;)V

    .line 113
    iget-object v0, p0, Lcom/ta/TASyncHttpClient;->result:Ljava/lang/String;

    return-object v0
.end method

.method public get(Ljava/lang/String;Lcom/ta/util/http/RequestParams;)Ljava/lang/String;
    .locals 1
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "params"    # Lcom/ta/util/http/RequestParams;

    .prologue
    .line 106
    iget-object v0, p0, Lcom/ta/TASyncHttpClient;->responseHandler:Lcom/ta/util/http/AsyncHttpResponseHandler;

    invoke-virtual {p0, p1, p2, v0}, Lcom/ta/TASyncHttpClient;->get(Ljava/lang/String;Lcom/ta/util/http/RequestParams;Lcom/ta/util/http/AsyncHttpResponseHandler;)V

    .line 107
    iget-object v0, p0, Lcom/ta/TASyncHttpClient;->result:Ljava/lang/String;

    return-object v0
.end method

.method public getResponseCode()I
    .locals 1

    .prologue
    .line 76
    iget v0, p0, Lcom/ta/TASyncHttpClient;->responseCode:I

    return v0
.end method

.method public onRequestFailed(Ljava/lang/Throwable;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "error"    # Ljava/lang/Throwable;
    .param p2, "content"    # Ljava/lang/String;

    .prologue
    .line 95
    const-string v0, ""

    return-object v0
.end method

.method public post(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 142
    const/4 v0, 0x0

    iget-object v1, p0, Lcom/ta/TASyncHttpClient;->responseHandler:Lcom/ta/util/http/AsyncHttpResponseHandler;

    invoke-virtual {p0, p1, v0, v1}, Lcom/ta/TASyncHttpClient;->post(Ljava/lang/String;Lcom/ta/util/http/RequestParams;Lcom/ta/util/http/AsyncHttpResponseHandler;)V

    .line 143
    iget-object v0, p0, Lcom/ta/TASyncHttpClient;->result:Ljava/lang/String;

    return-object v0
.end method

.method public post(Ljava/lang/String;Lcom/ta/util/http/RequestParams;)Ljava/lang/String;
    .locals 1
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "params"    # Lcom/ta/util/http/RequestParams;

    .prologue
    .line 130
    iget-object v0, p0, Lcom/ta/TASyncHttpClient;->responseHandler:Lcom/ta/util/http/AsyncHttpResponseHandler;

    invoke-virtual {p0, p1, p2, v0}, Lcom/ta/TASyncHttpClient;->post(Ljava/lang/String;Lcom/ta/util/http/RequestParams;Lcom/ta/util/http/AsyncHttpResponseHandler;)V

    .line 131
    iget-object v0, p0, Lcom/ta/TASyncHttpClient;->result:Ljava/lang/String;

    return-object v0
.end method

.method public postL(Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;
    .locals 1
    .param p1, "url"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/ta/util/http/DataObject;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 136
    .local p2, "params":Ljava/util/List;, "Ljava/util/List<Lcom/ta/util/http/DataObject;>;"
    iget-object v0, p0, Lcom/ta/TASyncHttpClient;->responseHandler:Lcom/ta/util/http/AsyncHttpResponseHandler;

    invoke-virtual {p0, p1, p2, v0}, Lcom/ta/TASyncHttpClient;->postL(Ljava/lang/String;Ljava/util/List;Lcom/ta/util/http/AsyncHttpResponseHandler;)V

    .line 137
    iget-object v0, p0, Lcom/ta/TASyncHttpClient;->result:Ljava/lang/String;

    return-object v0
.end method

.method public put(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 124
    const/4 v0, 0x0

    iget-object v1, p0, Lcom/ta/TASyncHttpClient;->responseHandler:Lcom/ta/util/http/AsyncHttpResponseHandler;

    invoke-virtual {p0, p1, v0, v1}, Lcom/ta/TASyncHttpClient;->put(Ljava/lang/String;Lcom/ta/util/http/RequestParams;Lcom/ta/util/http/AsyncHttpResponseHandler;)V

    .line 125
    iget-object v0, p0, Lcom/ta/TASyncHttpClient;->result:Ljava/lang/String;

    return-object v0
.end method

.method public put(Ljava/lang/String;Lcom/ta/util/http/RequestParams;)Ljava/lang/String;
    .locals 1
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "params"    # Lcom/ta/util/http/RequestParams;

    .prologue
    .line 118
    iget-object v0, p0, Lcom/ta/TASyncHttpClient;->responseHandler:Lcom/ta/util/http/AsyncHttpResponseHandler;

    invoke-virtual {p0, p1, p2, v0}, Lcom/ta/TASyncHttpClient;->put(Ljava/lang/String;Lcom/ta/util/http/RequestParams;Lcom/ta/util/http/AsyncHttpResponseHandler;)V

    .line 119
    iget-object v0, p0, Lcom/ta/TASyncHttpClient;->result:Ljava/lang/String;

    return-object v0
.end method

.method protected sendRequest(Lorg/apache/http/impl/client/DefaultHttpClient;Lorg/apache/http/protocol/HttpContext;Lorg/apache/http/client/methods/HttpUriRequest;Ljava/lang/String;Lcom/ta/util/http/AsyncHttpResponseHandler;Landroid/content/Context;)V
    .locals 1
    .param p1, "client"    # Lorg/apache/http/impl/client/DefaultHttpClient;
    .param p2, "httpContext"    # Lorg/apache/http/protocol/HttpContext;
    .param p3, "uriRequest"    # Lorg/apache/http/client/methods/HttpUriRequest;
    .param p4, "contentType"    # Ljava/lang/String;
    .param p5, "responseHandler"    # Lcom/ta/util/http/AsyncHttpResponseHandler;
    .param p6, "context"    # Landroid/content/Context;

    .prologue
    .line 85
    if-eqz p4, :cond_0

    .line 87
    const-string v0, "Content-Type"

    invoke-interface {p3, v0, p4}, Lorg/apache/http/client/methods/HttpUriRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    :cond_0
    new-instance v0, Lcom/ta/util/http/AsyncHttpRequest;

    invoke-direct {v0, p1, p2, p3, p5}, Lcom/ta/util/http/AsyncHttpRequest;-><init>(Lorg/apache/http/impl/client/AbstractHttpClient;Lorg/apache/http/protocol/HttpContext;Lorg/apache/http/client/methods/HttpUriRequest;Lcom/ta/util/http/AsyncHttpResponseHandler;)V

    .line 90
    invoke-virtual {v0}, Lcom/ta/util/http/AsyncHttpRequest;->run()V

    .line 91
    return-void
.end method
