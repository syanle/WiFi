.class Lcom/umeng/socialize/view/as;
.super Ljava/lang/Object;
.source "LoginAgent.java"

# interfaces
.implements Lcom/umeng/socialize/controller/listener/SocializeListeners$SocializeClientListener;


# instance fields
.field final synthetic a:Lcom/umeng/socialize/view/ak;

.field private final synthetic b:Lcom/umeng/socialize/bean/SHARE_MEDIA;


# direct methods
.method constructor <init>(Lcom/umeng/socialize/view/ak;Lcom/umeng/socialize/bean/SHARE_MEDIA;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/umeng/socialize/view/as;->a:Lcom/umeng/socialize/view/ak;

    iput-object p2, p0, Lcom/umeng/socialize/view/as;->b:Lcom/umeng/socialize/bean/SHARE_MEDIA;

    .line 218
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete(ILcom/umeng/socialize/bean/SocializeEntity;)V
    .locals 3

    .prologue
    .line 228
    iget-object v0, p0, Lcom/umeng/socialize/view/as;->a:Lcom/umeng/socialize/view/ak;

    invoke-static {v0}, Lcom/umeng/socialize/view/ak;->a(Lcom/umeng/socialize/view/ak;)Lcom/umeng/socialize/view/abs/SocialPopupDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/umeng/socialize/view/abs/SocialPopupDialog;->c()V

    .line 229
    const/16 v0, 0xc8

    if-ne p1, v0, :cond_1

    .line 230
    iget-object v0, p0, Lcom/umeng/socialize/view/as;->a:Lcom/umeng/socialize/view/ak;

    invoke-virtual {v0}, Lcom/umeng/socialize/view/ak;->b()V

    .line 231
    iget-object v0, p0, Lcom/umeng/socialize/view/as;->a:Lcom/umeng/socialize/view/ak;

    invoke-static {v0}, Lcom/umeng/socialize/view/ak;->b(Lcom/umeng/socialize/view/ak;)Lcom/umeng/socialize/controller/listener/SocializeListeners$LoginListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 232
    iget-object v0, p0, Lcom/umeng/socialize/view/as;->a:Lcom/umeng/socialize/view/ak;

    invoke-static {v0}, Lcom/umeng/socialize/view/ak;->b(Lcom/umeng/socialize/view/ak;)Lcom/umeng/socialize/controller/listener/SocializeListeners$LoginListener;

    move-result-object v0

    iget-object v1, p0, Lcom/umeng/socialize/view/as;->b:Lcom/umeng/socialize/bean/SHARE_MEDIA;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/umeng/socialize/controller/listener/SocializeListeners$LoginListener;->loginSuccessed(Lcom/umeng/socialize/bean/SHARE_MEDIA;Z)V

    .line 239
    :cond_0
    :goto_0
    return-void

    .line 235
    :cond_1
    iget-object v0, p0, Lcom/umeng/socialize/view/as;->a:Lcom/umeng/socialize/view/ak;

    invoke-static {v0}, Lcom/umeng/socialize/view/ak;->b(Lcom/umeng/socialize/view/ak;)Lcom/umeng/socialize/controller/listener/SocializeListeners$LoginListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 236
    iget-object v0, p0, Lcom/umeng/socialize/view/as;->a:Lcom/umeng/socialize/view/ak;

    invoke-static {v0}, Lcom/umeng/socialize/view/ak;->b(Lcom/umeng/socialize/view/ak;)Lcom/umeng/socialize/controller/listener/SocializeListeners$LoginListener;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/umeng/socialize/controller/listener/SocializeListeners$LoginListener;->loginFailed(I)V

    goto :goto_0
.end method

.method public onStart()V
    .locals 1

    .prologue
    .line 221
    iget-object v0, p0, Lcom/umeng/socialize/view/as;->a:Lcom/umeng/socialize/view/ak;

    invoke-static {v0}, Lcom/umeng/socialize/view/ak;->a(Lcom/umeng/socialize/view/ak;)Lcom/umeng/socialize/view/abs/SocialPopupDialog;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/umeng/socialize/view/as;->a:Lcom/umeng/socialize/view/ak;

    invoke-static {v0}, Lcom/umeng/socialize/view/ak;->a(Lcom/umeng/socialize/view/ak;)Lcom/umeng/socialize/view/abs/SocialPopupDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/umeng/socialize/view/abs/SocialPopupDialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 222
    iget-object v0, p0, Lcom/umeng/socialize/view/as;->a:Lcom/umeng/socialize/view/ak;

    invoke-static {v0}, Lcom/umeng/socialize/view/ak;->a(Lcom/umeng/socialize/view/ak;)Lcom/umeng/socialize/view/abs/SocialPopupDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/umeng/socialize/view/abs/SocialPopupDialog;->b()V

    .line 224
    :cond_0
    return-void
.end method
