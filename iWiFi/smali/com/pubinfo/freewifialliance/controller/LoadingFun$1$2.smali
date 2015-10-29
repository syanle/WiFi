.class Lcom/pubinfo/freewifialliance/controller/LoadingFun$1$2;
.super Ljava/lang/Object;
.source "LoadingFun.java"

# interfaces
.implements Lcom/pubinfo/wifi_core/core/view/WifiDialog$OnWatchClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pubinfo/freewifialliance/controller/LoadingFun$1;->handleMessage(Landroid/os/Message;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/pubinfo/freewifialliance/controller/LoadingFun$1;

.field private final synthetic val$wifiDialog2:Lcom/pubinfo/wifi_core/core/view/WifiDialog;


# direct methods
.method constructor <init>(Lcom/pubinfo/freewifialliance/controller/LoadingFun$1;Lcom/pubinfo/wifi_core/core/view/WifiDialog;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/pubinfo/freewifialliance/controller/LoadingFun$1$2;->this$1:Lcom/pubinfo/freewifialliance/controller/LoadingFun$1;

    iput-object p2, p0, Lcom/pubinfo/freewifialliance/controller/LoadingFun$1$2;->val$wifiDialog2:Lcom/pubinfo/wifi_core/core/view/WifiDialog;

    .line 358
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancelClick()V
    .locals 4

    .prologue
    .line 367
    iget-object v0, p0, Lcom/pubinfo/freewifialliance/controller/LoadingFun$1$2;->val$wifiDialog2:Lcom/pubinfo/wifi_core/core/view/WifiDialog;

    invoke-virtual {v0}, Lcom/pubinfo/wifi_core/core/view/WifiDialog;->dismiss()V

    .line 368
    iget-object v0, p0, Lcom/pubinfo/freewifialliance/controller/LoadingFun$1$2;->this$1:Lcom/pubinfo/freewifialliance/controller/LoadingFun$1;

    # getter for: Lcom/pubinfo/freewifialliance/controller/LoadingFun$1;->this$0:Lcom/pubinfo/freewifialliance/controller/LoadingFun;
    invoke-static {v0}, Lcom/pubinfo/freewifialliance/controller/LoadingFun$1;->access$0(Lcom/pubinfo/freewifialliance/controller/LoadingFun$1;)Lcom/pubinfo/freewifialliance/controller/LoadingFun;

    move-result-object v0

    iget-object v0, v0, Lcom/pubinfo/freewifialliance/controller/LoadingFun;->handler:Landroid/os/Handler;

    const/4 v1, 0x2

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 369
    return-void
.end method

.method public onWatchClick()V
    .locals 2

    .prologue
    .line 361
    iget-object v0, p0, Lcom/pubinfo/freewifialliance/controller/LoadingFun$1$2;->val$wifiDialog2:Lcom/pubinfo/wifi_core/core/view/WifiDialog;

    invoke-virtual {v0}, Lcom/pubinfo/wifi_core/core/view/WifiDialog;->dismiss()V

    .line 362
    iget-object v0, p0, Lcom/pubinfo/freewifialliance/controller/LoadingFun$1$2;->this$1:Lcom/pubinfo/freewifialliance/controller/LoadingFun$1;

    # getter for: Lcom/pubinfo/freewifialliance/controller/LoadingFun$1;->this$0:Lcom/pubinfo/freewifialliance/controller/LoadingFun;
    invoke-static {v0}, Lcom/pubinfo/freewifialliance/controller/LoadingFun$1;->access$0(Lcom/pubinfo/freewifialliance/controller/LoadingFun$1;)Lcom/pubinfo/freewifialliance/controller/LoadingFun;

    move-result-object v0

    iget-object v0, v0, Lcom/pubinfo/freewifialliance/controller/LoadingFun;->handler:Landroid/os/Handler;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 363
    return-void
.end method
