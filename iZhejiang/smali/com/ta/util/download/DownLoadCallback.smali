.class public Lcom/ta/util/download/DownLoadCallback;
.super Landroid/os/Handler;
.source "DownLoadCallback.java"


# static fields
.field protected static final ADD_MESSAGE:I = 0x1

.field protected static final FAILURE_MESSAGE:I = 0x4

.field protected static final FINISH_MESSAGE:I = 0x5

.field protected static final PROGRESS_MESSAGE:I = 0x2

.field protected static final START_MESSAGE:I = 0x0

.field protected static final STOP_MESSAGE:I = 0x6

.field protected static final SUCCESS_MESSAGE:I = 0x3


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 9
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 67
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 70
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 101
    :goto_0
    return-void

    .line 73
    :pswitch_0
    invoke-virtual {p0}, Lcom/ta/util/download/DownLoadCallback;->onStart()V

    goto :goto_0

    .line 76
    :pswitch_1
    iget-object v8, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v8, [Ljava/lang/Object;

    .line 77
    .local v8, "response":[Ljava/lang/Object;
    aget-object v0, v8, v1

    check-cast v0, Ljava/lang/String;

    aget-object v1, v8, v2

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {p0, v0, v1}, Lcom/ta/util/download/DownLoadCallback;->onAdd(Ljava/lang/String;Ljava/lang/Boolean;)V

    goto :goto_0

    .line 80
    .end local v8    # "response":[Ljava/lang/Object;
    :pswitch_2
    iget-object v8, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v8, [Ljava/lang/Object;

    .line 81
    .restart local v8    # "response":[Ljava/lang/Object;
    aget-object v1, v8, v1

    check-cast v1, Ljava/lang/String;

    aget-object v0, v8, v2

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    .line 82
    const/4 v0, 0x2

    aget-object v0, v8, v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    const/4 v0, 0x3

    aget-object v0, v8, v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    move-object v0, p0

    .line 81
    invoke-virtual/range {v0 .. v7}, Lcom/ta/util/download/DownLoadCallback;->onLoading(Ljava/lang/String;JJJ)V

    goto :goto_0

    .line 85
    .end local v8    # "response":[Ljava/lang/Object;
    :pswitch_3
    iget-object v8, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v8, [Ljava/lang/Object;

    .line 86
    .restart local v8    # "response":[Ljava/lang/Object;
    aget-object v0, v8, v1

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/ta/util/download/DownLoadCallback;->onSuccess(Ljava/lang/String;)V

    goto :goto_0

    .line 89
    .end local v8    # "response":[Ljava/lang/Object;
    :pswitch_4
    iget-object v8, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v8, [Ljava/lang/Object;

    .line 90
    .restart local v8    # "response":[Ljava/lang/Object;
    aget-object v0, v8, v1

    check-cast v0, Ljava/lang/String;

    aget-object v1, v8, v2

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/ta/util/download/DownLoadCallback;->onFailure(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 93
    .end local v8    # "response":[Ljava/lang/Object;
    :pswitch_5
    iget-object v8, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v8, [Ljava/lang/Object;

    .line 94
    .restart local v8    # "response":[Ljava/lang/Object;
    aget-object v0, v8, v1

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/ta/util/download/DownLoadCallback;->onFinish(Ljava/lang/String;)V

    goto :goto_0

    .line 97
    .end local v8    # "response":[Ljava/lang/Object;
    :pswitch_6
    invoke-virtual {p0}, Lcom/ta/util/download/DownLoadCallback;->onStop()V

    goto :goto_0

    .line 70
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method public onAdd(Ljava/lang/String;Ljava/lang/Boolean;)V
    .locals 0
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "isInterrupt"    # Ljava/lang/Boolean;

    .prologue
    .line 38
    return-void
.end method

.method public onFailure(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "strMsg"    # Ljava/lang/String;

    .prologue
    .line 53
    return-void
.end method

.method public onFinish(Ljava/lang/String;)V
    .locals 0
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 57
    return-void
.end method

.method public onLoading(Ljava/lang/String;JJJ)V
    .locals 0
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "totalSize"    # J
    .param p4, "currentSize"    # J
    .param p6, "speed"    # J

    .prologue
    .line 44
    return-void
.end method

.method public onStart()V
    .locals 0

    .prologue
    .line 34
    return-void
.end method

.method public onStop()V
    .locals 0

    .prologue
    .line 61
    return-void
.end method

.method public onSuccess(Ljava/lang/String;)V
    .locals 0
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 48
    return-void
.end method

.method protected sendAddMessage(Ljava/lang/String;Ljava/lang/Boolean;)V
    .locals 3
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "isInterrupt"    # Ljava/lang/Boolean;

    .prologue
    const/4 v2, 0x1

    .line 118
    .line 119
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    aput-object p2, v0, v2

    .line 118
    invoke-virtual {p0, v2, v0}, Lcom/ta/util/download/DownLoadCallback;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/ta/util/download/DownLoadCallback;->sendMessage(Landroid/os/Message;)Z

    .line 120
    return-void
.end method

.method protected sendFailureMessage(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "strMsg"    # Ljava/lang/String;

    .prologue
    .line 124
    const/4 v0, 0x4

    .line 125
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    aput-object p2, v1, v2

    .line 124
    invoke-virtual {p0, v0, v1}, Lcom/ta/util/download/DownLoadCallback;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/ta/util/download/DownLoadCallback;->sendMessage(Landroid/os/Message;)Z

    .line 126
    return-void
.end method

.method protected sendFinishMessage(Ljava/lang/String;)V
    .locals 3
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 140
    const/4 v0, 0x5

    .line 141
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    .line 140
    invoke-virtual {p0, v0, v1}, Lcom/ta/util/download/DownLoadCallback;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/ta/util/download/DownLoadCallback;->sendMessage(Landroid/os/Message;)Z

    .line 142
    return-void
.end method

.method protected sendLoadMessage(Ljava/lang/String;JJJ)V
    .locals 4
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "totalSize"    # J
    .param p4, "currentSize"    # J
    .param p6, "speed"    # J

    .prologue
    const/4 v3, 0x2

    .line 112
    .line 113
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 v1, 0x1

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    aput-object v1, v0, v3

    const/4 v1, 0x3

    invoke-static {p6, p7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v0, v1

    .line 112
    invoke-virtual {p0, v3, v0}, Lcom/ta/util/download/DownLoadCallback;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/ta/util/download/DownLoadCallback;->sendMessage(Landroid/os/Message;)Z

    .line 114
    return-void
.end method

.method protected sendStartMessage()V
    .locals 2

    .prologue
    .line 130
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/ta/util/download/DownLoadCallback;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/ta/util/download/DownLoadCallback;->sendMessage(Landroid/os/Message;)Z

    .line 131
    return-void
.end method

.method protected sendStopMessage()V
    .locals 2

    .prologue
    .line 135
    const/4 v0, 0x6

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/ta/util/download/DownLoadCallback;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/ta/util/download/DownLoadCallback;->sendMessage(Landroid/os/Message;)Z

    .line 136
    return-void
.end method

.method protected sendSuccessMessage(Ljava/lang/String;)V
    .locals 3
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 105
    const/4 v0, 0x3

    .line 106
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    .line 105
    invoke-virtual {p0, v0, v1}, Lcom/ta/util/download/DownLoadCallback;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/ta/util/download/DownLoadCallback;->sendMessage(Landroid/os/Message;)Z

    .line 107
    return-void
.end method
