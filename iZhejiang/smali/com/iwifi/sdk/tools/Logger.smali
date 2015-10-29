.class public Lcom/iwifi/sdk/tools/Logger;
.super Ljava/lang/Object;
.source "Logger.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/iwifi/sdk/tools/Logger$LogHead;
    }
.end annotation


# static fields
.field public static final LOG_LEVEL_DEBUG:I = 0x2

.field public static final LOG_LEVEL_ERROR:I = 0x3

.field public static final LOG_LEVEL_FATAL:I = 0x4

.field public static final LOG_LEVEL_INFO:I = 0x0

.field public static final LOG_LEVEL_WARNING:I = 0x1

.field public static final LOG_SAVE_MODE_FILE:I = 0x0

.field public static final LOG_SAVE_MODE_LOGCAT:I = 0x2

.field public static final LOG_SAVE_MODE_SOCKET:I = 0x1

.field private static Log_path:Ljava/lang/String;

.field private static SD_PATH:Ljava/lang/String;

.field private static USER_DEFINE_STR:Ljava/lang/String;

.field private static bEnableLog:Z

.field private static iWiFi_Private_Path:Ljava/lang/String;

.field private static mLogLevel:I

.field private static mLogSaveMode:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 47
    sput-boolean v4, Lcom/iwifi/sdk/tools/Logger;->bEnableLog:Z

    .line 49
    const/4 v2, 0x3

    sput v2, Lcom/iwifi/sdk/tools/Logger;->mLogLevel:I

    .line 50
    sput v4, Lcom/iwifi/sdk/tools/Logger;->mLogSaveMode:I

    .line 51
    const-string v2, "iWiFi"

    sput-object v2, Lcom/iwifi/sdk/tools/Logger;->iWiFi_Private_Path:Ljava/lang/String;

    .line 52
    const-string v2, "Log"

    sput-object v2, Lcom/iwifi/sdk/tools/Logger;->Log_path:Ljava/lang/String;

    .line 54
    const-string v2, "android"

    sput-object v2, Lcom/iwifi/sdk/tools/Logger;->USER_DEFINE_STR:Ljava/lang/String;

    .line 57
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v1

    .line 58
    .local v1, "sDStateString":Ljava/lang/String;
    const-string v2, "mounted"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 60
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/iwifi/sdk/tools/Logger;->SD_PATH:Ljava/lang/String;

    .line 62
    new-instance v0, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    sget-object v3, Lcom/iwifi/sdk/tools/Logger;->SD_PATH:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/iwifi/sdk/tools/Logger;->iWiFi_Private_Path:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 63
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    .line 64
    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    .line 66
    :cond_0
    new-instance v0, Ljava/io/File;

    .end local v0    # "file":Ljava/io/File;
    new-instance v2, Ljava/lang/StringBuilder;

    sget-object v3, Lcom/iwifi/sdk/tools/Logger;->SD_PATH:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/iwifi/sdk/tools/Logger;->iWiFi_Private_Path:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/iwifi/sdk/tools/Logger;->Log_path:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 67
    .restart local v0    # "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_1

    .line 68
    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    .line 70
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    sget-object v3, Lcom/iwifi/sdk/tools/Logger;->SD_PATH:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/iwifi/sdk/tools/Logger;->iWiFi_Private_Path:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/iwifi/sdk/tools/Logger;->Log_path:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/iwifi/sdk/tools/Logger;->Log_path:Ljava/lang/String;

    .line 76
    .end local v0    # "file":Ljava/io/File;
    :goto_0
    return-void

    .line 73
    :cond_2
    const-string v2, "iWiFiSDK"

    const-string v3, "Logger: current device hasn\'t mount SD card"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    sput-boolean v4, Lcom/iwifi/sdk/tools/Logger;->bEnableLog:Z

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final d(Ljava/lang/String;Ljava/lang/String;)I
    .locals 3
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 413
    const/4 v0, 0x0

    .line 414
    .local v0, "result":I
    sget-boolean v1, Lcom/iwifi/sdk/tools/Logger;->bEnableLog:Z

    if-eqz v1, :cond_0

    sget v1, Lcom/iwifi/sdk/tools/Logger;->mLogLevel:I

    const/4 v2, 0x3

    if-lt v1, v2, :cond_0

    .line 416
    sget v1, Lcom/iwifi/sdk/tools/Logger;->mLogSaveMode:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    .line 417
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 421
    :cond_0
    :goto_0
    return v0

    .line 419
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "debug|"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, p1, v2}, Lcom/iwifi/sdk/tools/Logger;->printLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static final d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    .locals 3
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "tr"    # Ljava/lang/Throwable;

    .prologue
    .line 425
    const/4 v0, 0x0

    .line 426
    .local v0, "result":I
    sget-boolean v1, Lcom/iwifi/sdk/tools/Logger;->bEnableLog:Z

    if-eqz v1, :cond_0

    sget v1, Lcom/iwifi/sdk/tools/Logger;->mLogLevel:I

    const/4 v2, 0x3

    if-lt v1, v2, :cond_0

    .line 428
    sget v1, Lcom/iwifi/sdk/tools/Logger;->mLogSaveMode:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    .line 429
    invoke-static {p0, p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v0

    .line 433
    :cond_0
    :goto_0
    return v0

    .line 431
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "debug|"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, p1, v2}, Lcom/iwifi/sdk/tools/Logger;->printLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static final e(Ljava/lang/String;Ljava/lang/String;)I
    .locals 3
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 438
    const/4 v0, 0x0

    .line 439
    .local v0, "result":I
    sget-boolean v1, Lcom/iwifi/sdk/tools/Logger;->bEnableLog:Z

    if-eqz v1, :cond_0

    .line 441
    sget v1, Lcom/iwifi/sdk/tools/Logger;->mLogSaveMode:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    .line 442
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 447
    :cond_0
    :goto_0
    return v0

    .line 444
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "error|"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, p1, v2}, Lcom/iwifi/sdk/tools/Logger;->printLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static final e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    .locals 3
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "tr"    # Ljava/lang/Throwable;

    .prologue
    .line 451
    const/4 v0, 0x0

    .line 452
    .local v0, "result":I
    sget-boolean v1, Lcom/iwifi/sdk/tools/Logger;->bEnableLog:Z

    if-eqz v1, :cond_0

    .line 454
    sget v1, Lcom/iwifi/sdk/tools/Logger;->mLogSaveMode:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    .line 456
    invoke-static {p0, p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v0

    .line 460
    :cond_0
    :goto_0
    return v0

    .line 458
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "error|"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, p1, v2}, Lcom/iwifi/sdk/tools/Logger;->printLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static getUpdateLogUserInfo(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 12
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "phoneNum"    # Ljava/lang/String;

    .prologue
    .line 465
    const-string v4, ""

    .line 466
    .local v4, "imei":Ljava/lang/String;
    const-string v8, ""

    .line 467
    .local v8, "ter_ip":Ljava/lang/String;
    const-string v0, ""

    .line 468
    .local v0, "appversion":Ljava/lang/String;
    const-string v7, ""

    .line 469
    .local v7, "packagename":Ljava/lang/String;
    const/4 v1, -0x1

    .line 471
    .local v1, "appversionCode":I
    const/4 v10, 0x6

    new-array v9, v10, [Ljava/lang/String;

    const/4 v10, 0x0

    const-string v11, ""

    aput-object v11, v9, v10

    const/4 v10, 0x1

    const-string v11, ""

    aput-object v11, v9, v10

    const/4 v10, 0x2

    const-string v11, ""

    aput-object v11, v9, v10

    const/4 v10, 0x3

    const-string v11, ""

    aput-object v11, v9, v10

    const/4 v10, 0x4

    const-string v11, ""

    aput-object v11, v9, v10

    const/4 v10, 0x5

    const-string v11, ""

    aput-object v11, v9, v10

    .line 472
    .local v9, "userInfos":[Ljava/lang/String;
    new-instance v2, Lcom/iwifi/sdk/protocol/impl/SDKCommonMotheds;

    invoke-direct {v2, p0}, Lcom/iwifi/sdk/protocol/impl/SDKCommonMotheds;-><init>(Landroid/content/Context;)V

    .line 473
    .local v2, "commonMethods":Lcom/iwifi/sdk/protocol/impl/SDKCommonMotheds;
    invoke-virtual {v2}, Lcom/iwifi/sdk/protocol/impl/SDKCommonMotheds;->getIMEICode()Ljava/lang/String;

    move-result-object v4

    .line 474
    invoke-virtual {v2}, Lcom/iwifi/sdk/protocol/impl/SDKCommonMotheds;->getLocalIpAddress()Ljava/lang/String;

    move-result-object v8

    .line 480
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    .line 482
    .local v6, "packageManager":Landroid/content/pm/PackageManager;
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x0

    invoke-virtual {v6, v10, v11}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v5

    .line 483
    .local v5, "packInfo":Landroid/content/pm/PackageInfo;
    iget-object v0, v5, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    .line 484
    iget v1, v5, Landroid/content/pm/PackageInfo;->versionCode:I

    .line 485
    iget-object v7, v5, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 492
    .end local v5    # "packInfo":Landroid/content/pm/PackageInfo;
    .end local v6    # "packageManager":Landroid/content/pm/PackageManager;
    :goto_0
    const/4 v10, 0x0

    aput-object p1, v9, v10

    .line 493
    const/4 v10, 0x1

    aput-object v4, v9, v10

    .line 494
    const/4 v10, 0x2

    aput-object v8, v9, v10

    .line 495
    const/4 v10, 0x3

    aput-object v0, v9, v10

    .line 496
    const/4 v10, 0x4

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v10

    .line 497
    const/4 v10, 0x5

    aput-object v7, v9, v10

    .line 499
    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "android|"

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "|"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "|"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "|"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "|"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "|"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    sput-object v10, Lcom/iwifi/sdk/tools/Logger;->USER_DEFINE_STR:Ljava/lang/String;

    .line 500
    sget-object v10, Lcom/iwifi/sdk/tools/Logger;->USER_DEFINE_STR:Ljava/lang/String;

    return-object v10

    .line 487
    :catch_0
    move-exception v3

    .line 489
    .local v3, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v3}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_0
.end method

.method public static getUpdateLogUserInfo(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "userdefine"    # Ljava/lang/String;

    .prologue
    .line 504
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "android|"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/iwifi/sdk/tools/Logger;->USER_DEFINE_STR:Ljava/lang/String;

    .line 505
    sget-object v0, Lcom/iwifi/sdk/tools/Logger;->USER_DEFINE_STR:Ljava/lang/String;

    return-object v0
.end method

.method public static getUpdateLogUserInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "phoneNum"    # Ljava/lang/String;
    .param p1, "imei"    # Ljava/lang/String;
    .param p2, "ter_ip"    # Ljava/lang/String;
    .param p3, "appversion"    # Ljava/lang/String;
    .param p4, "appversionCode"    # Ljava/lang/String;
    .param p5, "packagename"    # Ljava/lang/String;

    .prologue
    .line 515
    if-nez p0, :cond_0

    .line 516
    const-string p0, ""

    .line 518
    :cond_0
    if-nez p1, :cond_1

    .line 519
    const-string p1, ""

    .line 521
    :cond_1
    if-nez p2, :cond_2

    .line 522
    const-string p2, ""

    .line 524
    :cond_2
    if-nez p3, :cond_3

    .line 525
    const-string p3, ""

    .line 527
    :cond_3
    if-nez p4, :cond_4

    .line 528
    const-string p4, ""

    .line 530
    :cond_4
    if-nez p5, :cond_5

    .line 531
    const-string p5, ""

    .line 533
    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "android|"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/iwifi/sdk/tools/Logger;->USER_DEFINE_STR:Ljava/lang/String;

    .line 534
    sget-object v0, Lcom/iwifi/sdk/tools/Logger;->USER_DEFINE_STR:Ljava/lang/String;

    return-object v0
.end method

.method public static final i(Ljava/lang/String;Ljava/lang/String;)I
    .locals 3
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 364
    const/4 v0, 0x0

    .line 365
    .local v0, "result":I
    sget-boolean v1, Lcom/iwifi/sdk/tools/Logger;->bEnableLog:Z

    if-eqz v1, :cond_0

    sget v1, Lcom/iwifi/sdk/tools/Logger;->mLogLevel:I

    const/4 v2, 0x1

    if-lt v1, v2, :cond_0

    .line 367
    sget v1, Lcom/iwifi/sdk/tools/Logger;->mLogSaveMode:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    .line 368
    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 372
    :cond_0
    :goto_0
    return v0

    .line 370
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "info|"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, p1, v2}, Lcom/iwifi/sdk/tools/Logger;->printLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static final i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    .locals 3
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "tr"    # Ljava/lang/Throwable;

    .prologue
    .line 376
    const/4 v0, 0x0

    .line 377
    .local v0, "result":I
    sget-boolean v1, Lcom/iwifi/sdk/tools/Logger;->bEnableLog:Z

    if-eqz v1, :cond_0

    sget v1, Lcom/iwifi/sdk/tools/Logger;->mLogLevel:I

    const/4 v2, 0x1

    if-lt v1, v2, :cond_0

    .line 379
    sget v1, Lcom/iwifi/sdk/tools/Logger;->mLogSaveMode:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    .line 380
    invoke-static {p0, p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v0

    .line 384
    :cond_0
    :goto_0
    return v0

    .line 382
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "info|"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, p1, v2}, Lcom/iwifi/sdk/tools/Logger;->printLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static print(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 87
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    return-void
.end method

.method protected static printLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 26
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "tr"    # Ljava/lang/Throwable;

    .prologue
    .line 93
    new-instance v12, Ljava/text/SimpleDateFormat;

    const-string v24, "yyyy-MM-dd HH:mm:ss "

    move-object/from16 v0, v24

    invoke-direct {v12, v0}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 94
    .local v12, "formatter":Ljava/text/SimpleDateFormat;
    new-instance v7, Ljava/sql/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v24

    move-wide/from16 v0, v24

    invoke-direct {v7, v0, v1}, Ljava/sql/Date;-><init>(J)V

    .line 95
    .local v7, "curDate":Ljava/sql/Date;
    invoke-virtual {v12, v7}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    .line 96
    .local v3, "Datestr":Ljava/lang/String;
    new-instance v24, Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v25

    invoke-direct/range {v24 .. v25}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v25, "|"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, "|"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    sget-object v25, Lcom/iwifi/sdk/tools/Logger;->USER_DEFINE_STR:Ljava/lang/String;

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, "|"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 98
    .local v4, "LogStr":Ljava/lang/String;
    sget v24, Lcom/iwifi/sdk/tools/Logger;->mLogSaveMode:I

    const/16 v25, 0x1

    move/from16 v0, v24

    move/from16 v1, v25

    if-ne v0, v1, :cond_2

    .line 123
    :try_start_0
    new-instance v6, Ljava/net/Socket;

    invoke-direct {v6}, Ljava/net/Socket;-><init>()V

    .line 124
    .local v6, "client":Ljava/net/Socket;
    new-instance v16, Ljava/net/InetSocketAddress;

    const-string v24, "192.168.18.135"

    const/16 v25, 0x22c3

    move-object/from16 v0, v16

    move-object/from16 v1, v24

    move/from16 v2, v25

    invoke-direct {v0, v1, v2}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    .line 125
    .local v16, "isa":Ljava/net/InetSocketAddress;
    const/16 v24, 0x1388

    move-object/from16 v0, v16

    move/from16 v1, v24

    invoke-virtual {v6, v0, v1}, Ljava/net/Socket;->connect(Ljava/net/SocketAddress;I)V
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    .line 126
    move-object/from16 v22, v4

    .line 152
    .local v22, "message":Ljava/lang/String;
    :try_start_1
    invoke-virtual {v6}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v23

    .line 154
    .local v23, "ops":Ljava/io/OutputStream;
    new-instance v18, Lcom/iwifi/sdk/tools/Logger$LogHead;

    invoke-direct/range {v18 .. v18}, Lcom/iwifi/sdk/tools/Logger$LogHead;-><init>()V

    .line 155
    .local v18, "logHeader":Lcom/iwifi/sdk/tools/Logger$LogHead;
    const/16 v24, 0x0

    sput v24, Lcom/iwifi/sdk/tools/Logger$LogHead;->appID:I

    .line 156
    const/16 v24, 0x1

    sput v24, Lcom/iwifi/sdk/tools/Logger$LogHead;->platformId:I

    .line 157
    new-instance v24, Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v25

    invoke-direct/range {v24 .. v25}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v25, "|"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, "|"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/String;->length()I

    move-result v24

    sput v24, Lcom/iwifi/sdk/tools/Logger$LogHead;->standardLogLen:I

    .line 158
    new-instance v24, Ljava/lang/StringBuilder;

    sget-object v25, Lcom/iwifi/sdk/tools/Logger;->USER_DEFINE_STR:Ljava/lang/String;

    invoke-static/range {v25 .. v25}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v25

    invoke-direct/range {v24 .. v25}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v25, "|"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/String;->length()I

    move-result v24

    move/from16 v0, v24

    int-to-long v0, v0

    move-wide/from16 v24, v0

    sput-wide v24, Lcom/iwifi/sdk/tools/Logger$LogHead;->externalLogLen:J

    .line 159
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v24

    move/from16 v0, v24

    int-to-long v0, v0

    move-wide/from16 v24, v0

    sput-wide v24, Lcom/iwifi/sdk/tools/Logger$LogHead;->LogContentLen:J

    .line 160
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v24

    add-int/lit8 v24, v24, 0x24

    move/from16 v0, v24

    int-to-long v0, v0

    move-wide/from16 v24, v0

    sput-wide v24, Lcom/iwifi/sdk/tools/Logger$LogHead;->LogtotalLen:J

    .line 162
    invoke-static {}, Lcom/iwifi/sdk/tools/Logger$LogHead;->getLogHeaderBytes()[B

    move-result-object v14

    .line 164
    .local v14, "header":[B
    array-length v0, v14

    move/from16 v24, v0

    invoke-virtual/range {v22 .. v22}, Ljava/lang/String;->length()I

    move-result v25

    add-int v24, v24, v25

    move/from16 v0, v24

    new-array v5, v0, [B

    .line 166
    .local v5, "bytes":[B
    const/4 v15, 0x0

    .local v15, "i":I
    const/16 v17, 0x0

    .local v17, "j":I
    :goto_0
    array-length v0, v14

    move/from16 v24, v0

    move/from16 v0, v24

    if-lt v15, v0, :cond_0

    .line 170
    array-length v15, v14

    const/16 v17, 0x0

    :goto_1
    array-length v0, v14

    move/from16 v24, v0

    invoke-virtual/range {v22 .. v22}, Ljava/lang/String;->length()I

    move-result v25

    add-int v24, v24, v25

    move/from16 v0, v24

    if-lt v15, v0, :cond_1

    .line 175
    move-object/from16 v0, v23

    invoke-virtual {v0, v5}, Ljava/io/OutputStream;->write([B)V

    .line 177
    invoke-virtual/range {v23 .. v23}, Ljava/io/OutputStream;->flush()V

    .line 178
    invoke-virtual/range {v23 .. v23}, Ljava/io/OutputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 183
    :try_start_2
    invoke-virtual {v6}, Ljava/net/Socket;->close()V
    :try_end_2
    .catch Ljava/net/UnknownHostException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    .line 217
    .end local v5    # "bytes":[B
    .end local v6    # "client":Ljava/net/Socket;
    .end local v14    # "header":[B
    .end local v15    # "i":I
    .end local v16    # "isa":Ljava/net/InetSocketAddress;
    .end local v17    # "j":I
    .end local v18    # "logHeader":Lcom/iwifi/sdk/tools/Logger$LogHead;
    .end local v22    # "message":Ljava/lang/String;
    .end local v23    # "ops":Ljava/io/OutputStream;
    :goto_2
    return-void

    .line 167
    .restart local v5    # "bytes":[B
    .restart local v6    # "client":Ljava/net/Socket;
    .restart local v14    # "header":[B
    .restart local v15    # "i":I
    .restart local v16    # "isa":Ljava/net/InetSocketAddress;
    .restart local v17    # "j":I
    .restart local v18    # "logHeader":Lcom/iwifi/sdk/tools/Logger$LogHead;
    .restart local v22    # "message":Ljava/lang/String;
    .restart local v23    # "ops":Ljava/io/OutputStream;
    :cond_0
    :try_start_3
    aget-byte v24, v14, v15

    aput-byte v24, v5, v15

    .line 166
    add-int/lit8 v15, v15, 0x1

    goto :goto_0

    .line 171
    :cond_1
    invoke-virtual/range {v22 .. v22}, Ljava/lang/String;->getBytes()[B

    move-result-object v24

    aget-byte v24, v24, v17

    aput-byte v24, v5, v15
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 170
    add-int/lit8 v15, v15, 0x1

    add-int/lit8 v17, v17, 0x1

    goto :goto_1

    .line 179
    .end local v5    # "bytes":[B
    .end local v14    # "header":[B
    .end local v15    # "i":I
    .end local v17    # "j":I
    .end local v18    # "logHeader":Lcom/iwifi/sdk/tools/Logger$LogHead;
    .end local v23    # "ops":Ljava/io/OutputStream;
    :catch_0
    move-exception v9

    .line 180
    .local v9, "e":Ljava/lang/Exception;
    :try_start_4
    invoke-virtual {v9}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 183
    :try_start_5
    invoke-virtual {v6}, Ljava/net/Socket;->close()V
    :try_end_5
    .catch Ljava/net/UnknownHostException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_2

    .line 185
    .end local v6    # "client":Ljava/net/Socket;
    .end local v9    # "e":Ljava/lang/Exception;
    .end local v16    # "isa":Ljava/net/InetSocketAddress;
    .end local v22    # "message":Ljava/lang/String;
    :catch_1
    move-exception v10

    .line 186
    .local v10, "e1":Ljava/net/UnknownHostException;
    invoke-virtual {v10}, Ljava/net/UnknownHostException;->printStackTrace()V

    goto :goto_2

    .line 181
    .end local v10    # "e1":Ljava/net/UnknownHostException;
    .restart local v6    # "client":Ljava/net/Socket;
    .restart local v16    # "isa":Ljava/net/InetSocketAddress;
    .restart local v22    # "message":Ljava/lang/String;
    :catchall_0
    move-exception v24

    .line 183
    :try_start_6
    invoke-virtual {v6}, Ljava/net/Socket;->close()V

    .line 184
    throw v24
    :try_end_6
    .catch Ljava/net/UnknownHostException; {:try_start_6 .. :try_end_6} :catch_1
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2

    .line 187
    .end local v6    # "client":Ljava/net/Socket;
    .end local v16    # "isa":Ljava/net/InetSocketAddress;
    .end local v22    # "message":Ljava/lang/String;
    :catch_2
    move-exception v9

    .line 188
    .local v9, "e":Ljava/io/IOException;
    invoke-virtual {v9}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    .line 190
    .end local v9    # "e":Ljava/io/IOException;
    :cond_2
    sget v24, Lcom/iwifi/sdk/tools/Logger;->mLogSaveMode:I

    if-nez v24, :cond_4

    .line 193
    :try_start_7
    new-instance v13, Ljava/text/SimpleDateFormat;

    const-string v24, "yyyy-MM-dd"

    move-object/from16 v0, v24

    invoke-direct {v13, v0}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_3

    .line 194
    .end local v12    # "formatter":Ljava/text/SimpleDateFormat;
    .local v13, "formatter":Ljava/text/SimpleDateFormat;
    :try_start_8
    new-instance v24, Ljava/util/Date;

    invoke-direct/range {v24 .. v24}, Ljava/util/Date;-><init>()V

    move-object/from16 v0, v24

    invoke-virtual {v13, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v8

    .line 195
    .local v8, "date":Ljava/lang/String;
    new-instance v24, Ljava/lang/StringBuilder;

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v25

    invoke-direct/range {v24 .. v25}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v25, ".log"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    .line 197
    .local v19, "logName":Ljava/lang/String;
    new-instance v24, Ljava/lang/StringBuilder;

    sget-object v25, Lcom/iwifi/sdk/tools/Logger;->Log_path:Ljava/lang/String;

    invoke-static/range {v25 .. v25}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v25

    invoke-direct/range {v24 .. v25}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v24

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    .line 198
    .local v20, "logPath":Ljava/lang/String;
    new-instance v11, Ljava/io/File;

    move-object/from16 v0, v20

    invoke-direct {v11, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 199
    .local v11, "fileLog":Ljava/io/File;
    invoke-virtual {v11}, Ljava/io/File;->exists()Z

    move-result v24

    if-nez v24, :cond_3

    .line 200
    invoke-virtual {v11}, Ljava/io/File;->createNewFile()Z

    .line 202
    :cond_3
    new-instance v21, Ljava/io/BufferedWriter;

    new-instance v24, Ljava/io/FileWriter;

    const/16 v25, 0x1

    move-object/from16 v0, v24

    move-object/from16 v1, v20

    move/from16 v2, v25

    invoke-direct {v0, v1, v2}, Ljava/io/FileWriter;-><init>(Ljava/lang/String;Z)V

    const/16 v25, 0x800

    move-object/from16 v0, v21

    move-object/from16 v1, v24

    move/from16 v2, v25

    invoke-direct {v0, v1, v2}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;I)V

    .line 203
    .local v21, "mWriter":Ljava/io/BufferedWriter;
    move-object/from16 v0, v21

    invoke-virtual {v0, v4}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 204
    const-string v24, "\n"

    move-object/from16 v0, v21

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 205
    invoke-virtual/range {v21 .. v21}, Ljava/io/BufferedWriter;->flush()V

    .line 207
    invoke-virtual/range {v21 .. v21}, Ljava/io/BufferedWriter;->close()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_4

    move-object v12, v13

    .line 208
    .end local v13    # "formatter":Ljava/text/SimpleDateFormat;
    .restart local v12    # "formatter":Ljava/text/SimpleDateFormat;
    goto/16 :goto_2

    .line 209
    .end local v8    # "date":Ljava/lang/String;
    .end local v11    # "fileLog":Ljava/io/File;
    .end local v19    # "logName":Ljava/lang/String;
    .end local v20    # "logPath":Ljava/lang/String;
    .end local v21    # "mWriter":Ljava/io/BufferedWriter;
    :catch_3
    move-exception v9

    .line 211
    .local v9, "e":Ljava/lang/Exception;
    :goto_3
    invoke-virtual {v9}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_2

    .line 215
    .end local v9    # "e":Ljava/lang/Exception;
    :cond_4
    invoke-static/range {p0 .. p2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_2

    .line 209
    .end local v12    # "formatter":Ljava/text/SimpleDateFormat;
    .restart local v13    # "formatter":Ljava/text/SimpleDateFormat;
    :catch_4
    move-exception v9

    move-object v12, v13

    .end local v13    # "formatter":Ljava/text/SimpleDateFormat;
    .restart local v12    # "formatter":Ljava/text/SimpleDateFormat;
    goto :goto_3
.end method

.method public static setLogStatus(ZII)V
    .locals 0
    .param p0, "enable_log"    # Z
    .param p1, "enbale_logLevel"    # I
    .param p2, "printLog_mode"    # I

    .prologue
    .line 538
    sput-boolean p0, Lcom/iwifi/sdk/tools/Logger;->bEnableLog:Z

    .line 539
    sput p1, Lcom/iwifi/sdk/tools/Logger;->mLogLevel:I

    .line 540
    sput p2, Lcom/iwifi/sdk/tools/Logger;->mLogSaveMode:I

    .line 541
    return-void
.end method

.method public static final w(Ljava/lang/String;Ljava/lang/String;)I
    .locals 3
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x2

    .line 388
    const/4 v0, 0x0

    .line 389
    .local v0, "result":I
    sget-boolean v1, Lcom/iwifi/sdk/tools/Logger;->bEnableLog:Z

    if-eqz v1, :cond_0

    sget v1, Lcom/iwifi/sdk/tools/Logger;->mLogLevel:I

    if-lt v1, v2, :cond_0

    .line 391
    sget v1, Lcom/iwifi/sdk/tools/Logger;->mLogSaveMode:I

    if-ne v1, v2, :cond_1

    .line 392
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 397
    :cond_0
    :goto_0
    return v0

    .line 394
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "warning|"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, p1, v2}, Lcom/iwifi/sdk/tools/Logger;->printLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static final w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    .locals 3
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "tr"    # Ljava/lang/Throwable;

    .prologue
    const/4 v2, 0x2

    .line 401
    const/4 v0, 0x0

    .line 402
    .local v0, "result":I
    sget-boolean v1, Lcom/iwifi/sdk/tools/Logger;->bEnableLog:Z

    if-eqz v1, :cond_0

    sget v1, Lcom/iwifi/sdk/tools/Logger;->mLogLevel:I

    if-lt v1, v2, :cond_0

    .line 404
    sget v1, Lcom/iwifi/sdk/tools/Logger;->mLogSaveMode:I

    if-ne v1, v2, :cond_1

    .line 405
    invoke-static {p0, p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v0

    .line 409
    :cond_0
    :goto_0
    return v0

    .line 407
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "waining|"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, p1, v2}, Lcom/iwifi/sdk/tools/Logger;->printLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
