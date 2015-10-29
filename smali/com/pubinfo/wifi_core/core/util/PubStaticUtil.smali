.class public Lcom/pubinfo/wifi_core/core/util/PubStaticUtil;
.super Ljava/lang/Object;
.source "PubStaticUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pubinfo/wifi_core/core/util/PubStaticUtil$APNPARAMS;
    }
.end annotation


# static fields
.field private static final ALLRAPN_URI:Landroid/net/Uri;

.field private static final GETGPSINFO_URL:Ljava/lang/String; = "http://www.voogle.cn:12380/httpgps.do"

.field private static final GETPHONENUM_URL:Ljava/lang/String; = "http://www.voogle.cn:12380/httphead.do?type=9001&param="

.field private static final PREFERAPN_URI:Landroid/net/Uri;

.field private static count:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 47
    const-string v0, "content://telephony/carriers/preferapn"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/pubinfo/wifi_core/core/util/PubStaticUtil;->PREFERAPN_URI:Landroid/net/Uri;

    .line 48
    const-string v0, "content://telephony/carriers"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/pubinfo/wifi_core/core/util/PubStaticUtil;->ALLRAPN_URI:Landroid/net/Uri;

    .line 208
    const/4 v0, 0x0

    sput v0, Lcom/pubinfo/wifi_core/core/util/PubStaticUtil;->count:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static finishApp(Landroid/app/Activity;)V
    .locals 4
    .param p0, "activity"    # Landroid/app/Activity;

    .prologue
    .line 317
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/pubinfo/wifi_core/R$string;->app_name:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 318
    .local v0, "appName":Ljava/lang/String;
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v2, "\u63d0\u793a"

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 319
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "\u662f\u5426\u786e\u5b9a\u9000\u51fa"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\uff1f"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 320
    const-string v2, "\u53d6\u6d88"

    new-instance v3, Lcom/pubinfo/wifi_core/core/util/PubStaticUtil$1;

    invoke-direct {v3}, Lcom/pubinfo/wifi_core/core/util/PubStaticUtil$1;-><init>()V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 326
    const-string v2, "\u786e\u5b9a"

    new-instance v3, Lcom/pubinfo/wifi_core/core/util/PubStaticUtil$2;

    invoke-direct {v3, p0}, Lcom/pubinfo/wifi_core/core/util/PubStaticUtil$2;-><init>(Landroid/app/Activity;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 332
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 333
    return-void
.end method

.method public static getApnCode(Landroid/app/Activity;)Ljava/lang/String;
    .locals 15
    .param p0, "activity"    # Landroid/app/Activity;

    .prologue
    const/4 v4, 0x1

    const/4 v2, 0x0

    .line 68
    const-string v6, "nomatch"

    .line 70
    .local v6, "apn_type":Ljava/lang/String;
    const-string v1, "connectivity"

    invoke-virtual {p0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/net/ConnectivityManager;

    .line 71
    .local v8, "cm":Landroid/net/ConnectivityManager;
    invoke-virtual {v8, v4}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v11

    .line 72
    .local v11, "ni":Landroid/net/NetworkInfo;
    if-eqz v11, :cond_0

    invoke-virtual {v11}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 73
    const-string v1, "WIFI"

    .line 140
    :goto_0
    return-object v1

    .line 76
    :cond_0
    const-string v1, "phone"

    invoke-virtual {p0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/telephony/TelephonyManager;

    .line 78
    .local v13, "tm":Landroid/telephony/TelephonyManager;
    invoke-virtual {v13}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result v12

    .line 79
    .local v12, "phone_type":I
    const/4 v9, 0x0

    .line 80
    .local v9, "cursor":Landroid/database/Cursor;
    invoke-virtual {p0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 101
    .local v0, "c_resolver":Landroid/content/ContentResolver;
    packed-switch v12, :pswitch_data_0

    .line 117
    :goto_1
    :pswitch_0
    if-eqz v9, :cond_1

    invoke-interface {v9}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_1

    .line 118
    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    .line 119
    const-string v1, "proxy"

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v10

    .line 120
    .local v10, "index":I
    invoke-interface {v9, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 121
    .local v7, "apntype":Ljava/lang/String;
    const-string v1, "PubStaticUtil"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "apntype="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    const-string v1, "10.0.0.200"

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 124
    const-string v6, "ctwap"

    .line 136
    .end local v7    # "apntype":Ljava/lang/String;
    .end local v10    # "index":I
    :cond_1
    :goto_2
    if-eqz v9, :cond_2

    .line 137
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    :cond_2
    move-object v1, v6

    .line 140
    goto :goto_0

    .line 103
    :pswitch_1
    sget-object v1, Lcom/pubinfo/wifi_core/core/util/PubStaticUtil;->PREFERAPN_URI:Landroid/net/Uri;

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 105
    goto :goto_1

    .line 107
    :pswitch_2
    sget-object v1, Lcom/pubinfo/wifi_core/core/util/PubStaticUtil;->PREFERAPN_URI:Landroid/net/Uri;

    .line 108
    const-string v3, "current=?"

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v14, "1"

    aput-object v14, v4, v5

    move-object v5, v2

    .line 107
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 109
    goto :goto_1

    .line 126
    .restart local v7    # "apntype":Ljava/lang/String;
    .restart local v10    # "index":I
    :cond_3
    const-string v1, "10.0.0.172"

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 128
    const-string v6, "nomatch"

    .line 129
    goto :goto_2

    .line 130
    :cond_4
    const-string v1, "ctnet"

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 131
    const-string v6, "ctnet"

    .line 132
    goto :goto_2

    .line 133
    :cond_5
    const-string v6, "nomatch"

    goto :goto_2

    .line 101
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method private static getElementValue(Lorg/w3c/dom/Element;Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p0, "parentElement"    # Lorg/w3c/dom/Element;
    .param p1, "tag"    # Ljava/lang/String;

    .prologue
    .line 296
    const-string v1, ""

    .line 297
    .local v1, "value":Ljava/lang/String;
    if-nez p0, :cond_0

    move-object v2, v1

    .line 308
    .end local v1    # "value":Ljava/lang/String;
    .local v2, "value":Ljava/lang/String;
    :goto_0
    return-object v2

    .line 301
    .end local v2    # "value":Ljava/lang/String;
    .restart local v1    # "value":Ljava/lang/String;
    :cond_0
    invoke-interface {p0, p1}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v3

    const/4 v4, 0x0

    invoke-interface {v3, v4}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v0

    check-cast v0, Lorg/w3c/dom/Element;

    .line 302
    .local v0, "element":Lorg/w3c/dom/Element;
    if-eqz v0, :cond_1

    invoke-interface {v0}, Lorg/w3c/dom/Element;->hasChildNodes()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 303
    invoke-interface {v0}, Lorg/w3c/dom/Element;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v3

    invoke-interface {v3}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    :goto_1
    move-object v2, v1

    .line 308
    .end local v1    # "value":Ljava/lang/String;
    .restart local v2    # "value":Ljava/lang/String;
    goto :goto_0

    .line 305
    .end local v2    # "value":Ljava/lang/String;
    .restart local v1    # "value":Ljava/lang/String;
    :cond_1
    const-string v1, "noTagValue"

    goto :goto_1
.end method

.method public static getGpsInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 16
    .param p0, "bid"    # Ljava/lang/String;
    .param p1, "nid"    # Ljava/lang/String;
    .param p2, "sid"    # Ljava/lang/String;
    .param p3, "imei"    # Ljava/lang/String;
    .param p4, "imsi"    # Ljava/lang/String;
    .param p5, "radio"    # Ljava/lang/String;

    .prologue
    .line 337
    new-instance v11, Ljava/lang/StringBuffer;

    invoke-direct {v11}, Ljava/lang/StringBuffer;-><init>()V

    .line 339
    .local v11, "sb_result":Ljava/lang/StringBuffer;
    const/4 v4, 0x0

    .line 341
    .local v4, "conn":Ljava/net/HttpURLConnection;
    :try_start_0
    new-instance v13, Ljava/net/URL;

    const-string v14, "http://www.voogle.cn:12380/httpgps.do"

    invoke-direct {v13, v14}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 342
    .local v13, "url":Ljava/net/URL;
    invoke-virtual {v13}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v14

    move-object v0, v14

    check-cast v0, Ljava/net/HttpURLConnection;

    move-object v4, v0

    .line 343
    const/16 v14, 0x2710

    invoke-virtual {v4, v14}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 344
    const/16 v14, 0x2710

    invoke-virtual {v4, v14}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 345
    const-string v14, "POST"

    invoke-virtual {v4, v14}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 346
    const-string v14, "User-Agent"

    const-string v15, "com.pubinfo"

    invoke-virtual {v4, v14, v15}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 348
    new-instance v10, Ljava/lang/StringBuffer;

    invoke-direct {v10}, Ljava/lang/StringBuffer;-><init>()V

    .line 350
    .local v10, "sb_params":Ljava/lang/StringBuffer;
    const-string v14, "BID="

    invoke-virtual {v10, v14}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 351
    move-object/from16 v0, p0

    invoke-virtual {v10, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 352
    const-string v14, "&NID="

    invoke-virtual {v10, v14}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 353
    move-object/from16 v0, p1

    invoke-virtual {v10, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 354
    const-string v14, "&SID="

    invoke-virtual {v10, v14}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 355
    move-object/from16 v0, p2

    invoke-virtual {v10, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 356
    const-string v14, "&IMEI="

    invoke-virtual {v10, v14}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 357
    move-object/from16 v0, p3

    invoke-virtual {v10, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 358
    const-string v14, "&IMSI="

    invoke-virtual {v10, v14}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 359
    move-object/from16 v0, p4

    invoke-virtual {v10, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 360
    const-string v14, "&radio="

    invoke-virtual {v10, v14}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 361
    move-object/from16 v0, p5

    invoke-virtual {v10, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 363
    const/4 v14, 0x1

    invoke-virtual {v4, v14}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 364
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v7

    .line 365
    .local v7, "output":Ljava/io/OutputStream;
    new-instance v8, Ljava/io/OutputStreamWriter;

    const-string v14, "utf-8"

    invoke-direct {v8, v7, v14}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 366
    .local v8, "ow":Ljava/io/OutputStreamWriter;
    invoke-virtual {v10}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v8, v14}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    .line 367
    invoke-virtual {v8}, Ljava/io/OutputStreamWriter;->flush()V

    .line 368
    invoke-virtual {v8}, Ljava/io/OutputStreamWriter;->close()V

    .line 370
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v6

    .line 371
    .local v6, "input":Ljava/io/InputStream;
    invoke-virtual {v6}, Ljava/io/InputStream;->available()I

    move-result v1

    .line 372
    .local v1, "all":I
    const/16 v3, 0x2800

    .line 373
    .local v3, "buf_count":I
    if-ge v1, v3, :cond_1

    .line 374
    :goto_0
    new-array v2, v1, [B

    .line 375
    .local v2, "buf":[B
    const/4 v9, 0x0

    .line 376
    .local v9, "read":I
    :goto_1
    invoke-virtual {v6, v2}, Ljava/io/InputStream;->read([B)I

    move-result v9

    const/4 v14, -0x1

    if-ne v9, v14, :cond_2

    .line 380
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 385
    if-eqz v4, :cond_0

    .line 386
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 390
    .end local v1    # "all":I
    .end local v2    # "buf":[B
    .end local v3    # "buf_count":I
    .end local v6    # "input":Ljava/io/InputStream;
    .end local v7    # "output":Ljava/io/OutputStream;
    .end local v8    # "ow":Ljava/io/OutputStreamWriter;
    .end local v9    # "read":I
    .end local v10    # "sb_params":Ljava/lang/StringBuffer;
    .end local v13    # "url":Ljava/net/URL;
    :cond_0
    :goto_2
    invoke-virtual {v11}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v14

    return-object v14

    .restart local v1    # "all":I
    .restart local v3    # "buf_count":I
    .restart local v6    # "input":Ljava/io/InputStream;
    .restart local v7    # "output":Ljava/io/OutputStream;
    .restart local v8    # "ow":Ljava/io/OutputStreamWriter;
    .restart local v10    # "sb_params":Ljava/lang/StringBuffer;
    .restart local v13    # "url":Ljava/net/URL;
    :cond_1
    move v1, v3

    .line 373
    goto :goto_0

    .line 377
    .restart local v2    # "buf":[B
    .restart local v9    # "read":I
    :cond_2
    :try_start_1
    new-instance v12, Ljava/lang/String;

    const/4 v14, 0x0

    invoke-direct {v12, v2, v14, v9}, Ljava/lang/String;-><init>([BII)V

    .line 378
    .local v12, "str":Ljava/lang/String;
    invoke-virtual {v11, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 382
    .end local v1    # "all":I
    .end local v2    # "buf":[B
    .end local v3    # "buf_count":I
    .end local v6    # "input":Ljava/io/InputStream;
    .end local v7    # "output":Ljava/io/OutputStream;
    .end local v8    # "ow":Ljava/io/OutputStreamWriter;
    .end local v9    # "read":I
    .end local v10    # "sb_params":Ljava/lang/StringBuffer;
    .end local v12    # "str":Ljava/lang/String;
    .end local v13    # "url":Ljava/net/URL;
    :catch_0
    move-exception v5

    .line 383
    .local v5, "e":Ljava/io/IOException;
    :try_start_2
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 385
    if-eqz v4, :cond_0

    .line 386
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->disconnect()V

    goto :goto_2

    .line 384
    .end local v5    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v14

    .line 385
    if-eqz v4, :cond_3

    .line 386
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 388
    :cond_3
    throw v14
.end method

.method public static getLocalPhoneNum(Landroid/app/Activity;)Landroid/os/Bundle;
    .locals 19
    .param p0, "activity"    # Landroid/app/Activity;

    .prologue
    .line 210
    const/4 v4, 0x0

    .line 212
    .local v4, "bundle":Landroid/os/Bundle;
    invoke-static/range {p0 .. p0}, Lcom/pubinfo/wifi_core/core/util/PubStaticUtil;->getApnCode(Landroid/app/Activity;)Ljava/lang/String;

    move-result-object v1

    .line 213
    .local v1, "apntype":Ljava/lang/String;
    const-string v15, "nomatch"

    invoke-virtual {v1, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_0

    move-object v5, v4

    .line 268
    .end local v4    # "bundle":Landroid/os/Bundle;
    .local v5, "bundle":Landroid/os/Bundle;
    :goto_0
    return-object v5

    .line 217
    .end local v5    # "bundle":Landroid/os/Bundle;
    .restart local v4    # "bundle":Landroid/os/Bundle;
    :cond_0
    const-string v15, "ctnet"

    invoke-virtual {v15, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_2

    .line 218
    const-string v15, "ctwap"

    move-object/from16 v0, p0

    invoke-static {v0, v15}, Lcom/pubinfo/wifi_core/core/util/PubStaticUtil;->updateApnCode(Landroid/app/Activity;Ljava/lang/String;)Z

    move-result v2

    .line 219
    .local v2, "bool":Z
    if-nez v2, :cond_1

    move-object v5, v4

    .line 220
    .end local v4    # "bundle":Landroid/os/Bundle;
    .restart local v5    # "bundle":Landroid/os/Bundle;
    goto :goto_0

    .line 224
    .end local v5    # "bundle":Landroid/os/Bundle;
    .restart local v4    # "bundle":Landroid/os/Bundle;
    :cond_1
    const-wide/16 v15, 0x5dc

    :try_start_0
    invoke-static/range {v15 .. v16}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 230
    .end local v2    # "bool":Z
    :cond_2
    :goto_1
    const/4 v6, 0x0

    .line 232
    .local v6, "conn":Ljava/net/HttpURLConnection;
    :try_start_1
    new-instance v14, Ljava/net/URL;

    const-string v15, "http://www.voogle.cn:12380/httphead.do?type=9001&param="

    invoke-direct {v14, v15}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 233
    .local v14, "url":Ljava/net/URL;
    new-instance v10, Ljava/net/Proxy;

    sget-object v15, Ljava/net/Proxy$Type;->HTTP:Ljava/net/Proxy$Type;

    new-instance v16, Ljava/net/InetSocketAddress;

    const-string v17, "10.0.0.200"

    const/16 v18, 0x50

    invoke-direct/range {v16 .. v18}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    move-object/from16 v0, v16

    invoke-direct {v10, v15, v0}, Ljava/net/Proxy;-><init>(Ljava/net/Proxy$Type;Ljava/net/SocketAddress;)V

    .line 234
    .local v10, "proxy":Ljava/net/Proxy;
    invoke-virtual {v14, v10}, Ljava/net/URL;->openConnection(Ljava/net/Proxy;)Ljava/net/URLConnection;

    move-result-object v15

    move-object v0, v15

    check-cast v0, Ljava/net/HttpURLConnection;

    move-object v6, v0

    .line 235
    const/16 v15, 0x2710

    invoke-virtual {v6, v15}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 236
    const/16 v15, 0x2710

    invoke-virtual {v6, v15}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 237
    const-string v15, "GET"

    invoke-virtual {v6, v15}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 238
    const-string v15, "User-Agent"

    const-string v16, "com.pubinfo"

    move-object/from16 v0, v16

    invoke-virtual {v6, v15, v0}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 239
    const/4 v15, 0x1

    invoke-virtual {v6, v15}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    .line 241
    invoke-virtual {v6}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v9

    .line 242
    .local v9, "input":Ljava/io/InputStream;
    const/16 v15, 0x2800

    new-array v3, v15, [B

    .line 243
    .local v3, "buf":[B
    const/4 v11, 0x0

    .line 244
    .local v11, "read":I
    new-instance v12, Ljava/lang/StringBuffer;

    invoke-direct {v12}, Ljava/lang/StringBuffer;-><init>()V

    .line 245
    .local v12, "sb":Ljava/lang/StringBuffer;
    :goto_2
    invoke-virtual {v9, v3}, Ljava/io/InputStream;->read([B)I

    move-result v11

    const/4 v15, -0x1

    if-ne v11, v15, :cond_4

    .line 249
    invoke-virtual {v12}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    .line 250
    .local v7, "content":Ljava/lang/String;
    invoke-static {v7}, Lcom/pubinfo/wifi_core/core/util/PubStaticUtil;->parsePhone(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v4

    .line 251
    const/4 v15, 0x0

    sput v15, Lcom/pubinfo/wifi_core/core/util/PubStaticUtil;->count:I
    :try_end_1
    .catch Ljava/net/SocketTimeoutException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 263
    if-eqz v6, :cond_3

    .line 264
    invoke-virtual {v6}, Ljava/net/HttpURLConnection;->disconnect()V

    .end local v3    # "buf":[B
    .end local v7    # "content":Ljava/lang/String;
    .end local v9    # "input":Ljava/io/InputStream;
    .end local v10    # "proxy":Ljava/net/Proxy;
    .end local v11    # "read":I
    .end local v12    # "sb":Ljava/lang/StringBuffer;
    .end local v14    # "url":Ljava/net/URL;
    :cond_3
    :goto_3
    move-object v5, v4

    .line 268
    .end local v4    # "bundle":Landroid/os/Bundle;
    .restart local v5    # "bundle":Landroid/os/Bundle;
    goto :goto_0

    .line 225
    .end local v5    # "bundle":Landroid/os/Bundle;
    .end local v6    # "conn":Ljava/net/HttpURLConnection;
    .restart local v2    # "bool":Z
    .restart local v4    # "bundle":Landroid/os/Bundle;
    :catch_0
    move-exception v8

    .line 226
    .local v8, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v8}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_1

    .line 246
    .end local v2    # "bool":Z
    .end local v8    # "e":Ljava/lang/InterruptedException;
    .restart local v3    # "buf":[B
    .restart local v6    # "conn":Ljava/net/HttpURLConnection;
    .restart local v9    # "input":Ljava/io/InputStream;
    .restart local v10    # "proxy":Ljava/net/Proxy;
    .restart local v11    # "read":I
    .restart local v12    # "sb":Ljava/lang/StringBuffer;
    .restart local v14    # "url":Ljava/net/URL;
    :cond_4
    :try_start_2
    new-instance v13, Ljava/lang/String;

    const/4 v15, 0x0

    invoke-direct {v13, v3, v15, v11}, Ljava/lang/String;-><init>([BII)V

    .line 247
    .local v13, "str":Ljava/lang/String;
    invoke-virtual {v12, v13}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_2
    .catch Ljava/net/SocketTimeoutException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2

    .line 252
    .end local v3    # "buf":[B
    .end local v9    # "input":Ljava/io/InputStream;
    .end local v10    # "proxy":Ljava/net/Proxy;
    .end local v11    # "read":I
    .end local v12    # "sb":Ljava/lang/StringBuffer;
    .end local v13    # "str":Ljava/lang/String;
    .end local v14    # "url":Ljava/net/URL;
    :catch_1
    move-exception v8

    .line 253
    .local v8, "e":Ljava/net/SocketTimeoutException;
    :try_start_3
    sget v15, Lcom/pubinfo/wifi_core/core/util/PubStaticUtil;->count:I

    const/16 v16, 0x2

    move/from16 v0, v16

    if-ge v15, v0, :cond_5

    .line 254
    sget v15, Lcom/pubinfo/wifi_core/core/util/PubStaticUtil;->count:I

    add-int/lit8 v15, v15, 0x1

    sput v15, Lcom/pubinfo/wifi_core/core/util/PubStaticUtil;->count:I

    .line 255
    invoke-static/range {p0 .. p0}, Lcom/pubinfo/wifi_core/core/util/PubStaticUtil;->getLocalPhoneNum(Landroid/app/Activity;)Landroid/os/Bundle;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 263
    :goto_4
    if-eqz v6, :cond_3

    .line 264
    invoke-virtual {v6}, Ljava/net/HttpURLConnection;->disconnect()V

    goto :goto_3

    .line 258
    :cond_5
    const/4 v15, 0x0

    :try_start_4
    sput v15, Lcom/pubinfo/wifi_core/core/util/PubStaticUtil;->count:I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_4

    .line 262
    .end local v8    # "e":Ljava/net/SocketTimeoutException;
    :catchall_0
    move-exception v15

    .line 263
    if-eqz v6, :cond_6

    .line 264
    invoke-virtual {v6}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 266
    :cond_6
    throw v15

    .line 260
    :catch_2
    move-exception v8

    .line 261
    .local v8, "e":Ljava/io/IOException;
    :try_start_5
    invoke-virtual {v8}, Ljava/io/IOException;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 263
    if-eqz v6, :cond_3

    .line 264
    invoke-virtual {v6}, Ljava/net/HttpURLConnection;->disconnect()V

    goto :goto_3
.end method

.method public static isMobileNO(Ljava/lang/String;)Z
    .locals 3
    .param p0, "mobiles"    # Ljava/lang/String;

    .prologue
    .line 515
    const-string v2, "^((13[0-9])|(15[^4,\\D])|(18[0,5-9]))\\d{8}$"

    invoke-static {v2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    .line 516
    .local v1, "p":Ljava/util/regex/Pattern;
    invoke-virtual {v1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 518
    .local v0, "m":Ljava/util/regex/Matcher;
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v2

    return v2
.end method

.method public static parseData(Ljava/lang/String;)[Ljava/lang/String;
    .locals 9
    .param p0, "data"    # Ljava/lang/String;

    .prologue
    .line 394
    const/4 v6, 0x5

    new-array v4, v6, [Ljava/lang/String;

    .line 396
    .local v4, "result":[Ljava/lang/String;
    :try_start_0
    new-instance v0, Ljava/io/ByteArrayInputStream;

    const-string v6, "utf-8"

    invoke-virtual {p0, v6}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v6

    invoke-direct {v0, v6}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 397
    .local v0, "byte_input":Ljava/io/ByteArrayInputStream;
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v6

    invoke-virtual {v6}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v2

    .line 398
    .local v2, "docBuilder":Ljavax/xml/parsers/DocumentBuilder;
    invoke-virtual {v2, v0}, Ljavax/xml/parsers/DocumentBuilder;->parse(Ljava/io/InputStream;)Lorg/w3c/dom/Document;

    move-result-object v1

    .line 399
    .local v1, "doc":Lorg/w3c/dom/Document;
    invoke-interface {v1}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;

    move-result-object v5

    .line 400
    .local v5, "rootElement":Lorg/w3c/dom/Element;
    const/4 v6, 0x0

    const-string v7, "imsi"

    invoke-interface {v5, v7}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v7

    .line 401
    const/4 v8, 0x0

    invoke-interface {v7, v8}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v7

    invoke-interface {v7}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v7

    invoke-interface {v7}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v7

    .line 400
    aput-object v7, v4, v6

    .line 402
    const/4 v6, 0x1

    const-string v7, "longtude"

    invoke-interface {v5, v7}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v7

    .line 403
    const/4 v8, 0x0

    invoke-interface {v7, v8}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v7

    invoke-interface {v7}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v7

    invoke-interface {v7}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v7

    .line 402
    aput-object v7, v4, v6

    .line 404
    const/4 v6, 0x2

    const-string v7, "latitude"

    invoke-interface {v5, v7}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v7

    .line 405
    const/4 v8, 0x0

    invoke-interface {v7, v8}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v7

    invoke-interface {v7}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v7

    invoke-interface {v7}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v7

    .line 404
    aput-object v7, v4, v6

    .line 406
    const/4 v6, 0x3

    const-string v7, "city"

    invoke-interface {v5, v7}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v7

    .line 407
    const/4 v8, 0x0

    invoke-interface {v7, v8}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v7

    invoke-interface {v7}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v7

    invoke-interface {v7}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v7

    .line 406
    aput-object v7, v4, v6

    .line 408
    const/4 v6, 0x4

    const-string v7, "street"

    invoke-interface {v5, v7}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v7

    .line 409
    const/4 v8, 0x0

    invoke-interface {v7, v8}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v7

    invoke-interface {v7}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v7

    invoke-interface {v7}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v7

    .line 408
    aput-object v7, v4, v6
    :try_end_0
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljavax/xml/parsers/FactoryConfigurationError; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3

    .line 420
    .end local v0    # "byte_input":Ljava/io/ByteArrayInputStream;
    .end local v1    # "doc":Lorg/w3c/dom/Document;
    .end local v2    # "docBuilder":Ljavax/xml/parsers/DocumentBuilder;
    .end local v5    # "rootElement":Lorg/w3c/dom/Element;
    :goto_0
    return-object v4

    .line 410
    :catch_0
    move-exception v3

    .line 411
    .local v3, "e":Ljavax/xml/parsers/ParserConfigurationException;
    invoke-virtual {v3}, Ljavax/xml/parsers/ParserConfigurationException;->printStackTrace()V

    goto :goto_0

    .line 412
    .end local v3    # "e":Ljavax/xml/parsers/ParserConfigurationException;
    :catch_1
    move-exception v3

    .line 413
    .local v3, "e":Ljavax/xml/parsers/FactoryConfigurationError;
    invoke-virtual {v3}, Ljavax/xml/parsers/FactoryConfigurationError;->printStackTrace()V

    goto :goto_0

    .line 414
    .end local v3    # "e":Ljavax/xml/parsers/FactoryConfigurationError;
    :catch_2
    move-exception v3

    .line 415
    .local v3, "e":Lorg/xml/sax/SAXException;
    invoke-virtual {v3}, Lorg/xml/sax/SAXException;->printStackTrace()V

    goto :goto_0

    .line 416
    .end local v3    # "e":Lorg/xml/sax/SAXException;
    :catch_3
    move-exception v3

    .line 417
    .local v3, "e":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method private static parsePhone(Ljava/lang/String;)Landroid/os/Bundle;
    .locals 11
    .param p0, "content"    # Ljava/lang/String;

    .prologue
    .line 272
    const-string v9, "&lt;br&gt;"

    const-string v10, "\n"

    invoke-virtual {p0, v9, v10}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 274
    const/4 v8, 0x0

    .line 276
    .local v8, "rootElement":Lorg/w3c/dom/Element;
    :try_start_0
    new-instance v5, Ljava/io/ByteArrayInputStream;

    const-string v9, "UTF-8"

    invoke-virtual {p0, v9}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v9

    invoke-direct {v5, v9}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 277
    .local v5, "inStream":Ljava/io/InputStream;
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v3

    .line 278
    .local v3, "docFactory":Ljavax/xml/parsers/DocumentBuilderFactory;
    invoke-virtual {v3}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v2

    .line 279
    .local v2, "docBuilder":Ljavax/xml/parsers/DocumentBuilder;
    invoke-virtual {v2, v5}, Ljavax/xml/parsers/DocumentBuilder;->parse(Ljava/io/InputStream;)Lorg/w3c/dom/Document;

    move-result-object v1

    .line 280
    .local v1, "doc":Lorg/w3c/dom/Document;
    invoke-interface {v1}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v8

    .line 285
    .end local v1    # "doc":Lorg/w3c/dom/Document;
    .end local v2    # "docBuilder":Ljavax/xml/parsers/DocumentBuilder;
    .end local v3    # "docFactory":Ljavax/xml/parsers/DocumentBuilderFactory;
    .end local v5    # "inStream":Ljava/io/InputStream;
    :goto_0
    const-string v9, "phone"

    invoke-static {v8, v9}, Lcom/pubinfo/wifi_core/core/util/PubStaticUtil;->getElementValue(Lorg/w3c/dom/Element;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 286
    .local v7, "phone":Ljava/lang/String;
    const-string v9, "radiotype"

    invoke-static {v8, v9}, Lcom/pubinfo/wifi_core/core/util/PubStaticUtil;->getElementValue(Lorg/w3c/dom/Element;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 288
    .local v0, "cdma":Ljava/lang/String;
    new-instance v6, Landroid/os/Bundle;

    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    .line 289
    .local v6, "map":Landroid/os/Bundle;
    const-string v9, "Phone"

    invoke-virtual {v6, v9, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 290
    const-string v9, "Radiotype"

    invoke-virtual {v6, v9, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 292
    return-object v6

    .line 281
    .end local v0    # "cdma":Ljava/lang/String;
    .end local v6    # "map":Landroid/os/Bundle;
    .end local v7    # "phone":Ljava/lang/String;
    :catch_0
    move-exception v4

    .line 282
    .local v4, "e":Ljava/lang/Exception;
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static showCustomDialog(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Landroid/view/View;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V
    .locals 4
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "msg"    # Ljava/lang/String;
    .param p3, "textEntryView"    # Landroid/view/View;
    .param p4, "btntext"    # Ljava/lang/String;
    .param p5, "onClick"    # Landroid/content/DialogInterface$OnClickListener;

    .prologue
    const/4 v3, 0x0

    .line 491
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 492
    .local v0, "b":Landroid/app/AlertDialog$Builder;
    new-instance v1, Landroid/widget/TextView;

    invoke-direct {v1, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 493
    .local v1, "tv":Landroid/widget/TextView;
    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 494
    const/16 v2, 0x51

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setGravity(I)V

    .line 495
    const/high16 v2, 0x41900000    # 18.0f

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextSize(F)V

    .line 496
    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 497
    const/16 v2, 0xa

    invoke-virtual {v1, v3, v2, v3, v3}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 498
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCustomTitle(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 500
    invoke-virtual {v0, p2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 501
    invoke-virtual {v0, p3}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 502
    invoke-virtual {v0, p4, p5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 503
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 507
    return-void
.end method

.method public static showCustomDialog(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 4
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "msg"    # Ljava/lang/String;
    .param p3, "isFinish"    # Z

    .prologue
    const/4 v3, 0x0

    .line 469
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 470
    .local v0, "b":Landroid/app/AlertDialog$Builder;
    new-instance v1, Landroid/widget/TextView;

    invoke-direct {v1, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 471
    .local v1, "tv":Landroid/widget/TextView;
    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 472
    const/16 v2, 0x51

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setGravity(I)V

    .line 473
    const/high16 v2, 0x41900000    # 18.0f

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextSize(F)V

    .line 474
    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 475
    const/16 v2, 0xa

    invoke-virtual {v1, v3, v2, v3, v3}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 476
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCustomTitle(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 477
    invoke-virtual {v0, p2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 479
    const-string v2, "\u786e\u5b9a"

    new-instance v3, Lcom/pubinfo/wifi_core/core/util/PubStaticUtil$5;

    invoke-direct {v3, p3, p0}, Lcom/pubinfo/wifi_core/core/util/PubStaticUtil$5;-><init>(ZLandroid/app/Activity;)V

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 486
    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 487
    return-void
.end method

.method public static showDialog(Landroid/app/Activity;Ljava/lang/String;Z)V
    .locals 3
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "isFinish"    # Z

    .prologue
    .line 424
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v1, "\u63d0\u793a"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 425
    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 426
    const-string v1, "\u786e\u5b9a"

    new-instance v2, Lcom/pubinfo/wifi_core/core/util/PubStaticUtil$3;

    invoke-direct {v2, p2, p0}, Lcom/pubinfo/wifi_core/core/util/PubStaticUtil$3;-><init>(ZLandroid/app/Activity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 433
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 434
    return-void
.end method

.method public static showDialog2(Landroid/app/Activity;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V
    .locals 3
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "onClick"    # Landroid/content/DialogInterface$OnClickListener;

    .prologue
    .line 437
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v1, "\u63d0\u793a"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 438
    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 439
    const-string v1, "\u786e\u5b9a"

    invoke-virtual {v0, v1, p2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 440
    const-string v1, "\u53d6\u6d88"

    new-instance v2, Lcom/pubinfo/wifi_core/core/util/PubStaticUtil$4;

    invoke-direct {v2, p0}, Lcom/pubinfo/wifi_core/core/util/PubStaticUtil$4;-><init>(Landroid/app/Activity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 445
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 446
    return-void
.end method

.method public static showDialog3(Landroid/app/Activity;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V
    .locals 4
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "onClick"    # Landroid/content/DialogInterface$OnClickListener;

    .prologue
    const/4 v3, 0x0

    .line 451
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 452
    .local v0, "b":Landroid/app/AlertDialog$Builder;
    new-instance v1, Landroid/widget/TextView;

    invoke-direct {v1, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 453
    .local v1, "tv":Landroid/widget/TextView;
    const-string v2, "\u63d0\u793a\u4fe1\u606f"

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 454
    const/16 v2, 0x51

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setGravity(I)V

    .line 455
    const/high16 v2, 0x41900000    # 18.0f

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextSize(F)V

    .line 456
    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 457
    const/16 v2, 0xa

    invoke-virtual {v1, v3, v2, v3, v3}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 458
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCustomTitle(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 460
    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 461
    const-string v2, "\u786e\u5b9a"

    invoke-virtual {v0, v2, p2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 462
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 466
    return-void
.end method

.method public static updateApnCode(Landroid/app/Activity;Ljava/lang/String;)Z
    .locals 20
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "apnType"    # Ljava/lang/String;

    .prologue
    .line 144
    const/4 v15, 0x0

    .line 146
    .local v15, "result":Z
    const/4 v9, 0x0

    .line 147
    .local v9, "current":Ljava/lang/String;
    const-string v2, "phone"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Landroid/telephony/TelephonyManager;

    .line 148
    .local v17, "tm":Landroid/telephony/TelephonyManager;
    invoke-virtual/range {v17 .. v17}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    move-result v18

    .line 149
    .local v18, "type":I
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 150
    .local v1, "c_resolver":Landroid/content/ContentResolver;
    const/4 v10, 0x0

    .line 151
    .local v10, "cursor":Landroid/database/Cursor;
    packed-switch v18, :pswitch_data_0

    .line 169
    :goto_0
    if-nez v10, :cond_0

    move/from16 v16, v15

    .line 205
    .end local v15    # "result":Z
    .local v16, "result":I
    :goto_1
    return v16

    .line 156
    .end local v16    # "result":I
    .restart local v15    # "result":Z
    :pswitch_0
    sget-object v2, Lcom/pubinfo/wifi_core/core/util/PubStaticUtil;->ALLRAPN_URI:Landroid/net/Uri;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 157
    goto :goto_0

    .line 164
    :pswitch_1
    sget-object v2, Lcom/pubinfo/wifi_core/core/util/PubStaticUtil;->ALLRAPN_URI:Landroid/net/Uri;

    const/4 v3, 0x0

    const-string v4, "current=?"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v19, "1"

    aput-object v19, v5, v6

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 165
    goto :goto_0

    .line 173
    :cond_0
    const-string v8, ""

    .line 174
    .local v8, "apn_proxy":Ljava/lang/String;
    if-eqz p1, :cond_1

    const-string v2, "ctwap"

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "ctnet"

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    :cond_1
    move/from16 v16, v15

    .line 175
    .restart local v16    # "result":I
    goto :goto_1

    .line 177
    .end local v16    # "result":I
    :cond_2
    const-string v2, "ctwap"

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    if-nez v9, :cond_7

    .line 178
    const-string v8, "10.0.0.200"

    .line 183
    :cond_3
    :goto_2
    const-string v7, ""

    .line 184
    .local v7, "apn_id":Ljava/lang/String;
    invoke-interface {v10}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-lez v2, :cond_5

    .line 185
    :cond_4
    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-nez v2, :cond_8

    .line 194
    :cond_5
    :goto_3
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 196
    new-instance v11, Landroid/content/ContentValues;

    invoke-direct {v11}, Landroid/content/ContentValues;-><init>()V

    .line 197
    .local v11, "cv":Landroid/content/ContentValues;
    const-string v2, "apn_id"

    invoke-virtual {v11, v2, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 198
    if-eqz v7, :cond_6

    const-string v2, ""

    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    .line 199
    sget-object v2, Lcom/pubinfo/wifi_core/core/util/PubStaticUtil;->PREFERAPN_URI:Landroid/net/Uri;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v11, v3, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v13

    .line 200
    .local v13, "num":I
    if-lez v13, :cond_6

    .line 201
    const/4 v15, 0x1

    .end local v13    # "num":I
    :cond_6
    move/from16 v16, v15

    .line 205
    .restart local v16    # "result":I
    goto :goto_1

    .line 180
    .end local v7    # "apn_id":Ljava/lang/String;
    .end local v11    # "cv":Landroid/content/ContentValues;
    .end local v16    # "result":I
    :cond_7
    const-string v2, "ctwap"

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    const-string v2, "1"

    invoke-virtual {v9, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 181
    const-string v8, "10.0.0.172"

    goto :goto_2

    .line 186
    .restart local v7    # "apn_id":Ljava/lang/String;
    :cond_8
    const-string v2, "proxy"

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v12

    .line 187
    .local v12, "index":I
    invoke-interface {v10, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    .line 188
    .local v14, "proxy":Ljava/lang/String;
    invoke-virtual {v8, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 189
    const/4 v2, 0x0

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 190
    goto :goto_3

    .line 151
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method
