.class public Lcom/umeng/socialize/view/abs/SocializeAlertDialog;
.super Landroid/app/Dialog;
.source "SocializeAlertDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/umeng/socialize/view/abs/SocializeAlertDialog$a;,
        Lcom/umeng/socialize/view/abs/SocializeAlertDialog$SwitchListener;
    }
.end annotation


# instance fields
.field private a:Lcom/umeng/socialize/view/abs/SocializeAlertDialog$SwitchListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/View;)V
    .locals 4

    .prologue
    const/4 v3, -0x1

    .line 37
    .line 38
    sget-object v0, Lcom/umeng/socialize/common/ResContainer$ResType;->STYLE:Lcom/umeng/socialize/common/ResContainer$ResType;

    const-string v1, "umeng_socialize_popup_dialog_anim"

    invoke-static {p1, v0, v1}, Lcom/umeng/socialize/common/ResContainer;->getResourceId(Landroid/content/Context;Lcom/umeng/socialize/common/ResContainer$ResType;Ljava/lang/String;)I

    move-result v0

    invoke-direct {p0, p1, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 40
    new-instance v0, Landroid/widget/RelativeLayout;

    invoke-direct {v0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 41
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 42
    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v1, v3, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 44
    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 46
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    .line 47
    const/4 v2, -0x2

    .line 46
    invoke-direct {v1, v3, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 48
    const/16 v2, 0xc

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 49
    invoke-virtual {p2, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 52
    invoke-virtual {v0, p2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 53
    invoke-virtual {p0, v0}, Lcom/umeng/socialize/view/abs/SocializeAlertDialog;->setContentView(Landroid/view/View;)V

    .line 54
    return-void
.end method


# virtual methods
.method public a()Lcom/umeng/socialize/view/abs/SocializeAlertDialog$SwitchListener;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/umeng/socialize/view/abs/SocializeAlertDialog;->a:Lcom/umeng/socialize/view/abs/SocializeAlertDialog$SwitchListener;

    return-object v0
.end method

.method public a(Lcom/umeng/socialize/view/abs/SocializeAlertDialog$SwitchListener;)V
    .locals 0

    .prologue
    .line 61
    iput-object p1, p0, Lcom/umeng/socialize/view/abs/SocializeAlertDialog;->a:Lcom/umeng/socialize/view/abs/SocializeAlertDialog$SwitchListener;

    .line 62
    return-void
.end method

.method public dismiss()V
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/umeng/socialize/view/abs/SocializeAlertDialog;->a:Lcom/umeng/socialize/view/abs/SocializeAlertDialog$SwitchListener;

    if-eqz v0, :cond_0

    .line 67
    iget-object v0, p0, Lcom/umeng/socialize/view/abs/SocializeAlertDialog;->a:Lcom/umeng/socialize/view/abs/SocializeAlertDialog$SwitchListener;

    invoke-interface {v0}, Lcom/umeng/socialize/view/abs/SocializeAlertDialog$SwitchListener;->b()V

    .line 69
    :cond_0
    invoke-super {p0}, Landroid/app/Dialog;->dismiss()V

    .line 70
    return-void
.end method

.method public show()V
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/umeng/socialize/view/abs/SocializeAlertDialog;->a:Lcom/umeng/socialize/view/abs/SocializeAlertDialog$SwitchListener;

    if-eqz v0, :cond_0

    .line 75
    iget-object v0, p0, Lcom/umeng/socialize/view/abs/SocializeAlertDialog;->a:Lcom/umeng/socialize/view/abs/SocializeAlertDialog$SwitchListener;

    invoke-interface {v0}, Lcom/umeng/socialize/view/abs/SocializeAlertDialog$SwitchListener;->a()V

    .line 77
    :cond_0
    invoke-super {p0}, Landroid/app/Dialog;->show()V

    .line 78
    return-void
.end method
