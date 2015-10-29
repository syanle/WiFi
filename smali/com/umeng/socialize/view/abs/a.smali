.class public abstract Lcom/umeng/socialize/view/abs/a;
.super Lcom/umeng/socialize/view/abs/SocializeBaseView;
.source "AuthenticatedView.java"


# instance fields
.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0, p1, p2}, Lcom/umeng/socialize/view/abs/SocializeBaseView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 28
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0, p1, p2}, Lcom/umeng/socialize/view/abs/SocializeBaseView;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 24
    return-void
.end method


# virtual methods
.method public abstract getErrorView()Landroid/view/View;
.end method

.method public abstract getView()Landroid/view/View;
.end method

.method public final onViewLoad(Lcom/umeng/socialize/controller/UMSocialService;)V
    .locals 2

    .prologue
    .line 32
    invoke-super {p0, p1}, Lcom/umeng/socialize/view/abs/SocializeBaseView;->onViewLoad(Lcom/umeng/socialize/controller/UMSocialService;)V

    .line 33
    invoke-virtual {p0}, Lcom/umeng/socialize/view/abs/a;->removeAllViews()V

    .line 35
    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/umeng/socialize/controller/UMSocialService;->getEntity()Lcom/umeng/socialize/bean/SocializeEntity;

    move-result-object v0

    iget-boolean v0, v0, Lcom/umeng/socialize/bean/SocializeEntity;->mInitialized:Z

    if-nez v0, :cond_1

    .line 37
    :cond_0
    invoke-virtual {p0}, Lcom/umeng/socialize/view/abs/a;->getErrorView()Landroid/view/View;

    move-result-object v0

    .line 38
    invoke-virtual {p0, v0}, Lcom/umeng/socialize/view/abs/a;->addView(Landroid/view/View;)V

    .line 50
    :goto_0
    return-void

    .line 42
    :cond_1
    invoke-interface {p1}, Lcom/umeng/socialize/controller/UMSocialService;->getEntity()Lcom/umeng/socialize/bean/SocializeEntity;

    move-result-object v0

    .line 44
    iget-object v1, v0, Lcom/umeng/socialize/bean/SocializeEntity;->mEntityKey:Ljava/lang/String;

    iput-object v1, p0, Lcom/umeng/socialize/view/abs/a;->d:Ljava/lang/String;

    .line 45
    iget-object v0, v0, Lcom/umeng/socialize/bean/SocializeEntity;->mSessionID:Ljava/lang/String;

    iput-object v0, p0, Lcom/umeng/socialize/view/abs/a;->e:Ljava/lang/String;

    .line 48
    invoke-virtual {p0}, Lcom/umeng/socialize/view/abs/a;->getView()Landroid/view/View;

    move-result-object v0

    .line 49
    invoke-virtual {p0, v0}, Lcom/umeng/socialize/view/abs/a;->addView(Landroid/view/View;)V

    goto :goto_0
.end method
