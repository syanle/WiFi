.class public Lcom/ta/util/http/BinaryHttpResponseHandler;
.super Lcom/ta/util/http/AsyncHttpResponseHandler;
.source "BinaryHttpResponseHandler.java"


# static fields
.field private static mAllowedContentTypes:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 60
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    .line 61
    const-string v2, "image/jpeg"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    .line 62
    const-string v2, "image/png"

    aput-object v2, v0, v1

    .line 60
    sput-object v0, Lcom/ta/util/http/BinaryHttpResponseHandler;->mAllowedContentTypes:[Ljava/lang/String;

    .line 63
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 69
    invoke-direct {p0}, Lcom/ta/util/http/AsyncHttpResponseHandler;-><init>()V

    .line 70
    return-void
.end method

.method public constructor <init>([Ljava/lang/String;)V
    .locals 0
    .param p1, "allowedContentTypes"    # [Ljava/lang/String;

    .prologue
    .line 77
    invoke-direct {p0}, Lcom/ta/util/http/BinaryHttpResponseHandler;-><init>()V

    .line 78
    sput-object p1, Lcom/ta/util/http/BinaryHttpResponseHandler;->mAllowedContentTypes:[Ljava/lang/String;

    .line 79
    return-void
.end method


# virtual methods
.method protected handleFailureMessage(Ljava/lang/Throwable;[B)V
    .locals 0
    .param p1, "e"    # Ljava/lang/Throwable;
    .param p2, "responseBody"    # [B

    .prologue
    .line 136
    invoke-virtual {p0, p1, p2}, Lcom/ta/util/http/BinaryHttpResponseHandler;->onFailure(Ljava/lang/Throwable;[B)V

    .line 137
    return-void
.end method

.method protected handleMessage(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 143
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 153
    :pswitch_0
    invoke-super {p0, p1}, Lcom/ta/util/http/AsyncHttpResponseHandler;->handleMessage(Landroid/os/Message;)V

    .line 156
    :goto_0
    return-void

    .line 145
    :pswitch_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    .line 146
    .local v0, "response":[Ljava/lang/Object;
    aget-object v1, v0, v2

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    aget-object v1, v0, v3

    check-cast v1, [B

    invoke-virtual {p0, v2, v1}, Lcom/ta/util/http/BinaryHttpResponseHandler;->handleSuccessMessage(I[B)V

    goto :goto_0

    .line 149
    .end local v0    # "response":[Ljava/lang/Object;
    :pswitch_2
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    .line 150
    .restart local v0    # "response":[Ljava/lang/Object;
    aget-object v1, v0, v2

    check-cast v1, Ljava/lang/Throwable;

    aget-object v2, v0, v3

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/ta/util/http/BinaryHttpResponseHandler;->handleFailureMessage(Ljava/lang/Throwable;Ljava/lang/String;)V

    goto :goto_0

    .line 143
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected handleSuccessMessage(I[B)V
    .locals 0
    .param p1, "statusCode"    # I
    .param p2, "responseBody"    # [B

    .prologue
    .line 132
    invoke-virtual {p0, p1, p2}, Lcom/ta/util/http/BinaryHttpResponseHandler;->onSuccess(I[B)V

    .line 133
    return-void
.end method

.method public onFailure(Ljava/lang/Throwable;[B)V
    .locals 0
    .param p1, "error"    # Ljava/lang/Throwable;
    .param p2, "binaryData"    # [B
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 110
    invoke-virtual {p0, p1}, Lcom/ta/util/http/BinaryHttpResponseHandler;->onFailure(Ljava/lang/Throwable;)V

    .line 111
    return-void
.end method

.method public onSuccess(I[B)V
    .locals 0
    .param p1, "statusCode"    # I
    .param p2, "binaryData"    # [B

    .prologue
    .line 98
    invoke-virtual {p0, p2}, Lcom/ta/util/http/BinaryHttpResponseHandler;->onSuccess([B)V

    .line 99
    return-void
.end method

.method public onSuccess([B)V
    .locals 0
    .param p1, "binaryData"    # [B

    .prologue
    .line 90
    return-void
.end method

.method protected sendFailureMessage(Ljava/lang/Throwable;[B)V
    .locals 3
    .param p1, "e"    # Ljava/lang/Throwable;
    .param p2, "responseBody"    # [B

    .prologue
    const/4 v2, 0x1

    .line 124
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    aput-object p2, v0, v2

    invoke-virtual {p0, v2, v0}, Lcom/ta/util/http/BinaryHttpResponseHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/ta/util/http/BinaryHttpResponseHandler;->sendMessage(Landroid/os/Message;)V

    .line 125
    return-void
.end method

.method protected sendResponseMessage(Lorg/apache/http/HttpResponse;)V
    .locals 14
    .param p1, "response"    # Lorg/apache/http/HttpResponse;

    .prologue
    const/4 v10, 0x0

    .line 162
    invoke-interface {p1}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v8

    .line 163
    .local v8, "status":Lorg/apache/http/StatusLine;
    const-string v11, "Content-Type"

    invoke-interface {p1, v11}, Lorg/apache/http/HttpResponse;->getHeaders(Ljava/lang/String;)[Lorg/apache/http/Header;

    move-result-object v2

    .line 164
    .local v2, "contentTypeHeaders":[Lorg/apache/http/Header;
    const/4 v7, 0x0

    .line 165
    .local v7, "responseBody":[B
    array-length v11, v2

    const/4 v12, 0x1

    if-eq v11, v12, :cond_0

    .line 167
    new-instance v10, Lorg/apache/http/client/HttpResponseException;

    invoke-interface {v8}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v11

    const-string v12, "None, or more than one, Content-Type Header found!"

    invoke-direct {v10, v11, v12}, Lorg/apache/http/client/HttpResponseException;-><init>(ILjava/lang/String;)V

    invoke-virtual {p0, v10, v7}, Lcom/ta/util/http/BinaryHttpResponseHandler;->sendFailureMessage(Ljava/lang/Throwable;[B)V

    .line 198
    :goto_0
    return-void

    .line 170
    :cond_0
    aget-object v1, v2, v10

    .line 171
    .local v1, "contentTypeHeader":Lorg/apache/http/Header;
    const/4 v6, 0x0

    .line 172
    .local v6, "foundAllowedContentType":Z
    sget-object v11, Lcom/ta/util/http/BinaryHttpResponseHandler;->mAllowedContentTypes:[Ljava/lang/String;

    array-length v12, v11

    :goto_1
    if-lt v10, v12, :cond_1

    .line 177
    if-nez v6, :cond_3

    .line 179
    new-instance v10, Lorg/apache/http/client/HttpResponseException;

    invoke-interface {v8}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v11

    const-string v12, "Content-Type not allowed!"

    invoke-direct {v10, v11, v12}, Lorg/apache/http/client/HttpResponseException;-><init>(ILjava/lang/String;)V

    invoke-virtual {p0, v10, v7}, Lcom/ta/util/http/BinaryHttpResponseHandler;->sendFailureMessage(Ljava/lang/Throwable;[B)V

    goto :goto_0

    .line 172
    :cond_1
    aget-object v0, v11, v10

    .line 173
    .local v0, "anAllowedContentType":Ljava/lang/String;
    invoke-interface {v1}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v13

    invoke-static {v0, v13}, Ljava/util/regex/Pattern;->matches(Ljava/lang/String;Ljava/lang/CharSequence;)Z

    move-result v13

    if-eqz v13, :cond_2

    .line 174
    const/4 v6, 0x1

    .line 172
    :cond_2
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    .line 183
    .end local v0    # "anAllowedContentType":Ljava/lang/String;
    :cond_3
    const/4 v4, 0x0

    .line 184
    .local v4, "entity":Lorg/apache/http/HttpEntity;
    :try_start_0
    invoke-interface {p1}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v9

    .line 185
    .local v9, "temp":Lorg/apache/http/HttpEntity;
    if-eqz v9, :cond_4

    .line 186
    new-instance v5, Lorg/apache/http/entity/BufferedHttpEntity;

    invoke-direct {v5, v9}, Lorg/apache/http/entity/BufferedHttpEntity;-><init>(Lorg/apache/http/HttpEntity;)V

    .end local v4    # "entity":Lorg/apache/http/HttpEntity;
    .local v5, "entity":Lorg/apache/http/HttpEntity;
    move-object v4, v5

    .line 188
    .end local v5    # "entity":Lorg/apache/http/HttpEntity;
    .restart local v4    # "entity":Lorg/apache/http/HttpEntity;
    :cond_4
    invoke-static {v4}, Lorg/apache/http/util/EntityUtils;->toByteArray(Lorg/apache/http/HttpEntity;)[B
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v7

    .line 193
    .end local v9    # "temp":Lorg/apache/http/HttpEntity;
    :goto_2
    invoke-interface {v8}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v10

    const/16 v11, 0x12c

    if-lt v10, v11, :cond_5

    .line 194
    new-instance v10, Lorg/apache/http/client/HttpResponseException;

    invoke-interface {v8}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v11

    invoke-interface {v8}, Lorg/apache/http/StatusLine;->getReasonPhrase()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v10, v11, v12}, Lorg/apache/http/client/HttpResponseException;-><init>(ILjava/lang/String;)V

    invoke-virtual {p0, v10, v7}, Lcom/ta/util/http/BinaryHttpResponseHandler;->sendFailureMessage(Ljava/lang/Throwable;[B)V

    goto :goto_0

    .line 189
    :catch_0
    move-exception v3

    .line 190
    .local v3, "e":Ljava/io/IOException;
    const/4 v10, 0x0

    invoke-virtual {p0, v3, v10}, Lcom/ta/util/http/BinaryHttpResponseHandler;->sendFailureMessage(Ljava/lang/Throwable;[B)V

    goto :goto_2

    .line 196
    .end local v3    # "e":Ljava/io/IOException;
    :cond_5
    invoke-interface {v8}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v10

    invoke-virtual {p0, v10, v7}, Lcom/ta/util/http/BinaryHttpResponseHandler;->sendSuccessMessage(I[B)V

    goto :goto_0
.end method

.method protected sendSuccessMessage(I[B)V
    .locals 4
    .param p1, "statusCode"    # I
    .param p2, "responseBody"    # [B

    .prologue
    .line 119
    const/4 v0, 0x4

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object p2, v1, v2

    invoke-virtual {p0, v0, v1}, Lcom/ta/util/http/BinaryHttpResponseHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/ta/util/http/BinaryHttpResponseHandler;->sendMessage(Landroid/os/Message;)V

    .line 120
    return-void
.end method
