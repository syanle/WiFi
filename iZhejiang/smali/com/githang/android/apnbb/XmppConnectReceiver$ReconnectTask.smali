.class public Lcom/githang/android/apnbb/XmppConnectReceiver$ReconnectTask;
.super Ljava/lang/Object;
.source "XmppConnectReceiver.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/githang/android/apnbb/XmppConnectReceiver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ReconnectTask"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/githang/android/apnbb/XmppConnectReceiver;


# direct methods
.method public constructor <init>(Lcom/githang/android/apnbb/XmppConnectReceiver;)V
    .locals 0

    .prologue
    .line 386
    iput-object p1, p0, Lcom/githang/android/apnbb/XmppConnectReceiver$ReconnectTask;->this$0:Lcom/githang/android/apnbb/XmppConnectReceiver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    const/16 v4, 0xa

    .line 388
    iget-object v1, p0, Lcom/githang/android/apnbb/XmppConnectReceiver$ReconnectTask;->this$0:Lcom/githang/android/apnbb/XmppConnectReceiver;

    # getter for: Lcom/githang/android/apnbb/XmppConnectReceiver;->xmppManager:Lorg/androidpn/client/XmppManager;
    invoke-static {v1}, Lcom/githang/android/apnbb/XmppConnectReceiver;->access$5(Lcom/githang/android/apnbb/XmppConnectReceiver;)Lorg/androidpn/client/XmppManager;

    move-result-object v1

    invoke-virtual {v1}, Lorg/androidpn/client/XmppManager;->isAuthenticated()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/githang/android/apnbb/XmppConnectReceiver$ReconnectTask;->this$0:Lcom/githang/android/apnbb/XmppConnectReceiver;

    # getter for: Lcom/githang/android/apnbb/XmppConnectReceiver;->context:Landroid/content/Context;
    invoke-static {v1}, Lcom/githang/android/apnbb/XmppConnectReceiver;->access$0(Lcom/githang/android/apnbb/XmppConnectReceiver;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/githang/android/apnbb/NetworkUtil;->isNetworkAvaible(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 389
    :cond_0
    iget-object v1, p0, Lcom/githang/android/apnbb/XmppConnectReceiver$ReconnectTask;->this$0:Lcom/githang/android/apnbb/XmppConnectReceiver;

    # getter for: Lcom/githang/android/apnbb/XmppConnectReceiver;->handler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/githang/android/apnbb/XmppConnectReceiver;->access$8(Lcom/githang/android/apnbb/XmppConnectReceiver;)Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lcom/githang/android/apnbb/XmppConnectReceiver$ReconnectTask;->this$0:Lcom/githang/android/apnbb/XmppConnectReceiver;

    # getter for: Lcom/githang/android/apnbb/XmppConnectReceiver;->reconnectTask:Ljava/lang/Runnable;
    invoke-static {v2}, Lcom/githang/android/apnbb/XmppConnectReceiver;->access$9(Lcom/githang/android/apnbb/XmppConnectReceiver;)Ljava/lang/Runnable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 390
    invoke-static {}, Lcom/githang/android/apnbb/XmppConnectReceiver$DelayTime;->resetTimes()V

    .line 416
    :cond_1
    :goto_0
    return-void

    .line 393
    :cond_2
    iget-object v1, p0, Lcom/githang/android/apnbb/XmppConnectReceiver$ReconnectTask;->this$0:Lcom/githang/android/apnbb/XmppConnectReceiver;

    # getter for: Lcom/githang/android/apnbb/XmppConnectReceiver;->isConnecting:Z
    invoke-static {v1}, Lcom/githang/android/apnbb/XmppConnectReceiver;->access$10(Lcom/githang/android/apnbb/XmppConnectReceiver;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 398
    # getter for: Lcom/githang/android/apnbb/XmppConnectReceiver;->xmpp_reconnecting_count:I
    invoke-static {}, Lcom/githang/android/apnbb/XmppConnectReceiver;->access$11()I

    move-result v1

    if-lt v1, v4, :cond_3

    .line 399
    # getter for: Lcom/githang/android/apnbb/XmppConnectReceiver;->LOG_TAG:Ljava/lang/String;
    invoke-static {}, Lcom/githang/android/apnbb/XmppConnectReceiver;->access$4()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "reconnectTask donot run reconnection --- xmpp_reconnecting_count("

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    # getter for: Lcom/githang/android/apnbb/XmppConnectReceiver;->xmpp_reconnecting_count:I
    invoke-static {}, Lcom/githang/android/apnbb/XmppConnectReceiver;->access$11()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") >= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 402
    :cond_3
    # getter for: Lcom/githang/android/apnbb/XmppConnectReceiver;->xmpp_reconnecting_count:I
    invoke-static {}, Lcom/githang/android/apnbb/XmppConnectReceiver;->access$11()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-static {v1}, Lcom/githang/android/apnbb/XmppConnectReceiver;->access$2(I)V

    .line 404
    # getter for: Lcom/githang/android/apnbb/XmppConnectReceiver;->LOG_TAG:Ljava/lang/String;
    invoke-static {}, Lcom/githang/android/apnbb/XmppConnectReceiver;->access$4()Ljava/lang/String;

    move-result-object v1

    const-string v2, "reconnectTask..."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 405
    iget-object v1, p0, Lcom/githang/android/apnbb/XmppConnectReceiver$ReconnectTask;->this$0:Lcom/githang/android/apnbb/XmppConnectReceiver;

    # getter for: Lcom/githang/android/apnbb/XmppConnectReceiver;->context:Landroid/content/Context;
    invoke-static {v1}, Lcom/githang/android/apnbb/XmppConnectReceiver;->access$0(Lcom/githang/android/apnbb/XmppConnectReceiver;)Landroid/content/Context;

    move-result-object v1

    const-string v2, "org.androidpn.client.ANDROIDPN_STATUS_RECONNECTING"

    invoke-static {v1, v2}, Lcom/githang/android/apnbb/BroadcastUtil;->sendBroadcast(Landroid/content/Context;Ljava/lang/String;)V

    .line 408
    :try_start_0
    invoke-static {}, Lcom/githang/android/apnbb/XmppConnectReceiver$DelayTime;->getWaitingTime()I

    move-result v1

    mul-int/lit16 v1, v1, 0x3e8

    int-to-long v1, v1

    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 413
    :goto_1
    iget-object v1, p0, Lcom/githang/android/apnbb/XmppConnectReceiver$ReconnectTask;->this$0:Lcom/githang/android/apnbb/XmppConnectReceiver;

    # getter for: Lcom/githang/android/apnbb/XmppConnectReceiver;->context:Landroid/content/Context;
    invoke-static {v1}, Lcom/githang/android/apnbb/XmppConnectReceiver;->access$0(Lcom/githang/android/apnbb/XmppConnectReceiver;)Landroid/content/Context;

    move-result-object v1

    const-string v2, "org.androidpn.client.ANDROIDPN_ACTION_LOGIN"

    invoke-static {v1, v2}, Lcom/githang/android/apnbb/BroadcastUtil;->sendBroadcast(Landroid/content/Context;Ljava/lang/String;)V

    .line 415
    invoke-static {}, Lcom/githang/android/apnbb/XmppConnectReceiver$DelayTime;->increase()V

    goto :goto_0

    .line 409
    :catch_0
    move-exception v0

    .line 410
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_1
.end method
