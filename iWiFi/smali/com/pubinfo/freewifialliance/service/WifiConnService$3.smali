.class Lcom/pubinfo/freewifialliance/service/WifiConnService$3;
.super Landroid/os/Handler;
.source "WifiConnService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pubinfo/freewifialliance/service/WifiConnService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pubinfo/freewifialliance/service/WifiConnService;


# direct methods
.method constructor <init>(Lcom/pubinfo/freewifialliance/service/WifiConnService;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/pubinfo/freewifialliance/service/WifiConnService$3;->this$0:Lcom/pubinfo/freewifialliance/service/WifiConnService;

    .line 674
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v3, 0x4

    .line 677
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 721
    :cond_0
    :goto_0
    return-void

    .line 680
    :pswitch_0
    # getter for: Lcom/pubinfo/freewifialliance/service/WifiConnService;->floatView:Lcom/pubinfo/freewifialliance/view/FloatView;
    invoke-static {}, Lcom/pubinfo/freewifialliance/service/WifiConnService;->access$1()Lcom/pubinfo/freewifialliance/view/FloatView;

    move-result-object v0

    iget-object v1, p0, Lcom/pubinfo/freewifialliance/service/WifiConnService$3;->this$0:Lcom/pubinfo/freewifialliance/service/WifiConnService;

    iget-object v1, v1, Lcom/pubinfo/freewifialliance/service/WifiConnService;->logoDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Lcom/pubinfo/freewifialliance/view/FloatView;->setImage(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 684
    :pswitch_1
    # getter for: Lcom/pubinfo/freewifialliance/service/WifiConnService;->floatView:Lcom/pubinfo/freewifialliance/view/FloatView;
    invoke-static {}, Lcom/pubinfo/freewifialliance/service/WifiConnService;->access$1()Lcom/pubinfo/freewifialliance/view/FloatView;

    move-result-object v0

    iget-object v1, p0, Lcom/pubinfo/freewifialliance/service/WifiConnService$3;->this$0:Lcom/pubinfo/freewifialliance/service/WifiConnService;

    iget-object v1, v1, Lcom/pubinfo/freewifialliance/service/WifiConnService;->logoWuDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Lcom/pubinfo/freewifialliance/view/FloatView;->setImage(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 687
    :pswitch_2
    # getter for: Lcom/pubinfo/freewifialliance/service/WifiConnService;->floatView:Lcom/pubinfo/freewifialliance/view/FloatView;
    invoke-static {}, Lcom/pubinfo/freewifialliance/service/WifiConnService;->access$1()Lcom/pubinfo/freewifialliance/view/FloatView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/pubinfo/freewifialliance/view/FloatView;->setTextInvisiable()V

    goto :goto_0

    .line 690
    :pswitch_3
    iget-object v0, p0, Lcom/pubinfo/freewifialliance/service/WifiConnService$3;->this$0:Lcom/pubinfo/freewifialliance/service/WifiConnService;

    invoke-virtual {v0}, Lcom/pubinfo/freewifialliance/service/WifiConnService;->isHome()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 691
    # getter for: Lcom/pubinfo/freewifialliance/service/WifiConnService;->floatView:Lcom/pubinfo/freewifialliance/view/FloatView;
    invoke-static {}, Lcom/pubinfo/freewifialliance/service/WifiConnService;->access$1()Lcom/pubinfo/freewifialliance/view/FloatView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/pubinfo/freewifialliance/view/FloatView;->setVisibility(I)V

    .line 695
    :goto_1
    iget-object v0, p0, Lcom/pubinfo/freewifialliance/service/WifiConnService$3;->this$0:Lcom/pubinfo/freewifialliance/service/WifiConnService;

    iget-object v0, v0, Lcom/pubinfo/freewifialliance/service/WifiConnService;->handler:Landroid/os/Handler;

    const-wide/16 v1, 0x3e8

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 693
    :cond_1
    # getter for: Lcom/pubinfo/freewifialliance/service/WifiConnService;->floatView:Lcom/pubinfo/freewifialliance/view/FloatView;
    invoke-static {}, Lcom/pubinfo/freewifialliance/service/WifiConnService;->access$1()Lcom/pubinfo/freewifialliance/view/FloatView;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/pubinfo/freewifialliance/view/FloatView;->setVisibility(I)V

    goto :goto_1

    .line 699
    :pswitch_4
    # getter for: Lcom/pubinfo/freewifialliance/service/WifiConnService;->floatView:Lcom/pubinfo/freewifialliance/view/FloatView;
    invoke-static {}, Lcom/pubinfo/freewifialliance/service/WifiConnService;->access$1()Lcom/pubinfo/freewifialliance/view/FloatView;

    move-result-object v0

    iget-object v1, p0, Lcom/pubinfo/freewifialliance/service/WifiConnService$3;->this$0:Lcom/pubinfo/freewifialliance/service/WifiConnService;

    iget-object v1, v1, Lcom/pubinfo/freewifialliance/service/WifiConnService;->logoLvDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Lcom/pubinfo/freewifialliance/view/FloatView;->setImage(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 702
    :pswitch_5
    iget-object v0, p0, Lcom/pubinfo/freewifialliance/service/WifiConnService$3;->this$0:Lcom/pubinfo/freewifialliance/service/WifiConnService;

    const-string v1, "night search"

    invoke-virtual {v0, v1}, Lcom/pubinfo/freewifialliance/service/WifiConnService;->showMsgToast(Ljava/lang/String;)V

    goto :goto_0

    .line 705
    :pswitch_6
    # getter for: Lcom/pubinfo/freewifialliance/service/WifiConnService;->floatView:Lcom/pubinfo/freewifialliance/view/FloatView;
    invoke-static {}, Lcom/pubinfo/freewifialliance/service/WifiConnService;->access$1()Lcom/pubinfo/freewifialliance/view/FloatView;

    move-result-object v0

    iget-object v1, p0, Lcom/pubinfo/freewifialliance/service/WifiConnService$3;->this$0:Lcom/pubinfo/freewifialliance/service/WifiConnService;

    iget-object v1, v1, Lcom/pubinfo/freewifialliance/service/WifiConnService;->logoDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Lcom/pubinfo/freewifialliance/view/FloatView;->setImage(Landroid/graphics/drawable/Drawable;)V

    .line 706
    iget-object v0, p0, Lcom/pubinfo/freewifialliance/service/WifiConnService$3;->this$0:Lcom/pubinfo/freewifialliance/service/WifiConnService;

    invoke-virtual {v0}, Lcom/pubinfo/freewifialliance/service/WifiConnService;->isConnTianyiWifi()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 708
    new-instance v0, Lcom/pubinfo/freewifialliance/service/WifiConnService$MyThread;

    iget-object v1, p0, Lcom/pubinfo/freewifialliance/service/WifiConnService$3;->this$0:Lcom/pubinfo/freewifialliance/service/WifiConnService;

    invoke-direct {v0, v1}, Lcom/pubinfo/freewifialliance/service/WifiConnService$MyThread;-><init>(Lcom/pubinfo/freewifialliance/service/WifiConnService;)V

    invoke-virtual {v0}, Lcom/pubinfo/freewifialliance/service/WifiConnService$MyThread;->start()V

    goto :goto_0

    .line 712
    :pswitch_7
    # getter for: Lcom/pubinfo/freewifialliance/service/WifiConnService;->floatView:Lcom/pubinfo/freewifialliance/view/FloatView;
    invoke-static {}, Lcom/pubinfo/freewifialliance/service/WifiConnService;->access$1()Lcom/pubinfo/freewifialliance/view/FloatView;

    move-result-object v0

    iget-object v1, p0, Lcom/pubinfo/freewifialliance/service/WifiConnService$3;->this$0:Lcom/pubinfo/freewifialliance/service/WifiConnService;

    iget-object v1, v1, Lcom/pubinfo/freewifialliance/service/WifiConnService;->logoLvDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Lcom/pubinfo/freewifialliance/view/FloatView;->setImage(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 716
    :pswitch_8
    # getter for: Lcom/pubinfo/freewifialliance/service/WifiConnService;->floatView:Lcom/pubinfo/freewifialliance/view/FloatView;
    invoke-static {}, Lcom/pubinfo/freewifialliance/service/WifiConnService;->access$1()Lcom/pubinfo/freewifialliance/view/FloatView;

    move-result-object v0

    iget-object v1, p0, Lcom/pubinfo/freewifialliance/service/WifiConnService$3;->this$0:Lcom/pubinfo/freewifialliance/service/WifiConnService;

    iget-object v1, v1, Lcom/pubinfo/freewifialliance/service/WifiConnService;->logoDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Lcom/pubinfo/freewifialliance/view/FloatView;->setImage(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_0

    .line 677
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
    .end packed-switch
.end method
