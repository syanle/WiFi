.class public Lcom/pubinfo/freewifialliance/update/AWingUpdater;
.super Ljava/lang/Object;
.source "AWingUpdater.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pubinfo/freewifialliance/update/AWingUpdater$AppUpdateInfo;
    }
.end annotation


# static fields
.field public static final TEMP_PATH:Ljava/lang/String; = "apk_catch"


# instance fields
.field private final CONNECT_TIMEOUT:I

.field private final UPDATE_XMLPATH:Ljava/lang/String;

.field UPDATE_XMLPATH2:Ljava/lang/String;

.field private mHandler:Landroid/os/Handler;

.field private mIsGoOn:Z

.field private mIsToEnd:Z


# direct methods
.method public constructor <init>(Landroid/os/Handler;)V
    .locals 1
    .param p1, "handler"    # Landroid/os/Handler;

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    const-string v0, "http://www.voogle.cn:12380/checkVersion"

    iput-object v0, p0, Lcom/pubinfo/freewifialliance/update/AWingUpdater;->UPDATE_XMLPATH:Ljava/lang/String;

    .line 35
    const/16 v0, 0x1f40

    iput v0, p0, Lcom/pubinfo/freewifialliance/update/AWingUpdater;->CONNECT_TIMEOUT:I

    .line 37
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/pubinfo/freewifialliance/update/AWingUpdater;->mIsGoOn:Z

    .line 38
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/pubinfo/freewifialliance/update/AWingUpdater;->mIsToEnd:Z

    .line 40
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/pubinfo/freewifialliance/update/AWingUpdater;->mHandler:Landroid/os/Handler;

    .line 43
    iput-object p1, p0, Lcom/pubinfo/freewifialliance/update/AWingUpdater;->mHandler:Landroid/os/Handler;

    .line 44
    return-void
.end method

.method private downloadServerFile(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;
    .locals 15
    .param p1, "urlStr"    # Ljava/lang/String;
    .param p2, "localPath"    # Ljava/lang/String;
    .param p3, "isAPK"    # Z

    .prologue
    .line 147
    const/4 v11, 0x0

    .line 149
    .local v11, "result":Ljava/lang/String;
    :try_start_0
    new-instance v12, Ljava/net/URL;

    move-object/from16 v0, p1

    invoke-direct {v12, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 150
    .local v12, "url":Ljava/net/URL;
    invoke-virtual {v12}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v2

    check-cast v2, Ljava/net/HttpURLConnection;

    .line 151
    .local v2, "conn":Ljava/net/HttpURLConnection;
    const/16 v13, 0x1f40

    invoke-virtual {v2, v13}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 153
    const/4 v13, 0x1

    invoke-virtual {v2, v13}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    .line 154
    const-string v13, "GET"

    invoke-virtual {v2, v13}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 155
    const-string v13, "User-Agent"

    const-string v14, "com.pubinfo"

    invoke-virtual {v2, v13, v14}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 156
    const-string v13, "Accept-Encoding"

    const-string v14, "identity"

    invoke-virtual {v2, v13, v14}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 158
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->connect()V

    .line 178
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v6

    .line 180
    .local v6, "input":Ljava/io/InputStream;
    new-instance v9, Ljava/io/File;

    move-object/from16 v0, p2

    invoke-direct {v9, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 181
    .local v9, "localFile":Ljava/io/File;
    invoke-virtual {v9}, Ljava/io/File;->exists()Z

    move-result v13

    if-nez v13, :cond_1

    .line 182
    invoke-virtual {v9}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v13

    invoke-virtual {v13}, Ljava/io/File;->exists()Z

    move-result v13

    if-nez v13, :cond_0

    .line 183
    invoke-virtual {v9}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v13

    invoke-virtual {v13}, Ljava/io/File;->mkdirs()Z

    .line 185
    :cond_0
    invoke-virtual {v9}, Ljava/io/File;->createNewFile()Z

    .line 187
    :cond_1
    new-instance v4, Ljava/io/DataOutputStream;

    new-instance v13, Ljava/io/FileOutputStream;

    invoke-direct {v13, v9}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v4, v13}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 189
    .local v4, "dataOutput":Ljava/io/DataOutputStream;
    const-wide/16 v7, 0x0

    .line 190
    .local v7, "loadCount":J
    const/4 v10, 0x0

    .line 191
    .local v10, "readCount":I
    const v13, 0x19000

    new-array v1, v13, [B

    .line 193
    .local v1, "buf":[B
    :cond_2
    :goto_0
    invoke-virtual {v6, v1}, Ljava/io/InputStream;->read([B)I

    move-result v10

    const/4 v13, -0x1

    if-ne v10, v13, :cond_3

    .line 218
    invoke-virtual {v4}, Ljava/io/DataOutputStream;->flush()V

    .line 219
    invoke-virtual {v4}, Ljava/io/DataOutputStream;->close()V

    .line 220
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V

    .line 222
    invoke-virtual {v9}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v11

    .end local v1    # "buf":[B
    .end local v2    # "conn":Ljava/net/HttpURLConnection;
    .end local v4    # "dataOutput":Ljava/io/DataOutputStream;
    .end local v6    # "input":Ljava/io/InputStream;
    .end local v7    # "loadCount":J
    .end local v9    # "localFile":Ljava/io/File;
    .end local v10    # "readCount":I
    .end local v12    # "url":Ljava/net/URL;
    :goto_1
    move-object v13, v11

    .line 237
    :goto_2
    return-object v13

    .line 194
    .restart local v1    # "buf":[B
    .restart local v2    # "conn":Ljava/net/HttpURLConnection;
    .restart local v4    # "dataOutput":Ljava/io/DataOutputStream;
    .restart local v6    # "input":Ljava/io/InputStream;
    .restart local v7    # "loadCount":J
    .restart local v9    # "localFile":Ljava/io/File;
    .restart local v10    # "readCount":I
    .restart local v12    # "url":Ljava/net/URL;
    :cond_3
    int-to-long v13, v10

    add-long/2addr v7, v13

    .line 195
    const/4 v13, 0x0

    invoke-virtual {v4, v1, v13, v10}, Ljava/io/DataOutputStream;->write([BII)V

    .line 198
    iget-boolean v13, p0, Lcom/pubinfo/freewifialliance/update/AWingUpdater;->mIsGoOn:Z

    if-nez v13, :cond_2

    .line 199
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    .line 200
    .local v3, "curThread":Ljava/lang/Thread;
    monitor-enter v3
    :try_end_0
    .catch Ljava/net/SocketTimeoutException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    .line 202
    :try_start_1
    invoke-virtual {v3}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 206
    :goto_3
    :try_start_2
    iget-boolean v13, p0, Lcom/pubinfo/freewifialliance/update/AWingUpdater;->mIsToEnd:Z

    if-eqz v13, :cond_4

    .line 207
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const-string v13, "toend"

    goto :goto_2

    .line 203
    :catch_0
    move-exception v5

    .line 204
    .local v5, "e":Ljava/lang/InterruptedException;
    :try_start_3
    invoke-virtual {v5}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_3

    .line 200
    .end local v5    # "e":Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v13

    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v13
    :try_end_4
    .catch Ljava/net/SocketTimeoutException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    .line 223
    .end local v1    # "buf":[B
    .end local v2    # "conn":Ljava/net/HttpURLConnection;
    .end local v3    # "curThread":Ljava/lang/Thread;
    .end local v4    # "dataOutput":Ljava/io/DataOutputStream;
    .end local v6    # "input":Ljava/io/InputStream;
    .end local v7    # "loadCount":J
    .end local v9    # "localFile":Ljava/io/File;
    .end local v10    # "readCount":I
    .end local v12    # "url":Ljava/net/URL;
    :catch_1
    move-exception v13

    goto :goto_1

    .line 200
    .restart local v1    # "buf":[B
    .restart local v2    # "conn":Ljava/net/HttpURLConnection;
    .restart local v3    # "curThread":Ljava/lang/Thread;
    .restart local v4    # "dataOutput":Ljava/io/DataOutputStream;
    .restart local v6    # "input":Ljava/io/InputStream;
    .restart local v7    # "loadCount":J
    .restart local v9    # "localFile":Ljava/io/File;
    .restart local v10    # "readCount":I
    .restart local v12    # "url":Ljava/net/URL;
    :cond_4
    :try_start_5
    monitor-exit v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_0

    .line 233
    .end local v1    # "buf":[B
    .end local v2    # "conn":Ljava/net/HttpURLConnection;
    .end local v3    # "curThread":Ljava/lang/Thread;
    .end local v4    # "dataOutput":Ljava/io/DataOutputStream;
    .end local v6    # "input":Ljava/io/InputStream;
    .end local v7    # "loadCount":J
    .end local v9    # "localFile":Ljava/io/File;
    .end local v10    # "readCount":I
    .end local v12    # "url":Ljava/net/URL;
    :catch_2
    move-exception v5

    .line 234
    .local v5, "e":Ljava/io/IOException;
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1
.end method

.method private xmlParse(Ljava/lang/String;)Lcom/pubinfo/freewifialliance/update/AWingUpdater$AppUpdateInfo;
    .locals 13
    .param p1, "xmlPath"    # Ljava/lang/String;

    .prologue
    .line 252
    const/4 v0, 0x0

    .line 254
    .local v0, "appUpdateInfo":Lcom/pubinfo/freewifialliance/update/AWingUpdater$AppUpdateInfo;
    new-instance v10, Ljava/io/File;

    invoke-direct {v10, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 255
    .local v10, "xmlFile":Ljava/io/File;
    invoke-virtual {v10}, Ljava/io/File;->exists()Z

    move-result v11

    if-nez v11, :cond_0

    move-object v1, v0

    .line 300
    .end local v0    # "appUpdateInfo":Lcom/pubinfo/freewifialliance/update/AWingUpdater$AppUpdateInfo;
    .local v1, "appUpdateInfo":Lcom/pubinfo/freewifialliance/update/AWingUpdater$AppUpdateInfo;
    :goto_0
    return-object v1

    .line 260
    .end local v1    # "appUpdateInfo":Lcom/pubinfo/freewifialliance/update/AWingUpdater$AppUpdateInfo;
    .restart local v0    # "appUpdateInfo":Lcom/pubinfo/freewifialliance/update/AWingUpdater$AppUpdateInfo;
    :cond_0
    :try_start_0
    invoke-virtual {v10}, Ljava/io/File;->length()J

    move-result-wide v7

    .line 261
    .local v7, "totalCount":J
    const-wide/16 v11, 0xa

    cmp-long v11, v7, v11

    if-gtz v11, :cond_1

    move-object v1, v0

    .line 262
    .end local v0    # "appUpdateInfo":Lcom/pubinfo/freewifialliance/update/AWingUpdater$AppUpdateInfo;
    .restart local v1    # "appUpdateInfo":Lcom/pubinfo/freewifialliance/update/AWingUpdater$AppUpdateInfo;
    goto :goto_0

    .line 264
    .end local v1    # "appUpdateInfo":Lcom/pubinfo/freewifialliance/update/AWingUpdater$AppUpdateInfo;
    .restart local v0    # "appUpdateInfo":Lcom/pubinfo/freewifialliance/update/AWingUpdater$AppUpdateInfo;
    :cond_1
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v4

    .line 265
    .local v4, "docF":Ljavax/xml/parsers/DocumentBuilderFactory;
    invoke-virtual {v4}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v3

    .line 266
    .local v3, "docB":Ljavax/xml/parsers/DocumentBuilder;
    invoke-virtual {v3, v10}, Ljavax/xml/parsers/DocumentBuilder;->parse(Ljava/io/File;)Lorg/w3c/dom/Document;

    move-result-object v2

    .line 267
    .local v2, "doc":Lorg/w3c/dom/Document;
    invoke-interface {v2}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;

    move-result-object v6

    .line 268
    .local v6, "rootElement":Lorg/w3c/dom/Element;
    if-eqz v6, :cond_2

    .line 269
    new-instance v1, Lcom/pubinfo/freewifialliance/update/AWingUpdater$AppUpdateInfo;

    invoke-direct {v1, p0}, Lcom/pubinfo/freewifialliance/update/AWingUpdater$AppUpdateInfo;-><init>(Lcom/pubinfo/freewifialliance/update/AWingUpdater;)V

    .end local v0    # "appUpdateInfo":Lcom/pubinfo/freewifialliance/update/AWingUpdater$AppUpdateInfo;
    .restart local v1    # "appUpdateInfo":Lcom/pubinfo/freewifialliance/update/AWingUpdater$AppUpdateInfo;
    move-object v0, v1

    .line 272
    .end local v1    # "appUpdateInfo":Lcom/pubinfo/freewifialliance/update/AWingUpdater$AppUpdateInfo;
    .restart local v0    # "appUpdateInfo":Lcom/pubinfo/freewifialliance/update/AWingUpdater$AppUpdateInfo;
    :cond_2
    const-string v11, "AppName"

    invoke-interface {v6, v11}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v11

    const/4 v12, 0x0

    invoke-interface {v11, v12}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v11

    invoke-interface {v11}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v11

    invoke-interface {v11}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v9

    .line 273
    .local v9, "value":Ljava/lang/String;
    invoke-virtual {v0, v9}, Lcom/pubinfo/freewifialliance/update/AWingUpdater$AppUpdateInfo;->setAppName(Ljava/lang/String;)V

    .line 274
    const-string v11, "AppSize"

    invoke-interface {v6, v11}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v11

    const/4 v12, 0x0

    invoke-interface {v11, v12}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v11

    invoke-interface {v11}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v11

    invoke-interface {v11}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v9

    .line 275
    invoke-virtual {v0, v9}, Lcom/pubinfo/freewifialliance/update/AWingUpdater$AppUpdateInfo;->setAppSize(Ljava/lang/String;)V

    .line 276
    const-string v11, "VersionName"

    invoke-interface {v6, v11}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v11

    const/4 v12, 0x0

    invoke-interface {v11, v12}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v11

    invoke-interface {v11}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v11

    invoke-interface {v11}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v9

    .line 277
    invoke-virtual {v0, v9}, Lcom/pubinfo/freewifialliance/update/AWingUpdater$AppUpdateInfo;->setVersionName(Ljava/lang/String;)V

    .line 278
    const-string v11, "VersionCode"

    invoke-interface {v6, v11}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v11

    const/4 v12, 0x0

    invoke-interface {v11, v12}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v11

    invoke-interface {v11}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v11

    invoke-interface {v11}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v9

    .line 279
    invoke-virtual {v0, v9}, Lcom/pubinfo/freewifialliance/update/AWingUpdater$AppUpdateInfo;->setVersionCode(Ljava/lang/String;)V

    .line 280
    const-string v11, "DownloadUrl"

    invoke-interface {v6, v11}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v11

    const/4 v12, 0x0

    invoke-interface {v11, v12}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v11

    invoke-interface {v11}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v11

    invoke-interface {v11}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v9

    .line 282
    const-string v11, "utf-8"

    invoke-static {v9, v11}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v0, v11}, Lcom/pubinfo/freewifialliance/update/AWingUpdater$AppUpdateInfo;->setDownloadUrl(Ljava/lang/String;)V

    .line 283
    const-string v11, "PublicDate"

    invoke-interface {v6, v11}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v11

    const/4 v12, 0x0

    invoke-interface {v11, v12}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v11

    invoke-interface {v11}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v11

    invoke-interface {v11}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v9

    .line 284
    invoke-virtual {v0, v9}, Lcom/pubinfo/freewifialliance/update/AWingUpdater$AppUpdateInfo;->setPublicDate(Ljava/lang/String;)V

    .line 285
    const-string v11, "UpdateGrade"

    invoke-interface {v6, v11}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v11

    const/4 v12, 0x0

    invoke-interface {v11, v12}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v11

    invoke-interface {v11}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v11

    invoke-interface {v11}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v9

    .line 286
    invoke-virtual {v0, v9}, Lcom/pubinfo/freewifialliance/update/AWingUpdater$AppUpdateInfo;->setUpdateGrade(Ljava/lang/String;)V

    .line 287
    const-string v11, "AppIntro"

    invoke-interface {v6, v11}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v11

    const/4 v12, 0x0

    invoke-interface {v11, v12}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v11

    invoke-interface {v11}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v11

    invoke-interface {v11}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v9

    .line 288
    invoke-virtual {v0, v9}, Lcom/pubinfo/freewifialliance/update/AWingUpdater$AppUpdateInfo;->setAppIntro(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3

    .end local v2    # "doc":Lorg/w3c/dom/Document;
    .end local v3    # "docB":Ljavax/xml/parsers/DocumentBuilder;
    .end local v4    # "docF":Ljavax/xml/parsers/DocumentBuilderFactory;
    .end local v6    # "rootElement":Lorg/w3c/dom/Element;
    .end local v7    # "totalCount":J
    .end local v9    # "value":Ljava/lang/String;
    :goto_1
    move-object v1, v0

    .line 300
    .end local v0    # "appUpdateInfo":Lcom/pubinfo/freewifialliance/update/AWingUpdater$AppUpdateInfo;
    .restart local v1    # "appUpdateInfo":Lcom/pubinfo/freewifialliance/update/AWingUpdater$AppUpdateInfo;
    goto/16 :goto_0

    .line 289
    .end local v1    # "appUpdateInfo":Lcom/pubinfo/freewifialliance/update/AWingUpdater$AppUpdateInfo;
    .restart local v0    # "appUpdateInfo":Lcom/pubinfo/freewifialliance/update/AWingUpdater$AppUpdateInfo;
    :catch_0
    move-exception v5

    .line 290
    .local v5, "e":Ljava/io/FileNotFoundException;
    invoke-virtual {v5}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto :goto_1

    .line 291
    .end local v5    # "e":Ljava/io/FileNotFoundException;
    :catch_1
    move-exception v5

    .line 292
    .local v5, "e":Ljavax/xml/parsers/ParserConfigurationException;
    invoke-virtual {v5}, Ljavax/xml/parsers/ParserConfigurationException;->printStackTrace()V

    goto :goto_1

    .line 293
    .end local v5    # "e":Ljavax/xml/parsers/ParserConfigurationException;
    :catch_2
    move-exception v5

    .line 294
    .local v5, "e":Lorg/xml/sax/SAXException;
    invoke-virtual {v5}, Lorg/xml/sax/SAXException;->printStackTrace()V

    goto :goto_1

    .line 295
    .end local v5    # "e":Lorg/xml/sax/SAXException;
    :catch_3
    move-exception v5

    .line 296
    .local v5, "e":Ljava/io/IOException;
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1
.end method


# virtual methods
.method public readyForUpdate(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .locals 11
    .param p1, "localVersionCode"    # I
    .param p2, "localVersionName"    # Ljava/lang/String;
    .param p3, "xmlPath"    # Ljava/lang/String;
    .param p4, "url"    # Ljava/lang/String;

    .prologue
    .line 55
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, p3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 56
    .local v5, "file":Ljava/io/File;
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v9

    if-eqz v9, :cond_0

    .line 57
    invoke-virtual {v5}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v6

    .line 58
    .local v6, "files":[Ljava/io/File;
    array-length v10, v6

    const/4 v9, 0x0

    :goto_0
    if-lt v9, v10, :cond_2

    .line 63
    .end local v6    # "files":[Ljava/io/File;
    :cond_0
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-static {p3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v10, "/app_update.xml"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    .line 64
    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "http://www.voogle.cn:12380/checkVersion"

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    iput-object v9, p0, Lcom/pubinfo/freewifialliance/update/AWingUpdater;->UPDATE_XMLPATH2:Ljava/lang/String;

    .line 65
    iget-object v9, p0, Lcom/pubinfo/freewifialliance/update/AWingUpdater;->UPDATE_XMLPATH2:Ljava/lang/String;

    const/4 v10, 0x0

    invoke-direct {p0, v9, p3, v10}, Lcom/pubinfo/freewifialliance/update/AWingUpdater;->downloadServerFile(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p3

    .line 67
    const/4 v8, 0x0

    .line 69
    .local v8, "result":I
    if-eqz p3, :cond_1

    const-string v9, ""

    invoke-virtual {p3, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 70
    :cond_1
    iget-object v9, p0, Lcom/pubinfo/freewifialliance/update/AWingUpdater;->mHandler:Landroid/os/Handler;

    const v10, 0xabcd006

    invoke-virtual {v9, v10}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 71
    const/4 v8, 0x2

    .line 134
    .end local v8    # "result":I
    :goto_1
    return v8

    .line 58
    .restart local v6    # "files":[Ljava/io/File;
    :cond_2
    aget-object v4, v6, v9

    .line 59
    .local v4, "f":Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    .line 58
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 74
    .end local v4    # "f":Ljava/io/File;
    .end local v6    # "files":[Ljava/io/File;
    .restart local v8    # "result":I
    :cond_3
    invoke-direct {p0, p3}, Lcom/pubinfo/freewifialliance/update/AWingUpdater;->xmlParse(Ljava/lang/String;)Lcom/pubinfo/freewifialliance/update/AWingUpdater$AppUpdateInfo;

    move-result-object v0

    .line 75
    .local v0, "appInfo":Lcom/pubinfo/freewifialliance/update/AWingUpdater$AppUpdateInfo;
    if-nez v0, :cond_4

    .line 76
    iget-object v9, p0, Lcom/pubinfo/freewifialliance/update/AWingUpdater;->mHandler:Landroid/os/Handler;

    const v10, 0xabcd006

    invoke-virtual {v9, v10}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 77
    const/4 v8, 0x2

    goto :goto_1

    .line 79
    :cond_4
    invoke-virtual {v0}, Lcom/pubinfo/freewifialliance/update/AWingUpdater$AppUpdateInfo;->getVersionCode()I

    move-result v9

    if-gt v9, p1, :cond_5

    .line 80
    iget-object v9, p0, Lcom/pubinfo/freewifialliance/update/AWingUpdater;->mHandler:Landroid/os/Handler;

    const v10, 0xabcd006

    invoke-virtual {v9, v10}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 81
    const/4 v8, 0x1

    goto :goto_1

    .line 84
    :cond_5
    new-instance v7, Landroid/os/Message;

    invoke-direct {v7}, Landroid/os/Message;-><init>()V

    .line 85
    .local v7, "msg":Landroid/os/Message;
    const v9, 0xabcd00a

    iput v9, v7, Landroid/os/Message;->what:I

    .line 86
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 87
    .local v1, "bundle":Landroid/os/Bundle;
    const-string v9, "introfomation"

    invoke-virtual {v0}, Lcom/pubinfo/freewifialliance/update/AWingUpdater$AppUpdateInfo;->getAppIntro()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v1, v9, v10}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    const-string v9, "downloadUrl"

    invoke-virtual {v0}, Lcom/pubinfo/freewifialliance/update/AWingUpdater$AppUpdateInfo;->getDownloadUrl()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v1, v9, v10}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    const-string v9, "update_grade"

    invoke-virtual {v0}, Lcom/pubinfo/freewifialliance/update/AWingUpdater$AppUpdateInfo;->getUpdateGrade()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v1, v9, v10}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    const-string v9, "version_name"

    invoke-virtual {v0}, Lcom/pubinfo/freewifialliance/update/AWingUpdater$AppUpdateInfo;->getVersionName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v1, v9, v10}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    const-string v9, "version_code"

    invoke-virtual {v0}, Lcom/pubinfo/freewifialliance/update/AWingUpdater$AppUpdateInfo;->getVersionCode()I

    move-result v10

    invoke-virtual {v1, v9, v10}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 92
    invoke-virtual {v7, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 93
    iget-object v9, p0, Lcom/pubinfo/freewifialliance/update/AWingUpdater;->mHandler:Landroid/os/Handler;

    invoke-virtual {v9, v7}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 94
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    .line 95
    .local v2, "curThread":Ljava/lang/Thread;
    monitor-enter v2

    .line 97
    :try_start_0
    invoke-virtual {v2}, Ljava/lang/Object;->wait()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 95
    :goto_2
    :try_start_1
    monitor-exit v2

    goto :goto_1

    :catchall_0
    move-exception v9

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v9

    .line 98
    :catch_0
    move-exception v3

    .line 99
    .local v3, "e":Ljava/lang/InterruptedException;
    :try_start_2
    invoke-virtual {v3}, Ljava/lang/InterruptedException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2
.end method

.method public setIsGoOn(Z)V
    .locals 0
    .param p1, "isGo"    # Z

    .prologue
    .line 241
    iput-boolean p1, p0, Lcom/pubinfo/freewifialliance/update/AWingUpdater;->mIsGoOn:Z

    .line 242
    return-void
.end method

.method public setIsToEnd(Z)V
    .locals 0
    .param p1, "isEnd"    # Z

    .prologue
    .line 245
    iput-boolean p1, p0, Lcom/pubinfo/freewifialliance/update/AWingUpdater;->mIsToEnd:Z

    .line 246
    return-void
.end method
