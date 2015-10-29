.class Lcom/pubinfo/freewifialliance/update/AWingUpdater$AppUpdateInfo;
.super Ljava/lang/Object;
.source "AWingUpdater.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pubinfo/freewifialliance/update/AWingUpdater;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "AppUpdateInfo"
.end annotation


# instance fields
.field private app_intro:Ljava/lang/String;

.field private app_name:Ljava/lang/String;

.field private app_size:J

.field private download_url:Ljava/lang/String;

.field private public_date:Ljava/lang/String;

.field final synthetic this$0:Lcom/pubinfo/freewifialliance/update/AWingUpdater;

.field private update_grade:Ljava/lang/String;

.field private version_code:I

.field private version_name:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/pubinfo/freewifialliance/update/AWingUpdater;)V
    .locals 2

    .prologue
    .line 304
    iput-object p1, p0, Lcom/pubinfo/freewifialliance/update/AWingUpdater$AppUpdateInfo;->this$0:Lcom/pubinfo/freewifialliance/update/AWingUpdater;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 305
    const-string v0, ""

    iput-object v0, p0, Lcom/pubinfo/freewifialliance/update/AWingUpdater$AppUpdateInfo;->app_name:Ljava/lang/String;

    .line 306
    const-string v0, ""

    iput-object v0, p0, Lcom/pubinfo/freewifialliance/update/AWingUpdater$AppUpdateInfo;->version_name:Ljava/lang/String;

    .line 307
    const/4 v0, 0x0

    iput v0, p0, Lcom/pubinfo/freewifialliance/update/AWingUpdater$AppUpdateInfo;->version_code:I

    .line 308
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/pubinfo/freewifialliance/update/AWingUpdater$AppUpdateInfo;->app_size:J

    .line 309
    const-string v0, ""

    iput-object v0, p0, Lcom/pubinfo/freewifialliance/update/AWingUpdater$AppUpdateInfo;->download_url:Ljava/lang/String;

    .line 310
    const-string v0, ""

    iput-object v0, p0, Lcom/pubinfo/freewifialliance/update/AWingUpdater$AppUpdateInfo;->public_date:Ljava/lang/String;

    .line 311
    const-string v0, ""

    iput-object v0, p0, Lcom/pubinfo/freewifialliance/update/AWingUpdater$AppUpdateInfo;->update_grade:Ljava/lang/String;

    .line 312
    const-string v0, ""

    iput-object v0, p0, Lcom/pubinfo/freewifialliance/update/AWingUpdater$AppUpdateInfo;->app_intro:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getAppIntro()Ljava/lang/String;
    .locals 1

    .prologue
    .line 388
    iget-object v0, p0, Lcom/pubinfo/freewifialliance/update/AWingUpdater$AppUpdateInfo;->app_intro:Ljava/lang/String;

    return-object v0
.end method

.method public getAppName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 319
    iget-object v0, p0, Lcom/pubinfo/freewifialliance/update/AWingUpdater$AppUpdateInfo;->app_name:Ljava/lang/String;

    return-object v0
.end method

.method public getAppSize()J
    .locals 2

    .prologue
    .line 351
    iget-wide v0, p0, Lcom/pubinfo/freewifialliance/update/AWingUpdater$AppUpdateInfo;->app_size:J

    return-wide v0
.end method

.method public getDownloadUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 359
    iget-object v0, p0, Lcom/pubinfo/freewifialliance/update/AWingUpdater$AppUpdateInfo;->download_url:Ljava/lang/String;

    return-object v0
.end method

.method public getPublicDate()Ljava/lang/String;
    .locals 1

    .prologue
    .line 367
    iget-object v0, p0, Lcom/pubinfo/freewifialliance/update/AWingUpdater$AppUpdateInfo;->public_date:Ljava/lang/String;

    return-object v0
.end method

.method public getUpdateGrade()Ljava/lang/String;
    .locals 1

    .prologue
    .line 380
    iget-object v0, p0, Lcom/pubinfo/freewifialliance/update/AWingUpdater$AppUpdateInfo;->update_grade:Ljava/lang/String;

    return-object v0
.end method

.method public getVersionCode()I
    .locals 1

    .prologue
    .line 339
    iget v0, p0, Lcom/pubinfo/freewifialliance/update/AWingUpdater$AppUpdateInfo;->version_code:I

    return v0
.end method

.method public getVersionName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 327
    iget-object v0, p0, Lcom/pubinfo/freewifialliance/update/AWingUpdater$AppUpdateInfo;->version_name:Ljava/lang/String;

    return-object v0
.end method

.method public setAppIntro(Ljava/lang/String;)V
    .locals 0
    .param p1, "appIntro"    # Ljava/lang/String;

    .prologue
    .line 384
    iput-object p1, p0, Lcom/pubinfo/freewifialliance/update/AWingUpdater$AppUpdateInfo;->app_intro:Ljava/lang/String;

    .line 385
    return-void
.end method

.method public setAppName(Ljava/lang/String;)V
    .locals 0
    .param p1, "appName"    # Ljava/lang/String;

    .prologue
    .line 315
    iput-object p1, p0, Lcom/pubinfo/freewifialliance/update/AWingUpdater$AppUpdateInfo;->app_name:Ljava/lang/String;

    .line 316
    return-void
.end method

.method public setAppSize(Ljava/lang/String;)V
    .locals 3
    .param p1, "appSize"    # Ljava/lang/String;

    .prologue
    .line 344
    :try_start_0
    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/pubinfo/freewifialliance/update/AWingUpdater$AppUpdateInfo;->app_size:J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 348
    :goto_0
    return-void

    .line 345
    :catch_0
    move-exception v0

    .line 346
    .local v0, "e":Ljava/lang/NumberFormatException;
    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->printStackTrace()V

    goto :goto_0
.end method

.method public setDownloadUrl(Ljava/lang/String;)V
    .locals 0
    .param p1, "downloadUrl"    # Ljava/lang/String;

    .prologue
    .line 355
    iput-object p1, p0, Lcom/pubinfo/freewifialliance/update/AWingUpdater$AppUpdateInfo;->download_url:Ljava/lang/String;

    .line 356
    return-void
.end method

.method public setPublicDate(Ljava/lang/String;)V
    .locals 0
    .param p1, "publicDate"    # Ljava/lang/String;

    .prologue
    .line 363
    iput-object p1, p0, Lcom/pubinfo/freewifialliance/update/AWingUpdater$AppUpdateInfo;->public_date:Ljava/lang/String;

    .line 364
    return-void
.end method

.method public setUpdateGrade(Ljava/lang/String;)V
    .locals 0
    .param p1, "updateGrade"    # Ljava/lang/String;

    .prologue
    .line 376
    iput-object p1, p0, Lcom/pubinfo/freewifialliance/update/AWingUpdater$AppUpdateInfo;->update_grade:Ljava/lang/String;

    .line 377
    return-void
.end method

.method public setVersionCode(Ljava/lang/String;)V
    .locals 2
    .param p1, "versionCode"    # Ljava/lang/String;

    .prologue
    .line 332
    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/pubinfo/freewifialliance/update/AWingUpdater$AppUpdateInfo;->version_code:I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 336
    :goto_0
    return-void

    .line 333
    :catch_0
    move-exception v0

    .line 334
    .local v0, "e":Ljava/lang/NumberFormatException;
    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->printStackTrace()V

    goto :goto_0
.end method

.method public setVersionName(Ljava/lang/String;)V
    .locals 0
    .param p1, "versionName"    # Ljava/lang/String;

    .prologue
    .line 323
    iput-object p1, p0, Lcom/pubinfo/freewifialliance/update/AWingUpdater$AppUpdateInfo;->version_name:Ljava/lang/String;

    .line 324
    return-void
.end method
