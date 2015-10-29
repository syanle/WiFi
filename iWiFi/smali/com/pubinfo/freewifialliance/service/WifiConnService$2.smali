.class Lcom/pubinfo/freewifialliance/service/WifiConnService$2;
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
    iput-object p1, p0, Lcom/pubinfo/freewifialliance/service/WifiConnService$2;->this$0:Lcom/pubinfo/freewifialliance/service/WifiConnService;

    .line 662
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 665
    iget-object v0, p0, Lcom/pubinfo/freewifialliance/service/WifiConnService$2;->this$0:Lcom/pubinfo/freewifialliance/service/WifiConnService;

    invoke-virtual {v0}, Lcom/pubinfo/freewifialliance/service/WifiConnService;->isNight()V

    .line 667
    iget-object v0, p0, Lcom/pubinfo/freewifialliance/service/WifiConnService$2;->this$0:Lcom/pubinfo/freewifialliance/service/WifiConnService;

    iget-object v0, v0, Lcom/pubinfo/freewifialliance/service/WifiConnService;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/pubinfo/freewifialliance/service/WifiConnService$2;->this$0:Lcom/pubinfo/freewifialliance/service/WifiConnService;

    iget-object v1, v1, Lcom/pubinfo/freewifialliance/service/WifiConnService;->nightRunnable:Ljava/lang/Runnable;

    const-wide/32 v2, 0x1b7740

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 668
    return-void
.end method
