.class public abstract Lcom/pubinfo/wifi_core/core/net/HttpUtil;
.super Lcom/pubinfo/wifi_core/core/data/HttpConf;
.source "HttpUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pubinfo/wifi_core/core/net/HttpUtil$ConnectAsyncTask;,
        Lcom/pubinfo/wifi_core/core/net/HttpUtil$PortalConnectAsyncTask;,
        Lcom/pubinfo/wifi_core/core/net/HttpUtil$PortalLogoutAsyncTask;
    }
.end annotation


# static fields
.field private static final CLIENTPARAM_KEY:Ljava/lang/String; = "Client"

.field private static final CLIENTPARAM_VALUE:Ljava/lang/String; = "1.0.0_Android"

.field private static final DEFAULT_LOGOFFURL:Ljava/lang/String; = "https://wlan.ct10000.com/background/wispLogoff.action"

.field private static final FNAME_KEY:Ljava/lang/String; = "FNAME"

.field private static final FNAME_VALUE:Ljava/lang/String; = "0"

.field private static final GET_PASSWORD_MESSAGE:Ljava/lang/String; = "Message"

.field private static final LOGIN_BUTTON_KEY:Ljava/lang/String; = "button"

.field private static final LOGIN_BUTTON_VALUE:Ljava/lang/String; = "Login"

.field private static final ORGSERVER_KEY:Ljava/lang/String; = "OriginatingServer"

.field private static final PASSWORD:Ljava/lang/String; = "Password"

.field private static final RESPONSECODE:Ljava/lang/String; = "ResponseCode"

.field private static final SUFFIX_2:Ljava/lang/String; = ".chntel.com"

.field private static final SUFFIX_EX:Ljava/lang/String; = "@wlanwz.zx.chntel.com"

.field private static final SUFFIX_PHONE:Ljava/lang/String; = "@cw."

.field private static final SUFFIX_WB:Ljava/lang/String; = "@wlan."

.field private static final TESTURL:Ljava/lang/String; = "http://www.baidu.com"

.field private static final USER_AGENT:Ljava/lang/String; = "CDMA+WLAN"

.field private static final USRNAME_KEY:Ljava/lang/String; = "UserName"

.field public static mCookieStore:Lorg/apache/http/client/CookieStore;


# instance fields
.field private account:Ljava/lang/String;

.field private apZone:Ljava/lang/String;

.field private mBTimeOut:Z

.field private mListParams:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/pubinfo/wifi_core/core/data/DataObject;",
            ">;"
        }
    .end annotation
.end field

.field private mResponseCode:I

.field private mStrAction:Ljava/lang/String;

.field private mStrMethodName:Ljava/lang/String;

.field private mStrResult:Ljava/lang/String;

.field private mStrUrl:Ljava/lang/String;

.field private password:Ljava/lang/String;

.field private url:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 73
    const/4 v0, 0x0

    sput-object v0, Lcom/pubinfo/wifi_core/core/net/HttpUtil;->mCookieStore:Lorg/apache/http/client/CookieStore;

    .line 207
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/pubinfo/wifi_core/core/data/HttpConf;-><init>()V

    .line 52
    const-string v0, ""

    iput-object v0, p0, Lcom/pubinfo/wifi_core/core/net/HttpUtil;->mStrResult:Ljava/lang/String;

    .line 54
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/pubinfo/wifi_core/core/net/HttpUtil;->mBTimeOut:Z

    .line 33
    return-void
.end method

.method public static HttpClientGet(Ljava/lang/String;Lorg/apache/http/params/HttpParams;Lorg/apache/http/client/CookieStore;)Ljava/lang/String;
    .locals 7
    .param p0, "url"    # Ljava/lang/String;
    .param p1, "params"    # Lorg/apache/http/params/HttpParams;
    .param p2, "store"    # Lorg/apache/http/client/CookieStore;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/client/ClientProtocolException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 308
    if-nez p0, :cond_1

    .line 337
    :cond_0
    :goto_0
    return-object v5

    .line 311
    :cond_1
    new-instance v3, Lorg/apache/http/client/methods/HttpGet;

    invoke-direct {v3, p0}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    .line 312
    .local v3, "request":Lorg/apache/http/client/methods/HttpGet;
    move-object v2, p1

    .line 313
    .local v2, "httpParams":Lorg/apache/http/params/HttpParams;
    if-nez v2, :cond_2

    .line 314
    new-instance v2, Lorg/apache/http/params/BasicHttpParams;

    .end local v2    # "httpParams":Lorg/apache/http/params/HttpParams;
    invoke-direct {v2}, Lorg/apache/http/params/BasicHttpParams;-><init>()V

    .line 317
    .restart local v2    # "httpParams":Lorg/apache/http/params/HttpParams;
    :cond_2
    const/16 v6, 0xbb8

    invoke-static {v2, v6}, Lorg/apache/http/params/HttpConnectionParams;->setConnectionTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 318
    const/16 v6, 0x2710

    invoke-static {v2, v6}, Lorg/apache/http/params/HttpConnectionParams;->setSoTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 319
    new-instance v1, Lcom/pubinfo/wifi_core/core/net/HttpManager;

    invoke-direct {v1}, Lcom/pubinfo/wifi_core/core/net/HttpManager;-><init>()V

    .line 320
    .local v1, "hm":Lcom/pubinfo/wifi_core/core/net/HttpManager;
    if-eqz p2, :cond_3

    .line 321
    invoke-virtual {v1, p2}, Lcom/pubinfo/wifi_core/core/net/HttpManager;->setCookieStore(Lorg/apache/http/client/CookieStore;)V

    .line 324
    :cond_3
    invoke-virtual {v1, v3}, Lcom/pubinfo/wifi_core/core/net/HttpManager;->execute(Lorg/apache/http/client/methods/HttpGet;)Lorg/apache/http/HttpResponse;

    move-result-object v4

    .line 325
    .local v4, "response":Lorg/apache/http/HttpResponse;
    invoke-interface {v4}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v6

    invoke-interface {v6}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v0

    .line 329
    .local v0, "code":I
    const/16 v6, 0xc8

    if-eq v0, v6, :cond_4

    .line 330
    const/16 v6, 0x12e

    if-ne v0, v6, :cond_0

    .line 331
    :cond_4
    invoke-interface {v4}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v6

    invoke-static {v6}, Lorg/apache/http/util/EntityUtils;->toString(Lorg/apache/http/HttpEntity;)Ljava/lang/String;

    move-result-object v5

    .line 334
    .local v5, "str":Ljava/lang/String;
    goto :goto_0
.end method

.method public static HttpClientPost(Ljava/lang/String;Ljava/util/List;Lorg/apache/http/params/HttpParams;)Ljava/lang/String;
    .locals 8
    .param p0, "url"    # Ljava/lang/String;
    .param p2, "params"    # Lorg/apache/http/params/HttpParams;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lorg/apache/http/NameValuePair;",
            ">;",
            "Lorg/apache/http/params/HttpParams;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/client/ClientProtocolException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 281
    .local p1, "data":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    new-instance v3, Lorg/apache/http/client/methods/HttpPost;

    invoke-direct {v3, p0}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    .line 282
    .local v3, "request":Lorg/apache/http/client/methods/HttpPost;
    new-instance v6, Lorg/apache/http/client/entity/UrlEncodedFormEntity;

    const-string v7, "UTF-8"

    invoke-direct {v6, p1, v7}, Lorg/apache/http/client/entity/UrlEncodedFormEntity;-><init>(Ljava/util/List;Ljava/lang/String;)V

    invoke-virtual {v3, v6}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 283
    move-object v2, p2

    .line 284
    .local v2, "httpParams":Lorg/apache/http/params/HttpParams;
    if-nez v2, :cond_0

    .line 285
    new-instance v2, Lorg/apache/http/params/BasicHttpParams;

    .end local v2    # "httpParams":Lorg/apache/http/params/HttpParams;
    invoke-direct {v2}, Lorg/apache/http/params/BasicHttpParams;-><init>()V

    .line 288
    .restart local v2    # "httpParams":Lorg/apache/http/params/HttpParams;
    :cond_0
    const/16 v6, 0xbb8

    invoke-static {v2, v6}, Lorg/apache/http/params/HttpConnectionParams;->setConnectionTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 289
    const/16 v6, 0x2710

    invoke-static {v2, v6}, Lorg/apache/http/params/HttpConnectionParams;->setSoTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 290
    new-instance v1, Lcom/pubinfo/wifi_core/core/net/HttpManager;

    invoke-direct {v1}, Lcom/pubinfo/wifi_core/core/net/HttpManager;-><init>()V

    .line 292
    .local v1, "hm":Lcom/pubinfo/wifi_core/core/net/HttpManager;
    invoke-virtual {v1, v3}, Lcom/pubinfo/wifi_core/core/net/HttpManager;->execute(Lorg/apache/http/client/methods/HttpPost;)Lorg/apache/http/HttpResponse;

    move-result-object v4

    .line 293
    .local v4, "response":Lorg/apache/http/HttpResponse;
    invoke-interface {v4}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v6

    invoke-interface {v6}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v0

    .line 295
    .local v0, "code":I
    const/16 v6, 0xc8

    if-ne v0, v6, :cond_1

    .line 296
    invoke-interface {v4}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v6

    invoke-static {v6}, Lorg/apache/http/util/EntityUtils;->toString(Lorg/apache/http/HttpEntity;)Ljava/lang/String;

    move-result-object v5

    .line 297
    .local v5, "str":Ljava/lang/String;
    invoke-virtual {v1}, Lcom/pubinfo/wifi_core/core/net/HttpManager;->getCookieStore()Lorg/apache/http/client/CookieStore;

    move-result-object v6

    sput-object v6, Lcom/pubinfo/wifi_core/core/net/HttpUtil;->mCookieStore:Lorg/apache/http/client/CookieStore;

    .line 303
    .end local v5    # "str":Ljava/lang/String;
    :goto_0
    return-object v5

    :cond_1
    const/4 v5, 0x0

    goto :goto_0
.end method

.method static synthetic access$0(Lcom/pubinfo/wifi_core/core/net/HttpUtil;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/pubinfo/wifi_core/core/net/HttpUtil;->mStrUrl:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1(Lcom/pubinfo/wifi_core/core/net/HttpUtil;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/pubinfo/wifi_core/core/net/HttpUtil;->mStrMethodName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$10(Lcom/pubinfo/wifi_core/core/net/HttpUtil;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/pubinfo/wifi_core/core/net/HttpUtil;->password:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$11(Lcom/pubinfo/wifi_core/core/net/HttpUtil;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/pubinfo/wifi_core/core/net/HttpUtil;->apZone:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$12(Lcom/pubinfo/wifi_core/core/net/HttpUtil;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 239
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/pubinfo/wifi_core/core/net/HttpUtil;->excutePortalConnect(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2(Lcom/pubinfo/wifi_core/core/net/HttpUtil;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/pubinfo/wifi_core/core/net/HttpUtil;->mStrAction:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$3(Lcom/pubinfo/wifi_core/core/net/HttpUtil;)Ljava/util/List;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/pubinfo/wifi_core/core/net/HttpUtil;->mListParams:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$4(Lcom/pubinfo/wifi_core/core/net/HttpUtil;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V
    .locals 0

    .prologue
    .line 123
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/pubinfo/wifi_core/core/net/HttpUtil;->excuteConnect(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    return-void
.end method

.method static synthetic access$5(Lcom/pubinfo/wifi_core/core/net/HttpUtil;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/pubinfo/wifi_core/core/net/HttpUtil;->mStrResult:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$6(Lcom/pubinfo/wifi_core/core/net/HttpUtil;)Z
    .locals 1

    .prologue
    .line 54
    iget-boolean v0, p0, Lcom/pubinfo/wifi_core/core/net/HttpUtil;->mBTimeOut:Z

    return v0
.end method

.method static synthetic access$7(Lcom/pubinfo/wifi_core/core/net/HttpUtil;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 52
    iput-object p1, p0, Lcom/pubinfo/wifi_core/core/net/HttpUtil;->mStrResult:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$8(Lcom/pubinfo/wifi_core/core/net/HttpUtil;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/pubinfo/wifi_core/core/net/HttpUtil;->url:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$9(Lcom/pubinfo/wifi_core/core/net/HttpUtil;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/pubinfo/wifi_core/core/net/HttpUtil;->account:Ljava/lang/String;

    return-object v0
.end method

.method private excuteConnect(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V
    .locals 10
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "methodName"    # Ljava/lang/String;
    .param p3, "action"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/pubinfo/wifi_core/core/data/DataObject;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 125
    .local p4, "params":Ljava/util/List;, "Ljava/util/List<Lcom/pubinfo/wifi_core/core/data/DataObject;>;"
    const-string v6, ""

    .line 126
    .local v6, "tempString":Ljava/lang/String;
    if-eqz p4, :cond_0

    .line 127
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    invoke-interface {p4}, Ljava/util/List;->size()I

    move-result v8

    if-lt v4, v8, :cond_1

    .line 137
    .end local v4    # "i":I
    :cond_0
    const-string v8, ""

    if-ne v6, v8, :cond_3

    .line 138
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 142
    .local v7, "tempUrl":Ljava/lang/String;
    :goto_1
    new-instance v2, Lorg/apache/http/client/methods/HttpGet;

    invoke-direct {v2, v7}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    .line 143
    .local v2, "get":Lorg/apache/http/client/methods/HttpGet;
    new-instance v3, Lorg/apache/http/params/BasicHttpParams;

    invoke-direct {v3}, Lorg/apache/http/params/BasicHttpParams;-><init>()V

    .line 144
    .local v3, "httpParameters":Lorg/apache/http/params/BasicHttpParams;
    const/16 v8, 0x7530

    invoke-static {v3, v8}, Lorg/apache/http/params/HttpConnectionParams;->setConnectionTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 145
    const/16 v8, 0x7530

    invoke-static {v3, v8}, Lorg/apache/http/params/HttpConnectionParams;->setSoTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 146
    new-instance v0, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v0, v3}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>(Lorg/apache/http/params/HttpParams;)V

    .line 148
    .local v0, "client":Lorg/apache/http/client/HttpClient;
    :try_start_0
    invoke-interface {v0, v2}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v5

    .line 149
    .local v5, "response":Lorg/apache/http/HttpResponse;
    invoke-interface {v5}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v8

    invoke-static {v8}, Lorg/apache/http/util/EntityUtils;->toString(Lorg/apache/http/HttpEntity;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/pubinfo/wifi_core/core/net/HttpUtil;->mStrResult:Ljava/lang/String;
    :try_end_0
    .catch Lorg/apache/http/conn/HttpHostConnectException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 158
    .end local v5    # "response":Lorg/apache/http/HttpResponse;
    :goto_2
    return-void

    .line 128
    .end local v0    # "client":Lorg/apache/http/client/HttpClient;
    .end local v2    # "get":Lorg/apache/http/client/methods/HttpGet;
    .end local v3    # "httpParameters":Lorg/apache/http/params/BasicHttpParams;
    .end local v7    # "tempUrl":Ljava/lang/String;
    .restart local v4    # "i":I
    :cond_1
    if-eqz v4, :cond_2

    .line 129
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v9, "&"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 131
    :cond_2
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v9, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p4, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/pubinfo/wifi_core/core/data/DataObject;

    invoke-virtual {v8}, Lcom/pubinfo/wifi_core/core/data/DataObject;->getKey()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 132
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v9, "="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 133
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v9, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p4, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/pubinfo/wifi_core/core/data/DataObject;

    invoke-virtual {v8}, Lcom/pubinfo/wifi_core/core/data/DataObject;->getValue()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 127
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_0

    .line 140
    .end local v4    # "i":I
    :cond_3
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "?"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .restart local v7    # "tempUrl":Ljava/lang/String;
    goto/16 :goto_1

    .line 150
    .restart local v0    # "client":Lorg/apache/http/client/HttpClient;
    .restart local v2    # "get":Lorg/apache/http/client/methods/HttpGet;
    .restart local v3    # "httpParameters":Lorg/apache/http/params/BasicHttpParams;
    :catch_0
    move-exception v1

    .line 151
    .local v1, "e":Lorg/apache/http/conn/HttpHostConnectException;
    const/4 v8, 0x0

    iput-object v8, p0, Lcom/pubinfo/wifi_core/core/net/HttpUtil;->mStrResult:Ljava/lang/String;

    .line 152
    const/4 v8, 0x1

    iput-boolean v8, p0, Lcom/pubinfo/wifi_core/core/net/HttpUtil;->mBTimeOut:Z

    goto/16 :goto_2

    .line 154
    .end local v1    # "e":Lorg/apache/http/conn/HttpHostConnectException;
    :catch_1
    move-exception v1

    .line 155
    .local v1, "e":Ljava/lang/Exception;
    const/4 v8, 0x0

    iput-object v8, p0, Lcom/pubinfo/wifi_core/core/net/HttpUtil;->mStrResult:Ljava/lang/String;

    .line 156
    const/4 v8, 0x1

    iput-boolean v8, p0, Lcom/pubinfo/wifi_core/core/net/HttpUtil;->mBTimeOut:Z

    goto/16 :goto_2
.end method

.method private excutePortalConnect(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 10
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "account"    # Ljava/lang/String;
    .param p3, "password"    # Ljava/lang/String;
    .param p4, "apZone"    # Ljava/lang/String;

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 241
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 242
    .local v1, "list":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    new-instance v4, Lorg/apache/http/message/BasicNameValuePair;

    const-string v5, "button"

    const-string v6, "Login"

    invoke-direct {v4, v5, v6}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 243
    new-instance v4, Lorg/apache/http/message/BasicNameValuePair;

    const-string v5, "Password"

    invoke-direct {v4, v5, p3}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 244
    new-instance v4, Lorg/apache/http/message/BasicNameValuePair;

    const-string v5, "Client"

    const-string v6, "1.0.0_Android"

    invoke-direct {v4, v5, v6}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 246
    new-instance v4, Lorg/apache/http/message/BasicNameValuePair;

    const-string v5, "UserName"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v7, "@wlan."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 247
    invoke-virtual {v6, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ".chntel.com"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 246
    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 249
    new-instance v4, Lorg/apache/http/message/BasicNameValuePair;

    const-string v5, "FNAME"

    const-string v6, "0"

    invoke-direct {v4, v5, v6}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 250
    new-instance v4, Lorg/apache/http/message/BasicNameValuePair;

    const-string v5, "OriginatingServer"

    const-string v6, "http://www.baidu.com"

    invoke-direct {v4, v5, v6}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 253
    new-instance v2, Lorg/apache/http/params/BasicHttpParams;

    invoke-direct {v2}, Lorg/apache/http/params/BasicHttpParams;-><init>()V

    .line 254
    .local v2, "params":Lorg/apache/http/params/HttpParams;
    const-string v4, "CDMA+WLAN"

    invoke-static {v2, v4}, Lorg/apache/http/params/HttpProtocolParams;->setUserAgent(Lorg/apache/http/params/HttpParams;Ljava/lang/String;)V

    .line 266
    :try_start_0
    invoke-static {p1, v1, v2}, Lcom/pubinfo/wifi_core/core/net/HttpUtil;->HttpClientPost(Ljava/lang/String;Ljava/util/List;Lorg/apache/http/params/HttpParams;)Ljava/lang/String;

    move-result-object v3

    .line 267
    .local v3, "res":Ljava/lang/String;
    iput-object v3, p0, Lcom/pubinfo/wifi_core/core/net/HttpUtil;->mStrResult:Ljava/lang/String;
    :try_end_0
    .catch Lorg/apache/http/conn/HttpHostConnectException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 276
    .end local v3    # "res":Ljava/lang/String;
    :goto_0
    return-void

    .line 268
    :catch_0
    move-exception v0

    .line 269
    .local v0, "e":Lorg/apache/http/conn/HttpHostConnectException;
    iput-object v9, p0, Lcom/pubinfo/wifi_core/core/net/HttpUtil;->mStrResult:Ljava/lang/String;

    .line 270
    iput-boolean v8, p0, Lcom/pubinfo/wifi_core/core/net/HttpUtil;->mBTimeOut:Z

    goto :goto_0

    .line 272
    .end local v0    # "e":Lorg/apache/http/conn/HttpHostConnectException;
    :catch_1
    move-exception v0

    .line 273
    .local v0, "e":Ljava/lang/Exception;
    iput-object v9, p0, Lcom/pubinfo/wifi_core/core/net/HttpUtil;->mStrResult:Ljava/lang/String;

    .line 274
    iput-boolean v8, p0, Lcom/pubinfo/wifi_core/core/net/HttpUtil;->mBTimeOut:Z

    goto :goto_0
.end method


# virtual methods
.method public asyncConnect(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V
    .locals 2
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "methodName"    # Ljava/lang/String;
    .param p3, "action"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/pubinfo/wifi_core/core/data/DataObject;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 80
    .local p4, "params":Ljava/util/List;, "Ljava/util/List<Lcom/pubinfo/wifi_core/core/data/DataObject;>;"
    iput-object p1, p0, Lcom/pubinfo/wifi_core/core/net/HttpUtil;->mStrUrl:Ljava/lang/String;

    .line 81
    iput-object p2, p0, Lcom/pubinfo/wifi_core/core/net/HttpUtil;->mStrMethodName:Ljava/lang/String;

    .line 82
    iput-object p3, p0, Lcom/pubinfo/wifi_core/core/net/HttpUtil;->mStrAction:Ljava/lang/String;

    .line 83
    iput-object p4, p0, Lcom/pubinfo/wifi_core/core/net/HttpUtil;->mListParams:Ljava/util/List;

    .line 85
    new-instance v0, Lcom/pubinfo/wifi_core/core/net/HttpUtil$ConnectAsyncTask;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/pubinfo/wifi_core/core/net/HttpUtil$ConnectAsyncTask;-><init>(Lcom/pubinfo/wifi_core/core/net/HttpUtil;Lcom/pubinfo/wifi_core/core/net/HttpUtil$ConnectAsyncTask;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/pubinfo/wifi_core/core/net/HttpUtil$ConnectAsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 86
    return-void
.end method

.method public excutePortalLogout()V
    .locals 8

    .prologue
    .line 211
    :try_start_0
    new-instance v4, Lorg/apache/http/params/BasicHttpParams;

    invoke-direct {v4}, Lorg/apache/http/params/BasicHttpParams;-><init>()V

    .line 213
    .local v4, "params":Lorg/apache/http/params/HttpParams;
    const-string v6, "CDMA+WLAN"

    invoke-static {v4, v6}, Lorg/apache/http/params/HttpProtocolParams;->setUserAgent(Lorg/apache/http/params/HttpParams;Ljava/lang/String;)V

    .line 214
    const-string v6, "https://wlan.ct10000.com/wispr_logout.jsp"

    .line 215
    sget-object v7, Lcom/pubinfo/wifi_core/core/net/HttpUtil;->mCookieStore:Lorg/apache/http/client/CookieStore;

    .line 214
    invoke-static {v6, v4, v7}, Lcom/pubinfo/wifi_core/core/net/HttpUtil;->HttpClientGet(Ljava/lang/String;Lorg/apache/http/params/HttpParams;Lorg/apache/http/client/CookieStore;)Ljava/lang/String;

    move-result-object v5

    .line 216
    .local v5, "res":Ljava/lang/String;
    if-nez v5, :cond_0

    .line 236
    .end local v4    # "params":Lorg/apache/http/params/HttpParams;
    .end local v5    # "res":Ljava/lang/String;
    :goto_0
    return-void

    .line 219
    .restart local v4    # "params":Lorg/apache/http/params/HttpParams;
    .restart local v5    # "res":Ljava/lang/String;
    :cond_0
    new-instance v3, Ljava/io/ByteArrayInputStream;

    invoke-virtual {v5}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    invoke-direct {v3, v6}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 221
    .local v3, "is":Ljava/io/InputStream;
    const-string v6, "ResponseCode"

    .line 220
    invoke-static {v3, v6}, Lcom/pubinfo/wifi_core/core/net/XmlParser;->parseXmlByDom(Ljava/io/InputStream;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    .line 222
    .local v1, "dataList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/pubinfo/wifi_core/core/net/XMLData;>;"
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-lez v6, :cond_1

    .line 223
    const/4 v6, 0x0

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/pubinfo/wifi_core/core/net/XMLData;

    iget-object v6, v6, Lcom/pubinfo/wifi_core/core/net/XMLData;->characters:Ljava/lang/String;

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    iput v6, p0, Lcom/pubinfo/wifi_core/core/net/HttpUtil;->mResponseCode:I

    .line 224
    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 231
    :goto_1
    invoke-static {}, Ljava/lang/System;->gc()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 232
    .end local v1    # "dataList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/pubinfo/wifi_core/core/net/XMLData;>;"
    .end local v3    # "is":Ljava/io/InputStream;
    .end local v4    # "params":Lorg/apache/http/params/HttpParams;
    .end local v5    # "res":Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 234
    .local v2, "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 227
    .end local v2    # "e":Ljava/io/IOException;
    .restart local v1    # "dataList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/pubinfo/wifi_core/core/net/XMLData;>;"
    .restart local v3    # "is":Ljava/io/InputStream;
    .restart local v4    # "params":Lorg/apache/http/params/HttpParams;
    .restart local v5    # "res":Ljava/lang/String;
    :cond_1
    :try_start_1
    const-string v6, "<ResponseCode>"

    invoke-virtual {v5, v6}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v6

    add-int/lit8 v6, v6, 0xe

    .line 228
    const-string v7, "</ResponseCode>"

    invoke-virtual {v5, v7}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v7

    .line 226
    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 229
    .local v0, "code":Ljava/lang/String;
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    iput v6, p0, Lcom/pubinfo/wifi_core/core/net/HttpUtil;->mResponseCode:I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method public portalLoginConnect(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "account"    # Ljava/lang/String;
    .param p3, "password"    # Ljava/lang/String;
    .param p4, "apZone"    # Ljava/lang/String;

    .prologue
    .line 90
    iput-object p1, p0, Lcom/pubinfo/wifi_core/core/net/HttpUtil;->url:Ljava/lang/String;

    .line 91
    iput-object p2, p0, Lcom/pubinfo/wifi_core/core/net/HttpUtil;->account:Ljava/lang/String;

    .line 92
    iput-object p3, p0, Lcom/pubinfo/wifi_core/core/net/HttpUtil;->password:Ljava/lang/String;

    .line 93
    iput-object p4, p0, Lcom/pubinfo/wifi_core/core/net/HttpUtil;->apZone:Ljava/lang/String;

    .line 94
    new-instance v0, Lcom/pubinfo/wifi_core/core/net/HttpUtil$PortalConnectAsyncTask;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/pubinfo/wifi_core/core/net/HttpUtil$PortalConnectAsyncTask;-><init>(Lcom/pubinfo/wifi_core/core/net/HttpUtil;Lcom/pubinfo/wifi_core/core/net/HttpUtil$PortalConnectAsyncTask;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/pubinfo/wifi_core/core/net/HttpUtil$PortalConnectAsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 95
    return-void
.end method

.method public portalLogout()V
    .locals 2

    .prologue
    .line 98
    new-instance v0, Lcom/pubinfo/wifi_core/core/net/HttpUtil$PortalLogoutAsyncTask;

    invoke-direct {v0, p0}, Lcom/pubinfo/wifi_core/core/net/HttpUtil$PortalLogoutAsyncTask;-><init>(Lcom/pubinfo/wifi_core/core/net/HttpUtil;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/pubinfo/wifi_core/core/net/HttpUtil$PortalLogoutAsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 99
    return-void
.end method

.method public abstract taskexecute(Ljava/lang/String;Z)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method
