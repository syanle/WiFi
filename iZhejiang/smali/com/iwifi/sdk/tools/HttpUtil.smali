.class public abstract Lcom/iwifi/sdk/tools/HttpUtil;
.super Lcom/iwifi/sdk/tools/HttpConf;
.source "HttpUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/iwifi/sdk/tools/HttpUtil$ConnectAsyncTask;,
        Lcom/iwifi/sdk/tools/HttpUtil$PortalConnectAsyncTask;,
        Lcom/iwifi/sdk/tools/HttpUtil$PortalLogoutAsyncTask;,
        Lcom/iwifi/sdk/tools/HttpUtil$iWiFiPlatformStatus;
    }
.end annotation


# static fields
.field private static final CASUAL_URL:Ljava/lang/String; = "http://www.baidu.com"

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

.field private static final TIME_OUT:I = 0xbb8

.field private static final USER_AGENT:Ljava/lang/String; = "CDMA+WLAN"

.field private static final USRNAME_KEY:Ljava/lang/String; = "UserName"

.field private static final iWiFi_10_PORTAL_URL:Ljava/lang/String; = "http://www.hichinawifi.com:80/login/"

.field private static final iWiFi_10_URL:Ljava/lang/String; = "http://www.hichinawifi.com"

.field private static final iWiFi_20_PORTAL_URL:Ljava/lang/String; = "http://portal.51iwifi.com:80/site/login/"

.field private static final iWiFi_20_URL:Ljava/lang/String; = "http://www.51iwifi.com"

.field private static iWiFi_status:Lcom/iwifi/sdk/tools/HttpUtil$iWiFiPlatformStatus;

.field public static mCookieStore:Lorg/apache/http/client/CookieStore;

.field private static mObject:Ljava/lang/Object;


# instance fields
.field private account:Ljava/lang/String;

.field private apZone:Ljava/lang/String;

.field private mBTimeOut:Z

.field private mListParams:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/iwifi/sdk/tools/DataObject;",
            ">;"
        }
    .end annotation
.end field

.field private mRedirectUrl:Ljava/lang/String;

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
    .line 93
    const/4 v0, 0x0

    sput-object v0, Lcom/iwifi/sdk/tools/HttpUtil;->mCookieStore:Lorg/apache/http/client/CookieStore;

    .line 633
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/iwifi/sdk/tools/HttpUtil;->mObject:Ljava/lang/Object;

    .line 634
    sget-object v0, Lcom/iwifi/sdk/tools/HttpUtil$iWiFiPlatformStatus;->iWiFi_NONE:Lcom/iwifi/sdk/tools/HttpUtil$iWiFiPlatformStatus;

    sput-object v0, Lcom/iwifi/sdk/tools/HttpUtil;->iWiFi_status:Lcom/iwifi/sdk/tools/HttpUtil$iWiFiPlatformStatus;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 51
    invoke-direct {p0}, Lcom/iwifi/sdk/tools/HttpConf;-><init>()V

    .line 70
    const-string v0, ""

    iput-object v0, p0, Lcom/iwifi/sdk/tools/HttpUtil;->mStrResult:Ljava/lang/String;

    .line 72
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/iwifi/sdk/tools/HttpUtil;->mBTimeOut:Z

    .line 74
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/iwifi/sdk/tools/HttpUtil;->mRedirectUrl:Ljava/lang/String;

    .line 51
    return-void
.end method

.method private GetChinaNetRedirectUrl(Lorg/jsoup/nodes/Document;)Ljava/lang/String;
    .locals 5
    .param p1, "doc"    # Lorg/jsoup/nodes/Document;

    .prologue
    const/4 v3, 0x0

    .line 351
    if-nez p1, :cond_0

    move-object v2, v3

    .line 365
    :goto_0
    return-object v2

    .line 354
    :cond_0
    invoke-virtual {p1}, Lorg/jsoup/nodes/Document;->title()Ljava/lang/String;

    move-result-object v0

    .line 355
    .local v0, "html_title":Ljava/lang/String;
    const-string v4, "a"

    invoke-virtual {p1, v4}, Lorg/jsoup/nodes/Document;->getElementsByTag(Ljava/lang/String;)Lorg/jsoup/select/Elements;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 356
    const-string v4, "a"

    invoke-virtual {p1, v4}, Lorg/jsoup/nodes/Document;->getElementsByTag(Ljava/lang/String;)Lorg/jsoup/select/Elements;

    move-result-object v4

    invoke-virtual {v4}, Lorg/jsoup/select/Elements;->first()Lorg/jsoup/nodes/Element;

    move-result-object v1

    .line 357
    .local v1, "link":Lorg/jsoup/nodes/Element;
    if-eqz v1, :cond_1

    .line 358
    const-string v4, "href"

    invoke-virtual {v1, v4}, Lorg/jsoup/nodes/Element;->attr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 359
    .local v2, "linkHref":Ljava/lang/String;
    if-eqz v0, :cond_1

    const-string v4, "Redirect"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 360
    const-string v3, "&amp;"

    const-string v4, "&"

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_0

    .end local v1    # "link":Lorg/jsoup/nodes/Element;
    .end local v2    # "linkHref":Ljava/lang/String;
    :cond_1
    move-object v2, v3

    .line 365
    goto :goto_0
.end method

.method private GetFujianRedirectUrl(Lorg/jsoup/nodes/Document;)Ljava/lang/String;
    .locals 10
    .param p1, "doc"    # Lorg/jsoup/nodes/Document;

    .prologue
    .line 400
    const/4 v0, 0x0

    .line 401
    .local v0, "action_url":Ljava/lang/String;
    const/4 v5, 0x1

    .line 403
    .local v5, "looper":Z
    :goto_0
    if-nez v5, :cond_1

    .line 433
    :cond_0
    return-object v0

    .line 404
    :cond_1
    if-eqz p1, :cond_0

    .line 406
    const-string v8, "form"

    invoke-virtual {p1, v8}, Lorg/jsoup/nodes/Document;->getElementsByTag(Ljava/lang/String;)Lorg/jsoup/select/Elements;

    move-result-object v2

    .line 408
    .local v2, "form_elements":Lorg/jsoup/select/Elements;
    if-eqz v2, :cond_0

    const-string v8, "[name=CMCCWLANFORM]"

    invoke-virtual {v2, v8}, Lorg/jsoup/select/Elements;->select(Ljava/lang/String;)Lorg/jsoup/select/Elements;

    move-result-object v8

    if-eqz v8, :cond_0

    .line 411
    const-string v8, "[name=CMCCWLANFORM]"

    invoke-virtual {v2, v8}, Lorg/jsoup/select/Elements;->select(Ljava/lang/String;)Lorg/jsoup/select/Elements;

    move-result-object v8

    invoke-virtual {v8}, Lorg/jsoup/select/Elements;->first()Lorg/jsoup/nodes/Element;

    move-result-object v1

    .line 413
    .local v1, "element":Lorg/jsoup/nodes/Element;
    if-eqz v1, :cond_0

    .line 416
    const-string v8, "action"

    invoke-virtual {v1, v8}, Lorg/jsoup/nodes/Element;->attr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 417
    const-string v8, "input[name]"

    invoke-virtual {v1, v8}, Lorg/jsoup/nodes/Element;->select(Ljava/lang/String;)Lorg/jsoup/select/Elements;

    move-result-object v4

    .line 419
    .local v4, "input_elements":Lorg/jsoup/select/Elements;
    if-eqz v4, :cond_0

    invoke-virtual {v4}, Lorg/jsoup/select/Elements;->size()I

    move-result v8

    if-eqz v8, :cond_0

    .line 421
    const-string v7, ""

    .line 422
    .local v7, "tempString":Ljava/lang/String;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    invoke-virtual {v4}, Lorg/jsoup/select/Elements;->size()I

    move-result v8

    if-lt v3, v8, :cond_2

    .line 430
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v9, "?"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 431
    const/4 v5, 0x0

    goto :goto_0

    .line 423
    :cond_2
    invoke-virtual {v4, v3}, Lorg/jsoup/select/Elements;->get(I)Lorg/jsoup/nodes/Element;

    move-result-object v6

    .line 424
    .local v6, "temp":Lorg/jsoup/nodes/Element;
    if-eqz v3, :cond_3

    .line 425
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v9, "&"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 426
    :cond_3
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v9, "name"

    invoke-virtual {v6, v9}, Lorg/jsoup/nodes/Element;->attr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 427
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v9, "="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 428
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v9, "value"

    invoke-virtual {v6, v9}, Lorg/jsoup/nodes/Element;->attr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 422
    add-int/lit8 v3, v3, 0x1

    goto :goto_1
.end method

.method private GetOtherRedirectUrl(Lorg/jsoup/nodes/Document;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p1, "doc"    # Lorg/jsoup/nodes/Document;
    .param p2, "tagStr"    # Ljava/lang/String;
    .param p3, "attrStr"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 375
    if-nez p1, :cond_0

    move-object v2, v3

    .line 393
    :goto_0
    return-object v2

    .line 378
    :cond_0
    invoke-virtual {p1}, Lorg/jsoup/nodes/Document;->title()Ljava/lang/String;

    move-result-object v0

    .line 379
    .local v0, "html_title":Ljava/lang/String;
    const-string v4, "\u767e\u5ea6"

    invoke-virtual {v0, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 381
    const-string v2, "Already onLine"

    goto :goto_0

    .line 383
    :cond_1
    invoke-virtual {p1, p2}, Lorg/jsoup/nodes/Document;->getElementsByTag(Ljava/lang/String;)Lorg/jsoup/select/Elements;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 384
    invoke-virtual {p1, p2}, Lorg/jsoup/nodes/Document;->getElementsByTag(Ljava/lang/String;)Lorg/jsoup/select/Elements;

    move-result-object v4

    invoke-virtual {v4}, Lorg/jsoup/select/Elements;->first()Lorg/jsoup/nodes/Element;

    move-result-object v1

    .line 385
    .local v1, "link":Lorg/jsoup/nodes/Element;
    if-eqz v1, :cond_2

    .line 386
    invoke-virtual {v1, p3}, Lorg/jsoup/nodes/Element;->attr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 387
    .local v2, "linkHref":Ljava/lang/String;
    const-string v4, ""

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 388
    const-string v3, "&amp;"

    const-string v4, "&"

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_0

    .end local v1    # "link":Lorg/jsoup/nodes/Element;
    .end local v2    # "linkHref":Ljava/lang/String;
    :cond_2
    move-object v2, v3

    .line 393
    goto :goto_0
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

    .line 595
    if-nez p0, :cond_1

    .line 624
    :cond_0
    :goto_0
    return-object v5

    .line 598
    :cond_1
    new-instance v3, Lorg/apache/http/client/methods/HttpGet;

    invoke-direct {v3, p0}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    .line 599
    .local v3, "request":Lorg/apache/http/client/methods/HttpGet;
    move-object v2, p1

    .line 600
    .local v2, "httpParams":Lorg/apache/http/params/HttpParams;
    if-nez v2, :cond_2

    .line 601
    new-instance v2, Lorg/apache/http/params/BasicHttpParams;

    .end local v2    # "httpParams":Lorg/apache/http/params/HttpParams;
    invoke-direct {v2}, Lorg/apache/http/params/BasicHttpParams;-><init>()V

    .line 604
    .restart local v2    # "httpParams":Lorg/apache/http/params/HttpParams;
    :cond_2
    const/16 v6, 0xbb8

    invoke-static {v2, v6}, Lorg/apache/http/params/HttpConnectionParams;->setConnectionTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 605
    const/16 v6, 0x2710

    invoke-static {v2, v6}, Lorg/apache/http/params/HttpConnectionParams;->setSoTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 606
    new-instance v1, Lcom/iwifi/sdk/tools/HttpManager;

    invoke-direct {v1}, Lcom/iwifi/sdk/tools/HttpManager;-><init>()V

    .line 607
    .local v1, "hm":Lcom/iwifi/sdk/tools/HttpManager;
    if-eqz p2, :cond_3

    .line 608
    invoke-virtual {v1, p2}, Lcom/iwifi/sdk/tools/HttpManager;->setCookieStore(Lorg/apache/http/client/CookieStore;)V

    .line 611
    :cond_3
    invoke-virtual {v1, v3}, Lcom/iwifi/sdk/tools/HttpManager;->execute(Lorg/apache/http/client/methods/HttpGet;)Lorg/apache/http/HttpResponse;

    move-result-object v4

    .line 612
    .local v4, "response":Lorg/apache/http/HttpResponse;
    invoke-interface {v4}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v6

    invoke-interface {v6}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v0

    .line 616
    .local v0, "code":I
    const/16 v6, 0xc8

    if-eq v0, v6, :cond_4

    .line 617
    const/16 v6, 0x12e

    if-ne v0, v6, :cond_0

    .line 618
    :cond_4
    invoke-interface {v4}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v6

    invoke-static {v6}, Lorg/apache/http/util/EntityUtils;->toString(Lorg/apache/http/HttpEntity;)Ljava/lang/String;

    move-result-object v5

    .line 621
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
    .line 568
    .local p1, "data":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    new-instance v3, Lorg/apache/http/client/methods/HttpPost;

    invoke-direct {v3, p0}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    .line 569
    .local v3, "request":Lorg/apache/http/client/methods/HttpPost;
    new-instance v6, Lorg/apache/http/client/entity/UrlEncodedFormEntity;

    const-string v7, "UTF-8"

    invoke-direct {v6, p1, v7}, Lorg/apache/http/client/entity/UrlEncodedFormEntity;-><init>(Ljava/util/List;Ljava/lang/String;)V

    invoke-virtual {v3, v6}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 570
    move-object v2, p2

    .line 571
    .local v2, "httpParams":Lorg/apache/http/params/HttpParams;
    if-nez v2, :cond_0

    .line 572
    new-instance v2, Lorg/apache/http/params/BasicHttpParams;

    .end local v2    # "httpParams":Lorg/apache/http/params/HttpParams;
    invoke-direct {v2}, Lorg/apache/http/params/BasicHttpParams;-><init>()V

    .line 575
    .restart local v2    # "httpParams":Lorg/apache/http/params/HttpParams;
    :cond_0
    const/16 v6, 0xbb8

    invoke-static {v2, v6}, Lorg/apache/http/params/HttpConnectionParams;->setConnectionTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 576
    const/16 v6, 0x2710

    invoke-static {v2, v6}, Lorg/apache/http/params/HttpConnectionParams;->setSoTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 577
    new-instance v1, Lcom/iwifi/sdk/tools/HttpManager;

    invoke-direct {v1}, Lcom/iwifi/sdk/tools/HttpManager;-><init>()V

    .line 579
    .local v1, "hm":Lcom/iwifi/sdk/tools/HttpManager;
    invoke-virtual {v1, v3}, Lcom/iwifi/sdk/tools/HttpManager;->execute(Lorg/apache/http/client/methods/HttpPost;)Lorg/apache/http/HttpResponse;

    move-result-object v4

    .line 580
    .local v4, "response":Lorg/apache/http/HttpResponse;
    invoke-interface {v4}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v6

    invoke-interface {v6}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v0

    .line 582
    .local v0, "code":I
    const/16 v6, 0xc8

    if-ne v0, v6, :cond_1

    .line 583
    invoke-interface {v4}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v6

    invoke-static {v6}, Lorg/apache/http/util/EntityUtils;->toString(Lorg/apache/http/HttpEntity;)Ljava/lang/String;

    move-result-object v5

    .line 584
    .local v5, "str":Ljava/lang/String;
    invoke-virtual {v1}, Lcom/iwifi/sdk/tools/HttpManager;->getCookieStore()Lorg/apache/http/client/CookieStore;

    move-result-object v6

    sput-object v6, Lcom/iwifi/sdk/tools/HttpUtil;->mCookieStore:Lorg/apache/http/client/CookieStore;

    .line 590
    .end local v5    # "str":Ljava/lang/String;
    :goto_0
    return-object v5

    :cond_1
    const/4 v5, 0x0

    goto :goto_0
.end method

.method static synthetic access$0(Lcom/iwifi/sdk/tools/HttpUtil;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/iwifi/sdk/tools/HttpUtil;->mStrUrl:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1(Lcom/iwifi/sdk/tools/HttpUtil;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/iwifi/sdk/tools/HttpUtil;->mStrMethodName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$10(Lcom/iwifi/sdk/tools/HttpUtil;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/iwifi/sdk/tools/HttpUtil;->password:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$11(Lcom/iwifi/sdk/tools/HttpUtil;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/iwifi/sdk/tools/HttpUtil;->apZone:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$12(Lcom/iwifi/sdk/tools/HttpUtil;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 526
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/iwifi/sdk/tools/HttpUtil;->excutePortalConnect(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$13(Lcom/iwifi/sdk/tools/HttpUtil;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 74
    iput-object p1, p0, Lcom/iwifi/sdk/tools/HttpUtil;->mRedirectUrl:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$2(Lcom/iwifi/sdk/tools/HttpUtil;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/iwifi/sdk/tools/HttpUtil;->mStrAction:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$3(Lcom/iwifi/sdk/tools/HttpUtil;)Ljava/util/List;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcom/iwifi/sdk/tools/HttpUtil;->mListParams:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$4(Lcom/iwifi/sdk/tools/HttpUtil;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V
    .locals 0

    .prologue
    .line 155
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/iwifi/sdk/tools/HttpUtil;->excuteConnect(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    return-void
.end method

.method static synthetic access$5(Lcom/iwifi/sdk/tools/HttpUtil;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lcom/iwifi/sdk/tools/HttpUtil;->mStrResult:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$6(Lcom/iwifi/sdk/tools/HttpUtil;)Z
    .locals 1

    .prologue
    .line 72
    iget-boolean v0, p0, Lcom/iwifi/sdk/tools/HttpUtil;->mBTimeOut:Z

    return v0
.end method

.method static synthetic access$7(Lcom/iwifi/sdk/tools/HttpUtil;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 70
    iput-object p1, p0, Lcom/iwifi/sdk/tools/HttpUtil;->mStrResult:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$8(Lcom/iwifi/sdk/tools/HttpUtil;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/iwifi/sdk/tools/HttpUtil;->url:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$9(Lcom/iwifi/sdk/tools/HttpUtil;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/iwifi/sdk/tools/HttpUtil;->account:Ljava/lang/String;

    return-object v0
.end method

.method private excuteConnect(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V
    .locals 21
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
            "Lcom/iwifi/sdk/tools/DataObject;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 157
    .local p4, "params":Ljava/util/List;, "Ljava/util/List<Lcom/iwifi/sdk/tools/DataObject;>;"
    const-string v16, ""

    .line 158
    .local v16, "tempString":Ljava/lang/String;
    if-eqz p4, :cond_0

    .line 159
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_0
    invoke-interface/range {p4 .. p4}, Ljava/util/List;->size()I

    move-result v18

    move/from16 v0, v18

    if-lt v10, v0, :cond_4

    .line 169
    .end local v10    # "i":I
    :cond_0
    const-string v18, ""

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    if-ne v0, v1, :cond_7

    .line 170
    const-string v18, "getPortalUrl"

    move-object/from16 v0, v18

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_6

    .line 171
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-static/range {p1 .. p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v19

    invoke-direct/range {v18 .. v19}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v18

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    .line 180
    .local v17, "tempUrl":Ljava/lang/String;
    :goto_1
    const-string v18, "iWiFiSDK|Common API|HttpUtils"

    new-instance v19, Ljava/lang/StringBuilder;

    const-string v20, "methodName:"

    invoke-direct/range {v19 .. v20}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v19

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, "&url="

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Lcom/iwifi/sdk/tools/Logger;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 181
    new-instance v7, Lorg/apache/http/client/methods/HttpGet;

    move-object/from16 v0, v17

    invoke-direct {v7, v0}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    .line 182
    .local v7, "get":Lorg/apache/http/client/methods/HttpGet;
    new-instance v9, Lorg/apache/http/params/BasicHttpParams;

    invoke-direct {v9}, Lorg/apache/http/params/BasicHttpParams;-><init>()V

    .line 183
    .local v9, "httpParameters":Lorg/apache/http/params/BasicHttpParams;
    const/16 v18, 0x7530

    move/from16 v0, v18

    invoke-static {v9, v0}, Lorg/apache/http/params/HttpConnectionParams;->setConnectionTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 184
    const/16 v18, 0x7530

    move/from16 v0, v18

    invoke-static {v9, v0}, Lorg/apache/http/params/HttpConnectionParams;->setSoTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 185
    new-instance v3, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v3, v9}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>(Lorg/apache/http/params/HttpParams;)V

    .line 187
    .local v3, "client":Lorg/apache/http/client/HttpClient;
    const-string v18, "getPortalUrl"

    move-object/from16 v0, v18

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_9

    .line 189
    const-string v18, "User-Agent"

    sget-object v19, Lcom/iwifi/sdk/tools/HttpUtil;->iWiFi_USER_AGENT:Ljava/lang/String;

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v7, v0, v1}, Lorg/apache/http/client/methods/HttpGet;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    :goto_2
    move-object/from16 v18, v3

    .line 193
    check-cast v18, Lorg/apache/http/impl/client/DefaultHttpClient;

    new-instance v19, Lcom/iwifi/sdk/tools/HttpUtil$1;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/iwifi/sdk/tools/HttpUtil$1;-><init>(Lcom/iwifi/sdk/tools/HttpUtil;)V

    invoke-virtual/range {v18 .. v19}, Lorg/apache/http/impl/client/DefaultHttpClient;->setRedirectHandler(Lorg/apache/http/client/RedirectHandler;)V

    .line 248
    :try_start_0
    invoke-interface {v3, v7}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v13

    .line 250
    .local v13, "response":Lorg/apache/http/HttpResponse;
    invoke-interface {v13}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v18

    invoke-interface/range {v18 .. v18}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v14

    .line 251
    .local v14, "status_code":I
    const-string v18, "smartwifi/auth"

    move-object/from16 v0, v18

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-nez v18, :cond_1

    const-string v18, "getPortalUrl"

    move-object/from16 v0, v18

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_11

    .line 252
    :cond_1
    const/16 v18, 0xc8

    move/from16 v0, v18

    if-eq v14, v0, :cond_2

    const/16 v18, 0x64

    move/from16 v0, v18

    if-ne v14, v0, :cond_e

    .line 253
    :cond_2
    const-string v18, "getPortalUrl"

    move-object/from16 v0, v18

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_3

    .line 255
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/iwifi/sdk/tools/HttpUtil;->mRedirectUrl:Ljava/lang/String;

    move-object/from16 v18, v0

    if-nez v18, :cond_3

    .line 256
    const-string v18, "Content-type"

    move-object/from16 v0, v18

    invoke-interface {v13, v0}, Lorg/apache/http/HttpResponse;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v18

    invoke-interface/range {v18 .. v18}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v4

    .line 258
    .local v4, "content_type":Ljava/lang/String;
    const-string v18, "text/html"

    move-object/from16 v0, v18

    invoke-virtual {v4, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_3

    .line 259
    invoke-interface {v13}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v8

    .line 260
    .local v8, "httpEntity":Lorg/apache/http/HttpEntity;
    invoke-interface {v8}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v11

    .line 261
    .local v11, "inputStream":Ljava/io/InputStream;
    invoke-static {v11}, Lcom/iwifi/sdk/protocol/impl/SDKCommonMotheds;->JSoupHTMLParse(Ljava/io/InputStream;)Lorg/jsoup/nodes/Document;

    move-result-object v5

    .line 262
    .local v5, "doc":Lorg/jsoup/nodes/Document;
    const-string v18, "iWiFiSDK|Common API|HttpUtils"

    new-instance v19, Ljava/lang/StringBuilder;

    const-string v20, "iWiFi20_METHOD_GETPORTAL HTTP Requst Parse HTML: "

    invoke-direct/range {v19 .. v20}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Lorg/jsoup/nodes/Document;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Lcom/iwifi/sdk/tools/Logger;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 264
    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/iwifi/sdk/tools/HttpUtil;->GetChinaNetRedirectUrl(Lorg/jsoup/nodes/Document;)Ljava/lang/String;

    move-result-object v15

    .line 265
    .local v15, "tempRedirectUrl":Ljava/lang/String;
    if-eqz v15, :cond_a

    .line 266
    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/iwifi/sdk/tools/HttpUtil;->mRedirectUrl:Ljava/lang/String;

    .line 267
    const-string v18, "iWiFiSDK"

    new-instance v19, Ljava/lang/StringBuilder;

    const-string v20, " iWiFi20_METHOD_GETPORTAL  --- get ChinaNet RedirectUrl success:   "

    invoke-direct/range {v19 .. v20}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/iwifi/sdk/tools/HttpUtil;->mRedirectUrl:Ljava/lang/String;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Lcom/iwifi/sdk/tools/Logger;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 307
    .end local v4    # "content_type":Ljava/lang/String;
    .end local v5    # "doc":Lorg/jsoup/nodes/Document;
    .end local v8    # "httpEntity":Lorg/apache/http/HttpEntity;
    .end local v11    # "inputStream":Ljava/io/InputStream;
    .end local v15    # "tempRedirectUrl":Ljava/lang/String;
    :cond_3
    :goto_3
    const/4 v12, 0x0

    .line 308
    .local v12, "json_res":Ljava/lang/String;
    const-string v18, "smartwifi/auth"

    move-object/from16 v0, v18

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_10

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Lcom/iwifi/sdk/tools/HttpUtil;->isApLogoffOperation(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_10

    .line 309
    const/16 v18, 0xc8

    move/from16 v0, v18

    if-ne v14, v0, :cond_f

    .line 310
    const-string v18, "AP Logoff suceess"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v19

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-direct {v0, v1, v2}, Lcom/iwifi/sdk/tools/HttpUtil;->generateJsonResult(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 316
    :goto_4
    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/iwifi/sdk/tools/HttpUtil;->mStrResult:Ljava/lang/String;

    .line 317
    const/16 v18, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/iwifi/sdk/tools/HttpUtil;->mRedirectUrl:Ljava/lang/String;
    :try_end_0
    .catch Lorg/apache/http/conn/HttpHostConnectException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 333
    .end local v12    # "json_res":Ljava/lang/String;
    .end local v13    # "response":Lorg/apache/http/HttpResponse;
    .end local v14    # "status_code":I
    :goto_5
    return-void

    .line 160
    .end local v3    # "client":Lorg/apache/http/client/HttpClient;
    .end local v7    # "get":Lorg/apache/http/client/methods/HttpGet;
    .end local v9    # "httpParameters":Lorg/apache/http/params/BasicHttpParams;
    .end local v17    # "tempUrl":Ljava/lang/String;
    .restart local v10    # "i":I
    :cond_4
    if-eqz v10, :cond_5

    .line 161
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-static/range {v16 .. v16}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v19

    invoke-direct/range {v18 .. v19}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v19, "&"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    .line 163
    :cond_5
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-static/range {v16 .. v16}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p4

    invoke-interface {v0, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/iwifi/sdk/tools/DataObject;

    invoke-virtual/range {v18 .. v18}, Lcom/iwifi/sdk/tools/DataObject;->getKey()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    .line 164
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-static/range {v16 .. v16}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v19

    invoke-direct/range {v18 .. v19}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v19, "="

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    .line 165
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-static/range {v16 .. v16}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p4

    invoke-interface {v0, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/iwifi/sdk/tools/DataObject;

    invoke-virtual/range {v18 .. v18}, Lcom/iwifi/sdk/tools/DataObject;->getValue()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    .line 159
    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_0

    .line 173
    .end local v10    # "i":I
    :cond_6
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-static/range {p1 .. p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v19

    invoke-direct/range {v18 .. v19}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v18

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    .line 174
    .restart local v17    # "tempUrl":Ljava/lang/String;
    goto/16 :goto_1

    .line 175
    .end local v17    # "tempUrl":Ljava/lang/String;
    :cond_7
    const-string v18, "getPortalUrl"

    move-object/from16 v0, v18

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_8

    .line 176
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-static/range {p1 .. p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v19

    invoke-direct/range {v18 .. v19}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v18

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, "?"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    .restart local v17    # "tempUrl":Ljava/lang/String;
    goto/16 :goto_1

    .line 178
    .end local v17    # "tempUrl":Ljava/lang/String;
    :cond_8
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-static/range {p1 .. p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v19

    invoke-direct/range {v18 .. v19}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v18

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, "?"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    .restart local v17    # "tempUrl":Ljava/lang/String;
    goto/16 :goto_1

    .line 191
    .restart local v3    # "client":Lorg/apache/http/client/HttpClient;
    .restart local v7    # "get":Lorg/apache/http/client/methods/HttpGet;
    .restart local v9    # "httpParameters":Lorg/apache/http/params/BasicHttpParams;
    :cond_9
    const-string v18, "User-Agent"

    sget-object v19, Lcom/iwifi/sdk/tools/HttpUtil;->iWiFi_SECOND_AGENT:Ljava/lang/String;

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v7, v0, v1}, Lorg/apache/http/client/methods/HttpGet;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 271
    .restart local v4    # "content_type":Ljava/lang/String;
    .restart local v5    # "doc":Lorg/jsoup/nodes/Document;
    .restart local v8    # "httpEntity":Lorg/apache/http/HttpEntity;
    .restart local v11    # "inputStream":Ljava/io/InputStream;
    .restart local v13    # "response":Lorg/apache/http/HttpResponse;
    .restart local v14    # "status_code":I
    .restart local v15    # "tempRedirectUrl":Ljava/lang/String;
    :cond_a
    :try_start_1
    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/iwifi/sdk/tools/HttpUtil;->GetFujianRedirectUrl(Lorg/jsoup/nodes/Document;)Ljava/lang/String;

    move-result-object v15

    .line 272
    if-eqz v15, :cond_b

    .line 273
    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/iwifi/sdk/tools/HttpUtil;->mRedirectUrl:Ljava/lang/String;

    .line 274
    const-string v18, "iWiFiSDK"

    new-instance v19, Ljava/lang/StringBuilder;

    const-string v20, " iWiFi20_METHOD_GETPORTAL  --- get Fujian RedirectUrl success:   "

    invoke-direct/range {v19 .. v20}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/iwifi/sdk/tools/HttpUtil;->mRedirectUrl:Ljava/lang/String;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Lcom/iwifi/sdk/tools/Logger;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Lorg/apache/http/conn/HttpHostConnectException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_3

    .line 321
    .end local v4    # "content_type":Ljava/lang/String;
    .end local v5    # "doc":Lorg/jsoup/nodes/Document;
    .end local v8    # "httpEntity":Lorg/apache/http/HttpEntity;
    .end local v11    # "inputStream":Ljava/io/InputStream;
    .end local v13    # "response":Lorg/apache/http/HttpResponse;
    .end local v14    # "status_code":I
    .end local v15    # "tempRedirectUrl":Ljava/lang/String;
    :catch_0
    move-exception v6

    .line 322
    .local v6, "e":Lorg/apache/http/conn/HttpHostConnectException;
    const/16 v18, 0x0

    invoke-virtual {v6}, Lorg/apache/http/conn/HttpHostConnectException;->getMessage()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-direct {v0, v1, v2}, Lcom/iwifi/sdk/tools/HttpUtil;->generateJsonResult(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/iwifi/sdk/tools/HttpUtil;->mStrResult:Ljava/lang/String;

    .line 323
    const/16 v18, 0x1

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/iwifi/sdk/tools/HttpUtil;->mBTimeOut:Z

    .line 324
    const/16 v18, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/iwifi/sdk/tools/HttpUtil;->mRedirectUrl:Ljava/lang/String;

    .line 325
    const-string v18, "iWiFiSDK|Common API|HttpUtils"

    new-instance v19, Ljava/lang/StringBuilder;

    const-string v20, "HTTP Request HttpHostConnectException: "

    invoke-direct/range {v19 .. v20}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Lorg/apache/http/conn/HttpHostConnectException;->getMessage()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Lcom/iwifi/sdk/tools/Logger;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_5

    .line 277
    .end local v6    # "e":Lorg/apache/http/conn/HttpHostConnectException;
    .restart local v4    # "content_type":Ljava/lang/String;
    .restart local v5    # "doc":Lorg/jsoup/nodes/Document;
    .restart local v8    # "httpEntity":Lorg/apache/http/HttpEntity;
    .restart local v11    # "inputStream":Ljava/io/InputStream;
    .restart local v13    # "response":Lorg/apache/http/HttpResponse;
    .restart local v14    # "status_code":I
    .restart local v15    # "tempRedirectUrl":Ljava/lang/String;
    :cond_b
    :try_start_2
    const-string v18, "a"

    const-string v19, "href"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-direct {v0, v5, v1, v2}, Lcom/iwifi/sdk/tools/HttpUtil;->GetOtherRedirectUrl(Lorg/jsoup/nodes/Document;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 278
    if-eqz v15, :cond_d

    .line 280
    const-string v18, "Already onLine"

    move-object/from16 v0, v18

    invoke-virtual {v15, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_c

    .line 283
    const/16 v18, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/iwifi/sdk/tools/HttpUtil;->mRedirectUrl:Ljava/lang/String;

    .line 284
    const-string v18, "iWiFiSDK|Common API|HttpUtils"

    const-string v19, "iWiFi20_METHOD_GETPORTAL: Already onLine"

    invoke-static/range {v18 .. v19}, Lcom/iwifi/sdk/tools/Logger;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Lorg/apache/http/conn/HttpHostConnectException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_3

    .line 327
    .end local v4    # "content_type":Ljava/lang/String;
    .end local v5    # "doc":Lorg/jsoup/nodes/Document;
    .end local v8    # "httpEntity":Lorg/apache/http/HttpEntity;
    .end local v11    # "inputStream":Ljava/io/InputStream;
    .end local v13    # "response":Lorg/apache/http/HttpResponse;
    .end local v14    # "status_code":I
    .end local v15    # "tempRedirectUrl":Ljava/lang/String;
    :catch_1
    move-exception v6

    .line 328
    .local v6, "e":Ljava/lang/Exception;
    const/16 v18, 0x0

    invoke-virtual {v6}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-direct {v0, v1, v2}, Lcom/iwifi/sdk/tools/HttpUtil;->generateJsonResult(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/iwifi/sdk/tools/HttpUtil;->mStrResult:Ljava/lang/String;

    .line 329
    const/16 v18, 0x1

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/iwifi/sdk/tools/HttpUtil;->mBTimeOut:Z

    .line 330
    const/16 v18, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/iwifi/sdk/tools/HttpUtil;->mRedirectUrl:Ljava/lang/String;

    .line 331
    const-string v18, "iWiFiSDK|Common API|HttpUtils"

    new-instance v19, Ljava/lang/StringBuilder;

    const-string v20, "HTTP Request Excetion: "

    invoke-direct/range {v19 .. v20}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Lcom/iwifi/sdk/tools/Logger;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_5

    .line 288
    .end local v6    # "e":Ljava/lang/Exception;
    .restart local v4    # "content_type":Ljava/lang/String;
    .restart local v5    # "doc":Lorg/jsoup/nodes/Document;
    .restart local v8    # "httpEntity":Lorg/apache/http/HttpEntity;
    .restart local v11    # "inputStream":Ljava/io/InputStream;
    .restart local v13    # "response":Lorg/apache/http/HttpResponse;
    .restart local v14    # "status_code":I
    .restart local v15    # "tempRedirectUrl":Ljava/lang/String;
    :cond_c
    :try_start_3
    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/iwifi/sdk/tools/HttpUtil;->mRedirectUrl:Ljava/lang/String;

    .line 289
    const-string v18, "iWiFiSDK"

    new-instance v19, Ljava/lang/StringBuilder;

    const-string v20, " iWiFi20_METHOD_GETPORTAL  --- get Other foramt RedirectUrl success:   "

    invoke-direct/range {v19 .. v20}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/iwifi/sdk/tools/HttpUtil;->mRedirectUrl:Ljava/lang/String;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Lcom/iwifi/sdk/tools/Logger;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 293
    :cond_d
    const-string v18, ""

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/iwifi/sdk/tools/HttpUtil;->mRedirectUrl:Ljava/lang/String;

    .line 294
    const-string v18, "iWiFiSDK|Common API|HttpUtils"

    new-instance v19, Ljava/lang/StringBuilder;

    const-string v20, "iWiFi20_METHOD_GETPORTAL: Get PortalURL failed : "

    invoke-direct/range {v19 .. v20}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Lorg/jsoup/nodes/Document;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Lcom/iwifi/sdk/tools/Logger;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 304
    .end local v4    # "content_type":Ljava/lang/String;
    .end local v5    # "doc":Lorg/jsoup/nodes/Document;
    .end local v8    # "httpEntity":Lorg/apache/http/HttpEntity;
    .end local v11    # "inputStream":Ljava/io/InputStream;
    .end local v15    # "tempRedirectUrl":Ljava/lang/String;
    :cond_e
    const-string v18, "iWiFiSDK | Common API | HttpUtils"

    new-instance v19, Ljava/lang/StringBuilder;

    const-string v20, "This Method\'s ("

    invoke-direct/range {v19 .. v20}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v19

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, ") http request failed : "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Lcom/iwifi/sdk/tools/Logger;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 305
    const/16 v18, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/iwifi/sdk/tools/HttpUtil;->mRedirectUrl:Ljava/lang/String;

    goto/16 :goto_3

    .line 312
    .restart local v12    # "json_res":Ljava/lang/String;
    :cond_f
    const/16 v18, 0x0

    new-instance v19, Ljava/lang/StringBuilder;

    const-string v20, "AP Logoff Failed, http status code is "

    invoke-direct/range {v19 .. v20}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v19

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-direct {v0, v1, v2}, Lcom/iwifi/sdk/tools/HttpUtil;->generateJsonResult(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 313
    goto/16 :goto_4

    .line 314
    :cond_10
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/iwifi/sdk/tools/HttpUtil;->mRedirectUrl:Ljava/lang/String;

    move-object/from16 v18, v0

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v19

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-direct {v0, v1, v2}, Lcom/iwifi/sdk/tools/HttpUtil;->generateJsonResult(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    goto/16 :goto_4

    .line 320
    .end local v12    # "json_res":Ljava/lang/String;
    :cond_11
    invoke-interface {v13}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Lorg/apache/http/util/EntityUtils;->toString(Lorg/apache/http/HttpEntity;)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/iwifi/sdk/tools/HttpUtil;->mStrResult:Ljava/lang/String;
    :try_end_3
    .catch Lorg/apache/http/conn/HttpHostConnectException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto/16 :goto_5
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

    .line 528
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 529
    .local v1, "list":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    new-instance v4, Lorg/apache/http/message/BasicNameValuePair;

    const-string v5, "button"

    const-string v6, "Login"

    invoke-direct {v4, v5, v6}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 530
    new-instance v4, Lorg/apache/http/message/BasicNameValuePair;

    const-string v5, "Password"

    invoke-direct {v4, v5, p3}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 531
    new-instance v4, Lorg/apache/http/message/BasicNameValuePair;

    const-string v5, "Client"

    const-string v6, "1.0.0_Android"

    invoke-direct {v4, v5, v6}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 533
    new-instance v4, Lorg/apache/http/message/BasicNameValuePair;

    const-string v5, "UserName"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v7, "@wlan."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 534
    invoke-virtual {v6, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ".chntel.com"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 533
    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 536
    new-instance v4, Lorg/apache/http/message/BasicNameValuePair;

    const-string v5, "FNAME"

    const-string v6, "0"

    invoke-direct {v4, v5, v6}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 537
    new-instance v4, Lorg/apache/http/message/BasicNameValuePair;

    const-string v5, "OriginatingServer"

    const-string v6, "http://www.baidu.com"

    invoke-direct {v4, v5, v6}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 540
    new-instance v2, Lorg/apache/http/params/BasicHttpParams;

    invoke-direct {v2}, Lorg/apache/http/params/BasicHttpParams;-><init>()V

    .line 541
    .local v2, "params":Lorg/apache/http/params/HttpParams;
    const-string v4, "CDMA+WLAN"

    invoke-static {v2, v4}, Lorg/apache/http/params/HttpProtocolParams;->setUserAgent(Lorg/apache/http/params/HttpParams;Ljava/lang/String;)V

    .line 553
    :try_start_0
    invoke-static {p1, v1, v2}, Lcom/iwifi/sdk/tools/HttpUtil;->HttpClientPost(Ljava/lang/String;Ljava/util/List;Lorg/apache/http/params/HttpParams;)Ljava/lang/String;

    move-result-object v3

    .line 554
    .local v3, "res":Ljava/lang/String;
    iput-object v3, p0, Lcom/iwifi/sdk/tools/HttpUtil;->mStrResult:Ljava/lang/String;
    :try_end_0
    .catch Lorg/apache/http/conn/HttpHostConnectException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 563
    .end local v3    # "res":Ljava/lang/String;
    :goto_0
    return-void

    .line 555
    :catch_0
    move-exception v0

    .line 556
    .local v0, "e":Lorg/apache/http/conn/HttpHostConnectException;
    iput-object v9, p0, Lcom/iwifi/sdk/tools/HttpUtil;->mStrResult:Ljava/lang/String;

    .line 557
    iput-boolean v8, p0, Lcom/iwifi/sdk/tools/HttpUtil;->mBTimeOut:Z

    goto :goto_0

    .line 559
    .end local v0    # "e":Lorg/apache/http/conn/HttpHostConnectException;
    :catch_1
    move-exception v0

    .line 560
    .local v0, "e":Ljava/lang/Exception;
    iput-object v9, p0, Lcom/iwifi/sdk/tools/HttpUtil;->mStrResult:Ljava/lang/String;

    .line 561
    iput-boolean v8, p0, Lcom/iwifi/sdk/tools/HttpUtil;->mBTimeOut:Z

    goto :goto_0
.end method

.method private generateJsonResult(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "input"    # Ljava/lang/String;
    .param p2, "msg"    # Ljava/lang/String;

    .prologue
    .line 438
    if-eqz p1, :cond_0

    const-string v1, ""

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 439
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "{\"result\":\"FAIL\",\"message\":\""

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\"}"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 444
    .local v0, "output":Ljava/lang/String;
    :goto_0
    return-object v0

    .line 442
    .end local v0    # "output":Ljava/lang/String;
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "{\"result\":\"OK\",\"message\":\""

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\"}"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "output":Ljava/lang/String;
    goto :goto_0
.end method

.method private isApLogoffOperation(Ljava/lang/String;)Z
    .locals 1
    .param p1, "paramStr"    # Ljava/lang/String;

    .prologue
    .line 337
    if-eqz p1, :cond_0

    const-string v0, "logout=1"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 338
    const/4 v0, 0x1

    .line 341
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

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
            "Lcom/iwifi/sdk/tools/DataObject;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 100
    .local p4, "params":Ljava/util/List;, "Ljava/util/List<Lcom/iwifi/sdk/tools/DataObject;>;"
    iput-object p1, p0, Lcom/iwifi/sdk/tools/HttpUtil;->mStrUrl:Ljava/lang/String;

    .line 101
    iput-object p2, p0, Lcom/iwifi/sdk/tools/HttpUtil;->mStrMethodName:Ljava/lang/String;

    .line 102
    iput-object p3, p0, Lcom/iwifi/sdk/tools/HttpUtil;->mStrAction:Ljava/lang/String;

    .line 103
    iput-object p4, p0, Lcom/iwifi/sdk/tools/HttpUtil;->mListParams:Ljava/util/List;

    .line 105
    new-instance v0, Lcom/iwifi/sdk/tools/HttpUtil$ConnectAsyncTask;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/iwifi/sdk/tools/HttpUtil$ConnectAsyncTask;-><init>(Lcom/iwifi/sdk/tools/HttpUtil;Lcom/iwifi/sdk/tools/HttpUtil$ConnectAsyncTask;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/iwifi/sdk/tools/HttpUtil$ConnectAsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 106
    return-void
.end method

.method public excutePortalLogout()V
    .locals 8

    .prologue
    .line 498
    :try_start_0
    new-instance v4, Lorg/apache/http/params/BasicHttpParams;

    invoke-direct {v4}, Lorg/apache/http/params/BasicHttpParams;-><init>()V

    .line 500
    .local v4, "params":Lorg/apache/http/params/HttpParams;
    const-string v6, "CDMA+WLAN"

    invoke-static {v4, v6}, Lorg/apache/http/params/HttpProtocolParams;->setUserAgent(Lorg/apache/http/params/HttpParams;Ljava/lang/String;)V

    .line 501
    const-string v6, "https://wlan.ct10000.com/wispr_logout.jsp"

    .line 502
    sget-object v7, Lcom/iwifi/sdk/tools/HttpUtil;->mCookieStore:Lorg/apache/http/client/CookieStore;

    .line 501
    invoke-static {v6, v4, v7}, Lcom/iwifi/sdk/tools/HttpUtil;->HttpClientGet(Ljava/lang/String;Lorg/apache/http/params/HttpParams;Lorg/apache/http/client/CookieStore;)Ljava/lang/String;

    move-result-object v5

    .line 503
    .local v5, "res":Ljava/lang/String;
    if-nez v5, :cond_0

    .line 523
    .end local v4    # "params":Lorg/apache/http/params/HttpParams;
    .end local v5    # "res":Ljava/lang/String;
    :goto_0
    return-void

    .line 506
    .restart local v4    # "params":Lorg/apache/http/params/HttpParams;
    .restart local v5    # "res":Ljava/lang/String;
    :cond_0
    new-instance v3, Ljava/io/ByteArrayInputStream;

    invoke-virtual {v5}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    invoke-direct {v3, v6}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 508
    .local v3, "is":Ljava/io/InputStream;
    const-string v6, "ResponseCode"

    .line 507
    invoke-static {v3, v6}, Lcom/iwifi/sdk/tools/XmlParser;->parseXmlByDom(Ljava/io/InputStream;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    .line 509
    .local v1, "dataList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/iwifi/sdk/tools/XMLData;>;"
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-lez v6, :cond_1

    .line 510
    const/4 v6, 0x0

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/iwifi/sdk/tools/XMLData;

    iget-object v6, v6, Lcom/iwifi/sdk/tools/XMLData;->characters:Ljava/lang/String;

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    iput v6, p0, Lcom/iwifi/sdk/tools/HttpUtil;->mResponseCode:I

    .line 511
    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 518
    :goto_1
    invoke-static {}, Ljava/lang/System;->gc()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 519
    .end local v1    # "dataList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/iwifi/sdk/tools/XMLData;>;"
    .end local v3    # "is":Ljava/io/InputStream;
    .end local v4    # "params":Lorg/apache/http/params/HttpParams;
    .end local v5    # "res":Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 521
    .local v2, "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 514
    .end local v2    # "e":Ljava/io/IOException;
    .restart local v1    # "dataList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/iwifi/sdk/tools/XMLData;>;"
    .restart local v3    # "is":Ljava/io/InputStream;
    .restart local v4    # "params":Lorg/apache/http/params/HttpParams;
    .restart local v5    # "res":Ljava/lang/String;
    :cond_1
    :try_start_1
    const-string v6, "<ResponseCode>"

    invoke-virtual {v5, v6}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v6

    add-int/lit8 v6, v6, 0xe

    .line 515
    const-string v7, "</ResponseCode>"

    invoke-virtual {v5, v7}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v7

    .line 513
    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 516
    .local v0, "code":Ljava/lang/String;
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    iput v6, p0, Lcom/iwifi/sdk/tools/HttpUtil;->mResponseCode:I
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
    .line 122
    iput-object p1, p0, Lcom/iwifi/sdk/tools/HttpUtil;->url:Ljava/lang/String;

    .line 123
    iput-object p2, p0, Lcom/iwifi/sdk/tools/HttpUtil;->account:Ljava/lang/String;

    .line 124
    iput-object p3, p0, Lcom/iwifi/sdk/tools/HttpUtil;->password:Ljava/lang/String;

    .line 125
    iput-object p4, p0, Lcom/iwifi/sdk/tools/HttpUtil;->apZone:Ljava/lang/String;

    .line 126
    new-instance v0, Lcom/iwifi/sdk/tools/HttpUtil$PortalConnectAsyncTask;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/iwifi/sdk/tools/HttpUtil$PortalConnectAsyncTask;-><init>(Lcom/iwifi/sdk/tools/HttpUtil;Lcom/iwifi/sdk/tools/HttpUtil$PortalConnectAsyncTask;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/iwifi/sdk/tools/HttpUtil$PortalConnectAsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 127
    return-void
.end method

.method public portalLogout()V
    .locals 2

    .prologue
    .line 130
    new-instance v0, Lcom/iwifi/sdk/tools/HttpUtil$PortalLogoutAsyncTask;

    invoke-direct {v0, p0}, Lcom/iwifi/sdk/tools/HttpUtil$PortalLogoutAsyncTask;-><init>(Lcom/iwifi/sdk/tools/HttpUtil;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/iwifi/sdk/tools/HttpUtil$PortalLogoutAsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 131
    return-void
.end method

.method public syncConnect(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;
    .locals 1
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
            "Lcom/iwifi/sdk/tools/DataObject;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 110
    .local p4, "params":Ljava/util/List;, "Ljava/util/List<Lcom/iwifi/sdk/tools/DataObject;>;"
    iput-object p1, p0, Lcom/iwifi/sdk/tools/HttpUtil;->mStrUrl:Ljava/lang/String;

    .line 111
    iput-object p2, p0, Lcom/iwifi/sdk/tools/HttpUtil;->mStrMethodName:Ljava/lang/String;

    .line 112
    iput-object p3, p0, Lcom/iwifi/sdk/tools/HttpUtil;->mStrAction:Ljava/lang/String;

    .line 113
    iput-object p4, p0, Lcom/iwifi/sdk/tools/HttpUtil;->mListParams:Ljava/util/List;

    .line 115
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/iwifi/sdk/tools/HttpUtil;->excuteConnect(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    .line 116
    iget-object v0, p0, Lcom/iwifi/sdk/tools/HttpUtil;->mStrResult:Ljava/lang/String;

    return-object v0
.end method

.method public abstract taskexecute(Ljava/lang/String;Z)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method
