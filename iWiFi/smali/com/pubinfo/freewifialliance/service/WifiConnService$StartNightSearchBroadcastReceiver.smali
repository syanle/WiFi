.class public Lcom/pubinfo/freewifialliance/service/WifiConnService$StartNightSearchBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "WifiConnService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pubinfo/freewifialliance/service/WifiConnService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "StartNightSearchBroadcastReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pubinfo/freewifialliance/service/WifiConnService;


# direct methods
.method public constructor <init>(Lcom/pubinfo/freewifialliance/service/WifiConnService;)V
    .locals 0

    .prologue
    .line 558
    iput-object p1, p0, Lcom/pubinfo/freewifialliance/service/WifiConnService$StartNightSearchBroadcastReceiver;->this$0:Lcom/pubinfo/freewifialliance/service/WifiConnService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 561
    iget-object v0, p0, Lcom/pubinfo/freewifialliance/service/WifiConnService$StartNightSearchBroadcastReceiver;->this$0:Lcom/pubinfo/freewifialliance/service/WifiConnService;

    iget-boolean v0, v0, Lcom/pubinfo/freewifialliance/service/WifiConnService;->isNightSearch:Z

    if-nez v0, :cond_0

    .line 562
    iget-object v0, p0, Lcom/pubinfo/freewifialliance/service/WifiConnService$StartNightSearchBroadcastReceiver;->this$0:Lcom/pubinfo/freewifialliance/service/WifiConnService;

    const-string v1, "\u5f00\u542f\u591c\u95f4\u641c\u7d22"

    invoke-virtual {v0, v1}, Lcom/pubinfo/freewifialliance/service/WifiConnService;->showMsgToast(Ljava/lang/String;)V

    .line 563
    iget-object v0, p0, Lcom/pubinfo/freewifialliance/service/WifiConnService$StartNightSearchBroadcastReceiver;->this$0:Lcom/pubinfo/freewifialliance/service/WifiConnService;

    iget-object v0, v0, Lcom/pubinfo/freewifialliance/service/WifiConnService;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/pubinfo/freewifialliance/service/WifiConnService$StartNightSearchBroadcastReceiver;->this$0:Lcom/pubinfo/freewifialliance/service/WifiConnService;

    iget-object v1, v1, Lcom/pubinfo/freewifialliance/service/WifiConnService;->nightRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 565
    :cond_0
    return-void
.end method
