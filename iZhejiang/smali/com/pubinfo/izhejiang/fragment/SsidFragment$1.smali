.class Lcom/pubinfo/izhejiang/fragment/SsidFragment$1;
.super Ljava/lang/Object;
.source "SsidFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pubinfo/izhejiang/fragment/SsidFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pubinfo/izhejiang/fragment/SsidFragment;


# direct methods
.method constructor <init>(Lcom/pubinfo/izhejiang/fragment/SsidFragment;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/pubinfo/izhejiang/fragment/SsidFragment$1;->this$0:Lcom/pubinfo/izhejiang/fragment/SsidFragment;

    .line 519
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v4, 0x0

    .line 522
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 547
    :cond_0
    :goto_0
    :sswitch_0
    return-void

    .line 532
    :sswitch_1
    iget-object v0, p0, Lcom/pubinfo/izhejiang/fragment/SsidFragment$1;->this$0:Lcom/pubinfo/izhejiang/fragment/SsidFragment;

    iget-boolean v0, v0, Lcom/pubinfo/izhejiang/fragment/SsidFragment;->wifibtn_click:Z

    if-eqz v0, :cond_0

    .line 533
    iget-object v0, p0, Lcom/pubinfo/izhejiang/fragment/SsidFragment$1;->this$0:Lcom/pubinfo/izhejiang/fragment/SsidFragment;

    # invokes: Lcom/pubinfo/izhejiang/fragment/SsidFragment;->showLoading()V
    invoke-static {v0}, Lcom/pubinfo/izhejiang/fragment/SsidFragment;->access$0(Lcom/pubinfo/izhejiang/fragment/SsidFragment;)V

    .line 534
    iget-object v0, p0, Lcom/pubinfo/izhejiang/fragment/SsidFragment$1;->this$0:Lcom/pubinfo/izhejiang/fragment/SsidFragment;

    iget-boolean v0, v0, Lcom/pubinfo/izhejiang/fragment/SsidFragment;->wifibtn:Z

    if-eqz v0, :cond_1

    .line 535
    iget-object v0, p0, Lcom/pubinfo/izhejiang/fragment/SsidFragment$1;->this$0:Lcom/pubinfo/izhejiang/fragment/SsidFragment;

    iget-object v0, v0, Lcom/pubinfo/izhejiang/fragment/SsidFragment;->wifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0, v4}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    .line 536
    iget-object v0, p0, Lcom/pubinfo/izhejiang/fragment/SsidFragment$1;->this$0:Lcom/pubinfo/izhejiang/fragment/SsidFragment;

    # getter for: Lcom/pubinfo/izhejiang/fragment/SsidFragment;->listHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/pubinfo/izhejiang/fragment/SsidFragment;->access$1(Lcom/pubinfo/izhejiang/fragment/SsidFragment;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 541
    :goto_1
    iget-object v0, p0, Lcom/pubinfo/izhejiang/fragment/SsidFragment$1;->this$0:Lcom/pubinfo/izhejiang/fragment/SsidFragment;

    iput-boolean v4, v0, Lcom/pubinfo/izhejiang/fragment/SsidFragment;->wifibtn_click:Z

    goto :goto_0

    .line 538
    :cond_1
    iget-object v0, p0, Lcom/pubinfo/izhejiang/fragment/SsidFragment$1;->this$0:Lcom/pubinfo/izhejiang/fragment/SsidFragment;

    iget-object v0, v0, Lcom/pubinfo/izhejiang/fragment/SsidFragment;->wifiManager:Landroid/net/wifi/WifiManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    .line 539
    iget-object v0, p0, Lcom/pubinfo/izhejiang/fragment/SsidFragment$1;->this$0:Lcom/pubinfo/izhejiang/fragment/SsidFragment;

    # getter for: Lcom/pubinfo/izhejiang/fragment/SsidFragment;->listHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/pubinfo/izhejiang/fragment/SsidFragment;->access$1(Lcom/pubinfo/izhejiang/fragment/SsidFragment;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x7

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_1

    .line 522
    :sswitch_data_0
    .sparse-switch
        0x7f0a0030 -> :sswitch_0
        0x7f0a00a0 -> :sswitch_1
        0x7f0a00a1 -> :sswitch_0
        0x7f0a00a2 -> :sswitch_0
        0x7f0a00a3 -> :sswitch_0
    .end sparse-switch
.end method
