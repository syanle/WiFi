.class public Lcom/umeng/socialize/sensor/strategy/UMOpenShareStrategy;
.super Lcom/umeng/socialize/sensor/strategy/UMBaseStrategy;
.source "UMOpenShareStrategy.java"


# instance fields
.field private mController:Lcom/umeng/socialize/controller/UMSocialService;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 21
    invoke-direct {p0, p1}, Lcom/umeng/socialize/sensor/strategy/UMBaseStrategy;-><init>(Landroid/app/Activity;)V

    .line 18
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/umeng/socialize/sensor/strategy/UMOpenShareStrategy;->mController:Lcom/umeng/socialize/controller/UMSocialService;

    .line 22
    return-void
.end method


# virtual methods
.method public getUMSocialService()Lcom/umeng/socialize/controller/UMSocialService;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/umeng/socialize/sensor/strategy/UMOpenShareStrategy;->mController:Lcom/umeng/socialize/controller/UMSocialService;

    return-object v0
.end method

.method public setUMSocialService(Lcom/umeng/socialize/controller/UMSocialService;)V
    .locals 0
    .param p1, "service"    # Lcom/umeng/socialize/controller/UMSocialService;

    .prologue
    .line 54
    iput-object p1, p0, Lcom/umeng/socialize/sensor/strategy/UMOpenShareStrategy;->mController:Lcom/umeng/socialize/controller/UMSocialService;

    .line 55
    return-void
.end method

.method public shakeComplete()V
    .locals 3

    .prologue
    .line 31
    iget-object v0, p0, Lcom/umeng/socialize/sensor/strategy/UMOpenShareStrategy;->mActivity:Landroid/app/Activity;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/umeng/socialize/sensor/strategy/UMOpenShareStrategy;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 32
    :cond_0
    const-string v0, "UMOpenShareStrategy"

    const-string v1, "### can not openShare mActivity"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 37
    :goto_0
    return-void

    .line 35
    :cond_1
    const-string v0, "UMOpenShareStrategy"

    const-string v1, "#### open Share"

    invoke-static {v0, v1}, Lcom/umeng/socom/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 36
    iget-object v0, p0, Lcom/umeng/socialize/sensor/strategy/UMOpenShareStrategy;->mController:Lcom/umeng/socialize/controller/UMSocialService;

    iget-object v1, p0, Lcom/umeng/socialize/sensor/strategy/UMOpenShareStrategy;->mActivity:Landroid/app/Activity;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/umeng/socialize/controller/UMSocialService;->openShare(Landroid/app/Activity;Z)V

    goto :goto_0
.end method
