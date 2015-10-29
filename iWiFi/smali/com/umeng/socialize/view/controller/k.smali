.class Lcom/umeng/socialize/view/controller/k;
.super Lcom/umeng/socialize/controller/listener/SocializeListeners$LoginListener;
.source "UserCenterController.java"


# instance fields
.field final synthetic a:Lcom/umeng/socialize/view/controller/UserCenterController;

.field private final synthetic b:Lcom/umeng/socialize/view/controller/UserCenterController$ASYNCListener;


# direct methods
.method constructor <init>(Lcom/umeng/socialize/view/controller/UserCenterController;Lcom/umeng/socialize/view/controller/UserCenterController$ASYNCListener;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/umeng/socialize/view/controller/k;->a:Lcom/umeng/socialize/view/controller/UserCenterController;

    iput-object p2, p0, Lcom/umeng/socialize/view/controller/k;->b:Lcom/umeng/socialize/view/controller/UserCenterController$ASYNCListener;

    .line 315
    invoke-direct {p0}, Lcom/umeng/socialize/controller/listener/SocializeListeners$LoginListener;-><init>()V

    return-void
.end method


# virtual methods
.method public loginFailed(I)V
    .locals 2

    .prologue
    .line 327
    invoke-super {p0, p1}, Lcom/umeng/socialize/controller/listener/SocializeListeners$LoginListener;->loginFailed(I)V

    .line 328
    iget-object v0, p0, Lcom/umeng/socialize/view/controller/k;->b:Lcom/umeng/socialize/view/controller/UserCenterController$ASYNCListener;

    if-eqz v0, :cond_0

    .line 329
    iget-object v0, p0, Lcom/umeng/socialize/view/controller/k;->b:Lcom/umeng/socialize/view/controller/UserCenterController$ASYNCListener;

    sget-object v1, Lcom/umeng/socom/net/o$a;->b:Lcom/umeng/socom/net/o$a;

    invoke-interface {v0, v1}, Lcom/umeng/socialize/view/controller/UserCenterController$ASYNCListener;->a(Lcom/umeng/socom/net/o$a;)V

    .line 331
    :cond_0
    return-void
.end method

.method public loginSuccessed(Lcom/umeng/socialize/bean/SHARE_MEDIA;Z)V
    .locals 2

    .prologue
    .line 319
    invoke-super {p0, p1, p2}, Lcom/umeng/socialize/controller/listener/SocializeListeners$LoginListener;->loginSuccessed(Lcom/umeng/socialize/bean/SHARE_MEDIA;Z)V

    .line 320
    iget-object v0, p0, Lcom/umeng/socialize/view/controller/k;->b:Lcom/umeng/socialize/view/controller/UserCenterController$ASYNCListener;

    if-eqz v0, :cond_0

    .line 321
    iget-object v0, p0, Lcom/umeng/socialize/view/controller/k;->b:Lcom/umeng/socialize/view/controller/UserCenterController$ASYNCListener;

    sget-object v1, Lcom/umeng/socom/net/o$a;->a:Lcom/umeng/socom/net/o$a;

    invoke-interface {v0, v1}, Lcom/umeng/socialize/view/controller/UserCenterController$ASYNCListener;->a(Lcom/umeng/socom/net/o$a;)V

    .line 323
    :cond_0
    return-void
.end method
