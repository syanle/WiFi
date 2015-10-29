.class Lcom/umeng/socialize/view/abs/y;
.super Ljava/lang/Object;
.source "SocializeBaseView.java"

# interfaces
.implements Lcom/umeng/socialize/view/abs/SocializeBaseView$SocializeInitListener;


# instance fields
.field final synthetic a:Lcom/umeng/socialize/view/abs/SocializeBaseView;


# direct methods
.method constructor <init>(Lcom/umeng/socialize/view/abs/SocializeBaseView;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/umeng/socialize/view/abs/y;->a:Lcom/umeng/socialize/view/abs/SocializeBaseView;

    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;Lcom/umeng/socialize/controller/UMSocialService;)V
    .locals 2

    .prologue
    .line 96
    iget-object v0, p0, Lcom/umeng/socialize/view/abs/y;->a:Lcom/umeng/socialize/view/abs/SocializeBaseView;

    iget-object v1, p0, Lcom/umeng/socialize/view/abs/y;->a:Lcom/umeng/socialize/view/abs/SocializeBaseView;

    iget-object v1, v1, Lcom/umeng/socialize/view/abs/SocializeBaseView;->b:Lcom/umeng/socialize/controller/UMSocialService;

    invoke-virtual {v0, v1}, Lcom/umeng/socialize/view/abs/SocializeBaseView;->onViewLoad(Lcom/umeng/socialize/controller/UMSocialService;)V

    .line 97
    return-void
.end method

.method public a(Lcom/umeng/socialize/exception/SocializeException;)V
    .locals 2

    .prologue
    .line 90
    const-string v0, "com.umeng.view.SocialView"

    const-string v1, "Error initializing Socialize"

    invoke-static {v0, v1, p1}, Lcom/umeng/socom/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 91
    iget-object v0, p0, Lcom/umeng/socialize/view/abs/y;->a:Lcom/umeng/socialize/view/abs/SocializeBaseView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/umeng/socialize/view/abs/SocializeBaseView;->onViewLoad(Lcom/umeng/socialize/controller/UMSocialService;)V

    .line 92
    return-void
.end method
