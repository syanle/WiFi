.class Lcom/baidu/location/s$2;
.super Ljava/lang/Thread;


# instance fields
.field final synthetic a:Lcom/baidu/location/s;


# direct methods
.method constructor <init>(Lcom/baidu/location/s;)V
    .locals 0

    iput-object p1, p0, Lcom/baidu/location/s$2;->a:Lcom/baidu/location/s;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    const/4 v3, 0x0

    const/4 v9, 0x1

    const/4 v8, 0x0

    iget-object v0, p0, Lcom/baidu/location/s$2;->a:Lcom/baidu/location/s;

    invoke-static {}, Lcom/baidu/location/c;->for()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/baidu/location/s;->cR:Ljava/lang/String;

    iget-object v0, p0, Lcom/baidu/location/s$2;->a:Lcom/baidu/location/s;

    invoke-virtual {v0}, Lcom/baidu/location/s;->T()V

    iget-object v0, p0, Lcom/baidu/location/s$2;->a:Lcom/baidu/location/s;

    iget v0, v0, Lcom/baidu/location/s;->c0:I

    iget-object v1, p0, Lcom/baidu/location/s$2;->a:Lcom/baidu/location/s;

    invoke-static {v1}, Lcom/baidu/location/s;->if(Lcom/baidu/location/s;)V

    move v2, v0

    move-object v1, v3

    :goto_0
    if-lez v2, :cond_2

    :try_start_0
    new-instance v0, Lorg/apache/http/client/methods/HttpPost;

    iget-object v4, p0, Lcom/baidu/location/s$2;->a:Lcom/baidu/location/s;

    iget-object v4, v4, Lcom/baidu/location/s;->cR:Ljava/lang/String;

    invoke-direct {v0, v4}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    new-instance v1, Lorg/apache/http/client/entity/UrlEncodedFormEntity;

    iget-object v4, p0, Lcom/baidu/location/s$2;->a:Lcom/baidu/location/s;

    iget-object v4, v4, Lcom/baidu/location/s;->cT:Ljava/util/List;

    const-string v5, "utf-8"

    invoke-direct {v1, v4, v5}, Lorg/apache/http/client/entity/UrlEncodedFormEntity;-><init>(Ljava/util/List;Ljava/lang/String;)V

    const-string v4, "Content-Type"

    const-string v5, "application/x-www-form-urlencoded; charset=utf-8"

    invoke-virtual {v0, v4, v5}, Lorg/apache/http/client/methods/HttpPost;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "Accept-Charset"

    const-string v5, "UTF-8;"

    invoke-virtual {v0, v4, v5}, Lorg/apache/http/client/methods/HttpPost;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    new-instance v1, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v1}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    invoke-interface {v1}, Lorg/apache/http/client/HttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v4

    const-string v5, "http.connection.timeout"

    const/16 v6, 0x2ee0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Lorg/apache/http/params/HttpParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/http/params/HttpParams;

    invoke-interface {v1}, Lorg/apache/http/client/HttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v4

    const-string v5, "http.socket.timeout"

    const/16 v6, 0x2ee0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Lorg/apache/http/params/HttpParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/http/params/HttpParams;

    invoke-interface {v1}, Lorg/apache/http/client/HttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v4

    const/4 v5, 0x0

    invoke-static {v4, v5}, Lorg/apache/http/params/HttpProtocolParams;->setUseExpectContinue(Lorg/apache/http/params/HttpParams;Z)V

    invoke-static {}, Lcom/baidu/location/s;->M()I

    move-result v4

    if-eq v4, v9, :cond_0

    invoke-static {}, Lcom/baidu/location/s;->M()I

    move-result v4

    const/4 v5, 0x4

    if-ne v4, v5, :cond_1

    :cond_0
    iget-object v4, p0, Lcom/baidu/location/s$2;->a:Lcom/baidu/location/s;

    iget v4, v4, Lcom/baidu/location/s;->c0:I

    sub-int/2addr v4, v2

    rem-int/lit8 v4, v4, 0x2

    if-nez v4, :cond_1

    new-instance v4, Lorg/apache/http/HttpHost;

    invoke-static {}, Lcom/baidu/location/s;->O()Ljava/lang/String;

    move-result-object v5

    invoke-static {}, Lcom/baidu/location/s;->S()I

    move-result v6

    const-string v7, "http"

    invoke-direct {v4, v5, v6, v7}, Lorg/apache/http/HttpHost;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    invoke-interface {v1}, Lorg/apache/http/client/HttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v5

    const-string v6, "http.route.default-proxy"

    invoke-interface {v5, v6, v4}, Lorg/apache/http/params/HttpParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/http/params/HttpParams;

    :cond_1
    invoke-interface {v1, v0}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v4

    invoke-interface {v4}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v4

    const/16 v5, 0xc8

    if-ne v4, v5, :cond_3

    iget-object v4, p0, Lcom/baidu/location/s$2;->a:Lcom/baidu/location/s;

    invoke-interface {v1}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v1

    iput-object v1, v4, Lcom/baidu/location/s;->cS:Lorg/apache/http/HttpEntity;

    iget-object v1, p0, Lcom/baidu/location/s$2;->a:Lcom/baidu/location/s;

    const/4 v4, 0x1

    invoke-virtual {v1, v4}, Lcom/baidu/location/s;->do(Z)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :cond_2
    if-gtz v2, :cond_4

    sget v0, Lcom/baidu/location/s;->cY:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/baidu/location/s;->cY:I

    iget-object v0, p0, Lcom/baidu/location/s$2;->a:Lcom/baidu/location/s;

    iput-object v3, v0, Lcom/baidu/location/s;->cS:Lorg/apache/http/HttpEntity;

    iget-object v0, p0, Lcom/baidu/location/s$2;->a:Lcom/baidu/location/s;

    invoke-virtual {v0, v8}, Lcom/baidu/location/s;->do(Z)V

    :goto_1
    iget-object v0, p0, Lcom/baidu/location/s$2;->a:Lcom/baidu/location/s;

    invoke-static {v0, v8}, Lcom/baidu/location/s;->if(Lcom/baidu/location/s;Z)Z

    return-void

    :cond_3
    :try_start_2
    invoke-virtual {v0}, Lorg/apache/http/client/methods/HttpPost;->abort()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :goto_2
    add-int/lit8 v1, v2, -0x1

    move v2, v1

    move-object v1, v0

    goto/16 :goto_0

    :catch_0
    move-exception v1

    :goto_3
    invoke-virtual {v0}, Lorg/apache/http/client/methods/HttpPost;->abort()V

    const-string v1, "baidu_location_service"

    const-string v4, "NetworkCommunicationException!"

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_4
    sput v8, Lcom/baidu/location/s;->cY:I

    goto :goto_1

    :catch_1
    move-exception v0

    move-object v0, v1

    goto :goto_3
.end method
