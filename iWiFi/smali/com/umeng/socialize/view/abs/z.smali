.class Lcom/umeng/socialize/view/abs/z;
.super Ljava/lang/Object;
.source "SocializeBaseView.java"

# interfaces
.implements Lcom/umeng/socialize/controller/listener/SocializeListeners$SocializeClientListener;


# instance fields
.field final synthetic a:Lcom/umeng/socialize/view/abs/SocializeBaseView;

.field private final synthetic b:Lcom/umeng/socialize/view/abs/SocializeBaseView$SocializeInitListener;


# direct methods
.method constructor <init>(Lcom/umeng/socialize/view/abs/SocializeBaseView;Lcom/umeng/socialize/view/abs/SocializeBaseView$SocializeInitListener;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/umeng/socialize/view/abs/z;->a:Lcom/umeng/socialize/view/abs/SocializeBaseView;

    iput-object p2, p0, Lcom/umeng/socialize/view/abs/z;->b:Lcom/umeng/socialize/view/abs/SocializeBaseView$SocializeInitListener;

    .line 146
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete(ILcom/umeng/socialize/bean/SocializeEntity;)V
    .locals 3

    .prologue
    .line 154
    if-eqz p2, :cond_1

    iget-object v0, p0, Lcom/umeng/socialize/view/abs/z;->a:Lcom/umeng/socialize/view/abs/SocializeBaseView;

    iget-object v0, v0, Lcom/umeng/socialize/view/abs/SocializeBaseView;->b:Lcom/umeng/socialize/controller/UMSocialService;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/umeng/socialize/view/abs/z;->a:Lcom/umeng/socialize/view/abs/SocializeBaseView;

    iget-object v0, v0, Lcom/umeng/socialize/view/abs/SocializeBaseView;->b:Lcom/umeng/socialize/controller/UMSocialService;

    invoke-interface {v0}, Lcom/umeng/socialize/controller/UMSocialService;->getEntity()Lcom/umeng/socialize/bean/SocializeEntity;

    move-result-object v0

    if-ne p2, v0, :cond_1

    .line 155
    const/16 v0, 0xc8

    if-ne p1, v0, :cond_0

    .line 156
    iget-object v0, p0, Lcom/umeng/socialize/view/abs/z;->b:Lcom/umeng/socialize/view/abs/SocializeBaseView$SocializeInitListener;

    iget-object v1, p0, Lcom/umeng/socialize/view/abs/z;->a:Lcom/umeng/socialize/view/abs/SocializeBaseView;

    invoke-virtual {v1}, Lcom/umeng/socialize/view/abs/SocializeBaseView;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/umeng/socialize/view/abs/z;->a:Lcom/umeng/socialize/view/abs/SocializeBaseView;

    iget-object v2, v2, Lcom/umeng/socialize/view/abs/SocializeBaseView;->b:Lcom/umeng/socialize/controller/UMSocialService;

    invoke-interface {v0, v1, v2}, Lcom/umeng/socialize/view/abs/SocializeBaseView$SocializeInitListener;->a(Landroid/content/Context;Lcom/umeng/socialize/controller/UMSocialService;)V

    .line 164
    :goto_0
    return-void

    .line 159
    :cond_0
    iget-object v0, p0, Lcom/umeng/socialize/view/abs/z;->b:Lcom/umeng/socialize/view/abs/SocializeBaseView$SocializeInitListener;

    new-instance v1, Lcom/umeng/socialize/exception/SocializeException;

    const-string v2, ""

    invoke-direct {v1, p1, v2}, Lcom/umeng/socialize/exception/SocializeException;-><init>(ILjava/lang/String;)V

    invoke-interface {v0, v1}, Lcom/umeng/socialize/view/abs/SocializeBaseView$SocializeInitListener;->a(Lcom/umeng/socialize/exception/SocializeException;)V

    goto :goto_0

    .line 162
    :cond_1
    const-string v0, "com.umeng.view.SocialView"

    const-string v1, "actionbar descriptor has changed.no resp"

    invoke-static {v0, v1}, Lcom/umeng/socom/Log;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onStart()V
    .locals 0

    .prologue
    .line 150
    return-void
.end method
