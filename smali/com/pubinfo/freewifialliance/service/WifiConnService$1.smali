.class Lcom/pubinfo/freewifialliance/service/WifiConnService$1;
.super Ljava/lang/Object;
.source "WifiConnService.java"

# interfaces
.implements Ljava/lang/Runnable;


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
    iput-object p1, p0, Lcom/pubinfo/freewifialliance/service/WifiConnService$1;->this$0:Lcom/pubinfo/freewifialliance/service/WifiConnService;

    .line 644
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 647
    # getter for: Lcom/pubinfo/freewifialliance/service/WifiConnService;->isNight:Z
    invoke-static {}, Lcom/pubinfo/freewifialliance/service/WifiConnService;->access$0()Z

    move-result v0

    if-nez v0, :cond_0

    .line 649
    iget-object v0, p0, Lcom/pubinfo/freewifialliance/service/WifiConnService$1;->this$0:Lcom/pubinfo/freewifialliance/service/WifiConnService;

    invoke-virtual {v0}, Lcom/pubinfo/freewifialliance/service/WifiConnService;->getWiFi()V

    .line 654
    :cond_0
    iget-object v0, p0, Lcom/pubinfo/freewifialliance/service/WifiConnService$1;->this$0:Lcom/pubinfo/freewifialliance/service/WifiConnService;

    iget-object v0, v0, Lcom/pubinfo/freewifialliance/service/WifiConnService;->handler:Landroid/os/Handler;

    const-wide/32 v1, 0x493e0

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 656
    return-void
.end method
