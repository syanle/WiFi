.class public Lorg/androidpn/client/NotificationService$TaskTracker;
.super Ljava/lang/Object;
.source "NotificationService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/androidpn/client/NotificationService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "TaskTracker"
.end annotation


# instance fields
.field public count:I

.field final notificationService:Lorg/androidpn/client/NotificationService;

.field final synthetic this$0:Lorg/androidpn/client/NotificationService;


# direct methods
.method public constructor <init>(Lorg/androidpn/client/NotificationService;Lorg/androidpn/client/NotificationService;)V
    .locals 1
    .param p2, "notificationService"    # Lorg/androidpn/client/NotificationService;

    .prologue
    .line 321
    iput-object p1, p0, Lorg/androidpn/client/NotificationService$TaskTracker;->this$0:Lorg/androidpn/client/NotificationService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 322
    iput-object p2, p0, Lorg/androidpn/client/NotificationService$TaskTracker;->notificationService:Lorg/androidpn/client/NotificationService;

    .line 323
    const/4 v0, 0x0

    iput v0, p0, Lorg/androidpn/client/NotificationService$TaskTracker;->count:I

    .line 324
    return-void
.end method


# virtual methods
.method public decrease()V
    .locals 4

    .prologue
    .line 334
    iget-object v0, p0, Lorg/androidpn/client/NotificationService$TaskTracker;->notificationService:Lorg/androidpn/client/NotificationService;

    invoke-virtual {v0}, Lorg/androidpn/client/NotificationService;->getTaskTracker()Lorg/androidpn/client/NotificationService$TaskTracker;

    move-result-object v1

    monitor-enter v1

    .line 335
    :try_start_0
    iget-object v0, p0, Lorg/androidpn/client/NotificationService$TaskTracker;->notificationService:Lorg/androidpn/client/NotificationService;

    invoke-virtual {v0}, Lorg/androidpn/client/NotificationService;->getTaskTracker()Lorg/androidpn/client/NotificationService$TaskTracker;

    move-result-object v0

    iget v2, v0, Lorg/androidpn/client/NotificationService$TaskTracker;->count:I

    add-int/lit8 v2, v2, -0x1

    iput v2, v0, Lorg/androidpn/client/NotificationService$TaskTracker;->count:I

    .line 336
    # getter for: Lorg/androidpn/client/NotificationService;->LOGTAG:Ljava/lang/String;
    invoke-static {}, Lorg/androidpn/client/NotificationService;->access$0()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Decremented task count to "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, p0, Lorg/androidpn/client/NotificationService$TaskTracker;->count:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 334
    monitor-exit v1

    .line 338
    return-void

    .line 334
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public increase()V
    .locals 4

    .prologue
    .line 327
    iget-object v0, p0, Lorg/androidpn/client/NotificationService$TaskTracker;->notificationService:Lorg/androidpn/client/NotificationService;

    invoke-virtual {v0}, Lorg/androidpn/client/NotificationService;->getTaskTracker()Lorg/androidpn/client/NotificationService$TaskTracker;

    move-result-object v1

    monitor-enter v1

    .line 328
    :try_start_0
    iget-object v0, p0, Lorg/androidpn/client/NotificationService$TaskTracker;->notificationService:Lorg/androidpn/client/NotificationService;

    invoke-virtual {v0}, Lorg/androidpn/client/NotificationService;->getTaskTracker()Lorg/androidpn/client/NotificationService$TaskTracker;

    move-result-object v0

    iget v2, v0, Lorg/androidpn/client/NotificationService$TaskTracker;->count:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v0, Lorg/androidpn/client/NotificationService$TaskTracker;->count:I

    .line 329
    # getter for: Lorg/androidpn/client/NotificationService;->LOGTAG:Ljava/lang/String;
    invoke-static {}, Lorg/androidpn/client/NotificationService;->access$0()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Incremented task count to "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, p0, Lorg/androidpn/client/NotificationService$TaskTracker;->count:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 327
    monitor-exit v1

    .line 331
    return-void

    .line 327
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
