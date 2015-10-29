.class Lcom/umeng/socialize/view/bv;
.super Ljava/lang/Object;
.source "ShareActivity.java"

# interfaces
.implements Lcom/umeng/socialize/controller/listener/SocializeListeners$SnsPostListener;


# instance fields
.field final synthetic a:Lcom/umeng/socialize/view/ShareActivity;


# direct methods
.method constructor <init>(Lcom/umeng/socialize/view/ShareActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/umeng/socialize/view/bv;->a:Lcom/umeng/socialize/view/ShareActivity;

    .line 535
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete(Lcom/umeng/socialize/bean/SHARE_MEDIA;ILcom/umeng/socialize/bean/SocializeEntity;)V
    .locals 2

    .prologue
    .line 559
    iget-object v0, p0, Lcom/umeng/socialize/view/bv;->a:Lcom/umeng/socialize/view/ShareActivity;

    invoke-static {v0}, Lcom/umeng/socialize/view/ShareActivity;->o(Lcom/umeng/socialize/view/ShareActivity;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-static {v0}, Lcom/umeng/socialize/common/SocializeUtils;->safeDismissDialog(Landroid/app/Dialog;)V

    .line 560
    const/16 v0, 0xc8

    if-ne p2, v0, :cond_0

    .line 561
    iget-object v0, p0, Lcom/umeng/socialize/view/bv;->a:Lcom/umeng/socialize/view/ShareActivity;

    invoke-static {v0}, Lcom/umeng/socialize/view/ShareActivity;->p(Lcom/umeng/socialize/view/ShareActivity;)V

    .line 562
    invoke-virtual {p3}, Lcom/umeng/socialize/bean/SocializeEntity;->incrementSc()V

    .line 563
    iget-object v0, p0, Lcom/umeng/socialize/view/bv;->a:Lcom/umeng/socialize/view/ShareActivity;

    invoke-static {v0}, Lcom/umeng/socialize/view/ShareActivity;->q(Lcom/umeng/socialize/view/ShareActivity;)Landroid/content/Context;

    move-result-object v0

    .line 564
    iget-object v1, p3, Lcom/umeng/socialize/bean/SocializeEntity;->mDescriptor:Ljava/lang/String;

    .line 563
    invoke-static {v0, v1}, Lcom/umeng/socialize/view/controller/UMBroadcastManager;->sendEntityChange(Landroid/content/Context;Ljava/lang/String;)V

    .line 565
    iget-object v0, p0, Lcom/umeng/socialize/view/bv;->a:Lcom/umeng/socialize/view/ShareActivity;

    invoke-static {v0}, Lcom/umeng/socialize/view/ShareActivity;->i(Lcom/umeng/socialize/view/ShareActivity;)Lcom/umeng/socialize/controller/UMSocialService;

    move-result-object v0

    invoke-interface {v0}, Lcom/umeng/socialize/controller/UMSocialService;->getConfig()Lcom/umeng/socialize/bean/SocializeConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/umeng/socialize/bean/SocializeConfig;->isSendBlock()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 566
    iget-object v0, p0, Lcom/umeng/socialize/view/bv;->a:Lcom/umeng/socialize/view/ShareActivity;

    invoke-virtual {v0}, Lcom/umeng/socialize/view/ShareActivity;->b()V

    .line 578
    :cond_0
    return-void
.end method

.method public onStart()V
    .locals 2

    .prologue
    .line 540
    iget-object v0, p0, Lcom/umeng/socialize/view/bv;->a:Lcom/umeng/socialize/view/ShareActivity;

    invoke-static {v0}, Lcom/umeng/socialize/view/ShareActivity;->i(Lcom/umeng/socialize/view/ShareActivity;)Lcom/umeng/socialize/controller/UMSocialService;

    move-result-object v0

    invoke-interface {v0}, Lcom/umeng/socialize/controller/UMSocialService;->getConfig()Lcom/umeng/socialize/bean/SocializeConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/umeng/socialize/bean/SocializeConfig;->isSendBlock()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 541
    iget-object v0, p0, Lcom/umeng/socialize/view/bv;->a:Lcom/umeng/socialize/view/ShareActivity;

    invoke-static {v0}, Lcom/umeng/socialize/view/ShareActivity;->o(Lcom/umeng/socialize/view/ShareActivity;)Landroid/app/ProgressDialog;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/umeng/socialize/common/SocializeUtils;->safeShowDialog(Landroid/app/Dialog;Z)V

    .line 554
    :goto_0
    return-void

    .line 543
    :cond_0
    iget-object v0, p0, Lcom/umeng/socialize/view/bv;->a:Lcom/umeng/socialize/view/ShareActivity;

    invoke-virtual {v0}, Lcom/umeng/socialize/view/ShareActivity;->b()V

    goto :goto_0
.end method
