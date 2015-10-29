.class public Lcom/iwifi/sdk/chinanet/wispr/WlanRoamingAuthProtocol;
.super Ljava/lang/Object;
.source "WlanRoamingAuthProtocol.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/iwifi/sdk/chinanet/wispr/WlanRoamingAuthProtocol$ResultInfos;
    }
.end annotation


# static fields
.field private static synthetic $SWITCH_TABLE$com$iwifi$sdk$chinanet$wispr$RequestUtils$RequestMethod:[I = null

.field private static synthetic $SWITCH_TABLE$com$iwifi$sdk$chinanet$wispr$RequestUtils$ResponseResultState:[I = null

.field private static final BTN_IDENTIFY:Ljava/lang/String; = "Login"

.field private static DEFAULT_USER_AGENT:Ljava/lang/String; = null

.field private static final FNAME:Ljava/lang/String; = "0"

.field private static final HTTP_CONNET_TIMEOUT:I = 0x4e20

.field public static final HTTP_HEADER_CONTENT_TYPE:Ljava/lang/String; = "Content-type"

.field public static final HTTP_HEADER_USE_AGENT:Ljava/lang/String; = "User-Agent"

.field private static final MSG_AUTHENTICATION_FAIL:I = 0x1

.field private static final MSG_AUTHENTICATION_SUCC:I = 0x0

.field private static final MSG_LOGOFF_FAIL:I = 0x3

.field private static final MSG_LOGOFF_SUCC:I = 0x2

.field private static final ORIGINAL_SERVER:Ljava/lang/String; = "http://www.baidu.com"

.field public static final REQUEST_ACTION_AUTHENTICATION:I = 0x0

.field public static final REQUEST_ACTION_LOGOFF:I = 0x1

.field public static final RESPONSE_RESULT_FAILED:I = 0x1

.field public static final RESPONSE_RESULT_SUCCESS:I = 0x0

.field private static final STEP_GET_AUTHENTICATE_ADR:I = 0x2

.field private static final STEP_GET_BRAS_ADR:I = 0x1

.field private static final STEP_GET_LOGOFF_REQ:I = 0x64

.field private static final STEP_NONE:I = 0x0

.field private static final STEP_POST_AUTHENTICATE_REQ:I = 0x3

.field private static final URL:Ljava/lang/String; = "http://www.baidu.com"


# instance fields
.field private auth_step_index:I

.field private callback:Lcom/iwifi/sdk/chinanet/wispr/IWlanAuthenRequestCallback;

.field public mLogoffUrl:Ljava/lang/String;

.field private mRedirectHandler:Lorg/apache/http/client/RedirectHandler;

.field private mRedirectUrl:Ljava/lang/String;

.field mhandler:Landroid/os/Handler;


# direct methods
.method static synthetic $SWITCH_TABLE$com$iwifi$sdk$chinanet$wispr$RequestUtils$RequestMethod()[I
    .locals 3

    .prologue
    .line 59
    sget-object v0, Lcom/iwifi/sdk/chinanet/wispr/WlanRoamingAuthProtocol;->$SWITCH_TABLE$com$iwifi$sdk$chinanet$wispr$RequestUtils$RequestMethod:[I

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/iwifi/sdk/chinanet/wispr/RequestUtils$RequestMethod;->values()[Lcom/iwifi/sdk/chinanet/wispr/RequestUtils$RequestMethod;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/iwifi/sdk/chinanet/wispr/RequestUtils$RequestMethod;->DELETE:Lcom/iwifi/sdk/chinanet/wispr/RequestUtils$RequestMethod;

    invoke-virtual {v1}, Lcom/iwifi/sdk/chinanet/wispr/RequestUtils$RequestMethod;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_3

    :goto_1
    :try_start_1
    sget-object v1, Lcom/iwifi/sdk/chinanet/wispr/RequestUtils$RequestMethod;->GET:Lcom/iwifi/sdk/chinanet/wispr/RequestUtils$RequestMethod;

    invoke-virtual {v1}, Lcom/iwifi/sdk/chinanet/wispr/RequestUtils$RequestMethod;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_2

    :goto_2
    :try_start_2
    sget-object v1, Lcom/iwifi/sdk/chinanet/wispr/RequestUtils$RequestMethod;->POST:Lcom/iwifi/sdk/chinanet/wispr/RequestUtils$RequestMethod;

    invoke-virtual {v1}, Lcom/iwifi/sdk/chinanet/wispr/RequestUtils$RequestMethod;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_1

    :goto_3
    :try_start_3
    sget-object v1, Lcom/iwifi/sdk/chinanet/wispr/RequestUtils$RequestMethod;->PUT:Lcom/iwifi/sdk/chinanet/wispr/RequestUtils$RequestMethod;

    invoke-virtual {v1}, Lcom/iwifi/sdk/chinanet/wispr/RequestUtils$RequestMethod;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_0

    :goto_4
    sput-object v0, Lcom/iwifi/sdk/chinanet/wispr/WlanRoamingAuthProtocol;->$SWITCH_TABLE$com$iwifi$sdk$chinanet$wispr$RequestUtils$RequestMethod:[I

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_4

    :catch_1
    move-exception v1

    goto :goto_3

    :catch_2
    move-exception v1

    goto :goto_2

    :catch_3
    move-exception v1

    goto :goto_1
.end method

.method static synthetic $SWITCH_TABLE$com$iwifi$sdk$chinanet$wispr$RequestUtils$ResponseResultState()[I
    .locals 3

    .prologue
    .line 59
    sget-object v0, Lcom/iwifi/sdk/chinanet/wispr/WlanRoamingAuthProtocol;->$SWITCH_TABLE$com$iwifi$sdk$chinanet$wispr$RequestUtils$ResponseResultState:[I

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/iwifi/sdk/chinanet/wispr/RequestUtils$ResponseResultState;->values()[Lcom/iwifi/sdk/chinanet/wispr/RequestUtils$ResponseResultState;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/iwifi/sdk/chinanet/wispr/RequestUtils$ResponseResultState;->RSP_GET_AUTH_FAILED:Lcom/iwifi/sdk/chinanet/wispr/RequestUtils$ResponseResultState;

    invoke-virtual {v1}, Lcom/iwifi/sdk/chinanet/wispr/RequestUtils$ResponseResultState;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_8

    :goto_1
    :try_start_1
    sget-object v1, Lcom/iwifi/sdk/chinanet/wispr/RequestUtils$ResponseResultState;->RSP_GET_AUTH_SUCCESS:Lcom/iwifi/sdk/chinanet/wispr/RequestUtils$ResponseResultState;

    invoke-virtual {v1}, Lcom/iwifi/sdk/chinanet/wispr/RequestUtils$ResponseResultState;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_7

    :goto_2
    :try_start_2
    sget-object v1, Lcom/iwifi/sdk/chinanet/wispr/RequestUtils$ResponseResultState;->RSP_GET_BRAS_FAILED:Lcom/iwifi/sdk/chinanet/wispr/RequestUtils$ResponseResultState;

    invoke-virtual {v1}, Lcom/iwifi/sdk/chinanet/wispr/RequestUtils$ResponseResultState;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_6

    :goto_3
    :try_start_3
    sget-object v1, Lcom/iwifi/sdk/chinanet/wispr/RequestUtils$ResponseResultState;->RSP_GET_BRAS_SUCCESS:Lcom/iwifi/sdk/chinanet/wispr/RequestUtils$ResponseResultState;

    invoke-virtual {v1}, Lcom/iwifi/sdk/chinanet/wispr/RequestUtils$ResponseResultState;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_5

    :goto_4
    :try_start_4
    sget-object v1, Lcom/iwifi/sdk/chinanet/wispr/RequestUtils$ResponseResultState;->RSP_GET_LOGOFF_FAILED:Lcom/iwifi/sdk/chinanet/wispr/RequestUtils$ResponseResultState;

    invoke-virtual {v1}, Lcom/iwifi/sdk/chinanet/wispr/RequestUtils$ResponseResultState;->ordinal()I

    move-result v1

    const/16 v2, 0x9

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_4

    :goto_5
    :try_start_5
    sget-object v1, Lcom/iwifi/sdk/chinanet/wispr/RequestUtils$ResponseResultState;->RSP_GET_LOGOFF_SUCCESS:Lcom/iwifi/sdk/chinanet/wispr/RequestUtils$ResponseResultState;

    invoke-virtual {v1}, Lcom/iwifi/sdk/chinanet/wispr/RequestUtils$ResponseResultState;->ordinal()I

    move-result v1

    const/16 v2, 0x8

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_3

    :goto_6
    :try_start_6
    sget-object v1, Lcom/iwifi/sdk/chinanet/wispr/RequestUtils$ResponseResultState;->RSP_NONE:Lcom/iwifi/sdk/chinanet/wispr/RequestUtils$ResponseResultState;

    invoke-virtual {v1}, Lcom/iwifi/sdk/chinanet/wispr/RequestUtils$ResponseResultState;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_2

    :goto_7
    :try_start_7
    sget-object v1, Lcom/iwifi/sdk/chinanet/wispr/RequestUtils$ResponseResultState;->RSP_POST_AUTH_FAILED:Lcom/iwifi/sdk/chinanet/wispr/RequestUtils$ResponseResultState;

    invoke-virtual {v1}, Lcom/iwifi/sdk/chinanet/wispr/RequestUtils$ResponseResultState;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_7} :catch_1

    :goto_8
    :try_start_8
    sget-object v1, Lcom/iwifi/sdk/chinanet/wispr/RequestUtils$ResponseResultState;->RSP_POST_AUTH_SUCCESS:Lcom/iwifi/sdk/chinanet/wispr/RequestUtils$ResponseResultState;

    invoke-virtual {v1}, Lcom/iwifi/sdk/chinanet/wispr/RequestUtils$ResponseResultState;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8 .. :try_end_8} :catch_0

    :goto_9
    sput-object v0, Lcom/iwifi/sdk/chinanet/wispr/WlanRoamingAuthProtocol;->$SWITCH_TABLE$com$iwifi$sdk$chinanet$wispr$RequestUtils$ResponseResultState:[I

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_9

    :catch_1
    move-exception v1

    goto :goto_8

    :catch_2
    move-exception v1

    goto :goto_7

    :catch_3
    move-exception v1

    goto :goto_6

    :catch_4
    move-exception v1

    goto :goto_5

    :catch_5
    move-exception v1

    goto :goto_4

    :catch_6
    move-exception v1

    goto :goto_3

    :catch_7
    move-exception v1

    goto :goto_2

    :catch_8
    move-exception v1

    goto :goto_1
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 91
    const-string v0, "CDMA+WLAN"

    sput-object v0, Lcom/iwifi/sdk/chinanet/wispr/WlanRoamingAuthProtocol;->DEFAULT_USER_AGENT:Ljava/lang/String;

    .line 117
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 123
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 89
    const-string v0, ""

    iput-object v0, p0, Lcom/iwifi/sdk/chinanet/wispr/WlanRoamingAuthProtocol;->mLogoffUrl:Ljava/lang/String;

    .line 97
    iput-object v1, p0, Lcom/iwifi/sdk/chinanet/wispr/WlanRoamingAuthProtocol;->mRedirectUrl:Ljava/lang/String;

    .line 98
    iput-object v1, p0, Lcom/iwifi/sdk/chinanet/wispr/WlanRoamingAuthProtocol;->mRedirectHandler:Lorg/apache/http/client/RedirectHandler;

    .line 109
    const/4 v0, 0x0

    iput v0, p0, Lcom/iwifi/sdk/chinanet/wispr/WlanRoamingAuthProtocol;->auth_step_index:I

    .line 274
    new-instance v0, Lcom/iwifi/sdk/chinanet/wispr/WlanRoamingAuthProtocol$1;

    invoke-direct {v0, p0}, Lcom/iwifi/sdk/chinanet/wispr/WlanRoamingAuthProtocol$1;-><init>(Lcom/iwifi/sdk/chinanet/wispr/WlanRoamingAuthProtocol;)V

    iput-object v0, p0, Lcom/iwifi/sdk/chinanet/wispr/WlanRoamingAuthProtocol;->mhandler:Landroid/os/Handler;

    .line 124
    new-instance v0, Lcom/iwifi/sdk/chinanet/wispr/WlanRoamingAuthProtocol$2;

    invoke-direct {v0, p0}, Lcom/iwifi/sdk/chinanet/wispr/WlanRoamingAuthProtocol$2;-><init>(Lcom/iwifi/sdk/chinanet/wispr/WlanRoamingAuthProtocol;)V

    iput-object v0, p0, Lcom/iwifi/sdk/chinanet/wispr/WlanRoamingAuthProtocol;->mRedirectHandler:Lorg/apache/http/client/RedirectHandler;

    .line 179
    sget-object v0, Lcom/iwifi/sdk/tools/HttpConf;->iWiFi_USER_AGENT:Ljava/lang/String;

    sput-object v0, Lcom/iwifi/sdk/chinanet/wispr/WlanRoamingAuthProtocol;->DEFAULT_USER_AGENT:Ljava/lang/String;

    .line 181
    return-void
.end method

.method private HandleParseHttpResponse(Lcom/iwifi/sdk/chinanet/wispr/RequestUtils$ResponseResultInfos;Lorg/apache/http/HttpResponse;)Lcom/iwifi/sdk/chinanet/wispr/RequestUtils$ResponseResultInfos;
    .locals 14
    .param p1, "resultInfos"    # Lcom/iwifi/sdk/chinanet/wispr/RequestUtils$ResponseResultInfos;
    .param p2, "http_response"    # Lorg/apache/http/HttpResponse;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 562
    move-object v7, p1

    .line 563
    .local v7, "result":Lcom/iwifi/sdk/chinanet/wispr/RequestUtils$ResponseResultInfos;
    if-nez p2, :cond_0

    .line 564
    new-instance v10, Ljava/lang/Exception;

    const-string v11, "HandleHttpResponse input http_response is null "

    invoke-direct {v10, v11}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v10

    .line 566
    :cond_0
    invoke-interface/range {p2 .. p2}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v10

    invoke-interface {v10}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v8

    .line 567
    .local v8, "status_code":I
    iput v8, v7, Lcom/iwifi/sdk/chinanet/wispr/RequestUtils$ResponseResultInfos;->http_request_status_code:I

    .line 569
    const/16 v10, 0x64

    if-eq v8, v10, :cond_1

    const/16 v10, 0xc8

    if-ne v8, v10, :cond_10

    .line 571
    :cond_1
    const-string v0, ""

    .line 572
    .local v0, "content_type":Ljava/lang/String;
    invoke-interface/range {p2 .. p2}, Lorg/apache/http/HttpResponse;->getAllHeaders()[Lorg/apache/http/Header;

    move-result-object v3

    .line 575
    .local v3, "headers":[Lorg/apache/http/Header;
    array-length v11, v3

    const/4 v10, 0x0

    :goto_0
    if-lt v10, v11, :cond_3

    .line 581
    :goto_1
    iget v10, p0, Lcom/iwifi/sdk/chinanet/wispr/WlanRoamingAuthProtocol;->auth_step_index:I

    const/4 v11, 0x1

    if-ne v10, v11, :cond_7

    iget-object v10, p0, Lcom/iwifi/sdk/chinanet/wispr/WlanRoamingAuthProtocol;->mRedirectUrl:Ljava/lang/String;

    if-nez v10, :cond_7

    .line 589
    const-string v10, "text/html"

    invoke-virtual {v0, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_6

    .line 592
    invoke-interface/range {p2 .. p2}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v4

    .line 593
    .local v4, "httpEntity":Lorg/apache/http/HttpEntity;
    invoke-interface {v4}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v5

    .line 594
    .local v5, "inputStream":Ljava/io/InputStream;
    invoke-virtual {p0, v5}, Lcom/iwifi/sdk/chinanet/wispr/WlanRoamingAuthProtocol;->JSoupHTMLParse(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v6

    .line 595
    .local v6, "parse_url":Ljava/lang/String;
    if-eqz v6, :cond_5

    .line 598
    sget-object v10, Lcom/iwifi/sdk/chinanet/wispr/RequestUtils$ResponseResultState;->RSP_GET_BRAS_SUCCESS:Lcom/iwifi/sdk/chinanet/wispr/RequestUtils$ResponseResultState;

    iput-object v10, v7, Lcom/iwifi/sdk/chinanet/wispr/RequestUtils$ResponseResultInfos;->process_result:Lcom/iwifi/sdk/chinanet/wispr/RequestUtils$ResponseResultState;

    .line 599
    iput-object v6, v7, Lcom/iwifi/sdk/chinanet/wispr/RequestUtils$ResponseResultInfos;->request_url:Ljava/lang/String;

    .line 723
    .end local v0    # "content_type":Ljava/lang/String;
    .end local v3    # "headers":[Lorg/apache/http/Header;
    .end local v4    # "httpEntity":Lorg/apache/http/HttpEntity;
    .end local v5    # "inputStream":Ljava/io/InputStream;
    .end local v6    # "parse_url":Ljava/lang/String;
    :cond_2
    :goto_2
    return-object v7

    .line 575
    .restart local v0    # "content_type":Ljava/lang/String;
    .restart local v3    # "headers":[Lorg/apache/http/Header;
    :cond_3
    aget-object v2, v3, v10

    .line 576
    .local v2, "head":Lorg/apache/http/Header;
    const-string v12, "Content-type"

    invoke-interface {v2}, Lorg/apache/http/Header;->getName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_4

    .line 577
    invoke-interface {v2}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v0

    .line 578
    goto :goto_1

    .line 575
    :cond_4
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    .line 602
    .end local v2    # "head":Lorg/apache/http/Header;
    .restart local v4    # "httpEntity":Lorg/apache/http/HttpEntity;
    .restart local v5    # "inputStream":Ljava/io/InputStream;
    .restart local v6    # "parse_url":Ljava/lang/String;
    :cond_5
    sget-object v10, Lcom/iwifi/sdk/chinanet/wispr/RequestUtils$ResponseResultState;->RSP_GET_BRAS_FAILED:Lcom/iwifi/sdk/chinanet/wispr/RequestUtils$ResponseResultState;

    iput-object v10, v7, Lcom/iwifi/sdk/chinanet/wispr/RequestUtils$ResponseResultInfos;->process_result:Lcom/iwifi/sdk/chinanet/wispr/RequestUtils$ResponseResultState;

    .line 603
    const-string v10, "Get Bras address failed because the reponse HTML file unrecognized"

    iput-object v10, v7, Lcom/iwifi/sdk/chinanet/wispr/RequestUtils$ResponseResultInfos;->request_url:Ljava/lang/String;

    goto :goto_2

    .line 607
    .end local v4    # "httpEntity":Lorg/apache/http/HttpEntity;
    .end local v5    # "inputStream":Ljava/io/InputStream;
    .end local v6    # "parse_url":Ljava/lang/String;
    :cond_6
    sget-object v10, Lcom/iwifi/sdk/chinanet/wispr/RequestUtils$ResponseResultState;->RSP_GET_BRAS_FAILED:Lcom/iwifi/sdk/chinanet/wispr/RequestUtils$ResponseResultState;

    iput-object v10, v7, Lcom/iwifi/sdk/chinanet/wispr/RequestUtils$ResponseResultInfos;->process_result:Lcom/iwifi/sdk/chinanet/wispr/RequestUtils$ResponseResultState;

    .line 608
    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "Get Bras address failed because the reponse("

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ") is not HTML"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    iput-object v10, v7, Lcom/iwifi/sdk/chinanet/wispr/RequestUtils$ResponseResultInfos;->request_url:Ljava/lang/String;

    goto :goto_2

    .line 631
    :cond_7
    iget v10, p0, Lcom/iwifi/sdk/chinanet/wispr/WlanRoamingAuthProtocol;->auth_step_index:I

    const/4 v11, 0x1

    if-ne v10, v11, :cond_8

    iget-object v10, p0, Lcom/iwifi/sdk/chinanet/wispr/WlanRoamingAuthProtocol;->mRedirectUrl:Ljava/lang/String;

    if-eqz v10, :cond_8

    .line 633
    const/4 v10, 0x0

    iput-object v10, p0, Lcom/iwifi/sdk/chinanet/wispr/WlanRoamingAuthProtocol;->mRedirectUrl:Ljava/lang/String;

    .line 635
    const/4 v10, 0x2

    iput v10, p0, Lcom/iwifi/sdk/chinanet/wispr/WlanRoamingAuthProtocol;->auth_step_index:I

    .line 638
    :cond_8
    const-string v10, "HttpUtil"

    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "Status_code: "

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", Content-type: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", RedirectUrl: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Lcom/iwifi/sdk/chinanet/wispr/WlanRoamingAuthProtocol;->mRedirectUrl:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/iwifi/sdk/tools/Logger;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 640
    invoke-interface/range {p2 .. p2}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v4

    .line 642
    .restart local v4    # "httpEntity":Lorg/apache/http/HttpEntity;
    const/4 v9, 0x0

    .line 644
    .local v9, "xmlDefaultHandler":Lcom/iwifi/sdk/chinanet/wispr/XMLParseDefaultHandler;
    :try_start_0
    invoke-interface {v4}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v5

    .line 645
    .restart local v5    # "inputStream":Ljava/io/InputStream;
    invoke-static {v5}, Lcom/iwifi/sdk/chinanet/wispr/WlanRoamingAuthProtocol;->SAXParseXML(Ljava/io/InputStream;)Lcom/iwifi/sdk/chinanet/wispr/XMLParseDefaultHandler;

    move-result-object v9

    .line 646
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 660
    if-nez v9, :cond_9

    .line 661
    new-instance v10, Ljava/lang/Exception;

    const-string v11, "HandlerHttpResponse xmlparese SAXParseXML failed "

    invoke-direct {v10, v11}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v10

    .line 647
    .end local v5    # "inputStream":Ljava/io/InputStream;
    :catch_0
    move-exception v1

    .line 650
    .local v1, "e":Ljava/lang/IllegalStateException;
    new-instance v10, Ljava/lang/Exception;

    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "HandleHttpResponse xmlparse IllegalStateException exception : "

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v10

    .line 651
    .end local v1    # "e":Ljava/lang/IllegalStateException;
    :catch_1
    move-exception v1

    .line 654
    .local v1, "e":Ljava/io/IOException;
    new-instance v10, Ljava/lang/Exception;

    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "HandleHttpResponse xmlparse IOException exception : "

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v10

    .line 655
    .end local v1    # "e":Ljava/io/IOException;
    :catch_2
    move-exception v1

    .line 656
    .local v1, "e":Ljava/lang/Exception;
    new-instance v10, Ljava/lang/Exception;

    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "HandleHttpResponse xmlparse other exception : "

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v10

    .line 663
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v5    # "inputStream":Ljava/io/InputStream;
    :cond_9
    iget v10, p0, Lcom/iwifi/sdk/chinanet/wispr/WlanRoamingAuthProtocol;->auth_step_index:I

    const/4 v11, 0x2

    if-ne v10, v11, :cond_b

    iget-object v10, v9, Lcom/iwifi/sdk/chinanet/wispr/XMLParseDefaultHandler;->mRedirect:Lcom/iwifi/sdk/chinanet/wispr/Redirect;

    if-eqz v10, :cond_b

    .line 665
    iget-object v10, v9, Lcom/iwifi/sdk/chinanet/wispr/XMLParseDefaultHandler;->mRedirect:Lcom/iwifi/sdk/chinanet/wispr/Redirect;

    iget v10, v10, Lcom/iwifi/sdk/chinanet/wispr/Redirect;->response:I

    if-nez v10, :cond_a

    .line 667
    iget-object v10, v9, Lcom/iwifi/sdk/chinanet/wispr/XMLParseDefaultHandler;->mRedirect:Lcom/iwifi/sdk/chinanet/wispr/Redirect;

    iget-object v10, v10, Lcom/iwifi/sdk/chinanet/wispr/Redirect;->login_url:Ljava/lang/String;

    iput-object v10, v7, Lcom/iwifi/sdk/chinanet/wispr/RequestUtils$ResponseResultInfos;->request_url:Ljava/lang/String;

    .line 668
    sget-object v10, Lcom/iwifi/sdk/chinanet/wispr/RequestUtils$ResponseResultState;->RSP_GET_AUTH_SUCCESS:Lcom/iwifi/sdk/chinanet/wispr/RequestUtils$ResponseResultState;

    iput-object v10, v7, Lcom/iwifi/sdk/chinanet/wispr/RequestUtils$ResponseResultInfos;->process_result:Lcom/iwifi/sdk/chinanet/wispr/RequestUtils$ResponseResultState;

    .line 669
    iget-object v10, v9, Lcom/iwifi/sdk/chinanet/wispr/XMLParseDefaultHandler;->mRedirect:Lcom/iwifi/sdk/chinanet/wispr/Redirect;

    iput-object v10, v7, Lcom/iwifi/sdk/chinanet/wispr/RequestUtils$ResponseResultInfos;->result_body:Ljava/lang/Object;

    goto/16 :goto_2

    .line 671
    :cond_a
    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "Get Authenticate address failed, responseCode is "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v11, v9, Lcom/iwifi/sdk/chinanet/wispr/XMLParseDefaultHandler;->mRedirect:Lcom/iwifi/sdk/chinanet/wispr/Redirect;

    iget v11, v11, Lcom/iwifi/sdk/chinanet/wispr/Redirect;->response:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    iput-object v10, v7, Lcom/iwifi/sdk/chinanet/wispr/RequestUtils$ResponseResultInfos;->request_url:Ljava/lang/String;

    .line 672
    sget-object v10, Lcom/iwifi/sdk/chinanet/wispr/RequestUtils$ResponseResultState;->RSP_GET_AUTH_FAILED:Lcom/iwifi/sdk/chinanet/wispr/RequestUtils$ResponseResultState;

    iput-object v10, v7, Lcom/iwifi/sdk/chinanet/wispr/RequestUtils$ResponseResultInfos;->process_result:Lcom/iwifi/sdk/chinanet/wispr/RequestUtils$ResponseResultState;

    .line 673
    iget-object v10, v9, Lcom/iwifi/sdk/chinanet/wispr/XMLParseDefaultHandler;->mRedirect:Lcom/iwifi/sdk/chinanet/wispr/Redirect;

    iput-object v10, v7, Lcom/iwifi/sdk/chinanet/wispr/RequestUtils$ResponseResultInfos;->result_body:Ljava/lang/Object;

    goto/16 :goto_2

    .line 675
    :cond_b
    iget v10, p0, Lcom/iwifi/sdk/chinanet/wispr/WlanRoamingAuthProtocol;->auth_step_index:I

    const/4 v11, 0x3

    if-ne v10, v11, :cond_c

    iget-object v10, v9, Lcom/iwifi/sdk/chinanet/wispr/XMLParseDefaultHandler;->mAuthenticationReply:Lcom/iwifi/sdk/chinanet/wispr/AuthenticationReply;

    if-eqz v10, :cond_c

    .line 677
    iget-object v10, v9, Lcom/iwifi/sdk/chinanet/wispr/XMLParseDefaultHandler;->mAuthenticationReply:Lcom/iwifi/sdk/chinanet/wispr/AuthenticationReply;

    iget-object v10, v10, Lcom/iwifi/sdk/chinanet/wispr/AuthenticationReply;->logoff_url:Ljava/lang/String;

    iput-object v10, v7, Lcom/iwifi/sdk/chinanet/wispr/RequestUtils$ResponseResultInfos;->request_url:Ljava/lang/String;

    iput-object v10, p0, Lcom/iwifi/sdk/chinanet/wispr/WlanRoamingAuthProtocol;->mLogoffUrl:Ljava/lang/String;

    .line 678
    sget-object v10, Lcom/iwifi/sdk/chinanet/wispr/RequestUtils$ResponseResultState;->RSP_POST_AUTH_SUCCESS:Lcom/iwifi/sdk/chinanet/wispr/RequestUtils$ResponseResultState;

    iput-object v10, v7, Lcom/iwifi/sdk/chinanet/wispr/RequestUtils$ResponseResultInfos;->process_result:Lcom/iwifi/sdk/chinanet/wispr/RequestUtils$ResponseResultState;

    .line 679
    iget-object v10, v9, Lcom/iwifi/sdk/chinanet/wispr/XMLParseDefaultHandler;->mAuthenticationReply:Lcom/iwifi/sdk/chinanet/wispr/AuthenticationReply;

    iput-object v10, v7, Lcom/iwifi/sdk/chinanet/wispr/RequestUtils$ResponseResultInfos;->result_body:Ljava/lang/Object;

    goto/16 :goto_2

    .line 680
    :cond_c
    iget v10, p0, Lcom/iwifi/sdk/chinanet/wispr/WlanRoamingAuthProtocol;->auth_step_index:I

    const/16 v11, 0x64

    if-ne v10, v11, :cond_d

    iget-object v10, v9, Lcom/iwifi/sdk/chinanet/wispr/XMLParseDefaultHandler;->mLogoffReply:Lcom/iwifi/sdk/chinanet/wispr/LogoffReply;

    if-eqz v10, :cond_d

    .line 681
    sget-object v10, Lcom/iwifi/sdk/chinanet/wispr/RequestUtils$ResponseResultState;->RSP_GET_LOGOFF_SUCCESS:Lcom/iwifi/sdk/chinanet/wispr/RequestUtils$ResponseResultState;

    iput-object v10, v7, Lcom/iwifi/sdk/chinanet/wispr/RequestUtils$ResponseResultInfos;->process_result:Lcom/iwifi/sdk/chinanet/wispr/RequestUtils$ResponseResultState;

    .line 682
    iget-object v10, v9, Lcom/iwifi/sdk/chinanet/wispr/XMLParseDefaultHandler;->mLogoffReply:Lcom/iwifi/sdk/chinanet/wispr/LogoffReply;

    iput-object v10, v7, Lcom/iwifi/sdk/chinanet/wispr/RequestUtils$ResponseResultInfos;->result_body:Ljava/lang/Object;

    .line 683
    const/4 v10, 0x0

    iput-object v10, v7, Lcom/iwifi/sdk/chinanet/wispr/RequestUtils$ResponseResultInfos;->request_url:Ljava/lang/String;

    goto/16 :goto_2

    .line 686
    :cond_d
    const/4 v10, 0x0

    iput-object v10, v7, Lcom/iwifi/sdk/chinanet/wispr/RequestUtils$ResponseResultInfos;->result_body:Ljava/lang/Object;

    .line 687
    iget v10, p0, Lcom/iwifi/sdk/chinanet/wispr/WlanRoamingAuthProtocol;->auth_step_index:I

    const/4 v11, 0x2

    if-ne v10, v11, :cond_e

    .line 688
    const-string v10, "Get Authenticate address failed because fails to parse the response xml file"

    iput-object v10, v7, Lcom/iwifi/sdk/chinanet/wispr/RequestUtils$ResponseResultInfos;->request_url:Ljava/lang/String;

    .line 689
    sget-object v10, Lcom/iwifi/sdk/chinanet/wispr/RequestUtils$ResponseResultState;->RSP_GET_AUTH_FAILED:Lcom/iwifi/sdk/chinanet/wispr/RequestUtils$ResponseResultState;

    iput-object v10, v7, Lcom/iwifi/sdk/chinanet/wispr/RequestUtils$ResponseResultInfos;->process_result:Lcom/iwifi/sdk/chinanet/wispr/RequestUtils$ResponseResultState;

    goto/16 :goto_2

    .line 690
    :cond_e
    iget v10, p0, Lcom/iwifi/sdk/chinanet/wispr/WlanRoamingAuthProtocol;->auth_step_index:I

    const/4 v11, 0x3

    if-ne v10, v11, :cond_f

    .line 691
    const-string v10, "Post authenticate request failed because fails to parse the response xml file"

    iput-object v10, v7, Lcom/iwifi/sdk/chinanet/wispr/RequestUtils$ResponseResultInfos;->request_url:Ljava/lang/String;

    .line 692
    sget-object v10, Lcom/iwifi/sdk/chinanet/wispr/RequestUtils$ResponseResultState;->RSP_POST_AUTH_FAILED:Lcom/iwifi/sdk/chinanet/wispr/RequestUtils$ResponseResultState;

    iput-object v10, v7, Lcom/iwifi/sdk/chinanet/wispr/RequestUtils$ResponseResultInfos;->process_result:Lcom/iwifi/sdk/chinanet/wispr/RequestUtils$ResponseResultState;

    goto/16 :goto_2

    .line 693
    :cond_f
    iget v10, p0, Lcom/iwifi/sdk/chinanet/wispr/WlanRoamingAuthProtocol;->auth_step_index:I

    const/16 v11, 0x64

    if-ne v10, v11, :cond_2

    .line 694
    const-string v10, "Logoff Request failed because fails to parse the response xml file"

    iput-object v10, v7, Lcom/iwifi/sdk/chinanet/wispr/RequestUtils$ResponseResultInfos;->request_url:Ljava/lang/String;

    .line 695
    sget-object v10, Lcom/iwifi/sdk/chinanet/wispr/RequestUtils$ResponseResultState;->RSP_GET_LOGOFF_FAILED:Lcom/iwifi/sdk/chinanet/wispr/RequestUtils$ResponseResultState;

    iput-object v10, v7, Lcom/iwifi/sdk/chinanet/wispr/RequestUtils$ResponseResultInfos;->process_result:Lcom/iwifi/sdk/chinanet/wispr/RequestUtils$ResponseResultState;

    goto/16 :goto_2

    .line 708
    .end local v0    # "content_type":Ljava/lang/String;
    .end local v3    # "headers":[Lorg/apache/http/Header;
    .end local v4    # "httpEntity":Lorg/apache/http/HttpEntity;
    .end local v5    # "inputStream":Ljava/io/InputStream;
    .end local v9    # "xmlDefaultHandler":Lcom/iwifi/sdk/chinanet/wispr/XMLParseDefaultHandler;
    :cond_10
    iget v10, p0, Lcom/iwifi/sdk/chinanet/wispr/WlanRoamingAuthProtocol;->auth_step_index:I

    const/4 v11, 0x1

    if-ne v10, v11, :cond_11

    .line 709
    sget-object v10, Lcom/iwifi/sdk/chinanet/wispr/RequestUtils$ResponseResultState;->RSP_GET_BRAS_FAILED:Lcom/iwifi/sdk/chinanet/wispr/RequestUtils$ResponseResultState;

    iput-object v10, v7, Lcom/iwifi/sdk/chinanet/wispr/RequestUtils$ResponseResultInfos;->process_result:Lcom/iwifi/sdk/chinanet/wispr/RequestUtils$ResponseResultState;

    .line 720
    :goto_3
    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "Http Request Failed: "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    iput-object v10, v7, Lcom/iwifi/sdk/chinanet/wispr/RequestUtils$ResponseResultInfos;->request_url:Ljava/lang/String;

    goto/16 :goto_2

    .line 711
    :cond_11
    iget v10, p0, Lcom/iwifi/sdk/chinanet/wispr/WlanRoamingAuthProtocol;->auth_step_index:I

    const/4 v11, 0x2

    if-ne v10, v11, :cond_12

    .line 712
    sget-object v10, Lcom/iwifi/sdk/chinanet/wispr/RequestUtils$ResponseResultState;->RSP_GET_AUTH_FAILED:Lcom/iwifi/sdk/chinanet/wispr/RequestUtils$ResponseResultState;

    iput-object v10, v7, Lcom/iwifi/sdk/chinanet/wispr/RequestUtils$ResponseResultInfos;->process_result:Lcom/iwifi/sdk/chinanet/wispr/RequestUtils$ResponseResultState;

    goto :goto_3

    .line 713
    :cond_12
    iget v10, p0, Lcom/iwifi/sdk/chinanet/wispr/WlanRoamingAuthProtocol;->auth_step_index:I

    const/4 v11, 0x3

    if-ne v10, v11, :cond_13

    .line 714
    sget-object v10, Lcom/iwifi/sdk/chinanet/wispr/RequestUtils$ResponseResultState;->RSP_POST_AUTH_FAILED:Lcom/iwifi/sdk/chinanet/wispr/RequestUtils$ResponseResultState;

    iput-object v10, v7, Lcom/iwifi/sdk/chinanet/wispr/RequestUtils$ResponseResultInfos;->process_result:Lcom/iwifi/sdk/chinanet/wispr/RequestUtils$ResponseResultState;

    goto :goto_3

    .line 715
    :cond_13
    iget v10, p0, Lcom/iwifi/sdk/chinanet/wispr/WlanRoamingAuthProtocol;->auth_step_index:I

    const/16 v11, 0x64

    if-ne v10, v11, :cond_14

    .line 716
    sget-object v10, Lcom/iwifi/sdk/chinanet/wispr/RequestUtils$ResponseResultState;->RSP_GET_LOGOFF_FAILED:Lcom/iwifi/sdk/chinanet/wispr/RequestUtils$ResponseResultState;

    iput-object v10, v7, Lcom/iwifi/sdk/chinanet/wispr/RequestUtils$ResponseResultInfos;->process_result:Lcom/iwifi/sdk/chinanet/wispr/RequestUtils$ResponseResultState;

    goto :goto_3

    .line 718
    :cond_14
    sget-object v10, Lcom/iwifi/sdk/chinanet/wispr/RequestUtils$ResponseResultState;->RSP_NONE:Lcom/iwifi/sdk/chinanet/wispr/RequestUtils$ResponseResultState;

    iput-object v10, v7, Lcom/iwifi/sdk/chinanet/wispr/RequestUtils$ResponseResultInfos;->process_result:Lcom/iwifi/sdk/chinanet/wispr/RequestUtils$ResponseResultState;

    goto :goto_3
.end method

.method public static SAXParseXML(Ljava/io/InputStream;)Lcom/iwifi/sdk/chinanet/wispr/XMLParseDefaultHandler;
    .locals 6
    .param p0, "xml_stream"    # Ljava/io/InputStream;

    .prologue
    .line 763
    :try_start_0
    invoke-static {}, Ljavax/xml/parsers/SAXParserFactory;->newInstance()Ljavax/xml/parsers/SAXParserFactory;

    move-result-object v2

    .line 764
    .local v2, "saxFactory":Ljavax/xml/parsers/SAXParserFactory;
    invoke-virtual {v2}, Ljavax/xml/parsers/SAXParserFactory;->newSAXParser()Ljavax/xml/parsers/SAXParser;

    move-result-object v3

    .line 765
    .local v3, "saxParser":Ljavax/xml/parsers/SAXParser;
    invoke-virtual {v3}, Ljavax/xml/parsers/SAXParser;->getXMLReader()Lorg/xml/sax/XMLReader;

    move-result-object v1

    .line 767
    .local v1, "reader":Lorg/xml/sax/XMLReader;
    new-instance v4, Lcom/iwifi/sdk/chinanet/wispr/XMLParseDefaultHandler;

    invoke-direct {v4}, Lcom/iwifi/sdk/chinanet/wispr/XMLParseDefaultHandler;-><init>()V

    .line 768
    .local v4, "xmlDefaultHandler":Lcom/iwifi/sdk/chinanet/wispr/XMLParseDefaultHandler;
    invoke-interface {v1, v4}, Lorg/xml/sax/XMLReader;->setContentHandler(Lorg/xml/sax/ContentHandler;)V

    .line 770
    new-instance v5, Lorg/xml/sax/InputSource;

    invoke-direct {v5, p0}, Lorg/xml/sax/InputSource;-><init>(Ljava/io/InputStream;)V

    invoke-interface {v1, v5}, Lorg/xml/sax/XMLReader;->parse(Lorg/xml/sax/InputSource;)V

    .line 771
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    .line 783
    .end local v1    # "reader":Lorg/xml/sax/XMLReader;
    .end local v2    # "saxFactory":Ljavax/xml/parsers/SAXParserFactory;
    .end local v3    # "saxParser":Ljavax/xml/parsers/SAXParser;
    .end local v4    # "xmlDefaultHandler":Lcom/iwifi/sdk/chinanet/wispr/XMLParseDefaultHandler;
    :goto_0
    return-object v4

    .line 773
    :catch_0
    move-exception v0

    .line 775
    .local v0, "e":Ljavax/xml/parsers/ParserConfigurationException;
    invoke-virtual {v0}, Ljavax/xml/parsers/ParserConfigurationException;->printStackTrace()V

    .line 783
    .end local v0    # "e":Ljavax/xml/parsers/ParserConfigurationException;
    :goto_1
    const/4 v4, 0x0

    goto :goto_0

    .line 776
    :catch_1
    move-exception v0

    .line 778
    .local v0, "e":Lorg/xml/sax/SAXException;
    invoke-virtual {v0}, Lorg/xml/sax/SAXException;->printStackTrace()V

    goto :goto_1

    .line 779
    .end local v0    # "e":Lorg/xml/sax/SAXException;
    :catch_2
    move-exception v0

    .line 781
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1
.end method

.method static synthetic access$0(Lcom/iwifi/sdk/chinanet/wispr/WlanRoamingAuthProtocol;)Lcom/iwifi/sdk/chinanet/wispr/IWlanAuthenRequestCallback;
    .locals 1

    .prologue
    .line 96
    iget-object v0, p0, Lcom/iwifi/sdk/chinanet/wispr/WlanRoamingAuthProtocol;->callback:Lcom/iwifi/sdk/chinanet/wispr/IWlanAuthenRequestCallback;

    return-object v0
.end method

.method static synthetic access$1(Lcom/iwifi/sdk/chinanet/wispr/WlanRoamingAuthProtocol;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 97
    iput-object p1, p0, Lcom/iwifi/sdk/chinanet/wispr/WlanRoamingAuthProtocol;->mRedirectUrl:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$2(Lcom/iwifi/sdk/chinanet/wispr/WlanRoamingAuthProtocol;I)V
    .locals 0

    .prologue
    .line 109
    iput p1, p0, Lcom/iwifi/sdk/chinanet/wispr/WlanRoamingAuthProtocol;->auth_step_index:I

    return-void
.end method

.method static synthetic access$3(Lcom/iwifi/sdk/chinanet/wispr/WlanRoamingAuthProtocol;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/apache/http/client/entity/UrlEncodedFormEntity;
    .locals 1

    .prologue
    .line 523
    invoke-direct/range {p0 .. p6}, Lcom/iwifi/sdk/chinanet/wispr/WlanRoamingAuthProtocol;->generateHttpEntity(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/apache/http/client/entity/UrlEncodedFormEntity;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$4(Lcom/iwifi/sdk/chinanet/wispr/WlanRoamingAuthProtocol;ILcom/iwifi/sdk/chinanet/wispr/WlanRoamingAuthProtocol$ResultInfos;Lcom/iwifi/sdk/chinanet/wispr/RequestUtils$ResponseResultInfos;Ljava/lang/Exception;)V
    .locals 0

    .prologue
    .line 307
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/iwifi/sdk/chinanet/wispr/WlanRoamingAuthProtocol;->sendMessageWithResult(ILcom/iwifi/sdk/chinanet/wispr/WlanRoamingAuthProtocol$ResultInfos;Lcom/iwifi/sdk/chinanet/wispr/RequestUtils$ResponseResultInfos;Ljava/lang/Exception;)V

    return-void
.end method

.method private addHeader(Lorg/apache/http/client/methods/HttpUriRequest;Ljava/util/Map;)V
    .locals 4
    .param p1, "request"    # Lorg/apache/http/client/methods/HttpUriRequest;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/http/client/methods/HttpUriRequest;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 516
    .local p2, "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz p2, :cond_0

    invoke-interface {p2}, Ljava/util/Map;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 517
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_1

    .line 521
    :cond_0
    return-void

    .line 517
    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 518
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {p1, v1, v2}, Lorg/apache/http/client/methods/HttpUriRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private generateHttpEntity(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/apache/http/client/entity/UrlEncodedFormEntity;
    .locals 9
    .param p1, "userName"    # Ljava/lang/String;
    .param p2, "password"    # Ljava/lang/String;
    .param p3, "btn_identify"    # Ljava/lang/String;
    .param p4, "fname"    # Ljava/lang/String;
    .param p5, "org_server"    # Ljava/lang/String;
    .param p6, "login_lat_service"    # Ljava/lang/String;

    .prologue
    .line 529
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 530
    .local v4, "postData":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v5, "UserName"

    invoke-virtual {v4, v5, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 531
    const-string v5, "Password"

    invoke-virtual {v4, v5, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 532
    const-string v5, "button"

    invoke-virtual {v4, v5, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 533
    const-string v5, "FNAME"

    invoke-virtual {v4, v5, p4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 534
    const-string v5, "OriginatingServer"

    invoke-virtual {v4, v5, p5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 535
    const-string v5, "Login_LAT_Service"

    invoke-virtual {v4, v5, p6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 537
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 538
    .local v3, "pairList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/apache/http/message/BasicNameValuePair;>;"
    invoke-virtual {v4}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_0

    .line 542
    :try_start_0
    new-instance v1, Lorg/apache/http/client/entity/UrlEncodedFormEntity;

    const-string v5, "UTF-8"

    invoke-direct {v1, v3, v5}, Lorg/apache/http/client/entity/UrlEncodedFormEntity;-><init>(Ljava/util/List;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 547
    :goto_1
    return-object v1

    .line 538
    :cond_0
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 539
    .local v2, "m":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v8, Lorg/apache/http/message/BasicNameValuePair;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-direct {v8, v5, v6}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 544
    .end local v2    # "m":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    :catch_0
    move-exception v0

    .line 546
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    .line 547
    const/4 v1, 0x0

    goto :goto_1
.end method

.method private httpGetRequest(Lcom/iwifi/sdk/chinanet/wispr/RequestUtils;)Lorg/apache/http/HttpResponse;
    .locals 5
    .param p1, "request"    # Lcom/iwifi/sdk/chinanet/wispr/RequestUtils;

    .prologue
    .line 386
    const/4 v3, 0x0

    .line 387
    .local v3, "response":Lorg/apache/http/HttpResponse;
    new-instance v2, Lorg/apache/http/client/methods/HttpGet;

    iget-object v4, p1, Lcom/iwifi/sdk/chinanet/wispr/RequestUtils;->url:Ljava/lang/String;

    invoke-direct {v2, v4}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    .line 388
    .local v2, "mHttpGet":Lorg/apache/http/client/methods/HttpGet;
    iget-object v4, p1, Lcom/iwifi/sdk/chinanet/wispr/RequestUtils;->headers:Ljava/util/Map;

    invoke-direct {p0, v2, v4}, Lcom/iwifi/sdk/chinanet/wispr/WlanRoamingAuthProtocol;->addHeader(Lorg/apache/http/client/methods/HttpUriRequest;Ljava/util/Map;)V

    .line 389
    new-instance v1, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v1}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    .line 392
    .local v1, "httpClient":Lorg/apache/http/impl/client/DefaultHttpClient;
    iget-object v4, p0, Lcom/iwifi/sdk/chinanet/wispr/WlanRoamingAuthProtocol;->mRedirectHandler:Lorg/apache/http/client/RedirectHandler;

    invoke-virtual {v1, v4}, Lorg/apache/http/impl/client/DefaultHttpClient;->setRedirectHandler(Lorg/apache/http/client/RedirectHandler;)V

    .line 396
    :try_start_0
    invoke-virtual {v1, v2}, Lorg/apache/http/impl/client/DefaultHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 400
    :goto_0
    return-object v3

    .line 397
    :catch_0
    move-exception v0

    .line 398
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private httpPostRequest(Lcom/iwifi/sdk/chinanet/wispr/RequestUtils;)Lorg/apache/http/HttpResponse;
    .locals 6
    .param p1, "request"    # Lcom/iwifi/sdk/chinanet/wispr/RequestUtils;

    .prologue
    .line 410
    const/4 v3, 0x0

    .line 411
    .local v3, "response":Lorg/apache/http/HttpResponse;
    new-instance v0, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v0}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    .line 412
    .local v0, "client":Lorg/apache/http/client/HttpClient;
    new-instance v2, Lorg/apache/http/client/methods/HttpPost;

    iget-object v4, p1, Lcom/iwifi/sdk/chinanet/wispr/RequestUtils;->url:Ljava/lang/String;

    invoke-direct {v2, v4}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    .line 413
    .local v2, "post":Lorg/apache/http/client/methods/HttpPost;
    iget-object v4, p1, Lcom/iwifi/sdk/chinanet/wispr/RequestUtils;->headers:Ljava/util/Map;

    invoke-direct {p0, v2, v4}, Lcom/iwifi/sdk/chinanet/wispr/WlanRoamingAuthProtocol;->addHeader(Lorg/apache/http/client/methods/HttpUriRequest;Ljava/util/Map;)V

    .line 415
    iget-object v4, p1, Lcom/iwifi/sdk/chinanet/wispr/RequestUtils;->httpEntity:Lorg/apache/http/HttpEntity;

    if-nez v4, :cond_0

    .line 416
    new-instance v4, Ljava/lang/IllegalStateException;

    const-string v5, "you forget to set post content to the httpost"

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 420
    :cond_0
    iget-object v4, p1, Lcom/iwifi/sdk/chinanet/wispr/RequestUtils;->httpEntity:Lorg/apache/http/HttpEntity;

    invoke-virtual {v2, v4}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 423
    :try_start_0
    invoke-interface {v0, v2}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;
    :try_end_0
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v3

    .line 429
    :goto_0
    return-object v3

    .line 424
    :catch_0
    move-exception v1

    .line 425
    .local v1, "e":Lorg/apache/http/client/ClientProtocolException;
    invoke-virtual {v1}, Lorg/apache/http/client/ClientProtocolException;->printStackTrace()V

    goto :goto_0

    .line 426
    .end local v1    # "e":Lorg/apache/http/client/ClientProtocolException;
    :catch_1
    move-exception v1

    .line 427
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method private sendMessageWithResult(ILcom/iwifi/sdk/chinanet/wispr/WlanRoamingAuthProtocol$ResultInfos;Lcom/iwifi/sdk/chinanet/wispr/RequestUtils$ResponseResultInfos;Ljava/lang/Exception;)V
    .locals 7
    .param p1, "action"    # I
    .param p2, "sendInfos"    # Lcom/iwifi/sdk/chinanet/wispr/WlanRoamingAuthProtocol$ResultInfos;
    .param p3, "request_result"    # Lcom/iwifi/sdk/chinanet/wispr/RequestUtils$ResponseResultInfos;
    .param p4, "ex"    # Ljava/lang/Exception;

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 308
    iget-object v2, p0, Lcom/iwifi/sdk/chinanet/wispr/WlanRoamingAuthProtocol;->mhandler:Landroid/os/Handler;

    invoke-virtual {v2}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v1

    .line 310
    .local v1, "msg":Landroid/os/Message;
    if-eqz p4, :cond_1

    .line 312
    packed-switch p1, :pswitch_data_0

    .line 320
    :goto_0
    invoke-virtual {p4}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p2, Lcom/iwifi/sdk/chinanet/wispr/WlanRoamingAuthProtocol$ResultInfos;->failInfo:Ljava/lang/String;

    .line 377
    :cond_0
    :goto_1
    iput-object p2, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 378
    iget-object v2, p0, Lcom/iwifi/sdk/chinanet/wispr/WlanRoamingAuthProtocol;->mhandler:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 379
    return-void

    .line 314
    :pswitch_0
    iput v5, v1, Landroid/os/Message;->what:I

    goto :goto_0

    .line 317
    :pswitch_1
    iput v6, v1, Landroid/os/Message;->what:I

    goto :goto_0

    .line 322
    :cond_1
    if-eqz p3, :cond_0

    .line 324
    iget-object v2, p3, Lcom/iwifi/sdk/chinanet/wispr/RequestUtils$ResponseResultInfos;->process_result:Lcom/iwifi/sdk/chinanet/wispr/RequestUtils$ResponseResultState;

    sget-object v3, Lcom/iwifi/sdk/chinanet/wispr/RequestUtils$ResponseResultState;->RSP_POST_AUTH_SUCCESS:Lcom/iwifi/sdk/chinanet/wispr/RequestUtils$ResponseResultState;

    if-ne v2, v3, :cond_4

    .line 325
    iget-object v2, p3, Lcom/iwifi/sdk/chinanet/wispr/RequestUtils$ResponseResultInfos;->result_body:Ljava/lang/Object;

    instance-of v2, v2, Lcom/iwifi/sdk/chinanet/wispr/AuthenticationReply;

    if-eqz v2, :cond_3

    .line 327
    iget-object v0, p3, Lcom/iwifi/sdk/chinanet/wispr/RequestUtils$ResponseResultInfos;->result_body:Ljava/lang/Object;

    check-cast v0, Lcom/iwifi/sdk/chinanet/wispr/AuthenticationReply;

    .line 328
    .local v0, "auten_reply":Lcom/iwifi/sdk/chinanet/wispr/AuthenticationReply;
    const/16 v2, 0x32

    iget v3, v0, Lcom/iwifi/sdk/chinanet/wispr/AuthenticationReply;->responseCode:I

    if-ne v2, v3, :cond_2

    .line 329
    const/4 v2, 0x0

    iput v2, v1, Landroid/os/Message;->what:I

    .line 330
    iget-object v2, p3, Lcom/iwifi/sdk/chinanet/wispr/RequestUtils$ResponseResultInfos;->request_url:Ljava/lang/String;

    iput-object v2, p2, Lcom/iwifi/sdk/chinanet/wispr/WlanRoamingAuthProtocol$ResultInfos;->logoffUrl:Ljava/lang/String;

    .line 331
    iput-object v4, p2, Lcom/iwifi/sdk/chinanet/wispr/WlanRoamingAuthProtocol$ResultInfos;->failInfo:Ljava/lang/String;

    goto :goto_1

    .line 334
    :cond_2
    iput v5, v1, Landroid/os/Message;->what:I

    .line 335
    iput-object v4, p2, Lcom/iwifi/sdk/chinanet/wispr/WlanRoamingAuthProtocol$ResultInfos;->logoffUrl:Ljava/lang/String;

    .line 336
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Authenticate connection is ok, but response failed : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, v0, Lcom/iwifi/sdk/chinanet/wispr/AuthenticationReply;->responseCode:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " message: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v0, Lcom/iwifi/sdk/chinanet/wispr/AuthenticationReply;->reply_message:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p2, Lcom/iwifi/sdk/chinanet/wispr/WlanRoamingAuthProtocol$ResultInfos;->failInfo:Ljava/lang/String;

    goto :goto_1

    .line 340
    .end local v0    # "auten_reply":Lcom/iwifi/sdk/chinanet/wispr/AuthenticationReply;
    :cond_3
    iput v5, v1, Landroid/os/Message;->what:I

    .line 341
    iput-object v4, p2, Lcom/iwifi/sdk/chinanet/wispr/WlanRoamingAuthProtocol$ResultInfos;->logoffUrl:Ljava/lang/String;

    .line 342
    const-string v2, "Authenticate connection is ok, but request body whenever gone "

    iput-object v2, p2, Lcom/iwifi/sdk/chinanet/wispr/WlanRoamingAuthProtocol$ResultInfos;->failInfo:Ljava/lang/String;

    goto :goto_1

    .line 346
    :cond_4
    iget-object v2, p3, Lcom/iwifi/sdk/chinanet/wispr/RequestUtils$ResponseResultInfos;->process_result:Lcom/iwifi/sdk/chinanet/wispr/RequestUtils$ResponseResultState;

    sget-object v3, Lcom/iwifi/sdk/chinanet/wispr/RequestUtils$ResponseResultState;->RSP_GET_LOGOFF_SUCCESS:Lcom/iwifi/sdk/chinanet/wispr/RequestUtils$ResponseResultState;

    if-ne v2, v3, :cond_7

    .line 347
    iget-object v2, p3, Lcom/iwifi/sdk/chinanet/wispr/RequestUtils$ResponseResultInfos;->result_body:Ljava/lang/Object;

    instance-of v2, v2, Lcom/iwifi/sdk/chinanet/wispr/LogoffReply;

    if-eqz v2, :cond_6

    .line 349
    iget-object v0, p3, Lcom/iwifi/sdk/chinanet/wispr/RequestUtils$ResponseResultInfos;->result_body:Ljava/lang/Object;

    check-cast v0, Lcom/iwifi/sdk/chinanet/wispr/LogoffReply;

    .line 350
    .local v0, "auten_reply":Lcom/iwifi/sdk/chinanet/wispr/LogoffReply;
    const/16 v2, 0x96

    iget v3, v0, Lcom/iwifi/sdk/chinanet/wispr/LogoffReply;->responseCode:I

    if-ne v2, v3, :cond_5

    .line 351
    const/4 v2, 0x2

    iput v2, v1, Landroid/os/Message;->what:I

    .line 352
    iput-object v4, p2, Lcom/iwifi/sdk/chinanet/wispr/WlanRoamingAuthProtocol$ResultInfos;->logoffUrl:Ljava/lang/String;

    .line 353
    iput-object v4, p2, Lcom/iwifi/sdk/chinanet/wispr/WlanRoamingAuthProtocol$ResultInfos;->failInfo:Ljava/lang/String;

    goto :goto_1

    .line 356
    :cond_5
    iput v6, v1, Landroid/os/Message;->what:I

    .line 357
    iput-object v4, p2, Lcom/iwifi/sdk/chinanet/wispr/WlanRoamingAuthProtocol$ResultInfos;->logoffUrl:Ljava/lang/String;

    .line 358
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Logoff connection is ok, but response tells it failed : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, v0, Lcom/iwifi/sdk/chinanet/wispr/LogoffReply;->responseCode:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p2, Lcom/iwifi/sdk/chinanet/wispr/WlanRoamingAuthProtocol$ResultInfos;->failInfo:Ljava/lang/String;

    goto/16 :goto_1

    .line 362
    .end local v0    # "auten_reply":Lcom/iwifi/sdk/chinanet/wispr/LogoffReply;
    :cond_6
    iput v6, v1, Landroid/os/Message;->what:I

    .line 363
    iput-object v4, p2, Lcom/iwifi/sdk/chinanet/wispr/WlanRoamingAuthProtocol$ResultInfos;->logoffUrl:Ljava/lang/String;

    .line 364
    const-string v2, "Logoff connection is ok, but request body whenever gone "

    iput-object v2, p2, Lcom/iwifi/sdk/chinanet/wispr/WlanRoamingAuthProtocol$ResultInfos;->failInfo:Ljava/lang/String;

    goto/16 :goto_1

    .line 368
    :cond_7
    if-nez p1, :cond_8

    .line 369
    iput v5, v1, Landroid/os/Message;->what:I

    .line 372
    :goto_2
    iput-object v4, p2, Lcom/iwifi/sdk/chinanet/wispr/WlanRoamingAuthProtocol$ResultInfos;->logoffUrl:Ljava/lang/String;

    .line 373
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Authenticate/Lofgoff connection failed: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p3, Lcom/iwifi/sdk/chinanet/wispr/RequestUtils$ResponseResultInfos;->process_result:Lcom/iwifi/sdk/chinanet/wispr/RequestUtils$ResponseResultState;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", more: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p3, Lcom/iwifi/sdk/chinanet/wispr/RequestUtils$ResponseResultInfos;->request_url:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p2, Lcom/iwifi/sdk/chinanet/wispr/WlanRoamingAuthProtocol$ResultInfos;->failInfo:Ljava/lang/String;

    goto/16 :goto_1

    .line 371
    :cond_8
    iput v6, v1, Landroid/os/Message;->what:I

    goto :goto_2

    .line 312
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public HandleHttpRequest(Ljava/lang/String;Lorg/apache/http/HttpEntity;Lcom/iwifi/sdk/chinanet/wispr/RequestUtils$RequestMethod;)Lcom/iwifi/sdk/chinanet/wispr/RequestUtils$ResponseResultInfos;
    .locals 10
    .param p1, "request_url"    # Ljava/lang/String;
    .param p2, "httpEntity"    # Lorg/apache/http/HttpEntity;
    .param p3, "requestMethod"    # Lcom/iwifi/sdk/chinanet/wispr/RequestUtils$RequestMethod;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 442
    const/4 v5, 0x0

    .line 443
    .local v5, "rsp_info":Lcom/iwifi/sdk/chinanet/wispr/RequestUtils$ResponseResultInfos;
    const/4 v4, 0x0

    .line 444
    .local v4, "response":Lorg/apache/http/HttpResponse;
    new-instance v3, Lcom/iwifi/sdk/chinanet/wispr/RequestUtils;

    invoke-direct {v3, p1, p3}, Lcom/iwifi/sdk/chinanet/wispr/RequestUtils;-><init>(Ljava/lang/String;Lcom/iwifi/sdk/chinanet/wispr/RequestUtils$RequestMethod;)V

    .line 445
    .local v3, "request":Lcom/iwifi/sdk/chinanet/wispr/RequestUtils;
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 446
    .local v1, "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v7, "User-Agent"

    sget-object v8, Lcom/iwifi/sdk/chinanet/wispr/WlanRoamingAuthProtocol;->DEFAULT_USER_AGENT:Ljava/lang/String;

    invoke-interface {v1, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 447
    iput-object v1, v3, Lcom/iwifi/sdk/chinanet/wispr/RequestUtils;->headers:Ljava/util/Map;

    .line 448
    if-eqz p2, :cond_0

    .line 449
    iput-object p2, v3, Lcom/iwifi/sdk/chinanet/wispr/RequestUtils;->httpEntity:Lorg/apache/http/HttpEntity;

    .line 451
    :cond_0
    const-string v7, "iWiFiSDK|AAA Authentication|HandleHttpRequest"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "Method: "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", Auth_Step: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p0, Lcom/iwifi/sdk/chinanet/wispr/WlanRoamingAuthProtocol;->auth_step_index:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", Url: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/iwifi/sdk/tools/Logger;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 453
    :try_start_0
    invoke-static {}, Lcom/iwifi/sdk/chinanet/wispr/WlanRoamingAuthProtocol;->$SWITCH_TABLE$com$iwifi$sdk$chinanet$wispr$RequestUtils$RequestMethod()[I

    move-result-object v7

    invoke-virtual {p3}, Lcom/iwifi/sdk/chinanet/wispr/RequestUtils$RequestMethod;->ordinal()I

    move-result v8

    aget v7, v7, v8

    packed-switch v7, :pswitch_data_0

    .line 463
    new-instance v7, Ljava/lang/IllegalStateException;

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "you doesn\'t define this requestmethod : "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v9, v3, Lcom/iwifi/sdk/chinanet/wispr/RequestUtils;->requestMethod:Lcom/iwifi/sdk/chinanet/wispr/RequestUtils$RequestMethod;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v7
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 505
    :catch_0
    move-exception v0

    .line 506
    .local v0, "e":Ljava/lang/Exception;
    new-instance v7, Ljava/lang/Exception;

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "HandleHttpRequest http failed: "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", And Method: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", Auth_Step: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p0, Lcom/iwifi/sdk/chinanet/wispr/WlanRoamingAuthProtocol;->auth_step_index:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", Url: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v7

    .line 455
    .end local v0    # "e":Ljava/lang/Exception;
    :pswitch_0
    :try_start_1
    invoke-direct {p0, v3}, Lcom/iwifi/sdk/chinanet/wispr/WlanRoamingAuthProtocol;->httpGetRequest(Lcom/iwifi/sdk/chinanet/wispr/RequestUtils;)Lorg/apache/http/HttpResponse;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v4

    .line 466
    :goto_0
    if-eqz v4, :cond_1

    .line 468
    :try_start_2
    invoke-virtual {v3}, Lcom/iwifi/sdk/chinanet/wispr/RequestUtils;->getResultInfos()Lcom/iwifi/sdk/chinanet/wispr/RequestUtils$ResponseResultInfos;

    move-result-object v7

    invoke-direct {p0, v7, v4}, Lcom/iwifi/sdk/chinanet/wispr/WlanRoamingAuthProtocol;->HandleParseHttpResponse(Lcom/iwifi/sdk/chinanet/wispr/RequestUtils$ResponseResultInfos;Lorg/apache/http/HttpResponse;)Lcom/iwifi/sdk/chinanet/wispr/RequestUtils$ResponseResultInfos;

    move-result-object v5

    .line 470
    invoke-static {}, Lcom/iwifi/sdk/chinanet/wispr/WlanRoamingAuthProtocol;->$SWITCH_TABLE$com$iwifi$sdk$chinanet$wispr$RequestUtils$ResponseResultState()[I

    move-result-object v7

    iget-object v8, v5, Lcom/iwifi/sdk/chinanet/wispr/RequestUtils$ResponseResultInfos;->process_result:Lcom/iwifi/sdk/chinanet/wispr/RequestUtils$ResponseResultState;

    invoke-virtual {v8}, Lcom/iwifi/sdk/chinanet/wispr/RequestUtils$ResponseResultState;->ordinal()I

    move-result v8

    aget v7, v7, v8
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    packed-switch v7, :pswitch_data_1

    .line 508
    :goto_1
    :pswitch_1
    return-object v5

    .line 458
    :pswitch_2
    :try_start_3
    invoke-direct {p0, v3}, Lcom/iwifi/sdk/chinanet/wispr/WlanRoamingAuthProtocol;->httpPostRequest(Lcom/iwifi/sdk/chinanet/wispr/RequestUtils;)Lorg/apache/http/HttpResponse;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    move-result-object v4

    .line 459
    goto :goto_0

    .line 473
    :pswitch_3
    const/4 v7, 0x2

    :try_start_4
    iput v7, p0, Lcom/iwifi/sdk/chinanet/wispr/WlanRoamingAuthProtocol;->auth_step_index:I

    .line 474
    iget-object v6, v5, Lcom/iwifi/sdk/chinanet/wispr/RequestUtils$ResponseResultInfos;->request_url:Ljava/lang/String;

    .line 475
    .local v6, "url":Ljava/lang/String;
    sget-object v7, Lcom/iwifi/sdk/chinanet/wispr/RequestUtils$RequestMethod;->GET:Lcom/iwifi/sdk/chinanet/wispr/RequestUtils$RequestMethod;

    invoke-virtual {p0, v6, p2, v7}, Lcom/iwifi/sdk/chinanet/wispr/WlanRoamingAuthProtocol;->HandleHttpRequest(Ljava/lang/String;Lorg/apache/http/HttpEntity;Lcom/iwifi/sdk/chinanet/wispr/RequestUtils$RequestMethod;)Lcom/iwifi/sdk/chinanet/wispr/RequestUtils$ResponseResultInfos;

    move-result-object v5

    .line 476
    goto :goto_1

    .line 479
    .end local v6    # "url":Ljava/lang/String;
    :pswitch_4
    const/4 v7, 0x3

    iput v7, p0, Lcom/iwifi/sdk/chinanet/wispr/WlanRoamingAuthProtocol;->auth_step_index:I

    .line 480
    iget-object v2, v5, Lcom/iwifi/sdk/chinanet/wispr/RequestUtils$ResponseResultInfos;->request_url:Ljava/lang/String;

    .line 481
    .local v2, "post_url":Ljava/lang/String;
    sget-object v7, Lcom/iwifi/sdk/chinanet/wispr/RequestUtils$RequestMethod;->POST:Lcom/iwifi/sdk/chinanet/wispr/RequestUtils$RequestMethod;

    invoke-virtual {p0, v2, p2, v7}, Lcom/iwifi/sdk/chinanet/wispr/WlanRoamingAuthProtocol;->HandleHttpRequest(Ljava/lang/String;Lorg/apache/http/HttpEntity;Lcom/iwifi/sdk/chinanet/wispr/RequestUtils$RequestMethod;)Lcom/iwifi/sdk/chinanet/wispr/RequestUtils$ResponseResultInfos;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    move-result-object v5

    .line 482
    goto :goto_1

    .line 496
    .end local v2    # "post_url":Ljava/lang/String;
    :catch_1
    move-exception v0

    .line 498
    .restart local v0    # "e":Ljava/lang/Exception;
    :try_start_5
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 499
    new-instance v7, Ljava/lang/Exception;

    invoke-direct {v7, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/Throwable;)V

    throw v7

    .line 503
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_1
    new-instance v7, Ljava/lang/IllegalStateException;

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "HandleHttpRequest "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " no response "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v7
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    .line 453
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_2
    .end packed-switch

    .line 470
    :pswitch_data_1
    .packed-switch 0x2
        :pswitch_3
        :pswitch_1
        :pswitch_4
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public JSoupHTMLParse(Ljava/io/InputStream;)Ljava/lang/String;
    .locals 10
    .param p1, "html_stream"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 732
    new-instance v6, Ljava/io/BufferedReader;

    new-instance v8, Ljava/io/InputStreamReader;

    invoke-direct {v8, p1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v6, v8}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 733
    .local v6, "reader":Ljava/io/BufferedReader;
    const-string v7, ""

    .line 734
    .local v7, "response_html":Ljava/lang/String;
    const-string v2, ""

    .line 736
    .local v2, "line":Ljava/lang/String;
    :goto_0
    invoke-virtual {v6}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_0

    .line 741
    invoke-static {v7}, Lorg/jsoup/Jsoup;->parse(Ljava/lang/String;)Lorg/jsoup/nodes/Document;

    move-result-object v0

    .line 742
    .local v0, "doc":Lorg/jsoup/nodes/Document;
    invoke-virtual {v0}, Lorg/jsoup/nodes/Document;->title()Ljava/lang/String;

    move-result-object v1

    .line 743
    .local v1, "html_title":Ljava/lang/String;
    const-string v8, "a"

    invoke-virtual {v0, v8}, Lorg/jsoup/nodes/Document;->getElementsByTag(Ljava/lang/String;)Lorg/jsoup/select/Elements;

    move-result-object v8

    invoke-virtual {v8}, Lorg/jsoup/select/Elements;->first()Lorg/jsoup/nodes/Element;

    move-result-object v3

    .line 744
    .local v3, "link":Lorg/jsoup/nodes/Element;
    const-string v8, "href"

    invoke-virtual {v3, v8}, Lorg/jsoup/nodes/Element;->attr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 745
    .local v4, "linkHref":Ljava/lang/String;
    invoke-virtual {v3}, Lorg/jsoup/nodes/Element;->text()Ljava/lang/String;

    move-result-object v5

    .line 747
    .local v5, "linkText":Ljava/lang/String;
    if-eqz v1, :cond_1

    const-string v8, "Redirect"

    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 748
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V

    .line 749
    invoke-virtual {v6}, Ljava/io/BufferedReader;->close()V

    .line 754
    .end local v4    # "linkHref":Ljava/lang/String;
    :goto_1
    return-object v4

    .line 738
    .end local v0    # "doc":Lorg/jsoup/nodes/Document;
    .end local v1    # "html_title":Ljava/lang/String;
    .end local v3    # "link":Lorg/jsoup/nodes/Element;
    .end local v5    # "linkText":Ljava/lang/String;
    :cond_0
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    goto :goto_0

    .line 752
    .restart local v0    # "doc":Lorg/jsoup/nodes/Document;
    .restart local v1    # "html_title":Ljava/lang/String;
    .restart local v3    # "link":Lorg/jsoup/nodes/Element;
    .restart local v4    # "linkHref":Ljava/lang/String;
    .restart local v5    # "linkText":Ljava/lang/String;
    :cond_1
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V

    .line 753
    invoke-virtual {v6}, Ljava/io/BufferedReader;->close()V

    .line 754
    const/4 v4, 0x0

    goto :goto_1
.end method

.method public doAunthenticaterRequest(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/iwifi/sdk/chinanet/wispr/IWlanAuthenRequestCallback;)V
    .locals 9
    .param p1, "username"    # Ljava/lang/String;
    .param p2, "password"    # Ljava/lang/String;
    .param p3, "login_lat_service"    # Ljava/lang/String;
    .param p4, "callback"    # Lcom/iwifi/sdk/chinanet/wispr/IWlanAuthenRequestCallback;

    .prologue
    .line 184
    const-string v1, "http://www.baidu.com"

    const-string v4, "Login"

    const-string v5, "0"

    const-string v6, "http://www.baidu.com"

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v7, p3

    move-object v8, p4

    invoke-virtual/range {v0 .. v8}, Lcom/iwifi/sdk/chinanet/wispr/WlanRoamingAuthProtocol;->doAunthenticaterRequest(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/iwifi/sdk/chinanet/wispr/IWlanAuthenRequestCallback;)V

    .line 185
    return-void
.end method

.method public doAunthenticaterRequest(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/iwifi/sdk/chinanet/wispr/IWlanAuthenRequestCallback;)V
    .locals 10
    .param p1, "request_url"    # Ljava/lang/String;
    .param p2, "username"    # Ljava/lang/String;
    .param p3, "password"    # Ljava/lang/String;
    .param p4, "btn_identify"    # Ljava/lang/String;
    .param p5, "fname"    # Ljava/lang/String;
    .param p6, "org_server"    # Ljava/lang/String;
    .param p7, "login_lat_service"    # Ljava/lang/String;
    .param p8, "callback"    # Lcom/iwifi/sdk/chinanet/wispr/IWlanAuthenRequestCallback;

    .prologue
    .line 215
    move-object/from16 v0, p8

    iput-object v0, p0, Lcom/iwifi/sdk/chinanet/wispr/WlanRoamingAuthProtocol;->callback:Lcom/iwifi/sdk/chinanet/wispr/IWlanAuthenRequestCallback;

    .line 216
    new-instance v1, Lcom/iwifi/sdk/chinanet/wispr/WlanRoamingAuthProtocol$3;

    move-object v2, p0

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object v9, p1

    invoke-direct/range {v1 .. v9}, Lcom/iwifi/sdk/chinanet/wispr/WlanRoamingAuthProtocol$3;-><init>(Lcom/iwifi/sdk/chinanet/wispr/WlanRoamingAuthProtocol;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 240
    invoke-virtual {v1}, Lcom/iwifi/sdk/chinanet/wispr/WlanRoamingAuthProtocol$3;->start()V

    .line 241
    return-void
.end method

.method public doLogOffRequest(Ljava/lang/String;Ljava/lang/String;Lcom/iwifi/sdk/chinanet/wispr/IWlanAuthenRequestCallback;)V
    .locals 1
    .param p1, "logoff_url"    # Ljava/lang/String;
    .param p2, "username"    # Ljava/lang/String;
    .param p3, "callback"    # Lcom/iwifi/sdk/chinanet/wispr/IWlanAuthenRequestCallback;

    .prologue
    .line 251
    iput-object p3, p0, Lcom/iwifi/sdk/chinanet/wispr/WlanRoamingAuthProtocol;->callback:Lcom/iwifi/sdk/chinanet/wispr/IWlanAuthenRequestCallback;

    .line 252
    new-instance v0, Lcom/iwifi/sdk/chinanet/wispr/WlanRoamingAuthProtocol$4;

    invoke-direct {v0, p0, p2, p1}, Lcom/iwifi/sdk/chinanet/wispr/WlanRoamingAuthProtocol$4;-><init>(Lcom/iwifi/sdk/chinanet/wispr/WlanRoamingAuthProtocol;Ljava/lang/String;Ljava/lang/String;)V

    .line 271
    invoke-virtual {v0}, Lcom/iwifi/sdk/chinanet/wispr/WlanRoamingAuthProtocol$4;->start()V

    .line 272
    return-void
.end method
