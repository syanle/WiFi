.class Lcom/umeng/socialize/sensor/UMSensorManager$1;
.super Landroid/os/Handler;
.source "UMSensorManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/umeng/socialize/sensor/UMSensorManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 122
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 129
    iget v3, p1, Landroid/os/Message;->what:I

    const/16 v4, 0x7b

    if-ne v3, v4, :cond_0

    .line 130
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Lcom/umeng/socialize/sensor/UMShakeSensor;

    .line 131
    .local v2, "sensor":Lcom/umeng/socialize/sensor/UMShakeSensor;
    if-nez v2, :cond_1

    .line 150
    .end local v2    # "sensor":Lcom/umeng/socialize/sensor/UMShakeSensor;
    :cond_0
    :goto_0
    return-void

    .line 134
    .restart local v2    # "sensor":Lcom/umeng/socialize/sensor/UMShakeSensor;
    :cond_1
    monitor-enter v2

    .line 136
    :try_start_0
    invoke-virtual {v2}, Lcom/umeng/socialize/sensor/UMShakeSensor;->register()Z

    move-result v1

    .line 137
    .local v1, "result":Z
    if-eqz v1, :cond_3

    .line 138
    # getter for: Lcom/umeng/socialize/sensor/UMSensorManager;->mSensorsMap:Ljava/util/Map;
    invoke-static {}, Lcom/umeng/socialize/sensor/UMSensorManager;->access$0()Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Map;->clear()V

    .line 139
    invoke-virtual {v2}, Lcom/umeng/socialize/sensor/UMShakeSensor;->getParentActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    .line 140
    .local v0, "keyWord":Ljava/lang/String;
    # getter for: Lcom/umeng/socialize/sensor/UMSensorManager;->mSensorsMap:Ljava/util/Map;
    invoke-static {}, Lcom/umeng/socialize/sensor/UMSensorManager;->access$0()Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 141
    # getter for: Lcom/umeng/socialize/sensor/UMSensorManager;->mSensorsMap:Ljava/util/Map;
    invoke-static {}, Lcom/umeng/socialize/sensor/UMSensorManager;->access$0()Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 143
    :cond_2
    # getter for: Lcom/umeng/socialize/sensor/UMSensorManager;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/umeng/socialize/sensor/UMSensorManager;->access$1()Ljava/lang/String;

    move-result-object v3

    const-string v4, "#### \u6447\u4e00\u6447\u6ce8\u518c\u6210\u529f."

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    .end local v0    # "keyWord":Ljava/lang/String;
    :goto_1
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 148
    const/4 v3, 0x0

    invoke-static {v3}, Lcom/umeng/socialize/sensor/UMSensorManager;->access$2(Z)V

    goto :goto_0

    .line 145
    :cond_3
    :try_start_1
    # getter for: Lcom/umeng/socialize/sensor/UMSensorManager;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/umeng/socialize/sensor/UMSensorManager;->access$1()Ljava/lang/String;

    move-result-object v3

    const-string v4, "#### \u6447\u4e00\u6447\u6ce8\u518c\u5931\u8d25."

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 134
    .end local v1    # "result":Z
    :catchall_0
    move-exception v3

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3
.end method
