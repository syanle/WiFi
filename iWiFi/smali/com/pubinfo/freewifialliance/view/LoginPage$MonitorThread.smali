.class Lcom/pubinfo/freewifialliance/view/LoginPage$MonitorThread;
.super Ljava/lang/Thread;
.source "LoginPage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pubinfo/freewifialliance/view/LoginPage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MonitorThread"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pubinfo/freewifialliance/view/LoginPage;


# direct methods
.method constructor <init>(Lcom/pubinfo/freewifialliance/view/LoginPage;)V
    .locals 0

    .prologue
    .line 144
    iput-object p1, p0, Lcom/pubinfo/freewifialliance/view/LoginPage$MonitorThread;->this$0:Lcom/pubinfo/freewifialliance/view/LoginPage;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 147
    const-wide/16 v0, 0x0

    .line 148
    .local v0, "currentTime":J
    const-wide/16 v2, 0x0

    .line 149
    .local v2, "timeWast":J
    :cond_0
    :goto_0
    iget-object v4, p0, Lcom/pubinfo/freewifialliance/view/LoginPage$MonitorThread;->this$0:Lcom/pubinfo/freewifialliance/view/LoginPage;

    # getter for: Lcom/pubinfo/freewifialliance/view/LoginPage;->isRun:Z
    invoke-static {v4}, Lcom/pubinfo/freewifialliance/view/LoginPage;->access$3(Lcom/pubinfo/freewifialliance/view/LoginPage;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 160
    return-void

    .line 150
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 151
    iget-object v4, p0, Lcom/pubinfo/freewifialliance/view/LoginPage$MonitorThread;->this$0:Lcom/pubinfo/freewifialliance/view/LoginPage;

    # getter for: Lcom/pubinfo/freewifialliance/view/LoginPage;->startTime:J
    invoke-static {v4}, Lcom/pubinfo/freewifialliance/view/LoginPage;->access$4(Lcom/pubinfo/freewifialliance/view/LoginPage;)J

    move-result-wide v4

    sub-long v2, v0, v4

    .line 153
    const-wide/32 v4, 0xea60

    cmp-long v4, v2, v4

    if-gtz v4, :cond_2

    iget-object v4, p0, Lcom/pubinfo/freewifialliance/view/LoginPage$MonitorThread;->this$0:Lcom/pubinfo/freewifialliance/view/LoginPage;

    # getter for: Lcom/pubinfo/freewifialliance/view/LoginPage;->isResponse:Z
    invoke-static {v4}, Lcom/pubinfo/freewifialliance/view/LoginPage;->access$5(Lcom/pubinfo/freewifialliance/view/LoginPage;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 154
    :cond_2
    iget-object v4, p0, Lcom/pubinfo/freewifialliance/view/LoginPage$MonitorThread;->this$0:Lcom/pubinfo/freewifialliance/view/LoginPage;

    const/4 v5, 0x0

    invoke-static {v4, v5}, Lcom/pubinfo/freewifialliance/view/LoginPage;->access$6(Lcom/pubinfo/freewifialliance/view/LoginPage;Z)V

    goto :goto_0
.end method
