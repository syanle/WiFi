.class Lcom/githang/android/apnbb/XmppConnectReceiver$LoginServer;
.super Ljava/lang/Object;
.source "XmppConnectReceiver.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/githang/android/apnbb/XmppConnectReceiver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LoginServer"
.end annotation


# static fields
.field private static final REGISTER_TIME_OUT:I = 0xea60


# instance fields
.field final synthetic this$0:Lcom/githang/android/apnbb/XmppConnectReceiver;


# direct methods
.method private constructor <init>(Lcom/githang/android/apnbb/XmppConnectReceiver;)V
    .locals 0

    .prologue
    .line 189
    iput-object p1, p0, Lcom/githang/android/apnbb/XmppConnectReceiver$LoginServer;->this$0:Lcom/githang/android/apnbb/XmppConnectReceiver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 190
    return-void
.end method

.method synthetic constructor <init>(Lcom/githang/android/apnbb/XmppConnectReceiver;Lcom/githang/android/apnbb/XmppConnectReceiver$LoginServer;)V
    .locals 0

    .prologue
    .line 189
    invoke-direct {p0, p1}, Lcom/githang/android/apnbb/XmppConnectReceiver$LoginServer;-><init>(Lcom/githang/android/apnbb/XmppConnectReceiver;)V

    return-void
.end method

.method private connect()Z
    .locals 9

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 229
    # getter for: Lcom/githang/android/apnbb/XmppConnectReceiver;->LOG_TAG:Ljava/lang/String;
    invoke-static {}, Lcom/githang/android/apnbb/XmppConnectReceiver;->access$4()Ljava/lang/String;

    move-result-object v5

    const-string v6, "ConnectTask.run()..."

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 230
    iget-object v5, p0, Lcom/githang/android/apnbb/XmppConnectReceiver$LoginServer;->this$0:Lcom/githang/android/apnbb/XmppConnectReceiver;

    # getter for: Lcom/githang/android/apnbb/XmppConnectReceiver;->xmppManager:Lorg/androidpn/client/XmppManager;
    invoke-static {v5}, Lcom/githang/android/apnbb/XmppConnectReceiver;->access$5(Lcom/githang/android/apnbb/XmppConnectReceiver;)Lorg/androidpn/client/XmppManager;

    move-result-object v5

    invoke-virtual {v5}, Lorg/androidpn/client/XmppManager;->isConnected()Z

    move-result v5

    if-nez v5, :cond_1

    .line 231
    iget-object v5, p0, Lcom/githang/android/apnbb/XmppConnectReceiver$LoginServer;->this$0:Lcom/githang/android/apnbb/XmppConnectReceiver;

    # getter for: Lcom/githang/android/apnbb/XmppConnectReceiver;->context:Landroid/content/Context;
    invoke-static {v5}, Lcom/githang/android/apnbb/XmppConnectReceiver;->access$0(Lcom/githang/android/apnbb/XmppConnectReceiver;)Landroid/content/Context;

    move-result-object v5

    const-string v6, "org.androidpn.client.ANDROIDPN_STATUS_CONNECTING"

    invoke-static {v5, v6}, Lcom/githang/android/apnbb/BroadcastUtil;->sendBroadcast(Landroid/content/Context;Ljava/lang/String;)V

    .line 233
    new-instance v0, Lorg/jivesoftware/smack/ConnectionConfiguration;

    .line 234
    iget-object v5, p0, Lcom/githang/android/apnbb/XmppConnectReceiver$LoginServer;->this$0:Lcom/githang/android/apnbb/XmppConnectReceiver;

    # getter for: Lcom/githang/android/apnbb/XmppConnectReceiver;->xmppHost:Ljava/lang/String;
    invoke-static {v5}, Lcom/githang/android/apnbb/XmppConnectReceiver;->access$6(Lcom/githang/android/apnbb/XmppConnectReceiver;)Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/githang/android/apnbb/XmppConnectReceiver$LoginServer;->this$0:Lcom/githang/android/apnbb/XmppConnectReceiver;

    # getter for: Lcom/githang/android/apnbb/XmppConnectReceiver;->xmppPort:I
    invoke-static {v6}, Lcom/githang/android/apnbb/XmppConnectReceiver;->access$7(Lcom/githang/android/apnbb/XmppConnectReceiver;)I

    move-result v6

    .line 233
    invoke-direct {v0, v5, v6}, Lorg/jivesoftware/smack/ConnectionConfiguration;-><init>(Ljava/lang/String;I)V

    .line 236
    .local v0, "connConfig":Lorg/jivesoftware/smack/ConnectionConfiguration;
    sget-object v5, Lorg/jivesoftware/smack/ConnectionConfiguration$SecurityMode;->required:Lorg/jivesoftware/smack/ConnectionConfiguration$SecurityMode;

    invoke-virtual {v0, v5}, Lorg/jivesoftware/smack/ConnectionConfiguration;->setSecurityMode(Lorg/jivesoftware/smack/ConnectionConfiguration$SecurityMode;)V

    .line 237
    invoke-virtual {v0, v4}, Lorg/jivesoftware/smack/ConnectionConfiguration;->setSASLAuthenticationEnabled(Z)V

    .line 238
    invoke-virtual {v0, v4}, Lorg/jivesoftware/smack/ConnectionConfiguration;->setCompressionEnabled(Z)V

    .line 240
    new-instance v1, Lorg/jivesoftware/smack/XMPPConnection;

    invoke-direct {v1, v0}, Lorg/jivesoftware/smack/XMPPConnection;-><init>(Lorg/jivesoftware/smack/ConnectionConfiguration;)V

    .line 241
    .local v1, "connection":Lorg/jivesoftware/smack/XMPPConnection;
    iget-object v5, p0, Lcom/githang/android/apnbb/XmppConnectReceiver$LoginServer;->this$0:Lcom/githang/android/apnbb/XmppConnectReceiver;

    # getter for: Lcom/githang/android/apnbb/XmppConnectReceiver;->xmppManager:Lorg/androidpn/client/XmppManager;
    invoke-static {v5}, Lcom/githang/android/apnbb/XmppConnectReceiver;->access$5(Lcom/githang/android/apnbb/XmppConnectReceiver;)Lorg/androidpn/client/XmppManager;

    move-result-object v5

    invoke-virtual {v5, v1}, Lorg/androidpn/client/XmppManager;->setConnection(Lorg/jivesoftware/smack/XMPPConnection;)V

    .line 245
    :try_start_0
    invoke-virtual {v1}, Lorg/jivesoftware/smack/XMPPConnection;->connect()V

    .line 246
    iget-object v5, p0, Lcom/githang/android/apnbb/XmppConnectReceiver$LoginServer;->this$0:Lcom/githang/android/apnbb/XmppConnectReceiver;

    # getter for: Lcom/githang/android/apnbb/XmppConnectReceiver;->context:Landroid/content/Context;
    invoke-static {v5}, Lcom/githang/android/apnbb/XmppConnectReceiver;->access$0(Lcom/githang/android/apnbb/XmppConnectReceiver;)Landroid/content/Context;

    move-result-object v5

    const-string v6, "org.androidpn.client.ANDROIDPN_STATUS_CONNECTED"

    invoke-static {v5, v6}, Lcom/githang/android/apnbb/BroadcastUtil;->sendBroadcast(Landroid/content/Context;Ljava/lang/String;)V

    .line 247
    # getter for: Lcom/githang/android/apnbb/XmppConnectReceiver;->LOG_TAG:Ljava/lang/String;
    invoke-static {}, Lcom/githang/android/apnbb/XmppConnectReceiver;->access$4()Ljava/lang/String;

    move-result-object v5

    const-string v6, "XMPP connected successfully"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 248
    sget-object v5, Lcom/githang/android/apnbb/NotifierConfig;->iqProvider:Ljava/lang/String;

    if-nez v5, :cond_0

    .line 249
    invoke-static {}, Lorg/jivesoftware/smack/provider/ProviderManager;->getInstance()Lorg/jivesoftware/smack/provider/ProviderManager;

    move-result-object v5

    const-string v6, "notification"

    .line 250
    const-string v7, "androidpn:iq:notification"

    .line 251
    new-instance v8, Lorg/androidpn/client/NotificationIQProvider;

    invoke-direct {v8}, Lorg/androidpn/client/NotificationIQProvider;-><init>()V

    .line 249
    invoke-virtual {v5, v6, v7, v8}, Lorg/jivesoftware/smack/provider/ProviderManager;->addIQProvider(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catch Lorg/jivesoftware/smack/XMPPException; {:try_start_0 .. :try_end_0} :catch_1

    .line 272
    .end local v0    # "connConfig":Lorg/jivesoftware/smack/ConnectionConfiguration;
    .end local v1    # "connection":Lorg/jivesoftware/smack/XMPPConnection;
    :goto_0
    return v3

    .line 254
    .restart local v0    # "connConfig":Lorg/jivesoftware/smack/ConnectionConfiguration;
    .restart local v1    # "connection":Lorg/jivesoftware/smack/XMPPConnection;
    :cond_0
    :try_start_1
    invoke-static {}, Lorg/jivesoftware/smack/provider/ProviderManager;->getInstance()Lorg/jivesoftware/smack/provider/ProviderManager;

    move-result-object v5

    const-string v6, "notification"

    .line 255
    const-string v7, "androidpn:iq:notification"

    .line 256
    sget-object v8, Lcom/githang/android/apnbb/NotifierConfig;->iqProvider:Ljava/lang/String;

    invoke-static {v8}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v8

    .line 254
    invoke-virtual {v5, v6, v7, v8}, Lorg/jivesoftware/smack/provider/ProviderManager;->addIQProvider(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lorg/jivesoftware/smack/XMPPException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 257
    :catch_0
    move-exception v2

    .line 258
    .local v2, "e":Ljava/lang/Exception;
    :try_start_2
    # getter for: Lcom/githang/android/apnbb/XmppConnectReceiver;->LOG_TAG:Ljava/lang/String;
    invoke-static {}, Lcom/githang/android/apnbb/XmppConnectReceiver;->access$4()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 259
    invoke-static {}, Lorg/jivesoftware/smack/provider/ProviderManager;->getInstance()Lorg/jivesoftware/smack/provider/ProviderManager;

    move-result-object v5

    const-string v6, "notification"

    .line 260
    const-string v7, "androidpn:iq:notification"

    .line 261
    new-instance v8, Lorg/androidpn/client/NotificationIQProvider;

    invoke-direct {v8}, Lorg/androidpn/client/NotificationIQProvider;-><init>()V

    .line 259
    invoke-virtual {v5, v6, v7, v8}, Lorg/jivesoftware/smack/provider/ProviderManager;->addIQProvider(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_2
    .catch Lorg/jivesoftware/smack/XMPPException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 265
    .end local v2    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v2

    .line 266
    .local v2, "e":Lorg/jivesoftware/smack/XMPPException;
    # getter for: Lcom/githang/android/apnbb/XmppConnectReceiver;->LOG_TAG:Ljava/lang/String;
    invoke-static {}, Lcom/githang/android/apnbb/XmppConnectReceiver;->access$4()Ljava/lang/String;

    move-result-object v3

    const-string v5, "XMPP connection failed"

    invoke-static {v3, v5, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v3, v4

    .line 267
    goto :goto_0

    .line 270
    .end local v0    # "connConfig":Lorg/jivesoftware/smack/ConnectionConfiguration;
    .end local v1    # "connection":Lorg/jivesoftware/smack/XMPPConnection;
    .end local v2    # "e":Lorg/jivesoftware/smack/XMPPException;
    :cond_1
    # getter for: Lcom/githang/android/apnbb/XmppConnectReceiver;->LOG_TAG:Ljava/lang/String;
    invoke-static {}, Lcom/githang/android/apnbb/XmppConnectReceiver;->access$4()Ljava/lang/String;

    move-result-object v4

    const-string v5, "XMPP connected already"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 271
    iget-object v4, p0, Lcom/githang/android/apnbb/XmppConnectReceiver$LoginServer;->this$0:Lcom/githang/android/apnbb/XmppConnectReceiver;

    # getter for: Lcom/githang/android/apnbb/XmppConnectReceiver;->context:Landroid/content/Context;
    invoke-static {v4}, Lcom/githang/android/apnbb/XmppConnectReceiver;->access$0(Lcom/githang/android/apnbb/XmppConnectReceiver;)Landroid/content/Context;

    move-result-object v4

    const-string v5, "org.androidpn.client.ANDROIDPN_STATUS_CONNECTED"

    invoke-static {v4, v5}, Lcom/githang/android/apnbb/BroadcastUtil;->sendBroadcast(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public login(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 9
    .param p1, "user"    # Ljava/lang/String;
    .param p2, "pass"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 318
    # getter for: Lcom/githang/android/apnbb/XmppConnectReceiver;->LOG_TAG:Ljava/lang/String;
    invoke-static {}, Lcom/githang/android/apnbb/XmppConnectReceiver;->access$4()Ljava/lang/String;

    move-result-object v7

    const-string v8, "LoginTask.run()..."

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 320
    iget-object v7, p0, Lcom/githang/android/apnbb/XmppConnectReceiver$LoginServer;->this$0:Lcom/githang/android/apnbb/XmppConnectReceiver;

    # getter for: Lcom/githang/android/apnbb/XmppConnectReceiver;->xmppManager:Lorg/androidpn/client/XmppManager;
    invoke-static {v7}, Lcom/githang/android/apnbb/XmppConnectReceiver;->access$5(Lcom/githang/android/apnbb/XmppConnectReceiver;)Lorg/androidpn/client/XmppManager;

    move-result-object v7

    invoke-virtual {v7}, Lorg/androidpn/client/XmppManager;->isAuthenticated()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 321
    # getter for: Lcom/githang/android/apnbb/XmppConnectReceiver;->LOG_TAG:Ljava/lang/String;
    invoke-static {}, Lcom/githang/android/apnbb/XmppConnectReceiver;->access$4()Ljava/lang/String;

    move-result-object v6

    const-string v7, "Logged in already"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 370
    :goto_0
    return v5

    .line 325
    :cond_0
    iget-object v7, p0, Lcom/githang/android/apnbb/XmppConnectReceiver$LoginServer;->this$0:Lcom/githang/android/apnbb/XmppConnectReceiver;

    # getter for: Lcom/githang/android/apnbb/XmppConnectReceiver;->context:Landroid/content/Context;
    invoke-static {v7}, Lcom/githang/android/apnbb/XmppConnectReceiver;->access$0(Lcom/githang/android/apnbb/XmppConnectReceiver;)Landroid/content/Context;

    move-result-object v7

    const-string v8, "org.androdipn.client.ANDROIDPN_STATUS_LOGINING"

    invoke-static {v7, v8}, Lcom/githang/android/apnbb/BroadcastUtil;->sendBroadcast(Landroid/content/Context;Ljava/lang/String;)V

    .line 327
    :try_start_0
    iget-object v7, p0, Lcom/githang/android/apnbb/XmppConnectReceiver$LoginServer;->this$0:Lcom/githang/android/apnbb/XmppConnectReceiver;

    # getter for: Lcom/githang/android/apnbb/XmppConnectReceiver;->xmppManager:Lorg/androidpn/client/XmppManager;
    invoke-static {v7}, Lcom/githang/android/apnbb/XmppConnectReceiver;->access$5(Lcom/githang/android/apnbb/XmppConnectReceiver;)Lorg/androidpn/client/XmppManager;

    move-result-object v7

    invoke-virtual {v7}, Lorg/androidpn/client/XmppManager;->getConnection()Lorg/jivesoftware/smack/XMPPConnection;

    move-result-object v7

    .line 329
    const-string v8, "AndroidpnClient"

    .line 327
    invoke-virtual {v7, p1, p2, v8}, Lorg/jivesoftware/smack/XMPPConnection;->login(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 330
    # getter for: Lcom/githang/android/apnbb/XmppConnectReceiver;->LOG_TAG:Ljava/lang/String;
    invoke-static {}, Lcom/githang/android/apnbb/XmppConnectReceiver;->access$4()Ljava/lang/String;

    move-result-object v7

    const-string v8, "Logged in successfully"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 331
    iget-object v7, p0, Lcom/githang/android/apnbb/XmppConnectReceiver$LoginServer;->this$0:Lcom/githang/android/apnbb/XmppConnectReceiver;

    # getter for: Lcom/githang/android/apnbb/XmppConnectReceiver;->context:Landroid/content/Context;
    invoke-static {v7}, Lcom/githang/android/apnbb/XmppConnectReceiver;->access$0(Lcom/githang/android/apnbb/XmppConnectReceiver;)Landroid/content/Context;

    move-result-object v7

    const-string v8, "org.androidpn.client.ANDROIDPN_STATUS_LOGIN_SUCCESS"

    invoke-static {v7, v8}, Lcom/githang/android/apnbb/BroadcastUtil;->sendBroadcast(Landroid/content/Context;Ljava/lang/String;)V

    .line 334
    iget-object v7, p0, Lcom/githang/android/apnbb/XmppConnectReceiver$LoginServer;->this$0:Lcom/githang/android/apnbb/XmppConnectReceiver;

    # getter for: Lcom/githang/android/apnbb/XmppConnectReceiver;->xmppManager:Lorg/androidpn/client/XmppManager;
    invoke-static {v7}, Lcom/githang/android/apnbb/XmppConnectReceiver;->access$5(Lcom/githang/android/apnbb/XmppConnectReceiver;)Lorg/androidpn/client/XmppManager;

    move-result-object v7

    invoke-virtual {v7}, Lorg/androidpn/client/XmppManager;->getConnectionListener()Lorg/jivesoftware/smack/ConnectionListener;

    move-result-object v7

    if-eqz v7, :cond_1

    .line 335
    iget-object v7, p0, Lcom/githang/android/apnbb/XmppConnectReceiver$LoginServer;->this$0:Lcom/githang/android/apnbb/XmppConnectReceiver;

    # getter for: Lcom/githang/android/apnbb/XmppConnectReceiver;->xmppManager:Lorg/androidpn/client/XmppManager;
    invoke-static {v7}, Lcom/githang/android/apnbb/XmppConnectReceiver;->access$5(Lcom/githang/android/apnbb/XmppConnectReceiver;)Lorg/androidpn/client/XmppManager;

    move-result-object v7

    invoke-virtual {v7}, Lorg/androidpn/client/XmppManager;->getConnection()Lorg/jivesoftware/smack/XMPPConnection;

    move-result-object v7

    .line 336
    iget-object v8, p0, Lcom/githang/android/apnbb/XmppConnectReceiver$LoginServer;->this$0:Lcom/githang/android/apnbb/XmppConnectReceiver;

    # getter for: Lcom/githang/android/apnbb/XmppConnectReceiver;->xmppManager:Lorg/androidpn/client/XmppManager;
    invoke-static {v8}, Lcom/githang/android/apnbb/XmppConnectReceiver;->access$5(Lcom/githang/android/apnbb/XmppConnectReceiver;)Lorg/androidpn/client/XmppManager;

    move-result-object v8

    invoke-virtual {v8}, Lorg/androidpn/client/XmppManager;->getConnectionListener()Lorg/jivesoftware/smack/ConnectionListener;

    move-result-object v8

    .line 335
    invoke-virtual {v7, v8}, Lorg/jivesoftware/smack/XMPPConnection;->addConnectionListener(Lorg/jivesoftware/smack/ConnectionListener;)V

    .line 338
    :cond_1
    const/4 v3, 0x0

    .line 339
    .local v3, "packetFilter":Lorg/jivesoftware/smack/filter/PacketFilter;
    sget-object v7, Lcom/githang/android/apnbb/NotifierConfig;->iq:Ljava/lang/String;

    if-nez v7, :cond_3

    .line 341
    new-instance v3, Lorg/jivesoftware/smack/filter/PacketTypeFilter;

    .line 342
    .end local v3    # "packetFilter":Lorg/jivesoftware/smack/filter/PacketFilter;
    const-class v7, Lorg/androidpn/client/NotificationIQ;

    .line 341
    invoke-direct {v3, v7}, Lorg/jivesoftware/smack/filter/PacketTypeFilter;-><init>(Ljava/lang/Class;)V

    .line 347
    .restart local v3    # "packetFilter":Lorg/jivesoftware/smack/filter/PacketFilter;
    :goto_1
    iget-object v7, p0, Lcom/githang/android/apnbb/XmppConnectReceiver$LoginServer;->this$0:Lcom/githang/android/apnbb/XmppConnectReceiver;

    # getter for: Lcom/githang/android/apnbb/XmppConnectReceiver;->xmppManager:Lorg/androidpn/client/XmppManager;
    invoke-static {v7}, Lcom/githang/android/apnbb/XmppConnectReceiver;->access$5(Lcom/githang/android/apnbb/XmppConnectReceiver;)Lorg/androidpn/client/XmppManager;

    move-result-object v7

    .line 348
    invoke-virtual {v7}, Lorg/androidpn/client/XmppManager;->getPacketListener()Lorg/jivesoftware/smack/PacketListener;

    move-result-object v4

    .line 349
    .local v4, "packetListener":Lorg/jivesoftware/smack/PacketListener;
    iget-object v7, p0, Lcom/githang/android/apnbb/XmppConnectReceiver$LoginServer;->this$0:Lcom/githang/android/apnbb/XmppConnectReceiver;

    # getter for: Lcom/githang/android/apnbb/XmppConnectReceiver;->xmppManager:Lorg/androidpn/client/XmppManager;
    invoke-static {v7}, Lcom/githang/android/apnbb/XmppConnectReceiver;->access$5(Lcom/githang/android/apnbb/XmppConnectReceiver;)Lorg/androidpn/client/XmppManager;

    move-result-object v7

    invoke-virtual {v7}, Lorg/androidpn/client/XmppManager;->getConnection()Lorg/jivesoftware/smack/XMPPConnection;

    move-result-object v7

    invoke-virtual {v7, v4, v3}, Lorg/jivesoftware/smack/XMPPConnection;->addPacketListener(Lorg/jivesoftware/smack/PacketListener;Lorg/jivesoftware/smack/filter/PacketFilter;)V

    .line 350
    iget-object v7, p0, Lcom/githang/android/apnbb/XmppConnectReceiver$LoginServer;->this$0:Lcom/githang/android/apnbb/XmppConnectReceiver;

    # getter for: Lcom/githang/android/apnbb/XmppConnectReceiver;->xmppManager:Lorg/androidpn/client/XmppManager;
    invoke-static {v7}, Lcom/githang/android/apnbb/XmppConnectReceiver;->access$5(Lcom/githang/android/apnbb/XmppConnectReceiver;)Lorg/androidpn/client/XmppManager;

    move-result-object v7

    invoke-virtual {v7}, Lorg/androidpn/client/XmppManager;->getConnection()Lorg/jivesoftware/smack/XMPPConnection;

    move-result-object v7

    iget-object v8, p0, Lcom/githang/android/apnbb/XmppConnectReceiver$LoginServer;->this$0:Lcom/githang/android/apnbb/XmppConnectReceiver;

    # getter for: Lcom/githang/android/apnbb/XmppConnectReceiver;->xmppManager:Lorg/androidpn/client/XmppManager;
    invoke-static {v8}, Lcom/githang/android/apnbb/XmppConnectReceiver;->access$5(Lcom/githang/android/apnbb/XmppConnectReceiver;)Lorg/androidpn/client/XmppManager;

    move-result-object v8

    invoke-virtual {v7, v8}, Lorg/jivesoftware/smack/XMPPConnection;->startKeepAliveThread(Lorg/androidpn/client/XmppManager;)V
    :try_end_0
    .catch Lorg/jivesoftware/smack/XMPPException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto/16 :goto_0

    .line 353
    .end local v3    # "packetFilter":Lorg/jivesoftware/smack/filter/PacketFilter;
    .end local v4    # "packetListener":Lorg/jivesoftware/smack/PacketListener;
    :catch_0
    move-exception v1

    .line 354
    .local v1, "e":Lorg/jivesoftware/smack/XMPPException;
    iget-object v5, p0, Lcom/githang/android/apnbb/XmppConnectReceiver$LoginServer;->this$0:Lcom/githang/android/apnbb/XmppConnectReceiver;

    # getter for: Lcom/githang/android/apnbb/XmppConnectReceiver;->context:Landroid/content/Context;
    invoke-static {v5}, Lcom/githang/android/apnbb/XmppConnectReceiver;->access$0(Lcom/githang/android/apnbb/XmppConnectReceiver;)Landroid/content/Context;

    move-result-object v5

    const-string v7, "org.androidpn.client.ANDROIDPN_STATUS_LOGIN_FAIL"

    invoke-static {v5, v7}, Lcom/githang/android/apnbb/BroadcastUtil;->sendBroadcast(Landroid/content/Context;Ljava/lang/String;)V

    .line 355
    # getter for: Lcom/githang/android/apnbb/XmppConnectReceiver;->LOG_TAG:Ljava/lang/String;
    invoke-static {}, Lcom/githang/android/apnbb/XmppConnectReceiver;->access$4()Ljava/lang/String;

    move-result-object v5

    const-string v7, "LoginTask.run()... xmpp error"

    invoke-static {v5, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 356
    # getter for: Lcom/githang/android/apnbb/XmppConnectReceiver;->LOG_TAG:Ljava/lang/String;
    invoke-static {}, Lcom/githang/android/apnbb/XmppConnectReceiver;->access$4()Ljava/lang/String;

    move-result-object v5

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "Failed to login to xmpp server. Caused by: "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 357
    invoke-virtual {v1}, Lorg/jivesoftware/smack/XMPPException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 356
    invoke-static {v5, v7, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 358
    const-string v0, "401"

    .line 359
    .local v0, "INVALID_CREDENTIALS_ERROR_CODE":Ljava/lang/String;
    invoke-virtual {v1}, Lorg/jivesoftware/smack/XMPPException;->getMessage()Ljava/lang/String;

    move-result-object v2

    .line 360
    .local v2, "errorMessage":Ljava/lang/String;
    if-eqz v2, :cond_2

    .line 361
    invoke-virtual {v2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 362
    iget-object v5, p0, Lcom/githang/android/apnbb/XmppConnectReceiver$LoginServer;->this$0:Lcom/githang/android/apnbb/XmppConnectReceiver;

    # getter for: Lcom/githang/android/apnbb/XmppConnectReceiver;->xmppManager:Lorg/androidpn/client/XmppManager;
    invoke-static {v5}, Lcom/githang/android/apnbb/XmppConnectReceiver;->access$5(Lcom/githang/android/apnbb/XmppConnectReceiver;)Lorg/androidpn/client/XmppManager;

    move-result-object v5

    invoke-virtual {v5}, Lorg/androidpn/client/XmppManager;->reregisterAccount()V

    :cond_2
    move v5, v6

    .line 364
    goto/16 :goto_0

    .line 344
    .end local v0    # "INVALID_CREDENTIALS_ERROR_CODE":Ljava/lang/String;
    .end local v1    # "e":Lorg/jivesoftware/smack/XMPPException;
    .end local v2    # "errorMessage":Ljava/lang/String;
    .restart local v3    # "packetFilter":Lorg/jivesoftware/smack/filter/PacketFilter;
    :cond_3
    :try_start_1
    new-instance v3, Lorg/jivesoftware/smack/filter/PacketTypeFilter;

    .end local v3    # "packetFilter":Lorg/jivesoftware/smack/filter/PacketFilter;
    sget-object v7, Lcom/githang/android/apnbb/NotifierConfig;->iq:Ljava/lang/String;

    invoke-static {v7}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v7

    invoke-direct {v3, v7}, Lorg/jivesoftware/smack/filter/PacketTypeFilter;-><init>(Ljava/lang/Class;)V
    :try_end_1
    .catch Lorg/jivesoftware/smack/XMPPException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .restart local v3    # "packetFilter":Lorg/jivesoftware/smack/filter/PacketFilter;
    goto :goto_1

    .line 365
    .end local v3    # "packetFilter":Lorg/jivesoftware/smack/filter/PacketFilter;
    :catch_1
    move-exception v1

    .line 366
    .local v1, "e":Ljava/lang/Exception;
    iget-object v5, p0, Lcom/githang/android/apnbb/XmppConnectReceiver$LoginServer;->this$0:Lcom/githang/android/apnbb/XmppConnectReceiver;

    # getter for: Lcom/githang/android/apnbb/XmppConnectReceiver;->context:Landroid/content/Context;
    invoke-static {v5}, Lcom/githang/android/apnbb/XmppConnectReceiver;->access$0(Lcom/githang/android/apnbb/XmppConnectReceiver;)Landroid/content/Context;

    move-result-object v5

    const-string v7, "org.androidpn.client.ANDROIDPN_STATUS_LOGIN_FAIL"

    invoke-static {v5, v7}, Lcom/githang/android/apnbb/BroadcastUtil;->sendBroadcast(Landroid/content/Context;Ljava/lang/String;)V

    .line 367
    # getter for: Lcom/githang/android/apnbb/XmppConnectReceiver;->LOG_TAG:Ljava/lang/String;
    invoke-static {}, Lcom/githang/android/apnbb/XmppConnectReceiver;->access$4()Ljava/lang/String;

    move-result-object v5

    const-string v7, "LoginTask.run()... other error"

    invoke-static {v5, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 368
    # getter for: Lcom/githang/android/apnbb/XmppConnectReceiver;->LOG_TAG:Ljava/lang/String;
    invoke-static {}, Lcom/githang/android/apnbb/XmppConnectReceiver;->access$4()Ljava/lang/String;

    move-result-object v5

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "Failed to login to xmpp server. Caused by: "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 369
    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 368
    invoke-static {v5, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v5, v6

    .line 370
    goto/16 :goto_0
.end method

.method public register(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 9
    .param p1, "user"    # Ljava/lang/String;
    .param p2, "pass"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 277
    # getter for: Lcom/githang/android/apnbb/XmppConnectReceiver;->LOG_TAG:Ljava/lang/String;
    invoke-static {}, Lcom/githang/android/apnbb/XmppConnectReceiver;->access$4()Ljava/lang/String;

    move-result-object v6

    const-string v7, "RegisterTask.run()..."

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 279
    iget-object v6, p0, Lcom/githang/android/apnbb/XmppConnectReceiver$LoginServer;->this$0:Lcom/githang/android/apnbb/XmppConnectReceiver;

    # getter for: Lcom/githang/android/apnbb/XmppConnectReceiver;->xmppManager:Lorg/androidpn/client/XmppManager;
    invoke-static {v6}, Lcom/githang/android/apnbb/XmppConnectReceiver;->access$5(Lcom/githang/android/apnbb/XmppConnectReceiver;)Lorg/androidpn/client/XmppManager;

    move-result-object v6

    invoke-virtual {v6}, Lorg/androidpn/client/XmppManager;->isRegistered()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 280
    # getter for: Lcom/githang/android/apnbb/XmppConnectReceiver;->LOG_TAG:Ljava/lang/String;
    invoke-static {}, Lcom/githang/android/apnbb/XmppConnectReceiver;->access$4()Ljava/lang/String;

    move-result-object v5

    const-string v6, "Account registered already"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 313
    :cond_0
    :goto_0
    return v4

    .line 284
    :cond_1
    new-instance v2, Lorg/jivesoftware/smack/packet/Registration;

    invoke-direct {v2}, Lorg/jivesoftware/smack/packet/Registration;-><init>()V

    .line 286
    .local v2, "registration":Lorg/jivesoftware/smack/packet/Registration;
    new-instance v1, Lorg/jivesoftware/smack/filter/AndFilter;

    const/4 v6, 0x2

    new-array v6, v6, [Lorg/jivesoftware/smack/filter/PacketFilter;

    new-instance v7, Lorg/jivesoftware/smack/filter/PacketIDFilter;

    .line 287
    invoke-virtual {v2}, Lorg/jivesoftware/smack/packet/Registration;->getPacketID()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Lorg/jivesoftware/smack/filter/PacketIDFilter;-><init>(Ljava/lang/String;)V

    aput-object v7, v6, v5

    new-instance v7, Lorg/jivesoftware/smack/filter/PacketTypeFilter;

    .line 288
    const-class v8, Lorg/jivesoftware/smack/packet/IQ;

    invoke-direct {v7, v8}, Lorg/jivesoftware/smack/filter/PacketTypeFilter;-><init>(Ljava/lang/Class;)V

    .line 286
    aput-object v7, v6, v4

    invoke-direct {v1, v6}, Lorg/jivesoftware/smack/filter/AndFilter;-><init>([Lorg/jivesoftware/smack/filter/PacketFilter;)V

    .line 290
    .local v1, "packetFilter":Lorg/jivesoftware/smack/filter/PacketFilter;
    iget-object v6, p0, Lcom/githang/android/apnbb/XmppConnectReceiver$LoginServer;->this$0:Lcom/githang/android/apnbb/XmppConnectReceiver;

    # getter for: Lcom/githang/android/apnbb/XmppConnectReceiver;->xmppManager:Lorg/androidpn/client/XmppManager;
    invoke-static {v6}, Lcom/githang/android/apnbb/XmppConnectReceiver;->access$5(Lcom/githang/android/apnbb/XmppConnectReceiver;)Lorg/androidpn/client/XmppManager;

    move-result-object v6

    invoke-virtual {v6}, Lorg/androidpn/client/XmppManager;->getConnection()Lorg/jivesoftware/smack/XMPPConnection;

    move-result-object v6

    invoke-virtual {v6, v1}, Lorg/jivesoftware/smack/XMPPConnection;->createPacketCollector(Lorg/jivesoftware/smack/filter/PacketFilter;)Lorg/jivesoftware/smack/PacketCollector;

    move-result-object v0

    .line 291
    .local v0, "collector":Lorg/jivesoftware/smack/PacketCollector;
    sget-object v6, Lorg/jivesoftware/smack/packet/IQ$Type;->SET:Lorg/jivesoftware/smack/packet/IQ$Type;

    invoke-virtual {v2, v6}, Lorg/jivesoftware/smack/packet/Registration;->setType(Lorg/jivesoftware/smack/packet/IQ$Type;)V

    .line 292
    const-string v6, "username"

    invoke-virtual {v2, v6, p1}, Lorg/jivesoftware/smack/packet/Registration;->addAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 293
    const-string v6, "password"

    invoke-virtual {v2, v6, p2}, Lorg/jivesoftware/smack/packet/Registration;->addAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 294
    iget-object v6, p0, Lcom/githang/android/apnbb/XmppConnectReceiver$LoginServer;->this$0:Lcom/githang/android/apnbb/XmppConnectReceiver;

    # getter for: Lcom/githang/android/apnbb/XmppConnectReceiver;->xmppManager:Lorg/androidpn/client/XmppManager;
    invoke-static {v6}, Lcom/githang/android/apnbb/XmppConnectReceiver;->access$5(Lcom/githang/android/apnbb/XmppConnectReceiver;)Lorg/androidpn/client/XmppManager;

    move-result-object v6

    invoke-virtual {v6}, Lorg/androidpn/client/XmppManager;->getConnection()Lorg/jivesoftware/smack/XMPPConnection;

    move-result-object v6

    invoke-virtual {v6}, Lorg/jivesoftware/smack/XMPPConnection;->isConnected()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 295
    iget-object v6, p0, Lcom/githang/android/apnbb/XmppConnectReceiver$LoginServer;->this$0:Lcom/githang/android/apnbb/XmppConnectReceiver;

    # getter for: Lcom/githang/android/apnbb/XmppConnectReceiver;->xmppManager:Lorg/androidpn/client/XmppManager;
    invoke-static {v6}, Lcom/githang/android/apnbb/XmppConnectReceiver;->access$5(Lcom/githang/android/apnbb/XmppConnectReceiver;)Lorg/androidpn/client/XmppManager;

    move-result-object v6

    invoke-virtual {v6}, Lorg/androidpn/client/XmppManager;->getConnection()Lorg/jivesoftware/smack/XMPPConnection;

    move-result-object v6

    invoke-virtual {v6, v2}, Lorg/jivesoftware/smack/XMPPConnection;->sendPacket(Lorg/jivesoftware/smack/packet/Packet;)V

    .line 296
    const-wide/32 v6, 0xea60

    invoke-virtual {v0, v6, v7}, Lorg/jivesoftware/smack/PacketCollector;->nextResult(J)Lorg/jivesoftware/smack/packet/Packet;

    move-result-object v3

    check-cast v3, Lorg/jivesoftware/smack/packet/IQ;

    .line 297
    .local v3, "result":Lorg/jivesoftware/smack/packet/IQ;
    invoke-virtual {v0}, Lorg/jivesoftware/smack/PacketCollector;->cancel()V

    .line 298
    if-nez v3, :cond_2

    .line 299
    # getter for: Lcom/githang/android/apnbb/XmppConnectReceiver;->LOG_TAG:Ljava/lang/String;
    invoke-static {}, Lcom/githang/android/apnbb/XmppConnectReceiver;->access$4()Ljava/lang/String;

    move-result-object v4

    const-string v6, "The server didn\'t return result after 60 seconds."

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v4, v5

    .line 300
    goto :goto_0

    .line 301
    :cond_2
    invoke-virtual {v3}, Lorg/jivesoftware/smack/packet/IQ;->getType()Lorg/jivesoftware/smack/packet/IQ$Type;

    move-result-object v6

    sget-object v7, Lorg/jivesoftware/smack/packet/IQ$Type;->ERROR:Lorg/jivesoftware/smack/packet/IQ$Type;

    if-ne v6, v7, :cond_3

    .line 302
    invoke-virtual {v3}, Lorg/jivesoftware/smack/packet/IQ;->getError()Lorg/jivesoftware/smack/packet/XMPPError;

    move-result-object v6

    invoke-virtual {v6}, Lorg/jivesoftware/smack/packet/XMPPError;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "409"

    invoke-virtual {v6, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_0

    move v4, v5

    .line 305
    goto/16 :goto_0

    .line 307
    :cond_3
    invoke-virtual {v3}, Lorg/jivesoftware/smack/packet/IQ;->getType()Lorg/jivesoftware/smack/packet/IQ$Type;

    move-result-object v6

    sget-object v7, Lorg/jivesoftware/smack/packet/IQ$Type;->RESULT:Lorg/jivesoftware/smack/packet/IQ$Type;

    if-eq v6, v7, :cond_0

    move v4, v5

    .line 310
    goto/16 :goto_0

    .line 312
    .end local v3    # "result":Lorg/jivesoftware/smack/packet/IQ;
    :cond_4
    # getter for: Lcom/githang/android/apnbb/XmppConnectReceiver;->LOG_TAG:Ljava/lang/String;
    invoke-static {}, Lcom/githang/android/apnbb/XmppConnectReceiver;->access$4()Ljava/lang/String;

    move-result-object v4

    const-string v6, "connection is not connected"

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v4, v5

    .line 313
    goto/16 :goto_0
.end method

.method public run()V
    .locals 11

    .prologue
    const/4 v10, 0x0

    .line 193
    iget-object v7, p0, Lcom/githang/android/apnbb/XmppConnectReceiver$LoginServer;->this$0:Lcom/githang/android/apnbb/XmppConnectReceiver;

    # getter for: Lcom/githang/android/apnbb/XmppConnectReceiver;->context:Landroid/content/Context;
    invoke-static {v7}, Lcom/githang/android/apnbb/XmppConnectReceiver;->access$0(Lcom/githang/android/apnbb/XmppConnectReceiver;)Landroid/content/Context;

    move-result-object v7

    invoke-static {v7}, Lcom/githang/android/apnbb/UUIDUtil;->getID(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    .line 195
    .local v6, "uuid":Ljava/lang/String;
    move-object v3, v6

    .line 196
    .local v3, "newUsername":Ljava/lang/String;
    move-object v2, v6

    .line 197
    .local v2, "newPassword":Ljava/lang/String;
    iget-object v7, p0, Lcom/githang/android/apnbb/XmppConnectReceiver$LoginServer;->this$0:Lcom/githang/android/apnbb/XmppConnectReceiver;

    const/4 v8, 0x1

    invoke-static {v7, v8}, Lcom/githang/android/apnbb/XmppConnectReceiver;->access$1(Lcom/githang/android/apnbb/XmppConnectReceiver;Z)V

    .line 198
    const/4 v1, 0x0

    .line 199
    .local v1, "isSuccess":Z
    invoke-direct {p0}, Lcom/githang/android/apnbb/XmppConnectReceiver$LoginServer;->connect()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 201
    invoke-static {v10}, Lcom/githang/android/apnbb/XmppConnectReceiver;->access$2(I)V

    .line 203
    invoke-virtual {p0, v3, v2}, Lcom/githang/android/apnbb/XmppConnectReceiver$LoginServer;->register(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 204
    iget-object v7, p0, Lcom/githang/android/apnbb/XmppConnectReceiver$LoginServer;->this$0:Lcom/githang/android/apnbb/XmppConnectReceiver;

    # getter for: Lcom/githang/android/apnbb/XmppConnectReceiver;->sharedPrefs:Landroid/content/SharedPreferences;
    invoke-static {v7}, Lcom/githang/android/apnbb/XmppConnectReceiver;->access$3(Lcom/githang/android/apnbb/XmppConnectReceiver;)Landroid/content/SharedPreferences;

    move-result-object v7

    invoke-interface {v7}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 205
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v7, "XMPP_USERNAME"

    invoke-interface {v0, v7, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 207
    const-string v7, "XMPP_PASSWORD"

    invoke-interface {v0, v7, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 209
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 210
    iget-object v7, p0, Lcom/githang/android/apnbb/XmppConnectReceiver$LoginServer;->this$0:Lcom/githang/android/apnbb/XmppConnectReceiver;

    # getter for: Lcom/githang/android/apnbb/XmppConnectReceiver;->sharedPrefs:Landroid/content/SharedPreferences;
    invoke-static {v7}, Lcom/githang/android/apnbb/XmppConnectReceiver;->access$3(Lcom/githang/android/apnbb/XmppConnectReceiver;)Landroid/content/SharedPreferences;

    move-result-object v7

    const-string v8, "XMPP_USERNAME"

    const-string v9, ""

    invoke-interface {v7, v8, v9}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 211
    .local v5, "username":Ljava/lang/String;
    iget-object v7, p0, Lcom/githang/android/apnbb/XmppConnectReceiver$LoginServer;->this$0:Lcom/githang/android/apnbb/XmppConnectReceiver;

    # getter for: Lcom/githang/android/apnbb/XmppConnectReceiver;->sharedPrefs:Landroid/content/SharedPreferences;
    invoke-static {v7}, Lcom/githang/android/apnbb/XmppConnectReceiver;->access$3(Lcom/githang/android/apnbb/XmppConnectReceiver;)Landroid/content/SharedPreferences;

    move-result-object v7

    const-string v8, "XMPP_PASSWORD"

    const-string v9, ""

    invoke-interface {v7, v8, v9}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 212
    .local v4, "password":Ljava/lang/String;
    invoke-virtual {p0, v5, v4}, Lcom/githang/android/apnbb/XmppConnectReceiver$LoginServer;->login(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 213
    const/4 v1, 0x1

    .line 214
    iget-object v7, p0, Lcom/githang/android/apnbb/XmppConnectReceiver$LoginServer;->this$0:Lcom/githang/android/apnbb/XmppConnectReceiver;

    # getter for: Lcom/githang/android/apnbb/XmppConnectReceiver;->context:Landroid/content/Context;
    invoke-static {v7}, Lcom/githang/android/apnbb/XmppConnectReceiver;->access$0(Lcom/githang/android/apnbb/XmppConnectReceiver;)Landroid/content/Context;

    move-result-object v7

    const-string v8, "org.androidpn.client.ANDROIDPN_STATUS_LOGINED"

    invoke-static {v7, v8}, Lcom/githang/android/apnbb/BroadcastUtil;->sendBroadcast(Landroid/content/Context;Ljava/lang/String;)V

    .line 222
    .end local v0    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local v4    # "password":Ljava/lang/String;
    .end local v5    # "username":Ljava/lang/String;
    :cond_0
    :goto_0
    iget-object v7, p0, Lcom/githang/android/apnbb/XmppConnectReceiver$LoginServer;->this$0:Lcom/githang/android/apnbb/XmppConnectReceiver;

    invoke-static {v7, v10}, Lcom/githang/android/apnbb/XmppConnectReceiver;->access$1(Lcom/githang/android/apnbb/XmppConnectReceiver;Z)V

    .line 223
    if-nez v1, :cond_1

    .line 224
    iget-object v7, p0, Lcom/githang/android/apnbb/XmppConnectReceiver$LoginServer;->this$0:Lcom/githang/android/apnbb/XmppConnectReceiver;

    # getter for: Lcom/githang/android/apnbb/XmppConnectReceiver;->context:Landroid/content/Context;
    invoke-static {v7}, Lcom/githang/android/apnbb/XmppConnectReceiver;->access$0(Lcom/githang/android/apnbb/XmppConnectReceiver;)Landroid/content/Context;

    move-result-object v7

    const-string v8, "org.androidpn.client.ANDROIDPN_ACTION_RECONNECT"

    invoke-static {v7, v8}, Lcom/githang/android/apnbb/BroadcastUtil;->sendBroadcast(Landroid/content/Context;Ljava/lang/String;)V

    .line 226
    :cond_1
    return-void

    .line 220
    :cond_2
    iget-object v7, p0, Lcom/githang/android/apnbb/XmppConnectReceiver$LoginServer;->this$0:Lcom/githang/android/apnbb/XmppConnectReceiver;

    # getter for: Lcom/githang/android/apnbb/XmppConnectReceiver;->context:Landroid/content/Context;
    invoke-static {v7}, Lcom/githang/android/apnbb/XmppConnectReceiver;->access$0(Lcom/githang/android/apnbb/XmppConnectReceiver;)Landroid/content/Context;

    move-result-object v7

    const-string v8, "org.androidpn.client.ANDROIDPN_STATUS_CONNECT_FAILED"

    invoke-static {v7, v8}, Lcom/githang/android/apnbb/BroadcastUtil;->sendBroadcast(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0
.end method
