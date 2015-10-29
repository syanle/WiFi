.class public abstract Lcom/umeng/socialize/view/abs/SocializeBaseView;
.super Lcom/umeng/socialize/view/abs/f;
.source "SocializeBaseView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/umeng/socialize/view/abs/SocializeBaseView$SocializeInitListener;
    }
.end annotation


# instance fields
.field protected b:Lcom/umeng/socialize/controller/UMSocialService;

.field c:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .prologue
    .line 42
    invoke-direct {p0, p1, p2}, Lcom/umeng/socialize/view/abs/f;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 43
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 46
    invoke-direct {p0, p1}, Lcom/umeng/socialize/view/abs/f;-><init>(Landroid/content/Context;)V

    .line 47
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 49
    sget-object v0, Lcom/umeng/socialize/controller/RequestType;->SOCIAL:Lcom/umeng/socialize/controller/RequestType;

    .line 48
    invoke-static {p2, v0}, Lcom/umeng/socialize/controller/UMServiceFactory;->getUMSocialService(Ljava/lang/String;Lcom/umeng/socialize/controller/RequestType;)Lcom/umeng/socialize/controller/UMSocialService;

    move-result-object v0

    iput-object v0, p0, Lcom/umeng/socialize/view/abs/SocializeBaseView;->b:Lcom/umeng/socialize/controller/UMSocialService;

    .line 51
    :cond_0
    return-void
.end method


# virtual methods
.method protected a(Lcom/umeng/socialize/view/abs/SocializeBaseView$SocializeInitListener;)V
    .locals 0

    .prologue
    .line 126
    invoke-virtual {p0}, Lcom/umeng/socialize/view/abs/SocializeBaseView;->g()V

    .line 127
    invoke-virtual {p0, p1}, Lcom/umeng/socialize/view/abs/SocializeBaseView;->b(Lcom/umeng/socialize/view/abs/SocializeBaseView$SocializeInitListener;)V

    .line 129
    return-void
.end method

.method protected b(Lcom/umeng/socialize/view/abs/SocializeBaseView$SocializeInitListener;)V
    .locals 3

    .prologue
    .line 141
    iget-object v0, p0, Lcom/umeng/socialize/view/abs/SocializeBaseView;->b:Lcom/umeng/socialize/controller/UMSocialService;

    if-nez v0, :cond_0

    .line 142
    new-instance v0, Lcom/umeng/socialize/exception/SocializeException;

    const-string v1, "no entity descriptor."

    invoke-direct {v0, v1}, Lcom/umeng/socialize/exception/SocializeException;-><init>(Ljava/lang/String;)V

    invoke-interface {p1, v0}, Lcom/umeng/socialize/view/abs/SocializeBaseView$SocializeInitListener;->a(Lcom/umeng/socialize/exception/SocializeException;)V

    .line 166
    :goto_0
    return-void

    .line 146
    :cond_0
    iget-object v0, p0, Lcom/umeng/socialize/view/abs/SocializeBaseView;->b:Lcom/umeng/socialize/controller/UMSocialService;

    invoke-virtual {p0}, Lcom/umeng/socialize/view/abs/SocializeBaseView;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Lcom/umeng/socialize/view/abs/z;

    invoke-direct {v2, p0, p1}, Lcom/umeng/socialize/view/abs/z;-><init>(Lcom/umeng/socialize/view/abs/SocializeBaseView;Lcom/umeng/socialize/view/abs/SocializeBaseView$SocializeInitListener;)V

    invoke-interface {v0, v1, v2}, Lcom/umeng/socialize/controller/UMSocialService;->initEntity(Landroid/content/Context;Lcom/umeng/socialize/controller/listener/SocializeListeners$SocializeClientListener;)V

    goto :goto_0
.end method

.method protected f()Lcom/umeng/socialize/view/abs/SocializeBaseView$SocializeInitListener;
    .locals 1

    .prologue
    .line 87
    new-instance v0, Lcom/umeng/socialize/view/abs/y;

    invoke-direct {v0, p0}, Lcom/umeng/socialize/view/abs/y;-><init>(Lcom/umeng/socialize/view/abs/SocializeBaseView;)V

    return-object v0
.end method

.method protected g()V
    .locals 0

    .prologue
    .line 193
    return-void
.end method

.method public abstract getLoadingView()Landroid/view/View;
.end method

.method public onViewLoad()V
    .locals 3

    .prologue
    .line 57
    invoke-super {p0}, Lcom/umeng/socialize/view/abs/f;->onViewLoad()V

    .line 58
    invoke-virtual {p0}, Lcom/umeng/socialize/view/abs/SocializeBaseView;->f()Lcom/umeng/socialize/view/abs/SocializeBaseView$SocializeInitListener;

    move-result-object v0

    .line 59
    iget-object v1, p0, Lcom/umeng/socialize/view/abs/SocializeBaseView;->b:Lcom/umeng/socialize/controller/UMSocialService;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/umeng/socialize/view/abs/SocializeBaseView;->b:Lcom/umeng/socialize/controller/UMSocialService;

    invoke-interface {v1}, Lcom/umeng/socialize/controller/UMSocialService;->getEntity()Lcom/umeng/socialize/bean/SocializeEntity;

    move-result-object v1

    iget-boolean v1, v1, Lcom/umeng/socialize/bean/SocializeEntity;->mInitialized:Z

    if-eqz v1, :cond_0

    .line 60
    const-string v1, "com.umeng.view.SocialView"

    const-string v2, "entity has initialized."

    invoke-static {v1, v2}, Lcom/umeng/socom/Log;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    invoke-virtual {p0}, Lcom/umeng/socialize/view/abs/SocializeBaseView;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/umeng/socialize/view/abs/SocializeBaseView;->b:Lcom/umeng/socialize/controller/UMSocialService;

    invoke-interface {v0, v1, v2}, Lcom/umeng/socialize/view/abs/SocializeBaseView$SocializeInitListener;->a(Landroid/content/Context;Lcom/umeng/socialize/controller/UMSocialService;)V

    .line 70
    :goto_0
    return-void

    .line 63
    :cond_0
    const-string v1, "com.umeng.view.SocialView"

    const-string v2, "entity has no initialized."

    invoke-static {v1, v2}, Lcom/umeng/socom/Log;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    invoke-virtual {p0}, Lcom/umeng/socialize/view/abs/SocializeBaseView;->getLoadingView()Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/umeng/socialize/view/abs/SocializeBaseView;->c:Landroid/view/View;

    .line 65
    iget-object v1, p0, Lcom/umeng/socialize/view/abs/SocializeBaseView;->c:Landroid/view/View;

    if-eqz v1, :cond_1

    .line 66
    iget-object v1, p0, Lcom/umeng/socialize/view/abs/SocializeBaseView;->c:Landroid/view/View;

    invoke-virtual {p0, v1}, Lcom/umeng/socialize/view/abs/SocializeBaseView;->addView(Landroid/view/View;)V

    .line 68
    :cond_1
    invoke-virtual {p0, v0}, Lcom/umeng/socialize/view/abs/SocializeBaseView;->a(Lcom/umeng/socialize/view/abs/SocializeBaseView$SocializeInitListener;)V

    goto :goto_0
.end method

.method public onViewLoad(Lcom/umeng/socialize/controller/UMSocialService;)V
    .locals 0

    .prologue
    .line 118
    return-void
.end method

.method public onViewUpdate()V
    .locals 0

    .prologue
    .line 74
    invoke-super {p0}, Lcom/umeng/socialize/view/abs/f;->onViewUpdate()V

    .line 75
    return-void
.end method

.method public onViewUpdate(Lcom/umeng/socialize/view/b;)V
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lcom/umeng/socialize/view/abs/SocializeBaseView;->c:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/umeng/socialize/view/abs/SocializeBaseView;->removeView(Landroid/view/View;)V

    .line 79
    return-void
.end method

.method public resetUMService(Lcom/umeng/socialize/controller/UMSocialService;)V
    .locals 0

    .prologue
    .line 82
    iput-object p1, p0, Lcom/umeng/socialize/view/abs/SocializeBaseView;->b:Lcom/umeng/socialize/controller/UMSocialService;

    .line 83
    invoke-super {p0}, Lcom/umeng/socialize/view/abs/f;->e()V

    .line 84
    return-void
.end method
