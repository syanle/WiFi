.class Lcom/umeng/socialize/view/abs/ag;
.super Ljava/lang/Object;
.source "UCenterView.java"

# interfaces
.implements Lcom/umeng/socialize/view/controller/UserCenterController$ASYNCListener;


# instance fields
.field final synthetic a:Lcom/umeng/socialize/view/abs/aa;


# direct methods
.method constructor <init>(Lcom/umeng/socialize/view/abs/aa;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/umeng/socialize/view/abs/ag;->a:Lcom/umeng/socialize/view/abs/aa;

    .line 325
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 0

    .prologue
    .line 328
    return-void
.end method

.method public a(Lcom/umeng/socom/net/o$a;)V
    .locals 4

    .prologue
    .line 332
    sget-object v0, Lcom/umeng/socom/net/o$a;->a:Lcom/umeng/socom/net/o$a;

    if-ne p1, v0, :cond_0

    .line 333
    iget-object v0, p0, Lcom/umeng/socialize/view/abs/ag;->a:Lcom/umeng/socialize/view/abs/aa;

    invoke-virtual {v0}, Lcom/umeng/socialize/view/abs/aa;->a()V

    .line 342
    :goto_0
    return-void

    .line 336
    :cond_0
    iget-object v0, p0, Lcom/umeng/socialize/view/abs/ag;->a:Lcom/umeng/socialize/view/abs/aa;

    invoke-virtual {v0}, Lcom/umeng/socialize/view/abs/aa;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 337
    iget-object v1, p0, Lcom/umeng/socialize/view/abs/ag;->a:Lcom/umeng/socialize/view/abs/aa;

    invoke-static {v1}, Lcom/umeng/socialize/view/abs/aa;->k(Lcom/umeng/socialize/view/abs/aa;)Landroid/content/Context;

    move-result-object v1

    .line 338
    sget-object v2, Lcom/umeng/socialize/common/ResContainer$ResType;->STRING:Lcom/umeng/socialize/common/ResContainer$ResType;

    .line 339
    const-string v3, "umeng_socialize_text_login_fail"

    .line 337
    invoke-static {v1, v2, v3}, Lcom/umeng/socialize/common/ResContainer;->getResourceId(Landroid/content/Context;Lcom/umeng/socialize/common/ResContainer$ResType;Ljava/lang/String;)I

    move-result v1

    .line 340
    const/4 v2, 0x0

    .line 335
    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    .line 340
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method
