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

.field public static final AUTHEN_TYPE_ACBAS:Ljava/lang/String; = "BAS_AUTH"

.field public static final AUTHEN_TYPE_ACFIT:Ljava/lang/String; = "FIT_AP_AUTH"

.field public static final AUTHEN_TYPE_ACVLAN:Ljava/lang/String; = "VLAN_AUTH"

.field public static final AUTHEN_TYPE_AP:Ljava/lang/String; = "AP_AUTH"

.field public static final AUTHEN_TYPE_THIRD:Ljava/lang/String; = "THIRD_AUTH"


# direct methods
.method static synthetic $SWITCH_TABLE$com$iwifi$sdk$protocol$impl$AuthenticatedMethodsUtils$PostEntityTypeEnum()[I
    .locals 3

    .prologue
    .line 38
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
    .line 53
    invoke-direct {p0}, Lcom/iwifi/sdk/tools/HttpUtil;-><init>()V

    .line 55
    return-void
.end method

.method private AC_syncPostConnection(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;
    .locals 18
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
    .line 980
    .local p3, "paramList":Ljava/util/List;, "Ljava/util/List<Lcom/iwifi/sdk/tools/DataObject;>;"
    const-string v16, ""

    .line 984
    .local v16, "result_json":Ljava/lang/String;
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 985
    :try_start_0
    sget-object v6, Lcom/iwifi/sdk/protocol/impl/AuthenticatedMethodsUtils$PostEntityTypeEnum;->POST_ENTITY_TYPE_UrlEncodedFormEntity:Lcom/iwifi/sdk/protocol/impl/AuthenticatedMethodsUtils$PostEntityTypeEnum;

    .line 986
    const/4 v8, 0x0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v7, p3

    .line 984
    invoke-static/range {v1 .. v8}, Lcom/iwifi/sdk/protocol/impl/AuthenticatedMethodsUtils;->syncPostConnect(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Lcom/iwifi/sdk/protocol/impl/AuthenticatedMethodsUtils$PostEntityTypeEnum;Ljava/util/List;Ljava/lang/String;)Lorg/apache/http/HttpResponse;

    move-result-object v14

    .line 987
    .local v14, "httpRsp":Lorg/apache/http/HttpResponse;
    if-eqz v14, :cond_4

    .line 988
    invoke-interface {v14}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/http/StatusLine;->getStatusCode()I
    :try_end_0
    .catch Lorg/apache/http/conn/HttpHostConnectException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v17

    .line 990
    .local v17, "status_code":I
    const/16 v1, 0xc8

    move/from16 v0, v17

    if-ne v0, v1, :cond_3

    .line 993
    :try_start_1
    const-string v1, "Content-type"

    invoke-interface {v14, v1}, Lorg/apache/http/HttpResponse;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v13

    .line 994
    .local v13, "httpHeader":Lorg/apache/http/Header;
    if-eqz v13, :cond_1

    .line 995
    invoke-interface {v13}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 996
    invoke-interface {v13}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v1

    .line 997
    const-string v2, "text/html"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 999
    invoke-interface {v14}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v1

    .line 1000
    invoke-interface {v1}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v15

    .line 1003
    .local v15, "instream":Ljava/io/InputStream;
    invoke-static {v15}, Lcom/iwifi/sdk/protocol/impl/SDKCommonMotheds;->JSoupHTMLParse(Ljava/io/InputStream;)Lorg/jsoup/nodes/Document;

    move-result-object v9

    .line 1004
    .local v9, "doc":Lorg/jsoup/nodes/Document;
    const-string v1, "body"

    invoke-virtual {v9, v1}, Lorg/jsoup/nodes/Document;->getElementsByTag(Ljava/lang/String;)Lorg/jsoup/select/Elements;

    move-result-object v12

    .line 1005
    .local v12, "elements":Lorg/jsoup/select/Elements;
    if-eqz v12, :cond_0

    .line 1006
    invoke-virtual {v12}, Lorg/jsoup/select/Elements;->text()Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lorg/apache/http/conn/HttpHostConnectException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v16

    .line 1045
    .end local v9    # "doc":Lorg/jsoup/nodes/Document;
    .end local v12    # "elements":Lorg/jsoup/select/Elements;
    .end local v13    # "httpHeader":Lorg/apache/http/Header;
    .end local v14    # "httpRsp":Lorg/apache/http/HttpResponse;
    .end local v15    # "instream":Ljava/io/InputStream;
    .end local v17    # "status_code":I
    :goto_0
    const-string v1, "iWiFiSDK|Common API|AC_syncPostConnection"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "result: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1046
    move-object/from16 v0, v16

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1045
    invoke-static {v1, v2}, Lcom/iwifi/sdk/tools/Logger;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1048
    return-object v16

    .line 1008
    .restart local v9    # "doc":Lorg/jsoup/nodes/Document;
    .restart local v12    # "elements":Lorg/jsoup/select/Elements;
    .restart local v13    # "httpHeader":Lorg/apache/http/Header;
    .restart local v14    # "httpRsp":Lorg/apache/http/HttpResponse;
    .restart local v15    # "instream":Ljava/io/InputStream;
    .restart local v17    # "status_code":I
    :cond_0
    :try_start_2
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "{\"result\":\"FAIL\",\"message\":\"HTML\'s content cann\'t be recognized. That is:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1010
    invoke-virtual {v9}, Lorg/jsoup/nodes/Document;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\"}"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1008
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    .line 1011
    goto :goto_0

    .end local v9    # "doc":Lorg/jsoup/nodes/Document;
    .end local v12    # "elements":Lorg/jsoup/select/Elements;
    .end local v15    # "instream":Ljava/io/InputStream;
    :cond_1
    if-eqz v13, :cond_2

    .line 1012
    invoke-interface {v13}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 1013
    invoke-interface {v13}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v1

    .line 1014
    const-string v2, "application/json"

    .line 1013
    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    .line 1014
    if-eqz v1, :cond_2

    .line 1017
    invoke-interface {v14}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v1

    .line 1016
    invoke-static {v1}, Lorg/apache/http/util/EntityUtils;->toString(Lorg/apache/http/HttpEntity;)Ljava/lang/String;

    move-result-object v16

    .line 1018
    goto :goto_0

    .line 1019
    :cond_2
    const-string v16, "{\"result\":\"FAIL\",\"message\":\"Http response is either HTML or Json \"}"
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catch Lorg/apache/http/conn/HttpHostConnectException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 1022
    .end local v13    # "httpHeader":Lorg/apache/http/Header;
    :catch_0
    move-exception v10

    .line 1023
    .local v10, "e":Ljava/lang/Exception;
    :try_start_3
    invoke-virtual {v10}, Ljava/lang/Exception;->printStackTrace()V

    .line 1024
    const-string v1, "iWiFiSDK|Common API|syncPostConnect"

    .line 1025
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Post request error: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1024
    invoke-static {v1, v2}, Lcom/iwifi/sdk/tools/Logger;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1026
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "{\"result\":\"FAIL\",\"message\":\"Http status code is 200, but parsing error: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1028
    invoke-virtual {v10}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\"}"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1026
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    .line 1030
    goto/16 :goto_0

    .line 1031
    .end local v10    # "e":Ljava/lang/Exception;
    :cond_3
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "{\"result\":\"FAIL\",\"message\":\"Http status code is :"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1032
    move/from16 v0, v17

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\"}"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1031
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    .line 1034
    goto/16 :goto_0

    .line 1035
    .end local v17    # "status_code":I
    :cond_4
    const-string v16, "{\"result\":\"FAIL\",\"message\":\"Http Post Failed response none. \"}"
    :try_end_3
    .catch Lorg/apache/http/conn/HttpHostConnectException; {:try_start_3 .. :try_end_3} :catch_1

    goto/16 :goto_0

    .line 1038
    .end local v14    # "httpRsp":Lorg/apache/http/HttpResponse;
    :catch_1
    move-exception v11

    .line 1040
    .local v11, "e1":Lorg/apache/http/conn/HttpHostConnectException;
    invoke-virtual {v11}, Lorg/apache/http/conn/HttpHostConnectException;->printStackTrace()V

    .line 1041
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "{\"result\":\"FAIL\",\"message\":\"Http Post Failed :"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1042
    invoke-virtual {v11}, Lorg/apache/http/conn/HttpHostConnectException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\"}"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1041
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

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

    .line 1090
    const-string v1, ""

    .line 1093
    .local v1, "result_json":Ljava/lang/String;
    invoke-static {p1, v3, v3, v3}, Lcom/iwifi/sdk/protocol/impl/AuthenticatedMethodsUtils;->syncGetConnect(Ljava/lang/String;Ljava/util/Map;Lorg/apache/http/params/HttpParams;Lorg/apache/http/client/CookieStore;)Lorg/apache/http/HttpResponse;

    move-result-object v0

    .line 1094
    .local v0, "httpRsp":Lorg/apache/http/HttpResponse;
    if-eqz v0, :cond_1

    .line 1095
    invoke-interface {v0}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v3

    invoke-interface {v3}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v2

    .line 1097
    .local v2, "status_code":I
    const/16 v3, 0xc8

    if-ne v2, v3, :cond_0

    .line 1098
    const-string v1, "{\"result\":\"OK\",\"message\":\"Success\"}"

    .line 1109
    .end local v2    # "status_code":I
    :goto_0
    const-string v3, "iWiFiSDK|Common API|Third_SecondAuthGetConnection"

    .line 1110
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "result: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1109
    invoke-static {v3, v4}, Lcom/iwifi/sdk/tools/Logger;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1112
    return-object v1

    .line 1101
    .restart local v2    # "status_code":I
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "{\"result\":\"FAIL\",\"message\":\"Http status code is :"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1102
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\"}"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1101
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1104
    goto :goto_0

    .line 1105
    .end local v2    # "status_code":I
    :cond_1
    const-string v1, "{\"result\":\"FAIL\",\"message\":\"Http Get Failed response none. \"}"

    goto :goto_0
.end method

.method private Third_SecondAuthPostConnection(Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;
    .locals 12
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
    .line 1054
    .local p2, "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v10, ""

    .line 1058
    .local v10, "result_json":Ljava/lang/String;
    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 1059
    :try_start_0
    sget-object v5, Lcom/iwifi/sdk/protocol/impl/AuthenticatedMethodsUtils$PostEntityTypeEnum;->POST_ENTITY_TYPE_StringEntity:Lcom/iwifi/sdk/protocol/impl/AuthenticatedMethodsUtils$PostEntityTypeEnum;

    const/4 v6, 0x0

    move-object v0, p1

    move-object v4, p2

    move-object v7, p3

    .line 1058
    invoke-static/range {v0 .. v7}, Lcom/iwifi/sdk/protocol/impl/AuthenticatedMethodsUtils;->syncPostConnect(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Lcom/iwifi/sdk/protocol/impl/AuthenticatedMethodsUtils$PostEntityTypeEnum;Ljava/util/List;Ljava/lang/String;)Lorg/apache/http/HttpResponse;

    move-result-object v9

    .line 1061
    .local v9, "httpRsp":Lorg/apache/http/HttpResponse;
    if-eqz v9, :cond_1

    .line 1062
    invoke-interface {v9}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v11

    .line 1064
    .local v11, "status_code":I
    const/16 v0, 0xc8

    if-ne v11, v0, :cond_0

    .line 1065
    const-string v10, "{\"result\":\"OK\",\"message\":\"Success\"}"
    :try_end_0
    .catch Lorg/apache/http/conn/HttpHostConnectException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1081
    .end local v9    # "httpRsp":Lorg/apache/http/HttpResponse;
    .end local v11    # "status_code":I
    :goto_0
    const-string v0, "iWiFiSDK|Common API|Third_SecondAuthPostConnection"

    .line 1082
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "result: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1081
    invoke-static {v0, v1}, Lcom/iwifi/sdk/tools/Logger;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1084
    return-object v10

    .line 1068
    .restart local v9    # "httpRsp":Lorg/apache/http/HttpResponse;
    .restart local v11    # "status_code":I
    :cond_0
    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "{\"result\":\"FAIL\",\"message\":\"Http status code is :"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1069
    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\"}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1068
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 1071
    goto :goto_0

    .line 1072
    .end local v11    # "status_code":I
    :cond_1
    const-string v10, "{\"result\":\"FAIL\",\"message\":\"Http Post Failed response none. \"}"
    :try_end_1
    .catch Lorg/apache/http/conn/HttpHostConnectException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 1075
    .end local v9    # "httpRsp":Lorg/apache/http/HttpResponse;
    :catch_0
    move-exception v8

    .line 1077
    .local v8, "e1":Lorg/apache/http/conn/HttpHostConnectException;
    invoke-virtual {v8}, Lorg/apache/http/conn/HttpHostConnectException;->printStackTrace()V

    .line 1078
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "{\"result\":\"FAIL\",\"message\":\"Http Post Failed :"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1079
    invoke-virtual {v8}, Lorg/apache/http/conn/HttpHostConnectException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\"}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1078
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    goto :goto_0
.end method

.method public static syncGetConnect(Ljava/lang/String;Ljava/util/Map;Lorg/apache/http/params/HttpParams;Lorg/apache/http/client/CookieStore;)Lorg/apache/http/HttpResponse;
    .locals 7
    .param p0, "url"    # Ljava/lang/String;
    .param p2, "params"    # Lorg/apache/http/params/HttpParams;
    .param p3, "store"    # Lorg/apache/http/client/CookieStore;
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
    .local p1, "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v5, 0x0

    .line 1204
    if-nez p0, :cond_0

    move-object v4, v5

    .line 1229
    :goto_0
    return-object v4

    .line 1207
    :cond_0
    new-instance v3, Lorg/apache/http/client/methods/HttpGet;

    invoke-direct {v3, p0}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    .line 1208
    .local v3, "request":Lorg/apache/http/client/methods/HttpGet;
    move-object v2, p2

    .line 1209
    .local v2, "httpParams":Lorg/apache/http/params/HttpParams;
    if-nez v2, :cond_1

    .line 1210
    new-instance v2, Lorg/apache/http/params/BasicHttpParams;

    .end local v2    # "httpParams":Lorg/apache/http/params/HttpParams;
    invoke-direct {v2}, Lorg/apache/http/params/BasicHttpParams;-><init>()V

    .line 1213
    .restart local v2    # "httpParams":Lorg/apache/http/params/HttpParams;
    :cond_1
    const/16 v6, 0xbb8

    invoke-static {v2, v6}, Lorg/apache/http/params/HttpConnectionParams;->setConnectionTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 1214
    const/16 v6, 0x2710

    invoke-static {v2, v6}, Lorg/apache/http/params/HttpConnectionParams;->setSoTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 1215
    new-instance v1, Lcom/iwifi/sdk/tools/HttpManager;

    invoke-direct {v1}, Lcom/iwifi/sdk/tools/HttpManager;-><init>()V

    .line 1216
    .local v1, "hm":Lcom/iwifi/sdk/tools/HttpManager;
    if-eqz p3, :cond_2

    .line 1217
    invoke-virtual {v1, p3}, Lcom/iwifi/sdk/tools/HttpManager;->setCookieStore(Lorg/apache/http/client/CookieStore;)V

    .line 1220
    :cond_2
    const/4 v4, 0x0

    .line 1222
    .local v4, "response":Lorg/apache/http/HttpResponse;
    :try_start_0
    invoke-virtual {v1, v3}, Lcom/iwifi/sdk/tools/HttpManager;->execute(Lorg/apache/http/client/methods/HttpGet;)Lorg/apache/http/HttpResponse;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 1223
    goto :goto_0

    .line 1224
    :catch_0
    move-exception v0

    .line 1226
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    move-object v4, v5

    .line 1229
    goto :goto_0
.end method

.method public static syncPostConnect(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Lcom/iwifi/sdk/protocol/impl/AuthenticatedMethodsUtils$PostEntityTypeEnum;Ljava/util/List;Ljava/lang/String;)Lorg/apache/http/HttpResponse;
    .locals 16
    .param p0, "url"    # Ljava/lang/String;
    .param p1, "methodName"    # Ljava/lang/String;
    .param p2, "action"    # Ljava/lang/String;
    .param p3, "partUrl"    # Ljava/lang/String;
    .param p5, "entity_type"    # Lcom/iwifi/sdk/protocol/impl/AuthenticatedMethodsUtils$PostEntityTypeEnum;
    .param p7, "paramString"    # Ljava/lang/String;
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
    .line 1121
    .local p4, "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .local p6, "paramsList":Ljava/util/List;, "Ljava/util/List<Lcom/iwifi/sdk/tools/DataObject;>;"
    if-nez p1, :cond_0

    .line 1122
    const-string p1, ""

    .line 1124
    :cond_0
    if-nez p2, :cond_1

    .line 1125
    const-string p2, ""

    .line 1127
    :cond_1
    if-nez p3, :cond_2

    .line 1128
    const-string p3, ""

    .line 1130
    :cond_2
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p3

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 1133
    .local v11, "tempString":Ljava/lang/String;
    const-string v13, ""

    if-ne v11, v13, :cond_7

    .line 1134
    const-string v13, "getPortalUrl"

    move-object/from16 v0, p1

    invoke-virtual {v13, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_6

    .line 1135
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-static/range {p0 .. p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p2

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 1145
    .local v12, "tempUrl":Ljava/lang/String;
    :goto_0
    new-instance v9, Lorg/apache/http/client/methods/HttpPost;

    invoke-direct {v9, v12}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    .line 1146
    .local v9, "request":Lorg/apache/http/client/methods/HttpPost;
    const-string v13, "iWiFiSDK|Common API|syncPostConnect"

    new-instance v14, Ljava/lang/StringBuilder;

    const-string v15, "methodName:"

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1147
    move-object/from16 v0, p1

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "&url="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    .line 1146
    invoke-static {v13, v14}, Lcom/iwifi/sdk/tools/Logger;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1148
    const/4 v6, 0x0

    .line 1150
    .local v6, "httpParams":Lorg/apache/http/params/HttpParams;
    if-nez v6, :cond_3

    .line 1151
    new-instance v6, Lorg/apache/http/params/BasicHttpParams;

    .end local v6    # "httpParams":Lorg/apache/http/params/HttpParams;
    invoke-direct {v6}, Lorg/apache/http/params/BasicHttpParams;-><init>()V

    .line 1154
    .restart local v6    # "httpParams":Lorg/apache/http/params/HttpParams;
    :cond_3
    const/16 v13, 0xbb8

    invoke-static {v6, v13}, Lorg/apache/http/params/HttpConnectionParams;->setConnectionTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 1155
    const/16 v13, 0x2710

    invoke-static {v6, v13}, Lorg/apache/http/params/HttpConnectionParams;->setSoTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 1156
    new-instance v3, Lcom/iwifi/sdk/tools/HttpManager;

    invoke-direct {v3}, Lcom/iwifi/sdk/tools/HttpManager;-><init>()V

    .line 1158
    .local v3, "hm":Lcom/iwifi/sdk/tools/HttpManager;
    if-eqz p4, :cond_4

    invoke-interface/range {p4 .. p4}, Ljava/util/Map;->size()I

    move-result v13

    if-lez v13, :cond_4

    .line 1159
    invoke-interface/range {p4 .. p4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v13

    invoke-interface {v13}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v15

    :goto_1
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-nez v13, :cond_9

    .line 1165
    :cond_4
    const/4 v4, 0x0

    .line 1166
    .local v4, "httpEntity":Lorg/apache/http/HttpEntity;
    :try_start_0
    invoke-static {}, Lcom/iwifi/sdk/protocol/impl/AuthenticatedMethodsUtils;->$SWITCH_TABLE$com$iwifi$sdk$protocol$impl$AuthenticatedMethodsUtils$PostEntityTypeEnum()[I

    move-result-object v13

    invoke-virtual/range {p5 .. p5}, Lcom/iwifi/sdk/protocol/impl/AuthenticatedMethodsUtils$PostEntityTypeEnum;->ordinal()I

    move-result v14

    aget v13, v13, v14

    packed-switch v13, :pswitch_data_0

    .line 1182
    const/4 v4, 0x0

    .line 1186
    :goto_2
    if-eqz v4, :cond_5

    .line 1187
    invoke-virtual {v9, v4}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 1189
    :cond_5
    invoke-virtual {v3, v9}, Lcom/iwifi/sdk/tools/HttpManager;->execute(Lorg/apache/http/client/methods/HttpPost;)Lorg/apache/http/HttpResponse;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v10

    .line 1198
    :goto_3
    return-object v10

    .line 1137
    .end local v3    # "hm":Lcom/iwifi/sdk/tools/HttpManager;
    .end local v4    # "httpEntity":Lorg/apache/http/HttpEntity;
    .end local v6    # "httpParams":Lorg/apache/http/params/HttpParams;
    .end local v9    # "request":Lorg/apache/http/client/methods/HttpPost;
    .end local v12    # "tempUrl":Ljava/lang/String;
    :cond_6
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-static/range {p0 .. p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p1

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p2

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 1138
    .restart local v12    # "tempUrl":Ljava/lang/String;
    goto/16 :goto_0

    .line 1139
    .end local v12    # "tempUrl":Ljava/lang/String;
    :cond_7
    const-string v13, "getPortalUrl"

    move-object/from16 v0, p1

    invoke-virtual {v13, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_8

    .line 1140
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-static/range {p0 .. p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p2

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

    .line 1142
    .end local v12    # "tempUrl":Ljava/lang/String;
    :cond_8
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-static/range {p0 .. p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p1

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p2

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

    .line 1159
    .restart local v3    # "hm":Lcom/iwifi/sdk/tools/HttpManager;
    .restart local v6    # "httpParams":Lorg/apache/http/params/HttpParams;
    .restart local v9    # "request":Lorg/apache/http/client/methods/HttpPost;
    :cond_9
    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 1160
    .local v2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    invoke-virtual {v9, v13, v14}, Lorg/apache/http/client/methods/HttpPost;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1168
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v4    # "httpEntity":Lorg/apache/http/HttpEntity;
    :pswitch_0
    :try_start_1
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 1169
    .local v8, "pairList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/apache/http/message/BasicNameValuePair;>;"
    sget-object v13, Lcom/iwifi/sdk/protocol/impl/AuthenticatedMethodsUtils$PostEntityTypeEnum;->POST_ENTITY_TYPE_UrlEncodedFormEntity:Lcom/iwifi/sdk/protocol/impl/AuthenticatedMethodsUtils$PostEntityTypeEnum;

    move-object/from16 v0, p5

    if-ne v0, v13, :cond_a

    .line 1170
    if-eqz p6, :cond_a

    .line 1171
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_4
    invoke-interface/range {p6 .. p6}, Ljava/util/List;->size()I

    move-result v13

    if-lt v7, v13, :cond_b

    .line 1176
    .end local v7    # "i":I
    :cond_a
    new-instance v5, Lorg/apache/http/client/entity/UrlEncodedFormEntity;

    const-string v13, "UTF-8"

    invoke-direct {v5, v8, v13}, Lorg/apache/http/client/entity/UrlEncodedFormEntity;-><init>(Ljava/util/List;Ljava/lang/String;)V

    .end local v4    # "httpEntity":Lorg/apache/http/HttpEntity;
    .local v5, "httpEntity":Lorg/apache/http/HttpEntity;
    move-object v4, v5

    .line 1177
    .end local v5    # "httpEntity":Lorg/apache/http/HttpEntity;
    .restart local v4    # "httpEntity":Lorg/apache/http/HttpEntity;
    goto/16 :goto_2

    .line 1172
    .restart local v7    # "i":I
    :cond_b
    new-instance v14, Lorg/apache/http/message/BasicNameValuePair;

    move-object/from16 v0, p6

    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/iwifi/sdk/tools/DataObject;

    .line 1173
    invoke-virtual {v13}, Lcom/iwifi/sdk/tools/DataObject;->getKey()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p6

    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/iwifi/sdk/tools/DataObject;

    invoke-virtual {v13}, Lcom/iwifi/sdk/tools/DataObject;->getValue()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v14, v15, v13}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1172
    invoke-virtual {v8, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1171
    add-int/lit8 v7, v7, 0x1

    goto :goto_4

    .line 1179
    .end local v7    # "i":I
    .end local v8    # "pairList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/apache/http/message/BasicNameValuePair;>;"
    :pswitch_1
    new-instance v5, Lorg/apache/http/entity/StringEntity;

    const-string v13, "UTF-8"

    move-object/from16 v0, p7

    invoke-direct {v5, v0, v13}, Lorg/apache/http/entity/StringEntity;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .end local v4    # "httpEntity":Lorg/apache/http/HttpEntity;
    .restart local v5    # "httpEntity":Lorg/apache/http/HttpEntity;
    move-object v4, v5

    .line 1180
    .end local v5    # "httpEntity":Lorg/apache/http/HttpEntity;
    .restart local v4    # "httpEntity":Lorg/apache/http/HttpEntity;
    goto/16 :goto_2

    .line 1192
    :catch_0
    move-exception v1

    .line 1194
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 1195
    const-string v13, "iWiFiSDK|Common API|syncPostConnect"

    .line 1196
    new-instance v14, Ljava/lang/StringBuilder;

    const-string v15, "Post request error: "

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    .line 1195
    invoke-static {v13, v14}, Lcom/iwifi/sdk/tools/Logger;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1198
    const/4 v10, 0x0

    goto/16 :goto_3

    .line 1166
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public AC_sync_LoginAuthen(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/iwifi/sdk/protocol/impl/AuthenticatedMethodsUtils$AuthenResultInfo;
    .locals 16
    .param p1, "phoneNum"    # Ljava/lang/String;
    .param p2, "dev_id"    # Ljava/lang/String;
    .param p3, "authKey"    # Ljava/lang/String;
    .param p4, "ter_ip"    # Ljava/lang/String;
    .param p5, "ac_name"    # Ljava/lang/String;
    .param p6, "accountId"    # Ljava/lang/String;
    .param p7, "ac_host_url"    # Ljava/lang/String;

    .prologue
    .line 294
    new-instance v15, Lcom/iwifi/sdk/protocol/impl/AuthenticatedMethodsUtils$AuthenResultInfo;

    invoke-direct/range {v15 .. v16}, Lcom/iwifi/sdk/protocol/impl/AuthenticatedMethodsUtils$AuthenResultInfo;-><init>(Lcom/iwifi/sdk/protocol/impl/AuthenticatedMethodsUtils;)V

    .line 295
    .local v15, "result":Lcom/iwifi/sdk/protocol/impl/AuthenticatedMethodsUtils$AuthenResultInfo;
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .line 302
    .local v14, "paramList":Ljava/util/List;, "Ljava/util/List<Lcom/iwifi/sdk/tools/DataObject;>;"
    new-instance v1, Lcom/iwifi/sdk/tools/DataObject;

    const-string v3, "username"

    move-object/from16 v0, p1

    invoke-direct {v1, v3, v0}, Lcom/iwifi/sdk/tools/DataObject;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v14, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 303
    new-instance v1, Lcom/iwifi/sdk/tools/DataObject;

    const-string v3, "password"

    move-object/from16 v0, p3

    invoke-direct {v1, v3, v0}, Lcom/iwifi/sdk/tools/DataObject;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v14, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 304
    new-instance v1, Lcom/iwifi/sdk/tools/DataObject;

    const-string v3, "user_ip"

    move-object/from16 v0, p4

    invoke-direct {v1, v3, v0}, Lcom/iwifi/sdk/tools/DataObject;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v14, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 305
    new-instance v1, Lcom/iwifi/sdk/tools/DataObject;

    const-string v3, "ac_name"

    move-object/from16 v0, p5

    invoke-direct {v1, v3, v0}, Lcom/iwifi/sdk/tools/DataObject;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v14, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 307
    sget-object v1, Lcom/iwifi/sdk/tools/HttpConf;->iWiFi20_AC_HOST:Ljava/lang/String;

    .line 308
    const-string v3, "appaciauth.htm"

    .line 307
    move-object/from16 v0, p0

    invoke-direct {v0, v1, v3, v14}, Lcom/iwifi/sdk/protocol/impl/AuthenticatedMethodsUtils;->AC_syncPostConnection(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;

    move-result-object v12

    .line 310
    .local v12, "json_res":Ljava/lang/String;
    if-eqz v12, :cond_2

    .line 313
    :try_start_0
    invoke-static {v12}, Lcom/iwifi/sdk/parser/GetCodeResultParser;->GetJsonObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v11

    .line 314
    .local v11, "jsonObject":Lorg/json/JSONObject;
    const-string v1, "result"

    invoke-virtual {v11, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "OK"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 315
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "{\"result\":\"OK\",\"message\":\"AC \u8ba4\u8bc1\u6210\u529f\",\"logoffUrl\":\""

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 316
    move-object/from16 v0, p7

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 317
    const-string v3, "\",\"ac_name\":\""

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 318
    move-object/from16 v0, p5

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 319
    const-string v3, "\"}"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 315
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 321
    .local v2, "json":Ljava/lang/String;
    const-string v3, "AC_AUTH"

    const/4 v5, 0x0

    const/4 v7, 0x0

    .line 322
    const-string v9, ""

    move-object/from16 v1, p0

    move-object/from16 v4, p2

    move-object/from16 v6, p3

    move-object/from16 v8, p6

    .line 320
    invoke-virtual/range {v1 .. v9}, Lcom/iwifi/sdk/protocol/impl/AuthenticatedMethodsUtils;->generateAuthResultJson(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v15, Lcom/iwifi/sdk/protocol/impl/AuthenticatedMethodsUtils$AuthenResultInfo;->auth_resultInfo:Ljava/lang/String;

    .line 323
    const/4 v1, 0x1

    iput-boolean v1, v15, Lcom/iwifi/sdk/protocol/impl/AuthenticatedMethodsUtils$AuthenResultInfo;->auth_status:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 356
    .end local v11    # "jsonObject":Lorg/json/JSONObject;
    :goto_0
    const-string v1, "iWiFiSDK|Authentication|AC_sync_LoginAuthen"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "phone="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 357
    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "&token="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "&ac_name="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p5

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 358
    const-string v4, "&ter_ip="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p4

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " | result: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v15, Lcom/iwifi/sdk/protocol/impl/AuthenticatedMethodsUtils$AuthenResultInfo;->auth_resultInfo:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 356
    invoke-static {v1, v3}, Lcom/iwifi/sdk/tools/Logger;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 359
    return-object v15

    .line 325
    .end local v2    # "json":Ljava/lang/String;
    .restart local v11    # "jsonObject":Lorg/json/JSONObject;
    :cond_0
    :try_start_1
    const-string v13, "Authentication Failed"

    .line 326
    .local v13, "message":Ljava/lang/String;
    const-string v1, "message"

    invoke-virtual {v12, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 327
    const-string v1, "message"

    invoke-virtual {v11, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 328
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "{\"result\":\"FAIL\",\"message\":\"AC \u8ba4\u8bc1\u5931\u8d25:"

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 329
    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "\",\"logoffUrl\":\""

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v0, p7

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 330
    const-string v3, "\",\"ac_name\":\""

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v0, p5

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "\"}"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 328
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 332
    .restart local v2    # "json":Ljava/lang/String;
    const-string v3, "AC_AUTH"

    const/4 v5, 0x0

    const/4 v7, 0x0

    .line 333
    const-string v9, ""

    move-object/from16 v1, p0

    move-object/from16 v4, p2

    move-object/from16 v6, p3

    move-object/from16 v8, p6

    .line 331
    invoke-virtual/range {v1 .. v9}, Lcom/iwifi/sdk/protocol/impl/AuthenticatedMethodsUtils;->generateAuthResultJson(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v15, Lcom/iwifi/sdk/protocol/impl/AuthenticatedMethodsUtils$AuthenResultInfo;->auth_resultInfo:Ljava/lang/String;

    .line 334
    const/4 v1, 0x0

    iput-boolean v1, v15, Lcom/iwifi/sdk/protocol/impl/AuthenticatedMethodsUtils$AuthenResultInfo;->auth_status:Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    .line 336
    .end local v2    # "json":Ljava/lang/String;
    .end local v11    # "jsonObject":Lorg/json/JSONObject;
    .end local v13    # "message":Ljava/lang/String;
    :catch_0
    move-exception v10

    .line 337
    .local v10, "e":Ljava/lang/Exception;
    invoke-virtual {v10}, Ljava/lang/Exception;->printStackTrace()V

    .line 338
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "{\"result\":\"FAIL\",\"message\":\"Json error :"

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 339
    invoke-virtual {v10}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 340
    const-string v3, "\",\"logoffUrl\":\""

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v0, p7

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 341
    const-string v3, "\",\"ac_name\":\""

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v0, p5

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "\"}"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 338
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 343
    .restart local v2    # "json":Ljava/lang/String;
    const-string v3, "AC_AUTH"

    const/4 v5, 0x0

    const/4 v7, 0x0

    .line 344
    const-string v9, ""

    move-object/from16 v1, p0

    move-object/from16 v4, p2

    move-object/from16 v6, p3

    move-object/from16 v8, p6

    .line 342
    invoke-virtual/range {v1 .. v9}, Lcom/iwifi/sdk/protocol/impl/AuthenticatedMethodsUtils;->generateAuthResultJson(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v15, Lcom/iwifi/sdk/protocol/impl/AuthenticatedMethodsUtils$AuthenResultInfo;->auth_resultInfo:Ljava/lang/String;

    .line 345
    const/4 v1, 0x0

    iput-boolean v1, v15, Lcom/iwifi/sdk/protocol/impl/AuthenticatedMethodsUtils$AuthenResultInfo;->auth_status:Z

    goto/16 :goto_0

    .line 348
    .end local v2    # "json":Ljava/lang/String;
    .end local v10    # "e":Ljava/lang/Exception;
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "{\"result\":\"FAIL\",\"message\":\"\u8bf7\u6c42\u8d85\u65f6\",\"logoffUrl\":\""

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 349
    move-object/from16 v0, p7

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "\",\"ac_name\":\""

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 350
    move-object/from16 v0, p5

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "\"}"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 348
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 352
    .restart local v2    # "json":Ljava/lang/String;
    const-string v3, "AC_AUTH"

    const/4 v5, 0x0

    const/4 v7, 0x0

    const-string v9, ""

    move-object/from16 v1, p0

    move-object/from16 v4, p2

    move-object/from16 v6, p3

    move-object/from16 v8, p6

    .line 351
    invoke-virtual/range {v1 .. v9}, Lcom/iwifi/sdk/protocol/impl/AuthenticatedMethodsUtils;->generateAuthResultJson(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v15, Lcom/iwifi/sdk/protocol/impl/AuthenticatedMethodsUtils$AuthenResultInfo;->auth_resultInfo:Ljava/lang/String;

    .line 353
    const/4 v1, 0x0

    iput-boolean v1, v15, Lcom/iwifi/sdk/protocol/impl/AuthenticatedMethodsUtils$AuthenResultInfo;->auth_status:Z

    goto/16 :goto_0
.end method

.method public AC_sync_LogoffReq(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/iwifi/sdk/protocol/impl/AuthenticatedMethodsUtils$LogoffResultInfo;
    .locals 9
    .param p1, "phoneNum"    # Ljava/lang/String;
    .param p2, "authKey"    # Ljava/lang/String;
    .param p3, "ac_name"    # Ljava/lang/String;
    .param p4, "ter_ip"    # Ljava/lang/String;
    .param p5, "host_url"    # Ljava/lang/String;

    .prologue
    const/4 v8, 0x0

    .line 535
    new-instance v4, Lcom/iwifi/sdk/protocol/impl/AuthenticatedMethodsUtils$LogoffResultInfo;

    invoke-direct {v4, p0}, Lcom/iwifi/sdk/protocol/impl/AuthenticatedMethodsUtils$LogoffResultInfo;-><init>(Lcom/iwifi/sdk/protocol/impl/AuthenticatedMethodsUtils;)V

    .line 536
    .local v4, "result":Lcom/iwifi/sdk/protocol/impl/AuthenticatedMethodsUtils$LogoffResultInfo;
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 537
    .local v3, "paramList":Ljava/util/List;, "Ljava/util/List<Lcom/iwifi/sdk/tools/DataObject;>;"
    new-instance v6, Lcom/iwifi/sdk/tools/DataObject;

    const-string v7, "username"

    invoke-direct {v6, v7, p1}, Lcom/iwifi/sdk/tools/DataObject;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 538
    new-instance v6, Lcom/iwifi/sdk/tools/DataObject;

    const-string v7, "password"

    invoke-direct {v6, v7, p2}, Lcom/iwifi/sdk/tools/DataObject;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 539
    new-instance v6, Lcom/iwifi/sdk/tools/DataObject;

    const-string v7, "user_ip"

    invoke-direct {v6, v7, p4}, Lcom/iwifi/sdk/tools/DataObject;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 540
    new-instance v6, Lcom/iwifi/sdk/tools/DataObject;

    const-string v7, "ac_name"

    invoke-direct {v6, v7, p3}, Lcom/iwifi/sdk/tools/DataObject;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 541
    sget-object v6, Lcom/iwifi/sdk/tools/HttpConf;->iWiFi20_AC_HOST:Ljava/lang/String;

    .line 542
    const-string v7, "appacilogout.htm"

    .line 541
    invoke-direct {p0, v6, v7, v3}, Lcom/iwifi/sdk/protocol/impl/AuthenticatedMethodsUtils;->AC_syncPostConnection(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;

    move-result-object v5

    .line 544
    .local v5, "result_json":Ljava/lang/String;
    if-eqz v5, :cond_3

    .line 547
    :try_start_0
    invoke-static {v5}, Lcom/iwifi/sdk/parser/GetCodeResultParser;->GetJsonObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 548
    .local v1, "jsonObject":Lorg/json/JSONObject;
    const-string v6, "result"

    invoke-virtual {v1, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "OK"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 549
    const-string v2, "Logoff Failed"

    .line 550
    .local v2, "message":Ljava/lang/String;
    const-string v6, "message"

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 551
    const-string v6, "message"

    invoke-virtual {v1, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 552
    :cond_0
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "{\"result\":\"FAIL\",\"message\":\""

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 553
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\"}"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 552
    iput-object v6, v4, Lcom/iwifi/sdk/protocol/impl/AuthenticatedMethodsUtils$LogoffResultInfo;->logoff_resultInfo:Ljava/lang/String;

    .line 554
    const/4 v6, 0x0

    iput-boolean v6, v4, Lcom/iwifi/sdk/protocol/impl/AuthenticatedMethodsUtils$LogoffResultInfo;->logoff_status:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 577
    .end local v1    # "jsonObject":Lorg/json/JSONObject;
    .end local v2    # "message":Ljava/lang/String;
    :goto_0
    const-string v6, "iWiFiSDK|Logoff|AC_sync_LogoffReq"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "ac_name="

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 578
    const-string v8, "&ter_ip="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "&host_url="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " | result: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 579
    iget-object v8, v4, Lcom/iwifi/sdk/protocol/impl/AuthenticatedMethodsUtils$LogoffResultInfo;->logoff_resultInfo:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 577
    invoke-static {v6, v7}, Lcom/iwifi/sdk/tools/Logger;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 581
    return-object v4

    .line 557
    .restart local v1    # "jsonObject":Lorg/json/JSONObject;
    :cond_1
    :try_start_1
    const-string v2, "Logoff Success"

    .line 558
    .restart local v2    # "message":Ljava/lang/String;
    const-string v6, "message"

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 559
    const-string v6, "message"

    invoke-virtual {v1, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 560
    :cond_2
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "{\"result\":\"OK\",\"message\":\""

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 561
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\"}"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 560
    iput-object v6, v4, Lcom/iwifi/sdk/protocol/impl/AuthenticatedMethodsUtils$LogoffResultInfo;->logoff_resultInfo:Ljava/lang/String;

    .line 562
    const/4 v6, 0x1

    iput-boolean v6, v4, Lcom/iwifi/sdk/protocol/impl/AuthenticatedMethodsUtils$LogoffResultInfo;->logoff_status:Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 565
    .end local v1    # "jsonObject":Lorg/json/JSONObject;
    .end local v2    # "message":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 566
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 567
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "{\"result\":\"FAIL\",\"message\":\"Json error :"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 568
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\"}"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 567
    iput-object v6, v4, Lcom/iwifi/sdk/protocol/impl/AuthenticatedMethodsUtils$LogoffResultInfo;->logoff_resultInfo:Ljava/lang/String;

    .line 569
    iput-boolean v8, v4, Lcom/iwifi/sdk/protocol/impl/AuthenticatedMethodsUtils$LogoffResultInfo;->logoff_status:Z

    goto/16 :goto_0

    .line 572
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_3
    const-string v6, "{\"result\":\"FAIL\",\"message\":\"\u8bf7\u6c42\u8d85\u65f6\"}"

    iput-object v6, v4, Lcom/iwifi/sdk/protocol/impl/AuthenticatedMethodsUtils$LogoffResultInfo;->logoff_resultInfo:Ljava/lang/String;

    .line 574
    iput-boolean v8, v4, Lcom/iwifi/sdk/protocol/impl/AuthenticatedMethodsUtils$LogoffResultInfo;->logoff_status:Z

    goto/16 :goto_0
.end method

.method public AP_sync_LoginAuthen(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/iwifi/sdk/protocol/impl/AuthenticatedMethodsUtils$AuthenResultInfo;
    .locals 15
    .param p1, "ipGateway"    # Ljava/lang/String;
    .param p2, "phoneNum"    # Ljava/lang/String;
    .param p3, "authKey"    # Ljava/lang/String;
    .param p4, "devType"    # Ljava/lang/String;
    .param p5, "devId"    # Ljava/lang/String;
    .param p6, "accountId"    # Ljava/lang/String;
    .param p7, "url"    # Ljava/lang/String;

    .prologue
    .line 227
    new-instance v14, Lcom/iwifi/sdk/protocol/impl/AuthenticatedMethodsUtils$AuthenResultInfo;

    invoke-direct {v14, p0}, Lcom/iwifi/sdk/protocol/impl/AuthenticatedMethodsUtils$AuthenResultInfo;-><init>(Lcom/iwifi/sdk/protocol/impl/AuthenticatedMethodsUtils;)V

    .line 228
    .local v14, "result":Lcom/iwifi/sdk/protocol/impl/AuthenticatedMethodsUtils$AuthenResultInfo;
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 229
    .local v13, "paramList":Ljava/util/List;, "Ljava/util/List<Lcom/iwifi/sdk/tools/DataObject;>;"
    new-instance v1, Lcom/iwifi/sdk/tools/DataObject;

    const-string v3, "phone"

    move-object/from16 v0, p2

    invoke-direct {v1, v3, v0}, Lcom/iwifi/sdk/tools/DataObject;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v13, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 230
    new-instance v1, Lcom/iwifi/sdk/tools/DataObject;

    const-string v3, "token"

    move-object/from16 v0, p3

    invoke-direct {v1, v3, v0}, Lcom/iwifi/sdk/tools/DataObject;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v13, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 231
    new-instance v1, Lcom/iwifi/sdk/tools/DataObject;

    const-string v3, "dev_type"

    move-object/from16 v0, p4

    invoke-direct {v1, v3, v0}, Lcom/iwifi/sdk/tools/DataObject;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v13, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 232
    new-instance v1, Lcom/iwifi/sdk/tools/DataObject;

    const-string v3, "dev_id"

    move-object/from16 v0, p5

    invoke-direct {v1, v3, v0}, Lcom/iwifi/sdk/tools/DataObject;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v13, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 233
    new-instance v1, Lcom/iwifi/sdk/tools/DataObject;

    const-string v3, "url"

    move-object/from16 v0, p7

    invoke-direct {v1, v3, v0}, Lcom/iwifi/sdk/tools/DataObject;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v13, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 234
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "http://"

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ":2060/"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 235
    const-string v3, "smartwifi/auth"

    const-string v4, ""

    .line 234
    invoke-virtual {p0, v1, v3, v4, v13}, Lcom/iwifi/sdk/protocol/impl/AuthenticatedMethodsUtils;->syncConnect(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;

    move-result-object v10

    .line 236
    .local v10, "ap_result_json":Ljava/lang/String;
    if-eqz v10, :cond_2

    .line 239
    :try_start_0
    invoke-static {v10}, Lcom/iwifi/sdk/parser/GetCodeResultParser;->GetJsonObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v12

    .line 243
    .local v12, "jsonObject":Lorg/json/JSONObject;
    const-string v1, "message"

    invoke-virtual {v10, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 244
    const-string v1, "message"

    invoke-virtual {v12, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sget-object v3, Lcom/iwifi/sdk/protocol/impl/AuthenticatedMethodsUtils;->iWiFi20_AUTHEN_STR:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 245
    const-string v1, "message"

    invoke-virtual {v12, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sget-object v3, Lcom/iwifi/sdk/protocol/impl/AuthenticatedMethodsUtils;->iWiFi20_AUTHEN_STR2:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 246
    :cond_0
    const-string v2, "{\"result\":\"OK\",\"message\":\"\u8ba4\u8bc1\u6210\u529f\"}"

    .line 248
    .local v2, "json":Ljava/lang/String;
    const-string v3, "AP_AUTH"

    const/4 v5, 0x0

    const/4 v7, 0x0

    .line 249
    const-string v9, ""

    move-object v1, p0

    move-object/from16 v4, p5

    move-object/from16 v6, p3

    move-object/from16 v8, p6

    .line 247
    invoke-virtual/range {v1 .. v9}, Lcom/iwifi/sdk/protocol/impl/AuthenticatedMethodsUtils;->generateAuthResultJson(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v14, Lcom/iwifi/sdk/protocol/impl/AuthenticatedMethodsUtils$AuthenResultInfo;->auth_resultInfo:Ljava/lang/String;

    .line 250
    const/4 v1, 0x1

    iput-boolean v1, v14, Lcom/iwifi/sdk/protocol/impl/AuthenticatedMethodsUtils$AuthenResultInfo;->auth_status:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 276
    .end local v12    # "jsonObject":Lorg/json/JSONObject;
    :goto_0
    const-string v1, "iWiFiSDK|Authentication|AP_sync_LoginAuthen"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "phone="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 277
    move-object/from16 v0, p2

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "&token="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "&dev_type="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p4

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 278
    const-string v4, "&dev_id="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p5

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "&url="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p7

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " | result: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 279
    iget-object v4, v14, Lcom/iwifi/sdk/protocol/impl/AuthenticatedMethodsUtils$AuthenResultInfo;->auth_resultInfo:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 276
    invoke-static {v1, v3}, Lcom/iwifi/sdk/tools/Logger;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 280
    return-object v14

    .line 252
    .end local v2    # "json":Ljava/lang/String;
    .restart local v12    # "jsonObject":Lorg/json/JSONObject;
    :cond_1
    :try_start_1
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "{\"result\":\"FAIL\",\"message\":\"\u8ba4\u8bc1\u5931\u8d25:"

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 253
    const-string v3, "message"

    invoke-virtual {v12, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "\"}"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 252
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 255
    .restart local v2    # "json":Ljava/lang/String;
    const-string v3, "AP_AUTH"

    const/4 v5, 0x0

    const/4 v7, 0x0

    .line 256
    const-string v9, ""

    move-object v1, p0

    move-object/from16 v4, p5

    move-object/from16 v6, p3

    move-object/from16 v8, p6

    .line 254
    invoke-virtual/range {v1 .. v9}, Lcom/iwifi/sdk/protocol/impl/AuthenticatedMethodsUtils;->generateAuthResultJson(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v14, Lcom/iwifi/sdk/protocol/impl/AuthenticatedMethodsUtils$AuthenResultInfo;->auth_resultInfo:Ljava/lang/String;

    .line 257
    const/4 v1, 0x0

    iput-boolean v1, v14, Lcom/iwifi/sdk/protocol/impl/AuthenticatedMethodsUtils$AuthenResultInfo;->auth_status:Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    .line 259
    .end local v2    # "json":Ljava/lang/String;
    .end local v12    # "jsonObject":Lorg/json/JSONObject;
    :catch_0
    move-exception v11

    .line 260
    .local v11, "e":Ljava/lang/Exception;
    invoke-virtual {v11}, Ljava/lang/Exception;->printStackTrace()V

    .line 261
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "{\"result\":\"FAIL\",\"message\":\"Json error :"

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 262
    invoke-virtual {v11}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "\"}"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 261
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 264
    .restart local v2    # "json":Ljava/lang/String;
    const-string v3, "AP_AUTH"

    const/4 v5, 0x0

    const/4 v7, 0x0

    .line 265
    const-string v9, ""

    move-object v1, p0

    move-object/from16 v4, p5

    move-object/from16 v6, p3

    move-object/from16 v8, p6

    .line 263
    invoke-virtual/range {v1 .. v9}, Lcom/iwifi/sdk/protocol/impl/AuthenticatedMethodsUtils;->generateAuthResultJson(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v14, Lcom/iwifi/sdk/protocol/impl/AuthenticatedMethodsUtils$AuthenResultInfo;->auth_resultInfo:Ljava/lang/String;

    .line 266
    const/4 v1, 0x0

    iput-boolean v1, v14, Lcom/iwifi/sdk/protocol/impl/AuthenticatedMethodsUtils$AuthenResultInfo;->auth_status:Z

    goto/16 :goto_0

    .line 269
    .end local v2    # "json":Ljava/lang/String;
    .end local v11    # "e":Ljava/lang/Exception;
    :cond_2
    const-string v2, "{\"result\":\"FAIL\",\"message\":\"\u8bf7\u6c42\u8d85\u65f6\"}"

    .line 272
    .restart local v2    # "json":Ljava/lang/String;
    const-string v3, "AP_AUTH"

    const/4 v5, 0x0

    const/4 v7, 0x0

    const-string v9, ""

    move-object v1, p0

    move-object/from16 v4, p5

    move-object/from16 v6, p3

    move-object/from16 v8, p6

    .line 271
    invoke-virtual/range {v1 .. v9}, Lcom/iwifi/sdk/protocol/impl/AuthenticatedMethodsUtils;->generateAuthResultJson(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v14, Lcom/iwifi/sdk/protocol/impl/AuthenticatedMethodsUtils$AuthenResultInfo;->auth_resultInfo:Ljava/lang/String;

    .line 273
    const/4 v1, 0x0

    iput-boolean v1, v14, Lcom/iwifi/sdk/protocol/impl/AuthenticatedMethodsUtils$AuthenResultInfo;->auth_status:Z

    goto/16 :goto_0
.end method

.method public AP_sync_LogoffReq(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/iwifi/sdk/protocol/impl/AuthenticatedMethodsUtils$LogoffResultInfo;
    .locals 10
    .param p1, "ipGateway"    # Ljava/lang/String;
    .param p2, "phoneNum"    # Ljava/lang/String;
    .param p3, "token"    # Ljava/lang/String;

    .prologue
    const/4 v9, 0x0

    .line 594
    new-instance v4, Lcom/iwifi/sdk/protocol/impl/AuthenticatedMethodsUtils$LogoffResultInfo;

    invoke-direct {v4, p0}, Lcom/iwifi/sdk/protocol/impl/AuthenticatedMethodsUtils$LogoffResultInfo;-><init>(Lcom/iwifi/sdk/protocol/impl/AuthenticatedMethodsUtils;)V

    .line 595
    .local v4, "result":Lcom/iwifi/sdk/protocol/impl/AuthenticatedMethodsUtils$LogoffResultInfo;
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 596
    .local v3, "paramList":Ljava/util/List;, "Ljava/util/List<Lcom/iwifi/sdk/tools/DataObject;>;"
    new-instance v6, Lcom/iwifi/sdk/tools/DataObject;

    const-string v7, "phone"

    invoke-direct {v6, v7, p2}, Lcom/iwifi/sdk/tools/DataObject;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 597
    new-instance v6, Lcom/iwifi/sdk/tools/DataObject;

    const-string v7, "token"

    invoke-direct {v6, v7, p3}, Lcom/iwifi/sdk/tools/DataObject;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 598
    new-instance v6, Lcom/iwifi/sdk/tools/DataObject;

    const-string v7, "logout"

    const-string v8, "1"

    invoke-direct {v6, v7, v8}, Lcom/iwifi/sdk/tools/DataObject;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 599
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "http://"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ":2060/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 600
    const-string v7, "smartwifi/auth"

    const-string v8, ""

    .line 599
    invoke-virtual {p0, v6, v7, v8, v3}, Lcom/iwifi/sdk/protocol/impl/AuthenticatedMethodsUtils;->syncConnect(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;

    move-result-object v5

    .line 602
    .local v5, "result_json":Ljava/lang/String;
    if-eqz v5, :cond_3

    .line 605
    :try_start_0
    invoke-static {v5}, Lcom/iwifi/sdk/parser/GetCodeResultParser;->GetJsonObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 606
    .local v1, "jsonObject":Lorg/json/JSONObject;
    const-string v6, "result"

    invoke-virtual {v1, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "OK"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 607
    const-string v2, "Logoff Failed"

    .line 608
    .local v2, "message":Ljava/lang/String;
    const-string v6, "message"

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 609
    const-string v6, "message"

    invoke-virtual {v1, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 610
    :cond_0
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "{\"result\":\"FAIL\",\"message\":\""

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 611
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\"}"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 610
    iput-object v6, v4, Lcom/iwifi/sdk/protocol/impl/AuthenticatedMethodsUtils$LogoffResultInfo;->logoff_resultInfo:Ljava/lang/String;

    .line 612
    const/4 v6, 0x0

    iput-boolean v6, v4, Lcom/iwifi/sdk/protocol/impl/AuthenticatedMethodsUtils$LogoffResultInfo;->logoff_status:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 635
    .end local v1    # "jsonObject":Lorg/json/JSONObject;
    .end local v2    # "message":Ljava/lang/String;
    :goto_0
    const-string v6, "iWiFiSDK|Logoff|AP_sync_LogoffReq"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "ipGateway="

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 636
    const-string v8, "&phoneNum="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "&token="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "&logout="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 637
    const-string v8, "1"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " | result: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, v4, Lcom/iwifi/sdk/protocol/impl/AuthenticatedMethodsUtils$LogoffResultInfo;->logoff_resultInfo:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 635
    invoke-static {v6, v7}, Lcom/iwifi/sdk/tools/Logger;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 639
    return-object v4

    .line 615
    .restart local v1    # "jsonObject":Lorg/json/JSONObject;
    :cond_1
    :try_start_1
    const-string v2, "Logoff Success"

    .line 616
    .restart local v2    # "message":Ljava/lang/String;
    const-string v6, "message"

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 617
    const-string v6, "message"

    invoke-virtual {v1, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 618
    :cond_2
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "{\"result\":\"OK\",\"message\":\""

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 619
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\"}"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 618
    iput-object v6, v4, Lcom/iwifi/sdk/protocol/impl/AuthenticatedMethodsUtils$LogoffResultInfo;->logoff_resultInfo:Ljava/lang/String;

    .line 620
    const/4 v6, 0x1

    iput-boolean v6, v4, Lcom/iwifi/sdk/protocol/impl/AuthenticatedMethodsUtils$LogoffResultInfo;->logoff_status:Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 623
    .end local v1    # "jsonObject":Lorg/json/JSONObject;
    .end local v2    # "message":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 624
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 625
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "{\"result\":\"FAIL\",\"message\":\"Json error :"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 626
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\"}"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 625
    iput-object v6, v4, Lcom/iwifi/sdk/protocol/impl/AuthenticatedMethodsUtils$LogoffResultInfo;->logoff_resultInfo:Ljava/lang/String;

    .line 627
    iput-boolean v9, v4, Lcom/iwifi/sdk/protocol/impl/AuthenticatedMethodsUtils$LogoffResultInfo;->logoff_status:Z

    goto/16 :goto_0

    .line 630
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_3
    const-string v6, "{\"result\":\"FAIL\",\"message\":\"\u8bf7\u6c42\u8d85\u65f6\"}"

    iput-object v6, v4, Lcom/iwifi/sdk/protocol/impl/AuthenticatedMethodsUtils$LogoffResultInfo;->logoff_resultInfo:Ljava/lang/String;

    .line 632
    iput-boolean v9, v4, Lcom/iwifi/sdk/protocol/impl/AuthenticatedMethodsUtils$LogoffResultInfo;->logoff_status:Z

    goto/16 :goto_0
.end method

.method public Third_sync_LoginAuthen(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/iwifi/sdk/protocol/impl/AuthenticatedMethodsUtils$AuthenResultInfo;
    .locals 30
    .param p1, "phoneNum"    # Ljava/lang/String;
    .param p2, "dev_id"    # Ljava/lang/String;
    .param p3, "appversion"    # Ljava/lang/String;
    .param p4, "ter_mac"    # Ljava/lang/String;
    .param p5, "ter_ip"    # Ljava/lang/String;
    .param p6, "imei"    # Ljava/lang/String;
    .param p7, "token"    # Ljava/lang/String;
    .param p8, "platform_code"    # Ljava/lang/String;
    .param p9, "accountId"    # Ljava/lang/String;
    .param p10, "portal_url"    # Ljava/lang/String;
    .param p11, "appkey"    # Ljava/lang/String;
    .param p12, "secret"    # Ljava/lang/String;

    .prologue
    .line 379
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v5, "auth_id="

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 380
    const-string v5, "&auth_unqid="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "&auth_type=APPMOBILE"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 381
    const-string v5, "&ter_mac="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p4

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "&ter_ip="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p5

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 382
    const-string v5, "&terminal_type=android"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "&imei="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p6

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 383
    const-string v5, "&appauth_type=THIRD_AUTH"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "&token="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p7

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 384
    const-string v5, "&platform_code="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p8

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "&redirect_params="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 385
    move-object/from16 v0, p10

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "&appkey="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p11

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "&secret="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p12

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 379
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/iwifi/sdk/protocol/impl/SDKCommonMotheds;->getSign(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    .line 386
    .local v24, "md5sign":Ljava/lang/String;
    new-instance v28, Lcom/iwifi/sdk/protocol/impl/AuthenticatedMethodsUtils$AuthenResultInfo;

    move-object/from16 v0, v28

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/iwifi/sdk/protocol/impl/AuthenticatedMethodsUtils$AuthenResultInfo;-><init>(Lcom/iwifi/sdk/protocol/impl/AuthenticatedMethodsUtils;)V

    .line 387
    .local v28, "result":Lcom/iwifi/sdk/protocol/impl/AuthenticatedMethodsUtils$AuthenResultInfo;
    new-instance v27, Ljava/util/ArrayList;

    invoke-direct/range {v27 .. v27}, Ljava/util/ArrayList;-><init>()V

    .line 388
    .local v27, "paramList":Ljava/util/List;, "Ljava/util/List<Lcom/iwifi/sdk/tools/DataObject;>;"
    new-instance v3, Lcom/iwifi/sdk/tools/DataObject;

    const-string v5, "auth_id"

    move-object/from16 v0, p1

    invoke-direct {v3, v5, v0}, Lcom/iwifi/sdk/tools/DataObject;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v27

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 389
    new-instance v3, Lcom/iwifi/sdk/tools/DataObject;

    const-string v5, "auth_unqid"

    move-object/from16 v0, p3

    invoke-direct {v3, v5, v0}, Lcom/iwifi/sdk/tools/DataObject;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v27

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 390
    new-instance v3, Lcom/iwifi/sdk/tools/DataObject;

    const-string v5, "auth_type"

    const-string v6, "APPMOBILE"

    invoke-direct {v3, v5, v6}, Lcom/iwifi/sdk/tools/DataObject;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v27

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 391
    new-instance v3, Lcom/iwifi/sdk/tools/DataObject;

    const-string v5, "ter_mac"

    move-object/from16 v0, p4

    invoke-direct {v3, v5, v0}, Lcom/iwifi/sdk/tools/DataObject;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v27

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 392
    new-instance v3, Lcom/iwifi/sdk/tools/DataObject;

    const-string v5, "ter_ip"

    move-object/from16 v0, p5

    invoke-direct {v3, v5, v0}, Lcom/iwifi/sdk/tools/DataObject;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v27

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 393
    new-instance v3, Lcom/iwifi/sdk/tools/DataObject;

    const-string v5, "terminal_type"

    const-string v6, "android"

    invoke-direct {v3, v5, v6}, Lcom/iwifi/sdk/tools/DataObject;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v27

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 394
    new-instance v3, Lcom/iwifi/sdk/tools/DataObject;

    const-string v5, "imei"

    move-object/from16 v0, p6

    invoke-direct {v3, v5, v0}, Lcom/iwifi/sdk/tools/DataObject;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v27

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 395
    new-instance v3, Lcom/iwifi/sdk/tools/DataObject;

    const-string v5, "appauth_type"

    const-string v6, "THIRD_AUTH"

    invoke-direct {v3, v5, v6}, Lcom/iwifi/sdk/tools/DataObject;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v27

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 396
    new-instance v3, Lcom/iwifi/sdk/tools/DataObject;

    const-string v5, "token"

    move-object/from16 v0, p7

    invoke-direct {v3, v5, v0}, Lcom/iwifi/sdk/tools/DataObject;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v27

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 397
    new-instance v3, Lcom/iwifi/sdk/tools/DataObject;

    const-string v5, "platform_code"

    move-object/from16 v0, p8

    invoke-direct {v3, v5, v0}, Lcom/iwifi/sdk/tools/DataObject;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v27

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 398
    new-instance v3, Lcom/iwifi/sdk/tools/DataObject;

    const-string v5, "redirect_params"

    move-object/from16 v0, p10

    invoke-direct {v3, v5, v0}, Lcom/iwifi/sdk/tools/DataObject;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v27

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 399
    new-instance v3, Lcom/iwifi/sdk/tools/DataObject;

    const-string v5, "appkey"

    move-object/from16 v0, p11

    invoke-direct {v3, v5, v0}, Lcom/iwifi/sdk/tools/DataObject;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v27

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 401
    new-instance v3, Lcom/iwifi/sdk/tools/DataObject;

    const-string v5, "sign"

    move-object/from16 v0, v24

    invoke-direct {v3, v5, v0}, Lcom/iwifi/sdk/tools/DataObject;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v27

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 402
    sget-object v3, Lcom/iwifi/sdk/protocol/impl/AuthenticatedMethodsUtils;->iWiFi20_WIFI_HOST:Ljava/lang/String;

    .line 403
    const-string v5, "appauth.html"

    const-string v6, ""

    .line 402
    move-object/from16 v0, p0

    move-object/from16 v1, v27

    invoke-virtual {v0, v3, v5, v6, v1}, Lcom/iwifi/sdk/protocol/impl/AuthenticatedMethodsUtils;->syncConnect(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;

    move-result-object v23

    .line 405
    .local v23, "jsonresult":Ljava/lang/String;
    if-eqz v23, :cond_a

    .line 408
    :try_start_0
    invoke-static/range {v23 .. v23}, Lcom/iwifi/sdk/parser/GetCodeResultParser;->GetJsonObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v22

    .line 409
    .local v22, "jsonObject":Lorg/json/JSONObject;
    const-string v3, "result"

    move-object/from16 v0, v22

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v5, "OK"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 410
    const-string v25, "Authentication Failed"

    .line 411
    .local v25, "message":Ljava/lang/String;
    const-string v3, "message"

    move-object/from16 v0, v23

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 412
    const-string v3, "message"

    move-object/from16 v0, v22

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    .line 413
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v5, "{\"result\":\"FAIL\",\"message\":\""

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 414
    move-object/from16 v0, v25

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "\"}"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 413
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 416
    .local v4, "json":Ljava/lang/String;
    const-string v5, "THIRD_AUTH"

    .line 417
    const/4 v9, 0x0

    move-object/from16 v3, p0

    move-object/from16 v6, p2

    move-object/from16 v7, p8

    move-object/from16 v8, p7

    move-object/from16 v10, p9

    move-object/from16 v11, p10

    .line 415
    invoke-virtual/range {v3 .. v11}, Lcom/iwifi/sdk/protocol/impl/AuthenticatedMethodsUtils;->generateAuthResultJson(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v28

    iput-object v3, v0, Lcom/iwifi/sdk/protocol/impl/AuthenticatedMethodsUtils$AuthenResultInfo;->auth_resultInfo:Ljava/lang/String;

    .line 418
    const/4 v3, 0x0

    move-object/from16 v0, v28

    iput-boolean v3, v0, Lcom/iwifi/sdk/protocol/impl/AuthenticatedMethodsUtils$AuthenResultInfo;->auth_status:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 517
    .end local v22    # "jsonObject":Lorg/json/JSONObject;
    .end local v25    # "message":Ljava/lang/String;
    :goto_0
    const-string v3, "iWiFiSDK|Authentication|Third_sync_LoginAuthen"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "auth_id="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 518
    move-object/from16 v0, p1

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "&auth_unqid="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p3

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "&ter_mac="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 519
    move-object/from16 v0, p4

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "&ter_ip="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "&imei="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p6

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "&dev_id="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 520
    move-object/from16 v0, p2

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "&platform_code="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p8

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "&portal_url="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 521
    move-object/from16 v0, p10

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " | result: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v28

    iget-object v6, v0, Lcom/iwifi/sdk/protocol/impl/AuthenticatedMethodsUtils$AuthenResultInfo;->auth_resultInfo:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 517
    invoke-static {v3, v5}, Lcom/iwifi/sdk/tools/Logger;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 522
    return-object v28

    .line 421
    .end local v4    # "json":Ljava/lang/String;
    .restart local v22    # "jsonObject":Lorg/json/JSONObject;
    :cond_1
    const/4 v9, 0x0

    .line 422
    .local v9, "third_token":Ljava/lang/String;
    :try_start_1
    const-string v3, "third_token"

    move-object/from16 v0, v23

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 423
    const-string v3, "third_token"

    move-object/from16 v0, v22

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 426
    :cond_2
    const-string v3, "online_url"

    move-object/from16 v0, v23

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 427
    const-string v3, "online_url"

    move-object/from16 v0, v22

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    .line 428
    .local v26, "online_url":Ljava/lang/String;
    const-string v3, ""

    move-object/from16 v0, v26

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6

    .line 430
    move-object/from16 v29, v26

    .line 432
    .local v29, "url":Ljava/lang/String;
    const-string v20, ""

    .line 434
    .local v20, "Urlparam":Ljava/lang/String;
    const-string v3, "?"

    move-object/from16 v0, v29

    invoke-virtual {v0, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    const/4 v5, -0x1

    if-ne v3, v5, :cond_3

    .line 435
    const-string v20, ""

    .line 439
    :goto_1
    const-string v3, "get=1"

    move-object/from16 v0, v20

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 441
    const/4 v3, 0x0

    .line 440
    move-object/from16 v0, p0

    move-object/from16 v1, v29

    invoke-direct {v0, v1, v3}, Lcom/iwifi/sdk/protocol/impl/AuthenticatedMethodsUtils;->Third_SecondAuthGetConnection(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v19

    .line 451
    .local v19, "Jsonstr":Ljava/lang/String;
    :goto_2
    invoke-static/range {v19 .. v19}, Lcom/iwifi/sdk/parser/GetCodeResultParser;->GetJsonObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    .line 452
    const-string v5, "result"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v5, "FAIL"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 453
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v5, "{\"result\":\"FAIL\",\"message\":\"First authen OK, but connect redirect url failed, online_url: "

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 455
    move-object/from16 v0, v29

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "\"}"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 453
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 457
    .restart local v4    # "json":Ljava/lang/String;
    const-string v5, "THIRD_AUTH"

    move-object/from16 v3, p0

    move-object/from16 v6, p2

    move-object/from16 v7, p8

    move-object/from16 v8, p7

    move-object/from16 v10, p9

    move-object/from16 v11, p10

    .line 456
    invoke-virtual/range {v3 .. v11}, Lcom/iwifi/sdk/protocol/impl/AuthenticatedMethodsUtils;->generateAuthResultJson(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v28

    iput-object v3, v0, Lcom/iwifi/sdk/protocol/impl/AuthenticatedMethodsUtils$AuthenResultInfo;->auth_resultInfo:Ljava/lang/String;

    .line 460
    const/4 v3, 0x0

    move-object/from16 v0, v28

    iput-boolean v3, v0, Lcom/iwifi/sdk/protocol/impl/AuthenticatedMethodsUtils$AuthenResultInfo;->auth_status:Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    .line 499
    .end local v4    # "json":Ljava/lang/String;
    .end local v9    # "third_token":Ljava/lang/String;
    .end local v19    # "Jsonstr":Ljava/lang/String;
    .end local v20    # "Urlparam":Ljava/lang/String;
    .end local v22    # "jsonObject":Lorg/json/JSONObject;
    .end local v26    # "online_url":Ljava/lang/String;
    .end local v29    # "url":Ljava/lang/String;
    :catch_0
    move-exception v21

    .line 500
    .local v21, "e":Ljava/lang/Exception;
    invoke-virtual/range {v21 .. v21}, Ljava/lang/Exception;->printStackTrace()V

    .line 501
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v5, "{\"result\":\"FAIL\",\"message\":\"Json error :"

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 502
    invoke-virtual/range {v21 .. v21}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "\"}"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 501
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 504
    .restart local v4    # "json":Ljava/lang/String;
    const-string v12, "THIRD_AUTH"

    const/16 v16, 0x0

    move-object/from16 v10, p0

    move-object v11, v4

    move-object/from16 v13, p2

    move-object/from16 v14, p8

    move-object/from16 v15, p7

    move-object/from16 v17, p9

    move-object/from16 v18, p10

    .line 503
    invoke-virtual/range {v10 .. v18}, Lcom/iwifi/sdk/protocol/impl/AuthenticatedMethodsUtils;->generateAuthResultJson(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v28

    iput-object v3, v0, Lcom/iwifi/sdk/protocol/impl/AuthenticatedMethodsUtils$AuthenResultInfo;->auth_resultInfo:Ljava/lang/String;

    .line 506
    const/4 v3, 0x0

    move-object/from16 v0, v28

    iput-boolean v3, v0, Lcom/iwifi/sdk/protocol/impl/AuthenticatedMethodsUtils$AuthenResultInfo;->auth_status:Z

    goto/16 :goto_0

    .line 437
    .end local v4    # "json":Ljava/lang/String;
    .end local v21    # "e":Ljava/lang/Exception;
    .restart local v9    # "third_token":Ljava/lang/String;
    .restart local v20    # "Urlparam":Ljava/lang/String;
    .restart local v22    # "jsonObject":Lorg/json/JSONObject;
    .restart local v26    # "online_url":Ljava/lang/String;
    .restart local v29    # "url":Ljava/lang/String;
    :cond_3
    :try_start_2
    const-string v3, "?"

    move-object/from16 v0, v29

    invoke-virtual {v0, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    move-object/from16 v0, v29

    invoke-virtual {v0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v20

    goto/16 :goto_1

    .line 443
    :cond_4
    const/4 v3, 0x0

    .line 444
    const-string v5, "?"

    move-object/from16 v0, v26

    invoke-virtual {v0, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    .line 443
    move-object/from16 v0, v26

    invoke-virtual {v0, v3, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v29

    .line 448
    const/4 v3, 0x0

    .line 447
    move-object/from16 v0, p0

    move-object/from16 v1, v29

    move-object/from16 v2, v20

    invoke-direct {v0, v1, v3, v2}, Lcom/iwifi/sdk/protocol/impl/AuthenticatedMethodsUtils;->Third_SecondAuthPostConnection(Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    .restart local v19    # "Jsonstr":Ljava/lang/String;
    goto/16 :goto_2

    .line 463
    :cond_5
    const-string v4, "{\"result\":\"OK\",\"message\":\"Redirct onLine_url also success: \"}"

    .line 467
    .restart local v4    # "json":Ljava/lang/String;
    const-string v5, "THIRD_AUTH"

    move-object/from16 v3, p0

    move-object/from16 v6, p2

    move-object/from16 v7, p8

    move-object/from16 v8, p7

    move-object/from16 v10, p9

    move-object/from16 v11, p10

    .line 466
    invoke-virtual/range {v3 .. v11}, Lcom/iwifi/sdk/protocol/impl/AuthenticatedMethodsUtils;->generateAuthResultJson(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v28

    iput-object v3, v0, Lcom/iwifi/sdk/protocol/impl/AuthenticatedMethodsUtils$AuthenResultInfo;->auth_resultInfo:Ljava/lang/String;

    .line 470
    const/4 v3, 0x1

    move-object/from16 v0, v28

    iput-boolean v3, v0, Lcom/iwifi/sdk/protocol/impl/AuthenticatedMethodsUtils$AuthenResultInfo;->auth_status:Z

    goto/16 :goto_0

    .line 473
    .end local v4    # "json":Ljava/lang/String;
    .end local v19    # "Jsonstr":Ljava/lang/String;
    .end local v20    # "Urlparam":Ljava/lang/String;
    .end local v29    # "url":Ljava/lang/String;
    :cond_6
    const-string v25, "Authentication Success"

    .line 474
    .restart local v25    # "message":Ljava/lang/String;
    const-string v3, "message"

    move-object/from16 v0, v23

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 475
    const-string v3, "message"

    move-object/from16 v0, v22

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    .line 477
    :cond_7
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v5, "{\"result\":\"OK\",\"message\":\""

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 478
    move-object/from16 v0, v25

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "\"}"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 477
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 480
    .restart local v4    # "json":Ljava/lang/String;
    const-string v5, "THIRD_AUTH"

    move-object/from16 v3, p0

    move-object/from16 v6, p2

    move-object/from16 v7, p8

    move-object/from16 v8, p7

    move-object/from16 v10, p9

    move-object/from16 v11, p10

    .line 479
    invoke-virtual/range {v3 .. v11}, Lcom/iwifi/sdk/protocol/impl/AuthenticatedMethodsUtils;->generateAuthResultJson(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v28

    iput-object v3, v0, Lcom/iwifi/sdk/protocol/impl/AuthenticatedMethodsUtils$AuthenResultInfo;->auth_resultInfo:Ljava/lang/String;

    .line 483
    const/4 v3, 0x1

    move-object/from16 v0, v28

    iput-boolean v3, v0, Lcom/iwifi/sdk/protocol/impl/AuthenticatedMethodsUtils$AuthenResultInfo;->auth_status:Z

    goto/16 :goto_0

    .line 487
    .end local v4    # "json":Ljava/lang/String;
    .end local v25    # "message":Ljava/lang/String;
    .end local v26    # "online_url":Ljava/lang/String;
    :cond_8
    const-string v25, "Authentication Success"

    .line 488
    .restart local v25    # "message":Ljava/lang/String;
    const-string v3, "message"

    move-object/from16 v0, v23

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 489
    const-string v3, "message"

    move-object/from16 v0, v22

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    .line 491
    :cond_9
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v5, "{\"result\":\"OK\",\"message\":\""

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 492
    move-object/from16 v0, v25

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "\"}"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 491
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 494
    .restart local v4    # "json":Ljava/lang/String;
    const-string v5, "THIRD_AUTH"

    move-object/from16 v3, p0

    move-object/from16 v6, p2

    move-object/from16 v7, p8

    move-object/from16 v8, p7

    move-object/from16 v10, p9

    move-object/from16 v11, p10

    .line 493
    invoke-virtual/range {v3 .. v11}, Lcom/iwifi/sdk/protocol/impl/AuthenticatedMethodsUtils;->generateAuthResultJson(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v28

    iput-object v3, v0, Lcom/iwifi/sdk/protocol/impl/AuthenticatedMethodsUtils$AuthenResultInfo;->auth_resultInfo:Ljava/lang/String;

    .line 496
    const/4 v3, 0x1

    move-object/from16 v0, v28

    iput-boolean v3, v0, Lcom/iwifi/sdk/protocol/impl/AuthenticatedMethodsUtils$AuthenResultInfo;->auth_status:Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_0

    .line 509
    .end local v4    # "json":Ljava/lang/String;
    .end local v9    # "third_token":Ljava/lang/String;
    .end local v22    # "jsonObject":Lorg/json/JSONObject;
    .end local v25    # "message":Ljava/lang/String;
    :cond_a
    const-string v4, "{\"result\":\"FAIL\",\"message\":\"\u8bf7\u6c42\u8d85\u65f6\"}"

    .line 512
    .restart local v4    # "json":Ljava/lang/String;
    const-string v12, "THIRD_AUTH"

    const/16 v16, 0x0

    move-object/from16 v10, p0

    move-object v11, v4

    move-object/from16 v13, p2

    move-object/from16 v14, p8

    move-object/from16 v15, p7

    move-object/from16 v17, p9

    move-object/from16 v18, p10

    .line 511
    invoke-virtual/range {v10 .. v18}, Lcom/iwifi/sdk/protocol/impl/AuthenticatedMethodsUtils;->generateAuthResultJson(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v28

    iput-object v3, v0, Lcom/iwifi/sdk/protocol/impl/AuthenticatedMethodsUtils$AuthenResultInfo;->auth_resultInfo:Ljava/lang/String;

    .line 514
    const/4 v3, 0x0

    move-object/from16 v0, v28

    iput-boolean v3, v0, Lcom/iwifi/sdk/protocol/impl/AuthenticatedMethodsUtils$AuthenResultInfo;->auth_status:Z

    goto/16 :goto_0
.end method

.method public Third_sync_LogoffReq(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/iwifi/sdk/protocol/impl/AuthenticatedMethodsUtils$LogoffResultInfo;
    .locals 15
    .param p1, "phoneNum"    # Ljava/lang/String;
    .param p2, "platform_code"    # Ljava/lang/String;
    .param p3, "ter_ip"    # Ljava/lang/String;
    .param p4, "token"    # Ljava/lang/String;
    .param p5, "thirdToken"    # Ljava/lang/String;
    .param p6, "redirect_params"    # Ljava/lang/String;
    .param p7, "appkey"    # Ljava/lang/String;
    .param p8, "secret"    # Ljava/lang/String;

    .prologue
    .line 658
    new-instance v9, Lcom/iwifi/sdk/protocol/impl/AuthenticatedMethodsUtils$LogoffResultInfo;

    invoke-direct {v9, p0}, Lcom/iwifi/sdk/protocol/impl/AuthenticatedMethodsUtils$LogoffResultInfo;-><init>(Lcom/iwifi/sdk/protocol/impl/AuthenticatedMethodsUtils;)V

    .line 659
    .local v9, "result":Lcom/iwifi/sdk/protocol/impl/AuthenticatedMethodsUtils$LogoffResultInfo;
    new-instance v12, Ljava/lang/StringBuilder;

    const-string v13, "auth_id="

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p1

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    .line 660
    const-string v13, "&token="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p4

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "&auth_type=APPMOBILE"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    .line 661
    const-string v13, "&appauth_type=THIRD_AUTH"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "&platform_code="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    .line 662
    move-object/from16 v0, p2

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "&ter_ip="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p3

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    .line 663
    const-string v13, "&terminal_type=android"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "&redirect_params="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    .line 664
    move-object/from16 v0, p6

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "&third_token="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p5

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "&appkey="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    .line 665
    move-object/from16 v0, p7

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "&secret="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p8

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    .line 659
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lcom/iwifi/sdk/protocol/impl/SDKCommonMotheds;->getSign(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 666
    .local v5, "md5sign":Ljava/lang/String;
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 667
    .local v8, "paramList":Ljava/util/List;, "Ljava/util/List<Lcom/iwifi/sdk/tools/DataObject;>;"
    new-instance v12, Lcom/iwifi/sdk/tools/DataObject;

    const-string v13, "auth_id"

    move-object/from16 v0, p1

    invoke-direct {v12, v13, v0}, Lcom/iwifi/sdk/tools/DataObject;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v8, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 668
    new-instance v12, Lcom/iwifi/sdk/tools/DataObject;

    const-string v13, "token"

    move-object/from16 v0, p4

    invoke-direct {v12, v13, v0}, Lcom/iwifi/sdk/tools/DataObject;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v8, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 669
    new-instance v12, Lcom/iwifi/sdk/tools/DataObject;

    const-string v13, "auth_type"

    const-string v14, "APPMOBILE"

    invoke-direct {v12, v13, v14}, Lcom/iwifi/sdk/tools/DataObject;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v8, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 670
    new-instance v12, Lcom/iwifi/sdk/tools/DataObject;

    const-string v13, "appauth_type"

    const-string v14, "THIRD_AUTH"

    invoke-direct {v12, v13, v14}, Lcom/iwifi/sdk/tools/DataObject;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v8, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 671
    new-instance v12, Lcom/iwifi/sdk/tools/DataObject;

    const-string v13, "platform_code"

    move-object/from16 v0, p2

    invoke-direct {v12, v13, v0}, Lcom/iwifi/sdk/tools/DataObject;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v8, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 672
    new-instance v12, Lcom/iwifi/sdk/tools/DataObject;

    const-string v13, "ter_ip"

    move-object/from16 v0, p3

    invoke-direct {v12, v13, v0}, Lcom/iwifi/sdk/tools/DataObject;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v8, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 673
    new-instance v12, Lcom/iwifi/sdk/tools/DataObject;

    const-string v13, "terminal_type"

    const-string v14, "android"

    invoke-direct {v12, v13, v14}, Lcom/iwifi/sdk/tools/DataObject;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v8, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 674
    new-instance v12, Lcom/iwifi/sdk/tools/DataObject;

    const-string v13, "redirect_params"

    move-object/from16 v0, p6

    invoke-direct {v12, v13, v0}, Lcom/iwifi/sdk/tools/DataObject;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v8, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 675
    new-instance v12, Lcom/iwifi/sdk/tools/DataObject;

    const-string v13, "third_token"

    move-object/from16 v0, p5

    invoke-direct {v12, v13, v0}, Lcom/iwifi/sdk/tools/DataObject;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v8, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 676
    new-instance v12, Lcom/iwifi/sdk/tools/DataObject;

    const-string v13, "appkey"

    move-object/from16 v0, p7

    invoke-direct {v12, v13, v0}, Lcom/iwifi/sdk/tools/DataObject;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v8, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 678
    new-instance v12, Lcom/iwifi/sdk/tools/DataObject;

    const-string v13, "sign"

    invoke-direct {v12, v13, v5}, Lcom/iwifi/sdk/tools/DataObject;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v8, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 679
    sget-object v12, Lcom/iwifi/sdk/protocol/impl/AuthenticatedMethodsUtils;->iWiFi20_WIFI_HOST:Ljava/lang/String;

    .line 680
    const-string v13, "useroffline.html"

    const-string v14, ""

    .line 679
    invoke-virtual {p0, v12, v13, v14, v8}, Lcom/iwifi/sdk/protocol/impl/AuthenticatedMethodsUtils;->syncConnect(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;

    move-result-object v10

    .line 682
    .local v10, "result_json":Ljava/lang/String;
    if-eqz v10, :cond_9

    .line 688
    :try_start_0
    invoke-static {v10}, Lcom/iwifi/sdk/parser/GetCodeResultParser;->GetJsonObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    .line 689
    .local v4, "jsonObject":Lorg/json/JSONObject;
    const-string v12, "result"

    invoke-virtual {v4, v12}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    const-string v13, "OK"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_1

    .line 690
    const-string v6, "Logoff Failed"

    .line 691
    .local v6, "message":Ljava/lang/String;
    const-string v12, "message"

    invoke-virtual {v10, v12}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v12

    if-eqz v12, :cond_0

    .line 692
    const-string v12, "message"

    invoke-virtual {v4, v12}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 693
    :cond_0
    new-instance v12, Ljava/lang/StringBuilder;

    const-string v13, "{\"result\":\"FAIL\",\"message\":\""

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 694
    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "\"}"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 693
    iput-object v12, v9, Lcom/iwifi/sdk/protocol/impl/AuthenticatedMethodsUtils$LogoffResultInfo;->logoff_resultInfo:Ljava/lang/String;

    .line 695
    const/4 v12, 0x0

    iput-boolean v12, v9, Lcom/iwifi/sdk/protocol/impl/AuthenticatedMethodsUtils$LogoffResultInfo;->logoff_status:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 768
    .end local v4    # "jsonObject":Lorg/json/JSONObject;
    .end local v6    # "message":Ljava/lang/String;
    :goto_0
    const-string v12, "iWiFiSDK|Logoff|AC_sync_LogoffReq"

    new-instance v13, Ljava/lang/StringBuilder;

    const-string v14, "ac_name="

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p1

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    .line 769
    const-string v14, "&token="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p4

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "&platform_code="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p2

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    .line 770
    const-string v14, "&ter_ip="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p3

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "&third_token="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p5

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    .line 771
    const-string v14, "&redirect_params="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p6

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " | result: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    .line 772
    iget-object v14, v9, Lcom/iwifi/sdk/protocol/impl/AuthenticatedMethodsUtils$LogoffResultInfo;->logoff_resultInfo:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 768
    invoke-static {v12, v13}, Lcom/iwifi/sdk/tools/Logger;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 773
    return-object v9

    .line 698
    .restart local v4    # "jsonObject":Lorg/json/JSONObject;
    :cond_1
    :try_start_1
    const-string v12, "offline_url"

    invoke-virtual {v10, v12}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v12

    if-eqz v12, :cond_7

    .line 701
    const-string v12, "offline_url"

    invoke-virtual {v4, v12}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 702
    .local v7, "offline_url":Ljava/lang/String;
    const-string v12, ""

    invoke-virtual {v7, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_5

    .line 703
    move-object v11, v7

    .line 705
    .local v11, "url":Ljava/lang/String;
    const-string v2, ""

    .line 707
    .local v2, "Urlparam":Ljava/lang/String;
    const-string v12, "?"

    invoke-virtual {v11, v12}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v12

    const/4 v13, -0x1

    if-ne v12, v13, :cond_2

    .line 708
    const-string v2, ""

    .line 712
    :goto_1
    const-string v12, "get=1"

    invoke-virtual {v2, v12}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v12

    if-eqz v12, :cond_3

    .line 714
    const/4 v12, 0x0

    .line 713
    invoke-direct {p0, v11, v12}, Lcom/iwifi/sdk/protocol/impl/AuthenticatedMethodsUtils;->Third_SecondAuthGetConnection(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v1

    .line 725
    .local v1, "Jsonstr":Ljava/lang/String;
    :goto_2
    invoke-static {v1}, Lcom/iwifi/sdk/parser/GetCodeResultParser;->GetJsonObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v12

    .line 726
    const-string v13, "result"

    invoke-virtual {v12, v13}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    const-string v13, "FAIL"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_4

    .line 727
    new-instance v12, Ljava/lang/StringBuilder;

    const-string v13, "{\"result\":\"FAIL\",\"message\":\"First authen OK, but reconnect failed, offline_url = "

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 729
    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "\"}"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 727
    iput-object v12, v9, Lcom/iwifi/sdk/protocol/impl/AuthenticatedMethodsUtils$LogoffResultInfo;->logoff_resultInfo:Ljava/lang/String;

    .line 730
    const/4 v12, 0x0

    iput-boolean v12, v9, Lcom/iwifi/sdk/protocol/impl/AuthenticatedMethodsUtils$LogoffResultInfo;->logoff_status:Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    .line 756
    .end local v1    # "Jsonstr":Ljava/lang/String;
    .end local v2    # "Urlparam":Ljava/lang/String;
    .end local v4    # "jsonObject":Lorg/json/JSONObject;
    .end local v7    # "offline_url":Ljava/lang/String;
    .end local v11    # "url":Ljava/lang/String;
    :catch_0
    move-exception v3

    .line 757
    .local v3, "e":Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    .line 758
    new-instance v12, Ljava/lang/StringBuilder;

    const-string v13, "{\"result\":\"FAIL\",\"message\":\"Json error :"

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 759
    invoke-virtual {v3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "\"}"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 758
    iput-object v12, v9, Lcom/iwifi/sdk/protocol/impl/AuthenticatedMethodsUtils$LogoffResultInfo;->logoff_resultInfo:Ljava/lang/String;

    .line 760
    const/4 v12, 0x0

    iput-boolean v12, v9, Lcom/iwifi/sdk/protocol/impl/AuthenticatedMethodsUtils$LogoffResultInfo;->logoff_status:Z

    goto/16 :goto_0

    .line 710
    .end local v3    # "e":Ljava/lang/Exception;
    .restart local v2    # "Urlparam":Ljava/lang/String;
    .restart local v4    # "jsonObject":Lorg/json/JSONObject;
    .restart local v7    # "offline_url":Ljava/lang/String;
    .restart local v11    # "url":Ljava/lang/String;
    :cond_2
    :try_start_2
    const-string v12, "?"

    invoke-virtual {v11, v12}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v12

    add-int/lit8 v12, v12, 0x1

    invoke-virtual {v11, v12}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    .line 716
    :cond_3
    const/4 v12, 0x0

    .line 717
    const-string v13, "?"

    invoke-virtual {v7, v13}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v13

    .line 716
    invoke-virtual {v7, v12, v13}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v11

    .line 722
    const/4 v12, 0x0

    .line 721
    invoke-direct {p0, v11, v12, v2}, Lcom/iwifi/sdk/protocol/impl/AuthenticatedMethodsUtils;->Third_SecondAuthPostConnection(Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .restart local v1    # "Jsonstr":Ljava/lang/String;
    goto :goto_2

    .line 732
    :cond_4
    const-string v12, "{\"result\":\"OK\",\"message\":\"Redirect offline_url connect also success: \"}"

    iput-object v12, v9, Lcom/iwifi/sdk/protocol/impl/AuthenticatedMethodsUtils$LogoffResultInfo;->logoff_resultInfo:Ljava/lang/String;

    .line 735
    const/4 v12, 0x1

    iput-boolean v12, v9, Lcom/iwifi/sdk/protocol/impl/AuthenticatedMethodsUtils$LogoffResultInfo;->logoff_status:Z

    goto/16 :goto_0

    .line 739
    .end local v1    # "Jsonstr":Ljava/lang/String;
    .end local v2    # "Urlparam":Ljava/lang/String;
    .end local v11    # "url":Ljava/lang/String;
    :cond_5
    const-string v6, "Logoff Success"

    .line 740
    .restart local v6    # "message":Ljava/lang/String;
    const-string v12, "message"

    invoke-virtual {v10, v12}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v12

    if-eqz v12, :cond_6

    .line 741
    const-string v12, "message"

    invoke-virtual {v4, v12}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 742
    :cond_6
    new-instance v12, Ljava/lang/StringBuilder;

    const-string v13, "{\"result\":\"OK\",\"message\":\""

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 743
    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "\"}"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 742
    iput-object v12, v9, Lcom/iwifi/sdk/protocol/impl/AuthenticatedMethodsUtils$LogoffResultInfo;->logoff_resultInfo:Ljava/lang/String;

    .line 744
    const/4 v12, 0x1

    iput-boolean v12, v9, Lcom/iwifi/sdk/protocol/impl/AuthenticatedMethodsUtils$LogoffResultInfo;->logoff_status:Z

    goto/16 :goto_0

    .line 747
    .end local v6    # "message":Ljava/lang/String;
    .end local v7    # "offline_url":Ljava/lang/String;
    :cond_7
    const-string v6, "Logoff Success"

    .line 748
    .restart local v6    # "message":Ljava/lang/String;
    const-string v12, "message"

    invoke-virtual {v10, v12}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v12

    if-eqz v12, :cond_8

    .line 749
    const-string v12, "message"

    invoke-virtual {v4, v12}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 750
    :cond_8
    new-instance v12, Ljava/lang/StringBuilder;

    const-string v13, "{\"result\":\"OK\",\"message\":\""

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 751
    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "\"}"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 750
    iput-object v12, v9, Lcom/iwifi/sdk/protocol/impl/AuthenticatedMethodsUtils$LogoffResultInfo;->logoff_resultInfo:Ljava/lang/String;

    .line 752
    const/4 v12, 0x1

    iput-boolean v12, v9, Lcom/iwifi/sdk/protocol/impl/AuthenticatedMethodsUtils$LogoffResultInfo;->logoff_status:Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_0

    .line 763
    .end local v4    # "jsonObject":Lorg/json/JSONObject;
    .end local v6    # "message":Ljava/lang/String;
    :cond_9
    const-string v12, "{\"result\":\"FAIL\",\"message\":\"\u8bf7\u6c42\u8d85\u65f6\"}"

    iput-object v12, v9, Lcom/iwifi/sdk/protocol/impl/AuthenticatedMethodsUtils$LogoffResultInfo;->logoff_resultInfo:Ljava/lang/String;

    .line 765
    const/4 v12, 0x0

    iput-boolean v12, v9, Lcom/iwifi/sdk/protocol/impl/AuthenticatedMethodsUtils$LogoffResultInfo;->logoff_status:Z

    goto/16 :goto_0
.end method

.method public generateAuthResultJson(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 17
    .param p1, "input"    # Ljava/lang/String;
    .param p2, "authen_type"    # Ljava/lang/String;
    .param p3, "dev_id"    # Ljava/lang/String;
    .param p4, "platform_code"    # Ljava/lang/String;
    .param p5, "token"    # Ljava/lang/String;
    .param p6, "third_token"    # Ljava/lang/String;
    .param p7, "accountId"    # Ljava/lang/String;
    .param p8, "portalUrl"    # Ljava/lang/String;

    .prologue
    .line 836
    const-string v15, ""

    .line 838
    .local v15, "failMsg":Ljava/lang/String;
    :try_start_0
    const-string v1, "AP_AUTH"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 840
    const-string v1, "result"

    const-string v2, "message"

    const/4 v3, 0x0

    .line 839
    move-object/from16 v0, p1

    invoke-static {v0, v1, v2, v3}, Lcom/iwifi/sdk/parser/GetCodeResultParser;->GetCodeResultList(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/iwifi/sdk/data/CodeResult;

    move-result-object v13

    .line 841
    .local v13, "codeResult":Lcom/iwifi/sdk/data/CodeResult;
    invoke-virtual {v13}, Lcom/iwifi/sdk/data/CodeResult;->getResult()Ljava/lang/String;

    move-result-object v2

    .line 842
    invoke-virtual {v13}, Lcom/iwifi/sdk/data/CodeResult;->getMsg()Ljava/lang/String;

    move-result-object v3

    .line 843
    const-string v7, ""

    const-string v10, ""

    move-object/from16 v1, p0

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move-object/from16 v8, p5

    move-object/from16 v9, p6

    move-object/from16 v11, p7

    move-object/from16 v12, p8

    .line 841
    invoke-virtual/range {v1 .. v12}, Lcom/iwifi/sdk/protocol/impl/AuthenticatedMethodsUtils;->generateJson(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 888
    .end local v13    # "codeResult":Lcom/iwifi/sdk/data/CodeResult;
    :goto_0
    return-object v16

    .line 845
    :cond_0
    const-string v1, "AAA_AUTH"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 847
    const-string v1, "result"

    const-string v2, "msg"

    const/4 v3, 0x0

    .line 846
    move-object/from16 v0, p1

    invoke-static {v0, v1, v2, v3}, Lcom/iwifi/sdk/parser/GetCodeResultParser;->GetCodeResultList(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/iwifi/sdk/data/CodeResult;

    move-result-object v13

    .line 849
    .restart local v13    # "codeResult":Lcom/iwifi/sdk/data/CodeResult;
    invoke-virtual {v13}, Lcom/iwifi/sdk/data/CodeResult;->getResult()Ljava/lang/String;

    move-result-object v1

    const-string v2, "0"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 851
    const-string v2, "FAIL"

    invoke-virtual {v13}, Lcom/iwifi/sdk/data/CodeResult;->getMsg()Ljava/lang/String;

    move-result-object v3

    .line 852
    const-string v7, ""

    .line 853
    const-string v10, ""

    const-string v12, ""

    move-object/from16 v1, p0

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move-object/from16 v8, p5

    move-object/from16 v9, p6

    move-object/from16 v11, p7

    .line 851
    invoke-virtual/range {v1 .. v12}, Lcom/iwifi/sdk/protocol/impl/AuthenticatedMethodsUtils;->generateJson(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 854
    .local v16, "result":Ljava/lang/String;
    goto :goto_0

    .line 856
    .end local v16    # "result":Ljava/lang/String;
    :cond_1
    const-string v1, "result"

    const-string v2, "msg"

    const-string v3, "logooffurl"

    .line 855
    move-object/from16 v0, p1

    invoke-static {v0, v1, v2, v3}, Lcom/iwifi/sdk/parser/GetCodeResultParser;->GetCodeResultList(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/iwifi/sdk/data/CodeResult;

    move-result-object v13

    .line 857
    const-string v2, "OK"

    invoke-virtual {v13}, Lcom/iwifi/sdk/data/CodeResult;->getMsg()Ljava/lang/String;

    move-result-object v3

    .line 859
    invoke-virtual {v13}, Lcom/iwifi/sdk/data/CodeResult;->getData()Ljava/lang/String;

    move-result-object v7

    const-string v10, ""

    .line 860
    const-string v12, ""

    move-object/from16 v1, p0

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move-object/from16 v8, p5

    move-object/from16 v9, p6

    move-object/from16 v11, p7

    .line 857
    invoke-virtual/range {v1 .. v12}, Lcom/iwifi/sdk/protocol/impl/AuthenticatedMethodsUtils;->generateJson(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .restart local v16    # "result":Ljava/lang/String;
    goto :goto_0

    .line 863
    .end local v13    # "codeResult":Lcom/iwifi/sdk/data/CodeResult;
    .end local v16    # "result":Ljava/lang/String;
    :cond_2
    const-string v1, "AC_AUTH"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 865
    const-string v1, "result"

    const-string v2, "message"

    const-string v3, "logoffUrl"

    const-string v4, "ac_name"

    .line 864
    move-object/from16 v0, p1

    invoke-static {v0, v1, v2, v3, v4}, Lcom/iwifi/sdk/parser/GetCodeResultParser;->GetCodeResultList(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/iwifi/sdk/data/CodeResult;

    move-result-object v13

    .line 866
    .restart local v13    # "codeResult":Lcom/iwifi/sdk/data/CodeResult;
    invoke-virtual {v13}, Lcom/iwifi/sdk/data/CodeResult;->getResult()Ljava/lang/String;

    move-result-object v2

    .line 867
    invoke-virtual {v13}, Lcom/iwifi/sdk/data/CodeResult;->getMsg()Ljava/lang/String;

    move-result-object v3

    .line 868
    invoke-virtual {v13}, Lcom/iwifi/sdk/data/CodeResult;->getData()Ljava/lang/String;

    move-result-object v7

    .line 869
    invoke-virtual {v13}, Lcom/iwifi/sdk/data/CodeResult;->getData1()Ljava/lang/String;

    move-result-object v10

    const-string v12, ""

    move-object/from16 v1, p0

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move-object/from16 v8, p5

    move-object/from16 v9, p6

    move-object/from16 v11, p7

    .line 866
    invoke-virtual/range {v1 .. v12}, Lcom/iwifi/sdk/protocol/impl/AuthenticatedMethodsUtils;->generateJson(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    goto/16 :goto_0

    .line 870
    .end local v13    # "codeResult":Lcom/iwifi/sdk/data/CodeResult;
    :cond_3
    const-string v1, "THIRD_AUTH"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 872
    const-string v1, "result"

    const-string v2, "message"

    const/4 v3, 0x0

    .line 871
    move-object/from16 v0, p1

    invoke-static {v0, v1, v2, v3}, Lcom/iwifi/sdk/parser/GetCodeResultParser;->GetCodeResultList(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/iwifi/sdk/data/CodeResult;

    move-result-object v13

    .line 873
    .restart local v13    # "codeResult":Lcom/iwifi/sdk/data/CodeResult;
    invoke-virtual {v13}, Lcom/iwifi/sdk/data/CodeResult;->getResult()Ljava/lang/String;

    move-result-object v2

    .line 874
    invoke-virtual {v13}, Lcom/iwifi/sdk/data/CodeResult;->getMsg()Ljava/lang/String;

    move-result-object v3

    .line 875
    const-string v7, ""

    const-string v10, ""

    move-object/from16 v1, p0

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move-object/from16 v8, p5

    move-object/from16 v9, p6

    move-object/from16 v11, p7

    move-object/from16 v12, p8

    .line 873
    invoke-virtual/range {v1 .. v12}, Lcom/iwifi/sdk/protocol/impl/AuthenticatedMethodsUtils;->generateJson(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    goto/16 :goto_0

    .line 878
    .end local v13    # "codeResult":Lcom/iwifi/sdk/data/CodeResult;
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

    move-result-object v15

    .line 885
    :goto_1
    const-string v2, "FAIL"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "FINAL PARSE JSON FAILED: "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 886
    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v7, ""

    .line 887
    const-string v10, ""

    const-string v12, ""

    move-object/from16 v1, p0

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move-object/from16 v8, p5

    move-object/from16 v9, p6

    move-object/from16 v11, p7

    .line 885
    invoke-virtual/range {v1 .. v12}, Lcom/iwifi/sdk/protocol/impl/AuthenticatedMethodsUtils;->generateJson(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 888
    .restart local v16    # "result":Ljava/lang/String;
    goto/16 :goto_0

    .line 880
    .end local v16    # "result":Ljava/lang/String;
    :catch_0
    move-exception v14

    .line 882
    .local v14, "e":Ljava/lang/Exception;
    invoke-virtual {v14}, Ljava/lang/Exception;->printStackTrace()V

    .line 883
    invoke-virtual {v14}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v15

    goto :goto_1
.end method

.method public generateJson(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
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
    .param p10, "accountId"    # Ljava/lang/String;
    .param p11, "portalUrl"    # Ljava/lang/String;

    .prologue
    .line 780
    if-nez p1, :cond_0

    .line 781
    const-string p1, ""

    .line 783
    :cond_0
    if-nez p2, :cond_1

    .line 784
    const-string p2, ""

    .line 786
    :cond_1
    if-nez p3, :cond_2

    .line 787
    const-string p3, ""

    .line 789
    :cond_2
    if-nez p6, :cond_3

    .line 790
    const-string p6, ""

    .line 792
    :cond_3
    if-nez p7, :cond_4

    .line 793
    const-string p7, ""

    .line 795
    :cond_4
    if-nez p11, :cond_5

    .line 796
    const-string p11, ""

    .line 798
    :cond_5
    if-nez p8, :cond_6

    .line 799
    const-string p8, ""

    .line 801
    :cond_6
    if-nez p4, :cond_7

    .line 802
    const-string p4, ""

    .line 804
    :cond_7
    if-nez p5, :cond_8

    .line 805
    const-string p5, ""

    .line 807
    :cond_8
    if-nez p9, :cond_9

    .line 808
    const-string p9, ""

    .line 810
    :cond_9
    if-nez p10, :cond_a

    .line 811
    const-string p10, ""

    .line 813
    :cond_a
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

    .line 814
    const-string v1, "\",\"appauth_type\":\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\",\"dev_id\":\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 815
    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\",\"platform_code\":\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 816
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

    .line 817
    const-string v1, "\",\"third_token\":\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\",\"ac_name\":\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 818
    invoke-virtual {v0, p9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\",\"accountid\":\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 819
    const-string v1, "\",\"portal_url\":\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\"}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 813
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public sync_getPortalUrl(Ljava/lang/String;)[Ljava/lang/String;
    .locals 9
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x0

    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 74
    const/4 v4, 0x2

    new-array v3, v4, [Ljava/lang/String;

    const-string v4, ""

    aput-object v4, v3, v8

    const-string v4, ""

    aput-object v4, v3, v7

    .line 75
    .local v3, "portalUrl_res":[Ljava/lang/String;
    const-string v4, "getPortalUrl"

    const-string v5, ""

    invoke-virtual {p0, p1, v4, v5, v6}, Lcom/iwifi/sdk/protocol/impl/AuthenticatedMethodsUtils;->syncConnect(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    .line 78
    .local v0, "Json_portalUrl":Ljava/lang/String;
    if-eqz v0, :cond_1

    .line 82
    :try_start_0
    const-string v4, "result"

    const-string v5, "message"

    const/4 v6, 0x0

    .line 81
    invoke-static {v0, v4, v5, v6}, Lcom/iwifi/sdk/parser/GetCodeResultParser;->GetCodeResultList(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/iwifi/sdk/data/CodeResult;

    move-result-object v1

    .line 83
    .local v1, "codeRes":Lcom/iwifi/sdk/data/CodeResult;
    invoke-virtual {v1}, Lcom/iwifi/sdk/data/CodeResult;->getResult()Ljava/lang/String;

    move-result-object v4

    const-string v5, "OK"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 84
    const/4 v4, 0x0

    const-string v5, "true"

    aput-object v5, v3, v4

    .line 85
    const/4 v4, 0x1

    invoke-virtual {v1}, Lcom/iwifi/sdk/data/CodeResult;->getMsg()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 109
    .end local v1    # "codeRes":Lcom/iwifi/sdk/data/CodeResult;
    :goto_0
    const-string v4, "iWiFiSDK|Authentication|sync_getPortalUrl"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "url="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 110
    const-string v6, " | result: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget-object v6, v3, v7

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 109
    invoke-static {v4, v5}, Lcom/iwifi/sdk/tools/Logger;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    return-object v3

    .line 88
    .restart local v1    # "codeRes":Lcom/iwifi/sdk/data/CodeResult;
    :cond_0
    const/4 v4, 0x0

    :try_start_1
    const-string v5, "false"

    aput-object v5, v3, v4

    .line 89
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

    .line 99
    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 98
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

    .line 105
    const-string v5, "portal url response is null"

    .line 104
    invoke-static {v4, v5}, Lcom/iwifi/sdk/tools/Logger;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public sync_getTempToken(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;
    .locals 14
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
    .param p11, "appkey"    # Ljava/lang/String;
    .param p12, "secret"    # Ljava/lang/String;

    .prologue
    .line 136
    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "auth_id="

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 137
    const-string v12, "&auth_unqid="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v0, p2

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "&auth_type=APPMOBILE"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 138
    const-string v12, "&ter_mac="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v0, p3

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "&ter_ip="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v0, p4

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 139
    const-string v12, "&terminal_type=android"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "&imei="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v0, p5

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "&dev_id="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 140
    move-object/from16 v0, p6

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "&ac_name="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v0, p7

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "&app_id="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v0, p8

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 141
    const-string v12, "&platform_code="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v0, p9

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "&portal_url="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 142
    move-object/from16 v0, p10

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "&appkey="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v0, p11

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "&secret="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v0, p12

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 136
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/iwifi/sdk/protocol/impl/SDKCommonMotheds;->getSign(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 143
    .local v6, "md5sign":Ljava/lang/String;
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 144
    .local v7, "paramList":Ljava/util/List;, "Ljava/util/List<Lcom/iwifi/sdk/tools/DataObject;>;"
    new-instance v11, Lcom/iwifi/sdk/tools/DataObject;

    const-string v12, "auth_id"

    invoke-direct {v11, v12, p1}, Lcom/iwifi/sdk/tools/DataObject;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v7, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 145
    new-instance v11, Lcom/iwifi/sdk/tools/DataObject;

    const-string v12, "auth_unqid"

    move-object/from16 v0, p2

    invoke-direct {v11, v12, v0}, Lcom/iwifi/sdk/tools/DataObject;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v7, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 146
    new-instance v11, Lcom/iwifi/sdk/tools/DataObject;

    const-string v12, "auth_type"

    const-string v13, "APPMOBILE"

    invoke-direct {v11, v12, v13}, Lcom/iwifi/sdk/tools/DataObject;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v7, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 147
    new-instance v11, Lcom/iwifi/sdk/tools/DataObject;

    const-string v12, "ter_mac"

    move-object/from16 v0, p3

    invoke-direct {v11, v12, v0}, Lcom/iwifi/sdk/tools/DataObject;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v7, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 148
    new-instance v11, Lcom/iwifi/sdk/tools/DataObject;

    const-string v12, "ter_ip"

    move-object/from16 v0, p4

    invoke-direct {v11, v12, v0}, Lcom/iwifi/sdk/tools/DataObject;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v7, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 149
    new-instance v11, Lcom/iwifi/sdk/tools/DataObject;

    const-string v12, "terminal_type"

    const-string v13, "android"

    invoke-direct {v11, v12, v13}, Lcom/iwifi/sdk/tools/DataObject;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v7, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 150
    new-instance v11, Lcom/iwifi/sdk/tools/DataObject;

    const-string v12, "imei"

    move-object/from16 v0, p5

    invoke-direct {v11, v12, v0}, Lcom/iwifi/sdk/tools/DataObject;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v7, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 151
    new-instance v11, Lcom/iwifi/sdk/tools/DataObject;

    const-string v12, "dev_id"

    move-object/from16 v0, p6

    invoke-direct {v11, v12, v0}, Lcom/iwifi/sdk/tools/DataObject;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v7, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 152
    new-instance v11, Lcom/iwifi/sdk/tools/DataObject;

    const-string v12, "ac_name"

    move-object/from16 v0, p7

    invoke-direct {v11, v12, v0}, Lcom/iwifi/sdk/tools/DataObject;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v7, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 153
    new-instance v11, Lcom/iwifi/sdk/tools/DataObject;

    const-string v12, "app_id"

    move-object/from16 v0, p8

    invoke-direct {v11, v12, v0}, Lcom/iwifi/sdk/tools/DataObject;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v7, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 154
    new-instance v11, Lcom/iwifi/sdk/tools/DataObject;

    const-string v12, "platform_code"

    move-object/from16 v0, p9

    invoke-direct {v11, v12, v0}, Lcom/iwifi/sdk/tools/DataObject;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v7, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 155
    new-instance v11, Lcom/iwifi/sdk/tools/DataObject;

    const-string v12, "portal_url"

    .line 156
    invoke-static/range {p10 .. p10}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-direct {v11, v12, v13}, Lcom/iwifi/sdk/tools/DataObject;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 155
    invoke-interface {v7, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 157
    new-instance v11, Lcom/iwifi/sdk/tools/DataObject;

    const-string v12, "appkey"

    move-object/from16 v0, p11

    invoke-direct {v11, v12, v0}, Lcom/iwifi/sdk/tools/DataObject;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v7, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 159
    new-instance v11, Lcom/iwifi/sdk/tools/DataObject;

    const-string v12, "sign"

    invoke-direct {v11, v12, v6}, Lcom/iwifi/sdk/tools/DataObject;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v7, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 161
    sget-object v11, Lcom/iwifi/sdk/tools/HttpConf;->iWiFi20_WIFI_HOST:Ljava/lang/String;

    .line 162
    const-string v12, "token.html"

    const-string v13, ""

    .line 161
    invoke-virtual {p0, v11, v12, v13, v7}, Lcom/iwifi/sdk/protocol/impl/AuthenticatedMethodsUtils;->syncConnect(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;

    move-result-object v5

    .line 163
    .local v5, "json_token":Ljava/lang/String;
    const/4 v11, 0x4

    new-array v10, v11, [Ljava/lang/String;

    const/4 v11, 0x0

    const-string v12, ""

    aput-object v12, v10, v11

    const/4 v11, 0x1

    const-string v12, ""

    aput-object v12, v10, v11

    const/4 v11, 0x2

    const-string v12, ""

    aput-object v12, v10, v11

    const/4 v11, 0x3

    const-string v12, ""

    aput-object v12, v10, v11

    .line 165
    .local v10, "token_res":[Ljava/lang/String;
    if-eqz v5, :cond_4

    .line 169
    :try_start_0
    invoke-static {v5}, Lcom/iwifi/sdk/parser/GetCodeResultParser;->GetJsonObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    .line 170
    .local v4, "jsonObject":Lorg/json/JSONObject;
    const-string v11, "result"

    invoke-virtual {v4, v11}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    const-string v12, "OK"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_5

    .line 171
    const-string v9, ""

    .line 172
    .local v9, "token":Ljava/lang/String;
    const-string v2, ""

    .line 173
    .local v2, "auth_type":Ljava/lang/String;
    const-string v8, ""

    .line 174
    .local v8, "platformCode":Ljava/lang/String;
    const-string v1, ""

    .line 175
    .local v1, "accountid":Ljava/lang/String;
    const-string v11, "token"

    invoke-virtual {v5, v11}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_0

    .line 176
    const-string v11, "token"

    invoke-virtual {v4, v11}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 177
    :cond_0
    const-string v11, "appauth_type"

    invoke-virtual {v5, v11}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_1

    .line 178
    const-string v11, "appauth_type"

    invoke-virtual {v4, v11}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 179
    :cond_1
    const-string v11, "platform_code"

    invoke-virtual {v5, v11}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_2

    .line 180
    const-string v11, "platform_code"

    invoke-virtual {v4, v11}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 181
    :cond_2
    const-string v11, "accountid"

    invoke-virtual {v5, v11}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_3

    .line 182
    const-string v11, "accountid"

    invoke-virtual {v4, v11}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 184
    :cond_3
    const/4 v11, 0x0

    aput-object v9, v10, v11

    .line 185
    const/4 v11, 0x1

    aput-object v2, v10, v11

    .line 186
    const/4 v11, 0x2

    aput-object v8, v10, v11

    .line 187
    const/4 v11, 0x3

    aput-object v1, v10, v11
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 204
    .end local v1    # "accountid":Ljava/lang/String;
    .end local v2    # "auth_type":Ljava/lang/String;
    .end local v4    # "jsonObject":Lorg/json/JSONObject;
    .end local v8    # "platformCode":Ljava/lang/String;
    .end local v9    # "token":Ljava/lang/String;
    :cond_4
    :goto_0
    const-string v11, "iWiFiSDK|Authentication|sync_getTempToken"

    new-instance v12, Ljava/lang/StringBuilder;

    const-string v13, "auth_id="

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 205
    invoke-virtual {v12, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "&auth_unqid="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p2

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "&ter_mac="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p3

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    .line 206
    const-string v13, "&ter_ip="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p4

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "&imei="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p5

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "&dev_id="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p6

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    .line 207
    const-string v13, "&ac_name="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p7

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "&platform_code="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p9

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    .line 208
    const-string v13, "&portal_url="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p10

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " | result: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 204
    invoke-static {v11, v12}, Lcom/iwifi/sdk/tools/Logger;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 209
    return-object v10

    .line 189
    .restart local v4    # "jsonObject":Lorg/json/JSONObject;
    :cond_5
    const/4 v11, 0x0

    :try_start_1
    const-string v12, "FAIL"

    aput-object v12, v10, v11

    .line 190
    const/4 v12, 0x1

    const-string v11, "message"

    invoke-virtual {v5, v11}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_6

    .line 191
    const-string v11, "message"

    invoke-virtual {v4, v11}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 190
    :goto_1
    aput-object v11, v10, v12

    .line 192
    const-string v11, "iWiFiSDK|Authentication|sync_getTempToken"

    .line 193
    new-instance v12, Ljava/lang/StringBuilder;

    const-string v13, "GetToken Error: "

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 192
    invoke-static {v11, v12}, Lcom/iwifi/sdk/tools/Logger;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    .line 195
    .end local v4    # "jsonObject":Lorg/json/JSONObject;
    :catch_0
    move-exception v3

    .line 196
    .local v3, "e":Ljava/lang/Exception;
    const/4 v11, 0x0

    const-string v12, "FAIL"

    aput-object v12, v10, v11

    .line 197
    const/4 v11, 0x1

    new-instance v12, Ljava/lang/StringBuilder;

    const-string v13, "Error is "

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    .line 198
    const-string v13, ", Original errInfo is : "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 197
    aput-object v12, v10, v11

    .line 199
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    .line 200
    const-string v11, "iWiFiSDK|Authentication|sync_getTempToken"

    .line 201
    new-instance v12, Ljava/lang/StringBuilder;

    const-string v13, "GetToken Error: "

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v13, 0x1

    aget-object v13, v10, v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 200
    invoke-static {v11, v12}, Lcom/iwifi/sdk/tools/Logger;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .end local v3    # "e":Ljava/lang/Exception;
    .restart local v4    # "jsonObject":Lorg/json/JSONObject;
    :cond_6
    move-object v11, v5

    .line 191
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
    .line 1290
    return-void
.end method
