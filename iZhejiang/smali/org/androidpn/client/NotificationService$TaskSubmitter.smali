.class public Lorg/androidpn/client/NotificationService$TaskSubmitter;
.super Ljava/lang/Object;
.source "NotificationService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/androidpn/client/NotificationService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "TaskSubmitter"
.end annotation


# instance fields
.field final notificationService:Lorg/androidpn/client/NotificationService;

.field final synthetic this$0:Lorg/androidpn/client/NotificationService;


# direct methods
.method public constructor <init>(Lorg/androidpn/client/NotificationService;Lorg/androidpn/client/NotificationService;)V
    .locals 0
    .param p2, "notificationService"    # Lorg/androidpn/client/NotificationService;

    .prologue
    .line 295
    iput-object p1, p0, Lorg/androidpn/client/NotificationService$TaskSubmitter;->this$0:Lorg/androidpn/client/NotificationService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 296
    iput-object p2, p0, Lorg/androidpn/client/NotificationService$TaskSubmitter;->notificationService:Lorg/androidpn/client/NotificationService;

    .line 297
    return-void
.end method


# virtual methods
.method public submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;
    .locals 2
    .param p1, "task"    # Ljava/lang/Runnable;

    .prologue
    .line 301
    const/4 v0, 0x0

    .line 302
    .local v0, "result":Ljava/util/concurrent/Future;
    iget-object v1, p0, Lorg/androidpn/client/NotificationService$TaskSubmitter;->notificationService:Lorg/androidpn/client/NotificationService;

    invoke-virtual {v1}, Lorg/androidpn/client/NotificationService;->getExecutorService()Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/ExecutorService;->isTerminated()Z

    move-result v1

    if-nez v1, :cond_0

    .line 303
    iget-object v1, p0, Lorg/androidpn/client/NotificationService$TaskSubmitter;->notificationService:Lorg/androidpn/client/NotificationService;

    invoke-virtual {v1}, Lorg/androidpn/client/NotificationService;->getExecutorService()Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/ExecutorService;->isShutdown()Z

    move-result v1

    if-nez v1, :cond_0

    .line 304
    if-eqz p1, :cond_0

    .line 305
    iget-object v1, p0, Lorg/androidpn/client/NotificationService$TaskSubmitter;->notificationService:Lorg/androidpn/client/NotificationService;

    invoke-virtual {v1}, Lorg/androidpn/client/NotificationService;->getExecutorService()Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v0

    .line 307
    :cond_0
    return-object v0
.end method
