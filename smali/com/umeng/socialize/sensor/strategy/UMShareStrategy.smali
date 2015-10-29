.class public Lcom/umeng/socialize/sensor/strategy/UMShareStrategy;
.super Lcom/umeng/socialize/sensor/strategy/UMBaseStrategy;
.source "UMShareStrategy.java"


# static fields
.field private static mIntervalSensorListener:Lcom/umeng/socialize/sensor/UMSensor$OnSensorListener;


# instance fields
.field private mController:Lcom/umeng/socialize/controller/UMSocialService;

.field private mShakeController:Lcom/umeng/socialize/sensor/controller/UMShakeService;

.field private mShareDialog:Lcom/umeng/socialize/sensor/dialogs/UMShareScrShotDialog;

.field private mSharePlatforms:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/umeng/socialize/bean/SHARE_MEDIA;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 225
    new-instance v0, Lcom/umeng/socialize/sensor/strategy/UMShareStrategy$1;

    invoke-direct {v0}, Lcom/umeng/socialize/sensor/strategy/UMShareStrategy$1;-><init>()V

    sput-object v0, Lcom/umeng/socialize/sensor/strategy/UMShareStrategy;->mIntervalSensorListener:Lcom/umeng/socialize/sensor/UMSensor$OnSensorListener;

    .line 253
    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;)V
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    const/4 v1, 0x0

    .line 58
    invoke-direct {p0, p1}, Lcom/umeng/socialize/sensor/strategy/UMBaseStrategy;-><init>(Landroid/app/Activity;)V

    .line 36
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/umeng/socialize/sensor/strategy/UMShareStrategy;->mSharePlatforms:Ljava/util/List;

    .line 41
    iput-object v1, p0, Lcom/umeng/socialize/sensor/strategy/UMShareStrategy;->mShakeController:Lcom/umeng/socialize/sensor/controller/UMShakeService;

    .line 45
    iput-object v1, p0, Lcom/umeng/socialize/sensor/strategy/UMShareStrategy;->mController:Lcom/umeng/socialize/controller/UMSocialService;

    .line 50
    iput-object v1, p0, Lcom/umeng/socialize/sensor/strategy/UMShareStrategy;->mShareDialog:Lcom/umeng/socialize/sensor/dialogs/UMShareScrShotDialog;

    .line 59
    new-instance v0, Lcom/umeng/socialize/sensor/dialogs/UMShareScrShotDialog;

    invoke-direct {v0, p1}, Lcom/umeng/socialize/sensor/dialogs/UMShareScrShotDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/umeng/socialize/sensor/strategy/UMShareStrategy;->mShareDialog:Lcom/umeng/socialize/sensor/dialogs/UMShareScrShotDialog;

    .line 60
    return-void
.end method

.method static synthetic access$0(Lcom/umeng/socialize/sensor/strategy/UMShareStrategy;Landroid/graphics/Bitmap;)V
    .locals 0

    .prologue
    .line 209
    invoke-direct {p0, p1}, Lcom/umeng/socialize/sensor/strategy/UMShareStrategy;->showShareDialog(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method private asyncTakeScrShot()V
    .locals 2

    .prologue
    .line 176
    new-instance v0, Lcom/umeng/socialize/sensor/strategy/UMShareStrategy$2;

    invoke-direct {v0, p0}, Lcom/umeng/socialize/sensor/strategy/UMShareStrategy$2;-><init>(Lcom/umeng/socialize/sensor/strategy/UMShareStrategy;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    .line 201
    invoke-virtual {v0, v1}, Lcom/umeng/socialize/sensor/strategy/UMShareStrategy$2;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 202
    return-void
.end method

.method private showShareDialog(Landroid/graphics/Bitmap;)V
    .locals 3
    .param p1, "scrshot"    # Landroid/graphics/Bitmap;

    .prologue
    .line 210
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 211
    iget-object v0, p0, Lcom/umeng/socialize/sensor/strategy/UMShareStrategy;->mShareDialog:Lcom/umeng/socialize/sensor/dialogs/UMShareScrShotDialog;

    sget-object v1, Lcom/umeng/socialize/sensor/strategy/UMShareStrategy;->mIntervalSensorListener:Lcom/umeng/socialize/sensor/UMSensor$OnSensorListener;

    invoke-virtual {v0, v1}, Lcom/umeng/socialize/sensor/dialogs/UMShareScrShotDialog;->setShareListener(Lcom/umeng/socialize/sensor/UMSensor$OnSensorListener;)V

    .line 212
    iget-object v0, p0, Lcom/umeng/socialize/sensor/strategy/UMShareStrategy;->mShareDialog:Lcom/umeng/socialize/sensor/dialogs/UMShareScrShotDialog;

    iget-object v1, p0, Lcom/umeng/socialize/sensor/strategy/UMShareStrategy;->mController:Lcom/umeng/socialize/controller/UMSocialService;

    invoke-virtual {v0, v1}, Lcom/umeng/socialize/sensor/dialogs/UMShareScrShotDialog;->setUMSocialService(Lcom/umeng/socialize/controller/UMSocialService;)V

    .line 213
    iget-object v0, p0, Lcom/umeng/socialize/sensor/strategy/UMShareStrategy;->mShareDialog:Lcom/umeng/socialize/sensor/dialogs/UMShareScrShotDialog;

    iget-object v1, p0, Lcom/umeng/socialize/sensor/strategy/UMShareStrategy;->mShakeController:Lcom/umeng/socialize/sensor/controller/UMShakeService;

    invoke-virtual {v0, v1}, Lcom/umeng/socialize/sensor/dialogs/UMShareScrShotDialog;->setShakeController(Lcom/umeng/socialize/sensor/controller/UMShakeService;)V

    .line 214
    iget-object v0, p0, Lcom/umeng/socialize/sensor/strategy/UMShareStrategy;->mShareDialog:Lcom/umeng/socialize/sensor/dialogs/UMShareScrShotDialog;

    iget-object v1, p0, Lcom/umeng/socialize/sensor/strategy/UMShareStrategy;->mSharePlatforms:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/umeng/socialize/sensor/dialogs/UMShareScrShotDialog;->setPlatforms(Ljava/util/List;)V

    .line 215
    iget-object v0, p0, Lcom/umeng/socialize/sensor/strategy/UMShareStrategy;->mShareDialog:Lcom/umeng/socialize/sensor/dialogs/UMShareScrShotDialog;

    invoke-virtual {v0, p1}, Lcom/umeng/socialize/sensor/dialogs/UMShareScrShotDialog;->setScrshotBmp(Landroid/graphics/Bitmap;)V

    .line 216
    iget-object v0, p0, Lcom/umeng/socialize/sensor/strategy/UMShareStrategy;->mShareDialog:Lcom/umeng/socialize/sensor/dialogs/UMShareScrShotDialog;

    invoke-virtual {v0}, Lcom/umeng/socialize/sensor/dialogs/UMShareScrShotDialog;->show()V

    .line 220
    :goto_0
    return-void

    .line 218
    :cond_0
    iget-object v0, p0, Lcom/umeng/socialize/sensor/strategy/UMShareStrategy;->mActivity:Landroid/app/Activity;

    const-string v1, "\u62b1\u6b49, \u622a\u56fe\u5931\u8d25..."

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method


# virtual methods
.method public getShakeController()Lcom/umeng/socialize/sensor/controller/UMShakeService;
    .locals 1

    .prologue
    .line 104
    iget-object v0, p0, Lcom/umeng/socialize/sensor/strategy/UMShareStrategy;->mShakeController:Lcom/umeng/socialize/sensor/controller/UMShakeService;

    return-object v0
.end method

.method public getSharePlatforms()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/umeng/socialize/bean/SHARE_MEDIA;",
            ">;"
        }
    .end annotation

    .prologue
    .line 86
    iget-object v0, p0, Lcom/umeng/socialize/sensor/strategy/UMShareStrategy;->mSharePlatforms:Ljava/util/List;

    return-object v0
.end method

.method public getUMSocialService()Lcom/umeng/socialize/controller/UMSocialService;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcom/umeng/socialize/sensor/strategy/UMShareStrategy;->mController:Lcom/umeng/socialize/controller/UMSocialService;

    return-object v0
.end method

.method public isDialogShowing()Z
    .locals 1

    .prologue
    .line 124
    iget-object v0, p0, Lcom/umeng/socialize/sensor/strategy/UMShareStrategy;->mShareDialog:Lcom/umeng/socialize/sensor/dialogs/UMShareScrShotDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/umeng/socialize/sensor/strategy/UMShareStrategy;->mShareDialog:Lcom/umeng/socialize/sensor/dialogs/UMShareScrShotDialog;

    invoke-virtual {v0}, Lcom/umeng/socialize/sensor/dialogs/UMShareScrShotDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setShakeController(Lcom/umeng/socialize/sensor/controller/UMShakeService;)V
    .locals 0
    .param p1, "shakeController"    # Lcom/umeng/socialize/sensor/controller/UMShakeService;

    .prologue
    .line 113
    iput-object p1, p0, Lcom/umeng/socialize/sensor/strategy/UMShareStrategy;->mShakeController:Lcom/umeng/socialize/sensor/controller/UMShakeService;

    .line 114
    return-void
.end method

.method public setSharePlatforms(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/umeng/socialize/bean/SHARE_MEDIA;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 95
    .local p1, "platforms":Ljava/util/List;, "Ljava/util/List<Lcom/umeng/socialize/bean/SHARE_MEDIA;>;"
    iput-object p1, p0, Lcom/umeng/socialize/sensor/strategy/UMShareStrategy;->mSharePlatforms:Ljava/util/List;

    .line 96
    return-void
.end method

.method public setUMSocialService(Lcom/umeng/socialize/controller/UMSocialService;)V
    .locals 0
    .param p1, "service"    # Lcom/umeng/socialize/controller/UMSocialService;

    .prologue
    .line 77
    iput-object p1, p0, Lcom/umeng/socialize/sensor/strategy/UMShareStrategy;->mController:Lcom/umeng/socialize/controller/UMSocialService;

    .line 78
    return-void
.end method

.method public shakeComplete()V
    .locals 4

    .prologue
    .line 136
    iget-object v1, p0, Lcom/umeng/socialize/sensor/strategy/UMShareStrategy;->mActivity:Landroid/app/Activity;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/umeng/socialize/sensor/strategy/UMShareStrategy;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->isFinishing()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 137
    :cond_0
    const-string v1, ""

    const-string v2, "#### \u5206\u4eab\u7b56\u7565, activity\u5df2\u7ecf\u9500\u6bc1"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 170
    :cond_1
    :goto_0
    return-void

    .line 141
    :cond_2
    invoke-virtual {p0}, Lcom/umeng/socialize/sensor/strategy/UMShareStrategy;->isDialogShowing()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 142
    iget-object v1, p0, Lcom/umeng/socialize/sensor/strategy/UMShareStrategy;->mActivity:Landroid/app/Activity;

    const-string v2, "\u8bf7\u5148\u5173\u95ed\u5f53\u524d\u6447\u4e00\u6447\u5206\u4eab\u7a97\u53e3"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    .line 143
    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 146
    :cond_3
    iget-object v1, p0, Lcom/umeng/socialize/sensor/strategy/UMShareStrategy;->mShakeController:Lcom/umeng/socialize/sensor/controller/UMShakeService;

    invoke-interface {v1}, Lcom/umeng/socialize/sensor/controller/UMShakeService;->isAsyncTakeScrShot()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 148
    invoke-direct {p0}, Lcom/umeng/socialize/sensor/strategy/UMShareStrategy;->asyncTakeScrShot()V

    goto :goto_0

    .line 149
    :cond_4
    iget-object v1, p0, Lcom/umeng/socialize/sensor/strategy/UMShareStrategy;->mScrShotController:Lcom/umeng/scrshot/UMScrShotController;

    if-eqz v1, :cond_1

    .line 150
    iget-object v1, p0, Lcom/umeng/socialize/sensor/strategy/UMShareStrategy;->mScrShotController:Lcom/umeng/scrshot/UMScrShotController;

    invoke-virtual {v1}, Lcom/umeng/scrshot/UMScrShotController;->takeScreenShot()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 151
    .local v0, "scrshot":Landroid/graphics/Bitmap;
    invoke-direct {p0, v0}, Lcom/umeng/socialize/sensor/strategy/UMShareStrategy;->showShareDialog(Landroid/graphics/Bitmap;)V

    goto :goto_0
.end method
