.class Lcom/umeng/socialize/view/abs/ac;
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
    iput-object p1, p0, Lcom/umeng/socialize/view/abs/ac;->a:Lcom/umeng/socialize/view/abs/aa;

    .line 112
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 0

    .prologue
    .line 115
    return-void
.end method

.method public a(Lcom/umeng/socom/net/o$a;)V
    .locals 2

    .prologue
    .line 119
    sget-object v0, Lcom/umeng/socom/net/o$a;->b:Lcom/umeng/socom/net/o$a;

    if-ne p1, v0, :cond_1

    .line 120
    iget-object v0, p0, Lcom/umeng/socialize/view/abs/ac;->a:Lcom/umeng/socialize/view/abs/aa;

    invoke-static {v0}, Lcom/umeng/socialize/view/abs/aa;->f(Lcom/umeng/socialize/view/abs/aa;)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 121
    iget-object v0, p0, Lcom/umeng/socialize/view/abs/ac;->a:Lcom/umeng/socialize/view/abs/aa;

    invoke-static {v0}, Lcom/umeng/socialize/view/abs/aa;->g(Lcom/umeng/socialize/view/abs/aa;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 126
    :cond_0
    :goto_0
    return-void

    .line 122
    :cond_1
    iget-object v0, p0, Lcom/umeng/socialize/view/abs/ac;->a:Lcom/umeng/socialize/view/abs/aa;

    invoke-static {v0}, Lcom/umeng/socialize/view/abs/aa;->a(Lcom/umeng/socialize/view/abs/aa;)Lcom/umeng/socialize/view/controller/UserCenterController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/umeng/socialize/view/controller/UserCenterController;->b()Lcom/umeng/socialize/bean/SnsAccount;

    move-result-object v0

    if-nez v0, :cond_0

    .line 123
    iget-object v0, p0, Lcom/umeng/socialize/view/abs/ac;->a:Lcom/umeng/socialize/view/abs/aa;

    invoke-virtual {v0}, Lcom/umeng/socialize/view/abs/aa;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/umeng/socialize/db/c;->a(Landroid/content/Context;)V

    .line 124
    iget-object v0, p0, Lcom/umeng/socialize/view/abs/ac;->a:Lcom/umeng/socialize/view/abs/aa;

    invoke-static {v0}, Lcom/umeng/socialize/view/abs/aa;->f(Lcom/umeng/socialize/view/abs/aa;)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/umeng/socialize/view/abs/ac;->a:Lcom/umeng/socialize/view/abs/aa;

    invoke-static {v1}, Lcom/umeng/socialize/view/abs/aa;->h(Lcom/umeng/socialize/view/abs/aa;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method
