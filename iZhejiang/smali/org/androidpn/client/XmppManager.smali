.class public Lorg/androidpn/client/XmppManager;
.super Ljava/lang/Object;
.source "XmppManager.java"


# static fields
.field private static final LOGTAG:Ljava/lang/String;

.field public static final XMPP_RESOURCE_NAME:Ljava/lang/String; = "AndroidpnClient"


# instance fields
.field private appName:Ljava/lang/String;

.field private connection:Lorg/jivesoftware/smack/XMPPConnection;

.field private connectionListener:Lorg/jivesoftware/smack/ConnectionListener;

.field private context:Landroid/content/Context;

.field private handler:Landroid/os/Handler;

.field private packetListener:Lorg/jivesoftware/smack/PacketListener;

.field private sharedPrefs:Landroid/content/SharedPreferences;

.field private toastHandler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 42
    const-class v0, Lorg/androidpn/client/XmppManager;

    invoke-static {v0}, Lorg/androidpn/client/LogUtil;->makeLogTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/androidpn/client/XmppManager;->LOGTAG:Ljava/lang/String;

    .line 44
    return-void
.end method

.method public constructor <init>(Lorg/androidpn/client/NotificationService;)V
    .locals 5
    .param p1, "notificationService"    # Lorg/androidpn/client/NotificationService;

    .prologue
    const/4 v3, 0x0

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    iput-object p1, p0, Lorg/androidpn/client/XmppManager;->context:Landroid/content/Context;

    .line 64
    iget-object v1, p0, Lorg/androidpn/client/XmppManager;->context:Landroid/content/Context;

    invoke-static {v1, p0}, Lcom/githang/android/apnbb/XmppConnectReceiver;->initInstance(Landroid/content/Context;Lorg/androidpn/client/XmppManager;)V

    .line 66
    iget-object v1, p0, Lorg/androidpn/client/XmppManager;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    iget-object v2, p0, Lorg/androidpn/client/XmppManager;->context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lorg/androidpn/client/XmppManager;->appName:Ljava/lang/String;

    .line 67
    iget-object v1, p0, Lorg/androidpn/client/XmppManager;->context:Landroid/content/Context;

    const-string v2, "client_preferences"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    iput-object v1, p0, Lorg/androidpn/client/XmppManager;->sharedPrefs:Landroid/content/SharedPreferences;

    .line 69
    new-instance v1, Lorg/androidpn/client/PersistentConnectionListener;

    invoke-direct {v1, p0}, Lorg/androidpn/client/PersistentConnectionListener;-><init>(Lorg/androidpn/client/XmppManager;)V

    iput-object v1, p0, Lorg/androidpn/client/XmppManager;->connectionListener:Lorg/jivesoftware/smack/ConnectionListener;

    .line 70
    sget-object v1, Lcom/githang/android/apnbb/NotifierConfig;->packetListener:Ljava/lang/String;

    if-nez v1, :cond_0

    .line 71
    sget-object v1, Lorg/androidpn/client/XmppManager;->LOGTAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "the packetListener is "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v3, Lcom/githang/android/apnbb/NotifierConfig;->packetListener:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    new-instance v1, Lorg/androidpn/client/NotificationPacketListener;

    invoke-direct {v1, p0}, Lorg/androidpn/client/NotificationPacketListener;-><init>(Lorg/androidpn/client/XmppManager;)V

    iput-object v1, p0, Lorg/androidpn/client/XmppManager;->packetListener:Lorg/jivesoftware/smack/PacketListener;

    .line 83
    :goto_0
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    iput-object v1, p0, Lorg/androidpn/client/XmppManager;->handler:Landroid/os/Handler;

    .line 84
    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Lorg/androidpn/client/XmppManager;->toastHandler:Landroid/os/Handler;

    .line 86
    return-void

    .line 75
    :cond_0
    :try_start_0
    sget-object v1, Lcom/githang/android/apnbb/NotifierConfig;->packetListener:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, Lorg/androidpn/client/XmppManager;

    aput-object v4, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/jivesoftware/smack/PacketListener;

    iput-object v1, p0, Lorg/androidpn/client/XmppManager;->packetListener:Lorg/jivesoftware/smack/PacketListener;

    .line 76
    sget-object v1, Lorg/androidpn/client/XmppManager;->LOGTAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "the packetListener is "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lorg/androidpn/client/XmppManager;->packetListener:Lorg/jivesoftware/smack/PacketListener;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 77
    :catch_0
    move-exception v0

    .line 78
    .local v0, "e":Ljava/lang/Exception;
    sget-object v1, Lorg/androidpn/client/XmppManager;->LOGTAG:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 79
    new-instance v1, Lorg/androidpn/client/NotificationPacketListener;

    invoke-direct {v1, p0}, Lorg/androidpn/client/NotificationPacketListener;-><init>(Lorg/androidpn/client/XmppManager;)V

    iput-object v1, p0, Lorg/androidpn/client/XmppManager;->packetListener:Lorg/jivesoftware/smack/PacketListener;

    goto :goto_0
.end method

.method static synthetic access$0(Lorg/androidpn/client/XmppManager;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lorg/androidpn/client/XmppManager;->context:Landroid/content/Context;

    return-object v0
.end method

.method private removeAccount()V
    .locals 2

    .prologue
    .line 169
    iget-object v1, p0, Lorg/androidpn/client/XmppManager;->sharedPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 170
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v1, "XMPP_USERNAME"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 171
    const-string v1, "XMPP_PASSWORD"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 172
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 173
    return-void
.end method

.method private submitLoginTask()V
    .locals 2

    .prologue
    .line 164
    sget-object v0, Lorg/androidpn/client/XmppManager;->LOGTAG:Ljava/lang/String;

    const-string v1, "submitLoginTask()..."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 165
    iget-object v0, p0, Lorg/androidpn/client/XmppManager;->context:Landroid/content/Context;

    const-string v1, "org.androidpn.client.ANDROIDPN_ACTION_LOGIN"

    invoke-static {v0, v1}, Lcom/githang/android/apnbb/BroadcastUtil;->sendBroadcast(Landroid/content/Context;Ljava/lang/String;)V

    .line 166
    return-void
.end method


# virtual methods
.method public connect()V
    .locals 2

    .prologue
    .line 103
    sget-object v0, Lorg/androidpn/client/XmppManager;->LOGTAG:Ljava/lang/String;

    const-string v1, "connect()..."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    invoke-direct {p0}, Lorg/androidpn/client/XmppManager;->submitLoginTask()V

    .line 105
    return-void
.end method

.method public disconnect()V
    .locals 2

    .prologue
    .line 108
    sget-object v0, Lorg/androidpn/client/XmppManager;->LOGTAG:Ljava/lang/String;

    const-string v1, "disconnect()..."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    iget-object v0, p0, Lorg/androidpn/client/XmppManager;->context:Landroid/content/Context;

    const-string v1, "org.androidpn.client.ANDROIDPN_STATUS_DISCONNECT"

    invoke-static {v0, v1}, Lcom/githang/android/apnbb/BroadcastUtil;->sendBroadcast(Landroid/content/Context;Ljava/lang/String;)V

    .line 111
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    invoke-static {}, Ljava/lang/Thread;->dumpStack()V

    .line 112
    invoke-virtual {p0}, Lorg/androidpn/client/XmppManager;->terminatePersistentConnection()V

    .line 113
    return-void
.end method

.method public getConnection()Lorg/jivesoftware/smack/XMPPConnection;
    .locals 1

    .prologue
    .line 124
    iget-object v0, p0, Lorg/androidpn/client/XmppManager;->connection:Lorg/jivesoftware/smack/XMPPConnection;

    return-object v0
.end method

.method public getConnectionListener()Lorg/jivesoftware/smack/ConnectionListener;
    .locals 1

    .prologue
    .line 132
    iget-object v0, p0, Lorg/androidpn/client/XmppManager;->connectionListener:Lorg/jivesoftware/smack/ConnectionListener;

    return-object v0
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 99
    iget-object v0, p0, Lorg/androidpn/client/XmppManager;->context:Landroid/content/Context;

    return-object v0
.end method

.method public getHandler()Landroid/os/Handler;
    .locals 1

    .prologue
    .line 140
    iget-object v0, p0, Lorg/androidpn/client/XmppManager;->handler:Landroid/os/Handler;

    return-object v0
.end method

.method public getPacketListener()Lorg/jivesoftware/smack/PacketListener;
    .locals 1

    .prologue
    .line 136
    iget-object v0, p0, Lorg/androidpn/client/XmppManager;->packetListener:Lorg/jivesoftware/smack/PacketListener;

    return-object v0
.end method

.method public isAuthenticated()Z
    .locals 1

    .prologue
    .line 153
    iget-object v0, p0, Lorg/androidpn/client/XmppManager;->connection:Lorg/jivesoftware/smack/XMPPConnection;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/androidpn/client/XmppManager;->connection:Lorg/jivesoftware/smack/XMPPConnection;

    invoke-virtual {v0}, Lorg/jivesoftware/smack/XMPPConnection;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 154
    iget-object v0, p0, Lorg/androidpn/client/XmppManager;->connection:Lorg/jivesoftware/smack/XMPPConnection;

    invoke-virtual {v0}, Lorg/jivesoftware/smack/XMPPConnection;->isAuthenticated()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 153
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isConnected()Z
    .locals 1

    .prologue
    .line 149
    iget-object v0, p0, Lorg/androidpn/client/XmppManager;->connection:Lorg/jivesoftware/smack/XMPPConnection;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/androidpn/client/XmppManager;->connection:Lorg/jivesoftware/smack/XMPPConnection;

    invoke-virtual {v0}, Lorg/jivesoftware/smack/XMPPConnection;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isRegistered()Z
    .locals 2

    .prologue
    .line 159
    iget-object v0, p0, Lorg/androidpn/client/XmppManager;->sharedPrefs:Landroid/content/SharedPreferences;

    const-string v1, "XMPP_USERNAME"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 160
    iget-object v0, p0, Lorg/androidpn/client/XmppManager;->sharedPrefs:Landroid/content/SharedPreferences;

    const-string v1, "XMPP_PASSWORD"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 159
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public reregisterAccount()V
    .locals 0

    .prologue
    .line 144
    invoke-direct {p0}, Lorg/androidpn/client/XmppManager;->removeAccount()V

    .line 145
    invoke-direct {p0}, Lorg/androidpn/client/XmppManager;->submitLoginTask()V

    .line 146
    return-void
.end method

.method public setConnection(Lorg/jivesoftware/smack/XMPPConnection;)V
    .locals 0
    .param p1, "connection"    # Lorg/jivesoftware/smack/XMPPConnection;

    .prologue
    .line 128
    iput-object p1, p0, Lorg/androidpn/client/XmppManager;->connection:Lorg/jivesoftware/smack/XMPPConnection;

    .line 129
    return-void
.end method

.method protected showToast(Ljava/lang/String;)V
    .locals 2
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 89
    iget-object v0, p0, Lorg/androidpn/client/XmppManager;->toastHandler:Landroid/os/Handler;

    new-instance v1, Lorg/androidpn/client/XmppManager$1;

    invoke-direct {v1, p0, p1}, Lorg/androidpn/client/XmppManager$1;-><init>(Lorg/androidpn/client/XmppManager;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 96
    return-void
.end method

.method public startReconnectionThread()V
    .locals 2

    .prologue
    .line 115
    sget-object v0, Lorg/androidpn/client/XmppManager;->LOGTAG:Ljava/lang/String;

    const-string v1, "startReconnectionThread()..."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    iget-object v0, p0, Lorg/androidpn/client/XmppManager;->context:Landroid/content/Context;

    const-string v1, "org.androidpn.client.ANDROIDPN_ACTION_RECONNECT"

    invoke-static {v0, v1}, Lcom/githang/android/apnbb/BroadcastUtil;->sendBroadcast(Landroid/content/Context;Ljava/lang/String;)V

    .line 117
    return-void
.end method

.method public terminatePersistentConnection()V
    .locals 2

    .prologue
    .line 119
    sget-object v0, Lorg/androidpn/client/XmppManager;->LOGTAG:Ljava/lang/String;

    const-string v1, "terminatePersistentConnection()..."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    iget-object v0, p0, Lorg/androidpn/client/XmppManager;->context:Landroid/content/Context;

    const-string v1, "org.androidpn.client.ANDORIDPN_ACTION_DISCONNECT"

    invoke-static {v0, v1}, Lcom/githang/android/apnbb/BroadcastUtil;->sendBroadcast(Landroid/content/Context;Ljava/lang/String;)V

    .line 121
    return-void
.end method
