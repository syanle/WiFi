.class public Lcom/qihoo/linker/logcollector/LogCollector;
.super Ljava/lang/Object;
.source "LogCollector.java"


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static Upload_Url:Ljava/lang/String;

.field private static isInit:Z

.field private static mContext:Landroid/content/Context;

.field private static mParams:Lcom/qihoo/linker/logcollector/upload/HttpParameters;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 20
    const-class v0, Lcom/qihoo/linker/logcollector/LogCollector;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/qihoo/linker/logcollector/LogCollector;->TAG:Ljava/lang/String;

    .line 26
    const/4 v0, 0x0

    sput-boolean v0, Lcom/qihoo/linker/logcollector/LogCollector;->isInit:Z

    .line 28
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static init(Landroid/content/Context;Ljava/lang/String;Lcom/qihoo/linker/logcollector/upload/HttpParameters;)V
    .locals 2
    .param p0, "c"    # Landroid/content/Context;
    .param p1, "upload_url"    # Ljava/lang/String;
    .param p2, "params"    # Lcom/qihoo/linker/logcollector/upload/HttpParameters;

    .prologue
    .line 32
    if-nez p0, :cond_1

    .line 49
    :cond_0
    :goto_0
    return-void

    .line 36
    :cond_1
    sget-boolean v1, Lcom/qihoo/linker/logcollector/LogCollector;->isInit:Z

    if-nez v1, :cond_0

    .line 40
    sput-object p1, Lcom/qihoo/linker/logcollector/LogCollector;->Upload_Url:Ljava/lang/String;

    .line 41
    sput-object p0, Lcom/qihoo/linker/logcollector/LogCollector;->mContext:Landroid/content/Context;

    .line 42
    sput-object p2, Lcom/qihoo/linker/logcollector/LogCollector;->mParams:Lcom/qihoo/linker/logcollector/upload/HttpParameters;

    .line 44
    invoke-static {p0}, Lcom/qihoo/linker/logcollector/capture/CrashHandler;->getInstance(Landroid/content/Context;)Lcom/qihoo/linker/logcollector/capture/CrashHandler;

    move-result-object v0

    .line 45
    .local v0, "crashHandler":Lcom/qihoo/linker/logcollector/capture/CrashHandler;
    invoke-virtual {v0}, Lcom/qihoo/linker/logcollector/capture/CrashHandler;->init()V

    .line 47
    const/4 v1, 0x1

    sput-boolean v1, Lcom/qihoo/linker/logcollector/LogCollector;->isInit:Z

    goto :goto_0
.end method

.method public static setDebugMode(Z)V
    .locals 0
    .param p0, "isDebug"    # Z

    .prologue
    .line 70
    sput-boolean p0, Lcom/qihoo/linker/logcollector/utils/Constants;->DEBUG:Z

    .line 71
    sput-boolean p0, Lcom/qihoo/linker/logcollector/utils/LogHelper;->enableDefaultLog:Z

    .line 72
    return-void
.end method

.method public static upload(Z)V
    .locals 4
    .param p0, "isWifiOnly"    # Z

    .prologue
    .line 52
    sget-object v1, Lcom/qihoo/linker/logcollector/LogCollector;->mContext:Landroid/content/Context;

    if-eqz v1, :cond_0

    sget-object v1, Lcom/qihoo/linker/logcollector/LogCollector;->Upload_Url:Ljava/lang/String;

    if-nez v1, :cond_2

    .line 53
    :cond_0
    sget-object v1, Lcom/qihoo/linker/logcollector/LogCollector;->TAG:Ljava/lang/String;

    const-string v2, "please check if init() or not"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    :cond_1
    :goto_0
    return-void

    .line 56
    :cond_2
    sget-object v1, Lcom/qihoo/linker/logcollector/LogCollector;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/qihoo/linker/logcollector/utils/LogCollectorUtility;->isNetworkConnected(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 60
    sget-object v1, Lcom/qihoo/linker/logcollector/LogCollector;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/qihoo/linker/logcollector/utils/LogCollectorUtility;->isWifiConnected(Landroid/content/Context;)Z

    move-result v0

    .line 62
    .local v0, "isWifiMode":Z
    if-eqz p0, :cond_3

    if-eqz v0, :cond_1

    .line 66
    :cond_3
    sget-object v1, Lcom/qihoo/linker/logcollector/LogCollector;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/qihoo/linker/logcollector/upload/UploadLogManager;->getInstance(Landroid/content/Context;)Lcom/qihoo/linker/logcollector/upload/UploadLogManager;

    move-result-object v1

    sget-object v2, Lcom/qihoo/linker/logcollector/LogCollector;->Upload_Url:Ljava/lang/String;

    sget-object v3, Lcom/qihoo/linker/logcollector/LogCollector;->mParams:Lcom/qihoo/linker/logcollector/upload/HttpParameters;

    invoke-virtual {v1, v2, v3}, Lcom/qihoo/linker/logcollector/upload/UploadLogManager;->uploadLogFile(Ljava/lang/String;Lcom/qihoo/linker/logcollector/upload/HttpParameters;)V

    goto :goto_0
.end method
