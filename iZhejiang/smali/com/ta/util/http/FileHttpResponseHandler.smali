.class public Lcom/ta/util/http/FileHttpResponseHandler;
.super Lcom/ta/util/http/AsyncHttpResponseHandler;
.source "FileHttpResponseHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ta/util/http/FileHttpResponseHandler$ProgressReportingRandomAccessFile;
    }
.end annotation


# static fields
.field private static final BUFFER_SIZE:I = 0x2000

.field private static final TAG:Ljava/lang/String; = "FileHttpResponseHandler"

.field private static final TEMP_SUFFIX:Ljava/lang/String; = ".download"

.field private static final TIMERSLEEPTIME:I = 0x64

.field public static final TIME_OUT:I = 0x7530


# instance fields
.field private baseDirFile:Ljava/io/File;

.field private downloadSize:J

.field private file:Ljava/io/File;

.field private interrupt:Z

.field private networkSpeed:J

.field private outputStream:Ljava/io/RandomAccessFile;

.field private previousFileSize:J

.field private previousTime:J

.field private tempFile:Ljava/io/File;

.field private timer:Ljava/util/Timer;

.field private timerInterrupt:Z

.field private totalSize:J

.field private totalTime:J

.field private url:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 3
    .param p1, "filePath"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 65
    invoke-direct {p0}, Lcom/ta/util/http/AsyncHttpResponseHandler;-><init>()V

    .line 37
    iput-boolean v0, p0, Lcom/ta/util/http/FileHttpResponseHandler;->interrupt:Z

    .line 38
    iput-boolean v0, p0, Lcom/ta/util/http/FileHttpResponseHandler;->timerInterrupt:Z

    .line 40
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/ta/util/http/FileHttpResponseHandler;->timer:Ljava/util/Timer;

    .line 66
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/ta/util/http/FileHttpResponseHandler;->file:Ljava/io/File;

    .line 67
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/ta/util/http/FileHttpResponseHandler;->file:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/ta/util/http/FileHttpResponseHandler;->baseDirFile:Ljava/io/File;

    .line 68
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, ".download"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/ta/util/http/FileHttpResponseHandler;->tempFile:Ljava/io/File;

    .line 69
    invoke-direct {p0}, Lcom/ta/util/http/FileHttpResponseHandler;->init()V

    .line 70
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "rootFile"    # Ljava/lang/String;
    .param p2, "fileName"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 56
    invoke-direct {p0}, Lcom/ta/util/http/AsyncHttpResponseHandler;-><init>()V

    .line 37
    iput-boolean v0, p0, Lcom/ta/util/http/FileHttpResponseHandler;->interrupt:Z

    .line 38
    iput-boolean v0, p0, Lcom/ta/util/http/FileHttpResponseHandler;->timerInterrupt:Z

    .line 40
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/ta/util/http/FileHttpResponseHandler;->timer:Ljava/util/Timer;

    .line 57
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/ta/util/http/FileHttpResponseHandler;->baseDirFile:Ljava/io/File;

    .line 58
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1, p2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/ta/util/http/FileHttpResponseHandler;->file:Ljava/io/File;

    .line 59
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, ".download"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/ta/util/http/FileHttpResponseHandler;->tempFile:Ljava/io/File;

    .line 60
    invoke-direct {p0}, Lcom/ta/util/http/FileHttpResponseHandler;->init()V

    .line 61
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "rootFile"    # Ljava/lang/String;
    .param p3, "fileName"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 46
    invoke-direct {p0}, Lcom/ta/util/http/AsyncHttpResponseHandler;-><init>()V

    .line 37
    iput-boolean v0, p0, Lcom/ta/util/http/FileHttpResponseHandler;->interrupt:Z

    .line 38
    iput-boolean v0, p0, Lcom/ta/util/http/FileHttpResponseHandler;->timerInterrupt:Z

    .line 40
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/ta/util/http/FileHttpResponseHandler;->timer:Ljava/util/Timer;

    .line 47
    iput-object p1, p0, Lcom/ta/util/http/FileHttpResponseHandler;->url:Ljava/lang/String;

    .line 48
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/ta/util/http/FileHttpResponseHandler;->baseDirFile:Ljava/io/File;

    .line 49
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p2, p3}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/ta/util/http/FileHttpResponseHandler;->file:Ljava/io/File;

    .line 50
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {p3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, ".download"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/ta/util/http/FileHttpResponseHandler;->tempFile:Ljava/io/File;

    .line 51
    invoke-direct {p0}, Lcom/ta/util/http/FileHttpResponseHandler;->init()V

    .line 52
    return-void
.end method

.method static synthetic access$0(Lcom/ta/util/http/FileHttpResponseHandler;)J
    .locals 2

    .prologue
    .line 35
    iget-wide v0, p0, Lcom/ta/util/http/FileHttpResponseHandler;->previousTime:J

    return-wide v0
.end method

.method static synthetic access$1(Lcom/ta/util/http/FileHttpResponseHandler;J)V
    .locals 0

    .prologue
    .line 36
    iput-wide p1, p0, Lcom/ta/util/http/FileHttpResponseHandler;->totalTime:J

    return-void
.end method

.method static synthetic access$2(Lcom/ta/util/http/FileHttpResponseHandler;)J
    .locals 2

    .prologue
    .line 32
    iget-wide v0, p0, Lcom/ta/util/http/FileHttpResponseHandler;->previousFileSize:J

    return-wide v0
.end method

.method static synthetic access$3(Lcom/ta/util/http/FileHttpResponseHandler;J)V
    .locals 0

    .prologue
    .line 31
    iput-wide p1, p0, Lcom/ta/util/http/FileHttpResponseHandler;->downloadSize:J

    return-void
.end method

.method static synthetic access$4(Lcom/ta/util/http/FileHttpResponseHandler;)J
    .locals 2

    .prologue
    .line 36
    iget-wide v0, p0, Lcom/ta/util/http/FileHttpResponseHandler;->totalTime:J

    return-wide v0
.end method

.method static synthetic access$5(Lcom/ta/util/http/FileHttpResponseHandler;J)V
    .locals 0

    .prologue
    .line 34
    iput-wide p1, p0, Lcom/ta/util/http/FileHttpResponseHandler;->networkSpeed:J

    return-void
.end method

.method static synthetic access$6(Lcom/ta/util/http/FileHttpResponseHandler;)Z
    .locals 1

    .prologue
    .line 38
    iget-boolean v0, p0, Lcom/ta/util/http/FileHttpResponseHandler;->timerInterrupt:Z

    return v0
.end method

.method static synthetic access$7(Lcom/ta/util/http/FileHttpResponseHandler;)J
    .locals 2

    .prologue
    .line 33
    iget-wide v0, p0, Lcom/ta/util/http/FileHttpResponseHandler;->totalSize:J

    return-wide v0
.end method

.method static synthetic access$8(Lcom/ta/util/http/FileHttpResponseHandler;)J
    .locals 2

    .prologue
    .line 34
    iget-wide v0, p0, Lcom/ta/util/http/FileHttpResponseHandler;->networkSpeed:J

    return-wide v0
.end method

.method private init()V
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcom/ta/util/http/FileHttpResponseHandler;->baseDirFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    .line 77
    iget-object v0, p0, Lcom/ta/util/http/FileHttpResponseHandler;->baseDirFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 79
    :cond_0
    return-void
.end method

.method private startTimer()V
    .locals 6

    .prologue
    .line 83
    iget-object v0, p0, Lcom/ta/util/http/FileHttpResponseHandler;->timer:Ljava/util/Timer;

    new-instance v1, Lcom/ta/util/http/FileHttpResponseHandler$1;

    invoke-direct {v1, p0}, Lcom/ta/util/http/FileHttpResponseHandler$1;-><init>(Lcom/ta/util/http/FileHttpResponseHandler;)V

    .line 104
    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x3e8

    .line 83
    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    .line 105
    return-void
.end method

.method private stopTimer()V
    .locals 1

    .prologue
    .line 109
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/ta/util/http/FileHttpResponseHandler;->timerInterrupt:Z

    .line 110
    return-void
.end method


# virtual methods
.method public copy(Ljava/io/InputStream;Ljava/io/RandomAccessFile;)I
    .locals 12
    .param p1, "input"    # Ljava/io/InputStream;
    .param p2, "out"    # Ljava/io/RandomAccessFile;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 360
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 362
    :cond_0
    const/4 v1, -0x1

    .line 419
    :goto_0
    return v1

    .line 365
    :cond_1
    const/16 v8, 0x2000

    new-array v0, v8, [B

    .line 367
    .local v0, "buffer":[B
    new-instance v6, Ljava/io/BufferedInputStream;

    const/16 v8, 0x2000

    invoke-direct {v6, p1, v8}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V

    .line 368
    .local v6, "in":Ljava/io/BufferedInputStream;
    const-string v8, "FileHttpResponseHandler"

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "length"

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v10

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/ta/util/TALogger;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 369
    const/4 v1, 0x0

    .local v1, "count":I
    const/4 v7, 0x0

    .line 370
    .local v7, "n":I
    const-wide/16 v2, -0x1

    .local v2, "errorBlockTimePreviousTime":J
    const-wide/16 v4, 0x0

    .line 373
    .local v4, "expireTime":J
    :try_start_0
    invoke-virtual {p2}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v8

    invoke-virtual {p2, v8, v9}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 374
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    iput-wide v8, p0, Lcom/ta/util/http/FileHttpResponseHandler;->previousTime:J

    .line 375
    :cond_2
    :goto_1
    iget-boolean v8, p0, Lcom/ta/util/http/FileHttpResponseHandler;->interrupt:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v8, :cond_4

    .line 410
    :cond_3
    :try_start_1
    invoke-virtual {p2}, Ljava/io/RandomAccessFile;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 414
    :catch_0
    move-exception v8

    goto :goto_0

    .line 377
    :cond_4
    const/4 v8, 0x0

    const/16 v9, 0x2000

    :try_start_2
    invoke-virtual {v6, v0, v8, v9}, Ljava/io/BufferedInputStream;->read([BII)I

    move-result v7

    .line 378
    const/4 v8, -0x1

    if-eq v7, v8, :cond_3

    .line 382
    const/4 v8, 0x0

    invoke-virtual {p2, v0, v8, v7}, Ljava/io/RandomAccessFile;->write([BII)V

    .line 383
    add-int/2addr v1, v7

    .line 384
    iget-wide v8, p0, Lcom/ta/util/http/FileHttpResponseHandler;->networkSpeed:J

    const-wide/16 v10, 0x0

    cmp-long v8, v8, v10

    if-nez v8, :cond_6

    .line 386
    const-wide/16 v8, 0x0

    cmp-long v8, v2, v8

    if-lez v8, :cond_5

    .line 388
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    sub-long v4, v8, v2

    .line 390
    const-wide/16 v8, 0x7530

    cmp-long v8, v4, v8

    if-lez v8, :cond_2

    .line 392
    new-instance v8, Lorg/apache/http/conn/ConnectTimeoutException;

    .line 393
    const-string v9, "connection time out."

    .line 392
    invoke-direct {v8, v9}, Lorg/apache/http/conn/ConnectTimeoutException;-><init>(Ljava/lang/String;)V

    throw v8
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 406
    :catchall_0
    move-exception v8

    .line 410
    :try_start_3
    invoke-virtual {p2}, Ljava/io/RandomAccessFile;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    .line 418
    :goto_2
    throw v8

    .line 397
    :cond_5
    :try_start_4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-result-wide v2

    .line 399
    goto :goto_1

    .line 401
    :cond_6
    const-wide/16 v4, 0x0

    .line 402
    const-wide/16 v2, -0x1

    goto :goto_1

    .line 414
    :catch_1
    move-exception v9

    goto :goto_2
.end method

.method public getDownloadSize()J
    .locals 2

    .prologue
    .line 163
    iget-wide v0, p0, Lcom/ta/util/http/FileHttpResponseHandler;->downloadSize:J

    return-wide v0
.end method

.method public getDownloadSpeed()D
    .locals 2

    .prologue
    .line 175
    iget-wide v0, p0, Lcom/ta/util/http/FileHttpResponseHandler;->networkSpeed:J

    long-to-double v0, v0

    return-wide v0
.end method

.method public getFile()Ljava/io/File;
    .locals 1

    .prologue
    .line 114
    iget-object v0, p0, Lcom/ta/util/http/FileHttpResponseHandler;->file:Ljava/io/File;

    return-object v0
.end method

.method public getTempFile()Ljava/io/File;
    .locals 1

    .prologue
    .line 426
    iget-object v0, p0, Lcom/ta/util/http/FileHttpResponseHandler;->tempFile:Ljava/io/File;

    return-object v0
.end method

.method public getTotalSize()J
    .locals 2

    .prologue
    .line 169
    iget-wide v0, p0, Lcom/ta/util/http/FileHttpResponseHandler;->totalSize:J

    return-wide v0
.end method

.method public getTotalTime()J
    .locals 2

    .prologue
    .line 186
    iget-wide v0, p0, Lcom/ta/util/http/FileHttpResponseHandler;->totalTime:J

    return-wide v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 119
    iget-object v0, p0, Lcom/ta/util/http/FileHttpResponseHandler;->url:Ljava/lang/String;

    return-object v0
.end method

.method protected handleFailureMessage(Ljava/lang/Throwable;[B)V
    .locals 0
    .param p1, "e"    # Ljava/lang/Throwable;
    .param p2, "responseBody"    # [B

    .prologue
    .line 231
    invoke-virtual {p0, p1, p2}, Lcom/ta/util/http/FileHttpResponseHandler;->onFailure(Ljava/lang/Throwable;[B)V

    .line 232
    return-void
.end method

.method protected handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 238
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 246
    invoke-super {p0, p1}, Lcom/ta/util/http/AsyncHttpResponseHandler;->handleMessage(Landroid/os/Message;)V

    .line 249
    :goto_0
    return-void

    .line 241
    :pswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    .line 242
    .local v0, "response":[Ljava/lang/Object;
    const/4 v1, 0x0

    aget-object v1, v0, v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 243
    const/4 v1, 0x1

    aget-object v1, v0, v1

    check-cast v1, [B

    .line 242
    invoke-virtual {p0, v2, v1}, Lcom/ta/util/http/FileHttpResponseHandler;->handleSuccessMessage(I[B)V

    goto :goto_0

    .line 238
    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
    .end packed-switch
.end method

.method protected handleSuccessMessage(I[B)V
    .locals 0
    .param p1, "statusCode"    # I
    .param p2, "responseBody"    # [B

    .prologue
    .line 226
    invoke-virtual {p0, p1, p2}, Lcom/ta/util/http/FileHttpResponseHandler;->onSuccess(I[B)V

    .line 227
    return-void
.end method

.method public isInterrupt()Z
    .locals 1

    .prologue
    .line 152
    iget-boolean v0, p0, Lcom/ta/util/http/FileHttpResponseHandler;->interrupt:Z

    return v0
.end method

.method public onFailure(Ljava/lang/Throwable;[B)V
    .locals 0
    .param p1, "error"    # Ljava/lang/Throwable;
    .param p2, "binaryData"    # [B

    .prologue
    .line 201
    invoke-virtual {p0, p1}, Lcom/ta/util/http/FileHttpResponseHandler;->onFailure(Ljava/lang/Throwable;)V

    .line 202
    return-void
.end method

.method public onSuccess(I[B)V
    .locals 0
    .param p1, "statusCode"    # I
    .param p2, "binaryData"    # [B

    .prologue
    .line 196
    invoke-virtual {p0, p2}, Lcom/ta/util/http/FileHttpResponseHandler;->onSuccess([B)V

    .line 197
    return-void
.end method

.method public onSuccess([B)V
    .locals 1
    .param p1, "binaryData"    # [B

    .prologue
    .line 191
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {p0, v0}, Lcom/ta/util/http/FileHttpResponseHandler;->onSuccess(Ljava/lang/String;)V

    .line 192
    return-void
.end method

.method protected sendFailureMessage(Ljava/lang/Throwable;[B)V
    .locals 3
    .param p1, "e"    # Ljava/lang/Throwable;
    .param p2, "responseBody"    # [B

    .prologue
    const/4 v2, 0x1

    .line 213
    .line 214
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    aput-object p2, v0, v2

    .line 213
    invoke-virtual {p0, v2, v0}, Lcom/ta/util/http/FileHttpResponseHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/ta/util/http/FileHttpResponseHandler;->sendMessage(Landroid/os/Message;)V

    .line 215
    return-void
.end method

.method protected sendProgressMessage(JJJ)V
    .locals 4
    .param p1, "totalSize"    # J
    .param p3, "currentSize"    # J
    .param p5, "speed"    # J

    .prologue
    const/4 v3, 0x0

    .line 220
    .line 221
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    aput-object v1, v0, v3

    const/4 v1, 0x1

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    invoke-static {p5, p6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v0, v1

    .line 220
    invoke-virtual {p0, v3, v0}, Lcom/ta/util/http/FileHttpResponseHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/ta/util/http/FileHttpResponseHandler;->sendMessage(Landroid/os/Message;)V

    .line 222
    return-void
.end method

.method protected sendResponseMessage(Lorg/apache/http/HttpResponse;)V
    .locals 14
    .param p1, "response"    # Lorg/apache/http/HttpResponse;

    .prologue
    .line 255
    const/4 v4, 0x0

    .line 256
    .local v4, "error":Ljava/lang/Throwable;
    const/4 v6, 0x0

    .line 257
    .local v6, "responseBody":[B
    const-wide/16 v7, -0x1

    .line 258
    .local v7, "result":J
    const/4 v9, 0x0

    .line 262
    .local v9, "statusCode":I
    :try_start_0
    invoke-interface {p1}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v10

    invoke-interface {v10}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v9

    .line 263
    invoke-interface {p1}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v10

    invoke-interface {v10}, Lorg/apache/http/HttpEntity;->getContentLength()J

    move-result-wide v1

    .line 265
    .local v1, "contentLenght":J
    const-wide/16 v10, -0x1

    cmp-long v10, v1, v10

    if-nez v10, :cond_0

    .line 267
    invoke-interface {p1}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v10

    invoke-interface {v10}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v10

    invoke-virtual {v10}, Ljava/io/InputStream;->available()I

    move-result v10

    int-to-long v1, v10

    .line 269
    :cond_0
    iget-wide v10, p0, Lcom/ta/util/http/FileHttpResponseHandler;->previousFileSize:J

    add-long/2addr v10, v1

    iput-wide v10, p0, Lcom/ta/util/http/FileHttpResponseHandler;->totalSize:J

    .line 271
    const-string v10, "FileHttpResponseHandler"

    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "totalSize: "

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v12, p0, Lcom/ta/util/http/FileHttpResponseHandler;->totalSize:J

    invoke-virtual {v11, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/ta/util/TALogger;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 273
    iget-object v10, p0, Lcom/ta/util/http/FileHttpResponseHandler;->file:Ljava/io/File;

    invoke-virtual {v10}, Ljava/io/File;->exists()Z

    move-result v10

    if-eqz v10, :cond_3

    iget-wide v10, p0, Lcom/ta/util/http/FileHttpResponseHandler;->totalSize:J

    iget-object v12, p0, Lcom/ta/util/http/FileHttpResponseHandler;->file:Ljava/io/File;

    invoke-virtual {v12}, Ljava/io/File;->length()J

    move-result-wide v12

    cmp-long v10, v10, v12

    if-nez v10, :cond_3

    .line 275
    const-string v10, "FileHttpResponseHandler"

    .line 276
    const-string v11, "Output file already exists. Skipping download."

    .line 275
    invoke-static {v10, v11}, Lcom/ta/util/TALogger;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 277
    new-instance v10, Lcom/ta/exception/FileAlreadyExistException;

    .line 278
    const-string v11, "Output file already exists. Skipping download."

    .line 277
    invoke-direct {v10, v11}, Lcom/ta/exception/FileAlreadyExistException;-><init>(Ljava/lang/String;)V

    throw v10
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/ta/exception/FileAlreadyExistException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3

    .line 305
    .end local v1    # "contentLenght":J
    :catch_0
    move-exception v3

    .line 308
    .local v3, "e":Ljava/io/FileNotFoundException;
    invoke-virtual {p0, v3, v6}, Lcom/ta/util/http/FileHttpResponseHandler;->sendFailureMessage(Ljava/lang/Throwable;[B)V

    .line 309
    move-object v4, v3

    .line 327
    .end local v3    # "e":Ljava/io/FileNotFoundException;
    :goto_0
    invoke-direct {p0}, Lcom/ta/util/http/FileHttpResponseHandler;->stopTimer()V

    .line 331
    const-wide/16 v10, 0x64

    :try_start_1
    invoke-static {v10, v11}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_4

    .line 337
    :goto_1
    const-wide/16 v10, -0x1

    cmp-long v10, v7, v10

    if-eqz v10, :cond_1

    iget-boolean v10, p0, Lcom/ta/util/http/FileHttpResponseHandler;->interrupt:Z

    if-nez v10, :cond_1

    if-eqz v4, :cond_7

    .line 339
    :cond_1
    if-eqz v4, :cond_2

    .line 341
    const-string v10, "FileHttpResponseHandler"

    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "Download failed."

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 342
    instance-of v10, v4, Lcom/ta/exception/FileAlreadyExistException;

    if-eqz v10, :cond_6

    .line 344
    const-string v10, "\u4e0b\u8f7d\u6210\u529f\uff01"

    invoke-virtual {v10}, Ljava/lang/String;->getBytes()[B

    move-result-object v10

    invoke-virtual {p0, v9, v10}, Lcom/ta/util/http/FileHttpResponseHandler;->sendSuccessMessage(I[B)V

    .line 355
    :cond_2
    :goto_2
    return-void

    .line 279
    .restart local v1    # "contentLenght":J
    :cond_3
    :try_start_2
    iget-object v10, p0, Lcom/ta/util/http/FileHttpResponseHandler;->tempFile:Ljava/io/File;

    invoke-virtual {v10}, Ljava/io/File;->exists()Z

    move-result v10

    if-eqz v10, :cond_4

    .line 284
    const-string v10, "FileHttpResponseHandler"

    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "yahooo: "

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 285
    invoke-interface {p1}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v12

    invoke-interface {v12}, Lorg/apache/http/HttpEntity;->getContentLength()J

    move-result-wide v12

    invoke-virtual {v11, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 284
    invoke-static {v10, v11}, Lcom/ta/util/TALogger;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 286
    iget-object v10, p0, Lcom/ta/util/http/FileHttpResponseHandler;->tempFile:Ljava/io/File;

    invoke-virtual {v10}, Ljava/io/File;->length()J

    move-result-wide v10

    iput-wide v10, p0, Lcom/ta/util/http/FileHttpResponseHandler;->previousFileSize:J

    .line 288
    const-string v10, "FileHttpResponseHandler"

    const-string v11, "File is not complete, download now."

    invoke-static {v10, v11}, Lcom/ta/util/TALogger;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 289
    const-string v10, "FileHttpResponseHandler"

    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "File length:"

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v12, p0, Lcom/ta/util/http/FileHttpResponseHandler;->tempFile:Ljava/io/File;

    invoke-virtual {v12}, Ljava/io/File;->length()J

    move-result-wide v12

    invoke-virtual {v11, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 290
    const-string v12, " totalSize:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-wide v12, p0, Lcom/ta/util/http/FileHttpResponseHandler;->totalSize:J

    invoke-virtual {v11, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 289
    invoke-static {v10, v11}, Lcom/ta/util/TALogger;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 293
    :cond_4
    new-instance v10, Lcom/ta/util/http/FileHttpResponseHandler$ProgressReportingRandomAccessFile;

    iget-object v11, p0, Lcom/ta/util/http/FileHttpResponseHandler;->tempFile:Ljava/io/File;

    const-string v12, "rw"

    invoke-direct {v10, p0, v11, v12}, Lcom/ta/util/http/FileHttpResponseHandler$ProgressReportingRandomAccessFile;-><init>(Lcom/ta/util/http/FileHttpResponseHandler;Ljava/io/File;Ljava/lang/String;)V

    iput-object v10, p0, Lcom/ta/util/http/FileHttpResponseHandler;->outputStream:Ljava/io/RandomAccessFile;

    .line 294
    invoke-interface {p1}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v10

    invoke-interface {v10}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v5

    .line 295
    .local v5, "input":Ljava/io/InputStream;
    invoke-direct {p0}, Lcom/ta/util/http/FileHttpResponseHandler;->startTimer()V

    .line 296
    iget-object v10, p0, Lcom/ta/util/http/FileHttpResponseHandler;->outputStream:Ljava/io/RandomAccessFile;

    invoke-virtual {p0, v5, v10}, Lcom/ta/util/http/FileHttpResponseHandler;->copy(Ljava/io/InputStream;Ljava/io/RandomAccessFile;)I

    move-result v0

    .line 297
    .local v0, "bytesCopied":I
    iget-wide v10, p0, Lcom/ta/util/http/FileHttpResponseHandler;->previousFileSize:J

    int-to-long v12, v0

    add-long/2addr v10, v12

    iget-wide v12, p0, Lcom/ta/util/http/FileHttpResponseHandler;->totalSize:J

    cmp-long v10, v10, v12

    if-eqz v10, :cond_5

    .line 298
    iget-wide v10, p0, Lcom/ta/util/http/FileHttpResponseHandler;->totalSize:J

    const-wide/16 v12, -0x1

    cmp-long v10, v10, v12

    if-eqz v10, :cond_5

    iget-boolean v10, p0, Lcom/ta/util/http/FileHttpResponseHandler;->interrupt:Z

    if-nez v10, :cond_5

    .line 300
    new-instance v10, Ljava/io/IOException;

    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "Download incomplete: "

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 301
    const-string v12, " != "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-wide v12, p0, Lcom/ta/util/http/FileHttpResponseHandler;->totalSize:J

    invoke-virtual {v11, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 300
    invoke-direct {v10, v11}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 310
    .end local v0    # "bytesCopied":I
    .end local v1    # "contentLenght":J
    .end local v5    # "input":Ljava/io/InputStream;
    :catch_1
    move-exception v3

    .line 314
    .local v3, "e":Lcom/ta/exception/FileAlreadyExistException;
    move-object v4, v3

    goto/16 :goto_0

    .line 303
    .end local v3    # "e":Lcom/ta/exception/FileAlreadyExistException;
    .restart local v0    # "bytesCopied":I
    .restart local v1    # "contentLenght":J
    .restart local v5    # "input":Ljava/io/InputStream;
    :cond_5
    const-string v10, "FileHttpResponseHandler"

    const-string v11, "Download completed successfully."

    invoke-static {v10, v11}, Lcom/ta/util/TALogger;->v(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Lcom/ta/exception/FileAlreadyExistException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3

    .line 304
    int-to-long v7, v0

    goto/16 :goto_0

    .line 315
    .end local v0    # "bytesCopied":I
    .end local v1    # "contentLenght":J
    .end local v5    # "input":Ljava/io/InputStream;
    :catch_2
    move-exception v3

    .line 318
    .local v3, "e":Ljava/lang/IllegalStateException;
    move-object v4, v3

    goto/16 :goto_0

    .line 320
    .end local v3    # "e":Ljava/lang/IllegalStateException;
    :catch_3
    move-exception v3

    .line 324
    .local v3, "e":Ljava/io/IOException;
    move-object v4, v3

    goto/16 :goto_0

    .line 332
    .end local v3    # "e":Ljava/io/IOException;
    :catch_4
    move-exception v3

    .line 335
    .local v3, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v3}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto/16 :goto_1

    .line 348
    .end local v3    # "e":Ljava/lang/InterruptedException;
    :cond_6
    invoke-virtual {p0, v4, v6}, Lcom/ta/util/http/FileHttpResponseHandler;->sendFailureMessage(Ljava/lang/Throwable;[B)V

    goto/16 :goto_2

    .line 353
    :cond_7
    iget-object v10, p0, Lcom/ta/util/http/FileHttpResponseHandler;->tempFile:Ljava/io/File;

    iget-object v11, p0, Lcom/ta/util/http/FileHttpResponseHandler;->file:Ljava/io/File;

    invoke-virtual {v10, v11}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 354
    const-string v10, "\u4e0b\u8f7d\u6210\u529f\uff01"

    invoke-virtual {v10}, Ljava/lang/String;->getBytes()[B

    move-result-object v10

    invoke-virtual {p0, v9, v10}, Lcom/ta/util/http/FileHttpResponseHandler;->sendSuccessMessage(I[B)V

    goto/16 :goto_2
.end method

.method protected sendSuccessMessage(I[B)V
    .locals 4
    .param p1, "statusCode"    # I
    .param p2, "responseBody"    # [B

    .prologue
    .line 206
    const/4 v0, 0x4

    .line 207
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object p2, v1, v2

    .line 206
    invoke-virtual {p0, v0, v1}, Lcom/ta/util/http/FileHttpResponseHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/ta/util/http/FileHttpResponseHandler;->sendMessage(Landroid/os/Message;)V

    .line 208
    return-void
.end method

.method public setInterrupt(Z)V
    .locals 0
    .param p1, "interrupt"    # Z

    .prologue
    .line 157
    iput-boolean p1, p0, Lcom/ta/util/http/FileHttpResponseHandler;->interrupt:Z

    .line 158
    return-void
.end method

.method public setPreviousFileSize(J)V
    .locals 0
    .param p1, "previousFileSize"    # J

    .prologue
    .line 180
    iput-wide p1, p0, Lcom/ta/util/http/FileHttpResponseHandler;->previousFileSize:J

    .line 181
    return-void
.end method
