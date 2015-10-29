.class Lcom/pubinfo/izhejiang/SplashActivity$1$2;
.super Ljava/lang/Object;
.source "SplashActivity.java"

# interfaces
.implements Lcom/pubinfo/wifi_core/core/view/WifiDialog$OnWatchClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pubinfo/izhejiang/SplashActivity$1;->handleMessage(Landroid/os/Message;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/pubinfo/izhejiang/SplashActivity$1;

.field private final synthetic val$wifiDialog2:Lcom/pubinfo/wifi_core/core/view/WifiDialog;


# direct methods
.method constructor <init>(Lcom/pubinfo/izhejiang/SplashActivity$1;Lcom/pubinfo/wifi_core/core/view/WifiDialog;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/pubinfo/izhejiang/SplashActivity$1$2;->this$1:Lcom/pubinfo/izhejiang/SplashActivity$1;

    iput-object p2, p0, Lcom/pubinfo/izhejiang/SplashActivity$1$2;->val$wifiDialog2:Lcom/pubinfo/wifi_core/core/view/WifiDialog;

    .line 252
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancelClick()V
    .locals 4

    .prologue
    .line 260
    iget-object v0, p0, Lcom/pubinfo/izhejiang/SplashActivity$1$2;->val$wifiDialog2:Lcom/pubinfo/wifi_core/core/view/WifiDialog;

    invoke-virtual {v0}, Lcom/pubinfo/wifi_core/core/view/WifiDialog;->dismiss()V

    .line 261
    iget-object v0, p0, Lcom/pubinfo/izhejiang/SplashActivity$1$2;->this$1:Lcom/pubinfo/izhejiang/SplashActivity$1;

    # getter for: Lcom/pubinfo/izhejiang/SplashActivity$1;->this$0:Lcom/pubinfo/izhejiang/SplashActivity;
    invoke-static {v0}, Lcom/pubinfo/izhejiang/SplashActivity$1;->access$0(Lcom/pubinfo/izhejiang/SplashActivity$1;)Lcom/pubinfo/izhejiang/SplashActivity;

    move-result-object v0

    iget-object v0, v0, Lcom/pubinfo/izhejiang/SplashActivity;->handler:Landroid/os/Handler;

    const/4 v1, 0x2

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 262
    return-void
.end method

.method public onWatchClick()V
    .locals 2

    .prologue
    .line 255
    iget-object v0, p0, Lcom/pubinfo/izhejiang/SplashActivity$1$2;->val$wifiDialog2:Lcom/pubinfo/wifi_core/core/view/WifiDialog;

    invoke-virtual {v0}, Lcom/pubinfo/wifi_core/core/view/WifiDialog;->dismiss()V

    .line 256
    iget-object v0, p0, Lcom/pubinfo/izhejiang/SplashActivity$1$2;->this$1:Lcom/pubinfo/izhejiang/SplashActivity$1;

    # getter for: Lcom/pubinfo/izhejiang/SplashActivity$1;->this$0:Lcom/pubinfo/izhejiang/SplashActivity;
    invoke-static {v0}, Lcom/pubinfo/izhejiang/SplashActivity$1;->access$0(Lcom/pubinfo/izhejiang/SplashActivity$1;)Lcom/pubinfo/izhejiang/SplashActivity;

    move-result-object v0

    iget-object v0, v0, Lcom/pubinfo/izhejiang/SplashActivity;->handler:Landroid/os/Handler;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 257
    return-void
.end method
