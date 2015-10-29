.class public Lcom/ta/util/http/AsyncHttpResponseHandler;
.super Ljava/lang/Object;
.source "AsyncHttpResponseHandler.java"


# static fields
.field protected static final FAILURE_MESSAGE:I = 0x1

.field protected static final FINISH_MESSAGE:I = 0x3

.field protected static final PROGRESS_MESSAGE:I = 0x0

.field protected static final START_MESSAGE:I = 0x2

.field protected static final SUCCESS_MESSAGE:I = 0x4


# instance fields
.field private handler:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 28
    new-instance v0, Lcom/ta/util/http/AsyncHttpResponseHandler$1;

    invoke-direct {v0, p0}, Lcom/ta/util/http/AsyncHttpResponseHandler$1;-><init>(Lcom/ta/util/http/AsyncHttpResponseHandler;)V

    iput-object v0, p0, Lcom/ta/util/http/AsyncHttpResponseHandler;->handler:Landroid/os/Handler;

    .line 37
    :cond_0
    return-void
.end method


# virtual methods
.method protected handleFailureMessage(Ljava/lang/Throwable;Ljava/lang/String;)V
    .locals 0
    .param p1, "e"    # Ljava/lang/Throwable;
    .param p2, "responseBody"    # Ljava/lang/String;

    .prologue
    .line 115
    invoke-virtual {p0, p1, p2}, Lcom/ta/util/http/AsyncHttpResponseHandler;->onFailure(Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 116
    return-void
.end method

.method protected handleMessage(Landroid/os/Message;)V
    .locals 8
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v5, 0x2

    const/4 v3, 0x1

    const/4 v1, 0x0

    .line 128
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 152
    :goto_0
    return-void

    .line 131
    :pswitch_0
    iget-object v7, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v7, [Ljava/lang/Object;

    .line 132
    .local v7, "response":[Ljava/lang/Object;
    aget-object v0, v7, v1

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    aget-object v0, v7, v3

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    .line 133
    aget-object v0, v7, v5

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    move-object v0, p0

    .line 132
    invoke-virtual/range {v0 .. v6}, Lcom/ta/util/http/AsyncHttpResponseHandler;->handleProgressMessage(JJJ)V

    goto :goto_0

    .line 136
    .end local v7    # "response":[Ljava/lang/Object;
    :pswitch_1
    iget-object v7, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v7, [Ljava/lang/Object;

    .line 137
    .restart local v7    # "response":[Ljava/lang/Object;
    aget-object v0, v7, v1

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 138
    aget-object v0, v7, v3

    check-cast v0, [Lorg/apache/http/Header;

    aget-object v1, v7, v5

    check-cast v1, Ljava/lang/String;

    .line 137
    invoke-virtual {p0, v2, v0, v1}, Lcom/ta/util/http/AsyncHttpResponseHandler;->handleSuccessMessage(I[Lorg/apache/http/Header;Ljava/lang/String;)V

    goto :goto_0

    .line 141
    .end local v7    # "response":[Ljava/lang/Object;
    :pswitch_2
    iget-object v7, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v7, [Ljava/lang/Object;

    .line 142
    .restart local v7    # "response":[Ljava/lang/Object;
    aget-object v0, v7, v1

    check-cast v0, Ljava/lang/Throwable;

    aget-object v1, v7, v3

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/ta/util/http/AsyncHttpResponseHandler;->handleFailureMessage(Ljava/lang/Throwable;Ljava/lang/String;)V

    goto :goto_0

    .line 145
    .end local v7    # "response":[Ljava/lang/Object;
    :pswitch_3
    invoke-virtual {p0}, Lcom/ta/util/http/AsyncHttpResponseHandler;->onStart()V

    goto :goto_0

    .line 148
    :pswitch_4
    invoke-virtual {p0}, Lcom/ta/util/http/AsyncHttpResponseHandler;->onFinish()V

    goto :goto_0

    .line 128
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_1
    .end packed-switch
.end method

.method protected handleProgressMessage(JJJ)V
    .locals 0
    .param p1, "totalSize"    # J
    .param p3, "currentSize"    # J
    .param p5, "speed"    # J

    .prologue
    .line 121
    invoke-virtual/range {p0 .. p6}, Lcom/ta/util/http/AsyncHttpResponseHandler;->onProgress(JJJ)V

    .line 122
    return-void
.end method

.method protected handleSuccessMessage(I[Lorg/apache/http/Header;Ljava/lang/String;)V
    .locals 0
    .param p1, "statusCode"    # I
    .param p2, "headers"    # [Lorg/apache/http/Header;
    .param p3, "responseBody"    # Ljava/lang/String;

    .prologue
    .line 110
    invoke-virtual {p0, p1, p2, p3}, Lcom/ta/util/http/AsyncHttpResponseHandler;->onSuccess(I[Lorg/apache/http/Header;Ljava/lang/String;)V

    .line 111
    return-void
.end method

.method protected obtainMessage(ILjava/lang/Object;)Landroid/os/Message;
    .locals 2
    .param p1, "responseMessage"    # I
    .param p2, "response"    # Ljava/lang/Object;

    .prologue
    .line 167
    const/4 v0, 0x0

    .line 168
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/ta/util/http/AsyncHttpResponseHandler;->handler:Landroid/os/Handler;

    if-eqz v1, :cond_0

    .line 170
    iget-object v1, p0, Lcom/ta/util/http/AsyncHttpResponseHandler;->handler:Landroid/os/Handler;

    invoke-virtual {v1, p1, p2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 177
    :goto_0
    return-object v0

    .line 173
    :cond_0
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 174
    iput p1, v0, Landroid/os/Message;->what:I

    .line 175
    iput-object p2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    goto :goto_0
.end method

.method public onFailure(Ljava/lang/Throwable;)V
    .locals 0
    .param p1, "error"    # Ljava/lang/Throwable;

    .prologue
    .line 70
    return-void
.end method

.method public onFailure(Ljava/lang/Throwable;Ljava/lang/String;)V
    .locals 0
    .param p1, "error"    # Ljava/lang/Throwable;
    .param p2, "content"    # Ljava/lang/String;

    .prologue
    .line 75
    invoke-virtual {p0, p1}, Lcom/ta/util/http/AsyncHttpResponseHandler;->onFailure(Ljava/lang/Throwable;)V

    .line 76
    return-void
.end method

.method public onFinish()V
    .locals 0

    .prologue
    .line 45
    return-void
.end method

.method public onProgress(JJJ)V
    .locals 0
    .param p1, "totalSize"    # J
    .param p3, "currentSize"    # J
    .param p5, "speed"    # J

    .prologue
    .line 55
    return-void
.end method

.method public onStart()V
    .locals 0

    .prologue
    .line 41
    return-void
.end method

.method public onSuccess(ILjava/lang/String;)V
    .locals 0
    .param p1, "statusCode"    # I
    .param p2, "content"    # Ljava/lang/String;

    .prologue
    .line 64
    invoke-virtual {p0, p2}, Lcom/ta/util/http/AsyncHttpResponseHandler;->onSuccess(Ljava/lang/String;)V

    .line 65
    return-void
.end method

.method public onSuccess(I[Lorg/apache/http/Header;Ljava/lang/String;)V
    .locals 0
    .param p1, "statusCode"    # I
    .param p2, "headers"    # [Lorg/apache/http/Header;
    .param p3, "content"    # Ljava/lang/String;

    .prologue
    .line 59
    invoke-virtual {p0, p1, p3}, Lcom/ta/util/http/AsyncHttpResponseHandler;->onSuccess(ILjava/lang/String;)V

    .line 60
    return-void
.end method

.method public onSuccess(Ljava/lang/String;)V
    .locals 0
    .param p1, "content"    # Ljava/lang/String;

    .prologue
    .line 50
    return-void
.end method

.method protected sendFailureMessage(Ljava/lang/Throwable;Ljava/lang/String;)V
    .locals 3
    .param p1, "e"    # Ljava/lang/Throwable;
    .param p2, "responseBody"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x1

    .line 87
    .line 88
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    aput-object p2, v0, v2

    .line 87
    invoke-virtual {p0, v2, v0}, Lcom/ta/util/http/AsyncHttpResponseHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/ta/util/http/AsyncHttpResponseHandler;->sendMessage(Landroid/os/Message;)V

    .line 89
    return-void
.end method

.method protected sendFailureMessage(Ljava/lang/Throwable;[B)V
    .locals 3
    .param p1, "e"    # Ljava/lang/Throwable;
    .param p2, "responseBody"    # [B

    .prologue
    const/4 v2, 0x1

    .line 93
    .line 94
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    aput-object p2, v0, v2

    .line 93
    invoke-virtual {p0, v2, v0}, Lcom/ta/util/http/AsyncHttpResponseHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/ta/util/http/AsyncHttpResponseHandler;->sendMessage(Landroid/os/Message;)V

    .line 95
    return-void
.end method

.method protected sendFinishMessage()V
    .locals 2

    .prologue
    .line 104
    const/4 v0, 0x3

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/ta/util/http/AsyncHttpResponseHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/ta/util/http/AsyncHttpResponseHandler;->sendMessage(Landroid/os/Message;)V

    .line 105
    return-void
.end method

.method protected sendMessage(Landroid/os/Message;)V
    .locals 1
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 156
    iget-object v0, p0, Lcom/ta/util/http/AsyncHttpResponseHandler;->handler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 158
    iget-object v0, p0, Lcom/ta/util/http/AsyncHttpResponseHandler;->handler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 163
    :goto_0
    return-void

    .line 161
    :cond_0
    invoke-virtual {p0, p1}, Lcom/ta/util/http/AsyncHttpResponseHandler;->handleMessage(Landroid/os/Message;)V

    goto :goto_0
.end method

.method protected sendResponseMessage(Lorg/apache/http/HttpResponse;)V
    .locals 9
    .param p1, "response"    # Lorg/apache/http/HttpResponse;

    .prologue
    .line 182
    invoke-interface {p1}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v4

    .line 183
    .local v4, "status":Lorg/apache/http/StatusLine;
    const/4 v3, 0x0

    .line 186
    .local v3, "responseBody":Ljava/lang/String;
    const/4 v1, 0x0

    .line 187
    .local v1, "entity":Lorg/apache/http/HttpEntity;
    :try_start_0
    invoke-interface {p1}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v5

    .line 188
    .local v5, "temp":Lorg/apache/http/HttpEntity;
    if-eqz v5, :cond_0

    .line 190
    new-instance v2, Lorg/apache/http/entity/BufferedHttpEntity;

    invoke-direct {v2, v5}, Lorg/apache/http/entity/BufferedHttpEntity;-><init>(Lorg/apache/http/HttpEntity;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 191
    .end local v1    # "entity":Lorg/apache/http/HttpEntity;
    .local v2, "entity":Lorg/apache/http/HttpEntity;
    :try_start_1
    const-string v6, "UTF-8"

    invoke-static {v2, v6}, Lorg/apache/http/util/EntityUtils;->toString(Lorg/apache/http/HttpEntity;Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v3

    .line 198
    .end local v2    # "entity":Lorg/apache/http/HttpEntity;
    .end local v5    # "temp":Lorg/apache/http/HttpEntity;
    :cond_0
    :goto_0
    invoke-interface {v4}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v6

    const/16 v7, 0x12c

    if-lt v6, v7, :cond_1

    .line 200
    new-instance v6, Lorg/apache/http/client/HttpResponseException;

    .line 201
    invoke-interface {v4}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v7

    invoke-interface {v4}, Lorg/apache/http/StatusLine;->getReasonPhrase()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v6, v7, v8}, Lorg/apache/http/client/HttpResponseException;-><init>(ILjava/lang/String;)V

    .line 200
    invoke-virtual {p0, v6, v3}, Lcom/ta/util/http/AsyncHttpResponseHandler;->sendFailureMessage(Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 208
    :goto_1
    return-void

    .line 193
    .restart local v1    # "entity":Lorg/apache/http/HttpEntity;
    :catch_0
    move-exception v0

    .line 195
    .local v0, "e":Ljava/io/IOException;
    :goto_2
    const/4 v6, 0x0

    invoke-virtual {p0, v0, v6}, Lcom/ta/util/http/AsyncHttpResponseHandler;->sendFailureMessage(Ljava/lang/Throwable;Ljava/lang/String;)V

    goto :goto_0

    .line 205
    .end local v0    # "e":Ljava/io/IOException;
    .end local v1    # "entity":Lorg/apache/http/HttpEntity;
    :cond_1
    invoke-interface {v4}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v6

    .line 206
    invoke-interface {p1}, Lorg/apache/http/HttpResponse;->getAllHeaders()[Lorg/apache/http/Header;

    move-result-object v7

    .line 205
    invoke-virtual {p0, v6, v7, v3}, Lcom/ta/util/http/AsyncHttpResponseHandler;->sendSuccessMessage(I[Lorg/apache/http/Header;Ljava/lang/String;)V

    goto :goto_1

    .line 193
    .restart local v2    # "entity":Lorg/apache/http/HttpEntity;
    .restart local v5    # "temp":Lorg/apache/http/HttpEntity;
    :catch_1
    move-exception v0

    move-object v1, v2

    .end local v2    # "entity":Lorg/apache/http/HttpEntity;
    .restart local v1    # "entity":Lorg/apache/http/HttpEntity;
    goto :goto_2
.end method

.method protected sendStartMessage()V
    .locals 2

    .prologue
    .line 99
    const/4 v0, 0x2

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/ta/util/http/AsyncHttpResponseHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/ta/util/http/AsyncHttpResponseHandler;->sendMessage(Landroid/os/Message;)V

    .line 100
    return-void
.end method

.method protected sendSuccessMessage(I[Lorg/apache/http/Header;Ljava/lang/String;)V
    .locals 4
    .param p1, "statusCode"    # I
    .param p2, "headers"    # [Lorg/apache/http/Header;
    .param p3, "responseBody"    # Ljava/lang/String;

    .prologue
    .line 81
    const/4 v0, 0x4

    .line 82
    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, p1}, Ljava/lang/Integer;-><init>(I)V

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object p2, v1, v2

    const/4 v2, 0x2

    aput-object p3, v1, v2

    .line 81
    invoke-virtual {p0, v0, v1}, Lcom/ta/util/http/AsyncHttpResponseHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/ta/util/http/AsyncHttpResponseHandler;->sendMessage(Landroid/os/Message;)V

    .line 83
    return-void
.end method
