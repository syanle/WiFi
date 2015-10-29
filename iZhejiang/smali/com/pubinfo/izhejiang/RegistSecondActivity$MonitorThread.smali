.class Lcom/pubinfo/izhejiang/RegistSecondActivity$MonitorThread;
.super Ljava/lang/Thread;
.source "RegistSecondActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pubinfo/izhejiang/RegistSecondActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MonitorThread"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pubinfo/izhejiang/RegistSecondActivity;


# direct methods
.method constructor <init>(Lcom/pubinfo/izhejiang/RegistSecondActivity;)V
    .locals 0

    .prologue
    .line 225
    iput-object p1, p0, Lcom/pubinfo/izhejiang/RegistSecondActivity$MonitorThread;->this$0:Lcom/pubinfo/izhejiang/RegistSecondActivity;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 227
    const-wide/16 v0, 0x0

    .line 228
    .local v0, "currentTime":J
    const-wide/16 v2, 0x0

    .line 229
    .local v2, "timeWast":J
    :cond_0
    :goto_0
    iget-object v4, p0, Lcom/pubinfo/izhejiang/RegistSecondActivity$MonitorThread;->this$0:Lcom/pubinfo/izhejiang/RegistSecondActivity;

    # getter for: Lcom/pubinfo/izhejiang/RegistSecondActivity;->isRun:Z
    invoke-static {v4}, Lcom/pubinfo/izhejiang/RegistSecondActivity;->access$5(Lcom/pubinfo/izhejiang/RegistSecondActivity;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 239
    return-void

    .line 230
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 231
    iget-object v4, p0, Lcom/pubinfo/izhejiang/RegistSecondActivity$MonitorThread;->this$0:Lcom/pubinfo/izhejiang/RegistSecondActivity;

    # getter for: Lcom/pubinfo/izhejiang/RegistSecondActivity;->startTime:J
    invoke-static {v4}, Lcom/pubinfo/izhejiang/RegistSecondActivity;->access$6(Lcom/pubinfo/izhejiang/RegistSecondActivity;)J

    move-result-wide v4

    sub-long v2, v0, v4

    .line 232
    const-wide/32 v4, 0xea60

    cmp-long v4, v2, v4

    if-gtz v4, :cond_2

    iget-object v4, p0, Lcom/pubinfo/izhejiang/RegistSecondActivity$MonitorThread;->this$0:Lcom/pubinfo/izhejiang/RegistSecondActivity;

    # getter for: Lcom/pubinfo/izhejiang/RegistSecondActivity;->isResponse:Z
    invoke-static {v4}, Lcom/pubinfo/izhejiang/RegistSecondActivity;->access$7(Lcom/pubinfo/izhejiang/RegistSecondActivity;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 233
    :cond_2
    iget-object v4, p0, Lcom/pubinfo/izhejiang/RegistSecondActivity$MonitorThread;->this$0:Lcom/pubinfo/izhejiang/RegistSecondActivity;

    const/4 v5, 0x0

    invoke-static {v4, v5}, Lcom/pubinfo/izhejiang/RegistSecondActivity;->access$8(Lcom/pubinfo/izhejiang/RegistSecondActivity;Z)V

    goto :goto_0
.end method
