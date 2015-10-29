.class public Lcom/pubinfo/wifi_core/core/util/AppFileHelper;
.super Lcom/pubinfo/wifi_core/core/util/BaseFileHelper;
.source "AppFileHelper.java"


# static fields
.field private static appFileManager:Lcom/pubinfo/wifi_core/core/util/AppFileHelper;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 8
    const/4 v0, 0x0

    sput-object v0, Lcom/pubinfo/wifi_core/core/util/AppFileHelper;->appFileManager:Lcom/pubinfo/wifi_core/core/util/AppFileHelper;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 21
    invoke-direct {p0}, Lcom/pubinfo/wifi_core/core/util/BaseFileHelper;-><init>()V

    .line 22
    invoke-virtual {p1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v0

    iput-object v0, p0, Lcom/pubinfo/wifi_core/core/util/AppFileHelper;->rootDir:Ljava/io/File;

    .line 23
    iget-object v0, p0, Lcom/pubinfo/wifi_core/core/util/AppFileHelper;->rootDir:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/pubinfo/wifi_core/core/util/AppFileHelper;->rootPath:Ljava/lang/String;

    .line 24
    return-void
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/pubinfo/wifi_core/core/util/AppFileHelper;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 11
    const-class v1, Lcom/pubinfo/wifi_core/core/util/AppFileHelper;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/pubinfo/wifi_core/core/util/AppFileHelper;->appFileManager:Lcom/pubinfo/wifi_core/core/util/AppFileHelper;

    if-nez v0, :cond_0

    .line 12
    new-instance v0, Lcom/pubinfo/wifi_core/core/util/AppFileHelper;

    invoke-direct {v0, p0}, Lcom/pubinfo/wifi_core/core/util/AppFileHelper;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/pubinfo/wifi_core/core/util/AppFileHelper;->appFileManager:Lcom/pubinfo/wifi_core/core/util/AppFileHelper;

    .line 14
    :cond_0
    sget-object v0, Lcom/pubinfo/wifi_core/core/util/AppFileHelper;->appFileManager:Lcom/pubinfo/wifi_core/core/util/AppFileHelper;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 11
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
