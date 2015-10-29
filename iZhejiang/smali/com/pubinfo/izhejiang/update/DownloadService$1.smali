.class Lcom/pubinfo/izhejiang/update/DownloadService$1;
.super Landroid/os/Handler;
.source "DownloadService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pubinfo/izhejiang/update/DownloadService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pubinfo/izhejiang/update/DownloadService;


# direct methods
.method constructor <init>(Lcom/pubinfo/izhejiang/update/DownloadService;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/pubinfo/izhejiang/update/DownloadService$1;->this$0:Lcom/pubinfo/izhejiang/update/DownloadService;

    .line 32
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v3, 0x0

    .line 35
    sget v1, Lcom/iwifi/sdk/chinanet/WelcomePage;->loading_process:I

    const/16 v2, 0x63

    if-lt v1, v2, :cond_0

    .line 36
    iget-object v1, p0, Lcom/pubinfo/izhejiang/update/DownloadService$1;->this$0:Lcom/pubinfo/izhejiang/update/DownloadService;

    # getter for: Lcom/pubinfo/izhejiang/update/DownloadService;->notificationMrg:Landroid/app/NotificationManager;
    invoke-static {v1}, Lcom/pubinfo/izhejiang/update/DownloadService;->access$0(Lcom/pubinfo/izhejiang/update/DownloadService;)Landroid/app/NotificationManager;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/app/NotificationManager;->cancel(I)V

    .line 38
    iget-object v1, p0, Lcom/pubinfo/izhejiang/update/DownloadService$1;->this$0:Lcom/pubinfo/izhejiang/update/DownloadService;

    invoke-virtual {v1}, Lcom/pubinfo/izhejiang/update/DownloadService;->stopSelf()V

    .line 52
    :goto_0
    return-void

    .line 42
    :cond_0
    sget v1, Lcom/iwifi/sdk/chinanet/WelcomePage;->loading_process:I

    iget-object v2, p0, Lcom/pubinfo/izhejiang/update/DownloadService$1;->this$0:Lcom/pubinfo/izhejiang/update/DownloadService;

    # getter for: Lcom/pubinfo/izhejiang/update/DownloadService;->old_process:I
    invoke-static {v2}, Lcom/pubinfo/izhejiang/update/DownloadService;->access$1(Lcom/pubinfo/izhejiang/update/DownloadService;)I

    move-result v2

    if-le v1, v2, :cond_1

    .line 43
    iget-object v1, p0, Lcom/pubinfo/izhejiang/update/DownloadService$1;->this$0:Lcom/pubinfo/izhejiang/update/DownloadService;

    sget v2, Lcom/iwifi/sdk/chinanet/WelcomePage;->loading_process:I

    # invokes: Lcom/pubinfo/izhejiang/update/DownloadService;->displayNotificationMessage(I)V
    invoke-static {v1, v2}, Lcom/pubinfo/izhejiang/update/DownloadService;->access$2(Lcom/pubinfo/izhejiang/update/DownloadService;I)V

    .line 47
    :cond_1
    iget-object v1, p0, Lcom/pubinfo/izhejiang/update/DownloadService$1;->this$0:Lcom/pubinfo/izhejiang/update/DownloadService;

    invoke-static {v1, v3}, Lcom/pubinfo/izhejiang/update/DownloadService;->access$3(Lcom/pubinfo/izhejiang/update/DownloadService;Z)V

    .line 48
    iget-object v1, p0, Lcom/pubinfo/izhejiang/update/DownloadService$1;->this$0:Lcom/pubinfo/izhejiang/update/DownloadService;

    # getter for: Lcom/pubinfo/izhejiang/update/DownloadService;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/pubinfo/izhejiang/update/DownloadService;->access$4(Lcom/pubinfo/izhejiang/update/DownloadService;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 49
    .local v0, "msg1":Landroid/os/Message;
    iget-object v1, p0, Lcom/pubinfo/izhejiang/update/DownloadService$1;->this$0:Lcom/pubinfo/izhejiang/update/DownloadService;

    # getter for: Lcom/pubinfo/izhejiang/update/DownloadService;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/pubinfo/izhejiang/update/DownloadService;->access$4(Lcom/pubinfo/izhejiang/update/DownloadService;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 51
    iget-object v1, p0, Lcom/pubinfo/izhejiang/update/DownloadService$1;->this$0:Lcom/pubinfo/izhejiang/update/DownloadService;

    sget v2, Lcom/iwifi/sdk/chinanet/WelcomePage;->loading_process:I

    invoke-static {v1, v2}, Lcom/pubinfo/izhejiang/update/DownloadService;->access$5(Lcom/pubinfo/izhejiang/update/DownloadService;I)V

    goto :goto_0
.end method
