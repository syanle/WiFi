.class public Lcom/pubinfo/wifi_core/core/util/SdCardFileHelper;
.super Lcom/pubinfo/wifi_core/core/util/BaseFileHelper;
.source "SdCardFileHelper.java"


# static fields
.field private static helper:Lcom/pubinfo/wifi_core/core/util/SdCardFileHelper;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 9
    const/4 v0, 0x0

    sput-object v0, Lcom/pubinfo/wifi_core/core/util/SdCardFileHelper;->helper:Lcom/pubinfo/wifi_core/core/util/SdCardFileHelper;

    return-void
.end method

.method private constructor <init>()V
    .locals 4

    .prologue
    .line 26
    invoke-direct {p0}, Lcom/pubinfo/wifi_core/core/util/BaseFileHelper;-><init>()V

    .line 28
    :try_start_0
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    .line 29
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    .line 28
    iput-object v1, p0, Lcom/pubinfo/wifi_core/core/util/SdCardFileHelper;->rootPath:Ljava/lang/String;

    .line 30
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/pubinfo/wifi_core/core/util/SdCardFileHelper;->rootPath:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "WenZhouTong"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/pubinfo/wifi_core/core/util/SdCardFileHelper;->rootDir:Ljava/io/File;

    .line 31
    iget-object v1, p0, Lcom/pubinfo/wifi_core/core/util/SdCardFileHelper;->rootDir:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    .line 32
    iget-object v1, p0, Lcom/pubinfo/wifi_core/core/util/SdCardFileHelper;->rootDir:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 34
    :cond_0
    iget-object v1, p0, Lcom/pubinfo/wifi_core/core/util/SdCardFileHelper;->rootDir:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/pubinfo/wifi_core/core/util/SdCardFileHelper;->rootPath:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 38
    :goto_0
    return-void

    .line 35
    :catch_0
    move-exception v0

    .line 36
    .local v0, "e":Ljava/lang/Exception;
    const/4 v1, 0x0

    sput-object v1, Lcom/pubinfo/wifi_core/core/util/SdCardFileHelper;->helper:Lcom/pubinfo/wifi_core/core/util/SdCardFileHelper;

    goto :goto_0
.end method

.method public static declared-synchronized getInstance()Lcom/pubinfo/wifi_core/core/util/SdCardFileHelper;
    .locals 3

    .prologue
    .line 16
    const-class v2, Lcom/pubinfo/wifi_core/core/util/SdCardFileHelper;

    monitor-enter v2

    :try_start_0
    sget-object v1, Lcom/pubinfo/wifi_core/core/util/SdCardFileHelper;->helper:Lcom/pubinfo/wifi_core/core/util/SdCardFileHelper;

    if-nez v1, :cond_0

    .line 17
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    .line 18
    .local v0, "state":Ljava/lang/String;
    const-string v1, "removed"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "mounted"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 19
    new-instance v1, Lcom/pubinfo/wifi_core/core/util/SdCardFileHelper;

    invoke-direct {v1}, Lcom/pubinfo/wifi_core/core/util/SdCardFileHelper;-><init>()V

    sput-object v1, Lcom/pubinfo/wifi_core/core/util/SdCardFileHelper;->helper:Lcom/pubinfo/wifi_core/core/util/SdCardFileHelper;

    .line 24
    :cond_0
    sget-object v1, Lcom/pubinfo/wifi_core/core/util/SdCardFileHelper;->helper:Lcom/pubinfo/wifi_core/core/util/SdCardFileHelper;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit v2

    return-object v1

    .line 21
    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    .line 16
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method
