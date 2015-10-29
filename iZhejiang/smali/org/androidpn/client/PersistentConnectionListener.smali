.class public Lorg/androidpn/client/PersistentConnectionListener;
.super Ljava/lang/Object;
.source "PersistentConnectionListener.java"

# interfaces
.implements Lorg/jivesoftware/smack/ConnectionListener;


# static fields
.field private static final LOGTAG:Ljava/lang/String;


# instance fields
.field private final xmppManager:Lorg/androidpn/client/XmppManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 33
    const-class v0, Lorg/androidpn/client/PersistentConnectionListener;

    invoke-static {v0}, Lorg/androidpn/client/LogUtil;->makeLogTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    .line 32
    sput-object v0, Lorg/androidpn/client/PersistentConnectionListener;->LOGTAG:Ljava/lang/String;

    .line 33
    return-void
.end method

.method public constructor <init>(Lorg/androidpn/client/XmppManager;)V
    .locals 0
    .param p1, "xmppManager"    # Lorg/androidpn/client/XmppManager;

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-object p1, p0, Lorg/androidpn/client/PersistentConnectionListener;->xmppManager:Lorg/androidpn/client/XmppManager;

    .line 39
    return-void
.end method


# virtual methods
.method public connectionClosed()V
    .locals 4

    .prologue
    .line 43
    sget-object v2, Lorg/androidpn/client/PersistentConnectionListener;->LOGTAG:Ljava/lang/String;

    const-string v3, "connectionClosed()..."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 44
    iget-object v2, p0, Lorg/androidpn/client/PersistentConnectionListener;->xmppManager:Lorg/androidpn/client/XmppManager;

    invoke-virtual {v2}, Lorg/androidpn/client/XmppManager;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "connectivity"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 45
    .local v0, "cm":Landroid/net/ConnectivityManager;
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    .line 46
    .local v1, "networkInfo":Landroid/net/NetworkInfo;
    if-eqz v1, :cond_0

    .line 47
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 48
    iget-object v2, p0, Lorg/androidpn/client/PersistentConnectionListener;->xmppManager:Lorg/androidpn/client/XmppManager;

    invoke-virtual {v2}, Lorg/androidpn/client/XmppManager;->startReconnectionThread()V

    .line 51
    :cond_0
    return-void
.end method

.method public connectionClosedOnError(Ljava/lang/Exception;)V
    .locals 2
    .param p1, "e"    # Ljava/lang/Exception;

    .prologue
    .line 55
    sget-object v0, Lorg/androidpn/client/PersistentConnectionListener;->LOGTAG:Ljava/lang/String;

    const-string v1, "connectionClosedOnError()..."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 56
    iget-object v0, p0, Lorg/androidpn/client/PersistentConnectionListener;->xmppManager:Lorg/androidpn/client/XmppManager;

    invoke-virtual {v0}, Lorg/androidpn/client/XmppManager;->getConnection()Lorg/jivesoftware/smack/XMPPConnection;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 57
    iget-object v0, p0, Lorg/androidpn/client/PersistentConnectionListener;->xmppManager:Lorg/androidpn/client/XmppManager;

    invoke-virtual {v0}, Lorg/androidpn/client/XmppManager;->getConnection()Lorg/jivesoftware/smack/XMPPConnection;

    move-result-object v0

    invoke-virtual {v0}, Lorg/jivesoftware/smack/XMPPConnection;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 58
    iget-object v0, p0, Lorg/androidpn/client/PersistentConnectionListener;->xmppManager:Lorg/androidpn/client/XmppManager;

    invoke-virtual {v0}, Lorg/androidpn/client/XmppManager;->getConnection()Lorg/jivesoftware/smack/XMPPConnection;

    move-result-object v0

    invoke-virtual {v0}, Lorg/jivesoftware/smack/XMPPConnection;->disconnect()V

    .line 60
    :cond_0
    iget-object v0, p0, Lorg/androidpn/client/PersistentConnectionListener;->xmppManager:Lorg/androidpn/client/XmppManager;

    invoke-virtual {v0}, Lorg/androidpn/client/XmppManager;->startReconnectionThread()V

    .line 61
    return-void
.end method

.method public reconnectingIn(I)V
    .locals 2
    .param p1, "seconds"    # I

    .prologue
    .line 65
    sget-object v0, Lorg/androidpn/client/PersistentConnectionListener;->LOGTAG:Ljava/lang/String;

    const-string v1, "reconnectingIn()..."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    return-void
.end method

.method public reconnectionFailed(Ljava/lang/Exception;)V
    .locals 2
    .param p1, "e"    # Ljava/lang/Exception;

    .prologue
    .line 70
    sget-object v0, Lorg/androidpn/client/PersistentConnectionListener;->LOGTAG:Ljava/lang/String;

    const-string v1, "reconnectionFailed()..."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    return-void
.end method

.method public reconnectionSuccessful()V
    .locals 2

    .prologue
    .line 75
    sget-object v0, Lorg/androidpn/client/PersistentConnectionListener;->LOGTAG:Ljava/lang/String;

    const-string v1, "reconnectionSuccessful()..."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    return-void
.end method
