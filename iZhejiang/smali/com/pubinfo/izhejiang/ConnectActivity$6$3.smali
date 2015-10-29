.class Lcom/pubinfo/izhejiang/ConnectActivity$6$3;
.super Ljava/lang/Object;
.source "ConnectActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pubinfo/izhejiang/ConnectActivity$6;->handleMessage(Landroid/os/Message;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/pubinfo/izhejiang/ConnectActivity$6;


# direct methods
.method constructor <init>(Lcom/pubinfo/izhejiang/ConnectActivity$6;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/pubinfo/izhejiang/ConnectActivity$6$3;->this$1:Lcom/pubinfo/izhejiang/ConnectActivity$6;

    .line 728
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 12

    .prologue
    const-wide/16 v10, 0x3e8

    .line 730
    iget-object v5, p0, Lcom/pubinfo/izhejiang/ConnectActivity$6$3;->this$1:Lcom/pubinfo/izhejiang/ConnectActivity$6;

    # getter for: Lcom/pubinfo/izhejiang/ConnectActivity$6;->this$0:Lcom/pubinfo/izhejiang/ConnectActivity;
    invoke-static {v5}, Lcom/pubinfo/izhejiang/ConnectActivity$6;->access$0(Lcom/pubinfo/izhejiang/ConnectActivity$6;)Lcom/pubinfo/izhejiang/ConnectActivity;

    move-result-object v5

    .line 731
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    iget-object v8, p0, Lcom/pubinfo/izhejiang/ConnectActivity$6$3;->this$1:Lcom/pubinfo/izhejiang/ConnectActivity$6;

    # getter for: Lcom/pubinfo/izhejiang/ConnectActivity$6;->this$0:Lcom/pubinfo/izhejiang/ConnectActivity;
    invoke-static {v8}, Lcom/pubinfo/izhejiang/ConnectActivity$6;->access$0(Lcom/pubinfo/izhejiang/ConnectActivity$6;)Lcom/pubinfo/izhejiang/ConnectActivity;

    move-result-object v8

    iget-wide v8, v8, Lcom/pubinfo/izhejiang/ConnectActivity;->startTime:J

    .line 730
    sub-long/2addr v6, v8

    invoke-virtual {v5, v6, v7}, Lcom/pubinfo/izhejiang/ConnectActivity;->showTimeCount(J)Ljava/lang/String;

    move-result-object v0

    .line 732
    .local v0, "content":Ljava/lang/String;
    iget-object v5, p0, Lcom/pubinfo/izhejiang/ConnectActivity$6$3;->this$1:Lcom/pubinfo/izhejiang/ConnectActivity$6;

    # getter for: Lcom/pubinfo/izhejiang/ConnectActivity$6;->this$0:Lcom/pubinfo/izhejiang/ConnectActivity;
    invoke-static {v5}, Lcom/pubinfo/izhejiang/ConnectActivity$6;->access$0(Lcom/pubinfo/izhejiang/ConnectActivity$6;)Lcom/pubinfo/izhejiang/ConnectActivity;

    move-result-object v5

    iget-object v5, v5, Lcom/pubinfo/izhejiang/ConnectActivity;->tv2:Landroid/widget/TextView;

    invoke-virtual {v5, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 734
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    .line 735
    .local v3, "now":J
    rem-long v5, v3, v10

    sub-long v5, v10, v5

    add-long v1, v3, v5

    .line 736
    .local v1, "next":J
    iget-object v5, p0, Lcom/pubinfo/izhejiang/ConnectActivity$6$3;->this$1:Lcom/pubinfo/izhejiang/ConnectActivity$6;

    # getter for: Lcom/pubinfo/izhejiang/ConnectActivity$6;->this$0:Lcom/pubinfo/izhejiang/ConnectActivity;
    invoke-static {v5}, Lcom/pubinfo/izhejiang/ConnectActivity$6;->access$0(Lcom/pubinfo/izhejiang/ConnectActivity$6;)Lcom/pubinfo/izhejiang/ConnectActivity;

    move-result-object v5

    # getter for: Lcom/pubinfo/izhejiang/ConnectActivity;->stepTimeHandler:Landroid/os/Handler;
    invoke-static {v5}, Lcom/pubinfo/izhejiang/ConnectActivity;->access$9(Lcom/pubinfo/izhejiang/ConnectActivity;)Landroid/os/Handler;

    move-result-object v5

    iget-object v6, p0, Lcom/pubinfo/izhejiang/ConnectActivity$6$3;->this$1:Lcom/pubinfo/izhejiang/ConnectActivity$6;

    # getter for: Lcom/pubinfo/izhejiang/ConnectActivity$6;->this$0:Lcom/pubinfo/izhejiang/ConnectActivity;
    invoke-static {v6}, Lcom/pubinfo/izhejiang/ConnectActivity$6;->access$0(Lcom/pubinfo/izhejiang/ConnectActivity$6;)Lcom/pubinfo/izhejiang/ConnectActivity;

    move-result-object v6

    # getter for: Lcom/pubinfo/izhejiang/ConnectActivity;->mTicker:Ljava/lang/Runnable;
    invoke-static {v6}, Lcom/pubinfo/izhejiang/ConnectActivity;->access$10(Lcom/pubinfo/izhejiang/ConnectActivity;)Ljava/lang/Runnable;

    move-result-object v6

    invoke-virtual {v5, v6, v1, v2}, Landroid/os/Handler;->postAtTime(Ljava/lang/Runnable;J)Z

    .line 737
    return-void
.end method
