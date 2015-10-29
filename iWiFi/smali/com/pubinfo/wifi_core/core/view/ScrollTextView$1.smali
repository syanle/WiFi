.class Lcom/pubinfo/wifi_core/core/view/ScrollTextView$1;
.super Landroid/os/Handler;
.source "ScrollTextView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pubinfo/wifi_core/core/view/ScrollTextView;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pubinfo/wifi_core/core/view/ScrollTextView;


# direct methods
.method constructor <init>(Lcom/pubinfo/wifi_core/core/view/ScrollTextView;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/pubinfo/wifi_core/core/view/ScrollTextView$1;->this$0:Lcom/pubinfo/wifi_core/core/view/ScrollTextView;

    .line 112
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method private resetCurrentY()V
    .locals 2

    .prologue
    .line 146
    iget-object v0, p0, Lcom/pubinfo/wifi_core/core/view/ScrollTextView$1;->this$0:Lcom/pubinfo/wifi_core/core/view/ScrollTextView;

    iget v0, v0, Lcom/pubinfo/wifi_core/core/view/ScrollTextView;->currentY:F

    iget-object v1, p0, Lcom/pubinfo/wifi_core/core/view/ScrollTextView$1;->this$0:Lcom/pubinfo/wifi_core/core/view/ScrollTextView;

    iget v1, v1, Lcom/pubinfo/wifi_core/core/view/ScrollTextView;->absloutHeight:F

    cmpl-float v0, v0, v1

    if-gez v0, :cond_0

    iget-object v0, p0, Lcom/pubinfo/wifi_core/core/view/ScrollTextView$1;->this$0:Lcom/pubinfo/wifi_core/core/view/ScrollTextView;

    iget v0, v0, Lcom/pubinfo/wifi_core/core/view/ScrollTextView;->currentY:F

    iget-object v1, p0, Lcom/pubinfo/wifi_core/core/view/ScrollTextView$1;->this$0:Lcom/pubinfo/wifi_core/core/view/ScrollTextView;

    iget v1, v1, Lcom/pubinfo/wifi_core/core/view/ScrollTextView;->absloutHeight:F

    neg-float v1, v1

    cmpg-float v0, v0, v1

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/pubinfo/wifi_core/core/view/ScrollTextView$1;->this$0:Lcom/pubinfo/wifi_core/core/view/ScrollTextView;

    invoke-virtual {v0}, Lcom/pubinfo/wifi_core/core/view/ScrollTextView;->getHeight()I

    move-result v0

    if-gtz v0, :cond_1

    .line 147
    :cond_0
    iget-object v0, p0, Lcom/pubinfo/wifi_core/core/view/ScrollTextView$1;->this$0:Lcom/pubinfo/wifi_core/core/view/ScrollTextView;

    const/4 v1, 0x0

    iput v1, v0, Lcom/pubinfo/wifi_core/core/view/ScrollTextView;->currentY:F

    .line 150
    :cond_1
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 116
    iget-object v0, p0, Lcom/pubinfo/wifi_core/core/view/ScrollTextView$1;->this$0:Lcom/pubinfo/wifi_core/core/view/ScrollTextView;

    iget v0, v0, Lcom/pubinfo/wifi_core/core/view/ScrollTextView;->absloutHeight:F

    iget-object v1, p0, Lcom/pubinfo/wifi_core/core/view/ScrollTextView$1;->this$0:Lcom/pubinfo/wifi_core/core/view/ScrollTextView;

    invoke-virtual {v1}, Lcom/pubinfo/wifi_core/core/view/ScrollTextView;->getHeight()I

    move-result v1

    int-to-float v1, v1

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_0

    .line 117
    iget-object v0, p0, Lcom/pubinfo/wifi_core/core/view/ScrollTextView$1;->this$0:Lcom/pubinfo/wifi_core/core/view/ScrollTextView;

    const/4 v1, 0x0

    iput v1, v0, Lcom/pubinfo/wifi_core/core/view/ScrollTextView;->currentY:F

    .line 118
    iget-object v0, p0, Lcom/pubinfo/wifi_core/core/view/ScrollTextView$1;->this$0:Lcom/pubinfo/wifi_core/core/view/ScrollTextView;

    invoke-virtual {v0}, Lcom/pubinfo/wifi_core/core/view/ScrollTextView;->stop()V

    .line 140
    :goto_0
    return-void

    .line 121
    :cond_0
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 124
    :pswitch_0
    iget-object v0, p0, Lcom/pubinfo/wifi_core/core/view/ScrollTextView$1;->this$0:Lcom/pubinfo/wifi_core/core/view/ScrollTextView;

    iget v1, v0, Lcom/pubinfo/wifi_core/core/view/ScrollTextView;->currentY:F

    iget-object v2, p0, Lcom/pubinfo/wifi_core/core/view/ScrollTextView$1;->this$0:Lcom/pubinfo/wifi_core/core/view/ScrollTextView;

    iget v2, v2, Lcom/pubinfo/wifi_core/core/view/ScrollTextView;->speed:F

    sub-float/2addr v1, v2

    iput v1, v0, Lcom/pubinfo/wifi_core/core/view/ScrollTextView;->currentY:F

    .line 126
    invoke-direct {p0}, Lcom/pubinfo/wifi_core/core/view/ScrollTextView$1;->resetCurrentY()V

    .line 127
    iget-object v0, p0, Lcom/pubinfo/wifi_core/core/view/ScrollTextView$1;->this$0:Lcom/pubinfo/wifi_core/core/view/ScrollTextView;

    invoke-virtual {v0}, Lcom/pubinfo/wifi_core/core/view/ScrollTextView;->invalidate()V

    .line 128
    iget-object v0, p0, Lcom/pubinfo/wifi_core/core/view/ScrollTextView$1;->this$0:Lcom/pubinfo/wifi_core/core/view/ScrollTextView;

    iget-object v0, v0, Lcom/pubinfo/wifi_core/core/view/ScrollTextView;->handler:Landroid/os/Handler;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/pubinfo/wifi_core/core/view/ScrollTextView$1;->this$0:Lcom/pubinfo/wifi_core/core/view/ScrollTextView;

    iget v2, v2, Lcom/pubinfo/wifi_core/core/view/ScrollTextView;->delayTime:I

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 133
    :pswitch_1
    iget-object v0, p0, Lcom/pubinfo/wifi_core/core/view/ScrollTextView$1;->this$0:Lcom/pubinfo/wifi_core/core/view/ScrollTextView;

    iget v1, v0, Lcom/pubinfo/wifi_core/core/view/ScrollTextView;->currentY:F

    iget v2, p1, Landroid/os/Message;->arg1:I

    int-to-float v2, v2

    add-float/2addr v1, v2

    iput v1, v0, Lcom/pubinfo/wifi_core/core/view/ScrollTextView;->currentY:F

    .line 135
    invoke-direct {p0}, Lcom/pubinfo/wifi_core/core/view/ScrollTextView$1;->resetCurrentY()V

    .line 136
    iget-object v0, p0, Lcom/pubinfo/wifi_core/core/view/ScrollTextView$1;->this$0:Lcom/pubinfo/wifi_core/core/view/ScrollTextView;

    invoke-virtual {v0}, Lcom/pubinfo/wifi_core/core/view/ScrollTextView;->invalidate()V

    goto :goto_0

    .line 121
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
