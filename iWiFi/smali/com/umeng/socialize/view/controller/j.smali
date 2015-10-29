.class Lcom/umeng/socialize/view/controller/j;
.super Ljava/lang/Object;
.source "UserCenterController.java"

# interfaces
.implements Lcom/umeng/socialize/view/controller/UserCenterController$ASYNCListener;


# instance fields
.field final synthetic a:Lcom/umeng/socialize/view/controller/UserCenterController;

.field private final synthetic b:Lcom/umeng/socialize/view/controller/UserCenterController$ASYNCListener;

.field private final synthetic c:Lcom/umeng/socialize/bean/SnsPlatform;


# direct methods
.method constructor <init>(Lcom/umeng/socialize/view/controller/UserCenterController;Lcom/umeng/socialize/view/controller/UserCenterController$ASYNCListener;Lcom/umeng/socialize/bean/SnsPlatform;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/umeng/socialize/view/controller/j;->a:Lcom/umeng/socialize/view/controller/UserCenterController;

    iput-object p2, p0, Lcom/umeng/socialize/view/controller/j;->b:Lcom/umeng/socialize/view/controller/UserCenterController$ASYNCListener;

    iput-object p3, p0, Lcom/umeng/socialize/view/controller/j;->c:Lcom/umeng/socialize/bean/SnsPlatform;

    .line 288
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    .line 291
    iget-object v0, p0, Lcom/umeng/socialize/view/controller/j;->b:Lcom/umeng/socialize/view/controller/UserCenterController$ASYNCListener;

    if-eqz v0, :cond_0

    .line 292
    iget-object v0, p0, Lcom/umeng/socialize/view/controller/j;->b:Lcom/umeng/socialize/view/controller/UserCenterController$ASYNCListener;

    invoke-interface {v0}, Lcom/umeng/socialize/view/controller/UserCenterController$ASYNCListener;->a()V

    .line 294
    :cond_0
    return-void
.end method

.method public a(Lcom/umeng/socom/net/o$a;)V
    .locals 2

    .prologue
    .line 298
    sget-object v0, Lcom/umeng/socom/net/o$a;->a:Lcom/umeng/socom/net/o$a;

    if-ne p1, v0, :cond_0

    .line 299
    iget-object v0, p0, Lcom/umeng/socialize/view/controller/j;->c:Lcom/umeng/socialize/bean/SnsPlatform;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/umeng/socialize/bean/SnsPlatform;->mOauth:Z

    .line 302
    :cond_0
    iget-object v0, p0, Lcom/umeng/socialize/view/controller/j;->b:Lcom/umeng/socialize/view/controller/UserCenterController$ASYNCListener;

    if-eqz v0, :cond_1

    .line 303
    iget-object v0, p0, Lcom/umeng/socialize/view/controller/j;->b:Lcom/umeng/socialize/view/controller/UserCenterController$ASYNCListener;

    invoke-interface {v0, p1}, Lcom/umeng/socialize/view/controller/UserCenterController$ASYNCListener;->a(Lcom/umeng/socom/net/o$a;)V

    .line 305
    :cond_1
    return-void
.end method
