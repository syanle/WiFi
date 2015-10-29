.class public Lcom/pubinfo/freewifialliance/service/WifiConnService$MyThread;
.super Ljava/lang/Thread;
.source "WifiConnService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pubinfo/freewifialliance/service/WifiConnService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MyThread"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pubinfo/freewifialliance/service/WifiConnService;


# direct methods
.method public constructor <init>(Lcom/pubinfo/freewifialliance/service/WifiConnService;)V
    .locals 0

    .prologue
    .line 725
    iput-object p1, p0, Lcom/pubinfo/freewifialliance/service/WifiConnService$MyThread;->this$0:Lcom/pubinfo/freewifialliance/service/WifiConnService;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    const/16 v4, 0x9

    .line 729
    :try_start_0
    const-string v1, "ping -c 1 -i 0.2 -W 1 www.baidu.com"

    .line 730
    const-wide/16 v2, 0xbb8

    .line 729
    invoke-static {v1, v2, v3}, Lcom/pubinfo/freewifialliance/service/WifiConnService;->executeCommand(Ljava/lang/String;J)I

    move-result v1

    if-nez v1, :cond_0

    .line 731
    iget-object v1, p0, Lcom/pubinfo/freewifialliance/service/WifiConnService$MyThread;->this$0:Lcom/pubinfo/freewifialliance/service/WifiConnService;

    iget-object v1, v1, Lcom/pubinfo/freewifialliance/service/WifiConnService;->handler:Landroid/os/Handler;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 745
    :goto_0
    return-void

    .line 733
    :cond_0
    iget-object v1, p0, Lcom/pubinfo/freewifialliance/service/WifiConnService$MyThread;->this$0:Lcom/pubinfo/freewifialliance/service/WifiConnService;

    iget-object v1, v1, Lcom/pubinfo/freewifialliance/service/WifiConnService;->handler:Landroid/os/Handler;

    const/16 v2, 0x9

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_2

    goto :goto_0

    .line 735
    :catch_0
    move-exception v0

    .line 736
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 737
    iget-object v1, p0, Lcom/pubinfo/freewifialliance/service/WifiConnService$MyThread;->this$0:Lcom/pubinfo/freewifialliance/service/WifiConnService;

    iget-object v1, v1, Lcom/pubinfo/freewifialliance/service/WifiConnService;->handler:Landroid/os/Handler;

    invoke-virtual {v1, v4}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 738
    .end local v0    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v0

    .line 739
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 740
    iget-object v1, p0, Lcom/pubinfo/freewifialliance/service/WifiConnService$MyThread;->this$0:Lcom/pubinfo/freewifialliance/service/WifiConnService;

    iget-object v1, v1, Lcom/pubinfo/freewifialliance/service/WifiConnService;->handler:Landroid/os/Handler;

    invoke-virtual {v1, v4}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 741
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :catch_2
    move-exception v0

    .line 742
    .local v0, "e":Ljava/util/concurrent/TimeoutException;
    invoke-virtual {v0}, Ljava/util/concurrent/TimeoutException;->printStackTrace()V

    .line 743
    iget-object v1, p0, Lcom/pubinfo/freewifialliance/service/WifiConnService$MyThread;->this$0:Lcom/pubinfo/freewifialliance/service/WifiConnService;

    iget-object v1, v1, Lcom/pubinfo/freewifialliance/service/WifiConnService;->handler:Landroid/os/Handler;

    invoke-virtual {v1, v4}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0
.end method
