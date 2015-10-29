.class public Lcom/ta/util/download/DownloadManager;
.super Ljava/lang/Thread;
.source "DownloadManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ta/util/download/DownloadManager$handlerQueue;
    }
.end annotation


# static fields
.field public static final FILE_ROOT:Ljava/lang/String;

.field private static final MAX_DOWNLOAD_THREAD_COUNT:I = 0x3

.field private static final MAX_handler_COUNT:I = 0x64

.field private static final SDCARD_ROOT:Ljava/lang/String;

.field private static downloadManager:Lcom/ta/util/download/DownloadManager;


# instance fields
.field private isRunning:Ljava/lang/Boolean;

.field private mDownLoadCallback:Lcom/ta/util/download/DownLoadCallback;

.field private mDownloadinghandlers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/ta/util/http/AsyncHttpResponseHandler;",
            ">;"
        }
    .end annotation
.end field

.field private mPausinghandlers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/ta/util/http/AsyncHttpResponseHandler;",
            ">;"
        }
    .end annotation
.end field

.field private mhandlerQueue:Lcom/ta/util/download/DownloadManager$handlerQueue;

.field private rootPath:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 43
    new-instance v0, Ljava/lang/StringBuilder;

    .line 44
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 43
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/ta/util/download/DownloadManager;->SDCARD_ROOT:Ljava/lang/String;

    .line 45
    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v1, Lcom/ta/util/download/DownloadManager;->SDCARD_ROOT:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "thinkandroid/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/ta/util/download/DownloadManager;->FILE_ROOT:Ljava/lang/String;

    .line 48
    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 71
    sget-object v0, Lcom/ta/util/download/DownloadManager;->FILE_ROOT:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/ta/util/download/DownloadManager;-><init>(Ljava/lang/String;)V

    .line 72
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;)V
    .locals 2
    .param p1, "rootPath"    # Ljava/lang/String;

    .prologue
    .line 74
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 42
    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/ta/util/download/DownloadManager;->isRunning:Ljava/lang/Boolean;

    .line 47
    const-string v1, ""

    iput-object v1, p0, Lcom/ta/util/download/DownloadManager;->rootPath:Ljava/lang/String;

    .line 76
    iput-object p1, p0, Lcom/ta/util/download/DownloadManager;->rootPath:Ljava/lang/String;

    .line 77
    new-instance v1, Lcom/ta/util/download/DownloadManager$handlerQueue;

    invoke-direct {v1, p0}, Lcom/ta/util/download/DownloadManager$handlerQueue;-><init>(Lcom/ta/util/download/DownloadManager;)V

    iput-object v1, p0, Lcom/ta/util/download/DownloadManager;->mhandlerQueue:Lcom/ta/util/download/DownloadManager$handlerQueue;

    .line 78
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/ta/util/download/DownloadManager;->mDownloadinghandlers:Ljava/util/List;

    .line 79
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/ta/util/download/DownloadManager;->mPausinghandlers:Ljava/util/List;

    .line 81
    invoke-static {p1}, Lcom/ta/common/TAStringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 83
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 84
    .local v0, "rootFile":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    .line 86
    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    .line 89
    .end local v0    # "rootFile":Ljava/io/File;
    :cond_0
    return-void
.end method

.method static synthetic access$0(Lcom/ta/util/download/DownloadManager;)Ljava/util/List;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/ta/util/download/DownloadManager;->mDownloadinghandlers:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$1(Lcom/ta/util/download/DownloadManager;)Lcom/ta/util/download/DownLoadCallback;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/ta/util/download/DownloadManager;->mDownLoadCallback:Lcom/ta/util/download/DownLoadCallback;

    return-object v0
.end method

.method private addHandler(Lcom/ta/util/http/AsyncHttpResponseHandler;)V
    .locals 1
    .param p1, "handler"    # Lcom/ta/util/http/AsyncHttpResponseHandler;

    .prologue
    .line 181
    move-object v0, p1

    check-cast v0, Lcom/ta/util/http/FileHttpResponseHandler;

    invoke-virtual {v0}, Lcom/ta/util/http/FileHttpResponseHandler;->getUrl()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/ta/util/download/DownloadManager;->broadcastAddHandler(Ljava/lang/String;)V

    .line 182
    iget-object v0, p0, Lcom/ta/util/download/DownloadManager;->mhandlerQueue:Lcom/ta/util/download/DownloadManager$handlerQueue;

    invoke-virtual {v0, p1}, Lcom/ta/util/download/DownloadManager$handlerQueue;->offer(Lcom/ta/util/http/AsyncHttpResponseHandler;)V

    .line 184
    invoke-virtual {p0}, Lcom/ta/util/download/DownloadManager;->isAlive()Z

    move-result v0

    if-nez v0, :cond_0

    .line 186
    invoke-virtual {p0}, Lcom/ta/util/download/DownloadManager;->startManage()V

    .line 188
    :cond_0
    return-void
.end method

.method private broadcastAddHandler(Ljava/lang/String;)V
    .locals 1
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 193
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/ta/util/download/DownloadManager;->broadcastAddHandler(Ljava/lang/String;Z)V

    .line 194
    return-void
.end method

.method private broadcastAddHandler(Ljava/lang/String;Z)V
    .locals 2
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "isInterrupt"    # Z

    .prologue
    .line 199
    iget-object v0, p0, Lcom/ta/util/download/DownloadManager;->mDownLoadCallback:Lcom/ta/util/download/DownLoadCallback;

    if-eqz v0, :cond_0

    .line 201
    iget-object v0, p0, Lcom/ta/util/download/DownloadManager;->mDownLoadCallback:Lcom/ta/util/download/DownLoadCallback;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/ta/util/download/DownLoadCallback;->sendAddMessage(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 204
    :cond_0
    return-void
.end method

.method public static getDownloadManager()Lcom/ta/util/download/DownloadManager;
    .locals 2

    .prologue
    .line 52
    sget-object v0, Lcom/ta/util/download/DownloadManager;->downloadManager:Lcom/ta/util/download/DownloadManager;

    if-nez v0, :cond_0

    .line 54
    new-instance v0, Lcom/ta/util/download/DownloadManager;

    sget-object v1, Lcom/ta/util/download/DownloadManager;->FILE_ROOT:Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/ta/util/download/DownloadManager;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/ta/util/download/DownloadManager;->downloadManager:Lcom/ta/util/download/DownloadManager;

    .line 56
    :cond_0
    sget-object v0, Lcom/ta/util/download/DownloadManager;->downloadManager:Lcom/ta/util/download/DownloadManager;

    return-object v0
.end method

.method public static getDownloadManager(Ljava/lang/String;)Lcom/ta/util/download/DownloadManager;
    .locals 1
    .param p0, "rootPath"    # Ljava/lang/String;

    .prologue
    .line 62
    sget-object v0, Lcom/ta/util/download/DownloadManager;->downloadManager:Lcom/ta/util/download/DownloadManager;

    if-nez v0, :cond_0

    .line 64
    new-instance v0, Lcom/ta/util/download/DownloadManager;

    invoke-direct {v0, p0}, Lcom/ta/util/download/DownloadManager;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/ta/util/download/DownloadManager;->downloadManager:Lcom/ta/util/download/DownloadManager;

    .line 66
    :cond_0
    sget-object v0, Lcom/ta/util/download/DownloadManager;->downloadManager:Lcom/ta/util/download/DownloadManager;

    return-object v0
.end method

.method private newAsyncHttpResponseHandler(Ljava/lang/String;)Lcom/ta/util/http/AsyncHttpResponseHandler;
    .locals 3
    .param p1, "url"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/MalformedURLException;
        }
    .end annotation

    .prologue
    .line 458
    new-instance v0, Lcom/ta/util/download/DownloadManager$1;

    .line 459
    iget-object v1, p0, Lcom/ta/util/download/DownloadManager;->rootPath:Ljava/lang/String;

    invoke-static {p1}, Lcom/ta/common/TAStringUtils;->getFileNameFromUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 458
    invoke-direct {v0, p0, p1, v1, v2}, Lcom/ta/util/download/DownloadManager$1;-><init>(Lcom/ta/util/download/DownloadManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 513
    .local v0, "handler":Lcom/ta/util/http/FileHttpResponseHandler;
    return-object v0
.end method


# virtual methods
.method public addHandler(Ljava/lang/String;)V
    .locals 3
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 156
    invoke-virtual {p0}, Lcom/ta/util/download/DownloadManager;->getTotalhandlerCount()I

    move-result v1

    const/16 v2, 0x64

    if-lt v1, v2, :cond_1

    .line 158
    iget-object v1, p0, Lcom/ta/util/download/DownloadManager;->mDownLoadCallback:Lcom/ta/util/download/DownLoadCallback;

    if-eqz v1, :cond_0

    .line 160
    iget-object v1, p0, Lcom/ta/util/download/DownloadManager;->mDownLoadCallback:Lcom/ta/util/download/DownLoadCallback;

    const-string v2, "\u4efb\u52a1\u5217\u8868\u5df2\u6ee1"

    invoke-virtual {v1, p1, v2}, Lcom/ta/util/download/DownLoadCallback;->sendFailureMessage(Ljava/lang/String;Ljava/lang/String;)V

    .line 177
    :cond_0
    :goto_0
    return-void

    .line 164
    :cond_1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0, p1}, Lcom/ta/util/download/DownloadManager;->hasHandler(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 171
    :try_start_0
    invoke-direct {p0, p1}, Lcom/ta/util/download/DownloadManager;->newAsyncHttpResponseHandler(Ljava/lang/String;)Lcom/ta/util/http/AsyncHttpResponseHandler;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/ta/util/download/DownloadManager;->addHandler(Lcom/ta/util/http/AsyncHttpResponseHandler;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 172
    :catch_0
    move-exception v0

    .line 174
    .local v0, "e":Ljava/net/MalformedURLException;
    invoke-virtual {v0}, Ljava/net/MalformedURLException;->printStackTrace()V

    goto :goto_0
.end method

.method public checkUncompletehandlers()V
    .locals 3

    .prologue
    .line 305
    invoke-static {}, Lcom/ta/util/download/DownLoadConfigUtil;->getURLArray()Ljava/util/List;

    move-result-object v1

    .line 306
    .local v1, "urlList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-ltz v2, :cond_0

    .line 308
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-lt v0, v2, :cond_1

    .line 313
    .end local v0    # "i":I
    :cond_0
    return-void

    .line 310
    .restart local v0    # "i":I
    :cond_1
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p0, v2}, Lcom/ta/util/download/DownloadManager;->addHandler(Ljava/lang/String;)V

    .line 308
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public close()V
    .locals 1

    .prologue
    .line 121
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/ta/util/download/DownloadManager;->isRunning:Ljava/lang/Boolean;

    .line 122
    invoke-virtual {p0}, Lcom/ta/util/download/DownloadManager;->pauseAllHandler()V

    .line 123
    iget-object v0, p0, Lcom/ta/util/download/DownloadManager;->mDownLoadCallback:Lcom/ta/util/download/DownLoadCallback;

    if-eqz v0, :cond_0

    .line 125
    iget-object v0, p0, Lcom/ta/util/download/DownloadManager;->mDownLoadCallback:Lcom/ta/util/download/DownLoadCallback;

    invoke-virtual {v0}, Lcom/ta/util/download/DownLoadCallback;->sendStopMessage()V

    .line 127
    :cond_0
    invoke-virtual {p0}, Lcom/ta/util/download/DownloadManager;->stop()V

    .line 128
    return-void
.end method

.method public declared-synchronized completehandler(Lcom/ta/util/http/AsyncHttpResponseHandler;)V
    .locals 2
    .param p1, "handler"    # Lcom/ta/util/http/AsyncHttpResponseHandler;

    .prologue
    .line 441
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/ta/util/download/DownloadManager;->mDownloadinghandlers:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 443
    iget-object v0, p0, Lcom/ta/util/download/DownloadManager;->mDownloadinghandlers:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Lcom/ta/util/download/DownLoadConfigUtil;->clearURL(I)V

    .line 444
    iget-object v0, p0, Lcom/ta/util/download/DownloadManager;->mDownloadinghandlers:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 446
    iget-object v0, p0, Lcom/ta/util/download/DownloadManager;->mDownLoadCallback:Lcom/ta/util/download/DownLoadCallback;

    if-eqz v0, :cond_0

    .line 448
    iget-object v0, p0, Lcom/ta/util/download/DownloadManager;->mDownLoadCallback:Lcom/ta/util/download/DownLoadCallback;

    .line 449
    check-cast p1, Lcom/ta/util/http/FileHttpResponseHandler;

    .line 450
    .end local p1    # "handler":Lcom/ta/util/http/AsyncHttpResponseHandler;
    invoke-virtual {p1}, Lcom/ta/util/http/FileHttpResponseHandler;->getUrl()Ljava/lang/String;

    move-result-object v1

    .line 449
    invoke-virtual {v0, v1}, Lcom/ta/util/download/DownLoadCallback;->sendFinishMessage(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 453
    :cond_0
    monitor-exit p0

    return-void

    .line 441
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized continueHandler(Ljava/lang/String;)V
    .locals 3
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 395
    monitor-enter p0

    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    :try_start_0
    iget-object v2, p0, Lcom/ta/util/download/DownloadManager;->mPausinghandlers:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-lt v1, v2, :cond_0

    .line 404
    monitor-exit p0

    return-void

    .line 397
    :cond_0
    :try_start_1
    iget-object v2, p0, Lcom/ta/util/download/DownloadManager;->mPausinghandlers:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ta/util/http/FileHttpResponseHandler;

    .line 398
    .local v0, "handler":Lcom/ta/util/http/FileHttpResponseHandler;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/ta/util/http/FileHttpResponseHandler;->getUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 400
    invoke-virtual {p0, v0}, Lcom/ta/util/download/DownloadManager;->continuehandler(Lcom/ta/util/http/AsyncHttpResponseHandler;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 395
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .end local v0    # "handler":Lcom/ta/util/http/FileHttpResponseHandler;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public declared-synchronized continuehandler(Lcom/ta/util/http/AsyncHttpResponseHandler;)V
    .locals 1
    .param p1, "handler"    # Lcom/ta/util/http/AsyncHttpResponseHandler;

    .prologue
    .line 431
    monitor-enter p0

    if-eqz p1, :cond_0

    .line 433
    :try_start_0
    iget-object v0, p0, Lcom/ta/util/download/DownloadManager;->mPausinghandlers:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 434
    iget-object v0, p0, Lcom/ta/util/download/DownloadManager;->mhandlerQueue:Lcom/ta/util/download/DownloadManager$handlerQueue;

    invoke-virtual {v0, p1}, Lcom/ta/util/download/DownloadManager$handlerQueue;->offer(Lcom/ta/util/http/AsyncHttpResponseHandler;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 436
    :cond_0
    monitor-exit p0

    return-void

    .line 431
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized deleteHandler(Ljava/lang/String;)V
    .locals 5
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 355
    monitor-enter p0

    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    :try_start_0
    iget-object v4, p0, Lcom/ta/util/download/DownloadManager;->mDownloadinghandlers:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-lt v2, v4, :cond_0

    .line 373
    const/4 v2, 0x0

    :goto_1
    iget-object v4, p0, Lcom/ta/util/download/DownloadManager;->mhandlerQueue:Lcom/ta/util/download/DownloadManager$handlerQueue;

    invoke-virtual {v4}, Lcom/ta/util/download/DownloadManager$handlerQueue;->size()I

    move-result v4

    if-lt v2, v4, :cond_4

    .line 381
    const/4 v2, 0x0

    :goto_2
    iget-object v4, p0, Lcom/ta/util/download/DownloadManager;->mPausinghandlers:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v4

    if-lt v2, v4, :cond_6

    .line 389
    :goto_3
    monitor-exit p0

    return-void

    .line 357
    :cond_0
    :try_start_1
    iget-object v4, p0, Lcom/ta/util/download/DownloadManager;->mDownloadinghandlers:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ta/util/http/FileHttpResponseHandler;

    .line 358
    .local v1, "handler":Lcom/ta/util/http/FileHttpResponseHandler;
    if-eqz v1, :cond_3

    invoke-virtual {v1}, Lcom/ta/util/http/FileHttpResponseHandler;->getUrl()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 360
    invoke-virtual {v1}, Lcom/ta/util/http/FileHttpResponseHandler;->getFile()Ljava/io/File;

    move-result-object v0

    .line 361
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 362
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 363
    :cond_1
    invoke-virtual {v1}, Lcom/ta/util/http/FileHttpResponseHandler;->getTempFile()Ljava/io/File;

    move-result-object v3

    .line 364
    .local v3, "tempFile":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 366
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    .line 368
    :cond_2
    const/4 v4, 0x1

    invoke-virtual {v1, v4}, Lcom/ta/util/http/FileHttpResponseHandler;->setInterrupt(Z)V

    .line 369
    invoke-virtual {p0, v1}, Lcom/ta/util/download/DownloadManager;->completehandler(Lcom/ta/util/http/AsyncHttpResponseHandler;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_3

    .line 355
    .end local v0    # "file":Ljava/io/File;
    .end local v1    # "handler":Lcom/ta/util/http/FileHttpResponseHandler;
    .end local v3    # "tempFile":Ljava/io/File;
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4

    .restart local v1    # "handler":Lcom/ta/util/http/FileHttpResponseHandler;
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 375
    .end local v1    # "handler":Lcom/ta/util/http/FileHttpResponseHandler;
    :cond_4
    :try_start_2
    iget-object v4, p0, Lcom/ta/util/download/DownloadManager;->mhandlerQueue:Lcom/ta/util/download/DownloadManager$handlerQueue;

    invoke-virtual {v4, v2}, Lcom/ta/util/download/DownloadManager$handlerQueue;->get(I)Lcom/ta/util/http/AsyncHttpResponseHandler;

    move-result-object v1

    check-cast v1, Lcom/ta/util/http/FileHttpResponseHandler;

    .line 376
    .restart local v1    # "handler":Lcom/ta/util/http/FileHttpResponseHandler;
    if-eqz v1, :cond_5

    invoke-virtual {v1}, Lcom/ta/util/http/FileHttpResponseHandler;->getUrl()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 378
    iget-object v4, p0, Lcom/ta/util/download/DownloadManager;->mhandlerQueue:Lcom/ta/util/download/DownloadManager$handlerQueue;

    invoke-virtual {v4, v1}, Lcom/ta/util/download/DownloadManager$handlerQueue;->remove(Lcom/ta/util/http/AsyncHttpResponseHandler;)Z

    .line 373
    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 383
    .end local v1    # "handler":Lcom/ta/util/http/FileHttpResponseHandler;
    :cond_6
    iget-object v4, p0, Lcom/ta/util/download/DownloadManager;->mPausinghandlers:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ta/util/http/FileHttpResponseHandler;

    .line 384
    .restart local v1    # "handler":Lcom/ta/util/http/FileHttpResponseHandler;
    if-eqz v1, :cond_7

    invoke-virtual {v1}, Lcom/ta/util/http/FileHttpResponseHandler;->getUrl()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 386
    iget-object v4, p0, Lcom/ta/util/download/DownloadManager;->mPausinghandlers:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 381
    :cond_7
    add-int/lit8 v2, v2, 0x1

    goto :goto_2
.end method

.method public getDownloadinghandlerCount()I
    .locals 1

    .prologue
    .line 286
    iget-object v0, p0, Lcom/ta/util/download/DownloadManager;->mDownloadinghandlers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getHandler(Ljava/lang/String;)Lcom/ta/util/http/FileHttpResponseHandler;
    .locals 3
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 252
    const/4 v0, 0x0

    .line 253
    .local v0, "handler":Lcom/ta/util/http/FileHttpResponseHandler;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/ta/util/download/DownloadManager;->mDownloadinghandlers:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lt v1, v2, :cond_0

    .line 258
    const/4 v1, 0x0

    :goto_1
    iget-object v2, p0, Lcom/ta/util/download/DownloadManager;->mhandlerQueue:Lcom/ta/util/download/DownloadManager$handlerQueue;

    invoke-virtual {v2}, Lcom/ta/util/download/DownloadManager$handlerQueue;->size()I

    move-result v2

    if-lt v1, v2, :cond_1

    .line 262
    return-object v0

    .line 255
    :cond_0
    iget-object v2, p0, Lcom/ta/util/download/DownloadManager;->mDownloadinghandlers:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "handler":Lcom/ta/util/http/FileHttpResponseHandler;
    check-cast v0, Lcom/ta/util/http/FileHttpResponseHandler;

    .line 253
    .restart local v0    # "handler":Lcom/ta/util/http/FileHttpResponseHandler;
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 260
    :cond_1
    iget-object v2, p0, Lcom/ta/util/download/DownloadManager;->mhandlerQueue:Lcom/ta/util/download/DownloadManager$handlerQueue;

    invoke-virtual {v2, v1}, Lcom/ta/util/download/DownloadManager$handlerQueue;->get(I)Lcom/ta/util/http/AsyncHttpResponseHandler;

    move-result-object v0

    .end local v0    # "handler":Lcom/ta/util/http/FileHttpResponseHandler;
    check-cast v0, Lcom/ta/util/http/FileHttpResponseHandler;

    .line 258
    .restart local v0    # "handler":Lcom/ta/util/http/FileHttpResponseHandler;
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method public getPausinghandlerCount()I
    .locals 1

    .prologue
    .line 292
    iget-object v0, p0, Lcom/ta/util/download/DownloadManager;->mPausinghandlers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getQueuehandlerCount()I
    .locals 1

    .prologue
    .line 280
    iget-object v0, p0, Lcom/ta/util/download/DownloadManager;->mhandlerQueue:Lcom/ta/util/download/DownloadManager$handlerQueue;

    invoke-virtual {v0}, Lcom/ta/util/download/DownloadManager$handlerQueue;->size()I

    move-result v0

    return v0
.end method

.method public getRootPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Lcom/ta/util/download/DownloadManager;->rootPath:Ljava/lang/String;

    invoke-static {v0}, Lcom/ta/common/TAStringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 95
    sget-object v0, Lcom/ta/util/download/DownloadManager;->FILE_ROOT:Ljava/lang/String;

    iput-object v0, p0, Lcom/ta/util/download/DownloadManager;->rootPath:Ljava/lang/String;

    .line 97
    :cond_0
    iget-object v0, p0, Lcom/ta/util/download/DownloadManager;->rootPath:Ljava/lang/String;

    return-object v0
.end method

.method public getTotalhandlerCount()I
    .locals 2

    .prologue
    .line 298
    invoke-virtual {p0}, Lcom/ta/util/download/DownloadManager;->getQueuehandlerCount()I

    move-result v0

    invoke-virtual {p0}, Lcom/ta/util/download/DownloadManager;->getDownloadinghandlerCount()I

    move-result v1

    add-int/2addr v0, v1

    .line 299
    invoke-virtual {p0}, Lcom/ta/util/download/DownloadManager;->getPausinghandlerCount()I

    move-result v1

    .line 298
    add-int/2addr v0, v1

    return v0
.end method

.method public gethandler(I)Lcom/ta/util/http/AsyncHttpResponseHandler;
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 268
    iget-object v0, p0, Lcom/ta/util/download/DownloadManager;->mDownloadinghandlers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt p1, v0, :cond_0

    .line 270
    iget-object v0, p0, Lcom/ta/util/download/DownloadManager;->mhandlerQueue:Lcom/ta/util/download/DownloadManager$handlerQueue;

    iget-object v1, p0, Lcom/ta/util/download/DownloadManager;->mDownloadinghandlers:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    sub-int v1, p1, v1

    invoke-virtual {v0, v1}, Lcom/ta/util/download/DownloadManager$handlerQueue;->get(I)Lcom/ta/util/http/AsyncHttpResponseHandler;

    move-result-object v0

    .line 273
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/ta/util/download/DownloadManager;->mDownloadinghandlers:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ta/util/http/AsyncHttpResponseHandler;

    goto :goto_0
.end method

.method public hasHandler(Ljava/lang/String;)Z
    .locals 4
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x1

    .line 231
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v3, p0, Lcom/ta/util/download/DownloadManager;->mDownloadinghandlers:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-lt v1, v3, :cond_1

    .line 239
    const/4 v1, 0x0

    :goto_1
    iget-object v3, p0, Lcom/ta/util/download/DownloadManager;->mhandlerQueue:Lcom/ta/util/download/DownloadManager$handlerQueue;

    invoke-virtual {v3}, Lcom/ta/util/download/DownloadManager$handlerQueue;->size()I

    move-result v3

    if-lt v1, v3, :cond_2

    .line 247
    const/4 v2, 0x0

    :cond_0
    return v2

    .line 233
    :cond_1
    iget-object v3, p0, Lcom/ta/util/download/DownloadManager;->mDownloadinghandlers:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ta/util/http/FileHttpResponseHandler;

    .line 234
    .local v0, "handler":Lcom/ta/util/http/FileHttpResponseHandler;
    invoke-virtual {v0}, Lcom/ta/util/http/FileHttpResponseHandler;->getUrl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 231
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 241
    .end local v0    # "handler":Lcom/ta/util/http/FileHttpResponseHandler;
    :cond_2
    iget-object v3, p0, Lcom/ta/util/download/DownloadManager;->mhandlerQueue:Lcom/ta/util/download/DownloadManager$handlerQueue;

    invoke-virtual {v3, v1}, Lcom/ta/util/download/DownloadManager$handlerQueue;->get(I)Lcom/ta/util/http/AsyncHttpResponseHandler;

    move-result-object v0

    check-cast v0, Lcom/ta/util/http/FileHttpResponseHandler;

    .line 242
    .restart local v0    # "handler":Lcom/ta/util/http/FileHttpResponseHandler;
    invoke-virtual {v0}, Lcom/ta/util/http/FileHttpResponseHandler;->getUrl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 239
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method public isRunning()Z
    .locals 1

    .prologue
    .line 133
    iget-object v0, p0, Lcom/ta/util/download/DownloadManager;->isRunning:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public declared-synchronized pauseAllHandler()V
    .locals 3

    .prologue
    .line 334
    monitor-enter p0

    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    :try_start_0
    iget-object v2, p0, Lcom/ta/util/download/DownloadManager;->mhandlerQueue:Lcom/ta/util/download/DownloadManager$handlerQueue;

    invoke-virtual {v2}, Lcom/ta/util/download/DownloadManager$handlerQueue;->size()I

    move-result v2

    if-lt v1, v2, :cond_0

    .line 341
    const/4 v1, 0x0

    :goto_1
    iget-object v2, p0, Lcom/ta/util/download/DownloadManager;->mDownloadinghandlers:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-lt v1, v2, :cond_1

    .line 349
    monitor-exit p0

    return-void

    .line 336
    :cond_0
    :try_start_1
    iget-object v2, p0, Lcom/ta/util/download/DownloadManager;->mhandlerQueue:Lcom/ta/util/download/DownloadManager$handlerQueue;

    invoke-virtual {v2, v1}, Lcom/ta/util/download/DownloadManager$handlerQueue;->get(I)Lcom/ta/util/http/AsyncHttpResponseHandler;

    move-result-object v0

    .line 337
    .local v0, "handler":Lcom/ta/util/http/AsyncHttpResponseHandler;
    iget-object v2, p0, Lcom/ta/util/download/DownloadManager;->mhandlerQueue:Lcom/ta/util/download/DownloadManager$handlerQueue;

    invoke-virtual {v2, v0}, Lcom/ta/util/download/DownloadManager$handlerQueue;->remove(Lcom/ta/util/http/AsyncHttpResponseHandler;)Z

    .line 338
    iget-object v2, p0, Lcom/ta/util/download/DownloadManager;->mPausinghandlers:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 334
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 343
    .end local v0    # "handler":Lcom/ta/util/http/AsyncHttpResponseHandler;
    :cond_1
    iget-object v2, p0, Lcom/ta/util/download/DownloadManager;->mDownloadinghandlers:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ta/util/http/AsyncHttpResponseHandler;

    .line 344
    .restart local v0    # "handler":Lcom/ta/util/http/AsyncHttpResponseHandler;
    if-eqz v0, :cond_2

    .line 346
    invoke-virtual {p0, v0}, Lcom/ta/util/download/DownloadManager;->pausehandler(Lcom/ta/util/http/AsyncHttpResponseHandler;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 341
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 334
    .end local v0    # "handler":Lcom/ta/util/http/AsyncHttpResponseHandler;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public declared-synchronized pauseHandler(Ljava/lang/String;)V
    .locals 3
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 319
    monitor-enter p0

    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    :try_start_0
    iget-object v2, p0, Lcom/ta/util/download/DownloadManager;->mDownloadinghandlers:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-lt v1, v2, :cond_0

    .line 327
    monitor-exit p0

    return-void

    .line 321
    :cond_0
    :try_start_1
    iget-object v2, p0, Lcom/ta/util/download/DownloadManager;->mDownloadinghandlers:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ta/util/http/FileHttpResponseHandler;

    .line 322
    .local v0, "handler":Lcom/ta/util/http/FileHttpResponseHandler;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/ta/util/http/FileHttpResponseHandler;->getUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 324
    invoke-virtual {p0, v0}, Lcom/ta/util/download/DownloadManager;->pausehandler(Lcom/ta/util/http/AsyncHttpResponseHandler;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 319
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .end local v0    # "handler":Lcom/ta/util/http/FileHttpResponseHandler;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public declared-synchronized pausehandler(Lcom/ta/util/http/AsyncHttpResponseHandler;)V
    .locals 5
    .param p1, "handler"    # Lcom/ta/util/http/AsyncHttpResponseHandler;

    .prologue
    .line 409
    monitor-enter p0

    :try_start_0
    move-object v0, p1

    check-cast v0, Lcom/ta/util/http/FileHttpResponseHandler;

    move-object v2, v0

    .line 410
    .local v2, "fileHttpResponseHandler":Lcom/ta/util/http/FileHttpResponseHandler;
    if-eqz p1, :cond_0

    .line 412
    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Lcom/ta/util/http/FileHttpResponseHandler;->setInterrupt(Z)V

    .line 414
    invoke-virtual {v2}, Lcom/ta/util/http/FileHttpResponseHandler;->getUrl()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v3

    .line 417
    .local v3, "url":Ljava/lang/String;
    :try_start_1
    iget-object v4, p0, Lcom/ta/util/download/DownloadManager;->mDownloadinghandlers:Ljava/util/List;

    invoke-interface {v4, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 418
    invoke-direct {p0, v3}, Lcom/ta/util/download/DownloadManager;->newAsyncHttpResponseHandler(Ljava/lang/String;)Lcom/ta/util/http/AsyncHttpResponseHandler;

    move-result-object p1

    .line 419
    iget-object v4, p0, Lcom/ta/util/download/DownloadManager;->mPausinghandlers:Ljava/util/List;

    invoke-interface {v4, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/net/MalformedURLException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 426
    .end local v3    # "url":Ljava/lang/String;
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 420
    .restart local v3    # "url":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 422
    .local v1, "e":Ljava/net/MalformedURLException;
    :try_start_2
    invoke-virtual {v1}, Ljava/net/MalformedURLException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 409
    .end local v1    # "e":Ljava/net/MalformedURLException;
    .end local v2    # "fileHttpResponseHandler":Lcom/ta/util/http/FileHttpResponseHandler;
    .end local v3    # "url":Ljava/lang/String;
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4
.end method

.method public reBroadcastAddAllhandler()V
    .locals 4

    .prologue
    .line 210
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/ta/util/download/DownloadManager;->mDownloadinghandlers:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lt v1, v2, :cond_0

    .line 215
    const/4 v1, 0x0

    :goto_1
    iget-object v2, p0, Lcom/ta/util/download/DownloadManager;->mhandlerQueue:Lcom/ta/util/download/DownloadManager$handlerQueue;

    invoke-virtual {v2}, Lcom/ta/util/download/DownloadManager$handlerQueue;->size()I

    move-result v2

    if-lt v1, v2, :cond_1

    .line 220
    const/4 v1, 0x0

    :goto_2
    iget-object v2, p0, Lcom/ta/util/download/DownloadManager;->mPausinghandlers:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lt v1, v2, :cond_2

    .line 225
    return-void

    .line 212
    :cond_0
    iget-object v2, p0, Lcom/ta/util/download/DownloadManager;->mDownloadinghandlers:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ta/util/http/FileHttpResponseHandler;

    .line 213
    .local v0, "handler":Lcom/ta/util/http/FileHttpResponseHandler;
    invoke-virtual {v0}, Lcom/ta/util/http/FileHttpResponseHandler;->getUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/ta/util/http/FileHttpResponseHandler;->isInterrupt()Z

    move-result v3

    invoke-direct {p0, v2, v3}, Lcom/ta/util/download/DownloadManager;->broadcastAddHandler(Ljava/lang/String;Z)V

    .line 210
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 217
    .end local v0    # "handler":Lcom/ta/util/http/FileHttpResponseHandler;
    :cond_1
    iget-object v2, p0, Lcom/ta/util/download/DownloadManager;->mhandlerQueue:Lcom/ta/util/download/DownloadManager$handlerQueue;

    invoke-virtual {v2, v1}, Lcom/ta/util/download/DownloadManager$handlerQueue;->get(I)Lcom/ta/util/http/AsyncHttpResponseHandler;

    move-result-object v0

    check-cast v0, Lcom/ta/util/http/FileHttpResponseHandler;

    .line 218
    .restart local v0    # "handler":Lcom/ta/util/http/FileHttpResponseHandler;
    invoke-virtual {v0}, Lcom/ta/util/http/FileHttpResponseHandler;->getUrl()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/ta/util/download/DownloadManager;->broadcastAddHandler(Ljava/lang/String;)V

    .line 215
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 222
    .end local v0    # "handler":Lcom/ta/util/http/FileHttpResponseHandler;
    :cond_2
    iget-object v2, p0, Lcom/ta/util/download/DownloadManager;->mPausinghandlers:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ta/util/http/FileHttpResponseHandler;

    .line 223
    .restart local v0    # "handler":Lcom/ta/util/http/FileHttpResponseHandler;
    invoke-virtual {v0}, Lcom/ta/util/http/FileHttpResponseHandler;->getUrl()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/ta/util/download/DownloadManager;->broadcastAddHandler(Ljava/lang/String;)V

    .line 220
    add-int/lit8 v1, v1, 0x1

    goto :goto_2
.end method

.method public run()V
    .locals 2

    .prologue
    .line 140
    invoke-super {p0}, Ljava/lang/Thread;->run()V

    .line 141
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/ta/util/download/DownloadManager;->isRunning:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_1

    .line 152
    return-void

    .line 143
    :cond_1
    iget-object v1, p0, Lcom/ta/util/download/DownloadManager;->mhandlerQueue:Lcom/ta/util/download/DownloadManager$handlerQueue;

    .line 144
    invoke-virtual {v1}, Lcom/ta/util/download/DownloadManager$handlerQueue;->poll()Lcom/ta/util/http/AsyncHttpResponseHandler;

    move-result-object v0

    .line 143
    check-cast v0, Lcom/ta/util/http/FileHttpResponseHandler;

    .line 145
    .local v0, "handler":Lcom/ta/util/http/FileHttpResponseHandler;
    if-eqz v0, :cond_0

    .line 147
    iget-object v1, p0, Lcom/ta/util/download/DownloadManager;->mDownloadinghandlers:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 148
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/ta/util/http/FileHttpResponseHandler;->setInterrupt(Z)V

    goto :goto_0
.end method

.method public setDownLoadCallback(Lcom/ta/util/download/DownLoadCallback;)V
    .locals 0
    .param p1, "downLoadCallback"    # Lcom/ta/util/download/DownLoadCallback;

    .prologue
    .line 102
    iput-object p1, p0, Lcom/ta/util/download/DownloadManager;->mDownLoadCallback:Lcom/ta/util/download/DownLoadCallback;

    .line 103
    return-void
.end method

.method public startManage()V
    .locals 1

    .prologue
    .line 108
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/ta/util/download/DownloadManager;->isRunning:Ljava/lang/Boolean;

    .line 109
    invoke-virtual {p0}, Lcom/ta/util/download/DownloadManager;->start()V

    .line 110
    iget-object v0, p0, Lcom/ta/util/download/DownloadManager;->mDownLoadCallback:Lcom/ta/util/download/DownLoadCallback;

    if-eqz v0, :cond_0

    .line 112
    iget-object v0, p0, Lcom/ta/util/download/DownloadManager;->mDownLoadCallback:Lcom/ta/util/download/DownLoadCallback;

    invoke-virtual {v0}, Lcom/ta/util/download/DownLoadCallback;->sendStartMessage()V

    .line 115
    :cond_0
    return-void
.end method
