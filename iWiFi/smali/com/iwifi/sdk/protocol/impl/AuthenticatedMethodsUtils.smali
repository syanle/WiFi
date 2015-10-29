.class public Lcom/iwifi/sdk/protocol/impl/AuthenticatedMethodsUtils;
.super Lcom/iwifi/sdk/tools/HttpUtil;
.source "AuthenticatedMethodsUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/iwifi/sdk/protocol/impl/AuthenticatedMethodsUtils$AuthenResultInfo;,
        Lcom/iwifi/sdk/protocol/impl/AuthenticatedMethodsUtils$LogoffResultInfo;,
        Lcom/iwifi/sdk/protocol/impl/AuthenticatedMethodsUtils$PostEntityTypeEnum;
    }
.end annotation


# static fields
.field private static synthetic $SWITCH_TABLE$com$iwifi$sdk$protocol$impl$AuthenticatedMethodsUtils$PostEntityTypeEnum:[I = null

.field public static final AC_USERNAME_SUFFIX:Ljava/lang/String; = "@51iwifi.com"

.field public static final AUTHEN_TYPE_AAA:Ljava/lang/String; = "AAA_AUTH"

.field public static final AUTHEN_TYPE_AC:Ljava/lang/String; = "AC_AUTH"

.field public static final AUTHEN_TYPE_AP:Ljava/lang/String; = "AP_AUTH"

.field public static final AUTHEN_TYPE_THIRD:Ljava/lang/String; = "THIRD_AUTH"


# direct methods
.method static synthetic $SWITCH_TABLE$com$iwifi$sdk$protocol$impl$AuthenticatedMethodsUtils$PostEntityTypeEnum()[I
    .locals 3

    .prologue
    .line 44
    sget-object v0, Lcom/iwifi/sdk/protocol/impl/AuthenticatedMethodsUtils;->$SWITCH_TABLE$com$iwifi$sdk$protocol$impl$AuthenticatedMethodsUtils$PostEntityTypeEnum:[I

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/iwifi/sdk/protocol/impl/AuthenticatedMethodsUtils$PostEntityTypeEnum;->values()[Lcom/iwifi/sdk/protocol/impl/AuthenticatedMethodsUtils$PostEntityTypeEnum;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/iwifi/sdk/protocol/impl/AuthenticatedMethodsUtils$PostEntityTypeEnum;->POST_ENTITY_TYPE_None:Lcom/iwifi/sdk/protocol/impl/AuthenticatedMethodsUtils$PostEntityTypeEnum;

    invoke-virtual {v1}, Lcom/iwifi/sdk/protocol/impl/AuthenticatedMethodsUtils$PostEntityTypeEnum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_2

    :goto_1
    :try_start_1
    sget-object v1, Lcom/iwifi/sdk/protocol/impl/AuthenticatedMethodsUtils$PostEntityTypeEnum;->POST_ENTITY_TYPE_StringEntity:Lcom/iwifi/sdk/protocol/impl/AuthenticatedMethodsUtils$PostEntityTypeEnum;

    invoke-virtual {v1}, Lcom/iwifi/sdk/protocol/impl/AuthenticatedMethodsUtils$PostEntityTypeEnum;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :goto_2
    :try_start_2
    sget-object v1, Lcom/iwifi/sdk/protocol/impl/AuthenticatedMethodsUtils$PostEntityTypeEnum;->POST_ENTITY_TYPE_UrlEncodedFormEntity:Lcom/iwifi/sdk/protocol/impl/AuthenticatedMethodsUtils$PostEntityTypeEnum;

    invoke-virtual {v1}, Lcom/iwifi/sdk/protocol/impl/AuthenticatedMethodsUtils$PostEntityTypeEnum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_0

    :goto_3
    sput-object v0, Lcom/iwifi/sdk/protocol/impl/AuthenticatedMethodsUtils;->$SWITCH_TABLE$com$iwifi$sdk$protocol$impl$AuthenticatedMethodsUtils$PostEntityTypeEnum:[I

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_3

    :catch_1
    move-exception v1

    goto :goto_2

    :catch_2
    move-exception v1

    goto :goto_1
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 58
    invoke-direct {p0}, Lcom/iwifi/sdk/tools/HttpUtil;-><init>()V

    .line 60
    return-void
.end method

.method private AC_syncPostConnection(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;
    .locals 19
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "method"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
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
    .line 803
    .local p3, "paramList":Ljava/util/List;, "Ljava/util/List<Lcom/iwifi/sdk/tools/DataObject;>;"
    const-string v17, ""

    .line 807
    .local v17, "result_json":Ljava/lang/String;
    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    :try_start_0
    sget-object v7, Lcom/iwifi/sdk/protocol/impl/AuthenticatedMethodsUtils$PostEntityTypeEnum;->POST_ENTITY_TYPE_UrlEncodedFormEntity:Lcom/iwifi/sdk/protocol/impl/AuthenticatedMethodsUtils$PostEntityTypeEnum;

    const/4 v9, 0x0

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v8, p3

    invoke-virtual/range {v1 .. v9}, Lcom/iwifi/sdk/protocol/impl/AuthenticatedMethodsUtils;->syncPostConnect(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Lcom/iwifi/sdk/protocol/impl/AuthenticatedMethodsUtils$PostEntityTypeEnum;Ljava/util/List;Ljava/lang/String;)Lorg/apache/http/HttpResponse;

    move-result-object v15

    .line 808
    .local v15, "httpRsp":Lorg/apache/http/HttpResponse;
    if-eqz v15, :cond_4

    .line 809
    invoke-interface {v15}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/http/StatusLine;->getStatusCode()I
    :try_end_0
    .catch Lorg/apache/http/conn/HttpHostConnectException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v18

    .line 811
    .local v18, "status_code":I
    const/16 v1, 0xc8

    move/from16 v0, v18

    if-ne v0, v1, :cond_3

    .line 813
    :try_start_1
    const-string v1, "Content-type"

    invoke-interface {v15, v1}, Lorg/apache/http/HttpResponse;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v14

    .line 814
    .local v14, "httpHeader":Lorg/apache/http/Header;
    if-eqz v14, :cond_1

    invoke-interface {v14}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-interface {v14}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v1

    const-string v2, "text/html"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 817
    invoke-interface {v15}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v16

    .line 819
    .local v16, "instream":Ljava/io/InputStream;
    invoke-static/range {v16 .. v16}, Lcom/iwifi/sdk/protocol/impl/SDKCommonMotheds;->JSoupHTMLParse(Ljava/io/InputStream;)Lorg/jsoup/nodes/Document;

    move-result-object v10

    .line 820
    .local v10, "doc":Lorg/jsoup/nodes/Document;
    const-string v1, "body"

    invoke-virtual {v10, v1}, Lorg/jsoup/nodes/Document;->getElementsByTag(Ljava/lang/String;)Lorg/jsoup/select/Elements;

    move-result-object v13

    .line 821
    .local v13, "elements":Lorg/jsoup/select/Elements;
    if-eqz v13, :cond_0

    .line 822
    invoke-virtual {v13}, Lorg/jsoup/select/Elements;->text()Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lorg/apache/http/conn/HttpHostConnectException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v17

    .line 851
    .end local v10    # "doc":Lorg/jsoup/nodes/Document;
    .end local v13    # "elements":Lorg/jsoup/select/Elements;
    .end local v14    # "httpHeader":Lorg/apache/http/Header;
    .end local v15    # "httpRsp":Lorg/apache/http/HttpResponse;
    .end local v16    # "instream":Ljava/io/InputStream;
    .end local v18    # "status_code":I
    :goto_0
    const-string v1, "iWiFiSDK|Common API|AC_syncPostConnection"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "result: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v17

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/iwifi/sdk/tools/Logger;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 853
    return-object v17

    .line 824
    .restart local v10    # "doc":Lorg/jsoup/nodes/Document;
    .restart local v13    # "elements":Lorg/jsoup/select/Elements;
    .restart local v14    # "httpHeader":Lorg/apache/http/Header;
    .restart local v15    # "httpRsp":Lorg/apache/http/HttpResponse;
    .restart local v16    # "instream":Ljava/io/InputStream;
    .restart local v18    # "status_code":I
    :cond_0
    :try_start_2
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "{\"result\":\"FAIL\",\"message\":\"HTML\'s content cann\'t be recognized. That is:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10}, Lorg/jsoup/nodes/Document;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\"}"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    .line 825
    goto :goto_0

    .line 826
    .end local v10    # "doc":Lorg/jsoup/nodes/Document;
    .end local v13    # "elements":Lorg/jsoup/select/Elements;
    .end local v16    # "instream":Ljava/io/InputStream;
    :cond_1
    if-eqz v14, :cond_2

    invoke-interface {v14}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-interface {v14}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v1

    const-string v2, "application/json"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 828
    invoke-interface {v15}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v1

    invoke-static {v1}, Lorg/apache/http/util/EntityUtils;->toString(Lorg/apache/http/HttpEntity;)Ljava/lang/String;

    move-result-object v17

    .line 829
    goto :goto_0

    .line 831
    :cond_2
    const-string v17, "{\"result\":\"FAIL\",\"message\":\"Http response is either HTML or Json \"}"
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catch Lorg/apache/http/conn/HttpHostConnectException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 832
    .end local v14    # "httpHeader":Lorg/apache/http/Header;
    :catch_0
    move-exception v11

    .line 833
    .local v11, "e":Ljava/lang/Exception;
    :try_start_3
    invoke-virtual {v11}, Ljava/lang/Exception;->printStackTrace()V

    .line 834
    const-string v1, "iWiFiSDK|Common API|syncPostConnect"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Post request error: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/iwifi/sdk/tools/Logger;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 835
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "{\"result\":\"FAIL\",\"message\":\"Http status code is 200, but parsing error: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\"}"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    .line 837
    goto/16 :goto_0

    .line 839
    .end local v11    # "e":Ljava/lang/Exception;
    :cond_3
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "{\"result\":\"FAIL\",\"message\":\"Http status code is :"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move/from16 v0, v18

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\"}"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    .line 841
    goto/16 :goto_0

    .line 842
    .end local v18    # "status_code":I
    :cond_4
    const-string v17, "{\"result\":\"FAIL\",\"message\":\"Http Post Failed response none. \"}"
    :try_end_3
    .catch Lorg/apache/http/conn/HttpHostConnectException; {:try_start_3 .. :try_end_3} :catch_1

    goto/16 :goto_0

    .line 844
    .end local v15    # "httpRsp":Lorg/apache/http/HttpResponse;
    :catch_1
    move-exception v12

    .line 846
    .local v12, "e1":Lorg/apache/http/conn/HttpHostConnectException;
    invoke-virtual {v12}, Lorg/apache/http/conn/HttpHostConnectException;->printStackTrace()V

    .line 847
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "{\"result\":\"FAIL\",\"message\":\"Http Post Failed :"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12}, Lorg/apache/http/conn/HttpHostConnectException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\"}"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    goto/16 :goto_0
.end method

.method private Third_SecondAuthGetConnection(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;
    .locals 6
    .param p1, "url"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .local p2, "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v3, 0x0

    .line 887
    const-string v1, ""

    .line 890
    .local v1, "result_json":Ljava/lang/String;
    invoke-virtual {p0, p1, v3, v3, v3}, Lcom/iwifi/sdk/protocol/impl/AuthenticatedMethodsUtils;->syncGetConnect(Ljava/lang/String;Ljava/util/Map;Lorg/apache/http/params/HttpParams;Lorg/apache/http/client/CookieStore;)Lorg/apache/http/HttpResponse;

    move-result-object v0

    .line 891
    .local v0, "httpRsp":Lorg/apache/http/HttpResponse;
    if-eqz v0, :cond_1

    .line 892
    invoke-interface {v0}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v3

    invoke-interface {v3}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v2

    .line 894
    .local v2, "status_code":I
    const/16 v3, 0xc8

    if-ne v2, v3, :cond_0

    .line 895
    const-string v1, "{\"result\":\"OK\",\"message\":\"Success\"}"

    .line 905
    .end local v2    # "status_code":I
    :goto_0
    const-string v3, "iWiFiSDK|Common API|Third_SecondAuthGetConnection"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "result: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/iwifi/sdk/tools/Logger;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 907
    return-object v1

    .line 898
    .restart local v2    # "status_code":I
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "{\"result\":\"FAIL\",\"message\":\"Http status code is :"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\"}"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 900
    goto :goto_0

    .line 901
    .end local v2    # "status_code":I
    :cond_1
    const-string v1, "{\"result\":\"FAIL\",\"message\":\"Http Get Failed response none. \"}"

    goto :goto_0
.end method

.method private Third_SecondAuthPostConnection(Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;
    .locals 13
    .param p1, "url"    # Ljava/lang/String;
    .param p3, "stringEntity"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 858
    .local p2, "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v11, ""

    .line 862
    .local v11, "result_json":Ljava/lang/String;
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    :try_start_0
    sget-object v6, Lcom/iwifi/sdk/protocol/impl/AuthenticatedMethodsUtils$PostEntityTypeEnum;->POST_ENTITY_TYPE_StringEntity:Lcom/iwifi/sdk/protocol/impl/AuthenticatedMethodsUtils$PostEntityTypeEnum;

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v5, p2

    move-object/from16 v8, p3

    invoke-virtual/range {v0 .. v8}, Lcom/iwifi/sdk/protocol/impl/AuthenticatedMethodsUtils;->syncPostConnect(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Lcom/iwifi/sdk/protocol/impl/AuthenticatedMethodsUtils$PostEntityTypeEnum;Ljava/util/List;Ljava/lang/String;)Lorg/apache/http/HttpResponse;

    move-result-object v10

    .line 863
    .local v10, "httpRsp":Lorg/apache/http/HttpResponse;
    if-eqz v10, :cond_1

    .line 864
    invoke-interface {v10}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v12

    .line 866
    .local v12, "status_code":I
    const/16 v0, 0xc8

    if-ne v12, v0, :cond_0

    .line 867
    const-string v11, "{\"result\":\"OK\",\"message\":\"Success\"}"
    :try_end_0
    .catch Lorg/apache/http/conn/HttpHostConnectException; {:try_start_0 .. :try_end_0} :catch_0

    .line 880
    .end local v10    # "httpRsp":Lorg/apache/http/HttpResponse;
    .end local v12    # "status_code":I
    :goto_0
    const-string v0, "iWiFiSDK|Common API|Third_SecondAuthPostConnection"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "result: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/iwifi/sdk/tools/Logger;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 882
    return-object v11

    .line 870
    .restart local v10    # "httpRsp":Lorg/apache/http/HttpResponse;
    .restart local v12    # "status_code":I
    :cond_0
    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "{\"result\":\"FAIL\",\"message\":\"Http status code is :"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\"}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 872
    goto :goto_0

    .line 873
    .end local v12    # "status_code":I
    :cond_1
    const-string v11, "{\"result\":\"FAIL\",\"message\":\"Http Post Failed response none. \"}"
    :try_end_1
    .catch Lorg/apache/http/conn/HttpHostConnectException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 875
    .end local v10    # "httpRsp":Lorg/apache/http/HttpResponse;
    :catch_0
    move-exception v9

    .line 877
    .local v9, "e1":Lorg/apache/http/conn/HttpHostConnectException;
    invoke-virtual {v9}, Lorg/apache/http/conn/HttpHostConnectException;->printStackTrace()V

    .line 878
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "{\"result\":\"FAIL\",\"message\":\"Http Post Failed :"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9}, Lorg/apache/http/conn/HttpHostConnectException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\"}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    goto :goto_0
.end method


# virtual methods
.method public AC_sync_LoginAuthen(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/iwifi/sdk/protocol/impl/AuthenticatedMethodsUtils$AuthenResultInfo;
    .locals 15
    .param p1, "phoneNum"    # Ljava/lang/String;
    .param p2, "dev_id"    # Ljava/lang/String;
    .param p3, "authKey"    # Ljava/lang/String;
    .param p4, "ter_ip"    # Ljava/lang/String;
    .param p5, "ac_name"    # Ljava/lang/String;
    .param p6, "ac_host_url"    # Ljava/lang/String;

    .prologue
    .line 275
    new-instance v14, Lcom/iwifi/sdk/protocol/impl/AuthenticatedMethodsUtils$AuthenResultInfo;

    invoke-direct {v14, p0}, Lcom/iwifi/sdk/protocol/impl/AuthenticatedMethodsUtils$AuthenResultInfo;-><init>(Lcom/iwifi/sdk/protocol/impl/AuthenticatedMethodsUtils;)V

    .line 276
    .local v14, "result":Lcom/iwifi/sdk/protocol/impl/AuthenticatedMethodsUtils$AuthenResultInfo;
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 283
    .local v13, "paramList":Ljava/util/List;, "Ljava/util/List<Lcom/iwifi/sdk/tools/DataObject;>;"
    new-instance v1, Lcom/iwifi/sdk/tools/DataObject;

    const-string v3, "auth_id"

    move-object/from16 v0, p1

    invoke-direct {v1, v3, v0}, Lcom/iwifi/sdk/tools/DataObject;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v13, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 284
    new-instance v1, Lcom/iwifi/sdk/tools/DataObject;

    const-string v3, "token"

    move-object/from16 v0, p3

    invoke-direct {v1, v3, v0}, Lcom/iwifi/sdk/tools/DataObject;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v13, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 285
    new-instance v1, Lcom/iwifi/sdk/tools/DataObject;

    const-string v3, "ac_name"

    move-object/from16 v0, p5

    invoke-direct {v1, v3, v0}, Lcom/iwifi/sdk/tools/DataObject;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v13, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 286
    new-instance v1, Lcom/iwifi/sdk/tools/DataObject;

    const-string v3, "ter_ip"

    move-object/from16 v0, p4

    invoke-direct {v1, v3, v0}, Lcom/iwifi/sdk/tools/DataObject;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v13, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 287
    const-string v1, "auth/appaciauth"

    move-object/from16 v0, p6

    invoke-direct {p0, v0, v1, v13}, Lcom/iwifi/sdk/protocol/impl/AuthenticatedMethodsUtils;->AC_syncPostConnection(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;

    move-result-object v11

    .line 289
    .local v11, "json_res":Ljava/lang/String;
    if-eqz v11, :cond_2

    .line 291
    :try_start_0
    invoke-static {v11}, Lcom/iwifi/sdk/parser/GetCodeResultParser;->GetJsonObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v10

    .line 292
    .local v10, "jsonObject":Lorg/json/JSONObject;
    const-string v1, "result"

    invoke-virtual {v10, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "OK"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 293
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "{\"result\":\"OK\",\"message\":\"AC \u8ba4\u8bc1\u6210\u529f\",\"logoffUrl\":\""

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p6

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "\",\"ac_name\":\""

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v0, p5

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "\"}"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 294
    .local v2, "json":Ljava/lang/String;
    const-string v3, "AC_AUTH"

    const/4 v5, 0x0

    const/4 v7, 0x0

    const-string v8, ""

    move-object v1, p0

    move-object/from16 v4, p2

    move-object/from16 v6, p3

    invoke-virtual/range {v1 .. v8}, Lcom/iwifi/sdk/protocol/impl/AuthenticatedMethodsUtils;->generateAuthResultJson(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v14, Lcom/iwifi/sdk/protocol/impl/AuthenticatedMethodsUtils$AuthenResultInfo;->auth_resultInfo:Ljava/lang/String;

    .line 295
    const/4 v1, 0x1

    iput-boolean v1, v14, Lcom/iwifi/sdk/protocol/impl/AuthenticatedMethodsUtils$AuthenResultInfo;->auth_status:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 317
    .end local v10    # "jsonObject":Lorg/json/JSONObject;
    :goto_0
    const-string v1, "iWiFiSDK|Authentication|AC_sync_LoginAuthen"

    .line 318
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "phone="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 319
    const-string v4, "&token="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 320
    const-string v4, "&ac_name="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p5

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 321
    const-string v4, "&ter_ip="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p4

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 322
    const-string v4, " | result: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v14, Lcom/iwifi/sdk/protocol/impl/AuthenticatedMethodsUtils$AuthenResultInfo;->auth_resultInfo:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 318
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 317
    invoke-static {v1, v3}, Lcom/iwifi/sdk/tools/Logger;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 323
    return-object v14

    .line 297
    .end local v2    # "json":Ljava/lang/String;
    .restart local v10    # "jsonObject":Lorg/json/JSONObject;
    :cond_0
    :try_start_1
    const-string v12, "Authentication Failed"

    .line 298
    .local v12, "message":Ljava/lang/String;
    const-string v1, "message"

    invoke-virtual {v11, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 299
    const-string v1, "message"

    invoke-virtual {v10, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 300
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "{\"result\":\"FAIL\",\"message\":\"AC \u8ba4\u8bc1\u5931\u8d25:"

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "\",\"logoffUrl\":\""

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v0, p6

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "\",\"ac_name\":\""

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v0, p5

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "\"}"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 301
    .restart local v2    # "json":Ljava/lang/String;
    const-string v3, "AP_AUTH"

    const/4 v5, 0x0

    const/4 v7, 0x0

    const-string v8, ""

    move-object v1, p0

    move-object/from16 v4, p2

    move-object/from16 v6, p3

    invoke-virtual/range {v1 .. v8}, Lcom/iwifi/sdk/protocol/impl/AuthenticatedMethodsUtils;->generateAuthResultJson(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v14, Lcom/iwifi/sdk/protocol/impl/AuthenticatedMethodsUtils$AuthenResultInfo;->auth_resultInfo:Ljava/lang/String;

    .line 302
    const/4 v1, 0x0

    iput-boolean v1, v14, Lcom/iwifi/sdk/protocol/impl/AuthenticatedMethodsUtils$AuthenResultInfo;->auth_status:Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    .line 304
    .end local v2    # "json":Ljava/lang/String;
    .end local v10    # "jsonObject":Lorg/json/JSONObject;
    .end local v12    # "message":Ljava/lang/String;
    :catch_0
    move-exception v9

    .line 305
    .local v9, "e":Ljava/lang/Exception;
    invoke-virtual {v9}, Ljava/lang/Exception;->printStackTrace()V

    .line 306
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "{\"result\":\"FAIL\",\"message\":\"Json error :"

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "\",\"logoffUrl\":\""

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v0, p6

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "\",\"ac_name\":\""

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v0, p5

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "\"}"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 307
    .restart local v2    # "json":Ljava/lang/String;
    const-string v3, "AP_AUTH"

    const/4 v5, 0x0

    const/4 v7, 0x0

    const-string v8, ""

    move-object v1, p0

    move-object/from16 v4, p2

    move-object/from16 v6, p3

    invoke-virtual/range {v1 .. v8}, Lcom/iwifi/sdk/protocol/impl/AuthenticatedMethodsUtils;->generateAuthResultJson(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v14, Lcom/iwifi/sdk/protocol/impl/AuthenticatedMethodsUtils$AuthenResultInfo;->auth_resultInfo:Ljava/lang/String;

    .line 308
    const/4 v1, 0x0

    iput-boolean v1, v14, Lcom/iwifi/sdk/protocol/impl/AuthenticatedMethodsUtils$AuthenResultInfo;->auth_status:Z

    goto/16 :goto_0

    .line 312
    .end local v2    # "json":Ljava/lang/String;
    .end local v9    # "e":Ljava/lang/Exception;
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "{\"result\":\"FAIL\",\"message\":\"\u8bf7\u6c42\u8d85\u65f6\",\"logoffUrl\":\""

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p6

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "\",\"ac_name\":\""

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v0, p5

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "\"}"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 313
    .restart local v2    # "json":Ljava/lang/String;
    const-string v3, "AP_AUTH"

    const/4 v5, 0x0

    const/4 v7, 0x0

    const-string v8, ""

    move-object v1, p0

    move-object/from16 v4, p2

    move-object/from16 v6, p3

    invoke-virtual/range {v1 .. v8}, Lcom/iwifi/sdk/protocol/impl/AuthenticatedMethodsUtils;->generateAuthResultJson(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v14, Lcom/iwifi/sdk/protocol/impl/AuthenticatedMethodsUtils$AuthenResultInfo;->auth_resultInfo:Ljava/lang/String;

    .line 314
    const/4 v1, 0x0

    iput-boolean v1, v14, Lcom/iwifi/sdk/protocol/impl/AuthenticatedMethodsUtils$AuthenResultInfo;->auth_status:Z

    goto/16 :goto_0
.end method

.method public AC_sync_LogoffReq(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/iwifi/sdk/protocol/impl/AuthenticatedMethodsUtils$LogoffResultInfo;
    .locals 9
    .param p1, "ac_name"    # Ljava/lang/String;
    .param p2, "ter_ip"    # Ljava/lang/String;
    .param p3, "host_url"    # Ljava/lang/String;

    .prologue
    const/4 v8, 0x0

    .line 466
    new-instance v4, Lcom/iwifi/sdk/protocol/impl/AuthenticatedMethodsUtils$LogoffResultInfo;

    invoke-direct {v4, p0}, Lcom/iwifi/sdk/protocol/impl/AuthenticatedMethodsUtils$LogoffResultInfo;-><init>(Lcom/iwifi/sdk/protocol/impl/AuthenticatedMethodsUtils;)V

    .line 467
    .local v4, "result":Lcom/iwifi/sdk/protocol/impl/AuthenticatedMethodsUtils$LogoffResultInfo;
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 468
    .local v3, "paramList":Ljava/util/List;, "Ljava/util/List<Lcom/iwifi/sdk/tools/DataObject;>;"
    new-instance v6, Lcom/iwifi/sdk/tools/DataObject;

    const-string v7, "ac_name"

    invoke-direct {v6, v7, p1}, Lcom/iwifi/sdk/tools/DataObject;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 469
    new-instance v6, Lcom/iwifi/sdk/tools/DataObject;

    const-string v7, "ter_ip"

    invoke-direct {v6, v7, p2}, Lcom/iwifi/sdk/tools/DataObject;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 470
    const-string v6, "auth/appacilogout"

    invoke-direct {p0, p3, v6, v3}, Lcom/iwifi/sdk/protocol/impl/AuthenticatedMethodsUtils;->AC_syncPostConnection(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;

    move-result-object v5

    .line 472
    .local v5, "result_json":Ljava/lang/String;
    if-eqz v5, :cond_3

    .line 474
    :try_start_0
    invoke-static {v5}, Lcom/iwifi/sdk/parser/GetCodeResultParser;->GetJsonObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 475
    .local v1, "jsonObject":Lorg/json/JSONObject;
    const-string v6, "result"

    invoke-virtual {v1, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "OK"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 476
    const-string v2, "Logoff Failed"

    .line 477
    .local v2, "message":Ljava/lang/String;
    const-string v6, "message"

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 478
    const-string v6, "message"

    invoke-virtual {v1, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 479
    :cond_0
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "{\"result\":\"FAIL\",\"message\":\""

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\"}"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v4, Lcom/iwifi/sdk/protocol/impl/AuthenticatedMethodsUtils$LogoffResultInfo;->logoff_resultInfo:Ljava/lang/String;

    .line 480
    const/4 v6, 0x0

    iput-boolean v6, v4, Lcom/iwifi/sdk/protocol/impl/AuthenticatedMethodsUtils$LogoffResultInfo;->logoff_status:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 501
    .end local v1    # "jsonObject":Lorg/json/JSONObject;
    .end local v2    # "message":Ljava/lang/String;
    :goto_0
    const-string v6, "iWiFiSDK|Logoff|AC_sync_LogoffReq"

    .line 502
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "ac_name="

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 503
    const-string v8, "&ter_ip="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 504
    const-string v8, "&host_url="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 505
    const-string v8, " | result: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, v4, Lcom/iwifi/sdk/protocol/impl/AuthenticatedMethodsUtils$LogoffResultInfo;->logoff_resultInfo:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 502
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 501
    invoke-static {v6, v7}, Lcom/iwifi/sdk/tools/Logger;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 507
    return-object v4

    .line 483
    .restart local v1    # "jsonObject":Lorg/json/JSONObject;
    :cond_1
    :try_start_1
    const-string v2, "Logoff Success"

    .line 484
    .restart local v2    # "message":Ljava/lang/String;
    const-string v6, "message"

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 485
    const-string v6, "message"

    invoke-virtual {v1, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 486
    :cond_2
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "{\"result\":\"OK\",\"message\":\""

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\"}"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v4, Lcom/iwifi/sdk/protocol/impl/AuthenticatedMethodsUtils$LogoffResultInfo;->logoff_resultInfo:Ljava/lang/String;

    .line 487
    const/4 v6, 0x1

    iput-boolean v6, v4, Lcom/iwifi/sdk/protocol/impl/AuthenticatedMethodsUtils$LogoffResultInfo;->logoff_status:Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 490
    .end local v1    # "jsonObject":Lorg/json/JSONObject;
    .end local v2    # "message":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 491
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 492
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "{\"result\":\"FAIL\",\"message\":\"Json error :"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\"}"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v4, Lcom/iwifi/sdk/protocol/impl/AuthenticatedMethodsUtils$LogoffResultInfo;->logoff_resultInfo:Ljava/lang/String;

    .line 493
    iput-boolean v8, v4, Lcom/iwifi/sdk/protocol/impl/AuthenticatedMethodsUtils$LogoffResultInfo;->logoff_status:Z

    goto/16 :goto_0

    .line 497
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_3
    const-string v6, "{\"result\":\"FAIL\",\"message\":\"\u8bf7\u6c42\u8d85\u65f6\"}"

    iput-object v6, v4, Lcom/iwifi/sdk/protocol/impl/AuthenticatedMethodsUtils$LogoffResultInfo;->logoff_resultInfo:Ljava/lang/String;

    .line 498
    iput-boolean v8, v4, Lcom/iwifi/sdk/protocol/impl/AuthenticatedMethodsUtils$LogoffResultInfo;->logoff_status:Z

    goto/16 :goto_0
.end method

.method public AP_sync_LoginAuthen(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/iwifi/sdk/protocol/impl/AuthenticatedMethodsUtils$AuthenResultInfo;
    .locals 14
    .param p1, "ipGateway"    # Ljava/lang/String;
    .param p2, "phoneNum"    # Ljava/lang/String;
    .param p3, "authKey"    # Ljava/lang/String;
    .param p4, "devType"    # Ljava/lang/String;
    .param p5, "devId"    # Ljava/lang/String;
    .param p6, "url"    # Ljava/lang/String;

    .prologue
    .line 216
    new-instance v13, Lcom/iwifi/sdk/protocol/impl/AuthenticatedMethodsUtils$AuthenResultInfo;

    invoke-direct {v13, p0}, Lcom/iwifi/sdk/protocol/impl/AuthenticatedMethodsUtils$AuthenResultInfo;-><init>(Lcom/iwifi/sdk/protocol/impl/AuthenticatedMethodsUtils;)V

    .line 217
    .local v13, "result":Lcom/iwifi/sdk/protocol/impl/AuthenticatedMethodsUtils$AuthenResultInfo;
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 218
    .local v12, "paramList":Ljava/util/List;, "Ljava/util/List<Lcom/iwifi/sdk/tools/DataObject;>;"
    new-instance v1, Lcom/iwifi/sdk/tools/DataObject;

    const-string v3, "phone"

    move-object/from16 v0, p2

    invoke-direct {v1, v3, v0}, Lcom/iwifi/sdk/tools/DataObject;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v12, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 219
    new-instance v1, Lcom/iwifi/sdk/tools/DataObject;

    const-string v3, "token"

    move-object/from16 v0, p3

    invoke-direct {v1, v3, v0}, Lcom/iwifi/sdk/tools/DataObject;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v12, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 220
    new-instance v1, Lcom/iwifi/sdk/tools/DataObject;

    const-string v3, "dev_type"

    move-object/from16 v0, p4

    invoke-direct {v1, v3, v0}, Lcom/iwifi/sdk/tools/DataObject;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v12, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 221
    new-instance v1, Lcom/iwifi/sdk/tools/DataObject;

    const-string v3, "dev_id"

    move-object/from16 v0, p5

    invoke-direct {v1, v3, v0}, Lcom/iwifi/sdk/tools/DataObject;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v12, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 222
    new-instance v1, Lcom/iwifi/sdk/tools/DataObject;

    const-string v3, "url"

    move-object/from16 v0, p6

    invoke-direct {v1, v3, v0}, Lcom/iwifi/sdk/tools/DataObject;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v12, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 223
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "http://"

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ":2060/"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "smartwifi/auth"

    const-string v4, ""

    invoke-virtual {p0, v1, v3, v4, v12}, Lcom/iwifi/sdk/protocol/impl/AuthenticatedMethodsUtils;->syncConnect(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;

    move-result-object v9

    .line 224
    .local v9, "ap_result_json":Ljava/lang/String;
    if-eqz v9, :cond_1

    .line 226
    :try_start_0
    invoke-static {v9}, Lcom/iwifi/sdk/parser/GetCodeResultParser;->GetJsonObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v11

    .line 227
    .local v11, "jsonObject":Lorg/json/JSONObject;
    const-string v1, "message"

    invoke-virtual {v9, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "message"

    invoke-virtual {v11, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sget-object v3, Lcom/iwifi/sdk/protocol/impl/AuthenticatedMethodsUtils;->iWiFi20_AUTHEN_STR:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 228
    const-string v2, "{\"result\":\"OK\",\"message\":\"\u8ba4\u8bc1\u6210\u529f\"}"

    .line 229
    .local v2, "json":Ljava/lang/String;
    const-string v3, "AP_AUTH"

    const/4 v5, 0x0

    const/4 v7, 0x0

    const-string v8, ""

    move-object v1, p0

    move-object/from16 v4, p5

    move-object/from16 v6, p3

    invoke-virtual/range {v1 .. v8}, Lcom/iwifi/sdk/protocol/impl/AuthenticatedMethodsUtils;->generateAuthResultJson(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v13, Lcom/iwifi/sdk/protocol/impl/AuthenticatedMethodsUtils$AuthenResultInfo;->auth_resultInfo:Ljava/lang/String;

    .line 230
    const/4 v1, 0x1

    iput-boolean v1, v13, Lcom/iwifi/sdk/protocol/impl/AuthenticatedMethodsUtils$AuthenResultInfo;->auth_status:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 250
    .end local v11    # "jsonObject":Lorg/json/JSONObject;
    :goto_0
    const-string v1, "iWiFiSDK|Authentication|AP_sync_LoginAuthen"

    .line 251
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "phone="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p2

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 252
    const-string v4, "&token="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 253
    const-string v4, "&dev_type="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p4

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 254
    const-string v4, "&dev_id="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p5

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 255
    const-string v4, "&url="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p6

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 256
    const-string v4, " | result: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v13, Lcom/iwifi/sdk/protocol/impl/AuthenticatedMethodsUtils$AuthenResultInfo;->auth_resultInfo:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 251
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 250
    invoke-static {v1, v3}, Lcom/iwifi/sdk/tools/Logger;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 257
    return-object v13

    .line 232
    .end local v2    # "json":Ljava/lang/String;
    .restart local v11    # "jsonObject":Lorg/json/JSONObject;
    :cond_0
    :try_start_1
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "{\"result\":\"FAIL\",\"message\":\"\u8ba4\u8bc1\u5931\u8d25:"

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "message"

    invoke-virtual {v11, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "\"}"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 233
    .restart local v2    # "json":Ljava/lang/String;
    const-string v3, "AP_AUTH"

    const/4 v5, 0x0

    const/4 v7, 0x0

    const-string v8, ""

    move-object v1, p0

    move-object/from16 v4, p5

    move-object/from16 v6, p3

    invoke-virtual/range {v1 .. v8}, Lcom/iwifi/sdk/protocol/impl/AuthenticatedMethodsUtils;->generateAuthResultJson(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v13, Lcom/iwifi/sdk/protocol/impl/AuthenticatedMethodsUtils$AuthenResultInfo;->auth_resultInfo:Ljava/lang/String;

    .line 234
    const/4 v1, 0x0

    iput-boolean v1, v13, Lcom/iwifi/sdk/protocol/impl/AuthenticatedMethodsUtils$AuthenResultInfo;->auth_status:Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    .line 236
    .end local v2    # "json":Ljava/lang/String;
    .end local v11    # "jsonObject":Lorg/json/JSONObject;
    :catch_0
    move-exception v10

    .line 237
    .local v10, "e":Ljava/lang/Exception;
    invoke-virtual {v10}, Ljava/lang/Exception;->printStackTrace()V

    .line 238
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "{\"result\":\"FAIL\",\"message\":\"Json error :"

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "\"}"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 239
    .restart local v2    # "json":Ljava/lang/String;
    const-string v3, "AP_AUTH"

    const/4 v5, 0x0

    const/4 v7, 0x0

    const-string v8, ""

    move-object v1, p0

    move-object/from16 v4, p5

    move-object/from16 v6, p3

    invoke-virtual/range {v1 .. v8}, Lcom/iwifi/sdk/protocol/impl/AuthenticatedMethodsUtils;->generateAuthResultJson(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v13, Lcom/iwifi/sdk/protocol/impl/AuthenticatedMethodsUtils$AuthenResultInfo;->auth_resultInfo:Ljava/lang/String;

    .line 240
    const/4 v1, 0x0

    iput-boolean v1, v13, Lcom/iwifi/sdk/protocol/impl/AuthenticatedMethodsUtils$AuthenResultInfo;->auth_status:Z

    goto/16 :goto_0

    .line 244
    .end local v2    # "json":Ljava/lang/String;
    .end local v10    # "e":Ljava/lang/Exception;
    :cond_1
    const-string v2, "{\"result\":\"FAIL\",\"message\":\"\u8bf7\u6c42\u8d85\u65f6\"}"

    .line 245
    .restart local v2    # "json":Ljava/lang/String;
    const-string v3, "AP_AUTH"

    const/4 v5, 0x0

    const/4 v7, 0x0

    const-string v8, ""

    move-object v1, p0

    move-object/from16 v4, p5

    move-object/from16 v6, p3

    invoke-virtual/range {v1 .. v8}, Lcom/iwifi/sdk/protocol/impl/AuthenticatedMethodsUtils;->generateAuthResultJson(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v13, Lcom/iwifi/sdk/protocol/impl/AuthenticatedMethodsUtils$AuthenResultInfo;->auth_resultInfo:Ljava/lang/String;

    .line 246
    const/4 v1, 0x0

    iput-boolean v1, v13, Lcom/iwifi/sdk/protocol/impl/AuthenticatedMethodsUtils$AuthenResultInfo;->auth_status:Z

    goto/16 :goto_0
.end method

.method public Third_sync_LoginAuthen(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/iwifi/sdk/protocol/impl/AuthenticatedMethodsUtils$AuthenResultInfo;
    .locals 28
    .param p1, "phoneNum"    # Ljava/lang/String;
    .param p2, "dev_id"    # Ljava/lang/String;
    .param p3, "appversion"    # Ljava/lang/String;
    .param p4, "ter_mac"    # Ljava/lang/String;
    .param p5, "ter_ip"    # Ljava/lang/String;
    .param p6, "imei"    # Ljava/lang/String;
    .param p7, "token"    # Ljava/lang/String;
    .param p8, "platform_code"    # Ljava/lang/String;
    .param p9, "portal_url"    # Ljava/lang/String;

    .prologue
    .line 351
    new-instance v26, Lcom/iwifi/sdk/protocol/impl/AuthenticatedMethodsUtils$AuthenResultInfo;

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/iwifi/sdk/protocol/impl/AuthenticatedMethodsUtils$AuthenResultInfo;-><init>(Lcom/iwifi/sdk/protocol/impl/AuthenticatedMethodsUtils;)V

    .line 352
    .local v26, "result":Lcom/iwifi/sdk/protocol/impl/AuthenticatedMethodsUtils$AuthenResultInfo;
    new-instance v25, Ljava/util/ArrayList;

    invoke-direct/range {v25 .. v25}, Ljava/util/ArrayList;-><init>()V

    .line 353
    .local v25, "paramList":Ljava/util/List;, "Ljava/util/List<Lcom/iwifi/sdk/tools/DataObject;>;"
    new-instance v3, Lcom/iwifi/sdk/tools/DataObject;

    const-string v5, "auth_id"

    move-object/from16 v0, p1

    invoke-direct {v3, v5, v0}, Lcom/iwifi/sdk/tools/DataObject;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v25

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 354
    new-instance v3, Lcom/iwifi/sdk/tools/DataObject;

    const-string v5, "auth_unqid"

    move-object/from16 v0, p3

    invoke-direct {v3, v5, v0}, Lcom/iwifi/sdk/tools/DataObject;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v25

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 355
    new-instance v3, Lcom/iwifi/sdk/tools/DataObject;

    const-string v5, "auth_type"

    const-string v6, "APPMOBILE"

    invoke-direct {v3, v5, v6}, Lcom/iwifi/sdk/tools/DataObject;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v25

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 356
    new-instance v3, Lcom/iwifi/sdk/tools/DataObject;

    const-string v5, "ter_mac"

    move-object/from16 v0, p4

    invoke-direct {v3, v5, v0}, Lcom/iwifi/sdk/tools/DataObject;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v25

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 357
    new-instance v3, Lcom/iwifi/sdk/tools/DataObject;

    const-string v5, "ter_ip"

    move-object/from16 v0, p5

    invoke-direct {v3, v5, v0}, Lcom/iwifi/sdk/tools/DataObject;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v25

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 358
    new-instance v3, Lcom/iwifi/sdk/tools/DataObject;

    const-string v5, "terminal_type"

    const-string v6, "android"

    invoke-direct {v3, v5, v6}, Lcom/iwifi/sdk/tools/DataObject;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v25

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 359
    new-instance v3, Lcom/iwifi/sdk/tools/DataObject;

    const-string v5, "imei"

    move-object/from16 v0, p6

    invoke-direct {v3, v5, v0}, Lcom/iwifi/sdk/tools/DataObject;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v25

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 360
    new-instance v3, Lcom/iwifi/sdk/tools/DataObject;

    const-string v5, "appauth_type"

    const-string v6, "THIRD_AUTH"

    invoke-direct {v3, v5, v6}, Lcom/iwifi/sdk/tools/DataObject;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v25

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 361
    new-instance v3, Lcom/iwifi/sdk/tools/DataObject;

    const-string v5, "token"

    move-object/from16 v0, p7

    invoke-direct {v3, v5, v0}, Lcom/iwifi/sdk/tools/DataObject;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v25

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 362
    new-instance v3, Lcom/iwifi/sdk/tools/DataObject;

    const-string v5, "platform_code"

    move-object/from16 v0, p8

    invoke-direct {v3, v5, v0}, Lcom/iwifi/sdk/tools/DataObject;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v25

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 363
    new-instance v3, Lcom/iwifi/sdk/tools/DataObject;

    const-string v5, "redirect_params"

    move-object/from16 v0, p9

    invoke-direct {v3, v5, v0}, Lcom/iwifi/sdk/tools/DataObject;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v25

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 364
    sget-object v3, Lcom/iwifi/sdk/protocol/impl/AuthenticatedMethodsUtils;->iWiFi20_WIFI_HOST:Ljava/lang/String;

    const-string v5, "platform10/appauth.htm"

    const-string v6, ""

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-virtual {v0, v3, v5, v6, v1}, Lcom/iwifi/sdk/protocol/impl/AuthenticatedMethodsUtils;->syncConnect(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;

    move-result-object v22

    .line 366
    .local v22, "jsonresult":Ljava/lang/String;
    if-eqz v22, :cond_a

    .line 368
    :try_start_0
    invoke-static/range {v22 .. v22}, Lcom/iwifi/sdk/parser/GetCodeResultParser;->GetJsonObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v21

    .line 369
    .local v21, "jsonObject":Lorg/json/JSONObject;
    const-string v3, "result"

    move-object/from16 v0, v21

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v5, "OK"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 370
    const-string v23, "Authentication Failed"

    .line 371
    .local v23, "message":Ljava/lang/String;
    const-string v3, "message"

    move-object/from16 v0, v22

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 372
    const-string v3, "message"

    move-object/from16 v0, v21

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    .line 373
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v5, "{\"result\":\"FAIL\",\"message\":\""

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v23

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "\"}"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 374
    .local v4, "json":Ljava/lang/String;
    const-string v5, "THIRD_AUTH"

    const/4 v9, 0x0

    move-object/from16 v3, p0

    move-object/from16 v6, p2

    move-object/from16 v7, p8

    move-object/from16 v8, p7

    move-object/from16 v10, p9

    invoke-virtual/range {v3 .. v10}, Lcom/iwifi/sdk/protocol/impl/AuthenticatedMethodsUtils;->generateAuthResultJson(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v26

    iput-object v3, v0, Lcom/iwifi/sdk/protocol/impl/AuthenticatedMethodsUtils$AuthenResultInfo;->auth_resultInfo:Ljava/lang/String;

    .line 375
    const/4 v3, 0x0

    move-object/from16 v0, v26

    iput-boolean v3, v0, Lcom/iwifi/sdk/protocol/impl/AuthenticatedMethodsUtils$AuthenResultInfo;->auth_status:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 449
    .end local v21    # "jsonObject":Lorg/json/JSONObject;
    .end local v23    # "message":Ljava/lang/String;
    :goto_0
    const-string v3, "iWiFiSDK|Authentication|Third_sync_LoginAuthen"

    .line 450
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "auth_id="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p1

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 451
    const-string v6, "&auth_unqid="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p3

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 452
    const-string v6, "&ter_mac="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p4

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 453
    const-string v6, "&ter_ip="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 454
    const-string v6, "&imei="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p6

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 455
    const-string v6, "&dev_id="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p2

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 456
    const-string v6, "&platform_code="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p8

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 457
    const-string v6, "&portal_url="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p9

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 458
    const-string v6, " | result: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v26

    iget-object v6, v0, Lcom/iwifi/sdk/protocol/impl/AuthenticatedMethodsUtils$AuthenResultInfo;->auth_resultInfo:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 450
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 449
    invoke-static {v3, v5}, Lcom/iwifi/sdk/tools/Logger;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 459
    return-object v26

    .line 378
    .end local v4    # "json":Ljava/lang/String;
    .restart local v21    # "jsonObject":Lorg/json/JSONObject;
    :cond_1
    const/4 v9, 0x0

    .line 379
    .local v9, "third_token":Ljava/lang/String;
    :try_start_1
    const-string v3, "third_token"

    move-object/from16 v0, v22

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 380
    const-string v3, "third_token"

    move-object/from16 v0, v21

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 383
    :cond_2
    const-string v3, "online_url"

    move-object/from16 v0, v22

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 384
    const-string v3, "online_url"

    move-object/from16 v0, v21

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    .line 385
    .local v24, "online_url":Ljava/lang/String;
    const-string v3, ""

    move-object/from16 v0, v24

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6

    .line 388
    move-object/from16 v27, v24

    .line 390
    .local v27, "url":Ljava/lang/String;
    const-string v19, ""

    .line 392
    .local v19, "Urlparam":Ljava/lang/String;
    const-string v3, "?"

    move-object/from16 v0, v27

    invoke-virtual {v0, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    const/4 v5, -0x1

    if-ne v3, v5, :cond_3

    .line 393
    const-string v19, ""

    .line 397
    :goto_1
    const-string v3, "get=1"

    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 398
    const/4 v3, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    invoke-direct {v0, v1, v3}, Lcom/iwifi/sdk/protocol/impl/AuthenticatedMethodsUtils;->Third_SecondAuthGetConnection(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v18

    .line 405
    .local v18, "Jsonstr":Ljava/lang/String;
    :goto_2
    invoke-static/range {v18 .. v18}, Lcom/iwifi/sdk/parser/GetCodeResultParser;->GetJsonObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    const-string v5, "result"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v5, "FAIL"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 406
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v5, "{\"result\":\"FAIL\",\"message\":\"First authen OK, but connect redirect url failed, online_url: "

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v27

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "\"}"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 407
    .restart local v4    # "json":Ljava/lang/String;
    const-string v5, "THIRD_AUTH"

    move-object/from16 v3, p0

    move-object/from16 v6, p2

    move-object/from16 v7, p8

    move-object/from16 v8, p7

    move-object/from16 v10, p9

    invoke-virtual/range {v3 .. v10}, Lcom/iwifi/sdk/protocol/impl/AuthenticatedMethodsUtils;->generateAuthResultJson(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v26

    iput-object v3, v0, Lcom/iwifi/sdk/protocol/impl/AuthenticatedMethodsUtils$AuthenResultInfo;->auth_resultInfo:Ljava/lang/String;

    .line 408
    const/4 v3, 0x0

    move-object/from16 v0, v26

    iput-boolean v3, v0, Lcom/iwifi/sdk/protocol/impl/AuthenticatedMethodsUtils$AuthenResultInfo;->auth_status:Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    .line 436
    .end local v4    # "json":Ljava/lang/String;
    .end local v9    # "third_token":Ljava/lang/String;
    .end local v18    # "Jsonstr":Ljava/lang/String;
    .end local v19    # "Urlparam":Ljava/lang/String;
    .end local v21    # "jsonObject":Lorg/json/JSONObject;
    .end local v24    # "online_url":Ljava/lang/String;
    .end local v27    # "url":Ljava/lang/String;
    :catch_0
    move-exception v20

    .line 437
    .local v20, "e":Ljava/lang/Exception;
    invoke-virtual/range {v20 .. v20}, Ljava/lang/Exception;->printStackTrace()V

    .line 438
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v5, "{\"result\":\"FAIL\",\"message\":\"Json error :"

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "\"}"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 439
    .restart local v4    # "json":Ljava/lang/String;
    const-string v12, "THIRD_AUTH"

    const/16 v16, 0x0

    move-object/from16 v10, p0

    move-object v11, v4

    move-object/from16 v13, p2

    move-object/from16 v14, p8

    move-object/from16 v15, p7

    move-object/from16 v17, p9

    invoke-virtual/range {v10 .. v17}, Lcom/iwifi/sdk/protocol/impl/AuthenticatedMethodsUtils;->generateAuthResultJson(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v26

    iput-object v3, v0, Lcom/iwifi/sdk/protocol/impl/AuthenticatedMethodsUtils$AuthenResultInfo;->auth_resultInfo:Ljava/lang/String;

    .line 440
    const/4 v3, 0x0

    move-object/from16 v0, v26

    iput-boolean v3, v0, Lcom/iwifi/sdk/protocol/impl/AuthenticatedMethodsUtils$AuthenResultInfo;->auth_status:Z

    goto/16 :goto_0

    .line 395
    .end local v4    # "json":Ljava/lang/String;
    .end local v20    # "e":Ljava/lang/Exception;
    .restart local v9    # "third_token":Ljava/lang/String;
    .restart local v19    # "Urlparam":Ljava/lang/String;
    .restart local v21    # "jsonObject":Lorg/json/JSONObject;
    .restart local v24    # "online_url":Ljava/lang/String;
    .restart local v27    # "url":Ljava/lang/String;
    :cond_3
    :try_start_2
    const-string v3, "?"

    move-object/from16 v0, v27

    invoke-virtual {v0, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    move-object/from16 v0, v27

    invoke-virtual {v0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v19

    goto/16 :goto_1

    .line 400
    :cond_4
    const/4 v3, 0x0

    const-string v5, "?"

    move-object/from16 v0, v24

    invoke-virtual {v0, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    move-object/from16 v0, v24

    invoke-virtual {v0, v3, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v27

    .line 402
    const/4 v3, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    move-object/from16 v2, v19

    invoke-direct {v0, v1, v3, v2}, Lcom/iwifi/sdk/protocol/impl/AuthenticatedMethodsUtils;->Third_SecondAuthPostConnection(Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .restart local v18    # "Jsonstr":Ljava/lang/String;
    goto/16 :goto_2

    .line 411
    :cond_5
    const-string v4, "{\"result\":\"OK\",\"message\":\"Redirct onLine_url also success: \"}"

    .line 412
    .restart local v4    # "json":Ljava/lang/String;
    const-string v5, "THIRD_AUTH"

    move-object/from16 v3, p0

    move-object/from16 v6, p2

    move-object/from16 v7, p8

    move-object/from16 v8, p7

    move-object/from16 v10, p9

    invoke-virtual/range {v3 .. v10}, Lcom/iwifi/sdk/protocol/impl/AuthenticatedMethodsUtils;->generateAuthResultJson(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v26

    iput-object v3, v0, Lcom/iwifi/sdk/protocol/impl/AuthenticatedMethodsUtils$AuthenResultInfo;->auth_resultInfo:Ljava/lang/String;

    .line 413
    const/4 v3, 0x1

    move-object/from16 v0, v26

    iput-boolean v3, v0, Lcom/iwifi/sdk/protocol/impl/AuthenticatedMethodsUtils$AuthenResultInfo;->auth_status:Z

    goto/16 :goto_0

    .line 417
    .end local v4    # "json":Ljava/lang/String;
    .end local v18    # "Jsonstr":Ljava/lang/String;
    .end local v19    # "Urlparam":Ljava/lang/String;
    .end local v27    # "url":Ljava/lang/String;
    :cond_6
    const-string v23, "Authentication Success"

    .line 418
    .restart local v23    # "message":Ljava/lang/String;
    const-string v3, "message"

    move-object/from16 v0, v22

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 419
    const-string v3, "message"

    move-object/from16 v0, v21

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    .line 421
    :cond_7
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v5, "{\"result\":\"OK\",\"message\":\""

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v23

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "\"}"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 422
    .restart local v4    # "json":Ljava/lang/String;
    const-string v5, "THIRD_AUTH"

    move-object/from16 v3, p0

    move-object/from16 v6, p2

    move-object/from16 v7, p8

    move-object/from16 v8, p7

    move-object/from16 v10, p9

    invoke-virtual/range {v3 .. v10}, Lcom/iwifi/sdk/protocol/impl/AuthenticatedMethodsUtils;->generateAuthResultJson(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v26

    iput-object v3, v0, Lcom/iwifi/sdk/protocol/impl/AuthenticatedMethodsUtils$AuthenResultInfo;->auth_resultInfo:Ljava/lang/String;

    .line 423
    const/4 v3, 0x1

    move-object/from16 v0, v26

    iput-boolean v3, v0, Lcom/iwifi/sdk/protocol/impl/AuthenticatedMethodsUtils$AuthenResultInfo;->auth_status:Z

    goto/16 :goto_0

    .line 427
    .end local v4    # "json":Ljava/lang/String;
    .end local v23    # "message":Ljava/lang/String;
    .end local v24    # "online_url":Ljava/lang/String;
    :cond_8
    const-string v23, "Authentication Success"

    .line 428
    .restart local v23    # "message":Ljava/lang/String;
    const-string v3, "message"

    move-object/from16 v0, v22

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 429
    const-string v3, "message"

    move-object/from16 v0, v21

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    .line 431
    :cond_9
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v5, "{\"result\":\"OK\",\"message\":\""

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v23

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "\"}"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 432
    .restart local v4    # "json":Ljava/lang/String;
    const-string v5, "THIRD_AUTH"

    move-object/from16 v3, p0

    move-object/from16 v6, p2

    move-object/from16 v7, p8

    move-object/from16 v8, p7

    move-object/from16 v10, p9

    invoke-virtual/range {v3 .. v10}, Lcom/iwifi/sdk/protocol/impl/AuthenticatedMethodsUtils;->generateAuthResultJson(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v26

    iput-object v3, v0, Lcom/iwifi/sdk/protocol/impl/AuthenticatedMethodsUtils$AuthenResultInfo;->auth_resultInfo:Ljava/lang/String;

    .line 433
    const/4 v3, 0x1

    move-object/from16 v0, v26

    iput-boolean v3, v0, Lcom/iwifi/sdk/protocol/impl/AuthenticatedMethodsUtils$AuthenResultInfo;->auth_status:Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_0

    .line 444
    .end local v4    # "json":Ljava/lang/String;
    .end local v9    # "third_token":Ljava/lang/String;
    .end local v21    # "jsonObject":Lorg/json/JSONObject;
    .end local v23    # "message":Ljava/lang/String;
    :cond_a
    const-string v4, "{\"result\":\"FAIL\",\"message\":\"\u8bf7\u6c42\u8d85\u65f6\"}"

    .line 445
    .restart local v4    # "json":Ljava/lang/String;
    const-string v12, "THIRD_AUTH"

    const/16 v16, 0x0

    move-object/from16 v10, p0

    move-object v11, v4

    move-object/from16 v13, p2

    move-object/from16 v14, p8

    move-object/from16 v15, p7

    move-object/from16 v17, p9

    invoke-virtual/range {v10 .. v17}, Lcom/iwifi/sdk/protocol/impl/AuthenticatedMethodsUtils;->generateAuthResultJson(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v26

    iput-object v3, v0, Lcom/iwifi/sdk/protocol/impl/AuthenticatedMethodsUtils$AuthenResultInfo;->auth_resultInfo:Ljava/lang/String;

    .line 446
    const/4 v3, 0x0

    move-object/from16 v0, v26

    iput-boolean v3, v0, Lcom/iwifi/sdk/protocol/impl/AuthenticatedMethodsUtils$AuthenResultInfo;->auth_status:Z

    goto/16 :goto_0
.end method

.method public Third_sync_LogoffReq(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/iwifi/sdk/protocol/impl/AuthenticatedMethodsUtils$LogoffResultInfo;
    .locals 14
    .param p1, "phoneNum"    # Ljava/lang/String;
    .param p2, "platform_code"    # Ljava/lang/String;
    .param p3, "ter_ip"    # Ljava/lang/String;
    .param p4, "token"    # Ljava/lang/String;
    .param p5, "thirdToken"    # Ljava/lang/String;
    .param p6, "redirect_params"    # Ljava/lang/String;

    .prologue
    .line 528
    new-instance v8, Lcom/iwifi/sdk/protocol/impl/AuthenticatedMethodsUtils$LogoffResultInfo;

    invoke-direct {v8, p0}, Lcom/iwifi/sdk/protocol/impl/AuthenticatedMethodsUtils$LogoffResultInfo;-><init>(Lcom/iwifi/sdk/protocol/impl/AuthenticatedMethodsUtils;)V

    .line 529
    .local v8, "result":Lcom/iwifi/sdk/protocol/impl/AuthenticatedMethodsUtils$LogoffResultInfo;
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 530
    .local v7, "paramList":Ljava/util/List;, "Ljava/util/List<Lcom/iwifi/sdk/tools/DataObject;>;"
    new-instance v11, Lcom/iwifi/sdk/tools/DataObject;

    const-string v12, "auth_id"

    invoke-direct {v11, v12, p1}, Lcom/iwifi/sdk/tools/DataObject;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v7, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 531
    new-instance v11, Lcom/iwifi/sdk/tools/DataObject;

    const-string v12, "token"

    move-object/from16 v0, p4

    invoke-direct {v11, v12, v0}, Lcom/iwifi/sdk/tools/DataObject;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v7, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 532
    new-instance v11, Lcom/iwifi/sdk/tools/DataObject;

    const-string v12, "auth_type"

    const-string v13, "APPMOBILE"

    invoke-direct {v11, v12, v13}, Lcom/iwifi/sdk/tools/DataObject;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v7, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 533
    new-instance v11, Lcom/iwifi/sdk/tools/DataObject;

    const-string v12, "appauth_type"

    const-string v13, "THIRD_AUTH"

    invoke-direct {v11, v12, v13}, Lcom/iwifi/sdk/tools/DataObject;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v7, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 534
    new-instance v11, Lcom/iwifi/sdk/tools/DataObject;

    const-string v12, "platform_code"

    move-object/from16 v0, p2

    invoke-direct {v11, v12, v0}, Lcom/iwifi/sdk/tools/DataObject;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v7, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 535
    new-instance v11, Lcom/iwifi/sdk/tools/DataObject;

    const-string v12, "ter_ip"

    move-object/from16 v0, p3

    invoke-direct {v11, v12, v0}, Lcom/iwifi/sdk/tools/DataObject;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v7, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 536
    new-instance v11, Lcom/iwifi/sdk/tools/DataObject;

    const-string v12, "terminal_type"

    const-string v13, "android"

    invoke-direct {v11, v12, v13}, Lcom/iwifi/sdk/tools/DataObject;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v7, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 537
    new-instance v11, Lcom/iwifi/sdk/tools/DataObject;

    const-string v12, "redirect_params"

    move-object/from16 v0, p6

    invoke-direct {v11, v12, v0}, Lcom/iwifi/sdk/tools/DataObject;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v7, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 538
    new-instance v11, Lcom/iwifi/sdk/tools/DataObject;

    const-string v12, "third_token"

    move-object/from16 v0, p5

    invoke-direct {v11, v12, v0}, Lcom/iwifi/sdk/tools/DataObject;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v7, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 539
    sget-object v11, Lcom/iwifi/sdk/protocol/impl/AuthenticatedMethodsUtils;->iWiFi20_WIFI_HOST:Ljava/lang/String;

    const-string v12, "platform10/useroffline.htm"

    const-string v13, ""

    invoke-virtual {p0, v11, v12, v13, v7}, Lcom/iwifi/sdk/protocol/impl/AuthenticatedMethodsUtils;->syncConnect(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;

    move-result-object v9

    .line 541
    .local v9, "result_json":Ljava/lang/String;
    if-eqz v9, :cond_9

    .line 544
    :try_start_0
    invoke-static {v9}, Lcom/iwifi/sdk/parser/GetCodeResultParser;->GetJsonObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    .line 545
    .local v4, "jsonObject":Lorg/json/JSONObject;
    const-string v11, "result"

    invoke-virtual {v4, v11}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    const-string v12, "OK"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_1

    .line 546
    const-string v5, "Logoff Failed"

    .line 547
    .local v5, "message":Ljava/lang/String;
    const-string v11, "message"

    invoke-virtual {v9, v11}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_0

    .line 548
    const-string v11, "message"

    invoke-virtual {v4, v11}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 549
    :cond_0
    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "{\"result\":\"FAIL\",\"message\":\""

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "\"}"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    iput-object v11, v8, Lcom/iwifi/sdk/protocol/impl/AuthenticatedMethodsUtils$LogoffResultInfo;->logoff_resultInfo:Ljava/lang/String;

    .line 550
    const/4 v11, 0x0

    iput-boolean v11, v8, Lcom/iwifi/sdk/protocol/impl/AuthenticatedMethodsUtils$LogoffResultInfo;->logoff_status:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 611
    .end local v4    # "jsonObject":Lorg/json/JSONObject;
    .end local v5    # "message":Ljava/lang/String;
    :goto_0
    const-string v11, "iWiFiSDK|Logoff|AC_sync_LogoffReq"

    .line 612
    new-instance v12, Ljava/lang/StringBuilder;

    const-string v13, "ac_name="

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    .line 613
    const-string v13, "&token="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p4

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    .line 614
    const-string v13, "&platform_code="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p2

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    .line 615
    const-string v13, "&ter_ip="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p3

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    .line 616
    const-string v13, "&third_token="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p5

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    .line 617
    const-string v13, "&redirect_params="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p6

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    .line 618
    const-string v13, " | result: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v13, v8, Lcom/iwifi/sdk/protocol/impl/AuthenticatedMethodsUtils$LogoffResultInfo;->logoff_resultInfo:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    .line 612
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 611
    invoke-static {v11, v12}, Lcom/iwifi/sdk/tools/Logger;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 619
    return-object v8

    .line 553
    .restart local v4    # "jsonObject":Lorg/json/JSONObject;
    :cond_1
    :try_start_1
    const-string v11, "offline_url"

    invoke-virtual {v9, v11}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_7

    .line 555
    const-string v11, "offline_url"

    invoke-virtual {v4, v11}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 556
    .local v6, "offline_url":Ljava/lang/String;
    const-string v11, ""

    invoke-virtual {v6, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_5

    .line 558
    move-object v10, v6

    .line 560
    .local v10, "url":Ljava/lang/String;
    const-string v2, ""

    .line 562
    .local v2, "Urlparam":Ljava/lang/String;
    const-string v11, "?"

    invoke-virtual {v10, v11}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v11

    const/4 v12, -0x1

    if-ne v11, v12, :cond_2

    .line 563
    const-string v2, ""

    .line 567
    :goto_1
    const-string v11, "get=1"

    invoke-virtual {v2, v11}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_3

    .line 568
    const/4 v11, 0x0

    invoke-direct {p0, v10, v11}, Lcom/iwifi/sdk/protocol/impl/AuthenticatedMethodsUtils;->Third_SecondAuthGetConnection(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v1

    .line 576
    .local v1, "Jsonstr":Ljava/lang/String;
    :goto_2
    invoke-static {v1}, Lcom/iwifi/sdk/parser/GetCodeResultParser;->GetJsonObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v11

    const-string v12, "result"

    invoke-virtual {v11, v12}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    const-string v12, "FAIL"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_4

    .line 577
    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "{\"result\":\"FAIL\",\"message\":\"First authen OK, but reconnect failed, offline_url = "

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "\"}"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    iput-object v11, v8, Lcom/iwifi/sdk/protocol/impl/AuthenticatedMethodsUtils$LogoffResultInfo;->logoff_resultInfo:Ljava/lang/String;

    .line 578
    const/4 v11, 0x0

    iput-boolean v11, v8, Lcom/iwifi/sdk/protocol/impl/AuthenticatedMethodsUtils$LogoffResultInfo;->logoff_status:Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    .line 600
    .end local v1    # "Jsonstr":Ljava/lang/String;
    .end local v2    # "Urlparam":Ljava/lang/String;
    .end local v4    # "jsonObject":Lorg/json/JSONObject;
    .end local v6    # "offline_url":Ljava/lang/String;
    .end local v10    # "url":Ljava/lang/String;
    :catch_0
    move-exception v3

    .line 601
    .local v3, "e":Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    .line 602
    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "{\"result\":\"FAIL\",\"message\":\"Json error :"

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "\"}"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    iput-object v11, v8, Lcom/iwifi/sdk/protocol/impl/AuthenticatedMethodsUtils$LogoffResultInfo;->logoff_resultInfo:Ljava/lang/String;

    .line 603
    const/4 v11, 0x0

    iput-boolean v11, v8, Lcom/iwifi/sdk/protocol/impl/AuthenticatedMethodsUtils$LogoffResultInfo;->logoff_status:Z

    goto/16 :goto_0

    .line 565
    .end local v3    # "e":Ljava/lang/Exception;
    .restart local v2    # "Urlparam":Ljava/lang/String;
    .restart local v4    # "jsonObject":Lorg/json/JSONObject;
    .restart local v6    # "offline_url":Ljava/lang/String;
    .restart local v10    # "url":Ljava/lang/String;
    :cond_2
    :try_start_2
    const-string v11, "?"

    invoke-virtual {v10, v11}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v11

    add-int/lit8 v11, v11, 0x1

    invoke-virtual {v10, v11}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    .line 570
    :cond_3
    const/4 v11, 0x0

    const-string v12, "?"

    invoke-virtual {v6, v12}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v12

    invoke-virtual {v6, v11, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    .line 573
    const/4 v11, 0x0

    invoke-direct {p0, v10, v11, v2}, Lcom/iwifi/sdk/protocol/impl/AuthenticatedMethodsUtils;->Third_SecondAuthPostConnection(Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .restart local v1    # "Jsonstr":Ljava/lang/String;
    goto :goto_2

    .line 580
    :cond_4
    const-string v11, "{\"result\":\"OK\",\"message\":\"Redirect offline_url connect also success: \"}"

    iput-object v11, v8, Lcom/iwifi/sdk/protocol/impl/AuthenticatedMethodsUtils$LogoffResultInfo;->logoff_resultInfo:Ljava/lang/String;

    .line 581
    const/4 v11, 0x1

    iput-boolean v11, v8, Lcom/iwifi/sdk/protocol/impl/AuthenticatedMethodsUtils$LogoffResultInfo;->logoff_status:Z

    goto/16 :goto_0

    .line 585
    .end local v1    # "Jsonstr":Ljava/lang/String;
    .end local v2    # "Urlparam":Ljava/lang/String;
    .end local v10    # "url":Ljava/lang/String;
    :cond_5
    const-string v5, "Logoff Success"

    .line 586
    .restart local v5    # "message":Ljava/lang/String;
    const-string v11, "message"

    invoke-virtual {v9, v11}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_6

    .line 587
    const-string v11, "message"

    invoke-virtual {v4, v11}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 588
    :cond_6
    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "{\"result\":\"OK\",\"message\":\""

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "\"}"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    iput-object v11, v8, Lcom/iwifi/sdk/protocol/impl/AuthenticatedMethodsUtils$LogoffResultInfo;->logoff_resultInfo:Ljava/lang/String;

    .line 589
    const/4 v11, 0x1

    iput-boolean v11, v8, Lcom/iwifi/sdk/protocol/impl/AuthenticatedMethodsUtils$LogoffResultInfo;->logoff_status:Z

    goto/16 :goto_0

    .line 592
    .end local v5    # "message":Ljava/lang/String;
    .end local v6    # "offline_url":Ljava/lang/String;
    :cond_7
    const-string v5, "Logoff Success"

    .line 593
    .restart local v5    # "message":Ljava/lang/String;
    const-string v11, "message"

    invoke-virtual {v9, v11}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_8

    .line 594
    const-string v11, "message"

    invoke-virtual {v4, v11}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 595
    :cond_8
    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "{\"result\":\"OK\",\"message\":\""

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "\"}"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    iput-object v11, v8, Lcom/iwifi/sdk/protocol/impl/AuthenticatedMethodsUtils$LogoffResultInfo;->logoff_resultInfo:Ljava/lang/String;

    .line 596
    const/4 v11, 0x1

    iput-boolean v11, v8, Lcom/iwifi/sdk/protocol/impl/AuthenticatedMethodsUtils$LogoffResultInfo;->logoff_status:Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_0

    .line 607
    .end local v4    # "jsonObject":Lorg/json/JSONObject;
    .end local v5    # "message":Ljava/lang/String;
    :cond_9
    const-string v11, "{\"result\":\"FAIL\",\"message\":\"\u8bf7\u6c42\u8d85\u65f6\"}"

    iput-object v11, v8, Lcom/iwifi/sdk/protocol/impl/AuthenticatedMethodsUtils$LogoffResultInfo;->logoff_resultInfo:Ljava/lang/String;

    .line 608
    const/4 v11, 0x0

    iput-boolean v11, v8, Lcom/iwifi/sdk/protocol/impl/AuthenticatedMethodsUtils$LogoffResultInfo;->logoff_status:Z

    goto/16 :goto_0
.end method

.method public generateAuthResultJson(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 16
    .param p1, "input"    # Ljava/lang/String;
    .param p2, "authen_type"    # Ljava/lang/String;
    .param p3, "dev_id"    # Ljava/lang/String;
    .param p4, "platform_code"    # Ljava/lang/String;
    .param p5, "token"    # Ljava/lang/String;
    .param p6, "third_token"    # Ljava/lang/String;
    .param p7, "portalUrl"    # Ljava/lang/String;

    .prologue
    .line 687
    const-string v14, ""

    .line 689
    .local v14, "failMsg":Ljava/lang/String;
    :try_start_0
    const-string v1, "AP_AUTH"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 690
    const-string v1, "result"

    const-string v2, "message"

    const/4 v3, 0x0

    move-object/from16 v0, p1

    invoke-static {v0, v1, v2, v3}, Lcom/iwifi/sdk/parser/GetCodeResultParser;->GetCodeResultList(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/iwifi/sdk/data/CodeResult;

    move-result-object v12

    .line 691
    .local v12, "codeResult":Lcom/iwifi/sdk/data/CodeResult;
    invoke-virtual {v12}, Lcom/iwifi/sdk/data/CodeResult;->getResult()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v12}, Lcom/iwifi/sdk/data/CodeResult;->getMsg()Ljava/lang/String;

    move-result-object v3

    const-string v7, ""

    const-string v10, ""

    move-object/from16 v1, p0

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move-object/from16 v8, p5

    move-object/from16 v9, p6

    move-object/from16 v11, p7

    invoke-virtual/range {v1 .. v11}, Lcom/iwifi/sdk/protocol/impl/AuthenticatedMethodsUtils;->generateJson(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 722
    .end local v12    # "codeResult":Lcom/iwifi/sdk/data/CodeResult;
    :goto_0
    return-object v15

    .line 692
    :cond_0
    const-string v1, "AAA_AUTH"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 693
    const-string v1, "result"

    const-string v2, "msg"

    const/4 v3, 0x0

    move-object/from16 v0, p1

    invoke-static {v0, v1, v2, v3}, Lcom/iwifi/sdk/parser/GetCodeResultParser;->GetCodeResultList(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/iwifi/sdk/data/CodeResult;

    move-result-object v12

    .line 695
    .restart local v12    # "codeResult":Lcom/iwifi/sdk/data/CodeResult;
    invoke-virtual {v12}, Lcom/iwifi/sdk/data/CodeResult;->getResult()Ljava/lang/String;

    move-result-object v1

    const-string v2, "0"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 698
    const-string v2, "FAIL"

    invoke-virtual {v12}, Lcom/iwifi/sdk/data/CodeResult;->getMsg()Ljava/lang/String;

    move-result-object v3

    const-string v7, ""

    const-string v10, ""

    const-string v11, ""

    move-object/from16 v1, p0

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move-object/from16 v8, p5

    move-object/from16 v9, p6

    invoke-virtual/range {v1 .. v11}, Lcom/iwifi/sdk/protocol/impl/AuthenticatedMethodsUtils;->generateJson(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 699
    .local v15, "result":Ljava/lang/String;
    goto :goto_0

    .line 700
    .end local v15    # "result":Ljava/lang/String;
    :cond_1
    const-string v1, "result"

    const-string v2, "msg"

    const-string v3, "logooffurl"

    move-object/from16 v0, p1

    invoke-static {v0, v1, v2, v3}, Lcom/iwifi/sdk/parser/GetCodeResultParser;->GetCodeResultList(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/iwifi/sdk/data/CodeResult;

    move-result-object v12

    .line 701
    const-string v2, "OK"

    invoke-virtual {v12}, Lcom/iwifi/sdk/data/CodeResult;->getMsg()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v12}, Lcom/iwifi/sdk/data/CodeResult;->getData()Ljava/lang/String;

    move-result-object v7

    const-string v10, ""

    const-string v11, ""

    move-object/from16 v1, p0

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move-object/from16 v8, p5

    move-object/from16 v9, p6

    invoke-virtual/range {v1 .. v11}, Lcom/iwifi/sdk/protocol/impl/AuthenticatedMethodsUtils;->generateJson(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .restart local v15    # "result":Ljava/lang/String;
    goto :goto_0

    .line 705
    .end local v12    # "codeResult":Lcom/iwifi/sdk/data/CodeResult;
    .end local v15    # "result":Ljava/lang/String;
    :cond_2
    const-string v1, "AC_AUTH"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 706
    const-string v1, "result"

    const-string v2, "message"

    const-string v3, "logoffUrl"

    const-string v4, "ac_name"

    move-object/from16 v0, p1

    invoke-static {v0, v1, v2, v3, v4}, Lcom/iwifi/sdk/parser/GetCodeResultParser;->GetCodeResultList(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/iwifi/sdk/data/CodeResult;

    move-result-object v12

    .line 707
    .restart local v12    # "codeResult":Lcom/iwifi/sdk/data/CodeResult;
    invoke-virtual {v12}, Lcom/iwifi/sdk/data/CodeResult;->getResult()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v12}, Lcom/iwifi/sdk/data/CodeResult;->getMsg()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v12}, Lcom/iwifi/sdk/data/CodeResult;->getData()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v12}, Lcom/iwifi/sdk/data/CodeResult;->getData1()Ljava/lang/String;

    move-result-object v10

    const-string v11, ""

    move-object/from16 v1, p0

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move-object/from16 v8, p5

    move-object/from16 v9, p6

    invoke-virtual/range {v1 .. v11}, Lcom/iwifi/sdk/protocol/impl/AuthenticatedMethodsUtils;->generateJson(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    goto/16 :goto_0

    .line 709
    .end local v12    # "codeResult":Lcom/iwifi/sdk/data/CodeResult;
    :cond_3
    const-string v1, "THIRD_AUTH"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 710
    const-string v1, "result"

    const-string v2, "message"

    const/4 v3, 0x0

    move-object/from16 v0, p1

    invoke-static {v0, v1, v2, v3}, Lcom/iwifi/sdk/parser/GetCodeResultParser;->GetCodeResultList(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/iwifi/sdk/data/CodeResult;

    move-result-object v12

    .line 711
    .restart local v12    # "codeResult":Lcom/iwifi/sdk/data/CodeResult;
    invoke-virtual {v12}, Lcom/iwifi/sdk/data/CodeResult;->getResult()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v12}, Lcom/iwifi/sdk/data/CodeResult;->getMsg()Ljava/lang/String;

    move-result-object v3

    const-string v7, ""

    const-string v10, ""

    move-object/from16 v1, p0

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move-object/from16 v8, p5

    move-object/from16 v9, p6

    move-object/from16 v11, p7

    invoke-virtual/range {v1 .. v11}, Lcom/iwifi/sdk/protocol/impl/AuthenticatedMethodsUtils;->generateJson(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    goto/16 :goto_0

    .line 714
    .end local v12    # "codeResult":Lcom/iwifi/sdk/data/CodeResult;
    :cond_4
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "UNKOWN AUTHEN_TYPE : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p2

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v14

    .line 721
    :goto_1
    const-string v2, "FAIL"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "FINAL PARSE JSON FAILED: "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v7, ""

    const-string v10, ""

    const-string v11, ""

    move-object/from16 v1, p0

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move-object/from16 v8, p5

    move-object/from16 v9, p6

    invoke-virtual/range {v1 .. v11}, Lcom/iwifi/sdk/protocol/impl/AuthenticatedMethodsUtils;->generateJson(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 722
    .restart local v15    # "result":Ljava/lang/String;
    goto/16 :goto_0

    .line 716
    .end local v15    # "result":Ljava/lang/String;
    :catch_0
    move-exception v13

    .line 718
    .local v13, "e":Ljava/lang/Exception;
    invoke-virtual {v13}, Ljava/lang/Exception;->printStackTrace()V

    .line 719
    invoke-virtual {v13}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v14

    goto :goto_1
.end method

.method public generateJson(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "result"    # Ljava/lang/String;
    .param p2, "message"    # Ljava/lang/String;
    .param p3, "authen_type"    # Ljava/lang/String;
    .param p4, "dev_id"    # Ljava/lang/String;
    .param p5, "platform_code"    # Ljava/lang/String;
    .param p6, "logoffUrl"    # Ljava/lang/String;
    .param p7, "token"    # Ljava/lang/String;
    .param p8, "thirdToken"    # Ljava/lang/String;
    .param p9, "ac_name"    # Ljava/lang/String;
    .param p10, "portalUrl"    # Ljava/lang/String;

    .prologue
    .line 634
    if-nez p1, :cond_0

    .line 635
    const-string p1, ""

    .line 637
    :cond_0
    if-nez p2, :cond_1

    .line 638
    const-string p2, ""

    .line 640
    :cond_1
    if-nez p3, :cond_2

    .line 641
    const-string p3, ""

    .line 643
    :cond_2
    if-nez p6, :cond_3

    .line 644
    const-string p6, ""

    .line 646
    :cond_3
    if-nez p7, :cond_4

    .line 647
    const-string p7, ""

    .line 649
    :cond_4
    if-nez p10, :cond_5

    .line 650
    const-string p10, ""

    .line 652
    :cond_5
    if-nez p8, :cond_6

    .line 653
    const-string p8, ""

    .line 655
    :cond_6
    if-nez p4, :cond_7

    .line 656
    const-string p4, ""

    .line 658
    :cond_7
    if-nez p5, :cond_8

    .line 659
    const-string p5, ""

    .line 661
    :cond_8
    if-nez p9, :cond_9

    .line 662
    const-string p9, ""

    .line 664
    :cond_9
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "{\"result\":\""

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\",\"message\":\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\",\"appauth_type\":\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\",\"dev_id\":\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\",\"platform_code\":\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\",\"logoffUrl\":\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\",\"token\":\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\",\"third_token\":\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\",\"ac_name\":\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\",\"portal_url\":\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\"}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public syncGetConnect(Ljava/lang/String;Ljava/util/Map;Lorg/apache/http/params/HttpParams;Lorg/apache/http/client/CookieStore;)Lorg/apache/http/HttpResponse;
    .locals 7
    .param p1, "url"    # Ljava/lang/String;
    .param p3, "params"    # Lorg/apache/http/params/HttpParams;
    .param p4, "store"    # Lorg/apache/http/client/CookieStore;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lorg/apache/http/params/HttpParams;",
            "Lorg/apache/http/client/CookieStore;",
            ")",
            "Lorg/apache/http/HttpResponse;"
        }
    .end annotation

    .prologue
    .local p2, "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v5, 0x0

    .line 1000
    if-nez p1, :cond_0

    move-object v4, v5

    .line 1025
    :goto_0
    return-object v4

    .line 1003
    :cond_0
    new-instance v3, Lorg/apache/http/client/methods/HttpGet;

    invoke-direct {v3, p1}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    .line 1004
    .local v3, "request":Lorg/apache/http/client/methods/HttpGet;
    move-object v2, p3

    .line 1005
    .local v2, "httpParams":Lorg/apache/http/params/HttpParams;
    if-nez v2, :cond_1

    .line 1006
    new-instance v2, Lorg/apache/http/params/BasicHttpParams;

    .end local v2    # "httpParams":Lorg/apache/http/params/HttpParams;
    invoke-direct {v2}, Lorg/apache/http/params/BasicHttpParams;-><init>()V

    .line 1009
    .restart local v2    # "httpParams":Lorg/apache/http/params/HttpParams;
    :cond_1
    const/16 v6, 0xbb8

    invoke-static {v2, v6}, Lorg/apache/http/params/HttpConnectionParams;->setConnectionTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 1010
    const/16 v6, 0x2710

    invoke-static {v2, v6}, Lorg/apache/http/params/HttpConnectionParams;->setSoTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 1011
    new-instance v1, Lcom/iwifi/sdk/tools/HttpManager;

    invoke-direct {v1}, Lcom/iwifi/sdk/tools/HttpManager;-><init>()V

    .line 1012
    .local v1, "hm":Lcom/iwifi/sdk/tools/HttpManager;
    if-eqz p4, :cond_2

    .line 1013
    invoke-virtual {v1, p4}, Lcom/iwifi/sdk/tools/HttpManager;->setCookieStore(Lorg/apache/http/client/CookieStore;)V

    .line 1016
    :cond_2
    const/4 v4, 0x0

    .line 1018
    .local v4, "response":Lorg/apache/http/HttpResponse;
    :try_start_0
    invoke-virtual {v1, v3}, Lcom/iwifi/sdk/tools/HttpManager;->execute(Lorg/apache/http/client/methods/HttpGet;)Lorg/apache/http/HttpResponse;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 1019
    goto :goto_0

    .line 1020
    :catch_0
    move-exception v0

    .line 1022
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    move-object v4, v5

    .line 1025
    goto :goto_0
.end method

.method public syncPostConnect(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Lcom/iwifi/sdk/protocol/impl/AuthenticatedMethodsUtils$PostEntityTypeEnum;Ljava/util/List;Ljava/lang/String;)Lorg/apache/http/HttpResponse;
    .locals 16
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "methodName"    # Ljava/lang/String;
    .param p3, "action"    # Ljava/lang/String;
    .param p4, "partUrl"    # Ljava/lang/String;
    .param p6, "entity_type"    # Lcom/iwifi/sdk/protocol/impl/AuthenticatedMethodsUtils$PostEntityTypeEnum;
    .param p8, "paramString"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/iwifi/sdk/protocol/impl/AuthenticatedMethodsUtils$PostEntityTypeEnum;",
            "Ljava/util/List",
            "<",
            "Lcom/iwifi/sdk/tools/DataObject;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Lorg/apache/http/HttpResponse;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/conn/HttpHostConnectException;
        }
    .end annotation

    .prologue
    .line 920
    .local p5, "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .local p7, "paramsList":Ljava/util/List;, "Ljava/util/List<Lcom/iwifi/sdk/tools/DataObject;>;"
    if-nez p2, :cond_0

    .line 921
    const-string p2, ""

    .line 923
    :cond_0
    if-nez p3, :cond_1

    .line 924
    const-string p3, ""

    .line 926
    :cond_1
    if-nez p4, :cond_2

    .line 927
    const-string p4, ""

    .line 930
    :cond_2
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p4

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 933
    .local v11, "tempString":Ljava/lang/String;
    const-string v13, ""

    if-ne v11, v13, :cond_7

    .line 934
    const-string v13, "getPortalUrl"

    move-object/from16 v0, p2

    invoke-virtual {v13, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_6

    .line 935
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-static/range {p1 .. p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p3

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 945
    .local v12, "tempUrl":Ljava/lang/String;
    :goto_0
    new-instance v9, Lorg/apache/http/client/methods/HttpPost;

    invoke-direct {v9, v12}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    .line 946
    .local v9, "request":Lorg/apache/http/client/methods/HttpPost;
    const-string v13, "iWiFiSDK|Common API|syncPostConnect"

    new-instance v14, Ljava/lang/StringBuilder;

    const-string v15, "methodName:"

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p2

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "&url="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/iwifi/sdk/tools/Logger;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 947
    const/4 v6, 0x0

    .line 949
    .local v6, "httpParams":Lorg/apache/http/params/HttpParams;
    if-nez v6, :cond_3

    .line 950
    new-instance v6, Lorg/apache/http/params/BasicHttpParams;

    .end local v6    # "httpParams":Lorg/apache/http/params/HttpParams;
    invoke-direct {v6}, Lorg/apache/http/params/BasicHttpParams;-><init>()V

    .line 953
    .restart local v6    # "httpParams":Lorg/apache/http/params/HttpParams;
    :cond_3
    const/16 v13, 0xbb8

    invoke-static {v6, v13}, Lorg/apache/http/params/HttpConnectionParams;->setConnectionTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 954
    const/16 v13, 0x2710

    invoke-static {v6, v13}, Lorg/apache/http/params/HttpConnectionParams;->setSoTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 955
    new-instance v3, Lcom/iwifi/sdk/tools/HttpManager;

    invoke-direct {v3}, Lcom/iwifi/sdk/tools/HttpManager;-><init>()V

    .line 957
    .local v3, "hm":Lcom/iwifi/sdk/tools/HttpManager;
    if-eqz p5, :cond_4

    invoke-interface/range {p5 .. p5}, Ljava/util/Map;->size()I

    move-result v13

    if-lez v13, :cond_4

    .line 958
    invoke-interface/range {p5 .. p5}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v13

    invoke-interface {v13}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v15

    :goto_1
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-nez v13, :cond_9

    .line 964
    :cond_4
    const/4 v4, 0x0

    .line 965
    .local v4, "httpEntity":Lorg/apache/http/HttpEntity;
    :try_start_0
    invoke-static {}, Lcom/iwifi/sdk/protocol/impl/AuthenticatedMethodsUtils;->$SWITCH_TABLE$com$iwifi$sdk$protocol$impl$AuthenticatedMethodsUtils$PostEntityTypeEnum()[I

    move-result-object v13

    invoke-virtual/range {p6 .. p6}, Lcom/iwifi/sdk/protocol/impl/AuthenticatedMethodsUtils$PostEntityTypeEnum;->ordinal()I

    move-result v14

    aget v13, v13, v14

    packed-switch v13, :pswitch_data_0

    .line 979
    const/4 v4, 0x0

    .line 983
    :goto_2
    if-eqz v4, :cond_5

    .line 984
    invoke-virtual {v9, v4}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 986
    :cond_5
    invoke-virtual {v3, v9}, Lcom/iwifi/sdk/tools/HttpManager;->execute(Lorg/apache/http/client/methods/HttpPost;)Lorg/apache/http/HttpResponse;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v10

    .line 994
    :goto_3
    return-object v10

    .line 937
    .end local v3    # "hm":Lcom/iwifi/sdk/tools/HttpManager;
    .end local v4    # "httpEntity":Lorg/apache/http/HttpEntity;
    .end local v6    # "httpParams":Lorg/apache/http/params/HttpParams;
    .end local v9    # "request":Lorg/apache/http/client/methods/HttpPost;
    .end local v12    # "tempUrl":Ljava/lang/String;
    :cond_6
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-static/range {p1 .. p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p2

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p3

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 938
    .restart local v12    # "tempUrl":Ljava/lang/String;
    goto/16 :goto_0

    .line 939
    .end local v12    # "tempUrl":Ljava/lang/String;
    :cond_7
    const-string v13, "getPortalUrl"

    move-object/from16 v0, p2

    invoke-virtual {v13, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_8

    .line 940
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-static/range {p1 .. p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p3

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "?"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .restart local v12    # "tempUrl":Ljava/lang/String;
    goto/16 :goto_0

    .line 942
    .end local v12    # "tempUrl":Ljava/lang/String;
    :cond_8
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-static/range {p1 .. p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p2

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p3

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "?"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .restart local v12    # "tempUrl":Ljava/lang/String;
    goto/16 :goto_0

    .line 958
    .restart local v3    # "hm":Lcom/iwifi/sdk/tools/HttpManager;
    .restart local v6    # "httpParams":Lorg/apache/http/params/HttpParams;
    .restart local v9    # "request":Lorg/apache/http/client/methods/HttpPost;
    :cond_9
    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 959
    .local v2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    invoke-virtual {v9, v13, v14}, Lorg/apache/http/client/methods/HttpPost;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 967
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v4    # "httpEntity":Lorg/apache/http/HttpEntity;
    :pswitch_0
    :try_start_1
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 968
    .local v8, "pairList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/apache/http/message/BasicNameValuePair;>;"
    sget-object v13, Lcom/iwifi/sdk/protocol/impl/AuthenticatedMethodsUtils$PostEntityTypeEnum;->POST_ENTITY_TYPE_UrlEncodedFormEntity:Lcom/iwifi/sdk/protocol/impl/AuthenticatedMethodsUtils$PostEntityTypeEnum;

    move-object/from16 v0, p6

    if-ne v0, v13, :cond_a

    if-eqz p7, :cond_a

    .line 969
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_4
    invoke-interface/range {p7 .. p7}, Ljava/util/List;->size()I

    move-result v13

    if-lt v7, v13, :cond_b

    .line 973
    .end local v7    # "i":I
    :cond_a
    new-instance v5, Lorg/apache/http/client/entity/UrlEncodedFormEntity;

    const-string v13, "UTF-8"

    invoke-direct {v5, v8, v13}, Lorg/apache/http/client/entity/UrlEncodedFormEntity;-><init>(Ljava/util/List;Ljava/lang/String;)V

    .end local v4    # "httpEntity":Lorg/apache/http/HttpEntity;
    .local v5, "httpEntity":Lorg/apache/http/HttpEntity;
    move-object v4, v5

    .line 974
    .end local v5    # "httpEntity":Lorg/apache/http/HttpEntity;
    .restart local v4    # "httpEntity":Lorg/apache/http/HttpEntity;
    goto/16 :goto_2

    .line 970
    .restart local v7    # "i":I
    :cond_b
    new-instance v14, Lorg/apache/http/message/BasicNameValuePair;

    move-object/from16 v0, p7

    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/iwifi/sdk/tools/DataObject;

    invoke-virtual {v13}, Lcom/iwifi/sdk/tools/DataObject;->getKey()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p7

    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/iwifi/sdk/tools/DataObject;

    invoke-virtual {v13}, Lcom/iwifi/sdk/tools/DataObject;->getValue()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v14, v15, v13}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v8, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 969
    add-int/lit8 v7, v7, 0x1

    goto :goto_4

    .line 976
    .end local v7    # "i":I
    .end local v8    # "pairList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/apache/http/message/BasicNameValuePair;>;"
    :pswitch_1
    new-instance v5, Lorg/apache/http/entity/StringEntity;

    const-string v13, "UTF-8"

    move-object/from16 v0, p8

    invoke-direct {v5, v0, v13}, Lorg/apache/http/entity/StringEntity;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .end local v4    # "httpEntity":Lorg/apache/http/HttpEntity;
    .restart local v5    # "httpEntity":Lorg/apache/http/HttpEntity;
    move-object v4, v5

    .line 977
    .end local v5    # "httpEntity":Lorg/apache/http/HttpEntity;
    .restart local v4    # "httpEntity":Lorg/apache/http/HttpEntity;
    goto/16 :goto_2

    .line 989
    :catch_0
    move-exception v1

    .line 991
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 992
    const-string v13, "iWiFiSDK|Common API|syncPostConnect"

    new-instance v14, Ljava/lang/StringBuilder;

    const-string v15, "Post request error: "

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/iwifi/sdk/tools/Logger;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 994
    const/4 v10, 0x0

    goto/16 :goto_3

    .line 965
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public sync_getPortalUrl(Ljava/lang/String;)[Ljava/lang/String;
    .locals 9
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x0

    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 78
    const/4 v4, 0x2

    new-array v3, v4, [Ljava/lang/String;

    const-string v4, ""

    aput-object v4, v3, v8

    const-string v4, ""

    aput-object v4, v3, v7

    .line 79
    .local v3, "portalUrl_res":[Ljava/lang/String;
    const-string v4, "getPortalUrl"

    const-string v5, ""

    invoke-virtual {p0, p1, v4, v5, v6}, Lcom/iwifi/sdk/protocol/impl/AuthenticatedMethodsUtils;->syncConnect(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    .line 81
    .local v0, "Json_portalUrl":Ljava/lang/String;
    if-eqz v0, :cond_1

    .line 84
    :try_start_0
    const-string v4, "result"

    const-string v5, "message"

    const/4 v6, 0x0

    invoke-static {v0, v4, v5, v6}, Lcom/iwifi/sdk/parser/GetCodeResultParser;->GetCodeResultList(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/iwifi/sdk/data/CodeResult;

    move-result-object v1

    .line 85
    .local v1, "codeRes":Lcom/iwifi/sdk/data/CodeResult;
    invoke-virtual {v1}, Lcom/iwifi/sdk/data/CodeResult;->getResult()Ljava/lang/String;

    move-result-object v4

    const-string v5, "OK"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 86
    const/4 v4, 0x0

    const-string v5, "true"

    aput-object v5, v3, v4

    .line 87
    const/4 v4, 0x1

    invoke-virtual {v1}, Lcom/iwifi/sdk/data/CodeResult;->getMsg()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 108
    .end local v1    # "codeRes":Lcom/iwifi/sdk/data/CodeResult;
    :goto_0
    const-string v4, "iWiFiSDK|Authentication|sync_getPortalUrl"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "url="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " | result: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget-object v6, v3, v7

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/iwifi/sdk/tools/Logger;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    return-object v3

    .line 89
    .restart local v1    # "codeRes":Lcom/iwifi/sdk/data/CodeResult;
    :cond_0
    const/4 v4, 0x0

    :try_start_1
    const-string v5, "false"

    aput-object v5, v3, v4

    .line 90
    const/4 v4, 0x1

    invoke-virtual {v1}, Lcom/iwifi/sdk/data/CodeResult;->getMsg()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 93
    .end local v1    # "codeRes":Lcom/iwifi/sdk/data/CodeResult;
    :catch_0
    move-exception v2

    .line 95
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 96
    const-string v4, "false"

    aput-object v4, v3, v8

    .line 97
    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v7

    .line 98
    const-string v4, "iWiFiSDK|Authentication|sync_getPortalUrl"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Error: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/iwifi/sdk/tools/Logger;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 102
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_1
    const-string v4, "false"

    aput-object v4, v3, v8

    .line 103
    const-string v4, "portal url response is null"

    aput-object v4, v3, v7

    .line 104
    const-string v4, "iWiFiSDK|Authentication|sync_getPortalUrl"

    const-string v5, "portal url response is null"

    invoke-static {v4, v5}, Lcom/iwifi/sdk/tools/Logger;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public sync_getTempToken(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;
    .locals 12
    .param p1, "auth_id"    # Ljava/lang/String;
    .param p2, "auth_unqid"    # Ljava/lang/String;
    .param p3, "ter_mac"    # Ljava/lang/String;
    .param p4, "ter_ip"    # Ljava/lang/String;
    .param p5, "imei"    # Ljava/lang/String;
    .param p6, "dev_id"    # Ljava/lang/String;
    .param p7, "ac_name"    # Ljava/lang/String;
    .param p8, "app_id"    # Ljava/lang/String;
    .param p9, "platform_code"    # Ljava/lang/String;
    .param p10, "portal_url"    # Ljava/lang/String;

    .prologue
    .line 142
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 143
    .local v5, "paramList":Ljava/util/List;, "Ljava/util/List<Lcom/iwifi/sdk/tools/DataObject;>;"
    new-instance v9, Lcom/iwifi/sdk/tools/DataObject;

    const-string v10, "auth_id"

    invoke-direct {v9, v10, p1}, Lcom/iwifi/sdk/tools/DataObject;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v5, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 144
    new-instance v9, Lcom/iwifi/sdk/tools/DataObject;

    const-string v10, "auth_unqid"

    invoke-direct {v9, v10, p2}, Lcom/iwifi/sdk/tools/DataObject;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v5, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 145
    new-instance v9, Lcom/iwifi/sdk/tools/DataObject;

    const-string v10, "auth_type"

    const-string v11, "APPMOBILE"

    invoke-direct {v9, v10, v11}, Lcom/iwifi/sdk/tools/DataObject;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v5, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 146
    new-instance v9, Lcom/iwifi/sdk/tools/DataObject;

    const-string v10, "ter_mac"

    invoke-direct {v9, v10, p3}, Lcom/iwifi/sdk/tools/DataObject;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v5, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 147
    new-instance v9, Lcom/iwifi/sdk/tools/DataObject;

    const-string v10, "ter_ip"

    move-object/from16 v0, p4

    invoke-direct {v9, v10, v0}, Lcom/iwifi/sdk/tools/DataObject;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v5, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 148
    new-instance v9, Lcom/iwifi/sdk/tools/DataObject;

    const-string v10, "terminal_type"

    const-string v11, "android"

    invoke-direct {v9, v10, v11}, Lcom/iwifi/sdk/tools/DataObject;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v5, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 149
    new-instance v9, Lcom/iwifi/sdk/tools/DataObject;

    const-string v10, "imei"

    move-object/from16 v0, p5

    invoke-direct {v9, v10, v0}, Lcom/iwifi/sdk/tools/DataObject;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v5, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 150
    new-instance v9, Lcom/iwifi/sdk/tools/DataObject;

    const-string v10, "dev_id"

    move-object/from16 v0, p6

    invoke-direct {v9, v10, v0}, Lcom/iwifi/sdk/tools/DataObject;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v5, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 151
    new-instance v9, Lcom/iwifi/sdk/tools/DataObject;

    const-string v10, "ac_name"

    move-object/from16 v0, p7

    invoke-direct {v9, v10, v0}, Lcom/iwifi/sdk/tools/DataObject;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v5, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 152
    new-instance v9, Lcom/iwifi/sdk/tools/DataObject;

    const-string v10, "app_id"

    move-object/from16 v0, p8

    invoke-direct {v9, v10, v0}, Lcom/iwifi/sdk/tools/DataObject;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v5, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 153
    new-instance v9, Lcom/iwifi/sdk/tools/DataObject;

    const-string v10, "platform_code"

    move-object/from16 v0, p9

    invoke-direct {v9, v10, v0}, Lcom/iwifi/sdk/tools/DataObject;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v5, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 154
    new-instance v9, Lcom/iwifi/sdk/tools/DataObject;

    const-string v10, "portal_url"

    move-object/from16 v0, p10

    invoke-direct {v9, v10, v0}, Lcom/iwifi/sdk/tools/DataObject;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v5, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 156
    sget-object v9, Lcom/iwifi/sdk/protocol/impl/AuthenticatedMethodsUtils;->iWiFi20_WIFI_HOST:Ljava/lang/String;

    const-string v10, "platform10/token.htm"

    const-string v11, ""

    invoke-virtual {p0, v9, v10, v11, v5}, Lcom/iwifi/sdk/protocol/impl/AuthenticatedMethodsUtils;->syncConnect(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;

    move-result-object v4

    .line 157
    .local v4, "json_token":Ljava/lang/String;
    const/4 v9, 0x3

    new-array v8, v9, [Ljava/lang/String;

    const/4 v9, 0x0

    const-string v10, ""

    aput-object v10, v8, v9

    const/4 v9, 0x1

    const-string v10, ""

    aput-object v10, v8, v9

    const/4 v9, 0x2

    const-string v10, ""

    aput-object v10, v8, v9

    .line 159
    .local v8, "token_res":[Ljava/lang/String;
    if-eqz v4, :cond_3

    .line 162
    :try_start_0
    invoke-static {v4}, Lcom/iwifi/sdk/parser/GetCodeResultParser;->GetJsonObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    .line 163
    .local v3, "jsonObject":Lorg/json/JSONObject;
    const-string v9, "result"

    invoke-virtual {v3, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string v10, "OK"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 164
    const-string v7, ""

    .line 165
    .local v7, "token":Ljava/lang/String;
    const-string v1, ""

    .line 166
    .local v1, "auth_type":Ljava/lang/String;
    const-string v6, ""

    .line 167
    .local v6, "platformCode":Ljava/lang/String;
    const-string v9, "token"

    invoke-virtual {v4, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 168
    const-string v9, "token"

    invoke-virtual {v3, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 169
    :cond_0
    const-string v9, "appauth_type"

    invoke-virtual {v4, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 170
    const-string v9, "appauth_type"

    invoke-virtual {v3, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 171
    :cond_1
    const-string v9, "platform_code"

    invoke-virtual {v4, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 172
    const-string v9, "platform_code"

    invoke-virtual {v3, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 174
    :cond_2
    const/4 v9, 0x0

    aput-object v7, v8, v9

    .line 175
    const/4 v9, 0x1

    aput-object v1, v8, v9

    .line 176
    const/4 v9, 0x2

    aput-object v6, v8, v9
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 189
    .end local v1    # "auth_type":Ljava/lang/String;
    .end local v3    # "jsonObject":Lorg/json/JSONObject;
    .end local v6    # "platformCode":Ljava/lang/String;
    .end local v7    # "token":Ljava/lang/String;
    :cond_3
    :goto_0
    const-string v9, "iWiFiSDK|Authentication|sync_getTempToken"

    .line 190
    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "auth_id="

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 191
    const-string v11, "&auth_unqid="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 192
    const-string v11, "&ter_mac="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 193
    const-string v11, "&ter_ip="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move-object/from16 v0, p4

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 194
    const-string v11, "&imei="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move-object/from16 v0, p5

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 195
    const-string v11, "&dev_id="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move-object/from16 v0, p6

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 196
    const-string v11, "&ac_name="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move-object/from16 v0, p7

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 197
    const-string v11, "&platform_code="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move-object/from16 v0, p9

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 198
    const-string v11, "&portal_url="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move-object/from16 v0, p10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 199
    const-string v11, " | result: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 190
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 189
    invoke-static {v9, v10}, Lcom/iwifi/sdk/tools/Logger;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 200
    return-object v8

    .line 178
    .restart local v3    # "jsonObject":Lorg/json/JSONObject;
    :cond_4
    const/4 v9, 0x0

    :try_start_1
    const-string v10, "FAIL"

    aput-object v10, v8, v9

    .line 179
    const/4 v10, 0x1

    const-string v9, "message"

    invoke-virtual {v4, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_5

    const-string v9, "message"

    invoke-virtual {v3, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    :goto_1
    aput-object v9, v8, v10

    .line 180
    const-string v9, "iWiFiSDK|Authentication|sync_getTempToken"

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "GetToken Error: "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/iwifi/sdk/tools/Logger;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    .line 182
    .end local v3    # "jsonObject":Lorg/json/JSONObject;
    :catch_0
    move-exception v2

    .line 183
    .local v2, "e":Ljava/lang/Exception;
    const/4 v9, 0x0

    const-string v10, "FAIL"

    aput-object v10, v8, v9

    .line 184
    const/4 v9, 0x1

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "Error is "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", Original errInfo is : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    .line 185
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 186
    const-string v9, "iWiFiSDK|Authentication|sync_getTempToken"

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "GetToken Error: "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v11, 0x1

    aget-object v11, v8, v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/iwifi/sdk/tools/Logger;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .end local v2    # "e":Ljava/lang/Exception;
    .restart local v3    # "jsonObject":Lorg/json/JSONObject;
    :cond_5
    move-object v9, v4

    .line 179
    goto :goto_1
.end method

.method public taskexecute(Ljava/lang/String;Z)V
    .locals 0
    .param p1, "response"    # Ljava/lang/String;
    .param p2, "bTimeOut"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 1080
    return-void
.end method
