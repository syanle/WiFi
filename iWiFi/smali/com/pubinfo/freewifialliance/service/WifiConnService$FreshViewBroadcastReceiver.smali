.class public Lcom/pubinfo/freewifialliance/service/WifiConnService$FreshViewBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "WifiConnService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pubinfo/freewifialliance/service/WifiConnService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "FreshViewBroadcastReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pubinfo/freewifialliance/service/WifiConnService;


# direct methods
.method public constructor <init>(Lcom/pubinfo/freewifialliance/service/WifiConnService;)V
    .locals 0

    .prologue
    .line 606
    iput-object p1, p0, Lcom/pubinfo/freewifialliance/service/WifiConnService$FreshViewBroadcastReceiver;->this$0:Lcom/pubinfo/freewifialliance/service/WifiConnService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 609
    # getter for: Lcom/pubinfo/freewifialliance/service/WifiConnService;->floatView:Lcom/pubinfo/freewifialliance/view/FloatView;
    invoke-static {}, Lcom/pubinfo/freewifialliance/service/WifiConnService;->access$1()Lcom/pubinfo/freewifialliance/view/FloatView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 610
    iget-object v0, p0, Lcom/pubinfo/freewifialliance/service/WifiConnService$FreshViewBroadcastReceiver;->this$0:Lcom/pubinfo/freewifialliance/service/WifiConnService;

    iget-object v0, v0, Lcom/pubinfo/freewifialliance/service/WifiConnService;->handler:Landroid/os/Handler;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 612
    :cond_0
    return-void
.end method
