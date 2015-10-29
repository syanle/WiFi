.class Lcom/umeng/socialize/view/controller/i;
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
    iput-object p1, p0, Lcom/umeng/socialize/view/controller/i;->a:Lcom/umeng/socialize/view/controller/UserCenterController;

    iput-object p2, p0, Lcom/umeng/socialize/view/controller/i;->b:Lcom/umeng/socialize/view/controller/UserCenterController$ASYNCListener;

    iput-object p3, p0, Lcom/umeng/socialize/view/controller/i;->c:Lcom/umeng/socialize/bean/SnsPlatform;

    .line 268
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    .line 271
    iget-object v0, p0, Lcom/umeng/socialize/view/controller/i;->b:Lcom/umeng/socialize/view/controller/UserCenterController$ASYNCListener;

    if-eqz v0, :cond_0

    .line 272
    iget-object v0, p0, Lcom/umeng/socialize/view/controller/i;->b:Lcom/umeng/socialize/view/controller/UserCenterController$ASYNCListener;

    invoke-interface {v0}, Lcom/umeng/socialize/view/controller/UserCenterController$ASYNCListener;->a()V

    .line 274
    :cond_0
    return-void
.end method

.method public a(Lcom/umeng/socom/net/o$a;)V
    .locals 2

    .prologue
    .line 278
    sget-object v0, Lcom/umeng/socom/net/o$a;->a:Lcom/umeng/socom/net/o$a;

    if-ne p1, v0, :cond_0

    .line 279
    iget-object v0, p0, Lcom/umeng/socialize/view/controller/i;->c:Lcom/umeng/socialize/bean/SnsPlatform;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/umeng/socialize/bean/SnsPlatform;->mOauth:Z

    .line 282
    :cond_0
    iget-object v0, p0, Lcom/umeng/socialize/view/controller/i;->b:Lcom/umeng/socialize/view/controller/UserCenterController$ASYNCListener;

    if-eqz v0, :cond_1

    .line 283
    iget-object v0, p0, Lcom/umeng/socialize/view/controller/i;->b:Lcom/umeng/socialize/view/controller/UserCenterController$ASYNCListener;

    invoke-interface {v0, p1}, Lcom/umeng/socialize/view/controller/UserCenterController$ASYNCListener;->a(Lcom/umeng/socom/net/o$a;)V

    .line 285
    :cond_1
    return-void
.end method
