.class Lcom/pubinfo/izhejiang/update/AWingUpdater$AppUpdateInfo;
.super Ljava/lang/Object;
.source "AWingUpdater.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pubinfo/izhejiang/update/AWingUpdater;
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

.field final synthetic this$0:Lcom/pubinfo/izhejiang/update/AWingUpdater;

.field private update_grade:Ljava/lang/String;

.field private version_code:I

.field private version_name:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/pubinfo/izhejiang/update/AWingUpdater;)V
    .locals 2

    .prologue
    .line 301
    iput-object p1, p0, Lcom/pubinfo/izhejiang/update/AWingUpdater$AppUpdateInfo;->this$0:Lcom/pubinfo/izhejiang/update/AWingUpdater;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 302
    const-string v0, ""

    iput-object v0, p0, Lcom/pubinfo/izhejiang/update/AWingUpdater$AppUpdateInfo;->app_name:Ljava/lang/String;

    .line 303
    const-string v0, ""

    iput-object v0, p0, Lcom/pubinfo/izhejiang/update/AWingUpdater$AppUpdateInfo;->version_name:Ljava/lang/String;

    .line 304
    const/4 v0, 0x0

    iput v0, p0, Lcom/pubinfo/izhejiang/update/AWingUpdater$AppUpdateInfo;->version_code:I

    .line 305
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/pubinfo/izhejiang/update/AWingUpdater$AppUpdateInfo;->app_size:J

    .line 306
    const-string v0, ""

    iput-object v0, p0, Lcom/pubinfo/izhejiang/update/AWingUpdater$AppUpdateInfo;->download_url:Ljava/lang/String;

    .line 307
    const-string v0, ""

    iput-object v0, p0, Lcom/pubinfo/izhejiang/update/AWingUpdater$AppUpdateInfo;->public_date:Ljava/lang/String;

    .line 308
    const-string v0, ""

    iput-object v0, p0, Lcom/pubinfo/izhejiang/update/AWingUpdater$AppUpdateInfo;->update_grade:Ljava/lang/String;

    .line 309
    const-string v0, ""

    iput-object v0, p0, Lcom/pubinfo/izhejiang/update/AWingUpdater$AppUpdateInfo;->app_intro:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getAppIntro()Ljava/lang/String;
    .locals 1

    .prologue
    .line 385
    iget-object v0, p0, Lcom/pubinfo/izhejiang/update/AWingUpdater$AppUpdateInfo;->app_intro:Ljava/lang/String;

    return-object v0
.end method

.method public getAppName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 316
    iget-object v0, p0, Lcom/pubinfo/izhejiang/update/AWingUpdater$AppUpdateInfo;->app_name:Ljava/lang/String;

    return-object v0
.end method

.method public getAppSize()J
    .locals 2

    .prologue
    .line 348
    iget-wide v0, p0, Lcom/pubinfo/izhejiang/update/AWingUpdater$AppUpdateInfo;->app_size:J

    return-wide v0
.end method

.method public getDownloadUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 356
    iget-object v0, p0, Lcom/pubinfo/izhejiang/update/AWingUpdater$AppUpdateInfo;->download_url:Ljava/lang/String;

    return-object v0
.end method

.method public getPublicDate()Ljava/lang/String;
    .locals 1

    .prologue
    .line 364
    iget-object v0, p0, Lcom/pubinfo/izhejiang/update/AWingUpdater$AppUpdateInfo;->public_date:Ljava/lang/String;

    return-object v0
.end method

.method public getUpdateGrade()Ljava/lang/String;
    .locals 1

    .prologue
    .line 377
    iget-object v0, p0, Lcom/pubinfo/izhejiang/update/AWingUpdater$AppUpdateInfo;->update_grade:Ljava/lang/String;

    return-object v0
.end method

.method public getVersionCode()I
    .locals 1

    .prologue
    .line 336
    iget v0, p0, Lcom/pubinfo/izhejiang/update/AWingUpdater$AppUpdateInfo;->version_code:I

    return v0
.end method

.method public getVersionName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 324
    iget-object v0, p0, Lcom/pubinfo/izhejiang/update/AWingUpdater$AppUpdateInfo;->version_name:Ljava/lang/String;

    return-object v0
.end method

.method public setAppIntro(Ljava/lang/String;)V
    .locals 0
    .param p1, "appIntro"    # Ljava/lang/String;

    .prologue
    .line 381
    iput-object p1, p0, Lcom/pubinfo/izhejiang/update/AWingUpdater$AppUpdateInfo;->app_intro:Ljava/lang/String;

    .line 382
    return-void
.end method

.method public setAppName(Ljava/lang/String;)V
    .locals 0
    .param p1, "appName"    # Ljava/lang/String;

    .prologue
    .line 312
    iput-object p1, p0, Lcom/pubinfo/izhejiang/update/AWingUpdater$AppUpdateInfo;->app_name:Ljava/lang/String;

    .line 313
    return-void
.end method

.method public setAppSize(Ljava/lang/String;)V
    .locals 3
    .param p1, "appSize"    # Ljava/lang/String;

    .prologue
    .line 341
    :try_start_0
    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/pubinfo/izhejiang/update/AWingUpdater$AppUpdateInfo;->app_size:J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 345
    :goto_0
    return-void

    .line 342
    :catch_0
    move-exception v0

    .line 343
    .local v0, "e":Ljava/lang/NumberFormatException;
    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->printStackTrace()V

    goto :goto_0
.end method

.method public setDownloadUrl(Ljava/lang/String;)V
    .locals 0
    .param p1, "downloadUrl"    # Ljava/lang/String;

    .prologue
    .line 352
    iput-object p1, p0, Lcom/pubinfo/izhejiang/update/AWingUpdater$AppUpdateInfo;->download_url:Ljava/lang/String;

    .line 353
    return-void
.end method

.method public setPublicDate(Ljava/lang/String;)V
    .locals 0
    .param p1, "publicDate"    # Ljava/lang/String;

    .prologue
    .line 360
    iput-object p1, p0, Lcom/pubinfo/izhejiang/update/AWingUpdater$AppUpdateInfo;->public_date:Ljava/lang/String;

    .line 361
    return-void
.end method

.method public setUpdateGrade(Ljava/lang/String;)V
    .locals 0
    .param p1, "updateGrade"    # Ljava/lang/String;

    .prologue
    .line 373
    iput-object p1, p0, Lcom/pubinfo/izhejiang/update/AWingUpdater$AppUpdateInfo;->update_grade:Ljava/lang/String;

    .line 374
    return-void
.end method

.method public setVersionCode(Ljava/lang/String;)V
    .locals 2
    .param p1, "versionCode"    # Ljava/lang/String;

    .prologue
    .line 329
    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/pubinfo/izhejiang/update/AWingUpdater$AppUpdateInfo;->version_code:I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 333
    :goto_0
    return-void

    .line 330
    :catch_0
    move-exception v0

    .line 331
    .local v0, "e":Ljava/lang/NumberFormatException;
    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->printStackTrace()V

    goto :goto_0
.end method

.method public setVersionName(Ljava/lang/String;)V
    .locals 0
    .param p1, "versionName"    # Ljava/lang/String;

    .prologue
    .line 320
    iput-object p1, p0, Lcom/pubinfo/izhejiang/update/AWingUpdater$AppUpdateInfo;->version_name:Ljava/lang/String;

    .line 321
    return-void
.end method
