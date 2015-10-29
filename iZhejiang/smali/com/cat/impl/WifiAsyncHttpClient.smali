.class public Lcom/cat/impl/WifiAsyncHttpClient;
.super Ljava/lang/Object;
.source "WifiAsyncHttpClient.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cat/impl/WifiAsyncHttpClient$InflatingEntity;
    }
.end annotation


# static fields
.field private static final DEFAULT_CORE_POOL_SIZE:I = 0x5

.field private static final DEFAULT_KEEP_ALIVETIME:I = 0x0

.field private static final DEFAULT_MAXIMUM_POOL_SIZE:I = 0xa

.field private static final DEFAULT_MAX_CONNECTIONS:I = 0xa

.field private static final DEFAULT_MAX_RETRIES:I = 0x5

.field private static final DEFAULT_SOCKET_BUFFER_SIZE:I = 0x2000

.field private static final DEFAULT_SOCKET_TIMEOUT:I = 0x2710

.field private static final ENCODING_GZIP:Ljava/lang/String; = "gzip"

.field private static final HEADER_ACCEPT_ENCODING:Ljava/lang/String; = "Accept-Encoding"

.field private static final VERSION:Ljava/lang/String; = "1.1"

.field private static maxConnections:I

.field private static socketTimeout:I


# instance fields
.field private final clientHeaderMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final httpClient:Lorg/apache/http/impl/client/DefaultHttpClient;

.field private final httpContext:Lorg/apache/http/protocol/HttpContext;

.field mLocalVersionName:Ljava/lang/String;

.field nowTime:J

.field private final requestMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Ljava/util/concurrent/Future",
            "<*>;>;>;>;"
        }
    .end annotation
.end field

.field startTime:Ljava/lang/String;

.field private syncHttpClient:Lcom/ta/TASyncHttpClient;

.field private threadPool:Ljava/util/concurrent/ThreadPoolExecutor;

.field time:J

.field protected wifiMgr:Landroid/net/wifi/WifiManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 110
    const/16 v0, 0xa

    sput v0, Lcom/cat/impl/WifiAsyncHttpClient;->maxConnections:I

    .line 111
    const/16 v0, 0x2710

    sput v0, Lcom/cat/impl/WifiAsyncHttpClient;->socketTimeout:I

    return-void
.end method

.method public constructor <init>()V
    .locals 11

    .prologue
    const/16 v2, 0xa

    const/4 v3, 0x1

    .line 120
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 888
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/cat/impl/WifiAsyncHttpClient;->wifiMgr:Landroid/net/wifi/WifiManager;

    .line 121
    new-instance v9, Lorg/apache/http/params/BasicHttpParams;

    invoke-direct {v9}, Lorg/apache/http/params/BasicHttpParams;-><init>()V

    .line 123
    .local v9, "httpParams":Lorg/apache/http/params/BasicHttpParams;
    sget v0, Lcom/cat/impl/WifiAsyncHttpClient;->socketTimeout:I

    int-to-long v0, v0

    invoke-static {v9, v0, v1}, Lorg/apache/http/conn/params/ConnManagerParams;->setTimeout(Lorg/apache/http/params/HttpParams;J)V

    .line 125
    new-instance v0, Lorg/apache/http/conn/params/ConnPerRouteBean;

    sget v1, Lcom/cat/impl/WifiAsyncHttpClient;->maxConnections:I

    invoke-direct {v0, v1}, Lorg/apache/http/conn/params/ConnPerRouteBean;-><init>(I)V

    .line 124
    invoke-static {v9, v0}, Lorg/apache/http/conn/params/ConnManagerParams;->setMaxConnectionsPerRoute(Lorg/apache/http/params/HttpParams;Lorg/apache/http/conn/params/ConnPerRoute;)V

    .line 126
    invoke-static {v9, v2}, Lorg/apache/http/conn/params/ConnManagerParams;->setMaxTotalConnections(Lorg/apache/http/params/HttpParams;I)V

    .line 129
    sget v0, Lcom/cat/impl/WifiAsyncHttpClient;->socketTimeout:I

    invoke-static {v9, v0}, Lorg/apache/http/params/HttpConnectionParams;->setSoTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 130
    sget v0, Lcom/cat/impl/WifiAsyncHttpClient;->socketTimeout:I

    invoke-static {v9, v0}, Lorg/apache/http/params/HttpConnectionParams;->setConnectionTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 131
    invoke-static {v9, v3}, Lorg/apache/http/params/HttpConnectionParams;->setTcpNoDelay(Lorg/apache/http/params/HttpParams;Z)V

    .line 133
    const/16 v0, 0x2000

    .line 132
    invoke-static {v9, v0}, Lorg/apache/http/params/HttpConnectionParams;->setSocketBufferSize(Lorg/apache/http/params/HttpParams;I)V

    .line 135
    sget-object v0, Lorg/apache/http/HttpVersion;->HTTP_1_1:Lorg/apache/http/HttpVersion;

    invoke-static {v9, v0}, Lorg/apache/http/params/HttpProtocolParams;->setVersion(Lorg/apache/http/params/HttpParams;Lorg/apache/http/ProtocolVersion;)V

    .line 137
    const-string v0, "thinkandroid/%s (http://www.thinkandroid.cn)"

    new-array v1, v3, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "1.1"

    aput-object v4, v1, v3

    .line 136
    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v9, v0}, Lorg/apache/http/params/HttpProtocolParams;->setUserAgent(Lorg/apache/http/params/HttpParams;Ljava/lang/String;)V

    .line 139
    new-instance v10, Lorg/apache/http/conn/scheme/SchemeRegistry;

    invoke-direct {v10}, Lorg/apache/http/conn/scheme/SchemeRegistry;-><init>()V

    .line 140
    .local v10, "schemeRegistry":Lorg/apache/http/conn/scheme/SchemeRegistry;
    new-instance v0, Lorg/apache/http/conn/scheme/Scheme;

    const-string v1, "http"

    .line 141
    invoke-static {}, Lorg/apache/http/conn/scheme/PlainSocketFactory;->getSocketFactory()Lorg/apache/http/conn/scheme/PlainSocketFactory;

    move-result-object v3

    const/16 v4, 0x50

    invoke-direct {v0, v1, v3, v4}, Lorg/apache/http/conn/scheme/Scheme;-><init>(Ljava/lang/String;Lorg/apache/http/conn/scheme/SocketFactory;I)V

    .line 140
    invoke-virtual {v10, v0}, Lorg/apache/http/conn/scheme/SchemeRegistry;->register(Lorg/apache/http/conn/scheme/Scheme;)Lorg/apache/http/conn/scheme/Scheme;

    .line 142
    new-instance v0, Lorg/apache/http/conn/scheme/Scheme;

    const-string v1, "https"

    .line 143
    invoke-static {}, Lorg/apache/http/conn/ssl/SSLSocketFactory;->getSocketFactory()Lorg/apache/http/conn/ssl/SSLSocketFactory;

    move-result-object v3

    const/16 v4, 0x1bb

    invoke-direct {v0, v1, v3, v4}, Lorg/apache/http/conn/scheme/Scheme;-><init>(Ljava/lang/String;Lorg/apache/http/conn/scheme/SocketFactory;I)V

    .line 142
    invoke-virtual {v10, v0}, Lorg/apache/http/conn/scheme/SchemeRegistry;->register(Lorg/apache/http/conn/scheme/Scheme;)Lorg/apache/http/conn/scheme/Scheme;

    .line 144
    new-instance v8, Lorg/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager;

    invoke-direct {v8, v9, v10}, Lorg/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager;-><init>(Lorg/apache/http/params/HttpParams;Lorg/apache/http/conn/scheme/SchemeRegistry;)V

    .line 147
    .local v8, "cm":Lorg/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager;
    new-instance v0, Lorg/apache/http/protocol/SyncBasicHttpContext;

    new-instance v1, Lorg/apache/http/protocol/BasicHttpContext;

    invoke-direct {v1}, Lorg/apache/http/protocol/BasicHttpContext;-><init>()V

    invoke-direct {v0, v1}, Lorg/apache/http/protocol/SyncBasicHttpContext;-><init>(Lorg/apache/http/protocol/HttpContext;)V

    iput-object v0, p0, Lcom/cat/impl/WifiAsyncHttpClient;->httpContext:Lorg/apache/http/protocol/HttpContext;

    .line 148
    new-instance v0, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v0, v8, v9}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>(Lorg/apache/http/conn/ClientConnectionManager;Lorg/apache/http/params/HttpParams;)V

    iput-object v0, p0, Lcom/cat/impl/WifiAsyncHttpClient;->httpClient:Lorg/apache/http/impl/client/DefaultHttpClient;

    .line 149
    iget-object v0, p0, Lcom/cat/impl/WifiAsyncHttpClient;->httpClient:Lorg/apache/http/impl/client/DefaultHttpClient;

    new-instance v1, Lcom/cat/impl/WifiAsyncHttpClient$1;

    invoke-direct {v1, p0}, Lcom/cat/impl/WifiAsyncHttpClient$1;-><init>(Lcom/cat/impl/WifiAsyncHttpClient;)V

    invoke-virtual {v0, v1}, Lorg/apache/http/impl/client/DefaultHttpClient;->addRequestInterceptor(Lorg/apache/http/HttpRequestInterceptor;)V

    .line 161
    iget-object v0, p0, Lcom/cat/impl/WifiAsyncHttpClient;->httpClient:Lorg/apache/http/impl/client/DefaultHttpClient;

    new-instance v1, Lcom/cat/impl/WifiAsyncHttpClient$2;

    invoke-direct {v1, p0}, Lcom/cat/impl/WifiAsyncHttpClient$2;-><init>(Lcom/cat/impl/WifiAsyncHttpClient;)V

    invoke-virtual {v0, v1}, Lorg/apache/http/impl/client/DefaultHttpClient;->addResponseInterceptor(Lorg/apache/http/HttpResponseInterceptor;)V

    .line 184
    new-instance v0, Ljava/util/concurrent/ThreadPoolExecutor;

    const/4 v1, 0x5

    .line 185
    const-wide/16 v3, 0x0

    .line 186
    sget-object v5, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v6, Ljava/util/concurrent/ArrayBlockingQueue;

    const/4 v7, 0x3

    invoke-direct {v6, v7}, Ljava/util/concurrent/ArrayBlockingQueue;-><init>(I)V

    .line 187
    new-instance v7, Ljava/util/concurrent/ThreadPoolExecutor$CallerRunsPolicy;

    invoke-direct {v7}, Ljava/util/concurrent/ThreadPoolExecutor$CallerRunsPolicy;-><init>()V

    invoke-direct/range {v0 .. v7}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/RejectedExecutionHandler;)V

    .line 184
    iput-object v0, p0, Lcom/cat/impl/WifiAsyncHttpClient;->threadPool:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 189
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v0, p0, Lcom/cat/impl/WifiAsyncHttpClient;->requestMap:Ljava/util/Map;

    .line 190
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/cat/impl/WifiAsyncHttpClient;->clientHeaderMap:Ljava/util/Map;

    .line 191
    return-void
.end method

.method public static FormatStackTrace(Ljava/lang/Throwable;)Ljava/lang/String;
    .locals 5
    .param p0, "throwable"    # Ljava/lang/Throwable;

    .prologue
    .line 1043
    if-nez p0, :cond_0

    .line 1044
    const-string v2, ""

    .line 1059
    :goto_0
    return-object v2

    .line 1045
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1047
    .local v2, "rtn":Ljava/lang/String;
    :try_start_0
    new-instance v3, Ljava/io/StringWriter;

    invoke-direct {v3}, Ljava/io/StringWriter;-><init>()V

    .line 1048
    .local v3, "writer":Ljava/io/Writer;
    new-instance v1, Ljava/io/PrintWriter;

    invoke-direct {v1, v3}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    .line 1049
    .local v1, "printWriter":Ljava/io/PrintWriter;
    invoke-virtual {p0, v1}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V

    .line 1050
    invoke-virtual {v1}, Ljava/io/PrintWriter;->flush()V

    .line 1051
    invoke-virtual {v3}, Ljava/io/Writer;->flush()V

    .line 1052
    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1053
    invoke-virtual {v1}, Ljava/io/PrintWriter;->close()V

    .line 1054
    invoke-virtual {v3}, Ljava/io/Writer;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 1055
    .end local v1    # "printWriter":Ljava/io/PrintWriter;
    .end local v3    # "writer":Ljava/io/Writer;
    :catch_0
    move-exception v0

    .line 1056
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 1057
    .end local v0    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v4

    goto :goto_0
.end method

.method static synthetic access$0(Lcom/cat/impl/WifiAsyncHttpClient;)Ljava/util/Map;
    .locals 1

    .prologue
    .line 116
    iget-object v0, p0, Lcom/cat/impl/WifiAsyncHttpClient;->clientHeaderMap:Ljava/util/Map;

    return-object v0
.end method

.method private addEntityToRequestBase(Lorg/apache/http/client/methods/HttpEntityEnclosingRequestBase;Lorg/apache/http/HttpEntity;)Lorg/apache/http/client/methods/HttpEntityEnclosingRequestBase;
    .locals 0
    .param p1, "requestBase"    # Lorg/apache/http/client/methods/HttpEntityEnclosingRequestBase;
    .param p2, "entity"    # Lorg/apache/http/HttpEntity;

    .prologue
    .line 1019
    if-eqz p2, :cond_0

    .line 1020
    invoke-virtual {p1, p2}, Lorg/apache/http/client/methods/HttpEntityEnclosingRequestBase;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 1023
    :cond_0
    return-object p1
.end method

.method public static getUrlWithQueryStringL(Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;
    .locals 4
    .param p0, "url"    # Ljava/lang/String;
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
    .line 920
    .local p1, "params":Ljava/util/List;, "Ljava/util/List<Lcom/ta/util/http/DataObject;>;"
    if-eqz p1, :cond_1

    .line 921
    const-string v1, ""

    .line 922
    .local v1, "paramString":Ljava/lang/String;
    if-eqz p1, :cond_0

    .line 923
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-lt v0, v2, :cond_2

    .line 933
    .end local v0    # "i":I
    :cond_0
    const-string v2, "?"

    invoke-virtual {p0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_4

    .line 934
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "?"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 940
    .end local v1    # "paramString":Ljava/lang/String;
    :cond_1
    :goto_1
    return-object p0

    .line 924
    .restart local v0    # "i":I
    .restart local v1    # "paramString":Ljava/lang/String;
    :cond_2
    if-eqz v0, :cond_3

    .line 925
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "&"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 927
    :cond_3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/ta/util/http/DataObject;

    invoke-virtual {v2}, Lcom/ta/util/http/DataObject;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 928
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 929
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/ta/util/http/DataObject;

    invoke-virtual {v2}, Lcom/ta/util/http/DataObject;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 923
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    .line 936
    .end local v0    # "i":I
    :cond_4
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "&"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_1
.end method

.method private paramsToEntity(Lcom/ta/util/http/RequestParams;)Lorg/apache/http/HttpEntity;
    .locals 1
    .param p1, "params"    # Lcom/ta/util/http/RequestParams;

    .prologue
    .line 944
    const/4 v0, 0x0

    .line 946
    .local v0, "entity":Lorg/apache/http/HttpEntity;
    if-eqz p1, :cond_0

    .line 947
    invoke-virtual {p1}, Lcom/ta/util/http/RequestParams;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v0

    .line 950
    :cond_0
    return-object v0
.end method

.method private paramsToEntityL(Ljava/util/List;)Lorg/apache/http/HttpEntity;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/ta/util/http/DataObject;",
            ">;)",
            "Lorg/apache/http/HttpEntity;"
        }
    .end annotation

    .prologue
    .line 954
    .local p1, "params":Ljava/util/List;, "Ljava/util/List<Lcom/ta/util/http/DataObject;>;"
    const/4 v1, 0x0

    .line 956
    .local v1, "entity":Lorg/apache/http/HttpEntity;
    if-eqz p1, :cond_0

    .line 957
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 958
    .local v4, "pairList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/apache/http/message/BasicNameValuePair;>;"
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v5

    if-lt v3, v5, :cond_1

    .line 963
    :try_start_0
    new-instance v2, Lorg/apache/http/client/entity/UrlEncodedFormEntity;

    const-string v5, "UTF-8"

    invoke-direct {v2, v4, v5}, Lorg/apache/http/client/entity/UrlEncodedFormEntity;-><init>(Ljava/util/List;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v1    # "entity":Lorg/apache/http/HttpEntity;
    .local v2, "entity":Lorg/apache/http/HttpEntity;
    move-object v1, v2

    .line 970
    .end local v2    # "entity":Lorg/apache/http/HttpEntity;
    .end local v3    # "i":I
    .end local v4    # "pairList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/apache/http/message/BasicNameValuePair;>;"
    .restart local v1    # "entity":Lorg/apache/http/HttpEntity;
    :cond_0
    :goto_1
    return-object v1

    .line 959
    .restart local v3    # "i":I
    .restart local v4    # "pairList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/apache/http/message/BasicNameValuePair;>;"
    :cond_1
    new-instance v6, Lorg/apache/http/message/BasicNameValuePair;

    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/ta/util/http/DataObject;

    invoke-virtual {v5}, Lcom/ta/util/http/DataObject;->getKey()Ljava/lang/String;

    move-result-object v7

    .line 960
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/ta/util/http/DataObject;

    invoke-virtual {v5}, Lcom/ta/util/http/DataObject;->getValue()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v6, v7, v5}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 959
    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 958
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 964
    :catch_0
    move-exception v0

    .line 966
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto :goto_1
.end method


# virtual methods
.method public addHeader(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "header"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 281
    iget-object v0, p0, Lcom/cat/impl/WifiAsyncHttpClient;->clientHeaderMap:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 282
    return-void
.end method

.method public cancelRequests(Landroid/content/Context;Z)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "mayInterruptIfRunning"    # Z

    .prologue
    .line 331
    iget-object v3, p0, Lcom/cat/impl/WifiAsyncHttpClient;->requestMap:Ljava/util/Map;

    invoke-interface {v3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 332
    .local v1, "requestList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/ref/WeakReference<Ljava/util/concurrent/Future<*>;>;>;"
    if-eqz v1, :cond_1

    .line 333
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_2

    .line 340
    :cond_1
    iget-object v3, p0, Lcom/cat/impl/WifiAsyncHttpClient;->requestMap:Ljava/util/Map;

    invoke-interface {v3, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 341
    return-void

    .line 333
    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    .line 334
    .local v2, "requestRef":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Ljava/util/concurrent/Future<*>;>;"
    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/Future;

    .line 335
    .local v0, "request":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<*>;"
    if-eqz v0, :cond_0

    .line 336
    invoke-interface {v0, p2}, Ljava/util/concurrent/Future;->cancel(Z)Z

    goto :goto_0
.end method

.method public delete(Landroid/content/Context;Ljava/lang/String;Lcom/ta/util/http/AsyncHttpResponseHandler;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "responseHandler"    # Lcom/ta/util/http/AsyncHttpResponseHandler;

    .prologue
    .line 788
    new-instance v3, Lorg/apache/http/client/methods/HttpDelete;

    invoke-direct {v3, p2}, Lorg/apache/http/client/methods/HttpDelete;-><init>(Ljava/lang/String;)V

    .line 789
    .local v3, "delete":Lorg/apache/http/client/methods/HttpDelete;
    iget-object v1, p0, Lcom/cat/impl/WifiAsyncHttpClient;->httpClient:Lorg/apache/http/impl/client/DefaultHttpClient;

    iget-object v2, p0, Lcom/cat/impl/WifiAsyncHttpClient;->httpContext:Lorg/apache/http/protocol/HttpContext;

    const/4 v4, 0x0

    move-object v0, p0

    move-object v5, p3

    move-object v6, p1

    invoke-virtual/range {v0 .. v6}, Lcom/cat/impl/WifiAsyncHttpClient;->sendRequest(Lorg/apache/http/impl/client/DefaultHttpClient;Lorg/apache/http/protocol/HttpContext;Lorg/apache/http/client/methods/HttpUriRequest;Ljava/lang/String;Lcom/ta/util/http/AsyncHttpResponseHandler;Landroid/content/Context;)V

    .line 791
    return-void
.end method

.method public delete(Landroid/content/Context;Ljava/lang/String;[Lorg/apache/http/Header;Lcom/ta/util/http/AsyncHttpResponseHandler;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "headers"    # [Lorg/apache/http/Header;
    .param p4, "responseHandler"    # Lcom/ta/util/http/AsyncHttpResponseHandler;

    .prologue
    .line 807
    new-instance v3, Lorg/apache/http/client/methods/HttpDelete;

    invoke-direct {v3, p2}, Lorg/apache/http/client/methods/HttpDelete;-><init>(Ljava/lang/String;)V

    .line 808
    .local v3, "delete":Lorg/apache/http/client/methods/HttpDelete;
    if-eqz p3, :cond_0

    .line 809
    invoke-virtual {v3, p3}, Lorg/apache/http/client/methods/HttpDelete;->setHeaders([Lorg/apache/http/Header;)V

    .line 810
    :cond_0
    iget-object v1, p0, Lcom/cat/impl/WifiAsyncHttpClient;->httpClient:Lorg/apache/http/impl/client/DefaultHttpClient;

    iget-object v2, p0, Lcom/cat/impl/WifiAsyncHttpClient;->httpContext:Lorg/apache/http/protocol/HttpContext;

    const/4 v4, 0x0

    move-object v0, p0

    move-object v5, p4

    move-object v6, p1

    invoke-virtual/range {v0 .. v6}, Lcom/cat/impl/WifiAsyncHttpClient;->sendRequest(Lorg/apache/http/impl/client/DefaultHttpClient;Lorg/apache/http/protocol/HttpContext;Lorg/apache/http/client/methods/HttpUriRequest;Ljava/lang/String;Lcom/ta/util/http/AsyncHttpResponseHandler;Landroid/content/Context;)V

    .line 812
    return-void
.end method

.method public delete(Ljava/lang/String;Lcom/ta/util/http/AsyncHttpResponseHandler;)V
    .locals 1
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "responseHandler"    # Lcom/ta/util/http/AsyncHttpResponseHandler;

    .prologue
    .line 773
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1, p2}, Lcom/cat/impl/WifiAsyncHttpClient;->delete(Landroid/content/Context;Ljava/lang/String;Lcom/ta/util/http/AsyncHttpResponseHandler;)V

    .line 774
    return-void
.end method

.method public download(Landroid/content/Context;Ljava/lang/String;Lcom/ta/util/http/AsyncHttpResponseHandler;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "responseHandler"    # Lcom/ta/util/http/AsyncHttpResponseHandler;

    .prologue
    .line 447
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0, p3}, Lcom/cat/impl/WifiAsyncHttpClient;->download(Landroid/content/Context;Ljava/lang/String;Lcom/ta/util/http/RequestParams;Lcom/ta/util/http/AsyncHttpResponseHandler;)V

    .line 448
    return-void
.end method

.method public download(Landroid/content/Context;Ljava/lang/String;Lcom/ta/util/http/RequestParams;Lcom/ta/util/http/AsyncHttpResponseHandler;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "params"    # Lcom/ta/util/http/RequestParams;
    .param p4, "responseHandler"    # Lcom/ta/util/http/AsyncHttpResponseHandler;

    .prologue
    .line 468
    return-void
.end method

.method public download(Ljava/lang/String;Lcom/ta/util/http/AsyncHttpResponseHandler;)V
    .locals 1
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "responseHandler"    # Lcom/ta/util/http/AsyncHttpResponseHandler;

    .prologue
    const/4 v0, 0x0

    .line 426
    invoke-virtual {p0, v0, p1, v0, p2}, Lcom/cat/impl/WifiAsyncHttpClient;->download(Landroid/content/Context;Ljava/lang/String;Lcom/ta/util/http/RequestParams;Lcom/ta/util/http/AsyncHttpResponseHandler;)V

    .line 427
    return-void
.end method

.method public download(Ljava/lang/String;Lcom/ta/util/http/RequestParams;Lcom/ta/util/http/AsyncHttpResponseHandler;)V
    .locals 1
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "params"    # Lcom/ta/util/http/RequestParams;
    .param p3, "responseHandler"    # Lcom/ta/util/http/AsyncHttpResponseHandler;

    .prologue
    .line 431
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1, p2, p3}, Lcom/cat/impl/WifiAsyncHttpClient;->download(Landroid/content/Context;Ljava/lang/String;Lcom/ta/util/http/RequestParams;Lcom/ta/util/http/AsyncHttpResponseHandler;)V

    .line 432
    return-void
.end method

.method public get(Landroid/content/Context;Ljava/lang/String;Lcom/ta/util/http/AsyncHttpResponseHandler;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "responseHandler"    # Lcom/ta/util/http/AsyncHttpResponseHandler;

    .prologue
    .line 392
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0, p3}, Lcom/cat/impl/WifiAsyncHttpClient;->get(Landroid/content/Context;Ljava/lang/String;Lcom/ta/util/http/RequestParams;Lcom/ta/util/http/AsyncHttpResponseHandler;)V

    .line 393
    return-void
.end method

.method public get(Landroid/content/Context;Ljava/lang/String;Lcom/ta/util/http/RequestParams;Lcom/ta/util/http/AsyncHttpResponseHandler;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "params"    # Lcom/ta/util/http/RequestParams;
    .param p4, "responseHandler"    # Lcom/ta/util/http/AsyncHttpResponseHandler;

    .prologue
    .line 413
    return-void
.end method

.method public get(Landroid/content/Context;Ljava/lang/String;[Lorg/apache/http/Header;Lcom/ta/util/http/RequestParams;Lcom/ta/util/http/AsyncHttpResponseHandler;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "headers"    # [Lorg/apache/http/Header;
    .param p4, "params"    # Lcom/ta/util/http/RequestParams;
    .param p5, "responseHandler"    # Lcom/ta/util/http/AsyncHttpResponseHandler;

    .prologue
    .line 491
    return-void
.end method

.method public get(Ljava/lang/String;Lcom/ta/util/http/AsyncHttpResponseHandler;)V
    .locals 1
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "responseHandler"    # Lcom/ta/util/http/AsyncHttpResponseHandler;

    .prologue
    const/4 v0, 0x0

    .line 356
    invoke-virtual {p0, v0, p1, v0, p2}, Lcom/cat/impl/WifiAsyncHttpClient;->get(Landroid/content/Context;Ljava/lang/String;Lcom/ta/util/http/RequestParams;Lcom/ta/util/http/AsyncHttpResponseHandler;)V

    .line 357
    return-void
.end method

.method public get(Ljava/lang/String;Lcom/ta/util/http/RequestParams;Lcom/ta/util/http/AsyncHttpResponseHandler;)V
    .locals 1
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "params"    # Lcom/ta/util/http/RequestParams;
    .param p3, "responseHandler"    # Lcom/ta/util/http/AsyncHttpResponseHandler;

    .prologue
    .line 371
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1, p2, p3}, Lcom/cat/impl/WifiAsyncHttpClient;->get(Landroid/content/Context;Ljava/lang/String;Lcom/ta/util/http/RequestParams;Lcom/ta/util/http/AsyncHttpResponseHandler;)V

    .line 372
    return-void
.end method

.method public getHttpClient()Lorg/apache/http/client/HttpClient;
    .locals 1

    .prologue
    .line 199
    iget-object v0, p0, Lcom/cat/impl/WifiAsyncHttpClient;->httpClient:Lorg/apache/http/impl/client/DefaultHttpClient;

    return-object v0
.end method

.method public getHttpContext()Lorg/apache/http/protocol/HttpContext;
    .locals 1

    .prologue
    .line 208
    iget-object v0, p0, Lcom/cat/impl/WifiAsyncHttpClient;->httpContext:Lorg/apache/http/protocol/HttpContext;

    return-object v0
.end method

.method public getL(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;Lcom/ta/util/http/AsyncHttpResponseHandler;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "url"    # Ljava/lang/String;
    .param p4, "responseHandler"    # Lcom/ta/util/http/AsyncHttpResponseHandler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/ta/util/http/DataObject;",
            ">;",
            "Lcom/ta/util/http/AsyncHttpResponseHandler;",
            ")V"
        }
    .end annotation

    .prologue
    .line 417
    .local p3, "params":Ljava/util/List;, "Ljava/util/List<Lcom/ta/util/http/DataObject;>;"
    iget-object v1, p0, Lcom/cat/impl/WifiAsyncHttpClient;->httpClient:Lorg/apache/http/impl/client/DefaultHttpClient;

    iget-object v2, p0, Lcom/cat/impl/WifiAsyncHttpClient;->httpContext:Lorg/apache/http/protocol/HttpContext;

    new-instance v3, Lorg/apache/http/client/methods/HttpGet;

    .line 418
    invoke-static {p2, p3}, Lcom/cat/impl/WifiAsyncHttpClient;->getUrlWithQueryStringL(Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    const/4 v4, 0x0

    move-object v0, p0

    move-object v5, p4

    move-object v6, p1

    .line 417
    invoke-virtual/range {v0 .. v6}, Lcom/cat/impl/WifiAsyncHttpClient;->sendRequest(Lorg/apache/http/impl/client/DefaultHttpClient;Lorg/apache/http/protocol/HttpContext;Lorg/apache/http/client/methods/HttpUriRequest;Ljava/lang/String;Lcom/ta/util/http/AsyncHttpResponseHandler;Landroid/content/Context;)V

    .line 420
    return-void
.end method

.method public getL(Ljava/lang/String;Ljava/util/List;Lcom/ta/util/http/AsyncHttpResponseHandler;)V
    .locals 1
    .param p1, "url"    # Ljava/lang/String;
    .param p3, "responseHandler"    # Lcom/ta/util/http/AsyncHttpResponseHandler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/ta/util/http/DataObject;",
            ">;",
            "Lcom/ta/util/http/AsyncHttpResponseHandler;",
            ")V"
        }
    .end annotation

    .prologue
    .line 376
    .local p2, "params":Ljava/util/List;, "Ljava/util/List<Lcom/ta/util/http/DataObject;>;"
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1, p2, p3}, Lcom/cat/impl/WifiAsyncHttpClient;->getL(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;Lcom/ta/util/http/AsyncHttpResponseHandler;)V

    .line 377
    return-void
.end method

.method public getLocalMacAddress(Landroid/content/Context;)Ljava/lang/String;
    .locals 3
    .param p1, "ctx"    # Landroid/content/Context;

    .prologue
    .line 896
    iget-object v1, p0, Lcom/cat/impl/WifiAsyncHttpClient;->wifiMgr:Landroid/net/wifi/WifiManager;

    if-nez v1, :cond_0

    .line 897
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 898
    const-string v2, "wifi"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/WifiManager;

    .line 897
    iput-object v1, p0, Lcom/cat/impl/WifiAsyncHttpClient;->wifiMgr:Landroid/net/wifi/WifiManager;

    .line 900
    :cond_0
    iget-object v1, p0, Lcom/cat/impl/WifiAsyncHttpClient;->wifiMgr:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v0

    .line 901
    .local v0, "info":Landroid/net/wifi/WifiInfo;
    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getMacAddress()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public post(Landroid/content/Context;Ljava/lang/String;Lcom/ta/util/http/RequestParams;Lcom/ta/util/http/AsyncHttpResponseHandler;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "params"    # Lcom/ta/util/http/RequestParams;
    .param p4, "responseHandler"    # Lcom/ta/util/http/AsyncHttpResponseHandler;

    .prologue
    .line 549
    invoke-direct {p0, p3}, Lcom/cat/impl/WifiAsyncHttpClient;->paramsToEntity(Lcom/ta/util/http/RequestParams;)Lorg/apache/http/HttpEntity;

    move-result-object v3

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/cat/impl/WifiAsyncHttpClient;->post(Landroid/content/Context;Ljava/lang/String;Lorg/apache/http/HttpEntity;Ljava/lang/String;Lcom/ta/util/http/AsyncHttpResponseHandler;)V

    .line 550
    return-void
.end method

.method public post(Landroid/content/Context;Ljava/lang/String;Lorg/apache/http/HttpEntity;Ljava/lang/String;Lcom/ta/util/http/AsyncHttpResponseHandler;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "entity"    # Lorg/apache/http/HttpEntity;
    .param p4, "contentType"    # Ljava/lang/String;
    .param p5, "responseHandler"    # Lcom/ta/util/http/AsyncHttpResponseHandler;

    .prologue
    .line 589
    iget-object v1, p0, Lcom/cat/impl/WifiAsyncHttpClient;->httpClient:Lorg/apache/http/impl/client/DefaultHttpClient;

    iget-object v2, p0, Lcom/cat/impl/WifiAsyncHttpClient;->httpContext:Lorg/apache/http/protocol/HttpContext;

    .line 590
    new-instance v0, Lorg/apache/http/client/methods/HttpPost;

    invoke-direct {v0, p2}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0, p3}, Lcom/cat/impl/WifiAsyncHttpClient;->addEntityToRequestBase(Lorg/apache/http/client/methods/HttpEntityEnclosingRequestBase;Lorg/apache/http/HttpEntity;)Lorg/apache/http/client/methods/HttpEntityEnclosingRequestBase;

    move-result-object v3

    move-object v0, p0

    move-object v4, p4

    move-object v5, p5

    move-object v6, p1

    .line 589
    invoke-virtual/range {v0 .. v6}, Lcom/cat/impl/WifiAsyncHttpClient;->sendRequest(Lorg/apache/http/impl/client/DefaultHttpClient;Lorg/apache/http/protocol/HttpContext;Lorg/apache/http/client/methods/HttpUriRequest;Ljava/lang/String;Lcom/ta/util/http/AsyncHttpResponseHandler;Landroid/content/Context;)V

    .line 592
    return-void
.end method

.method public post(Landroid/content/Context;Ljava/lang/String;[Lorg/apache/http/Header;Lcom/ta/util/http/RequestParams;Ljava/lang/String;Lcom/ta/util/http/AsyncHttpResponseHandler;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "headers"    # [Lorg/apache/http/Header;
    .param p4, "params"    # Lcom/ta/util/http/RequestParams;
    .param p5, "contentType"    # Ljava/lang/String;
    .param p6, "responseHandler"    # Lcom/ta/util/http/AsyncHttpResponseHandler;

    .prologue
    .line 615
    new-instance v3, Lorg/apache/http/client/methods/HttpPost;

    invoke-direct {v3, p2}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    .line 616
    .local v3, "request":Lorg/apache/http/client/methods/HttpEntityEnclosingRequestBase;
    if-eqz p4, :cond_0

    .line 617
    invoke-direct {p0, p4}, Lcom/cat/impl/WifiAsyncHttpClient;->paramsToEntity(Lcom/ta/util/http/RequestParams;)Lorg/apache/http/HttpEntity;

    move-result-object v0

    invoke-virtual {v3, v0}, Lorg/apache/http/client/methods/HttpEntityEnclosingRequestBase;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 618
    :cond_0
    if-eqz p3, :cond_1

    .line 619
    invoke-virtual {v3, p3}, Lorg/apache/http/client/methods/HttpEntityEnclosingRequestBase;->setHeaders([Lorg/apache/http/Header;)V

    .line 620
    :cond_1
    iget-object v1, p0, Lcom/cat/impl/WifiAsyncHttpClient;->httpClient:Lorg/apache/http/impl/client/DefaultHttpClient;

    iget-object v2, p0, Lcom/cat/impl/WifiAsyncHttpClient;->httpContext:Lorg/apache/http/protocol/HttpContext;

    move-object v0, p0

    move-object v4, p5

    move-object v5, p6

    move-object v6, p1

    invoke-virtual/range {v0 .. v6}, Lcom/cat/impl/WifiAsyncHttpClient;->sendRequest(Lorg/apache/http/impl/client/DefaultHttpClient;Lorg/apache/http/protocol/HttpContext;Lorg/apache/http/client/methods/HttpUriRequest;Ljava/lang/String;Lcom/ta/util/http/AsyncHttpResponseHandler;Landroid/content/Context;)V

    .line 622
    return-void
.end method

.method public post(Landroid/content/Context;Ljava/lang/String;[Lorg/apache/http/Header;Lorg/apache/http/HttpEntity;Ljava/lang/String;Lcom/ta/util/http/AsyncHttpResponseHandler;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "headers"    # [Lorg/apache/http/Header;
    .param p4, "entity"    # Lorg/apache/http/HttpEntity;
    .param p5, "contentType"    # Ljava/lang/String;
    .param p6, "responseHandler"    # Lcom/ta/util/http/AsyncHttpResponseHandler;

    .prologue
    .line 647
    .line 648
    new-instance v0, Lorg/apache/http/client/methods/HttpPost;

    invoke-direct {v0, p2}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    .line 647
    invoke-direct {p0, v0, p4}, Lcom/cat/impl/WifiAsyncHttpClient;->addEntityToRequestBase(Lorg/apache/http/client/methods/HttpEntityEnclosingRequestBase;Lorg/apache/http/HttpEntity;)Lorg/apache/http/client/methods/HttpEntityEnclosingRequestBase;

    move-result-object v3

    .line 649
    .local v3, "request":Lorg/apache/http/client/methods/HttpEntityEnclosingRequestBase;
    if-eqz p3, :cond_0

    .line 650
    invoke-virtual {v3, p3}, Lorg/apache/http/client/methods/HttpEntityEnclosingRequestBase;->setHeaders([Lorg/apache/http/Header;)V

    .line 651
    :cond_0
    iget-object v1, p0, Lcom/cat/impl/WifiAsyncHttpClient;->httpClient:Lorg/apache/http/impl/client/DefaultHttpClient;

    iget-object v2, p0, Lcom/cat/impl/WifiAsyncHttpClient;->httpContext:Lorg/apache/http/protocol/HttpContext;

    move-object v0, p0

    move-object v4, p5

    move-object v5, p6

    move-object v6, p1

    invoke-virtual/range {v0 .. v6}, Lcom/cat/impl/WifiAsyncHttpClient;->sendRequest(Lorg/apache/http/impl/client/DefaultHttpClient;Lorg/apache/http/protocol/HttpContext;Lorg/apache/http/client/methods/HttpUriRequest;Ljava/lang/String;Lcom/ta/util/http/AsyncHttpResponseHandler;Landroid/content/Context;)V

    .line 653
    return-void
.end method

.method public post(Ljava/lang/String;Lcom/ta/util/http/AsyncHttpResponseHandler;)V
    .locals 1
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "responseHandler"    # Lcom/ta/util/http/AsyncHttpResponseHandler;

    .prologue
    const/4 v0, 0x0

    .line 506
    invoke-virtual {p0, v0, p1, v0, p2}, Lcom/cat/impl/WifiAsyncHttpClient;->post(Landroid/content/Context;Ljava/lang/String;Lcom/ta/util/http/RequestParams;Lcom/ta/util/http/AsyncHttpResponseHandler;)V

    .line 507
    return-void
.end method

.method public post(Ljava/lang/String;Lcom/ta/util/http/RequestParams;Lcom/ta/util/http/AsyncHttpResponseHandler;)V
    .locals 1
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "params"    # Lcom/ta/util/http/RequestParams;
    .param p3, "responseHandler"    # Lcom/ta/util/http/AsyncHttpResponseHandler;

    .prologue
    .line 521
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1, p2, p3}, Lcom/cat/impl/WifiAsyncHttpClient;->post(Landroid/content/Context;Ljava/lang/String;Lcom/ta/util/http/RequestParams;Lcom/ta/util/http/AsyncHttpResponseHandler;)V

    .line 522
    return-void
.end method

.method public postL(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;Lcom/ta/util/http/AsyncHttpResponseHandler;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "url"    # Ljava/lang/String;
    .param p4, "responseHandler"    # Lcom/ta/util/http/AsyncHttpResponseHandler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/ta/util/http/DataObject;",
            ">;",
            "Lcom/ta/util/http/AsyncHttpResponseHandler;",
            ")V"
        }
    .end annotation

    .prologue
    .line 554
    .local p3, "params":Ljava/util/List;, "Ljava/util/List<Lcom/ta/util/http/DataObject;>;"
    invoke-direct {p0, p3}, Lcom/cat/impl/WifiAsyncHttpClient;->paramsToEntityL(Ljava/util/List;)Lorg/apache/http/HttpEntity;

    move-result-object v3

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/cat/impl/WifiAsyncHttpClient;->post(Landroid/content/Context;Ljava/lang/String;Lorg/apache/http/HttpEntity;Ljava/lang/String;Lcom/ta/util/http/AsyncHttpResponseHandler;)V

    .line 555
    return-void
.end method

.method public postL(Ljava/lang/String;Ljava/util/List;Lcom/ta/util/http/AsyncHttpResponseHandler;)V
    .locals 1
    .param p1, "url"    # Ljava/lang/String;
    .param p3, "responseHandler"    # Lcom/ta/util/http/AsyncHttpResponseHandler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/ta/util/http/DataObject;",
            ">;",
            "Lcom/ta/util/http/AsyncHttpResponseHandler;",
            ")V"
        }
    .end annotation

    .prologue
    .line 526
    .local p2, "params":Ljava/util/List;, "Ljava/util/List<Lcom/ta/util/http/DataObject;>;"
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1, p2, p3}, Lcom/cat/impl/WifiAsyncHttpClient;->postL(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;Lcom/ta/util/http/AsyncHttpResponseHandler;)V

    .line 527
    return-void
.end method

.method public postTest(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Lcom/ta/util/http/AsyncHttpResponseHandler;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "url"    # Ljava/lang/String;
    .param p4, "headparams"    # Ljava/lang/String;
    .param p5, "responseHandler"    # Lcom/ta/util/http/AsyncHttpResponseHandler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/ta/util/http/DataObject;",
            ">;",
            "Ljava/lang/String;",
            "Lcom/ta/util/http/AsyncHttpResponseHandler;",
            ")V"
        }
    .end annotation

    .prologue
    .line 559
    .local p3, "params":Ljava/util/List;, "Ljava/util/List<Lcom/ta/util/http/DataObject;>;"
    invoke-direct {p0, p3}, Lcom/cat/impl/WifiAsyncHttpClient;->paramsToEntityL(Ljava/util/List;)Lorg/apache/http/HttpEntity;

    move-result-object v3

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/cat/impl/WifiAsyncHttpClient;->post(Landroid/content/Context;Ljava/lang/String;Lorg/apache/http/HttpEntity;Ljava/lang/String;Lcom/ta/util/http/AsyncHttpResponseHandler;)V

    .line 560
    return-void
.end method

.method public postTest(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Lcom/ta/util/http/AsyncHttpResponseHandler;)V
    .locals 6
    .param p1, "url"    # Ljava/lang/String;
    .param p3, "headparams"    # Ljava/lang/String;
    .param p4, "responseHandler"    # Lcom/ta/util/http/AsyncHttpResponseHandler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/ta/util/http/DataObject;",
            ">;",
            "Ljava/lang/String;",
            "Lcom/ta/util/http/AsyncHttpResponseHandler;",
            ")V"
        }
    .end annotation

    .prologue
    .line 531
    .local p2, "params":Ljava/util/List;, "Ljava/util/List<Lcom/ta/util/http/DataObject;>;"
    const/4 v1, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/cat/impl/WifiAsyncHttpClient;->postTest(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Lcom/ta/util/http/AsyncHttpResponseHandler;)V

    .line 532
    return-void
.end method

.method public put(Landroid/content/Context;Ljava/lang/String;Lcom/ta/util/http/RequestParams;Lcom/ta/util/http/AsyncHttpResponseHandler;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "params"    # Lcom/ta/util/http/RequestParams;
    .param p4, "responseHandler"    # Lcom/ta/util/http/AsyncHttpResponseHandler;

    .prologue
    .line 701
    invoke-direct {p0, p3}, Lcom/cat/impl/WifiAsyncHttpClient;->paramsToEntity(Lcom/ta/util/http/RequestParams;)Lorg/apache/http/HttpEntity;

    move-result-object v3

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/cat/impl/WifiAsyncHttpClient;->put(Landroid/content/Context;Ljava/lang/String;Lorg/apache/http/HttpEntity;Ljava/lang/String;Lcom/ta/util/http/AsyncHttpResponseHandler;)V

    .line 702
    return-void
.end method

.method public put(Landroid/content/Context;Ljava/lang/String;Lorg/apache/http/HttpEntity;Ljava/lang/String;Lcom/ta/util/http/AsyncHttpResponseHandler;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "entity"    # Lorg/apache/http/HttpEntity;
    .param p4, "contentType"    # Ljava/lang/String;
    .param p5, "responseHandler"    # Lcom/ta/util/http/AsyncHttpResponseHandler;

    .prologue
    .line 724
    iget-object v1, p0, Lcom/cat/impl/WifiAsyncHttpClient;->httpClient:Lorg/apache/http/impl/client/DefaultHttpClient;

    iget-object v2, p0, Lcom/cat/impl/WifiAsyncHttpClient;->httpContext:Lorg/apache/http/protocol/HttpContext;

    .line 725
    new-instance v0, Lorg/apache/http/client/methods/HttpPut;

    invoke-direct {v0, p2}, Lorg/apache/http/client/methods/HttpPut;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0, p3}, Lcom/cat/impl/WifiAsyncHttpClient;->addEntityToRequestBase(Lorg/apache/http/client/methods/HttpEntityEnclosingRequestBase;Lorg/apache/http/HttpEntity;)Lorg/apache/http/client/methods/HttpEntityEnclosingRequestBase;

    move-result-object v3

    move-object v0, p0

    move-object v4, p4

    move-object v5, p5

    move-object v6, p1

    .line 724
    invoke-virtual/range {v0 .. v6}, Lcom/cat/impl/WifiAsyncHttpClient;->sendRequest(Lorg/apache/http/impl/client/DefaultHttpClient;Lorg/apache/http/protocol/HttpContext;Lorg/apache/http/client/methods/HttpUriRequest;Ljava/lang/String;Lcom/ta/util/http/AsyncHttpResponseHandler;Landroid/content/Context;)V

    .line 727
    return-void
.end method

.method public put(Landroid/content/Context;Ljava/lang/String;[Lorg/apache/http/Header;Lorg/apache/http/HttpEntity;Ljava/lang/String;Lcom/ta/util/http/AsyncHttpResponseHandler;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "headers"    # [Lorg/apache/http/Header;
    .param p4, "entity"    # Lorg/apache/http/HttpEntity;
    .param p5, "contentType"    # Ljava/lang/String;
    .param p6, "responseHandler"    # Lcom/ta/util/http/AsyncHttpResponseHandler;

    .prologue
    .line 752
    .line 753
    new-instance v0, Lorg/apache/http/client/methods/HttpPut;

    invoke-direct {v0, p2}, Lorg/apache/http/client/methods/HttpPut;-><init>(Ljava/lang/String;)V

    .line 752
    invoke-direct {p0, v0, p4}, Lcom/cat/impl/WifiAsyncHttpClient;->addEntityToRequestBase(Lorg/apache/http/client/methods/HttpEntityEnclosingRequestBase;Lorg/apache/http/HttpEntity;)Lorg/apache/http/client/methods/HttpEntityEnclosingRequestBase;

    move-result-object v3

    .line 754
    .local v3, "request":Lorg/apache/http/client/methods/HttpEntityEnclosingRequestBase;
    if-eqz p3, :cond_0

    .line 755
    invoke-virtual {v3, p3}, Lorg/apache/http/client/methods/HttpEntityEnclosingRequestBase;->setHeaders([Lorg/apache/http/Header;)V

    .line 756
    :cond_0
    iget-object v1, p0, Lcom/cat/impl/WifiAsyncHttpClient;->httpClient:Lorg/apache/http/impl/client/DefaultHttpClient;

    iget-object v2, p0, Lcom/cat/impl/WifiAsyncHttpClient;->httpContext:Lorg/apache/http/protocol/HttpContext;

    move-object v0, p0

    move-object v4, p5

    move-object v5, p6

    move-object v6, p1

    invoke-virtual/range {v0 .. v6}, Lcom/cat/impl/WifiAsyncHttpClient;->sendRequest(Lorg/apache/http/impl/client/DefaultHttpClient;Lorg/apache/http/protocol/HttpContext;Lorg/apache/http/client/methods/HttpUriRequest;Ljava/lang/String;Lcom/ta/util/http/AsyncHttpResponseHandler;Landroid/content/Context;)V

    .line 758
    return-void
.end method

.method public put(Ljava/lang/String;Lcom/ta/util/http/AsyncHttpResponseHandler;)V
    .locals 1
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "responseHandler"    # Lcom/ta/util/http/AsyncHttpResponseHandler;

    .prologue
    const/4 v0, 0x0

    .line 668
    invoke-virtual {p0, v0, p1, v0, p2}, Lcom/cat/impl/WifiAsyncHttpClient;->put(Landroid/content/Context;Ljava/lang/String;Lcom/ta/util/http/RequestParams;Lcom/ta/util/http/AsyncHttpResponseHandler;)V

    .line 669
    return-void
.end method

.method public put(Ljava/lang/String;Lcom/ta/util/http/RequestParams;Lcom/ta/util/http/AsyncHttpResponseHandler;)V
    .locals 1
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "params"    # Lcom/ta/util/http/RequestParams;
    .param p3, "responseHandler"    # Lcom/ta/util/http/AsyncHttpResponseHandler;

    .prologue
    .line 683
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1, p2, p3}, Lcom/cat/impl/WifiAsyncHttpClient;->put(Landroid/content/Context;Ljava/lang/String;Lcom/ta/util/http/RequestParams;Lcom/ta/util/http/AsyncHttpResponseHandler;)V

    .line 684
    return-void
.end method

.method protected sendRequest(Lorg/apache/http/impl/client/DefaultHttpClient;Lorg/apache/http/protocol/HttpContext;Lorg/apache/http/client/methods/HttpUriRequest;Ljava/lang/String;Lcom/ta/util/http/AsyncHttpResponseHandler;Landroid/content/Context;)V
    .locals 18
    .param p1, "client"    # Lorg/apache/http/impl/client/DefaultHttpClient;
    .param p2, "httpContext"    # Lorg/apache/http/protocol/HttpContext;
    .param p3, "uriRequest"    # Lorg/apache/http/client/methods/HttpUriRequest;
    .param p4, "contentType"    # Ljava/lang/String;
    .param p5, "responseHandler"    # Lcom/ta/util/http/AsyncHttpResponseHandler;
    .param p6, "context"    # Landroid/content/Context;

    .prologue
    .line 824
    if-eqz p4, :cond_0

    if-eqz p6, :cond_0

    .line 825
    invoke-virtual/range {p6 .. p6}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    .line 828
    .local v7, "mPackMg":Landroid/content/pm/PackageManager;
    :try_start_0
    invoke-virtual/range {p6 .. p6}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v14

    .line 829
    const/4 v15, 0x1

    .line 828
    invoke-virtual {v7, v14, v15}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v9

    .line 830
    .local v9, "packInfo":Landroid/content/pm/PackageInfo;
    iget-object v14, v9, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/cat/impl/WifiAsyncHttpClient;->mLocalVersionName:Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 834
    .end local v9    # "packInfo":Landroid/content/pm/PackageInfo;
    :goto_0
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-virtual/range {p6 .. p6}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v15

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v15, "+"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    .line 835
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/cat/impl/WifiAsyncHttpClient;->mLocalVersionName:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "+android+"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    .line 836
    sget-object v15, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    .line 834
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 838
    .local v13, "useragent":Ljava/lang/String;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    move-object/from16 v0, p0

    iput-wide v14, v0, Lcom/cat/impl/WifiAsyncHttpClient;->nowTime:J

    .line 840
    const-string v14, "TimeDifference"

    const/4 v15, 0x0

    .line 839
    move-object/from16 v0, p6

    invoke-virtual {v0, v14, v15}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v12

    .line 841
    .local v12, "sharedata":Landroid/content/SharedPreferences;
    const-string v14, "difftime"

    const-string v15, ""

    invoke-interface {v12, v14, v15}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/cat/impl/WifiAsyncHttpClient;->startTime:Ljava/lang/String;

    .line 843
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/cat/impl/WifiAsyncHttpClient;->startTime:Ljava/lang/String;

    const-string v15, ""

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_3

    .line 844
    move-object/from16 v0, p0

    iget-wide v14, v0, Lcom/cat/impl/WifiAsyncHttpClient;->nowTime:J

    move-object/from16 v0, p0

    iput-wide v14, v0, Lcom/cat/impl/WifiAsyncHttpClient;->time:J

    .line 850
    :goto_1
    const-string v14, ";"

    move-object/from16 v0, p4

    invoke-virtual {v0, v14}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v14

    const/4 v15, 0x0

    aget-object v5, v14, v15

    .line 851
    .local v5, "bodyparam":Ljava/lang/String;
    const-string v14, ";"

    move-object/from16 v0, p4

    invoke-virtual {v0, v14}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v14

    const/4 v15, 0x1

    aget-object v4, v14, v15

    .line 852
    .local v4, "action":Ljava/lang/String;
    new-instance v14, Ljava/lang/StringBuilder;

    const-string v15, "user-agent="

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    .line 853
    const-string v15, "&action="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "&termac="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    .line 854
    move-object/from16 v0, p0

    move-object/from16 v1, p6

    invoke-virtual {v0, v1}, Lcom/cat/impl/WifiAsyncHttpClient;->getLocalMacAddress(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "&tertype=android"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    .line 855
    const-string v15, "&timestamp="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-wide v15, v0, Lcom/cat/impl/WifiAsyncHttpClient;->time:J

    invoke-static/range {v15 .. v16}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "&appkey="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    .line 856
    const v15, 0x7f060001

    move-object/from16 v0, p6

    invoke-virtual {v0, v15}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    .line 857
    const-string v15, "&secret="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    .line 858
    const v15, 0x7f060002

    move-object/from16 v0, p6

    invoke-virtual {v0, v15}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    .line 859
    const-string v15, "&"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    .line 852
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Lcom/ta/util/http/Tools;->getSign(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 860
    .local v8, "md5sign":Ljava/lang/String;
    const-string v14, "user-agent"

    move-object/from16 v0, p3

    invoke-interface {v0, v14, v13}, Lorg/apache/http/client/methods/HttpUriRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 861
    const-string v14, "action"

    move-object/from16 v0, p3

    invoke-interface {v0, v14, v4}, Lorg/apache/http/client/methods/HttpUriRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 862
    const-string v14, "termac"

    move-object/from16 v0, p0

    move-object/from16 v1, p6

    invoke-virtual {v0, v1}, Lcom/cat/impl/WifiAsyncHttpClient;->getLocalMacAddress(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p3

    invoke-interface {v0, v14, v15}, Lorg/apache/http/client/methods/HttpUriRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 863
    const-string v14, "tertype"

    const-string v15, "android"

    move-object/from16 v0, p3

    invoke-interface {v0, v14, v15}, Lorg/apache/http/client/methods/HttpUriRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 864
    const-string v14, "timestamp"

    move-object/from16 v0, p0

    iget-wide v15, v0, Lcom/cat/impl/WifiAsyncHttpClient;->time:J

    invoke-static/range {v15 .. v16}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p3

    invoke-interface {v0, v14, v15}, Lorg/apache/http/client/methods/HttpUriRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 865
    const-string v14, "appkey"

    .line 866
    const v15, 0x7f060001

    move-object/from16 v0, p6

    invoke-virtual {v0, v15}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v15

    .line 865
    move-object/from16 v0, p3

    invoke-interface {v0, v14, v15}, Lorg/apache/http/client/methods/HttpUriRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 869
    const-string v14, "sign"

    move-object/from16 v0, p3

    invoke-interface {v0, v14, v8}, Lorg/apache/http/client/methods/HttpUriRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 873
    .end local v4    # "action":Ljava/lang/String;
    .end local v5    # "bodyparam":Ljava/lang/String;
    .end local v7    # "mPackMg":Landroid/content/pm/PackageManager;
    .end local v8    # "md5sign":Ljava/lang/String;
    .end local v12    # "sharedata":Landroid/content/SharedPreferences;
    .end local v13    # "useragent":Ljava/lang/String;
    :cond_0
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/cat/impl/WifiAsyncHttpClient;->threadPool:Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance v15, Lcom/ta/util/http/AsyncHttpRequest;

    .line 874
    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    move-object/from16 v3, p5

    invoke-direct {v15, v0, v1, v2, v3}, Lcom/ta/util/http/AsyncHttpRequest;-><init>(Lorg/apache/http/impl/client/AbstractHttpClient;Lorg/apache/http/protocol/HttpContext;Lorg/apache/http/client/methods/HttpUriRequest;Lcom/ta/util/http/AsyncHttpResponseHandler;)V

    .line 873
    invoke-virtual {v14, v15}, Ljava/util/concurrent/ThreadPoolExecutor;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v10

    .line 875
    .local v10, "request":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<*>;"
    if-eqz p6, :cond_2

    .line 877
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/cat/impl/WifiAsyncHttpClient;->requestMap:Ljava/util/Map;

    .line 878
    move-object/from16 v0, p6

    invoke-interface {v14, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/List;

    .line 879
    .local v11, "requestList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/ref/WeakReference<Ljava/util/concurrent/Future<*>;>;>;"
    if-nez v11, :cond_1

    .line 880
    new-instance v11, Ljava/util/LinkedList;

    .end local v11    # "requestList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/ref/WeakReference<Ljava/util/concurrent/Future<*>;>;>;"
    invoke-direct {v11}, Ljava/util/LinkedList;-><init>()V

    .line 881
    .restart local v11    # "requestList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/ref/WeakReference<Ljava/util/concurrent/Future<*>;>;>;"
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/cat/impl/WifiAsyncHttpClient;->requestMap:Ljava/util/Map;

    move-object/from16 v0, p6

    invoke-interface {v14, v0, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 883
    :cond_1
    new-instance v14, Ljava/lang/ref/WeakReference;

    invoke-direct {v14, v10}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-interface {v11, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 886
    .end local v11    # "requestList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/ref/WeakReference<Ljava/util/concurrent/Future<*>;>;>;"
    :cond_2
    return-void

    .line 831
    .end local v10    # "request":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<*>;"
    .restart local v7    # "mPackMg":Landroid/content/pm/PackageManager;
    :catch_0
    move-exception v6

    .line 832
    .local v6, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v6}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto/16 :goto_0

    .line 846
    .end local v6    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v12    # "sharedata":Landroid/content/SharedPreferences;
    .restart local v13    # "useragent":Ljava/lang/String;
    :cond_3
    move-object/from16 v0, p0

    iget-wide v14, v0, Lcom/cat/impl/WifiAsyncHttpClient;->nowTime:J

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cat/impl/WifiAsyncHttpClient;->startTime:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-static/range {v16 .. v16}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v16

    add-long v14, v14, v16

    move-object/from16 v0, p0

    iput-wide v14, v0, Lcom/cat/impl/WifiAsyncHttpClient;->time:J

    goto/16 :goto_1
.end method

.method public setBasicAuth(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "user"    # Ljava/lang/String;
    .param p2, "pass"    # Ljava/lang/String;

    .prologue
    .line 292
    sget-object v0, Lorg/apache/http/auth/AuthScope;->ANY:Lorg/apache/http/auth/AuthScope;

    .line 293
    .local v0, "scope":Lorg/apache/http/auth/AuthScope;
    invoke-virtual {p0, p1, p2, v0}, Lcom/cat/impl/WifiAsyncHttpClient;->setBasicAuth(Ljava/lang/String;Ljava/lang/String;Lorg/apache/http/auth/AuthScope;)V

    .line 294
    return-void
.end method

.method public setBasicAuth(Ljava/lang/String;Ljava/lang/String;Lorg/apache/http/auth/AuthScope;)V
    .locals 2
    .param p1, "user"    # Ljava/lang/String;
    .param p2, "pass"    # Ljava/lang/String;
    .param p3, "scope"    # Lorg/apache/http/auth/AuthScope;

    .prologue
    .line 309
    new-instance v0, Lorg/apache/http/auth/UsernamePasswordCredentials;

    invoke-direct {v0, p1, p2}, Lorg/apache/http/auth/UsernamePasswordCredentials;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 311
    .local v0, "credentials":Lorg/apache/http/auth/UsernamePasswordCredentials;
    iget-object v1, p0, Lcom/cat/impl/WifiAsyncHttpClient;->httpClient:Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-virtual {v1}, Lorg/apache/http/impl/client/DefaultHttpClient;->getCredentialsProvider()Lorg/apache/http/client/CredentialsProvider;

    move-result-object v1

    invoke-interface {v1, p3, v0}, Lorg/apache/http/client/CredentialsProvider;->setCredentials(Lorg/apache/http/auth/AuthScope;Lorg/apache/http/auth/Credentials;)V

    .line 313
    return-void
.end method

.method public setCookieStore(Lorg/apache/http/client/CookieStore;)V
    .locals 2
    .param p1, "cookieStore"    # Lorg/apache/http/client/CookieStore;

    .prologue
    .line 219
    iget-object v0, p0, Lcom/cat/impl/WifiAsyncHttpClient;->httpContext:Lorg/apache/http/protocol/HttpContext;

    const-string v1, "http.cookie-store"

    invoke-interface {v0, v1, p1}, Lorg/apache/http/protocol/HttpContext;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    .line 220
    return-void
.end method

.method public setSSLSocketFactory(Lorg/apache/http/conn/ssl/SSLSocketFactory;)V
    .locals 4
    .param p1, "sslSocketFactory"    # Lorg/apache/http/conn/ssl/SSLSocketFactory;

    .prologue
    .line 267
    iget-object v0, p0, Lcom/cat/impl/WifiAsyncHttpClient;->httpClient:Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-virtual {v0}, Lorg/apache/http/impl/client/DefaultHttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/conn/ClientConnectionManager;->getSchemeRegistry()Lorg/apache/http/conn/scheme/SchemeRegistry;

    move-result-object v0

    .line 268
    new-instance v1, Lorg/apache/http/conn/scheme/Scheme;

    const-string v2, "https"

    const/16 v3, 0x1bb

    invoke-direct {v1, v2, p1, v3}, Lorg/apache/http/conn/scheme/Scheme;-><init>(Ljava/lang/String;Lorg/apache/http/conn/scheme/SocketFactory;I)V

    invoke-virtual {v0, v1}, Lorg/apache/http/conn/scheme/SchemeRegistry;->register(Lorg/apache/http/conn/scheme/Scheme;)Lorg/apache/http/conn/scheme/Scheme;

    .line 269
    return-void
.end method

.method public setThreadPool(Ljava/util/concurrent/ThreadPoolExecutor;)V
    .locals 0
    .param p1, "threadPool"    # Ljava/util/concurrent/ThreadPoolExecutor;

    .prologue
    .line 231
    iput-object p1, p0, Lcom/cat/impl/WifiAsyncHttpClient;->threadPool:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 232
    return-void
.end method

.method public setTimeout(I)V
    .locals 3
    .param p1, "timeout"    # I

    .prologue
    .line 253
    iget-object v1, p0, Lcom/cat/impl/WifiAsyncHttpClient;->httpClient:Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-virtual {v1}, Lorg/apache/http/impl/client/DefaultHttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v0

    .line 254
    .local v0, "httpParams":Lorg/apache/http/params/HttpParams;
    int-to-long v1, p1

    invoke-static {v0, v1, v2}, Lorg/apache/http/conn/params/ConnManagerParams;->setTimeout(Lorg/apache/http/params/HttpParams;J)V

    .line 255
    invoke-static {v0, p1}, Lorg/apache/http/params/HttpConnectionParams;->setSoTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 256
    invoke-static {v0, p1}, Lorg/apache/http/params/HttpConnectionParams;->setConnectionTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 257
    return-void
.end method

.method public setUserAgent(Ljava/lang/String;)V
    .locals 1
    .param p1, "userAgent"    # Ljava/lang/String;

    .prologue
    .line 243
    iget-object v0, p0, Lcom/cat/impl/WifiAsyncHttpClient;->httpClient:Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-virtual {v0}, Lorg/apache/http/impl/client/DefaultHttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v0

    invoke-static {v0, p1}, Lorg/apache/http/params/HttpProtocolParams;->setUserAgent(Lorg/apache/http/params/HttpParams;Ljava/lang/String;)V

    .line 244
    return-void
.end method
