.class Lcom/umeng/socialize/view/controller/g;
.super Ljava/lang/Object;
.source "UserCenterController.java"

# interfaces
.implements Lcom/umeng/socialize/controller/listener/SocializeListeners$SocializeClientListener;


# instance fields
.field final synthetic a:Lcom/umeng/socialize/view/controller/UserCenterController;

.field private final synthetic b:Lcom/umeng/socialize/view/controller/UserCenterController$ASYNCListener;

.field private final synthetic c:Lcom/umeng/socialize/bean/SnsPlatform;


# direct methods
.method constructor <init>(Lcom/umeng/socialize/view/controller/UserCenterController;Lcom/umeng/socialize/view/controller/UserCenterController$ASYNCListener;Lcom/umeng/socialize/bean/SnsPlatform;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/umeng/socialize/view/controller/g;->a:Lcom/umeng/socialize/view/controller/UserCenterController;

    iput-object p2, p0, Lcom/umeng/socialize/view/controller/g;->b:Lcom/umeng/socialize/view/controller/UserCenterController$ASYNCListener;

    iput-object p3, p0, Lcom/umeng/socialize/view/controller/g;->c:Lcom/umeng/socialize/bean/SnsPlatform;

    .line 194
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete(ILcom/umeng/socialize/bean/SocializeEntity;)V
    .locals 2

    .prologue
    .line 205
    iget-object v0, p0, Lcom/umeng/socialize/view/controller/g;->b:Lcom/umeng/socialize/view/controller/UserCenterController$ASYNCListener;

    if-eqz v0, :cond_0

    .line 206
    const/16 v0, 0xc8

    if-ne p1, v0, :cond_1

    .line 207
    iget-object v0, p0, Lcom/umeng/socialize/view/controller/g;->c:Lcom/umeng/socialize/bean/SnsPlatform;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/umeng/socialize/bean/SnsPlatform;->mOauth:Z

    .line 208
    iget-object v0, p0, Lcom/umeng/socialize/view/controller/g;->b:Lcom/umeng/socialize/view/controller/UserCenterController$ASYNCListener;

    sget-object v1, Lcom/umeng/socom/net/o$a;->a:Lcom/umeng/socom/net/o$a;

    invoke-interface {v0, v1}, Lcom/umeng/socialize/view/controller/UserCenterController$ASYNCListener;->a(Lcom/umeng/socom/net/o$a;)V

    .line 213
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/umeng/socialize/view/controller/g;->a:Lcom/umeng/socialize/view/controller/UserCenterController;

    sget-object v1, Lcom/umeng/socialize/view/controller/UserCenterController$a;->b:Lcom/umeng/socialize/view/controller/UserCenterController$a;

    invoke-virtual {v0, v1}, Lcom/umeng/socialize/view/controller/UserCenterController;->a(Lcom/umeng/socialize/view/controller/UserCenterController$a;)V

    .line 214
    return-void

    .line 210
    :cond_1
    iget-object v0, p0, Lcom/umeng/socialize/view/controller/g;->b:Lcom/umeng/socialize/view/controller/UserCenterController$ASYNCListener;

    sget-object v1, Lcom/umeng/socom/net/o$a;->b:Lcom/umeng/socom/net/o$a;

    invoke-interface {v0, v1}, Lcom/umeng/socialize/view/controller/UserCenterController$ASYNCListener;->a(Lcom/umeng/socom/net/o$a;)V

    goto :goto_0
.end method

.method public onStart()V
    .locals 2

    .prologue
    .line 197
    iget-object v0, p0, Lcom/umeng/socialize/view/controller/g;->a:Lcom/umeng/socialize/view/controller/UserCenterController;

    sget-object v1, Lcom/umeng/socialize/view/controller/UserCenterController$a;->a:Lcom/umeng/socialize/view/controller/UserCenterController$a;

    invoke-virtual {v0, v1}, Lcom/umeng/socialize/view/controller/UserCenterController;->a(Lcom/umeng/socialize/view/controller/UserCenterController$a;)V

    .line 198
    iget-object v0, p0, Lcom/umeng/socialize/view/controller/g;->b:Lcom/umeng/socialize/view/controller/UserCenterController$ASYNCListener;

    if-eqz v0, :cond_0

    .line 199
    iget-object v0, p0, Lcom/umeng/socialize/view/controller/g;->b:Lcom/umeng/socialize/view/controller/UserCenterController$ASYNCListener;

    invoke-interface {v0}, Lcom/umeng/socialize/view/controller/UserCenterController$ASYNCListener;->a()V

    .line 201
    :cond_0
    return-void
.end method
