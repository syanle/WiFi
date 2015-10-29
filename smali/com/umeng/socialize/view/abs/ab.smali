.class Lcom/umeng/socialize/view/abs/ab;
.super Ljava/lang/Object;
.source "UCenterView.java"

# interfaces
.implements Lcom/umeng/socialize/view/controller/UserCenterController$OBListener;


# instance fields
.field final synthetic a:Lcom/umeng/socialize/view/abs/aa;


# direct methods
.method constructor <init>(Lcom/umeng/socialize/view/abs/aa;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/umeng/socialize/view/abs/ab;->a:Lcom/umeng/socialize/view/abs/aa;

    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/umeng/socialize/view/controller/UserCenterController$a;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 85
    sget-object v0, Lcom/umeng/socialize/view/controller/UserCenterController$a;->a:Lcom/umeng/socialize/view/controller/UserCenterController$a;

    if-ne p1, v0, :cond_0

    .line 86
    iget-object v0, p0, Lcom/umeng/socialize/view/abs/ab;->a:Lcom/umeng/socialize/view/abs/aa;

    iget-object v0, v0, Lcom/umeng/socialize/view/abs/aa;->a:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 103
    :goto_0
    return-void

    .line 88
    :cond_0
    iget-object v0, p0, Lcom/umeng/socialize/view/abs/ab;->a:Lcom/umeng/socialize/view/abs/aa;

    invoke-static {v0}, Lcom/umeng/socialize/view/abs/aa;->a(Lcom/umeng/socialize/view/abs/aa;)Lcom/umeng/socialize/view/controller/UserCenterController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/umeng/socialize/view/controller/UserCenterController;->b()Lcom/umeng/socialize/bean/SnsAccount;

    move-result-object v0

    .line 89
    if-eqz v0, :cond_1

    .line 90
    iget-object v1, p0, Lcom/umeng/socialize/view/abs/ab;->a:Lcom/umeng/socialize/view/abs/aa;

    invoke-virtual {v1, v0}, Lcom/umeng/socialize/view/abs/aa;->a(Lcom/umeng/socialize/bean/SnsAccount;)V

    .line 91
    iget-object v0, p0, Lcom/umeng/socialize/view/abs/ab;->a:Lcom/umeng/socialize/view/abs/aa;

    invoke-virtual {v0}, Lcom/umeng/socialize/view/abs/aa;->b()V

    .line 92
    iget-object v0, p0, Lcom/umeng/socialize/view/abs/ab;->a:Lcom/umeng/socialize/view/abs/aa;

    invoke-static {v0}, Lcom/umeng/socialize/view/abs/aa;->b(Lcom/umeng/socialize/view/abs/aa;)Landroid/widget/ViewFlipper;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ViewFlipper;->setDisplayedChild(I)V

    .line 101
    :goto_1
    iget-object v0, p0, Lcom/umeng/socialize/view/abs/ab;->a:Lcom/umeng/socialize/view/abs/aa;

    iget-object v0, v0, Lcom/umeng/socialize/view/abs/aa;->a:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 94
    :cond_1
    sget-object v0, Lcom/umeng/socialize/common/SocializeConstants;->GUIDENAME:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 95
    iget-object v0, p0, Lcom/umeng/socialize/view/abs/ab;->a:Lcom/umeng/socialize/view/abs/aa;

    invoke-static {v0}, Lcom/umeng/socialize/view/abs/aa;->c(Lcom/umeng/socialize/view/abs/aa;)Landroid/widget/TextView;

    move-result-object v0

    sget-object v1, Lcom/umeng/socialize/common/SocializeConstants;->GUIDENAME:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 96
    iget-object v0, p0, Lcom/umeng/socialize/view/abs/ab;->a:Lcom/umeng/socialize/view/abs/aa;

    invoke-static {v0}, Lcom/umeng/socialize/view/abs/aa;->d(Lcom/umeng/socialize/view/abs/aa;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/umeng/socialize/view/abs/ab;->a:Lcom/umeng/socialize/view/abs/aa;

    invoke-static {v1}, Lcom/umeng/socialize/view/abs/aa;->e(Lcom/umeng/socialize/view/abs/aa;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 98
    :cond_2
    iget-object v0, p0, Lcom/umeng/socialize/view/abs/ab;->a:Lcom/umeng/socialize/view/abs/aa;

    invoke-virtual {v0}, Lcom/umeng/socialize/view/abs/aa;->b()V

    .line 99
    iget-object v0, p0, Lcom/umeng/socialize/view/abs/ab;->a:Lcom/umeng/socialize/view/abs/aa;

    invoke-static {v0}, Lcom/umeng/socialize/view/abs/aa;->b(Lcom/umeng/socialize/view/abs/aa;)Landroid/widget/ViewFlipper;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/ViewFlipper;->setDisplayedChild(I)V

    goto :goto_1
.end method
