.class public Lcom/githang/android/apnbb/XmppConnectReceiver$DisconnectTask;
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
    name = "DisconnectTask"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/githang/android/apnbb/XmppConnectReceiver;


# direct methods
.method public constructor <init>(Lcom/githang/android/apnbb/XmppConnectReceiver;)V
    .locals 0

    .prologue
    .line 375
    iput-object p1, p0, Lcom/githang/android/apnbb/XmppConnectReceiver$DisconnectTask;->this$0:Lcom/githang/android/apnbb/XmppConnectReceiver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 377
    iget-object v0, p0, Lcom/githang/android/apnbb/XmppConnectReceiver$DisconnectTask;->this$0:Lcom/githang/android/apnbb/XmppConnectReceiver;

    # getter for: Lcom/githang/android/apnbb/XmppConnectReceiver;->xmppManager:Lorg/androidpn/client/XmppManager;
    invoke-static {v0}, Lcom/githang/android/apnbb/XmppConnectReceiver;->access$5(Lcom/githang/android/apnbb/XmppConnectReceiver;)Lorg/androidpn/client/XmppManager;

    move-result-object v0

    invoke-virtual {v0}, Lorg/androidpn/client/XmppManager;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 378
    # getter for: Lcom/githang/android/apnbb/XmppConnectReceiver;->LOG_TAG:Ljava/lang/String;
    invoke-static {}, Lcom/githang/android/apnbb/XmppConnectReceiver;->access$4()Ljava/lang/String;

    move-result-object v0

    const-string v1, "terminatePersistentConnection()... run()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 379
    iget-object v0, p0, Lcom/githang/android/apnbb/XmppConnectReceiver$DisconnectTask;->this$0:Lcom/githang/android/apnbb/XmppConnectReceiver;

    # getter for: Lcom/githang/android/apnbb/XmppConnectReceiver;->xmppManager:Lorg/androidpn/client/XmppManager;
    invoke-static {v0}, Lcom/githang/android/apnbb/XmppConnectReceiver;->access$5(Lcom/githang/android/apnbb/XmppConnectReceiver;)Lorg/androidpn/client/XmppManager;

    move-result-object v0

    invoke-virtual {v0}, Lorg/androidpn/client/XmppManager;->getConnection()Lorg/jivesoftware/smack/XMPPConnection;

    move-result-object v0

    .line 380
    iget-object v1, p0, Lcom/githang/android/apnbb/XmppConnectReceiver$DisconnectTask;->this$0:Lcom/githang/android/apnbb/XmppConnectReceiver;

    # getter for: Lcom/githang/android/apnbb/XmppConnectReceiver;->xmppManager:Lorg/androidpn/client/XmppManager;
    invoke-static {v1}, Lcom/githang/android/apnbb/XmppConnectReceiver;->access$5(Lcom/githang/android/apnbb/XmppConnectReceiver;)Lorg/androidpn/client/XmppManager;

    move-result-object v1

    invoke-virtual {v1}, Lorg/androidpn/client/XmppManager;->getPacketListener()Lorg/jivesoftware/smack/PacketListener;

    move-result-object v1

    .line 379
    invoke-virtual {v0, v1}, Lorg/jivesoftware/smack/XMPPConnection;->removePacketListener(Lorg/jivesoftware/smack/PacketListener;)V

    .line 381
    iget-object v0, p0, Lcom/githang/android/apnbb/XmppConnectReceiver$DisconnectTask;->this$0:Lcom/githang/android/apnbb/XmppConnectReceiver;

    # getter for: Lcom/githang/android/apnbb/XmppConnectReceiver;->xmppManager:Lorg/androidpn/client/XmppManager;
    invoke-static {v0}, Lcom/githang/android/apnbb/XmppConnectReceiver;->access$5(Lcom/githang/android/apnbb/XmppConnectReceiver;)Lorg/androidpn/client/XmppManager;

    move-result-object v0

    invoke-virtual {v0}, Lorg/androidpn/client/XmppManager;->getConnection()Lorg/jivesoftware/smack/XMPPConnection;

    move-result-object v0

    invoke-virtual {v0}, Lorg/jivesoftware/smack/XMPPConnection;->disconnect()V

    .line 383
    :cond_0
    return-void
.end method
