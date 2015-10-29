.class public Lcom/cat/tools/PostFile;
.super Ljava/lang/Object;
.source "PostFile.java"


# static fields
.field static actionUrl:Ljava/lang/String;

.field static mLocalVersionName:Ljava/lang/String;

.field static nowTime:J

.field static startTime:Ljava/lang/String;

.field static time:J

.field protected static wifiMgr:Landroid/net/wifi/WifiManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 29
    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v1, Lcom/cat/tools/HttpConf;->iWiFi_WIFI_HOST:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 30
    const-string v1, "upload.html"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 29
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/cat/tools/PostFile;->actionUrl:Ljava/lang/String;

    .line 138
    const/4 v0, 0x0

    sput-object v0, Lcom/cat/tools/PostFile;->wifiMgr:Landroid/net/wifi/WifiManager;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getLocalMacAddress(Landroid/content/Context;)Ljava/lang/String;
    .locals 3
    .param p0, "ctx"    # Landroid/content/Context;

    .prologue
    .line 146
    sget-object v1, Lcom/cat/tools/PostFile;->wifiMgr:Landroid/net/wifi/WifiManager;

    if-nez v1, :cond_0

    .line 147
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 148
    const-string v2, "wifi"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 147
    check-cast v1, Landroid/net/wifi/WifiManager;

    sput-object v1, Lcom/cat/tools/PostFile;->wifiMgr:Landroid/net/wifi/WifiManager;

    .line 150
    :cond_0
    sget-object v1, Lcom/cat/tools/PostFile;->wifiMgr:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v0

    .line 151
    .local v0, "info":Landroid/net/wifi/WifiInfo;
    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getMacAddress()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static upload(Ljava/util/Map;Ljava/util/Map;Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;
    .locals 29
    .param p2, "contentType"    # Ljava/lang/String;
    .param p3, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/io/File;",
            ">;",
            "Ljava/lang/String;",
            "Landroid/content/Context;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 39
    .local p0, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .local p1, "files":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/io/File;>;"
    new-instance v19, Lorg/apache/commons/httpclient/methods/PostMethod;

    sget-object v25, Lcom/cat/tools/PostFile;->actionUrl:Ljava/lang/String;

    move-object/from16 v0, v19

    move-object/from16 v1, v25

    invoke-direct {v0, v1}, Lorg/apache/commons/httpclient/methods/PostMethod;-><init>(Ljava/lang/String;)V

    .line 40
    .local v19, "postMethod":Lorg/apache/commons/httpclient/methods/PostMethod;
    invoke-virtual/range {v19 .. v19}, Lorg/apache/commons/httpclient/methods/PostMethod;->getParams()Lorg/apache/commons/httpclient/params/HttpMethodParams;

    move-result-object v25

    const-string v26, "UTF-8"

    invoke-virtual/range {v25 .. v26}, Lorg/apache/commons/httpclient/params/HttpMethodParams;->setContentCharset(Ljava/lang/String;)V

    .line 42
    invoke-virtual/range {p3 .. p3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v13

    .line 45
    .local v13, "mPackMg":Landroid/content/pm/PackageManager;
    :try_start_0
    invoke-virtual/range {p3 .. p3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v25

    .line 46
    const/16 v26, 0x1

    .line 45
    move-object/from16 v0, v25

    move/from16 v1, v26

    invoke-virtual {v13, v0, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v16

    .line 47
    .local v16, "packInfo":Landroid/content/pm/PackageInfo;
    move-object/from16 v0, v16

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    move-object/from16 v25, v0

    sput-object v25, Lcom/cat/tools/PostFile;->mLocalVersionName:Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 51
    .end local v16    # "packInfo":Landroid/content/pm/PackageInfo;
    :goto_0
    new-instance v25, Ljava/lang/StringBuilder;

    invoke-virtual/range {p3 .. p3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v26 .. v26}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v26

    invoke-direct/range {v25 .. v26}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v26, "+"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    .line 52
    sget-object v26, Lcom/cat/tools/PostFile;->mLocalVersionName:Ljava/lang/String;

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, "+android+"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    .line 53
    sget-object v26, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    .line 51
    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    .line 54
    .local v24, "useragent":Ljava/lang/String;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v25

    sput-wide v25, Lcom/cat/tools/PostFile;->nowTime:J

    .line 56
    const-string v25, "TimeDifference"

    const/16 v26, 0x0

    .line 55
    move-object/from16 v0, p3

    move-object/from16 v1, v25

    move/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v21

    .line 57
    .local v21, "sharedata":Landroid/content/SharedPreferences;
    const-string v25, "difftime"

    const-string v26, ""

    move-object/from16 v0, v21

    move-object/from16 v1, v25

    move-object/from16 v2, v26

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    sput-object v25, Lcom/cat/tools/PostFile;->startTime:Ljava/lang/String;

    .line 59
    sget-object v25, Lcom/cat/tools/PostFile;->startTime:Ljava/lang/String;

    const-string v26, ""

    invoke-virtual/range {v25 .. v26}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_1

    .line 60
    sget-wide v25, Lcom/cat/tools/PostFile;->nowTime:J

    sput-wide v25, Lcom/cat/tools/PostFile;->time:J

    .line 66
    :goto_1
    const-string v25, ";"

    move-object/from16 v0, p2

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v25

    const/16 v26, 0x0

    aget-object v4, v25, v26

    .line 67
    .local v4, "bodyparam":Ljava/lang/String;
    const-string v25, ";"

    move-object/from16 v0, p2

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v25

    const/16 v26, 0x1

    aget-object v3, v25, v26

    .line 68
    .local v3, "action":Ljava/lang/String;
    new-instance v25, Ljava/lang/StringBuilder;

    const-string v26, "user-agent="

    invoke-direct/range {v25 .. v26}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v25

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    .line 69
    const-string v26, "&action="

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, "&termac="

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    .line 70
    invoke-static/range {p3 .. p3}, Lcom/cat/tools/PostFile;->getLocalMacAddress(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, "&tertype=android"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    .line 71
    const-string v26, "&timestamp="

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    sget-wide v26, Lcom/cat/tools/PostFile;->time:J

    invoke-static/range {v26 .. v27}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, "&appkey="

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    .line 72
    const v26, 0x7f060001

    move-object/from16 v0, p3

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    .line 73
    const-string v26, "&secret="

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    .line 74
    const v26, 0x7f060002

    move-object/from16 v0, p3

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    .line 75
    const-string v26, "&"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    .line 68
    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v25 .. v25}, Lcom/ta/util/http/Tools;->getSign(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 77
    .local v14, "md5sign":Ljava/lang/String;
    const-string v25, "user-agent"

    move-object/from16 v0, v19

    move-object/from16 v1, v25

    move-object/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Lorg/apache/commons/httpclient/methods/PostMethod;->addRequestHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    const-string v25, "action"

    move-object/from16 v0, v19

    move-object/from16 v1, v25

    invoke-virtual {v0, v1, v3}, Lorg/apache/commons/httpclient/methods/PostMethod;->addRequestHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    const-string v25, "termac"

    invoke-static/range {p3 .. p3}, Lcom/cat/tools/PostFile;->getLocalMacAddress(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v19

    move-object/from16 v1, v25

    move-object/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Lorg/apache/commons/httpclient/methods/PostMethod;->addRequestHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    const-string v25, "tertype"

    const-string v26, "android"

    move-object/from16 v0, v19

    move-object/from16 v1, v25

    move-object/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Lorg/apache/commons/httpclient/methods/PostMethod;->addRequestHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    const-string v25, "timestamp"

    sget-wide v26, Lcom/cat/tools/PostFile;->time:J

    invoke-static/range {v26 .. v27}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v19

    move-object/from16 v1, v25

    move-object/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Lorg/apache/commons/httpclient/methods/PostMethod;->addRequestHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    const-string v25, "appkey"

    .line 83
    const v26, 0x7f060001

    move-object/from16 v0, p3

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v26

    .line 82
    move-object/from16 v0, v19

    move-object/from16 v1, v25

    move-object/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Lorg/apache/commons/httpclient/methods/PostMethod;->addRequestHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    const-string v25, "sign"

    move-object/from16 v0, v19

    move-object/from16 v1, v25

    invoke-virtual {v0, v1, v14}, Lorg/apache/commons/httpclient/methods/PostMethod;->addRequestHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    invoke-virtual/range {v19 .. v19}, Lorg/apache/commons/httpclient/methods/PostMethod;->getRequestCharSet()Ljava/lang/String;

    move-result-object v5

    .line 87
    .local v5, "charSet":Ljava/lang/String;
    invoke-interface/range {p0 .. p0}, Ljava/util/Map;->size()I

    move-result v25

    invoke-interface/range {p1 .. p1}, Ljava/util/Map;->size()I

    move-result v26

    add-int v25, v25, v26

    move/from16 v0, v25

    new-array v0, v0, [Lorg/apache/commons/httpclient/methods/multipart/Part;

    move-object/from16 v18, v0

    .line 88
    .local v18, "parts":[Lorg/apache/commons/httpclient/methods/multipart/Part;
    const/4 v11, 0x0

    .line 89
    .local v11, "index":I
    const/4 v10, 0x0

    .line 90
    .local v10, "filePart":Lorg/apache/commons/httpclient/methods/multipart/FilePart;
    invoke-interface/range {p1 .. p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v25

    invoke-interface/range {v25 .. v25}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v27

    :goto_2
    invoke-interface/range {v27 .. v27}, Ljava/util/Iterator;->hasNext()Z

    move-result v25

    if-nez v25, :cond_2

    .line 96
    const/16 v23, 0x0

    .line 98
    .local v23, "stringPart":Lorg/apache/commons/httpclient/methods/multipart/StringPart;
    invoke-interface/range {p0 .. p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v25

    invoke-interface/range {v25 .. v25}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v27

    move v12, v11

    .end local v11    # "index":I
    .local v12, "index":I
    :goto_3
    invoke-interface/range {v27 .. v27}, Ljava/util/Iterator;->hasNext()Z

    move-result v25

    if-nez v25, :cond_3

    .line 107
    new-instance v6, Lorg/apache/commons/httpclient/HttpClient;

    invoke-direct {v6}, Lorg/apache/commons/httpclient/HttpClient;-><init>()V

    .line 108
    .local v6, "client":Lorg/apache/commons/httpclient/HttpClient;
    new-instance v15, Lorg/apache/commons/httpclient/methods/multipart/MultipartRequestEntity;

    .line 109
    invoke-virtual/range {v19 .. v19}, Lorg/apache/commons/httpclient/methods/PostMethod;->getParams()Lorg/apache/commons/httpclient/params/HttpMethodParams;

    move-result-object v25

    .line 108
    move-object/from16 v0, v18

    move-object/from16 v1, v25

    invoke-direct {v15, v0, v1}, Lorg/apache/commons/httpclient/methods/multipart/MultipartRequestEntity;-><init>([Lorg/apache/commons/httpclient/methods/multipart/Part;Lorg/apache/commons/httpclient/params/HttpMethodParams;)V

    .line 110
    .local v15, "mrEntity":Lorg/apache/commons/httpclient/methods/multipart/MultipartRequestEntity;
    move-object/from16 v0, v19

    invoke-virtual {v0, v15}, Lorg/apache/commons/httpclient/methods/PostMethod;->setRequestEntity(Lorg/apache/commons/httpclient/methods/RequestEntity;)V

    .line 112
    new-instance v7, Lorg/apache/commons/httpclient/params/HttpClientParams;

    invoke-direct {v7}, Lorg/apache/commons/httpclient/params/HttpClientParams;-><init>()V

    .line 114
    .local v7, "clientParams":Lorg/apache/commons/httpclient/params/HttpClientParams;
    const-string v25, "http.useragent"

    .line 115
    const-string v26, "Mozilla/4.0 (compatible; FIREFOX 9.0; IBM AIX 5)"

    .line 114
    move-object/from16 v0, v25

    move-object/from16 v1, v26

    invoke-virtual {v7, v0, v1}, Lorg/apache/commons/httpclient/params/HttpClientParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)V

    .line 116
    invoke-virtual {v7, v5}, Lorg/apache/commons/httpclient/params/HttpClientParams;->setHttpElementCharset(Ljava/lang/String;)V

    .line 117
    const-wide/16 v25, 0x1388

    move-wide/from16 v0, v25

    invoke-virtual {v7, v0, v1}, Lorg/apache/commons/httpclient/params/HttpClientParams;->setConnectionManagerTimeout(J)V

    .line 118
    sget-object v25, Lorg/apache/commons/httpclient/HttpVersion;->HTTP_1_1:Lorg/apache/commons/httpclient/HttpVersion;

    move-object/from16 v0, v25

    invoke-virtual {v7, v0}, Lorg/apache/commons/httpclient/params/HttpClientParams;->setVersion(Lorg/apache/commons/httpclient/HttpVersion;)V

    .line 120
    move-object/from16 v0, v19

    invoke-virtual {v6, v0}, Lorg/apache/commons/httpclient/HttpClient;->executeMethod(Lorg/apache/commons/httpclient/HttpMethod;)I

    move-result v22

    .line 121
    .local v22, "status":I
    const-string v20, ""

    .line 123
    .local v20, "result":Ljava/lang/String;
    const/16 v25, 0xc8

    move/from16 v0, v22

    move/from16 v1, v25

    if-ne v0, v1, :cond_0

    .line 125
    :try_start_1
    invoke-virtual/range {v19 .. v19}, Lorg/apache/commons/httpclient/methods/PostMethod;->getResponseBodyAsString()Ljava/lang/String;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v20

    .line 132
    :cond_0
    :goto_4
    invoke-virtual/range {v19 .. v19}, Lorg/apache/commons/httpclient/methods/PostMethod;->releaseConnection()V

    .line 133
    invoke-virtual {v6}, Lorg/apache/commons/httpclient/HttpClient;->getHttpConnectionManager()Lorg/apache/commons/httpclient/HttpConnectionManager;

    move-result-object v25

    const-wide/16 v26, 0x0

    invoke-interface/range {v25 .. v27}, Lorg/apache/commons/httpclient/HttpConnectionManager;->closeIdleConnections(J)V

    .line 135
    return-object v20

    .line 48
    .end local v3    # "action":Ljava/lang/String;
    .end local v4    # "bodyparam":Ljava/lang/String;
    .end local v5    # "charSet":Ljava/lang/String;
    .end local v6    # "client":Lorg/apache/commons/httpclient/HttpClient;
    .end local v7    # "clientParams":Lorg/apache/commons/httpclient/params/HttpClientParams;
    .end local v10    # "filePart":Lorg/apache/commons/httpclient/methods/multipart/FilePart;
    .end local v12    # "index":I
    .end local v14    # "md5sign":Ljava/lang/String;
    .end local v15    # "mrEntity":Lorg/apache/commons/httpclient/methods/multipart/MultipartRequestEntity;
    .end local v18    # "parts":[Lorg/apache/commons/httpclient/methods/multipart/Part;
    .end local v20    # "result":Ljava/lang/String;
    .end local v21    # "sharedata":Landroid/content/SharedPreferences;
    .end local v22    # "status":I
    .end local v23    # "stringPart":Lorg/apache/commons/httpclient/methods/multipart/StringPart;
    .end local v24    # "useragent":Ljava/lang/String;
    :catch_0
    move-exception v8

    .line 49
    .local v8, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v8}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto/16 :goto_0

    .line 62
    .end local v8    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v21    # "sharedata":Landroid/content/SharedPreferences;
    .restart local v24    # "useragent":Ljava/lang/String;
    :cond_1
    sget-wide v25, Lcom/cat/tools/PostFile;->nowTime:J

    sget-object v27, Lcom/cat/tools/PostFile;->startTime:Ljava/lang/String;

    invoke-static/range {v27 .. v27}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v27

    add-long v25, v25, v27

    sput-wide v25, Lcom/cat/tools/PostFile;->time:J

    goto/16 :goto_1

    .line 90
    .restart local v3    # "action":Ljava/lang/String;
    .restart local v4    # "bodyparam":Ljava/lang/String;
    .restart local v5    # "charSet":Ljava/lang/String;
    .restart local v10    # "filePart":Lorg/apache/commons/httpclient/methods/multipart/FilePart;
    .restart local v11    # "index":I
    .restart local v14    # "md5sign":Ljava/lang/String;
    .restart local v18    # "parts":[Lorg/apache/commons/httpclient/methods/multipart/Part;
    :cond_2
    invoke-interface/range {v27 .. v27}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/Map$Entry;

    .line 91
    .local v9, "file":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/io/File;>;"
    new-instance v10, Lorg/apache/commons/httpclient/methods/multipart/FilePart;

    .end local v10    # "filePart":Lorg/apache/commons/httpclient/methods/multipart/FilePart;
    invoke-interface {v9}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Ljava/lang/String;

    invoke-interface {v9}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Ljava/io/File;

    const/16 v28, 0x0

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    move-object/from16 v2, v28

    invoke-direct {v10, v0, v1, v2, v5}, Lorg/apache/commons/httpclient/methods/multipart/FilePart;-><init>(Ljava/lang/String;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    .restart local v10    # "filePart":Lorg/apache/commons/httpclient/methods/multipart/FilePart;
    add-int/lit8 v12, v11, 0x1

    .end local v11    # "index":I
    .restart local v12    # "index":I
    aput-object v10, v18, v11

    move v11, v12

    .end local v12    # "index":I
    .restart local v11    # "index":I
    goto/16 :goto_2

    .line 98
    .end local v9    # "file":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/io/File;>;"
    .end local v11    # "index":I
    .restart local v12    # "index":I
    .restart local v23    # "stringPart":Lorg/apache/commons/httpclient/methods/multipart/StringPart;
    :cond_3
    invoke-interface/range {v27 .. v27}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/util/Map$Entry;

    .line 102
    .local v17, "param":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v23, Lorg/apache/commons/httpclient/methods/multipart/StringPart;

    .end local v23    # "stringPart":Lorg/apache/commons/httpclient/methods/multipart/StringPart;
    invoke-interface/range {v17 .. v17}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Ljava/lang/String;

    invoke-interface/range {v17 .. v17}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Ljava/lang/String;

    move-object/from16 v0, v23

    move-object/from16 v1, v25

    move-object/from16 v2, v26

    invoke-direct {v0, v1, v2, v5}, Lorg/apache/commons/httpclient/methods/multipart/StringPart;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    .restart local v23    # "stringPart":Lorg/apache/commons/httpclient/methods/multipart/StringPart;
    add-int/lit8 v11, v12, 0x1

    .end local v12    # "index":I
    .restart local v11    # "index":I
    aput-object v23, v18, v12

    move v12, v11

    .end local v11    # "index":I
    .restart local v12    # "index":I
    goto/16 :goto_3

    .line 126
    .end local v17    # "param":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v6    # "client":Lorg/apache/commons/httpclient/HttpClient;
    .restart local v7    # "clientParams":Lorg/apache/commons/httpclient/params/HttpClientParams;
    .restart local v15    # "mrEntity":Lorg/apache/commons/httpclient/methods/multipart/MultipartRequestEntity;
    .restart local v20    # "result":Ljava/lang/String;
    .restart local v22    # "status":I
    :catch_1
    move-exception v8

    .line 127
    .local v8, "e":Ljava/io/IOException;
    invoke-virtual {v8}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4
.end method
