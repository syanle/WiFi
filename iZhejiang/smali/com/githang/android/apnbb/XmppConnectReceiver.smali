.class public Lcom/githang/android/apnbb/XmppConnectReceiver;
.super Landroid/content/BroadcastReceiver;
.source "XmppConnectReceiver.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/githang/android/apnbb/XmppConnectReceiver$DelayTime;,
        Lcom/githang/android/apnbb/XmppConnectReceiver$DisconnectTask;,
        Lcom/githang/android/apnbb/XmppConnectReceiver$LoginServer;,
        Lcom/githang/android/apnbb/XmppConnectReceiver$ReconnectTask;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String;

.field private static instance:Lcom/githang/android/apnbb/XmppConnectReceiver;

.field private static final lock:Ljava/lang/Object;

.field private static xmpp_reconnecting_count:I


# instance fields
.field private context:Landroid/content/Context;

.field private disconnectTask:Ljava/lang/Runnable;

.field private handler:Landroid/os/Handler;

.field private isConnecting:Z

.field private loginServerTask:Ljava/lang/Runnable;

.field private reconnectTask:Ljava/lang/Runnable;

.field private sharedPrefs:Landroid/content/SharedPreferences;

.field private xmppHost:Ljava/lang/String;

.field private xmppManager:Lorg/androidpn/client/XmppManager;

.field private xmppPort:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 40
    const-class v0, Lcom/githang/android/apnbb/XmppConnectReceiver;

    invoke-static {v0}, Lorg/androidpn/client/LogUtil;->makeLogTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/githang/android/apnbb/XmppConnectReceiver;->LOG_TAG:Ljava/lang/String;

    .line 41
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/githang/android/apnbb/XmppConnectReceiver;->lock:Ljava/lang/Object;

    .line 42
    const/4 v0, 0x0

    sput-object v0, Lcom/githang/android/apnbb/XmppConnectReceiver;->instance:Lcom/githang/android/apnbb/XmppConnectReceiver;

    .line 53
    const/4 v0, 0x0

    sput v0, Lcom/githang/android/apnbb/XmppConnectReceiver;->xmpp_reconnecting_count:I

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Lorg/androidpn/client/XmppManager;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "xmppManager"    # Lorg/androidpn/client/XmppManager;

    .prologue
    .line 56
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 57
    iput-object p1, p0, Lcom/githang/android/apnbb/XmppConnectReceiver;->context:Landroid/content/Context;

    .line 58
    iput-object p2, p0, Lcom/githang/android/apnbb/XmppConnectReceiver;->xmppManager:Lorg/androidpn/client/XmppManager;

    .line 59
    invoke-static {p1}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v1

    .line 60
    .local v1, "lbm":Landroid/support/v4/content/LocalBroadcastManager;
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 61
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v3, "org.androidpn.client.ANDROIDPN_ACTION_LOGIN"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 62
    const-string v3, "org.androidpn.client.ANDROIDPN_ACTION_RECONNECT"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 63
    const-string v3, "org.androidpn.client.ANDROIDPN_ACTION_REQUEST_STATUS"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 64
    const-string v3, "org.androidpn.client.ANDROIDPN_ACTION_RECEIPT"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 65
    invoke-virtual {v1, p0, v0}, Landroid/support/v4/content/LocalBroadcastManager;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 67
    const-string v3, "org.androidpn.client.ANDROIDPN_MSG_RECEIVER_READY"

    invoke-static {p1, v3}, Lcom/githang/android/apnbb/BroadcastUtil;->sendBroadcast(Landroid/content/Context;Ljava/lang/String;)V

    .line 69
    const-string v3, "client_preferences"

    .line 70
    const/4 v4, 0x0

    .line 69
    invoke-virtual {p1, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    iput-object v3, p0, Lcom/githang/android/apnbb/XmppConnectReceiver;->sharedPrefs:Landroid/content/SharedPreferences;

    .line 72
    iget-object v3, p0, Lcom/githang/android/apnbb/XmppConnectReceiver;->sharedPrefs:Landroid/content/SharedPreferences;

    const-string v4, "XMPP_HOST"

    const-string v5, "localhost"

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/githang/android/apnbb/XmppConnectReceiver;->xmppHost:Ljava/lang/String;

    .line 73
    iget-object v3, p0, Lcom/githang/android/apnbb/XmppConnectReceiver;->sharedPrefs:Landroid/content/SharedPreferences;

    const-string v4, "XMPP_PORT"

    const/16 v5, 0x1466

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Lcom/githang/android/apnbb/XmppConnectReceiver;->xmppPort:I

    .line 76
    new-instance v2, Landroid/os/HandlerThread;

    const-class v3, Lcom/githang/android/apnbb/XmppConnectReceiver;

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 77
    .local v2, "thread":Landroid/os/HandlerThread;
    invoke-virtual {v2}, Landroid/os/HandlerThread;->start()V

    .line 78
    new-instance v3, Landroid/os/Handler;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v3, p0, Lcom/githang/android/apnbb/XmppConnectReceiver;->handler:Landroid/os/Handler;

    .line 79
    new-instance v3, Lcom/githang/android/apnbb/XmppConnectReceiver$DisconnectTask;

    invoke-direct {v3, p0}, Lcom/githang/android/apnbb/XmppConnectReceiver$DisconnectTask;-><init>(Lcom/githang/android/apnbb/XmppConnectReceiver;)V

    iput-object v3, p0, Lcom/githang/android/apnbb/XmppConnectReceiver;->disconnectTask:Ljava/lang/Runnable;

    .line 80
    new-instance v3, Lcom/githang/android/apnbb/XmppConnectReceiver$ReconnectTask;

    invoke-direct {v3, p0}, Lcom/githang/android/apnbb/XmppConnectReceiver$ReconnectTask;-><init>(Lcom/githang/android/apnbb/XmppConnectReceiver;)V

    iput-object v3, p0, Lcom/githang/android/apnbb/XmppConnectReceiver;->reconnectTask:Ljava/lang/Runnable;

    .line 82
    new-instance v3, Lcom/githang/android/apnbb/XmppConnectReceiver$LoginServer;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4}, Lcom/githang/android/apnbb/XmppConnectReceiver$LoginServer;-><init>(Lcom/githang/android/apnbb/XmppConnectReceiver;Lcom/githang/android/apnbb/XmppConnectReceiver$LoginServer;)V

    iput-object v3, p0, Lcom/githang/android/apnbb/XmppConnectReceiver;->loginServerTask:Ljava/lang/Runnable;

    .line 84
    return-void
.end method

.method static synthetic access$0(Lcom/githang/android/apnbb/XmppConnectReceiver;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/githang/android/apnbb/XmppConnectReceiver;->context:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1(Lcom/githang/android/apnbb/XmppConnectReceiver;Z)V
    .locals 0

    .prologue
    .line 52
    iput-boolean p1, p0, Lcom/githang/android/apnbb/XmppConnectReceiver;->isConnecting:Z

    return-void
.end method

.method static synthetic access$10(Lcom/githang/android/apnbb/XmppConnectReceiver;)Z
    .locals 1

    .prologue
    .line 52
    iget-boolean v0, p0, Lcom/githang/android/apnbb/XmppConnectReceiver;->isConnecting:Z

    return v0
.end method

.method static synthetic access$11()I
    .locals 1

    .prologue
    .line 53
    sget v0, Lcom/githang/android/apnbb/XmppConnectReceiver;->xmpp_reconnecting_count:I

    return v0
.end method

.method static synthetic access$2(I)V
    .locals 0

    .prologue
    .line 53
    sput p0, Lcom/githang/android/apnbb/XmppConnectReceiver;->xmpp_reconnecting_count:I

    return-void
.end method

.method static synthetic access$3(Lcom/githang/android/apnbb/XmppConnectReceiver;)Landroid/content/SharedPreferences;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/githang/android/apnbb/XmppConnectReceiver;->sharedPrefs:Landroid/content/SharedPreferences;

    return-object v0
.end method

.method static synthetic access$4()Ljava/lang/String;
    .locals 1

    .prologue
    .line 40
    sget-object v0, Lcom/githang/android/apnbb/XmppConnectReceiver;->LOG_TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$5(Lcom/githang/android/apnbb/XmppConnectReceiver;)Lorg/androidpn/client/XmppManager;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/githang/android/apnbb/XmppConnectReceiver;->xmppManager:Lorg/androidpn/client/XmppManager;

    return-object v0
.end method

.method static synthetic access$6(Lcom/githang/android/apnbb/XmppConnectReceiver;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/githang/android/apnbb/XmppConnectReceiver;->xmppHost:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$7(Lcom/githang/android/apnbb/XmppConnectReceiver;)I
    .locals 1

    .prologue
    .line 48
    iget v0, p0, Lcom/githang/android/apnbb/XmppConnectReceiver;->xmppPort:I

    return v0
.end method

.method static synthetic access$8(Lcom/githang/android/apnbb/XmppConnectReceiver;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/githang/android/apnbb/XmppConnectReceiver;->handler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$9(Lcom/githang/android/apnbb/XmppConnectReceiver;)Ljava/lang/Runnable;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/githang/android/apnbb/XmppConnectReceiver;->reconnectTask:Ljava/lang/Runnable;

    return-object v0
.end method

.method private doDisconnect()V
    .locals 2

    .prologue
    .line 147
    const/4 v0, 0x0

    sput v0, Lcom/githang/android/apnbb/XmppConnectReceiver;->xmpp_reconnecting_count:I

    .line 149
    iget-object v0, p0, Lcom/githang/android/apnbb/XmppConnectReceiver;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/githang/android/apnbb/XmppConnectReceiver;->loginServerTask:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 150
    iget-object v0, p0, Lcom/githang/android/apnbb/XmppConnectReceiver;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/githang/android/apnbb/XmppConnectReceiver;->disconnectTask:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 151
    return-void
.end method

.method private doLogin()V
    .locals 2

    .prologue
    .line 132
    iget-object v0, p0, Lcom/githang/android/apnbb/XmppConnectReceiver;->xmppManager:Lorg/androidpn/client/XmppManager;

    invoke-virtual {v0}, Lorg/androidpn/client/XmppManager;->isAuthenticated()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 133
    sget-object v0, Lcom/githang/android/apnbb/XmppConnectReceiver;->LOG_TAG:Ljava/lang/String;

    const-string v1, "XMPP Authenticated already"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    iget-object v0, p0, Lcom/githang/android/apnbb/XmppConnectReceiver;->context:Landroid/content/Context;

    const-string v1, "org.androidpn.client.ANDROIDPN_STATUS_LOGINED"

    invoke-static {v0, v1}, Lcom/githang/android/apnbb/BroadcastUtil;->sendBroadcast(Landroid/content/Context;Ljava/lang/String;)V

    .line 139
    :goto_0
    return-void

    .line 137
    :cond_0
    iget-object v0, p0, Lcom/githang/android/apnbb/XmppConnectReceiver;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/githang/android/apnbb/XmppConnectReceiver;->loginServerTask:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 138
    iget-object v0, p0, Lcom/githang/android/apnbb/XmppConnectReceiver;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/githang/android/apnbb/XmppConnectReceiver;->loginServerTask:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method private doReconnect()V
    .locals 2

    .prologue
    .line 142
    iget-object v0, p0, Lcom/githang/android/apnbb/XmppConnectReceiver;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/githang/android/apnbb/XmppConnectReceiver;->reconnectTask:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 143
    return-void
.end method

.method private doSendReceipt(Lorg/jivesoftware/smack/packet/IQ;)V
    .locals 5
    .param p1, "iq"    # Lorg/jivesoftware/smack/packet/IQ;

    .prologue
    .line 120
    invoke-static {p1}, Lorg/jivesoftware/smack/packet/IQ;->createResultIQ(Lorg/jivesoftware/smack/packet/IQ;)Lorg/jivesoftware/smack/packet/IQ;

    move-result-object v1

    .line 122
    .local v1, "result":Lorg/jivesoftware/smack/packet/IQ;
    :try_start_0
    iget-object v2, p0, Lcom/githang/android/apnbb/XmppConnectReceiver;->xmppManager:Lorg/androidpn/client/XmppManager;

    invoke-virtual {v2}, Lorg/androidpn/client/XmppManager;->getConnection()Lorg/jivesoftware/smack/XMPPConnection;

    move-result-object v2

    invoke-virtual {v2, v1}, Lorg/jivesoftware/smack/XMPPConnection;->sendPacket(Lorg/jivesoftware/smack/packet/Packet;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    .line 128
    :goto_0
    sget-object v2, Lcom/githang/android/apnbb/XmppConnectReceiver;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "receipt"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    return-void

    .line 123
    :catch_0
    move-exception v0

    .line 124
    .local v0, "e":Ljava/lang/IllegalStateException;
    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->printStackTrace()V

    goto :goto_0

    .line 125
    .end local v0    # "e":Ljava/lang/IllegalStateException;
    :catch_1
    move-exception v0

    .line 126
    .local v0, "e":Ljava/lang/NullPointerException;
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_0
.end method

.method public static final initInstance(Landroid/content/Context;Lorg/androidpn/client/XmppManager;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "xmppManager"    # Lorg/androidpn/client/XmppManager;

    .prologue
    .line 87
    sget-object v0, Lcom/githang/android/apnbb/XmppConnectReceiver;->instance:Lcom/githang/android/apnbb/XmppConnectReceiver;

    if-nez v0, :cond_1

    .line 88
    sget-object v1, Lcom/githang/android/apnbb/XmppConnectReceiver;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 89
    :try_start_0
    sget-object v0, Lcom/githang/android/apnbb/XmppConnectReceiver;->instance:Lcom/githang/android/apnbb/XmppConnectReceiver;

    if-nez v0, :cond_0

    .line 90
    new-instance v0, Lcom/githang/android/apnbb/XmppConnectReceiver;

    invoke-direct {v0, p0, p1}, Lcom/githang/android/apnbb/XmppConnectReceiver;-><init>(Landroid/content/Context;Lorg/androidpn/client/XmppManager;)V

    sput-object v0, Lcom/githang/android/apnbb/XmppConnectReceiver;->instance:Lcom/githang/android/apnbb/XmppConnectReceiver;

    .line 88
    :cond_0
    monitor-exit v1

    .line 94
    :cond_1
    return-void

    .line 88
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 98
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 99
    .local v0, "action":Ljava/lang/String;
    sget-object v1, Lcom/githang/android/apnbb/XmppConnectReceiver;->LOG_TAG:Ljava/lang/String;

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    const-string v1, "org.androidpn.client.ANDROIDPN_ACTION_LOGIN"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 101
    invoke-direct {p0}, Lcom/githang/android/apnbb/XmppConnectReceiver;->doLogin()V

    .line 117
    :cond_0
    :goto_0
    return-void

    .line 102
    :cond_1
    const-string v1, "org.androidpn.client.ANDROIDPN_ACTION_RECONNECT"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 103
    invoke-direct {p0}, Lcom/githang/android/apnbb/XmppConnectReceiver;->doReconnect()V

    goto :goto_0

    .line 104
    :cond_2
    const-string v1, "org.androidpn.client.ANDORIDPN_ACTION_DISCONNECT"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 105
    invoke-direct {p0}, Lcom/githang/android/apnbb/XmppConnectReceiver;->doDisconnect()V

    goto :goto_0

    .line 106
    :cond_3
    const-string v1, "org.androidpn.client.ANDROIDPN_ACTION_REQUEST_STATUS"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 107
    iget-object v1, p0, Lcom/githang/android/apnbb/XmppConnectReceiver;->xmppManager:Lorg/androidpn/client/XmppManager;

    invoke-virtual {v1}, Lorg/androidpn/client/XmppManager;->isAuthenticated()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 108
    const-string v1, "org.androidpn.client.ANDROIDPN_STATUS_CONNECTED"

    invoke-static {p1, v1}, Lcom/githang/android/apnbb/BroadcastUtil;->sendBroadcast(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 109
    :cond_4
    iget-boolean v1, p0, Lcom/githang/android/apnbb/XmppConnectReceiver;->isConnecting:Z

    if-eqz v1, :cond_5

    .line 110
    const-string v1, "org.androidpn.client.ANDROIDPN_STATUS_CONNECTING"

    invoke-static {p1, v1}, Lcom/githang/android/apnbb/BroadcastUtil;->sendBroadcast(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 112
    :cond_5
    const-string v1, "org.androidpn.client.ANDROIDPN_STATUS_DISCONNECT"

    invoke-static {p1, v1}, Lcom/githang/android/apnbb/BroadcastUtil;->sendBroadcast(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 114
    :cond_6
    const-string v1, "org.androidpn.client.ANDROIDPN_ACTION_RECEIPT"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 115
    const-string v1, "INTENT_IQ"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v1

    check-cast v1, Lorg/jivesoftware/smack/packet/IQ;

    invoke-direct {p0, v1}, Lcom/githang/android/apnbb/XmppConnectReceiver;->doSendReceipt(Lorg/jivesoftware/smack/packet/IQ;)V

    goto :goto_0
.end method
