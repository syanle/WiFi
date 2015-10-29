.class Lcom/umeng/socialize/view/abs/ak;
.super Ljava/lang/Object;
.source "UCenterView.java"

# interfaces
.implements Lcom/umeng/socialize/view/controller/UserCenterController$ASYNCListener;


# instance fields
.field final synthetic a:Lcom/umeng/socialize/view/abs/aj;

.field private final synthetic b:Lcom/umeng/socialize/bean/SnsPlatform;


# direct methods
.method constructor <init>(Lcom/umeng/socialize/view/abs/aj;Lcom/umeng/socialize/bean/SnsPlatform;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/umeng/socialize/view/abs/ak;->a:Lcom/umeng/socialize/view/abs/aj;

    iput-object p2, p0, Lcom/umeng/socialize/view/abs/ak;->b:Lcom/umeng/socialize/bean/SnsPlatform;

    .line 391
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 0

    .prologue
    .line 394
    return-void
.end method

.method public a(Lcom/umeng/socom/net/o$a;)V
    .locals 3

    .prologue
    .line 398
    iget-object v0, p0, Lcom/umeng/socialize/view/abs/ak;->a:Lcom/umeng/socialize/view/abs/aj;

    invoke-static {v0}, Lcom/umeng/socialize/view/abs/aj;->a(Lcom/umeng/socialize/view/abs/aj;)Lcom/umeng/socialize/view/abs/aa;

    move-result-object v0

    invoke-static {v0}, Lcom/umeng/socialize/view/abs/aa;->i(Lcom/umeng/socialize/view/abs/aa;)Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Lcom/umeng/socialize/view/abs/ak;->b:Lcom/umeng/socialize/bean/SnsPlatform;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/umeng/socialize/view/abs/aa$a;

    .line 399
    if-eqz v0, :cond_0

    .line 400
    sget-object v1, Lcom/umeng/socom/net/o$a;->a:Lcom/umeng/socom/net/o$a;

    if-ne p1, v1, :cond_1

    .line 401
    iget-object v0, v0, Lcom/umeng/socialize/view/abs/aa$a;->c:Landroid/widget/ImageView;

    .line 402
    iget-object v1, p0, Lcom/umeng/socialize/view/abs/ak;->b:Lcom/umeng/socialize/bean/SnsPlatform;

    iget v1, v1, Lcom/umeng/socialize/bean/SnsPlatform;->mGrayIcon:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 408
    :cond_0
    :goto_0
    return-void

    .line 404
    :cond_1
    iget-object v1, p0, Lcom/umeng/socialize/view/abs/ak;->a:Lcom/umeng/socialize/view/abs/aj;

    invoke-static {v1}, Lcom/umeng/socialize/view/abs/aj;->a(Lcom/umeng/socialize/view/abs/aj;)Lcom/umeng/socialize/view/abs/aa;

    move-result-object v1

    .line 405
    iget-object v0, v0, Lcom/umeng/socialize/view/abs/aa$a;->a:Lcom/umeng/socialize/view/wigets/SwitchImageView;

    const/4 v2, 0x1

    .line 404
    invoke-static {v1, v0, v2}, Lcom/umeng/socialize/view/abs/aa;->a(Lcom/umeng/socialize/view/abs/aa;Lcom/umeng/socialize/view/wigets/SwitchImageView;Z)V

    goto :goto_0
.end method
