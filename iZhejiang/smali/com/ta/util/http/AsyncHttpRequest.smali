.class public Lcom/ta/util/http/AsyncHttpRequest;
.super Ljava/lang/Object;
.source "AsyncHttpRequest.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final client:Lorg/apache/http/impl/client/AbstractHttpClient;

.field private final context:Lorg/apache/http/protocol/HttpContext;

.field private executionCount:I

.field private isBinaryRequest:Z

.field private final request:Lorg/apache/http/client/methods/HttpUriRequest;

.field private final responseHandler:Lcom/ta/util/http/AsyncHttpResponseHandler;


# direct methods
.method public constructor <init>(Lorg/apache/http/impl/client/AbstractHttpClient;Lorg/apache/http/protocol/HttpContext;Lorg/apache/http/client/methods/HttpUriRequest;Lcom/ta/util/http/AsyncHttpResponseHandler;)V
    .locals 8
    .param p1, "client"    # Lorg/apache/http/impl/client/AbstractHttpClient;
    .param p2, "context"    # Lorg/apache/http/protocol/HttpContext;
    .param p3, "request"    # Lorg/apache/http/client/methods/HttpUriRequest;
    .param p4, "responseHandler"    # Lcom/ta/util/http/AsyncHttpResponseHandler;

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object p1, p0, Lcom/ta/util/http/AsyncHttpRequest;->client:Lorg/apache/http/impl/client/AbstractHttpClient;

    .line 28
    iput-object p2, p0, Lcom/ta/util/http/AsyncHttpRequest;->context:Lorg/apache/http/protocol/HttpContext;

    .line 29
    iput-object p3, p0, Lcom/ta/util/http/AsyncHttpRequest;->request:Lorg/apache/http/client/methods/HttpUriRequest;

    .line 30
    iput-object p4, p0, Lcom/ta/util/http/AsyncHttpRequest;->responseHandler:Lcom/ta/util/http/AsyncHttpResponseHandler;

    .line 31
    instance-of v4, p4, Lcom/ta/util/http/BinaryHttpResponseHandler;

    if-eqz v4, :cond_1

    .line 33
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/ta/util/http/AsyncHttpRequest;->isBinaryRequest:Z

    .line 49
    :cond_0
    :goto_0
    return-void

    .line 34
    :cond_1
    instance-of v4, p4, Lcom/ta/util/http/FileHttpResponseHandler;

    if-eqz v4, :cond_0

    move-object v0, p4

    .line 36
    check-cast v0, Lcom/ta/util/http/FileHttpResponseHandler;

    .line 37
    .local v0, "fileHttpResponseHandler":Lcom/ta/util/http/FileHttpResponseHandler;
    invoke-virtual {v0}, Lcom/ta/util/http/FileHttpResponseHandler;->getTempFile()Ljava/io/File;

    move-result-object v3

    .line 39
    .local v3, "tempFile":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 42
    invoke-virtual {v3}, Ljava/io/File;->length()J

    move-result-wide v1

    .line 43
    .local v1, "previousFileSize":J
    invoke-virtual {v0, v1, v2}, Lcom/ta/util/http/FileHttpResponseHandler;->setPreviousFileSize(J)V

    .line 44
    iget-object v4, p0, Lcom/ta/util/http/AsyncHttpRequest;->request:Lorg/apache/http/client/methods/HttpUriRequest;

    const-string v5, "RANGE"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "bytes="

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 45
    const-string v7, "-"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 44
    invoke-interface {v4, v5, v6}, Lorg/apache/http/client/methods/HttpUriRequest;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private makeRequest()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 85
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v2

    if-nez v2, :cond_0

    .line 89
    :try_start_0
    iget-object v2, p0, Lcom/ta/util/http/AsyncHttpRequest;->client:Lorg/apache/http/impl/client/AbstractHttpClient;

    iget-object v3, p0, Lcom/ta/util/http/AsyncHttpRequest;->request:Lorg/apache/http/client/methods/HttpUriRequest;

    iget-object v4, p0, Lcom/ta/util/http/AsyncHttpRequest;->context:Lorg/apache/http/protocol/HttpContext;

    invoke-virtual {v2, v3, v4}, Lorg/apache/http/impl/client/AbstractHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;Lorg/apache/http/protocol/HttpContext;)Lorg/apache/http/HttpResponse;

    move-result-object v1

    .line 90
    .local v1, "response":Lorg/apache/http/HttpResponse;
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v2

    if-nez v2, :cond_0

    .line 92
    iget-object v2, p0, Lcom/ta/util/http/AsyncHttpRequest;->responseHandler:Lcom/ta/util/http/AsyncHttpResponseHandler;

    if-eqz v2, :cond_0

    .line 94
    iget-object v2, p0, Lcom/ta/util/http/AsyncHttpRequest;->responseHandler:Lcom/ta/util/http/AsyncHttpResponseHandler;

    invoke-virtual {v2, v1}, Lcom/ta/util/http/AsyncHttpResponseHandler;->sendResponseMessage(Lorg/apache/http/HttpResponse;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 110
    .end local v1    # "response":Lorg/apache/http/HttpResponse;
    :cond_0
    return-void

    .line 102
    :catch_0
    move-exception v0

    .line 104
    .local v0, "e":Ljava/io/IOException;
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v2

    if-nez v2, :cond_0

    .line 106
    throw v0
.end method

.method private makeRequestWithRetries()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/ConnectException;
        }
    .end annotation

    .prologue
    .line 117
    const/4 v3, 0x1

    .line 118
    .local v3, "retry":Z
    const/4 v0, 0x0

    .line 119
    .local v0, "cause":Ljava/io/IOException;
    iget-object v5, p0, Lcom/ta/util/http/AsyncHttpRequest;->client:Lorg/apache/http/impl/client/AbstractHttpClient;

    .line 120
    invoke-virtual {v5}, Lorg/apache/http/impl/client/AbstractHttpClient;->getHttpRequestRetryHandler()Lorg/apache/http/client/HttpRequestRetryHandler;

    move-result-object v4

    .line 121
    .local v4, "retryHandler":Lorg/apache/http/client/HttpRequestRetryHandler;
    :goto_0
    if-nez v3, :cond_0

    .line 167
    new-instance v2, Ljava/net/ConnectException;

    invoke-direct {v2}, Ljava/net/ConnectException;-><init>()V

    .line 168
    .local v2, "ex":Ljava/net/ConnectException;
    invoke-virtual {v2, v0}, Ljava/net/ConnectException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 169
    throw v2

    .line 125
    .end local v2    # "ex":Ljava/net/ConnectException;
    :cond_0
    :try_start_0
    invoke-direct {p0}, Lcom/ta/util/http/AsyncHttpRequest;->makeRequest()V
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/net/SocketTimeoutException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_4

    .line 148
    :cond_1
    :goto_1
    return-void

    .line 127
    :catch_0
    move-exception v1

    .line 129
    .local v1, "e":Ljava/net/UnknownHostException;
    iget-object v5, p0, Lcom/ta/util/http/AsyncHttpRequest;->responseHandler:Lcom/ta/util/http/AsyncHttpResponseHandler;

    if-eqz v5, :cond_1

    .line 131
    iget-object v5, p0, Lcom/ta/util/http/AsyncHttpRequest;->responseHandler:Lcom/ta/util/http/AsyncHttpResponseHandler;

    const-string v6, "can\'t resolve host"

    invoke-virtual {v5, v1, v6}, Lcom/ta/util/http/AsyncHttpResponseHandler;->sendFailureMessage(Ljava/lang/Throwable;Ljava/lang/String;)V

    goto :goto_1

    .line 134
    .end local v1    # "e":Ljava/net/UnknownHostException;
    :catch_1
    move-exception v1

    .line 137
    .local v1, "e":Ljava/net/SocketException;
    iget-object v5, p0, Lcom/ta/util/http/AsyncHttpRequest;->responseHandler:Lcom/ta/util/http/AsyncHttpResponseHandler;

    if-eqz v5, :cond_1

    .line 139
    iget-object v5, p0, Lcom/ta/util/http/AsyncHttpRequest;->responseHandler:Lcom/ta/util/http/AsyncHttpResponseHandler;

    const-string v6, "can\'t resolve host"

    invoke-virtual {v5, v1, v6}, Lcom/ta/util/http/AsyncHttpResponseHandler;->sendFailureMessage(Ljava/lang/Throwable;Ljava/lang/String;)V

    goto :goto_1

    .line 142
    .end local v1    # "e":Ljava/net/SocketException;
    :catch_2
    move-exception v1

    .line 144
    .local v1, "e":Ljava/net/SocketTimeoutException;
    iget-object v5, p0, Lcom/ta/util/http/AsyncHttpRequest;->responseHandler:Lcom/ta/util/http/AsyncHttpResponseHandler;

    if-eqz v5, :cond_1

    .line 146
    iget-object v5, p0, Lcom/ta/util/http/AsyncHttpRequest;->responseHandler:Lcom/ta/util/http/AsyncHttpResponseHandler;

    const-string v6, "socket time out"

    invoke-virtual {v5, v1, v6}, Lcom/ta/util/http/AsyncHttpResponseHandler;->sendFailureMessage(Ljava/lang/Throwable;Ljava/lang/String;)V

    goto :goto_1

    .line 149
    .end local v1    # "e":Ljava/net/SocketTimeoutException;
    :catch_3
    move-exception v1

    .line 151
    .local v1, "e":Ljava/io/IOException;
    move-object v0, v1

    .line 152
    iget v5, p0, Lcom/ta/util/http/AsyncHttpRequest;->executionCount:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lcom/ta/util/http/AsyncHttpRequest;->executionCount:I

    .line 153
    iget-object v6, p0, Lcom/ta/util/http/AsyncHttpRequest;->context:Lorg/apache/http/protocol/HttpContext;

    .line 152
    invoke-interface {v4, v0, v5, v6}, Lorg/apache/http/client/HttpRequestRetryHandler;->retryRequest(Ljava/io/IOException;ILorg/apache/http/protocol/HttpContext;)Z

    move-result v3

    goto :goto_0

    .line 154
    .end local v1    # "e":Ljava/io/IOException;
    :catch_4
    move-exception v1

    .line 160
    .local v1, "e":Ljava/lang/NullPointerException;
    new-instance v0, Ljava/io/IOException;

    .end local v0    # "cause":Ljava/io/IOException;
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "NPE in HttpClient"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/NullPointerException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v0, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 161
    .restart local v0    # "cause":Ljava/io/IOException;
    iget v5, p0, Lcom/ta/util/http/AsyncHttpRequest;->executionCount:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lcom/ta/util/http/AsyncHttpRequest;->executionCount:I

    .line 162
    iget-object v6, p0, Lcom/ta/util/http/AsyncHttpRequest;->context:Lorg/apache/http/protocol/HttpContext;

    .line 161
    invoke-interface {v4, v0, v5, v6}, Lorg/apache/http/client/HttpRequestRetryHandler;->retryRequest(Ljava/io/IOException;ILorg/apache/http/protocol/HttpContext;)Z

    move-result v3

    goto :goto_0
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 56
    :try_start_0
    iget-object v1, p0, Lcom/ta/util/http/AsyncHttpRequest;->responseHandler:Lcom/ta/util/http/AsyncHttpResponseHandler;

    if-eqz v1, :cond_0

    .line 58
    iget-object v1, p0, Lcom/ta/util/http/AsyncHttpRequest;->responseHandler:Lcom/ta/util/http/AsyncHttpResponseHandler;

    invoke-virtual {v1}, Lcom/ta/util/http/AsyncHttpResponseHandler;->sendStartMessage()V

    .line 61
    :cond_0
    invoke-direct {p0}, Lcom/ta/util/http/AsyncHttpRequest;->makeRequestWithRetries()V

    .line 62
    iget-object v1, p0, Lcom/ta/util/http/AsyncHttpRequest;->responseHandler:Lcom/ta/util/http/AsyncHttpResponseHandler;

    if-eqz v1, :cond_1

    .line 64
    iget-object v1, p0, Lcom/ta/util/http/AsyncHttpRequest;->responseHandler:Lcom/ta/util/http/AsyncHttpResponseHandler;

    invoke-virtual {v1}, Lcom/ta/util/http/AsyncHttpResponseHandler;->sendFinishMessage()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 81
    :cond_1
    :goto_0
    return-void

    .line 67
    :catch_0
    move-exception v0

    .line 69
    .local v0, "e":Ljava/io/IOException;
    iget-object v1, p0, Lcom/ta/util/http/AsyncHttpRequest;->responseHandler:Lcom/ta/util/http/AsyncHttpResponseHandler;

    if-eqz v1, :cond_1

    .line 71
    iget-object v1, p0, Lcom/ta/util/http/AsyncHttpRequest;->responseHandler:Lcom/ta/util/http/AsyncHttpResponseHandler;

    invoke-virtual {v1}, Lcom/ta/util/http/AsyncHttpResponseHandler;->sendFinishMessage()V

    .line 72
    iget-boolean v1, p0, Lcom/ta/util/http/AsyncHttpRequest;->isBinaryRequest:Z

    if-eqz v1, :cond_2

    .line 74
    iget-object v1, p0, Lcom/ta/util/http/AsyncHttpRequest;->responseHandler:Lcom/ta/util/http/AsyncHttpResponseHandler;

    invoke-virtual {v1, v0, v2}, Lcom/ta/util/http/AsyncHttpResponseHandler;->sendFailureMessage(Ljava/lang/Throwable;[B)V

    goto :goto_0

    .line 77
    :cond_2
    iget-object v1, p0, Lcom/ta/util/http/AsyncHttpRequest;->responseHandler:Lcom/ta/util/http/AsyncHttpResponseHandler;

    invoke-virtual {v1, v0, v2}, Lcom/ta/util/http/AsyncHttpResponseHandler;->sendFailureMessage(Ljava/lang/Throwable;Ljava/lang/String;)V

    goto :goto_0
.end method
