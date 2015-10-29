.class public Lcom/pubinfo/freewifialliance/view/WifiListPage$MyThread;
.super Ljava/lang/Thread;
.source "WifiListPage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pubinfo/freewifialliance/view/WifiListPage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MyThread"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pubinfo/freewifialliance/view/WifiListPage;


# direct methods
.method public constructor <init>(Lcom/pubinfo/freewifialliance/view/WifiListPage;)V
    .locals 0

    .prologue
    .line 642
    iput-object p1, p0, Lcom/pubinfo/freewifialliance/view/WifiListPage$MyThread;->this$0:Lcom/pubinfo/freewifialliance/view/WifiListPage;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    const/4 v4, 0x6

    .line 646
    :try_start_0
    const-string v1, "ping -c 1 -i 0.2 -W 1 www.baidu.com"

    .line 647
    const-wide/16 v2, 0xbb8

    .line 646
    invoke-static {v1, v2, v3}, Lcom/pubinfo/freewifialliance/view/WifiListPage;->executeCommand(Ljava/lang/String;J)I

    move-result v1

    if-nez v1, :cond_0

    .line 648
    iget-object v1, p0, Lcom/pubinfo/freewifialliance/view/WifiListPage$MyThread;->this$0:Lcom/pubinfo/freewifialliance/view/WifiListPage;

    iget-object v1, v1, Lcom/pubinfo/freewifialliance/view/WifiListPage;->handler:Landroid/os/Handler;

    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 662
    :goto_0
    return-void

    .line 650
    :cond_0
    iget-object v1, p0, Lcom/pubinfo/freewifialliance/view/WifiListPage$MyThread;->this$0:Lcom/pubinfo/freewifialliance/view/WifiListPage;

    iget-object v1, v1, Lcom/pubinfo/freewifialliance/view/WifiListPage;->handler:Landroid/os/Handler;

    const/4 v2, 0x6

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_2

    goto :goto_0

    .line 652
    :catch_0
    move-exception v0

    .line 653
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 654
    iget-object v1, p0, Lcom/pubinfo/freewifialliance/view/WifiListPage$MyThread;->this$0:Lcom/pubinfo/freewifialliance/view/WifiListPage;

    iget-object v1, v1, Lcom/pubinfo/freewifialliance/view/WifiListPage;->handler:Landroid/os/Handler;

    invoke-virtual {v1, v4}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 655
    .end local v0    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v0

    .line 656
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 657
    iget-object v1, p0, Lcom/pubinfo/freewifialliance/view/WifiListPage$MyThread;->this$0:Lcom/pubinfo/freewifialliance/view/WifiListPage;

    iget-object v1, v1, Lcom/pubinfo/freewifialliance/view/WifiListPage;->handler:Landroid/os/Handler;

    invoke-virtual {v1, v4}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 658
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :catch_2
    move-exception v0

    .line 659
    .local v0, "e":Ljava/util/concurrent/TimeoutException;
    invoke-virtual {v0}, Ljava/util/concurrent/TimeoutException;->printStackTrace()V

    .line 660
    iget-object v1, p0, Lcom/pubinfo/freewifialliance/view/WifiListPage$MyThread;->this$0:Lcom/pubinfo/freewifialliance/view/WifiListPage;

    iget-object v1, v1, Lcom/pubinfo/freewifialliance/view/WifiListPage;->handler:Landroid/os/Handler;

    invoke-virtual {v1, v4}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0
.end method
