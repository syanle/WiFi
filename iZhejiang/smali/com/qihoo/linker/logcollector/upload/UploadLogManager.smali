.class public Lcom/qihoo/linker/logcollector/upload/UploadLogManager;
.super Ljava/lang/Object;
.source "UploadLogManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/qihoo/linker/logcollector/upload/UploadLogManager$MyHandler;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static volatile mHandler:Lcom/qihoo/linker/logcollector/upload/UploadLogManager$MyHandler;

.field private static sInstance:Lcom/qihoo/linker/logcollector/upload/UploadLogManager;


# instance fields
.field private volatile isRunning:Z

.field private mContext:Landroid/content/Context;

.field private mHandlerThread:Landroid/os/HandlerThread;

.field private volatile mLooper:Landroid/os/Looper;

.field private params:Lcom/qihoo/linker/logcollector/upload/HttpParameters;

.field private url:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 21
    const-class v0, Lcom/qihoo/linker/logcollector/upload/UploadLogManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/qihoo/linker/logcollector/upload/UploadLogManager;->TAG:Ljava/lang/String;

    .line 29
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "c"    # Landroid/content/Context;

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/qihoo/linker/logcollector/upload/UploadLogManager;->isRunning:Z

    .line 40
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/qihoo/linker/logcollector/upload/UploadLogManager;->mContext:Landroid/content/Context;

    .line 41
    new-instance v0, Landroid/os/HandlerThread;

    new-instance v1, Ljava/lang/StringBuilder;

    sget-object v2, Lcom/qihoo/linker/logcollector/upload/UploadLogManager;->TAG:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, ":HandlerThread"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/qihoo/linker/logcollector/upload/UploadLogManager;->mHandlerThread:Landroid/os/HandlerThread;

    .line 42
    iget-object v0, p0, Lcom/qihoo/linker/logcollector/upload/UploadLogManager;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 45
    return-void
.end method

.method static synthetic access$0(Lcom/qihoo/linker/logcollector/upload/UploadLogManager;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lcom/qihoo/linker/logcollector/upload/UploadLogManager;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1(Lcom/qihoo/linker/logcollector/upload/UploadLogManager;Z)V
    .locals 0

    .prologue
    .line 33
    iput-boolean p1, p0, Lcom/qihoo/linker/logcollector/upload/UploadLogManager;->isRunning:Z

    return-void
.end method

.method static synthetic access$2(Lcom/qihoo/linker/logcollector/upload/UploadLogManager;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/qihoo/linker/logcollector/upload/UploadLogManager;->url:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$3(Lcom/qihoo/linker/logcollector/upload/UploadLogManager;)Lcom/qihoo/linker/logcollector/upload/HttpParameters;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/qihoo/linker/logcollector/upload/UploadLogManager;->params:Lcom/qihoo/linker/logcollector/upload/HttpParameters;

    return-object v0
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/qihoo/linker/logcollector/upload/UploadLogManager;
    .locals 2
    .param p0, "c"    # Landroid/content/Context;

    .prologue
    .line 48
    const-class v1, Lcom/qihoo/linker/logcollector/upload/UploadLogManager;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/qihoo/linker/logcollector/upload/UploadLogManager;->sInstance:Lcom/qihoo/linker/logcollector/upload/UploadLogManager;

    if-nez v0, :cond_0

    .line 49
    new-instance v0, Lcom/qihoo/linker/logcollector/upload/UploadLogManager;

    invoke-direct {v0, p0}, Lcom/qihoo/linker/logcollector/upload/UploadLogManager;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/qihoo/linker/logcollector/upload/UploadLogManager;->sInstance:Lcom/qihoo/linker/logcollector/upload/UploadLogManager;

    .line 51
    :cond_0
    sget-object v0, Lcom/qihoo/linker/logcollector/upload/UploadLogManager;->sInstance:Lcom/qihoo/linker/logcollector/upload/UploadLogManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 48
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public uploadLogFile(Ljava/lang/String;Lcom/qihoo/linker/logcollector/upload/HttpParameters;)V
    .locals 2
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "params"    # Lcom/qihoo/linker/logcollector/upload/HttpParameters;

    .prologue
    .line 55
    iput-object p1, p0, Lcom/qihoo/linker/logcollector/upload/UploadLogManager;->url:Ljava/lang/String;

    .line 56
    iput-object p2, p0, Lcom/qihoo/linker/logcollector/upload/UploadLogManager;->params:Lcom/qihoo/linker/logcollector/upload/HttpParameters;

    .line 58
    iget-object v0, p0, Lcom/qihoo/linker/logcollector/upload/UploadLogManager;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    iput-object v0, p0, Lcom/qihoo/linker/logcollector/upload/UploadLogManager;->mLooper:Landroid/os/Looper;

    .line 59
    new-instance v0, Lcom/qihoo/linker/logcollector/upload/UploadLogManager$MyHandler;

    iget-object v1, p0, Lcom/qihoo/linker/logcollector/upload/UploadLogManager;->mLooper:Landroid/os/Looper;

    invoke-direct {v0, p0, v1}, Lcom/qihoo/linker/logcollector/upload/UploadLogManager$MyHandler;-><init>(Lcom/qihoo/linker/logcollector/upload/UploadLogManager;Landroid/os/Looper;)V

    sput-object v0, Lcom/qihoo/linker/logcollector/upload/UploadLogManager;->mHandler:Lcom/qihoo/linker/logcollector/upload/UploadLogManager$MyHandler;

    .line 60
    iget-object v0, p0, Lcom/qihoo/linker/logcollector/upload/UploadLogManager;->mHandlerThread:Landroid/os/HandlerThread;

    if-nez v0, :cond_1

    .line 68
    :cond_0
    :goto_0
    return-void

    .line 63
    :cond_1
    iget-boolean v0, p0, Lcom/qihoo/linker/logcollector/upload/UploadLogManager;->isRunning:Z

    if-nez v0, :cond_0

    .line 66
    sget-object v0, Lcom/qihoo/linker/logcollector/upload/UploadLogManager;->mHandler:Lcom/qihoo/linker/logcollector/upload/UploadLogManager$MyHandler;

    sget-object v1, Lcom/qihoo/linker/logcollector/upload/UploadLogManager;->mHandler:Lcom/qihoo/linker/logcollector/upload/UploadLogManager$MyHandler;

    invoke-virtual {v1}, Lcom/qihoo/linker/logcollector/upload/UploadLogManager$MyHandler;->obtainMessage()Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/qihoo/linker/logcollector/upload/UploadLogManager$MyHandler;->sendMessage(Landroid/os/Message;)Z

    .line 67
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/qihoo/linker/logcollector/upload/UploadLogManager;->isRunning:Z

    goto :goto_0
.end method
