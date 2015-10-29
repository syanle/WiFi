.class public Lcom/pubinfo/freewifialliance/service/WifiConnService$StopTaskBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "WifiConnService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pubinfo/freewifialliance/service/WifiConnService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "StopTaskBroadcastReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pubinfo/freewifialliance/service/WifiConnService;


# direct methods
.method public constructor <init>(Lcom/pubinfo/freewifialliance/service/WifiConnService;)V
    .locals 0

    .prologue
    .line 528
    iput-object p1, p0, Lcom/pubinfo/freewifialliance/service/WifiConnService$StopTaskBroadcastReceiver;->this$0:Lcom/pubinfo/freewifialliance/service/WifiConnService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 531
    iget-object v0, p0, Lcom/pubinfo/freewifialliance/service/WifiConnService$StopTaskBroadcastReceiver;->this$0:Lcom/pubinfo/freewifialliance/service/WifiConnService;

    const-string v1, "\u81ea\u52a8\u641c\u7d22\u5173\u95ed"

    invoke-virtual {v0, v1}, Lcom/pubinfo/freewifialliance/service/WifiConnService;->showMsgToast(Ljava/lang/String;)V

    .line 532
    iget-object v0, p0, Lcom/pubinfo/freewifialliance/service/WifiConnService$StopTaskBroadcastReceiver;->this$0:Lcom/pubinfo/freewifialliance/service/WifiConnService;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/pubinfo/freewifialliance/service/WifiConnService;->isRunning:Z

    .line 533
    iget-object v0, p0, Lcom/pubinfo/freewifialliance/service/WifiConnService$StopTaskBroadcastReceiver;->this$0:Lcom/pubinfo/freewifialliance/service/WifiConnService;

    iget-object v0, v0, Lcom/pubinfo/freewifialliance/service/WifiConnService;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/pubinfo/freewifialliance/service/WifiConnService$StopTaskBroadcastReceiver;->this$0:Lcom/pubinfo/freewifialliance/service/WifiConnService;

    # getter for: Lcom/pubinfo/freewifialliance/service/WifiConnService;->runnable:Ljava/lang/Runnable;
    invoke-static {v1}, Lcom/pubinfo/freewifialliance/service/WifiConnService;->access$2(Lcom/pubinfo/freewifialliance/service/WifiConnService;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 534
    return-void
.end method
