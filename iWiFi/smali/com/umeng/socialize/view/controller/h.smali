.class Lcom/umeng/socialize/view/controller/h;
.super Ljava/lang/Object;
.source "UserCenterController.java"

# interfaces
.implements Lcom/umeng/socialize/controller/listener/SocializeListeners$UMAuthListener;


# instance fields
.field final synthetic a:Lcom/umeng/socialize/view/controller/UserCenterController;

.field private final synthetic b:Lcom/umeng/socialize/view/controller/UserCenterController$ASYNCListener;

.field private final synthetic c:Lcom/umeng/socialize/bean/SnsPlatform;


# direct methods
.method constructor <init>(Lcom/umeng/socialize/view/controller/UserCenterController;Lcom/umeng/socialize/view/controller/UserCenterController$ASYNCListener;Lcom/umeng/socialize/bean/SnsPlatform;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/umeng/socialize/view/controller/h;->a:Lcom/umeng/socialize/view/controller/UserCenterController;

    iput-object p2, p0, Lcom/umeng/socialize/view/controller/h;->b:Lcom/umeng/socialize/view/controller/UserCenterController$ASYNCListener;

    iput-object p3, p0, Lcom/umeng/socialize/view/controller/h;->c:Lcom/umeng/socialize/bean/SnsPlatform;

    .line 224
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Lcom/umeng/socialize/bean/SHARE_MEDIA;)V
    .locals 2

    .prologue
    .line 249
    iget-object v0, p0, Lcom/umeng/socialize/view/controller/h;->b:Lcom/umeng/socialize/view/controller/UserCenterController$ASYNCListener;

    if-eqz v0, :cond_0

    .line 250
    iget-object v0, p0, Lcom/umeng/socialize/view/controller/h;->b:Lcom/umeng/socialize/view/controller/UserCenterController$ASYNCListener;

    sget-object v1, Lcom/umeng/socom/net/o$a;->b:Lcom/umeng/socom/net/o$a;

    invoke-interface {v0, v1}, Lcom/umeng/socialize/view/controller/UserCenterController$ASYNCListener;->a(Lcom/umeng/socom/net/o$a;)V

    .line 252
    :cond_0
    return-void
.end method

.method public onComplete(Landroid/os/Bundle;Lcom/umeng/socialize/bean/SHARE_MEDIA;)V
    .locals 2

    .prologue
    .line 235
    iget-object v0, p0, Lcom/umeng/socialize/view/controller/h;->b:Lcom/umeng/socialize/view/controller/UserCenterController$ASYNCListener;

    if-eqz v0, :cond_0

    .line 236
    const-string v0, "uid"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 237
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 238
    iget-object v0, p0, Lcom/umeng/socialize/view/controller/h;->c:Lcom/umeng/socialize/bean/SnsPlatform;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/umeng/socialize/bean/SnsPlatform;->mOauth:Z

    .line 239
    iget-object v0, p0, Lcom/umeng/socialize/view/controller/h;->b:Lcom/umeng/socialize/view/controller/UserCenterController$ASYNCListener;

    sget-object v1, Lcom/umeng/socom/net/o$a;->a:Lcom/umeng/socom/net/o$a;

    invoke-interface {v0, v1}, Lcom/umeng/socialize/view/controller/UserCenterController$ASYNCListener;->a(Lcom/umeng/socom/net/o$a;)V

    .line 245
    :cond_0
    :goto_0
    return-void

    .line 241
    :cond_1
    iget-object v0, p0, Lcom/umeng/socialize/view/controller/h;->b:Lcom/umeng/socialize/view/controller/UserCenterController$ASYNCListener;

    sget-object v1, Lcom/umeng/socom/net/o$a;->b:Lcom/umeng/socom/net/o$a;

    invoke-interface {v0, v1}, Lcom/umeng/socialize/view/controller/UserCenterController$ASYNCListener;->a(Lcom/umeng/socom/net/o$a;)V

    goto :goto_0
.end method

.method public onError(Lcom/umeng/socialize/exception/SocializeException;Lcom/umeng/socialize/bean/SHARE_MEDIA;)V
    .locals 2

    .prologue
    .line 228
    iget-object v0, p0, Lcom/umeng/socialize/view/controller/h;->b:Lcom/umeng/socialize/view/controller/UserCenterController$ASYNCListener;

    if-eqz v0, :cond_0

    .line 229
    iget-object v0, p0, Lcom/umeng/socialize/view/controller/h;->b:Lcom/umeng/socialize/view/controller/UserCenterController$ASYNCListener;

    sget-object v1, Lcom/umeng/socom/net/o$a;->b:Lcom/umeng/socom/net/o$a;

    invoke-interface {v0, v1}, Lcom/umeng/socialize/view/controller/UserCenterController$ASYNCListener;->a(Lcom/umeng/socom/net/o$a;)V

    .line 231
    :cond_0
    return-void
.end method

.method public onStart(Lcom/umeng/socialize/bean/SHARE_MEDIA;)V
    .locals 0

    .prologue
    .line 256
    return-void
.end method
