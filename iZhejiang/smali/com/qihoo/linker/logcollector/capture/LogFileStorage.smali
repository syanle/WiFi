.class public Lcom/qihoo/linker/logcollector/capture/LogFileStorage;
.super Ljava/lang/Object;
.source "LogFileStorage.java"


# static fields
.field private static final CHARSET:Ljava/lang/String; = "UTF-8"

.field public static final LOG_SUFFIX:Ljava/lang/String; = ".log"

.field private static final TAG:Ljava/lang/String;

.field private static sInstance:Lcom/qihoo/linker/logcollector/capture/LogFileStorage;


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 19
    const-class v0, Lcom/qihoo/linker/logcollector/capture/LogFileStorage;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/qihoo/linker/logcollector/capture/LogFileStorage;->TAG:Ljava/lang/String;

    .line 25
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "ctx"    # Landroid/content/Context;

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/qihoo/linker/logcollector/capture/LogFileStorage;->mContext:Landroid/content/Context;

    .line 31
    return-void
.end method

.method private getExternalLogDir()Ljava/io/File;
    .locals 3

    .prologue
    .line 112
    iget-object v1, p0, Lcom/qihoo/linker/logcollector/capture/LogFileStorage;->mContext:Landroid/content/Context;

    const-string v2, "Log"

    invoke-static {v1, v2}, Lcom/qihoo/linker/logcollector/utils/LogCollectorUtility;->getExternalDir(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 113
    .local v0, "logDir":Ljava/io/File;
    sget-object v1, Lcom/qihoo/linker/logcollector/capture/LogFileStorage;->TAG:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/qihoo/linker/logcollector/utils/LogHelper;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    return-object v0
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/qihoo/linker/logcollector/capture/LogFileStorage;
    .locals 3
    .param p0, "ctx"    # Landroid/content/Context;

    .prologue
    .line 34
    const-class v1, Lcom/qihoo/linker/logcollector/capture/LogFileStorage;

    monitor-enter v1

    if-nez p0, :cond_0

    .line 35
    :try_start_0
    sget-object v0, Lcom/qihoo/linker/logcollector/capture/LogFileStorage;->TAG:Ljava/lang/String;

    const-string v2, "Context is null"

    invoke-static {v0, v2}, Lcom/qihoo/linker/logcollector/utils/LogHelper;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 36
    const/4 v0, 0x0

    .line 41
    :goto_0
    monitor-exit v1

    return-object v0

    .line 38
    :cond_0
    :try_start_1
    sget-object v0, Lcom/qihoo/linker/logcollector/capture/LogFileStorage;->sInstance:Lcom/qihoo/linker/logcollector/capture/LogFileStorage;

    if-nez v0, :cond_1

    .line 39
    new-instance v0, Lcom/qihoo/linker/logcollector/capture/LogFileStorage;

    invoke-direct {v0, p0}, Lcom/qihoo/linker/logcollector/capture/LogFileStorage;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/qihoo/linker/logcollector/capture/LogFileStorage;->sInstance:Lcom/qihoo/linker/logcollector/capture/LogFileStorage;

    .line 41
    :cond_1
    sget-object v0, Lcom/qihoo/linker/logcollector/capture/LogFileStorage;->sInstance:Lcom/qihoo/linker/logcollector/capture/LogFileStorage;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 34
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public deleteUploadLogFile()Z
    .locals 4

    .prologue
    .line 56
    iget-object v2, p0, Lcom/qihoo/linker/logcollector/capture/LogFileStorage;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v0

    .line 57
    .local v0, "dir":Ljava/io/File;
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/qihoo/linker/logcollector/capture/LogFileStorage;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/qihoo/linker/logcollector/utils/LogCollectorUtility;->getMid(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 58
    const-string v3, ".log"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 57
    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 59
    .local v1, "logFile":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    move-result v2

    return v2
.end method

.method public getUploadLogFile()Ljava/io/File;
    .locals 4

    .prologue
    .line 45
    iget-object v2, p0, Lcom/qihoo/linker/logcollector/capture/LogFileStorage;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v0

    .line 46
    .local v0, "dir":Ljava/io/File;
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/qihoo/linker/logcollector/capture/LogFileStorage;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/qihoo/linker/logcollector/utils/LogCollectorUtility;->getMid(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 47
    const-string v3, ".log"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 46
    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 48
    .local v1, "logFile":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 51
    .end local v1    # "logFile":Ljava/io/File;
    :goto_0
    return-object v1

    .restart local v1    # "logFile":Ljava/io/File;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public saveLogFile2Internal(Ljava/lang/String;)Z
    .locals 7
    .param p1, "logString"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x1

    .line 64
    :try_start_0
    iget-object v5, p0, Lcom/qihoo/linker/logcollector/capture/LogFileStorage;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v0

    .line 65
    .local v0, "dir":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_0

    .line 66
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 68
    :cond_0
    new-instance v3, Ljava/io/File;

    new-instance v5, Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/qihoo/linker/logcollector/capture/LogFileStorage;->mContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/qihoo/linker/logcollector/utils/LogCollectorUtility;->getMid(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 69
    const-string v6, ".log"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 68
    invoke-direct {v3, v0, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 70
    .local v3, "logFile":Ljava/io/File;
    new-instance v2, Ljava/io/FileOutputStream;

    const/4 v5, 0x1

    invoke-direct {v2, v3, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    .line 71
    .local v2, "fos":Ljava/io/FileOutputStream;
    const-string v5, "UTF-8"

    invoke-virtual {p1, v5}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/io/FileOutputStream;->write([B)V

    .line 72
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 78
    .end local v0    # "dir":Ljava/io/File;
    .end local v2    # "fos":Ljava/io/FileOutputStream;
    .end local v3    # "logFile":Ljava/io/File;
    :goto_0
    return v4

    .line 73
    :catch_0
    move-exception v1

    .line 74
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 75
    sget-object v4, Lcom/qihoo/linker/logcollector/capture/LogFileStorage;->TAG:Ljava/lang/String;

    const-string v5, "saveLogFile2Internal failed!"

    invoke-static {v4, v5}, Lcom/qihoo/linker/logcollector/utils/LogHelper;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    const/4 v4, 0x0

    goto :goto_0
.end method

.method public saveLogFile2SDcard(Ljava/lang/String;Z)Z
    .locals 7
    .param p1, "logString"    # Ljava/lang/String;
    .param p2, "isAppend"    # Z

    .prologue
    const/4 v4, 0x0

    .line 82
    invoke-static {}, Lcom/qihoo/linker/logcollector/utils/LogCollectorUtility;->isSDcardExsit()Z

    move-result v5

    if-nez v5, :cond_0

    .line 83
    sget-object v5, Lcom/qihoo/linker/logcollector/capture/LogFileStorage;->TAG:Ljava/lang/String;

    const-string v6, "sdcard not exist"

    invoke-static {v5, v6}, Lcom/qihoo/linker/logcollector/utils/LogHelper;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    :goto_0
    return v4

    .line 87
    :cond_0
    :try_start_0
    invoke-direct {p0}, Lcom/qihoo/linker/logcollector/capture/LogFileStorage;->getExternalLogDir()Ljava/io/File;

    move-result-object v2

    .line 88
    .local v2, "logDir":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_1

    .line 89
    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    .line 92
    :cond_1
    new-instance v3, Ljava/io/File;

    new-instance v5, Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/qihoo/linker/logcollector/capture/LogFileStorage;->mContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/qihoo/linker/logcollector/utils/LogCollectorUtility;->getMid(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 93
    const-string v6, ".log"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 92
    invoke-direct {v3, v2, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 98
    .local v3, "logFile":Ljava/io/File;
    sget-object v5, Lcom/qihoo/linker/logcollector/capture/LogFileStorage;->TAG:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/qihoo/linker/logcollector/utils/LogHelper;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, v3, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    .line 101
    .local v1, "fos":Ljava/io/FileOutputStream;
    const-string v5, "UTF-8"

    invoke-virtual {p1, v5}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/io/FileOutputStream;->write([B)V

    .line 102
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 108
    const/4 v4, 0x1

    goto :goto_0

    .line 103
    .end local v1    # "fos":Ljava/io/FileOutputStream;
    .end local v2    # "logDir":Ljava/io/File;
    .end local v3    # "logFile":Ljava/io/File;
    :catch_0
    move-exception v0

    .line 104
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 105
    sget-object v5, Lcom/qihoo/linker/logcollector/capture/LogFileStorage;->TAG:Ljava/lang/String;

    const-string v6, "saveLogFile2SDcard failed!"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
