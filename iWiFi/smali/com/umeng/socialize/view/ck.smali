.class public Lcom/umeng/socialize/view/ck;
.super Landroid/app/Dialog;
.source "UCenterDialog.java"


# instance fields
.field private a:Landroid/content/Context;

.field private b:Landroid/view/View;

.field private c:Landroid/widget/RelativeLayout;

.field private d:Ljava/lang/String;

.field private e:I

.field private f:Lcom/umeng/socialize/view/abs/aa;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 4

    .prologue
    const/4 v2, -0x1

    .line 33
    .line 34
    sget-object v0, Lcom/umeng/socialize/common/ResContainer$ResType;->STYLE:Lcom/umeng/socialize/common/ResContainer$ResType;

    .line 35
    const-string v1, "umeng_socialize_popup_dialog"

    invoke-static {p1, v0, v1}, Lcom/umeng/socialize/common/ResContainer;->getResourceId(Landroid/content/Context;Lcom/umeng/socialize/common/ResContainer$ResType;Ljava/lang/String;)I

    move-result v0

    invoke-direct {p0, p1, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 36
    iput-object p1, p0, Lcom/umeng/socialize/view/ck;->a:Landroid/content/Context;

    .line 37
    iput-object p2, p0, Lcom/umeng/socialize/view/ck;->d:Ljava/lang/String;

    .line 38
    iput p3, p0, Lcom/umeng/socialize/view/ck;->e:I

    .line 39
    new-instance v0, Landroid/widget/RelativeLayout;

    invoke-direct {v0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/umeng/socialize/view/ck;->c:Landroid/widget/RelativeLayout;

    .line 40
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v0, v2, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 42
    iget-object v1, p0, Lcom/umeng/socialize/view/ck;->c:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 44
    iget-object v0, p0, Lcom/umeng/socialize/view/ck;->c:Landroid/widget/RelativeLayout;

    invoke-virtual {p0, v0}, Lcom/umeng/socialize/view/ck;->setContentView(Landroid/view/View;)V

    .line 46
    invoke-virtual {p0}, Lcom/umeng/socialize/view/ck;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    .line 48
    invoke-static {p1}, Lcom/umeng/socialize/common/SocializeUtils;->isFloatWindowStyle(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 49
    invoke-static {p1}, Lcom/umeng/socialize/common/SocializeUtils;->getFloatWindowSize(Landroid/content/Context;)[I

    move-result-object v0

    .line 50
    const/4 v2, 0x0

    aget v2, v0, v2

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 51
    const/4 v2, 0x1

    aget v0, v0, v2

    iput v0, v1, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 52
    invoke-virtual {p0}, Lcom/umeng/socialize/view/ck;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 53
    sget-object v2, Lcom/umeng/socialize/common/ResContainer$ResType;->STYLE:Lcom/umeng/socialize/common/ResContainer$ResType;

    .line 54
    const-string v3, "umeng_socialize_dialog_anim_fade"

    .line 52
    invoke-static {v0, v2, v3}, Lcom/umeng/socialize/common/ResContainer;->getResourceId(Landroid/content/Context;Lcom/umeng/socialize/common/ResContainer$ResType;Ljava/lang/String;)I

    move-result v0

    .line 62
    :goto_0
    invoke-virtual {p0}, Lcom/umeng/socialize/view/ck;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    iput v0, v2, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 63
    invoke-virtual {p0}, Lcom/umeng/socialize/view/ck;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 65
    return-void

    .line 56
    :cond_0
    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 57
    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 58
    invoke-virtual {p0}, Lcom/umeng/socialize/view/ck;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 59
    sget-object v2, Lcom/umeng/socialize/common/ResContainer$ResType;->STYLE:Lcom/umeng/socialize/common/ResContainer$ResType;

    .line 60
    const-string v3, "umeng_socialize_dialog_animations"

    .line 58
    invoke-static {v0, v2, v3}, Lcom/umeng/socialize/common/ResContainer;->getResourceId(Landroid/content/Context;Lcom/umeng/socialize/common/ResContainer$ResType;Ljava/lang/String;)I

    move-result v0

    goto :goto_0
.end method


# virtual methods
.method public dismiss()V
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lcom/umeng/socialize/view/ck;->b:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 96
    :goto_0
    return-void

    .line 95
    :cond_0
    invoke-super {p0}, Landroid/app/Dialog;->dismiss()V

    goto :goto_0
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 2

    .prologue
    .line 100
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/umeng/socialize/view/ck;->b:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 101
    iget-object v0, p0, Lcom/umeng/socialize/view/ck;->b:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 102
    iget-object v0, p0, Lcom/umeng/socialize/view/ck;->f:Lcom/umeng/socialize/view/abs/aa;

    invoke-virtual {v0}, Lcom/umeng/socialize/view/abs/aa;->d()V

    .line 103
    const/4 v0, 0x1

    .line 107
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Landroid/app/Dialog;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public show()V
    .locals 5

    .prologue
    const/4 v4, -0x1

    .line 69
    iget-object v0, p0, Lcom/umeng/socialize/view/ck;->c:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getChildCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 70
    iget-object v0, p0, Lcom/umeng/socialize/view/ck;->c:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->removeAllViews()V

    .line 73
    :cond_0
    new-instance v0, Lcom/umeng/socialize/view/controller/UserCenterController;

    iget-object v1, p0, Lcom/umeng/socialize/view/ck;->a:Landroid/content/Context;

    iget-object v2, p0, Lcom/umeng/socialize/view/ck;->d:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lcom/umeng/socialize/view/controller/UserCenterController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 74
    new-instance v1, Lcom/umeng/socialize/view/abs/aa;

    iget-object v2, p0, Lcom/umeng/socialize/view/ck;->a:Landroid/content/Context;

    iget v3, p0, Lcom/umeng/socialize/view/ck;->e:I

    invoke-direct {v1, v2, v0, v3}, Lcom/umeng/socialize/view/abs/aa;-><init>(Landroid/content/Context;Lcom/umeng/socialize/view/controller/UserCenterController;I)V

    iput-object v1, p0, Lcom/umeng/socialize/view/ck;->f:Lcom/umeng/socialize/view/abs/aa;

    .line 76
    iget-object v0, p0, Lcom/umeng/socialize/view/ck;->f:Lcom/umeng/socialize/view/abs/aa;

    iget-object v0, v0, Lcom/umeng/socialize/view/abs/aa;->a:Landroid/view/View;

    iput-object v0, p0, Lcom/umeng/socialize/view/ck;->b:Landroid/view/View;

    .line 77
    iget-object v0, p0, Lcom/umeng/socialize/view/ck;->c:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/umeng/socialize/view/ck;->f:Lcom/umeng/socialize/view/abs/aa;

    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    .line 78
    invoke-direct {v2, v4, v4}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 77
    invoke-virtual {v0, v1, v2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 79
    iget-object v0, p0, Lcom/umeng/socialize/view/ck;->f:Lcom/umeng/socialize/view/abs/aa;

    new-instance v1, Lcom/umeng/socialize/view/cl;

    invoke-direct {v1, p0}, Lcom/umeng/socialize/view/cl;-><init>(Lcom/umeng/socialize/view/ck;)V

    invoke-virtual {v0, v1}, Lcom/umeng/socialize/view/abs/aa;->a(Landroid/view/View$OnClickListener;)V

    .line 86
    iget-object v0, p0, Lcom/umeng/socialize/view/ck;->f:Lcom/umeng/socialize/view/abs/aa;

    invoke-virtual {v0}, Lcom/umeng/socialize/view/abs/aa;->a()V

    .line 87
    invoke-super {p0}, Landroid/app/Dialog;->show()V

    .line 88
    return-void
.end method
