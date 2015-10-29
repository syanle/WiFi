.class Lcom/pubinfo/izhejiang/FindPasswordCheckMsgActivity$MonitorThread;
.super Ljava/lang/Thread;
.source "FindPasswordCheckMsgActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pubinfo/izhejiang/FindPasswordCheckMsgActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MonitorThread"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pubinfo/izhejiang/FindPasswordCheckMsgActivity;


# direct methods
.method constructor <init>(Lcom/pubinfo/izhejiang/FindPasswordCheckMsgActivity;)V
    .locals 0

    .prologue
    .line 131
    iput-object p1, p0, Lcom/pubinfo/izhejiang/FindPasswordCheckMsgActivity$MonitorThread;->this$0:Lcom/pubinfo/izhejiang/FindPasswordCheckMsgActivity;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 133
    const-wide/16 v0, 0x0

    .line 134
    .local v0, "currentTime":J
    const-wide/16 v2, 0x0

    .line 135
    .local v2, "timeWast":J
    :cond_0
    :goto_0
    iget-object v4, p0, Lcom/pubinfo/izhejiang/FindPasswordCheckMsgActivity$MonitorThread;->this$0:Lcom/pubinfo/izhejiang/FindPasswordCheckMsgActivity;

    # getter for: Lcom/pubinfo/izhejiang/FindPasswordCheckMsgActivity;->isRun:Z
    invoke-static {v4}, Lcom/pubinfo/izhejiang/FindPasswordCheckMsgActivity;->access$3(Lcom/pubinfo/izhejiang/FindPasswordCheckMsgActivity;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 145
    return-void

    .line 136
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 137
    iget-object v4, p0, Lcom/pubinfo/izhejiang/FindPasswordCheckMsgActivity$MonitorThread;->this$0:Lcom/pubinfo/izhejiang/FindPasswordCheckMsgActivity;

    # getter for: Lcom/pubinfo/izhejiang/FindPasswordCheckMsgActivity;->startTime:J
    invoke-static {v4}, Lcom/pubinfo/izhejiang/FindPasswordCheckMsgActivity;->access$4(Lcom/pubinfo/izhejiang/FindPasswordCheckMsgActivity;)J

    move-result-wide v4

    sub-long v2, v0, v4

    .line 138
    const-wide/32 v4, 0x1d4c0

    cmp-long v4, v2, v4

    if-gtz v4, :cond_2

    iget-object v4, p0, Lcom/pubinfo/izhejiang/FindPasswordCheckMsgActivity$MonitorThread;->this$0:Lcom/pubinfo/izhejiang/FindPasswordCheckMsgActivity;

    # getter for: Lcom/pubinfo/izhejiang/FindPasswordCheckMsgActivity;->isResponse:Z
    invoke-static {v4}, Lcom/pubinfo/izhejiang/FindPasswordCheckMsgActivity;->access$5(Lcom/pubinfo/izhejiang/FindPasswordCheckMsgActivity;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 139
    :cond_2
    iget-object v4, p0, Lcom/pubinfo/izhejiang/FindPasswordCheckMsgActivity$MonitorThread;->this$0:Lcom/pubinfo/izhejiang/FindPasswordCheckMsgActivity;

    const/4 v5, 0x0

    invoke-static {v4, v5}, Lcom/pubinfo/izhejiang/FindPasswordCheckMsgActivity;->access$6(Lcom/pubinfo/izhejiang/FindPasswordCheckMsgActivity;Z)V

    goto :goto_0
.end method
