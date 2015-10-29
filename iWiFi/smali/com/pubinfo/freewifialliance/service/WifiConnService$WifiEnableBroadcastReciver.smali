.class public Lcom/pubinfo/freewifialliance/service/WifiConnService$WifiEnableBroadcastReciver;
.super Landroid/content/BroadcastReceiver;
.source "WifiConnService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pubinfo/freewifialliance/service/WifiConnService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "WifiEnableBroadcastReciver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pubinfo/freewifialliance/service/WifiConnService;


# direct methods
.method public constructor <init>(Lcom/pubinfo/freewifialliance/service/WifiConnService;)V
    .locals 0

    .prologue
    .line 622
    iput-object p1, p0, Lcom/pubinfo/freewifialliance/service/WifiConnService$WifiEnableBroadcastReciver;->this$0:Lcom/pubinfo/freewifialliance/service/WifiConnService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 625
    iget-object v1, p0, Lcom/pubinfo/freewifialliance/service/WifiConnService$WifiEnableBroadcastReciver;->this$0:Lcom/pubinfo/freewifialliance/service/WifiConnService;

    iget-boolean v1, v1, Lcom/pubinfo/freewifialliance/service/WifiConnService;->isRunning:Z

    if-eqz v1, :cond_0

    # getter for: Lcom/pubinfo/freewifialliance/service/WifiConnService;->isNight:Z
    invoke-static {}, Lcom/pubinfo/freewifialliance/service/WifiConnService;->access$0()Z

    move-result v1

    if-nez v1, :cond_0

    .line 626
    const-string v1, "android.net.wifi.WIFI_STATE_CHANGED"

    .line 627
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    .line 626
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 627
    if-eqz v1, :cond_0

    .line 629
    const-string v1, "wifi_state"

    const/4 v2, 0x0

    .line 628
    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 630
    .local v0, "wifistate":I
    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    .line 631
    iget-object v1, p0, Lcom/pubinfo/freewifialliance/service/WifiConnService$WifiEnableBroadcastReciver;->this$0:Lcom/pubinfo/freewifialliance/service/WifiConnService;

    iget-object v1, v1, Lcom/pubinfo/freewifialliance/service/WifiConnService;->handler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/pubinfo/freewifialliance/service/WifiConnService$WifiEnableBroadcastReciver;->this$0:Lcom/pubinfo/freewifialliance/service/WifiConnService;

    # getter for: Lcom/pubinfo/freewifialliance/service/WifiConnService;->runnable:Ljava/lang/Runnable;
    invoke-static {v2}, Lcom/pubinfo/freewifialliance/service/WifiConnService;->access$2(Lcom/pubinfo/freewifialliance/service/WifiConnService;)Ljava/lang/Runnable;

    move-result-object v2

    const-wide/16 v3, 0x0

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 638
    .end local v0    # "wifistate":I
    :cond_0
    :goto_0
    return-void

    .line 632
    .restart local v0    # "wifistate":I
    :cond_1
    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 633
    iget-object v1, p0, Lcom/pubinfo/freewifialliance/service/WifiConnService$WifiEnableBroadcastReciver;->this$0:Lcom/pubinfo/freewifialliance/service/WifiConnService;

    iget-object v1, v1, Lcom/pubinfo/freewifialliance/service/WifiConnService;->handler:Landroid/os/Handler;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 634
    iget-object v1, p0, Lcom/pubinfo/freewifialliance/service/WifiConnService$WifiEnableBroadcastReciver;->this$0:Lcom/pubinfo/freewifialliance/service/WifiConnService;

    iget-object v1, v1, Lcom/pubinfo/freewifialliance/service/WifiConnService;->handler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/pubinfo/freewifialliance/service/WifiConnService$WifiEnableBroadcastReciver;->this$0:Lcom/pubinfo/freewifialliance/service/WifiConnService;

    # getter for: Lcom/pubinfo/freewifialliance/service/WifiConnService;->runnable:Ljava/lang/Runnable;
    invoke-static {v2}, Lcom/pubinfo/freewifialliance/service/WifiConnService;->access$2(Lcom/pubinfo/freewifialliance/service/WifiConnService;)Ljava/lang/Runnable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    goto :goto_0
.end method
