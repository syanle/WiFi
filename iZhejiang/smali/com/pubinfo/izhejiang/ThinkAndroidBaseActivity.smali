.class public Lcom/pubinfo/izhejiang/ThinkAndroidBaseActivity;
.super Landroid/app/Activity;
.source "ThinkAndroidBaseActivity.java"

# interfaces
.implements Lcom/cat/protocol/DoCheckNetWorkInterface;
.implements Lcom/cat/protocol/DoTimeDifferenceInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pubinfo/izhejiang/ThinkAndroidBaseActivity$MyThread;,
        Lcom/pubinfo/izhejiang/ThinkAndroidBaseActivity$Worker;
    }
.end annotation


# instance fields
.field protected iv_pageInnerLoading:Landroid/widget/ImageView;

.field protected ll_pageInnerLoading:Landroid/widget/LinearLayout;

.field protected msInnerLoadingAnim:Landroid/graphics/drawable/AnimationDrawable;

.field network_state:I

.field protected wifiMgr:Landroid/net/wifi/WifiManager;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 46
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 52
    iput-object v0, p0, Lcom/pubinfo/izhejiang/ThinkAndroidBaseActivity;->ll_pageInnerLoading:Landroid/widget/LinearLayout;

    .line 57
    iput-object v0, p0, Lcom/pubinfo/izhejiang/ThinkAndroidBaseActivity;->iv_pageInnerLoading:Landroid/widget/ImageView;

    .line 62
    iput-object v0, p0, Lcom/pubinfo/izhejiang/ThinkAndroidBaseActivity;->msInnerLoadingAnim:Landroid/graphics/drawable/AnimationDrawable;

    .line 64
    iput-object v0, p0, Lcom/pubinfo/izhejiang/ThinkAndroidBaseActivity;->wifiMgr:Landroid/net/wifi/WifiManager;

    .line 46
    return-void
.end method

.method public static FormatStackTrace(Ljava/lang/Throwable;)Ljava/lang/String;
    .locals 5
    .param p0, "throwable"    # Ljava/lang/Throwable;

    .prologue
    .line 123
    if-nez p0, :cond_0

    .line 124
    const-string v2, ""

    .line 139
    :goto_0
    return-object v2

    .line 125
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 127
    .local v2, "rtn":Ljava/lang/String;
    :try_start_0
    new-instance v3, Ljava/io/StringWriter;

    invoke-direct {v3}, Ljava/io/StringWriter;-><init>()V

    .line 128
    .local v3, "writer":Ljava/io/Writer;
    new-instance v1, Ljava/io/PrintWriter;

    invoke-direct {v1, v3}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    .line 129
    .local v1, "printWriter":Ljava/io/PrintWriter;
    invoke-virtual {p0, v1}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V

    .line 130
    invoke-virtual {v1}, Ljava/io/PrintWriter;->flush()V

    .line 131
    invoke-virtual {v3}, Ljava/io/Writer;->flush()V

    .line 132
    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 133
    invoke-virtual {v1}, Ljava/io/PrintWriter;->close()V

    .line 134
    invoke-virtual {v3}, Ljava/io/Writer;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 135
    .end local v1    # "printWriter":Ljava/io/PrintWriter;
    .end local v3    # "writer":Ljava/io/Writer;
    :catch_0
    move-exception v0

    .line 136
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 137
    .end local v0    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v4

    goto :goto_0
.end method

.method private checkWebService()Z
    .locals 5

    .prologue
    .line 245
    :try_start_0
    new-instance v3, Ljava/net/URL;

    .line 246
    const-string v4, "http://www.baidu.com"

    .line 245
    invoke-direct {v3, v4}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 246
    invoke-virtual {v3}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v1

    .line 245
    check-cast v1, Ljava/net/HttpURLConnection;

    .line 247
    .local v1, "con":Ljava/net/HttpURLConnection;
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getResponseCode()I
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v0

    .line 248
    .local v0, "code":I
    const/16 v3, 0xc8

    if-ne v0, v3, :cond_0

    .line 249
    const/4 v3, 0x1

    .line 256
    .end local v0    # "code":I
    .end local v1    # "con":Ljava/net/HttpURLConnection;
    :goto_0
    return v3

    .line 251
    :catch_0
    move-exception v2

    .line 252
    .local v2, "e":Ljava/net/MalformedURLException;
    invoke-virtual {v2}, Ljava/net/MalformedURLException;->printStackTrace()V

    .line 256
    .end local v2    # "e":Ljava/net/MalformedURLException;
    :cond_0
    :goto_1
    const/4 v3, 0x0

    goto :goto_0

    .line 253
    :catch_1
    move-exception v2

    .line 254
    .local v2, "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1
.end method

.method private checkWebService2()Z
    .locals 6

    .prologue
    .line 212
    new-instance v3, Landroid/os/StrictMode$ThreadPolicy$Builder;

    invoke-direct {v3}, Landroid/os/StrictMode$ThreadPolicy$Builder;-><init>()V

    .line 213
    invoke-virtual {v3}, Landroid/os/StrictMode$ThreadPolicy$Builder;->detectDiskReads()Landroid/os/StrictMode$ThreadPolicy$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/StrictMode$ThreadPolicy$Builder;->detectDiskWrites()Landroid/os/StrictMode$ThreadPolicy$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/StrictMode$ThreadPolicy$Builder;->detectNetwork()Landroid/os/StrictMode$ThreadPolicy$Builder;

    move-result-object v3

    .line 214
    invoke-virtual {v3}, Landroid/os/StrictMode$ThreadPolicy$Builder;->penaltyLog()Landroid/os/StrictMode$ThreadPolicy$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/StrictMode$ThreadPolicy$Builder;->build()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v3

    .line 212
    invoke-static {v3}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 215
    new-instance v3, Landroid/os/StrictMode$VmPolicy$Builder;

    invoke-direct {v3}, Landroid/os/StrictMode$VmPolicy$Builder;-><init>()V

    .line 216
    invoke-virtual {v3}, Landroid/os/StrictMode$VmPolicy$Builder;->detectLeakedSqlLiteObjects()Landroid/os/StrictMode$VmPolicy$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/StrictMode$VmPolicy$Builder;->detectLeakedClosableObjects()Landroid/os/StrictMode$VmPolicy$Builder;

    move-result-object v3

    .line 217
    invoke-virtual {v3}, Landroid/os/StrictMode$VmPolicy$Builder;->penaltyLog()Landroid/os/StrictMode$VmPolicy$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/StrictMode$VmPolicy$Builder;->penaltyDeath()Landroid/os/StrictMode$VmPolicy$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/StrictMode$VmPolicy$Builder;->build()Landroid/os/StrictMode$VmPolicy;

    move-result-object v3

    .line 215
    invoke-static {v3}, Landroid/os/StrictMode;->setVmPolicy(Landroid/os/StrictMode$VmPolicy;)V

    .line 219
    :try_start_0
    new-instance v3, Ljava/net/URL;

    .line 220
    new-instance v4, Ljava/lang/StringBuilder;

    sget-object v5, Lcom/cat/tools/HttpConf;->iWiFi_WIFI_TOTAL:Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, "/test/1"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 219
    invoke-direct {v3, v4}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 220
    invoke-virtual {v3}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v1

    .line 219
    check-cast v1, Ljava/net/HttpURLConnection;

    .line 221
    .local v1, "con":Ljava/net/HttpURLConnection;
    const/16 v3, 0x1f4

    invoke-virtual {v1, v3}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 222
    const/16 v3, 0x1f4

    invoke-virtual {v1, v3}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 223
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getResponseCode()I
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v0

    .line 224
    .local v0, "code":I
    const/16 v3, 0xc8

    if-ne v0, v3, :cond_0

    .line 225
    const/4 v3, 0x1

    .line 235
    .end local v0    # "code":I
    .end local v1    # "con":Ljava/net/HttpURLConnection;
    :goto_0
    return v3

    .line 227
    :catch_0
    move-exception v2

    .line 228
    .local v2, "e":Ljava/net/MalformedURLException;
    invoke-virtual {v2}, Ljava/net/MalformedURLException;->printStackTrace()V

    .line 235
    .end local v2    # "e":Ljava/net/MalformedURLException;
    :cond_0
    :goto_1
    const/4 v3, 0x0

    goto :goto_0

    .line 229
    :catch_1
    move-exception v2

    .line 230
    .local v2, "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1
.end method

.method public static executeCommand(Ljava/lang/String;J)I
    .locals 4
    .param p0, "command"    # Ljava/lang/String;
    .param p1, "timeout"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;,
            Ljava/util/concurrent/TimeoutException;
        }
    .end annotation

    .prologue
    .line 319
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v1

    .line 320
    .local v1, "process":Ljava/lang/Process;
    new-instance v2, Lcom/pubinfo/izhejiang/ThinkAndroidBaseActivity$Worker;

    const/4 v3, 0x0

    invoke-direct {v2, v1, v3}, Lcom/pubinfo/izhejiang/ThinkAndroidBaseActivity$Worker;-><init>(Ljava/lang/Process;Lcom/pubinfo/izhejiang/ThinkAndroidBaseActivity$Worker;)V

    .line 321
    .local v2, "worker":Lcom/pubinfo/izhejiang/ThinkAndroidBaseActivity$Worker;
    invoke-virtual {v2}, Lcom/pubinfo/izhejiang/ThinkAndroidBaseActivity$Worker;->start()V

    .line 323
    :try_start_0
    invoke-virtual {v2, p1, p2}, Lcom/pubinfo/izhejiang/ThinkAndroidBaseActivity$Worker;->join(J)V

    .line 324
    # getter for: Lcom/pubinfo/izhejiang/ThinkAndroidBaseActivity$Worker;->exit:Ljava/lang/Integer;
    invoke-static {v2}, Lcom/pubinfo/izhejiang/ThinkAndroidBaseActivity$Worker;->access$1(Lcom/pubinfo/izhejiang/ThinkAndroidBaseActivity$Worker;)Ljava/lang/Integer;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 325
    # getter for: Lcom/pubinfo/izhejiang/ThinkAndroidBaseActivity$Worker;->exit:Ljava/lang/Integer;
    invoke-static {v2}, Lcom/pubinfo/izhejiang/ThinkAndroidBaseActivity$Worker;->access$1(Lcom/pubinfo/izhejiang/ThinkAndroidBaseActivity$Worker;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    .line 334
    invoke-virtual {v1}, Ljava/lang/Process;->destroy()V

    .line 325
    return v3

    .line 327
    :cond_0
    :try_start_1
    new-instance v3, Ljava/util/concurrent/TimeoutException;

    invoke-direct {v3}, Ljava/util/concurrent/TimeoutException;-><init>()V

    throw v3
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 329
    :catch_0
    move-exception v0

    .line 330
    .local v0, "ex":Ljava/lang/InterruptedException;
    :try_start_2
    invoke-virtual {v2}, Lcom/pubinfo/izhejiang/ThinkAndroidBaseActivity$Worker;->interrupt()V

    .line 331
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->interrupt()V

    .line 332
    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 333
    .end local v0    # "ex":Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v3

    .line 334
    invoke-virtual {v1}, Ljava/lang/Process;->destroy()V

    .line 335
    throw v3
.end method

.method private isConnect()Z
    .locals 4

    .prologue
    .line 267
    :try_start_0
    const-string v2, "connectivity"

    invoke-virtual {p0, v2}, Lcom/pubinfo/izhejiang/ThinkAndroidBaseActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 268
    .local v0, "connectivity":Landroid/net/ConnectivityManager;
    if-eqz v0, :cond_0

    .line 270
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    .line 271
    .local v1, "info":Landroid/net/NetworkInfo;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 273
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v2

    sget-object v3, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-ne v2, v3, :cond_0

    .line 274
    const/4 v2, 0x1

    .line 280
    .end local v0    # "connectivity":Landroid/net/ConnectivityManager;
    .end local v1    # "info":Landroid/net/NetworkInfo;
    :goto_0
    return v2

    .line 278
    :catch_0
    move-exception v2

    .line 280
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static isMobileNO(Ljava/lang/String;)Z
    .locals 3
    .param p0, "mobiles"    # Ljava/lang/String;

    .prologue
    .line 383
    const-string v2, "^(1[3-9])\\d{9}$"

    invoke-static {v2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    .line 384
    .local v1, "p":Ljava/util/regex/Pattern;
    invoke-virtual {v1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 386
    .local v0, "m":Ljava/util/regex/Matcher;
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v2

    return v2
.end method


# virtual methods
.method public CreatFileSdcard()Z
    .locals 5

    .prologue
    .line 390
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v3

    .line 391
    const-string v4, "mounted"

    .line 390
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 392
    .local v2, "sdCardExist":Z
    if-nez v2, :cond_0

    .line 393
    const-string v3, "\u8bf7\u63d2\u5165\u5916\u90e8SD\u5b58\u50a8\u5361"

    invoke-virtual {p0, v3}, Lcom/pubinfo/izhejiang/ThinkAndroidBaseActivity;->showMsgToast(Ljava/lang/String;)V

    .line 394
    const/4 v3, 0x0

    .line 405
    :goto_0
    return v3

    .line 397
    :cond_0
    new-instance v0, Ljava/io/File;

    sget-object v3, Lcom/cat/tools/APPConf;->PHOTO_SAVE_PATH:Ljava/lang/String;

    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 398
    .local v0, "dirFirstFile":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_1

    .line 399
    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    .line 401
    :cond_1
    new-instance v1, Ljava/io/File;

    sget-object v3, Lcom/cat/tools/APPConf;->PHOTO_SAVE2_PATH:Ljava/lang/String;

    invoke-direct {v1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 402
    .local v1, "dirSecondFile":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_2

    .line 403
    invoke-virtual {v1}, Ljava/io/File;->mkdir()Z

    .line 405
    :cond_2
    const/4 v3, 0x1

    goto :goto_0
.end method

.method public checkNetWork()Z
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 146
    invoke-direct {p0}, Lcom/pubinfo/izhejiang/ThinkAndroidBaseActivity;->isConnect()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 148
    :try_start_0
    invoke-virtual {p0}, Lcom/pubinfo/izhejiang/ThinkAndroidBaseActivity;->showLoading()V

    .line 149
    const-string v3, "ping -c 1 -i 0.2 -W 1 www.baidu.com"

    .line 150
    const-wide/16 v4, 0xbb8

    .line 149
    invoke-static {v3, v4, v5}, Lcom/pubinfo/izhejiang/ThinkAndroidBaseActivity;->executeCommand(Ljava/lang/String;J)I

    move-result v3

    if-nez v3, :cond_1

    .line 178
    :cond_0
    :goto_0
    return v1

    .line 153
    :cond_1
    new-instance v3, Lcom/cat/impl/DoCheckNetWorkConn;

    invoke-virtual {p0}, Lcom/pubinfo/izhejiang/ThinkAndroidBaseActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, p0, v4}, Lcom/cat/impl/DoCheckNetWorkConn;-><init>(Lcom/cat/protocol/DoCheckNetWorkInterface;Landroid/content/Context;)V

    .line 154
    iget v3, p0, Lcom/pubinfo/izhejiang/ThinkAndroidBaseActivity;->network_state:I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_2

    if-eqz v3, :cond_0

    move v1, v2

    .line 157
    goto :goto_0

    .line 160
    :catch_0
    move-exception v0

    .line 161
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    move v1, v2

    .line 162
    goto :goto_0

    .line 163
    .end local v0    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v0

    .line 164
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    move v1, v2

    .line 165
    goto :goto_0

    .line 166
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :catch_2
    move-exception v0

    .line 167
    .local v0, "e":Ljava/util/concurrent/TimeoutException;
    invoke-virtual {v0}, Ljava/util/concurrent/TimeoutException;->printStackTrace()V

    move v1, v2

    .line 168
    goto :goto_0

    .end local v0    # "e":Ljava/util/concurrent/TimeoutException;
    :cond_2
    move v1, v2

    .line 178
    goto :goto_0
.end method

.method public diffTime()V
    .locals 5

    .prologue
    .line 458
    const-string v2, "TimeDifference"

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Lcom/pubinfo/izhejiang/ThinkAndroidBaseActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 459
    .local v0, "sharedata":Landroid/content/SharedPreferences;
    const-string v2, "difftime"

    const-string v3, ""

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 460
    .local v1, "startTime":Ljava/lang/String;
    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 462
    :try_start_0
    new-instance v2, Lcom/cat/impl/DoTimeDifferenceConn;

    .line 463
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 462
    invoke-static {v3, v4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, p0}, Lcom/cat/impl/DoTimeDifferenceConn;-><init>(Ljava/lang/String;Lcom/cat/protocol/DoTimeDifferenceInterface;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 468
    :cond_0
    :goto_0
    return-void

    .line 464
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public doCheckNetWorkErr(Ljava/lang/String;)V
    .locals 1
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 189
    const/4 v0, 0x1

    iput v0, p0, Lcom/pubinfo/izhejiang/ThinkAndroidBaseActivity;->network_state:I

    .line 190
    return-void
.end method

.method public doCheckNetWorkSucc(Ljava/lang/String;)V
    .locals 1
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 184
    const/4 v0, 0x0

    iput v0, p0, Lcom/pubinfo/izhejiang/ThinkAndroidBaseActivity;->network_state:I

    .line 185
    return-void
.end method

.method public doTimeDifferenceErr(Ljava/lang/String;)V
    .locals 0
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 455
    return-void
.end method

.method public doTimeDifferenceSucc(Ljava/lang/String;)V
    .locals 8
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 434
    if-eqz p1, :cond_0

    .line 437
    :try_start_0
    invoke-static {p1}, Lcom/cat/parase/TimeDifferenceParser;->Timedifferenceparaser(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    .line 438
    .local v2, "result":Ljava/lang/Object;
    const-string v6, "OK"

    invoke-virtual {p1, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 440
    move-object v0, v2

    check-cast v0, Ljava/util/List;

    move-object v5, v0

    .line 441
    .local v5, "td":Ljava/util/List;, "Ljava/util/List<Lcom/cat/data/TimeDifference;>;"
    const/4 v6, 0x0

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/cat/data/TimeDifference;

    invoke-virtual {v6}, Lcom/cat/data/TimeDifference;->getTimedifference()Ljava/lang/String;

    move-result-object v4

    .line 443
    .local v4, "startTime":Ljava/lang/String;
    const-string v6, "TimeDifference"

    const/4 v7, 0x0

    .line 442
    invoke-virtual {p0, v6, v7}, Lcom/pubinfo/izhejiang/ThinkAndroidBaseActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 444
    .local v3, "sharedata":Landroid/content/SharedPreferences;
    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 445
    .local v1, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v6, "difftime"

    invoke-interface {v1, v6, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 446
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 452
    .end local v1    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local v2    # "result":Ljava/lang/Object;
    .end local v3    # "sharedata":Landroid/content/SharedPreferences;
    .end local v4    # "startTime":Ljava/lang/String;
    .end local v5    # "td":Ljava/util/List;, "Ljava/util/List<Lcom/cat/data/TimeDifference;>;"
    :cond_0
    :goto_0
    return-void

    .line 448
    :catch_0
    move-exception v6

    goto :goto_0
.end method

.method public getConnectedSSID()Ljava/lang/String;
    .locals 3

    .prologue
    .line 370
    iget-object v1, p0, Lcom/pubinfo/izhejiang/ThinkAndroidBaseActivity;->wifiMgr:Landroid/net/wifi/WifiManager;

    if-nez v1, :cond_0

    .line 371
    invoke-virtual {p0}, Lcom/pubinfo/izhejiang/ThinkAndroidBaseActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 372
    const-string v2, "wifi"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/WifiManager;

    .line 371
    iput-object v1, p0, Lcom/pubinfo/izhejiang/ThinkAndroidBaseActivity;->wifiMgr:Landroid/net/wifi/WifiManager;

    .line 373
    :cond_0
    iget-object v1, p0, Lcom/pubinfo/izhejiang/ThinkAndroidBaseActivity;->wifiMgr:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v0

    .line 374
    .local v0, "wifiInfo":Landroid/net/wifi/WifiInfo;
    if-eqz v0, :cond_1

    .line 375
    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v1

    .line 377
    :goto_0
    return-object v1

    :cond_1
    const-string v1, ""

    goto :goto_0
.end method

.method public getLocalMacAddress()Ljava/lang/String;
    .locals 3

    .prologue
    .line 361
    iget-object v1, p0, Lcom/pubinfo/izhejiang/ThinkAndroidBaseActivity;->wifiMgr:Landroid/net/wifi/WifiManager;

    if-nez v1, :cond_0

    .line 362
    invoke-virtual {p0}, Lcom/pubinfo/izhejiang/ThinkAndroidBaseActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 363
    const-string v2, "wifi"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/WifiManager;

    .line 362
    iput-object v1, p0, Lcom/pubinfo/izhejiang/ThinkAndroidBaseActivity;->wifiMgr:Landroid/net/wifi/WifiManager;

    .line 365
    :cond_0
    iget-object v1, p0, Lcom/pubinfo/izhejiang/ThinkAndroidBaseActivity;->wifiMgr:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v0

    .line 366
    .local v0, "info":Landroid/net/wifi/WifiInfo;
    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getMacAddress()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getScreenHeight()I
    .locals 2

    .prologue
    .line 428
    const-string v1, "window"

    invoke-virtual {p0, v1}, Lcom/pubinfo/izhejiang/ThinkAndroidBaseActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    .line 429
    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 430
    .local v0, "display":Landroid/view/Display;
    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v1

    return v1
.end method

.method public getScreenWidth()I
    .locals 2

    .prologue
    .line 416
    const-string v1, "window"

    invoke-virtual {p0, v1}, Lcom/pubinfo/izhejiang/ThinkAndroidBaseActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    .line 417
    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 418
    .local v0, "display":Landroid/view/Display;
    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v1

    return v1
.end method

.method protected hideLoading()V
    .locals 2

    .prologue
    .line 79
    iget-object v0, p0, Lcom/pubinfo/izhejiang/ThinkAndroidBaseActivity;->ll_pageInnerLoading:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 80
    iget-object v0, p0, Lcom/pubinfo/izhejiang/ThinkAndroidBaseActivity;->ll_pageInnerLoading:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 82
    :cond_0
    return-void
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 198
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 199
    invoke-static {p0}, Lcom/umeng/analytics/MobclickAgent;->onPause(Landroid/content/Context;)V

    .line 200
    return-void
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 193
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 194
    invoke-static {p0}, Lcom/umeng/analytics/MobclickAgent;->onResume(Landroid/content/Context;)V

    .line 195
    return-void
.end method

.method protected showDialog(Ljava/lang/String;Z)V
    .locals 3
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "isFinish"    # Z

    .prologue
    .line 109
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v1, "\u63d0\u793a"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 110
    const-string v1, "\u786e\u5b9a"

    new-instance v2, Lcom/pubinfo/izhejiang/ThinkAndroidBaseActivity$1;

    invoke-direct {v2, p0, p2}, Lcom/pubinfo/izhejiang/ThinkAndroidBaseActivity$1;-><init>(Lcom/pubinfo/izhejiang/ThinkAndroidBaseActivity;Z)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 119
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 120
    return-void
.end method

.method protected showLoading()V
    .locals 2

    .prologue
    .line 69
    iget-object v0, p0, Lcom/pubinfo/izhejiang/ThinkAndroidBaseActivity;->ll_pageInnerLoading:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 70
    iget-object v0, p0, Lcom/pubinfo/izhejiang/ThinkAndroidBaseActivity;->msInnerLoadingAnim:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 71
    iget-object v0, p0, Lcom/pubinfo/izhejiang/ThinkAndroidBaseActivity;->msInnerLoadingAnim:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->stop()V

    .line 72
    iget-object v0, p0, Lcom/pubinfo/izhejiang/ThinkAndroidBaseActivity;->msInnerLoadingAnim:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    .line 76
    :goto_0
    return-void

    .line 74
    :cond_0
    iget-object v0, p0, Lcom/pubinfo/izhejiang/ThinkAndroidBaseActivity;->msInnerLoadingAnim:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    goto :goto_0
.end method

.method protected showMsgToast(Ljava/lang/String;)V
    .locals 1
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 105
    const/16 v0, 0xa

    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 106
    return-void
.end method

.method public umengCount(Ljava/lang/String;)V
    .locals 0
    .param p1, "string"    # Ljava/lang/String;

    .prologue
    .line 203
    invoke-static {p0, p1}, Lcom/umeng/analytics/MobclickAgent;->onEvent(Landroid/content/Context;Ljava/lang/String;)V

    .line 204
    return-void
.end method
