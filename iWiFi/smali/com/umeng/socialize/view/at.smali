.class Lcom/umeng/socialize/view/at;
.super Ljava/lang/Object;
.source "LoginAgent.java"

# interfaces
.implements Lcom/umeng/socialize/controller/listener/SocializeListeners$SocializeClientListener;


# instance fields
.field final synthetic a:Lcom/umeng/socialize/view/ak;


# direct methods
.method constructor <init>(Lcom/umeng/socialize/view/ak;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/umeng/socialize/view/at;->a:Lcom/umeng/socialize/view/ak;

    .line 242
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete(ILcom/umeng/socialize/bean/SocializeEntity;)V
    .locals 3

    .prologue
    .line 250
    iget-object v0, p0, Lcom/umeng/socialize/view/at;->a:Lcom/umeng/socialize/view/ak;

    invoke-static {v0}, Lcom/umeng/socialize/view/ak;->a(Lcom/umeng/socialize/view/ak;)Lcom/umeng/socialize/view/abs/SocialPopupDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/umeng/socialize/view/abs/SocialPopupDialog;->c()V

    .line 251
    const/16 v0, 0xc8

    if-ne p1, v0, :cond_1

    .line 252
    iget-object v0, p0, Lcom/umeng/socialize/view/at;->a:Lcom/umeng/socialize/view/ak;

    invoke-static {v0}, Lcom/umeng/socialize/view/ak;->c(Lcom/umeng/socialize/view/ak;)Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/umeng/socialize/db/c;->a(Landroid/content/Context;Z)V

    .line 253
    iget-object v0, p0, Lcom/umeng/socialize/view/at;->a:Lcom/umeng/socialize/view/ak;

    invoke-virtual {v0}, Lcom/umeng/socialize/view/ak;->b()V

    .line 254
    iget-object v0, p0, Lcom/umeng/socialize/view/at;->a:Lcom/umeng/socialize/view/ak;

    invoke-static {v0}, Lcom/umeng/socialize/view/ak;->b(Lcom/umeng/socialize/view/ak;)Lcom/umeng/socialize/controller/listener/SocializeListeners$LoginListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 255
    iget-object v0, p0, Lcom/umeng/socialize/view/at;->a:Lcom/umeng/socialize/view/ak;

    invoke-static {v0}, Lcom/umeng/socialize/view/ak;->b(Lcom/umeng/socialize/view/ak;)Lcom/umeng/socialize/controller/listener/SocializeListeners$LoginListener;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/umeng/socialize/controller/listener/SocializeListeners$LoginListener;->loginSuccessed(Lcom/umeng/socialize/bean/SHARE_MEDIA;Z)V

    .line 262
    :cond_0
    :goto_0
    return-void

    .line 258
    :cond_1
    iget-object v0, p0, Lcom/umeng/socialize/view/at;->a:Lcom/umeng/socialize/view/ak;

    invoke-static {v0}, Lcom/umeng/socialize/view/ak;->b(Lcom/umeng/socialize/view/ak;)Lcom/umeng/socialize/controller/listener/SocializeListeners$LoginListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 259
    iget-object v0, p0, Lcom/umeng/socialize/view/at;->a:Lcom/umeng/socialize/view/ak;

    invoke-static {v0}, Lcom/umeng/socialize/view/ak;->b(Lcom/umeng/socialize/view/ak;)Lcom/umeng/socialize/controller/listener/SocializeListeners$LoginListener;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/umeng/socialize/controller/listener/SocializeListeners$LoginListener;->loginFailed(I)V

    goto :goto_0
.end method

.method public onStart()V
    .locals 1

    .prologue
    .line 245
    iget-object v0, p0, Lcom/umeng/socialize/view/at;->a:Lcom/umeng/socialize/view/ak;

    invoke-static {v0}, Lcom/umeng/socialize/view/ak;->a(Lcom/umeng/socialize/view/ak;)Lcom/umeng/socialize/view/abs/SocialPopupDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/umeng/socialize/view/abs/SocialPopupDialog;->b()V

    .line 246
    return-void
.end method
