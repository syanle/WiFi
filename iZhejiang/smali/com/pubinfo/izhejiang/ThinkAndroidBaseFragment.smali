.class public Lcom/pubinfo/izhejiang/ThinkAndroidBaseFragment;
.super Landroid/app/Fragment;
.source "ThinkAndroidBaseFragment.java"

# interfaces
.implements Lcom/cat/protocol/DoTimeDifferenceInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pubinfo/izhejiang/ThinkAndroidBaseFragment$MyThread;,
        Lcom/pubinfo/izhejiang/ThinkAndroidBaseFragment$Worker;
    }
.end annotation


# instance fields
.field protected iv_pageInnerLoading:Landroid/widget/ImageView;

.field protected ll_pageInnerLoading:Landroid/widget/LinearLayout;

.field protected msInnerLoadingAnim:Landroid/graphics/drawable/AnimationDrawable;

.field private wifiManager:Landroid/net/wifi/WifiManager;

.field protected wifiMgr:Landroid/net/wifi/WifiManager;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 38
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 43
    iput-object v0, p0, Lcom/pubinfo/izhejiang/ThinkAndroidBaseFragment;->ll_pageInnerLoading:Landroid/widget/LinearLayout;

    .line 48
    iput-object v0, p0, Lcom/pubinfo/izhejiang/ThinkAndroidBaseFragment;->iv_pageInnerLoading:Landroid/widget/ImageView;

    .line 53
    iput-object v0, p0, Lcom/pubinfo/izhejiang/ThinkAndroidBaseFragment;->msInnerLoadingAnim:Landroid/graphics/drawable/AnimationDrawable;

    .line 55
    iput-object v0, p0, Lcom/pubinfo/izhejiang/ThinkAndroidBaseFragment;->wifiMgr:Landroid/net/wifi/WifiManager;

    .line 38
    return-void
.end method

.method public static FormatStackTrace(Ljava/lang/Throwable;)Ljava/lang/String;
    .locals 5
    .param p0, "throwable"    # Ljava/lang/Throwable;

    .prologue
    .line 95
    if-nez p0, :cond_0

    .line 96
    const-string v2, ""

    .line 111
    :goto_0
    return-object v2

    .line 97
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 99
    .local v2, "rtn":Ljava/lang/String;
    :try_start_0
    new-instance v3, Ljava/io/StringWriter;

    invoke-direct {v3}, Ljava/io/StringWriter;-><init>()V

    .line 100
    .local v3, "writer":Ljava/io/Writer;
    new-instance v1, Ljava/io/PrintWriter;

    invoke-direct {v1, v3}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    .line 101
    .local v1, "printWriter":Ljava/io/PrintWriter;
    invoke-virtual {p0, v1}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V

    .line 102
    invoke-virtual {v1}, Ljava/io/PrintWriter;->flush()V

    .line 103
    invoke-virtual {v3}, Ljava/io/Writer;->flush()V

    .line 104
    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 105
    invoke-virtual {v1}, Ljava/io/PrintWriter;->close()V

    .line 106
    invoke-virtual {v3}, Ljava/io/Writer;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 107
    .end local v1    # "printWriter":Ljava/io/PrintWriter;
    .end local v3    # "writer":Ljava/io/Writer;
    :catch_0
    move-exception v0

    .line 108
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 109
    .end local v0    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v4

    goto :goto_0
.end method

.method private checkWebService()Z
    .locals 5

    .prologue
    .line 190
    :try_start_0
    new-instance v3, Ljava/net/URL;

    .line 191
    const-string v4, "http://www.baidu.com"

    .line 190
    invoke-direct {v3, v4}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 191
    invoke-virtual {v3}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v1

    .line 190
    check-cast v1, Ljava/net/HttpURLConnection;

    .line 192
    .local v1, "con":Ljava/net/HttpURLConnection;
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getResponseCode()I
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v0

    .line 193
    .local v0, "code":I
    const/16 v3, 0xc8

    if-ne v0, v3, :cond_0

    .line 194
    const/4 v3, 0x1

    .line 201
    .end local v0    # "code":I
    .end local v1    # "con":Ljava/net/HttpURLConnection;
    :goto_0
    return v3

    .line 196
    :catch_0
    move-exception v2

    .line 197
    .local v2, "e":Ljava/net/MalformedURLException;
    invoke-virtual {v2}, Ljava/net/MalformedURLException;->printStackTrace()V

    .line 201
    .end local v2    # "e":Ljava/net/MalformedURLException;
    :cond_0
    :goto_1
    const/4 v3, 0x0

    goto :goto_0

    .line 198
    :catch_1
    move-exception v2

    .line 199
    .local v2, "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1
.end method

.method private checkWebService2()Z
    .locals 6

    .prologue
    .line 167
    :try_start_0
    new-instance v3, Ljava/net/URL;

    .line 168
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

    .line 167
    invoke-direct {v3, v4}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 168
    invoke-virtual {v3}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v1

    .line 167
    check-cast v1, Ljava/net/HttpURLConnection;

    .line 169
    .local v1, "con":Ljava/net/HttpURLConnection;
    const/16 v3, 0x1f4

    invoke-virtual {v1, v3}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 170
    const/16 v3, 0x1f4

    invoke-virtual {v1, v3}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 171
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getResponseCode()I
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v0

    .line 172
    .local v0, "code":I
    const/16 v3, 0xc8

    if-ne v0, v3, :cond_0

    .line 173
    const/4 v3, 0x1

    .line 180
    .end local v0    # "code":I
    .end local v1    # "con":Ljava/net/HttpURLConnection;
    :goto_0
    return v3

    .line 175
    :catch_0
    move-exception v2

    .line 176
    .local v2, "e":Ljava/net/MalformedURLException;
    invoke-virtual {v2}, Ljava/net/MalformedURLException;->printStackTrace()V

    .line 180
    .end local v2    # "e":Ljava/net/MalformedURLException;
    :cond_0
    :goto_1
    const/4 v3, 0x0

    goto :goto_0

    .line 177
    :catch_1
    move-exception v2

    .line 178
    .local v2, "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1
.end method

.method public static executeCommand(Ljava/lang/String;J)I
    .locals 5
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
    .line 265
    const-string v3, "checkNetWork"

    const-string v4, "st"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 266
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v1

    .line 267
    .local v1, "process":Ljava/lang/Process;
    new-instance v2, Lcom/pubinfo/izhejiang/ThinkAndroidBaseFragment$Worker;

    const/4 v3, 0x0

    invoke-direct {v2, v1, v3}, Lcom/pubinfo/izhejiang/ThinkAndroidBaseFragment$Worker;-><init>(Ljava/lang/Process;Lcom/pubinfo/izhejiang/ThinkAndroidBaseFragment$Worker;)V

    .line 269
    .local v2, "worker":Lcom/pubinfo/izhejiang/ThinkAndroidBaseFragment$Worker;
    :try_start_0
    invoke-virtual {v2}, Lcom/pubinfo/izhejiang/ThinkAndroidBaseFragment$Worker;->start()V

    .line 270
    invoke-virtual {v2, p1, p2}, Lcom/pubinfo/izhejiang/ThinkAndroidBaseFragment$Worker;->join(J)V

    .line 271
    # getter for: Lcom/pubinfo/izhejiang/ThinkAndroidBaseFragment$Worker;->exit:Ljava/lang/Integer;
    invoke-static {v2}, Lcom/pubinfo/izhejiang/ThinkAndroidBaseFragment$Worker;->access$1(Lcom/pubinfo/izhejiang/ThinkAndroidBaseFragment$Worker;)Ljava/lang/Integer;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 272
    # getter for: Lcom/pubinfo/izhejiang/ThinkAndroidBaseFragment$Worker;->exit:Ljava/lang/Integer;
    invoke-static {v2}, Lcom/pubinfo/izhejiang/ThinkAndroidBaseFragment$Worker;->access$1(Lcom/pubinfo/izhejiang/ThinkAndroidBaseFragment$Worker;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    .line 283
    invoke-virtual {v1}, Ljava/lang/Process;->destroy()V

    .line 272
    return v3

    .line 274
    :cond_0
    :try_start_1
    new-instance v3, Ljava/util/concurrent/TimeoutException;

    invoke-direct {v3}, Ljava/util/concurrent/TimeoutException;-><init>()V

    throw v3
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 276
    :catch_0
    move-exception v0

    .line 277
    .local v0, "ex":Ljava/lang/InterruptedException;
    :try_start_2
    const-string v3, "checkNetWorkInterruptedException"

    const-string v4, "st"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 278
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 279
    invoke-virtual {v2}, Lcom/pubinfo/izhejiang/ThinkAndroidBaseFragment$Worker;->interrupt()V

    .line 280
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->interrupt()V

    .line 281
    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 282
    .end local v0    # "ex":Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v3

    .line 283
    invoke-virtual {v1}, Ljava/lang/Process;->destroy()V

    .line 284
    throw v3
.end method

.method private isConnect()Z
    .locals 4

    .prologue
    .line 212
    :try_start_0
    invoke-virtual {p0}, Lcom/pubinfo/izhejiang/ThinkAndroidBaseFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    .line 213
    const-string v3, "connectivity"

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 212
    check-cast v0, Landroid/net/ConnectivityManager;

    .line 214
    .local v0, "connectivity":Landroid/net/ConnectivityManager;
    if-eqz v0, :cond_0

    .line 216
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    .line 217
    .local v1, "info":Landroid/net/NetworkInfo;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 219
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v2

    sget-object v3, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-ne v2, v3, :cond_0

    .line 220
    const/4 v2, 0x1

    .line 226
    .end local v0    # "connectivity":Landroid/net/ConnectivityManager;
    .end local v1    # "info":Landroid/net/NetworkInfo;
    :goto_0
    return v2

    .line 224
    :catch_0
    move-exception v2

    .line 226
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static isMobileNO(Ljava/lang/String;)Z
    .locals 3
    .param p0, "mobiles"    # Ljava/lang/String;

    .prologue
    .line 320
    const-string v2, "^(1[3-9])\\d{9}$"

    invoke-static {v2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    .line 321
    .local v1, "p":Ljava/util/regex/Pattern;
    invoke-virtual {v1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 323
    .local v0, "m":Ljava/util/regex/Matcher;
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v2

    return v2
.end method


# virtual methods
.method public CreatFileSdcard()Z
    .locals 5

    .prologue
    .line 327
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v3

    .line 328
    const-string v4, "mounted"

    .line 327
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 329
    .local v2, "sdCardExist":Z
    if-nez v2, :cond_0

    .line 331
    const/4 v3, 0x0

    .line 342
    :goto_0
    return v3

    .line 334
    :cond_0
    new-instance v0, Ljava/io/File;

    sget-object v3, Lcom/cat/tools/APPConf;->PHOTO_SAVE_PATH:Ljava/lang/String;

    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 335
    .local v0, "dirFirstFile":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_1

    .line 336
    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    .line 338
    :cond_1
    new-instance v1, Ljava/io/File;

    sget-object v3, Lcom/cat/tools/APPConf;->PHOTO_SAVE2_PATH:Ljava/lang/String;

    invoke-direct {v1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 339
    .local v1, "dirSecondFile":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_2

    .line 340
    invoke-virtual {v1}, Ljava/io/File;->mkdir()Z

    .line 342
    :cond_2
    const/4 v3, 0x1

    goto :goto_0
.end method

.method public checkNetWork()Z
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 118
    invoke-direct {p0}, Lcom/pubinfo/izhejiang/ThinkAndroidBaseFragment;->isConnect()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 119
    const-string v2, "checkNetWork"

    const-string v3, "true"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    :try_start_0
    const-string v2, "ping -c 1 -i 0.2 -W 1 www.baidu.com"

    .line 122
    const-wide/16 v3, 0x1388

    .line 121
    invoke-static {v2, v3, v4}, Lcom/pubinfo/izhejiang/ThinkAndroidBaseFragment;->executeCommand(Ljava/lang/String;J)I

    move-result v2

    if-nez v2, :cond_0

    .line 123
    const-string v2, "checkNetWork_pingbaidu"

    const-string v3, "true"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    const/4 v1, 0x1

    .line 156
    :goto_0
    return v1

    .line 126
    :cond_0
    const-string v2, "checkNetWork_pingbaidu"

    const-string v3, "false"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_2

    goto :goto_0

    .line 134
    :catch_0
    move-exception v0

    .line 135
    .local v0, "e":Ljava/io/IOException;
    const-string v2, "checkNetWork_exception"

    const-string v3, "false"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 138
    .end local v0    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v0

    .line 139
    .local v0, "e":Ljava/lang/InterruptedException;
    const-string v2, "checkNetWork_exception"

    const-string v3, "false"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0

    .line 142
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :catch_2
    move-exception v0

    .line 143
    .local v0, "e":Ljava/util/concurrent/TimeoutException;
    const-string v2, "checkNetWork_exception"

    const-string v3, "false"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    invoke-virtual {v0}, Ljava/util/concurrent/TimeoutException;->printStackTrace()V

    goto :goto_0

    .line 155
    .end local v0    # "e":Ljava/util/concurrent/TimeoutException;
    :cond_1
    const-string v2, "checkNetWork"

    const-string v3, "false"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public diffTime()V
    .locals 6

    .prologue
    .line 385
    invoke-virtual {p0}, Lcom/pubinfo/izhejiang/ThinkAndroidBaseFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    .line 386
    const-string v4, "TimeDifference"

    const/4 v5, 0x0

    .line 385
    invoke-virtual {v3, v4, v5}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 387
    .local v1, "sharedata":Landroid/content/SharedPreferences;
    const-string v3, "difftime"

    const-string v4, ""

    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 388
    .local v2, "startTime":Ljava/lang/String;
    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 390
    :try_start_0
    new-instance v3, Lcom/cat/impl/DoTimeDifferenceConn;

    .line 391
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 390
    invoke-static {v4, v5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, p0}, Lcom/cat/impl/DoTimeDifferenceConn;-><init>(Ljava/lang/String;Lcom/cat/protocol/DoTimeDifferenceInterface;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 397
    :cond_0
    :goto_0
    return-void

    .line 392
    :catch_0
    move-exception v0

    .line 393
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public doTimeDifferenceErr(Ljava/lang/String;)V
    .locals 0
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 382
    return-void
.end method

.method public doTimeDifferenceSucc(Ljava/lang/String;)V
    .locals 9
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 358
    if-eqz p1, :cond_0

    .line 361
    :try_start_0
    invoke-static {p1}, Lcom/cat/parase/TimeDifferenceParser;->Timedifferenceparaser(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    .line 362
    .local v2, "result":Ljava/lang/Object;
    const-string v6, "OK"

    invoke-virtual {p1, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 364
    move-object v0, v2

    check-cast v0, Ljava/util/List;

    move-object v5, v0

    .line 365
    .local v5, "td":Ljava/util/List;, "Ljava/util/List<Lcom/cat/data/TimeDifference;>;"
    const/4 v6, 0x0

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/cat/data/TimeDifference;

    invoke-virtual {v6}, Lcom/cat/data/TimeDifference;->getTimedifference()Ljava/lang/String;

    move-result-object v4

    .line 367
    .local v4, "startTime":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/pubinfo/izhejiang/ThinkAndroidBaseFragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    .line 368
    const-string v7, "TimeDifference"

    const/4 v8, 0x0

    .line 367
    invoke-virtual {v6, v7, v8}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 369
    .local v3, "sharedata":Landroid/content/SharedPreferences;
    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 370
    .local v1, "editor":Landroid/content/SharedPreferences$Editor;
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    .line 371
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 372
    const-string v6, "difftime"

    invoke-interface {v1, v6, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 373
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 379
    .end local v1    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local v2    # "result":Ljava/lang/Object;
    .end local v3    # "sharedata":Landroid/content/SharedPreferences;
    .end local v4    # "startTime":Ljava/lang/String;
    .end local v5    # "td":Ljava/util/List;, "Ljava/util/List<Lcom/cat/data/TimeDifference;>;"
    :cond_0
    :goto_0
    return-void

    .line 375
    :catch_0
    move-exception v6

    goto :goto_0
.end method

.method public getConnectedSSID()Ljava/lang/String;
    .locals 3

    .prologue
    .line 347
    invoke-virtual {p0}, Lcom/pubinfo/izhejiang/ThinkAndroidBaseFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    .line 348
    const-string v2, "wifi"

    .line 347
    invoke-virtual {v1, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/WifiManager;

    iput-object v1, p0, Lcom/pubinfo/izhejiang/ThinkAndroidBaseFragment;->wifiManager:Landroid/net/wifi/WifiManager;

    .line 349
    iget-object v1, p0, Lcom/pubinfo/izhejiang/ThinkAndroidBaseFragment;->wifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v0

    .line 350
    .local v0, "wifiInfo":Landroid/net/wifi/WifiInfo;
    if-eqz v0, :cond_0

    .line 351
    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v1

    .line 353
    :goto_0
    return-object v1

    :cond_0
    const-string v1, ""

    goto :goto_0
.end method

.method public getLocalMacAddress()Ljava/lang/String;
    .locals 3

    .prologue
    .line 310
    iget-object v1, p0, Lcom/pubinfo/izhejiang/ThinkAndroidBaseFragment;->wifiMgr:Landroid/net/wifi/WifiManager;

    if-nez v1, :cond_0

    .line 311
    invoke-virtual {p0}, Lcom/pubinfo/izhejiang/ThinkAndroidBaseFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    .line 312
    const-string v2, "wifi"

    .line 311
    invoke-virtual {v1, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/WifiManager;

    iput-object v1, p0, Lcom/pubinfo/izhejiang/ThinkAndroidBaseFragment;->wifiMgr:Landroid/net/wifi/WifiManager;

    .line 314
    :cond_0
    iget-object v1, p0, Lcom/pubinfo/izhejiang/ThinkAndroidBaseFragment;->wifiMgr:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v0

    .line 315
    .local v0, "info":Landroid/net/wifi/WifiInfo;
    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getMacAddress()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 404
    invoke-super {p0}, Landroid/app/Fragment;->onPause()V

    .line 405
    const-string v0, "SplashScreen"

    invoke-static {v0}, Lcom/umeng/analytics/MobclickAgent;->onPageEnd(Ljava/lang/String;)V

    .line 406
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 400
    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    .line 401
    const-string v0, "SplashScreen"

    invoke-static {v0}, Lcom/umeng/analytics/MobclickAgent;->onPageStart(Ljava/lang/String;)V

    .line 402
    return-void
.end method
