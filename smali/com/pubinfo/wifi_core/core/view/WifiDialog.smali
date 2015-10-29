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


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 55
    invoke-direct {p0, p1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    .line 56
    iput-object p1, p0, Lcom/pubinfo/wifi_core/core/view/WifiDialog;->context:Landroid/content/Context;

    .line 57
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/pubinfo/wifi_core/core/view/WifiDialog;->requestWindowFeature(I)Z

    .line 58
    sget v0, Lcom/pubinfo/wifi_core/R$layout;->wifi_dialog:I

    invoke-virtual {p0, v0}, Lcom/pubinfo/wifi_core/core/view/WifiDialog;->setContentView(I)V

    .line 59
    invoke-virtual {p0}, Lcom/pubinfo/wifi_core/core/view/WifiDialog;->init()V

    .line 60
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "theme"    # I

    .prologue
    .line 63
    invoke-direct {p0, p1, p2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 64
    iput-object p1, p0, Lcom/pubinfo/wifi_core/core/view/WifiDialog;->context:Landroid/content/Context;

    .line 65
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/pubinfo/wifi_core/core/view/WifiDialog;->requestWindowFeature(I)Z

    .line 66
    sget v0, Lcom/pubinfo/wifi_core/R$layout;->wifi_dialog:I

    invoke-virtual {p0, v0}, Lcom/pubinfo/wifi_core/core/view/WifiDialog;->setContentView(I)V

    .line 67
    invoke-virtual {p0}, Lcom/pubinfo/wifi_core/core/view/WifiDialog;->init()V

    .line 68
    return-void
.end method


# virtual methods
.method public OnClose()V
    .locals 1

    .prologue
    .line 123
    invoke-virtual {p0}, Lcom/pubinfo/wifi_core/core/view/WifiDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 124
    invoke-virtual {p0}, Lcom/pubinfo/wifi_core/core/view/WifiDialog;->dismiss()V

    .line 126
    :cond_0
    return-void
.end method

.method public init()V
    .locals 1

    .prologue
    .line 71
    sget v0, Lcom/pubinfo/wifi_core/R$id;->watch:I

    invoke-virtual {p0, v0}, Lcom/pubinfo/wifi_core/core/view/WifiDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/pubinfo/wifi_core/core/view/WifiDialog;->btn_watch:Landroid/widget/Button;

    .line 72
    sget v0, Lcom/pubinfo/wifi_core/R$id;->cancel:I

    invoke-virtual {p0, v0}, Lcom/pubinfo/wifi_core/core/view/WifiDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/pubinfo/wifi_core/core/view/WifiDialog;->btn_cancel:Landroid/widget/Button;

    .line 74
    sget v0, Lcom/pubinfo/wifi_core/R$id;->point:I

    invoke-virtual {p0, v0}, Lcom/pubinfo/wifi_core/core/view/WifiDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/pubinfo/wifi_core/core/view/WifiDialog;->point_tView:Landroid/widget/TextView;

    .line 77
    iget-object v0, p0, Lcom/pubinfo/wifi_core/core/view/WifiDialog;->btn_cancel:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 78
    iget-object v0, p0, Lcom/pubinfo/wifi_core/core/view/WifiDialog;->btn_watch:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 80
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 103
    iget-object v0, p0, Lcom/pubinfo/wifi_core/core/view/WifiDialog;->btn_cancel:Landroid/widget/Button;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 104
    iget-object v0, p0, Lcom/pubinfo/wifi_core/core/view/WifiDialog;->mOnWatchClickListener:Lcom/pubinfo/wifi_core/core/view/WifiDialog$OnWatchClickListener;

    invoke-interface {v0}, Lcom/pubinfo/wifi_core/core/view/WifiDialog$OnWatchClickListener;->onCancelClick()V

    .line 108
    :cond_0
    :goto_0
    return-void

    .line 105
    :cond_1
    iget-object v0, p0, Lcom/pubinfo/wifi_core/core/view/WifiDialog;->btn_watch:Landroid/widget/Button;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 106
    iget-object v0, p0, Lcom/pubinfo/wifi_core/core/view/WifiDialog;->mOnWatchClickListener:Lcom/pubinfo/wifi_core/core/view/WifiDialog$OnWatchClickListener;

    invoke-interface {v0}, Lcom/pubinfo/wifi_core/core/view/WifiDialog$OnWatchClickListener;->onWatchClick()V

    goto :goto_0
.end method

.method public setCanceBtn(I)V
    .locals 5
    .param p1, "w"    # I

    .prologue
    const/4 v4, -0x2

    const/4 v3, 0x0

    .line 83
    iget-object v1, p0, Lcom/pubinfo/wifi_core/core/view/WifiDialog;->btn_cancel:Landroid/widget/Button;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 84
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v4, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 85
    .local v0, "lp":Landroid/widget/RelativeLayout$LayoutParams;
    invoke-virtual {v0, p1, v3, v3, v3}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 86
    iget-object v1, p0, Lcom/pubinfo/wifi_core/core/view/WifiDialog;->btn_watch:Landroid/widget/Button;

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 87
    return-void
.end method

.method public setDirection(Ljava/lang/String;)V
    .locals 1
    .param p1, "string"    # Ljava/lang/String;

    .prologue
    .line 94
    iget-object v0, p0, Lcom/pubinfo/wifi_core/core/view/WifiDialog;->direction_tView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 95
    return-void
.end method

.method public setImage(I)V
    .locals 1
    .param p1, "id"    # I

    .prologue
    .line 98
    iget-object v0, p0, Lcom/pubinfo/wifi_core/core/view/WifiDialog;->direImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 99
    return-void
.end method

.method public setOnWatchClickListener(Lcom/pubinfo/wifi_core/core/view/WifiDialog$OnWatchClickListener;)V
    .locals 0
    .param p1, "clickListener"    # Lcom/pubinfo/wifi_core/core/view/WifiDialog$OnWatchClickListener;

    .prologue
    .line 118
    iput-object p1, p0, Lcom/pubinfo/wifi_core/core/view/WifiDialog;->mOnWatchClickListener:Lcom/pubinfo/wifi_core/core/view/WifiDialog$OnWatchClickListener;

    .line 119
    return-void
.end method

.method public setPoint(Ljava/lang/String;)V
    .locals 1
    .param p1, "string"    # Ljava/lang/String;

    .prologue
    .line 90
    iget-object v0, p0, Lcom/pubinfo/wifi_core/core/view/WifiDialog;->point_tView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 91
    return-void
.end method
