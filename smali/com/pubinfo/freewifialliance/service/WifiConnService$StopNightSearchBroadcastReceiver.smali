.class public Lcom/pubinfo/freewifialliance/service/WifiConnService$StopNightSearchBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "WifiConnService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pubinfo/freewifialliance/service/WifiConnService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "StopNightSearchBroadcastReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pubinfo/freewifialliance/service/WifiConnService;


# direct methods
.method public constructor <init>(Lcom/pubinfo/freewifialliance/service/WifiConnService;)V
    .locals 0

    .prologue
    .line 574
    iput-object p1, p0, Lcom/pubinfo/freewifialliance/service/WifiConnService$StopNightSearchBroadcastReceiver;->this$0:Lcom/pubinfo/freewifialliance/service/WifiConnService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 577
    iget-object v0, p0, Lcom/pubinfo/freewifialliance/service/WifiConnService$StopNightSearchBroadcastReceiver;->this$0:Lcom/pubinfo/freewifialliance/service/WifiConnService;

    const-string v1, "\u5173\u95ed\u591c\u95f4\u641c\u7d22"

    invoke-virtual {v0, v1}, Lcom/pubinfo/freewifialliance/service/WifiConnService;->showMsgToast(Ljava/lang/String;)V

    .line 579
    iget-object v0, p0, Lcom/pubinfo/freewifialliance/service/WifiConnService$StopNightSearchBroadcastReceiver;->this$0:Lcom/pubinfo/freewifialliance/service/WifiConnService;

    iget-object v0, v0, Lcom/pubinfo/freewifialliance/service/WifiConnService;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/pubinfo/freewifialliance/service/WifiConnService$StopNightSearchBroadcastReceiver;->this$0:Lcom/pubinfo/freewifialliance/service/WifiConnService;

    iget-object v1, v1, Lcom/pubinfo/freewifialliance/service/WifiConnService;->nightRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 580
    iget-object v0, p0, Lcom/pubinfo/freewifialliance/service/WifiConnService$StopNightSearchBroadcastReceiver;->this$0:Lcom/pubinfo/freewifialliance/service/WifiConnService;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/pubinfo/freewifialliance/service/WifiConnService;->isNightSearch:Z

    .line 581
    return-void
.end method
