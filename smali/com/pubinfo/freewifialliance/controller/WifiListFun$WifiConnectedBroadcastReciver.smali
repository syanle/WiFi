.class public Lcom/pubinfo/freewifialliance/controller/WifiListFun$WifiConnectedBroadcastReciver;
.super Landroid/content/BroadcastReceiver;
.source "WifiListFun.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pubinfo/freewifialliance/controller/WifiListFun;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "WifiConnectedBroadcastReciver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pubinfo/freewifialliance/controller/WifiListFun;


# direct methods
.method public constructor <init>(Lcom/pubinfo/freewifialliance/controller/WifiListFun;)V
    .locals 0

    .prologue
    .line 299
    iput-object p1, p0, Lcom/pubinfo/freewifialliance/controller/WifiListFun$WifiConnectedBroadcastReciver;->this$0:Lcom/pubinfo/freewifialliance/controller/WifiListFun;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v4, 0x0

    .line 303
    iget-object v5, p0, Lcom/pubinfo/freewifialliance/controller/WifiListFun$WifiConnectedBroadcastReciver;->this$0:Lcom/pubinfo/freewifialliance/controller/WifiListFun;

    iget-boolean v5, v5, Lcom/pubinfo/freewifialliance/controller/WifiListFun;->isClicked:Z

    if-eqz v5, :cond_0

    .line 304
    const-string v5, "android.net.wifi.STATE_CHANGE"

    .line 305
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v6

    .line 304
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    .line 305
    if-eqz v5, :cond_0

    .line 308
    const-string v5, "networkInfo"

    invoke-virtual {p2, v5}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    .line 309
    .local v2, "parcelableExtra":Landroid/os/Parcelable;
    if-eqz v2, :cond_0

    move-object v1, v2

    .line 310
    check-cast v1, Landroid/net/NetworkInfo;

    .line 311
    .local v1, "networkInfo":Landroid/net/NetworkInfo;
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v3

    .line 312
    .local v3, "state":Landroid/net/NetworkInfo$State;
    sget-object v5, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    if-ne v3, v5, :cond_1

    const/4 v0, 0x1

    .line 313
    .local v0, "isConnected":Z
    :goto_0
    if-eqz v0, :cond_0

    .line 314
    iget-object v5, p0, Lcom/pubinfo/freewifialliance/controller/WifiListFun$WifiConnectedBroadcastReciver;->this$0:Lcom/pubinfo/freewifialliance/controller/WifiListFun;

    iget-object v5, v5, Lcom/pubinfo/freewifialliance/controller/WifiListFun;->handler:Landroid/os/Handler;

    invoke-virtual {v5, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 315
    iget-object v5, p0, Lcom/pubinfo/freewifialliance/controller/WifiListFun$WifiConnectedBroadcastReciver;->this$0:Lcom/pubinfo/freewifialliance/controller/WifiListFun;

    iget-object v5, v5, Lcom/pubinfo/freewifialliance/controller/WifiListFun;->handler:Landroid/os/Handler;

    const/4 v6, 0x2

    invoke-virtual {v5, v6}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 316
    iget-object v5, p0, Lcom/pubinfo/freewifialliance/controller/WifiListFun$WifiConnectedBroadcastReciver;->this$0:Lcom/pubinfo/freewifialliance/controller/WifiListFun;

    iput-boolean v4, v5, Lcom/pubinfo/freewifialliance/controller/WifiListFun;->isClicked:Z

    .line 321
    .end local v0    # "isConnected":Z
    .end local v1    # "networkInfo":Landroid/net/NetworkInfo;
    .end local v2    # "parcelableExtra":Landroid/os/Parcelable;
    .end local v3    # "state":Landroid/net/NetworkInfo$State;
    :cond_0
    return-void

    .restart local v1    # "networkInfo":Landroid/net/NetworkInfo;
    .restart local v2    # "parcelableExtra":Landroid/os/Parcelable;
    .restart local v3    # "state":Landroid/net/NetworkInfo$State;
    :cond_1
    move v0, v4

    .line 312
    goto :goto_0
.end method
