.class Lcom/umeng/socialize/view/abs/aj;
.super Lcom/umeng/socialize/view/abs/UserCenterItems$b;
.source "UCenterView.java"


# instance fields
.field final synthetic a:Lcom/umeng/socialize/view/abs/aa;


# direct methods
.method constructor <init>(Lcom/umeng/socialize/view/abs/aa;Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/umeng/socialize/view/abs/aj;->a:Lcom/umeng/socialize/view/abs/aa;

    .line 365
    invoke-direct {p0, p2}, Lcom/umeng/socialize/view/abs/UserCenterItems$b;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic a(Lcom/umeng/socialize/view/abs/aj;)Lcom/umeng/socialize/view/abs/aa;
    .locals 1

    .prologue
    .line 365
    iget-object v0, p0, Lcom/umeng/socialize/view/abs/aj;->a:Lcom/umeng/socialize/view/abs/aa;

    return-object v0
.end method


# virtual methods
.method public a(Lcom/umeng/socialize/bean/SnsPlatform;)V
    .locals 0

    .prologue
    .line 383
    return-void
.end method

.method protected a(Lcom/umeng/socialize/bean/SnsPlatform;Z)V
    .locals 3

    .prologue
    .line 370
    invoke-super {p0, p1, p2}, Lcom/umeng/socialize/view/abs/UserCenterItems$b;->a(Lcom/umeng/socialize/bean/SnsPlatform;Z)V

    .line 371
    iget-object v0, p0, Lcom/umeng/socialize/view/abs/aj;->a:Lcom/umeng/socialize/view/abs/aa;

    invoke-static {v0}, Lcom/umeng/socialize/view/abs/aa;->i(Lcom/umeng/socialize/view/abs/aa;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 372
    iget-object v0, p0, Lcom/umeng/socialize/view/abs/aj;->a:Lcom/umeng/socialize/view/abs/aa;

    invoke-static {v0}, Lcom/umeng/socialize/view/abs/aa;->i(Lcom/umeng/socialize/view/abs/aa;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/umeng/socialize/view/abs/aa$a;

    iget-object v0, v0, Lcom/umeng/socialize/view/abs/aa$a;->a:Lcom/umeng/socialize/view/wigets/SwitchImageView;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/umeng/socialize/view/wigets/SwitchImageView;->a:Z

    .line 374
    :cond_0
    if-nez p2, :cond_1

    .line 375
    iget-object v0, p0, Lcom/umeng/socialize/view/abs/aj;->a:Lcom/umeng/socialize/view/abs/aa;

    invoke-static {v0}, Lcom/umeng/socialize/view/abs/aa;->i(Lcom/umeng/socialize/view/abs/aa;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/umeng/socialize/view/abs/aa$a;

    .line 376
    iget-object v1, p0, Lcom/umeng/socialize/view/abs/aj;->a:Lcom/umeng/socialize/view/abs/aa;

    iget-object v0, v0, Lcom/umeng/socialize/view/abs/aa$a;->a:Lcom/umeng/socialize/view/wigets/SwitchImageView;

    .line 377
    iget-boolean v2, p1, Lcom/umeng/socialize/bean/SnsPlatform;->mOauth:Z

    .line 376
    invoke-static {v1, v0, v2}, Lcom/umeng/socialize/view/abs/aa;->a(Lcom/umeng/socialize/view/abs/aa;Lcom/umeng/socialize/view/wigets/SwitchImageView;Z)V

    .line 379
    :cond_1
    return-void
.end method

.method public b(Lcom/umeng/socialize/bean/SnsPlatform;)V
    .locals 0

    .prologue
    .line 387
    return-void
.end method

.method public c(Lcom/umeng/socialize/bean/SnsPlatform;)V
    .locals 2

    .prologue
    .line 391
    iget-object v0, p0, Lcom/umeng/socialize/view/abs/aj;->a:Lcom/umeng/socialize/view/abs/aa;

    invoke-static {v0}, Lcom/umeng/socialize/view/abs/aa;->a(Lcom/umeng/socialize/view/abs/aa;)Lcom/umeng/socialize/view/controller/UserCenterController;

    move-result-object v0

    new-instance v1, Lcom/umeng/socialize/view/abs/ak;

    invoke-direct {v1, p0, p1}, Lcom/umeng/socialize/view/abs/ak;-><init>(Lcom/umeng/socialize/view/abs/aj;Lcom/umeng/socialize/bean/SnsPlatform;)V

    invoke-virtual {v0, p1, v1}, Lcom/umeng/socialize/view/controller/UserCenterController;->a(Lcom/umeng/socialize/bean/SnsPlatform;Lcom/umeng/socialize/view/controller/UserCenterController$ASYNCListener;)V

    .line 410
    return-void
.end method
