.class public Lcom/pubinfo/freewifialliance/location/TimeOutHeartTask;
.super Ljava/util/TimerTask;
.source "TimeOutHeartTask.java"


# instance fields
.field private context:Landroid/content/Context;

.field private handler:Landroid/os/Handler;

.field private isOk:Z

.field private outTime:J

.field private typeId:I


# direct methods
.method public constructor <init>(Landroid/os/Handler;Landroid/content/Context;JI)V
    .locals 1
    .param p1, "handler"    # Landroid/os/Handler;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "outTime"    # J
    .param p5, "typeId"    # I

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    .line 16
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/pubinfo/freewifialliance/location/TimeOutHeartTask;->isOk:Z

    .line 18
    iput-object p1, p0, Lcom/pubinfo/freewifialliance/location/TimeOutHeartTask;->handler:Landroid/os/Handler;

    .line 19
    iput-object p2, p0, Lcom/pubinfo/freewifialliance/location/TimeOutHeartTask;->context:Landroid/content/Context;

    .line 20
    iput-wide p3, p0, Lcom/pubinfo/freewifialliance/location/TimeOutHeartTask;->outTime:J

    .line 21
    iput p5, p0, Lcom/pubinfo/freewifialliance/location/TimeOutHeartTask;->typeId:I

    .line 22
    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 27
    :try_start_0
    const-string v2, "TimeOutHeartTask"

    invoke-static {v2}, Lcom/pubinfo/freewifialliance/location/Constants;->myLog(Ljava/lang/String;)V

    .line 28
    iget-wide v2, p0, Lcom/pubinfo/freewifialliance/location/TimeOutHeartTask;->outTime:J

    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V

    .line 29
    iget-boolean v2, p0, Lcom/pubinfo/freewifialliance/location/TimeOutHeartTask;->isOk:Z

    if-nez v2, :cond_0

    .line 30
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    .line 31
    .local v1, "msg":Landroid/os/Message;
    const/16 v2, 0x3e3

    iput v2, v1, Landroid/os/Message;->what:I

    .line 32
    iget v2, p0, Lcom/pubinfo/freewifialliance/location/TimeOutHeartTask;->typeId:I

    iput v2, v1, Landroid/os/Message;->arg1:I

    .line 33
    iget-object v2, p0, Lcom/pubinfo/freewifialliance/location/TimeOutHeartTask;->handler:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 40
    .end local v1    # "msg":Landroid/os/Message;
    :cond_0
    :goto_0
    return-void

    .line 36
    :catch_0
    move-exception v0

    .line 38
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public setType(Z)V
    .locals 0
    .param p1, "b"    # Z

    .prologue
    .line 43
    iput-boolean p1, p0, Lcom/pubinfo/freewifialliance/location/TimeOutHeartTask;->isOk:Z

    .line 44
    return-void
.end method
