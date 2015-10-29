.class public Lcom/pubinfo/wifi_core/core/view/WifiDialog;
.super Landroid/app/Dialog;
.source "WifiDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pubinfo/wifi_core/core/view/WifiDialog$OnWatchClickListener;
    }
.end annotation


# instance fields
.field private btn_cancel:Landroid/widget/Button;

.field private btn_close:Landroid/widget/Button;

.field private btn_watch:Landroid/widget/Button;

.field private context:Landroid/content/Context;

.field private direImageView:Landroid/widget/ImageView;

.field private direction_tView:Landroid/widget/TextView;

.field private mOnWatchClickListener:Lcom/pubinfo/wifi_core/core/view/WifiDialog$OnWatchClickListener;

.field private point_tView:Landroid/widget/TextView;

.field private title_tView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 57
    invoke-direct {p0, p1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    .line 58
    iput-object p1, p0, Lcom/pubinfo/wifi_core/core/view/WifiDialog;->context:Landroid/content/Context;

    .line 59
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/pubinfo/wifi_core/core/view/WifiDialog;->requestWindowFeature(I)Z

    .line 60
    sget v0, Lcom/pubinfo/wifi_core/R$layout;->wifi_dialog:I

    invoke-virtual {p0, v0}, Lcom/pubinfo/wifi_core/core/view/WifiDialog;->setContentView(I)V

    .line 61
    invoke-virtual {p0}, Lcom/pubinfo/wifi_core/core/view/WifiDialog;->init()V

    .line 62
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "theme"    # I

    .prologue
    .line 65
    invoke-direct {p0, p1, p2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 66
    iput-object p1, p0, Lcom/pubinfo/wifi_core/core/view/WifiDialog;->context:Landroid/content/Context;

    .line 67
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/pubinfo/wifi_core/core/view/WifiDialog;->requestWindowFeature(I)Z

    .line 68
    sget v0, Lcom/pubinfo/wifi_core/R$layout;->wifi_dialog:I

    invoke-virtual {p0, v0}, Lcom/pubinfo/wifi_core/core/view/WifiDialog;->setContentView(I)V

    .line 69
    invoke-virtual {p0}, Lcom/pubinfo/wifi_core/core/view/WifiDialog;->init()V

    .line 70
    return-void
.end method


# virtual methods
.method public OnClose()V
    .locals 1

    .prologue
    .line 131
    invoke-virtual {p0}, Lcom/pubinfo/wifi_core/core/view/WifiDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 132
    invoke-virtual {p0}, Lcom/pubinfo/wifi_core/core/view/WifiDialog;->dismiss()V

    .line 134
    :cond_0
    return-void
.end method

.method public init()V
    .locals 1

    .prologue
    .line 73
    sget v0, Lcom/pubinfo/wifi_core/R$id;->watch:I

    invoke-virtual {p0, v0}, Lcom/pubinfo/wifi_core/core/view/WifiDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/pubinfo/wifi_core/core/view/WifiDialog;->btn_watch:Landroid/widget/Button;

    .line 74
    sget v0, Lcom/pubinfo/wifi_core/R$id;->cancel:I

    invoke-virtual {p0, v0}, Lcom/pubinfo/wifi_core/core/view/WifiDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/pubinfo/wifi_core/core/view/WifiDialog;->btn_cancel:Landroid/widget/Button;

    .line 76
    sget v0, Lcom/pubinfo/wifi_core/R$id;->point:I

    invoke-virtual {p0, v0}, Lcom/pubinfo/wifi_core/core/view/WifiDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/pubinfo/wifi_core/core/view/WifiDialog;->point_tView:Landroid/widget/TextView;

    .line 77
    sget v0, Lcom/pubinfo/wifi_core/R$id;->title:I

    invoke-virtual {p0, v0}, Lcom/pubinfo/wifi_core/core/view/WifiDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/pubinfo/wifi_core/core/view/WifiDialog;->title_tView:Landroid/widget/TextView;

    .line 80
    iget-object v0, p0, Lcom/pubinfo/wifi_core/core/view/WifiDialog;->btn_cancel:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 81
    iget-object v0, p0, Lcom/pubinfo/wifi_core/core/view/WifiDialog;->btn_watch:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 83
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 111
    iget-object v0, p0, Lcom/pubinfo/wifi_core/core/view/WifiDialog;->btn_cancel:Landroid/widget/Button;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 112
    iget-object v0, p0, Lcom/pubinfo/wifi_core/core/view/WifiDialog;->mOnWatchClickListener:Lcom/pubinfo/wifi_core/core/view/WifiDialog$OnWatchClickListener;

    invoke-interface {v0}, Lcom/pubinfo/wifi_core/core/view/WifiDialog$OnWatchClickListener;->onCancelClick()V

    .line 116
    :cond_0
    :goto_0
    return-void

    .line 113
    :cond_1
    iget-object v0, p0, Lcom/pubinfo/wifi_core/core/view/WifiDialog;->btn_watch:Landroid/widget/Button;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 114
    iget-object v0, p0, Lcom/pubinfo/wifi_core/core/view/WifiDialog;->mOnWatchClickListener:Lcom/pubinfo/wifi_core/core/view/WifiDialog$OnWatchClickListener;

    invoke-interface {v0}, Lcom/pubinfo/wifi_core/core/view/WifiDialog$OnWatchClickListener;->onWatchClick()V

    goto :goto_0
.end method

.method public setCanceBtn(I)V
    .locals 4
    .param p1, "w"    # I

    .prologue
    const/4 v3, -0x2

    .line 86
    iget-object v1, p0, Lcom/pubinfo/wifi_core/core/view/WifiDialog;->btn_cancel:Landroid/widget/Button;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 87
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v3, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 89
    .local v0, "lp":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v1, 0xe

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 90
    iget-object v1, p0, Lcom/pubinfo/wifi_core/core/view/WifiDialog;->btn_watch:Landroid/widget/Button;

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 91
    return-void
.end method

.method public setDirection(Ljava/lang/String;)V
    .locals 1
    .param p1, "string"    # Ljava/lang/String;

    .prologue
    .line 102
    iget-object v0, p0, Lcom/pubinfo/wifi_core/core/view/WifiDialog;->direction_tView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 103
    return-void
.end method

.method public setImage(I)V
    .locals 1
    .param p1, "id"    # I

    .prologue
    .line 106
    iget-object v0, p0, Lcom/pubinfo/wifi_core/core/view/WifiDialog;->direImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 107
    return-void
.end method

.method public setOnWatchClickListener(Lcom/pubinfo/wifi_core/core/view/WifiDialog$OnWatchClickListener;)V
    .locals 0
    .param p1, "clickListener"    # Lcom/pubinfo/wifi_core/core/view/WifiDialog$OnWatchClickListener;

    .prologue
    .line 126
    iput-object p1, p0, Lcom/pubinfo/wifi_core/core/view/WifiDialog;->mOnWatchClickListener:Lcom/pubinfo/wifi_core/core/view/WifiDialog$OnWatchClickListener;

    .line 127
    return-void
.end method

.method public setPoint(Ljava/lang/String;)V
    .locals 1
    .param p1, "string"    # Ljava/lang/String;

    .prologue
    .line 94
    iget-object v0, p0, Lcom/pubinfo/wifi_core/core/view/WifiDialog;->point_tView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 95
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 1
    .param p1, "string"    # Ljava/lang/String;

    .prologue
    .line 98
    iget-object v0, p0, Lcom/pubinfo/wifi_core/core/view/WifiDialog;->title_tView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 99
    return-void
.end method
