.class public Lorg/androidpn/client/ConnectivityReceiver;
.super Landroid/content/BroadcastReceiver;
.source "ConnectivityReceiver.java"


# static fields
.field private static final LOGTAG:Ljava/lang/String;


# instance fields
.field private notificationService:Lorg/androidpn/client/NotificationService;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 34
    const-class v0, Lorg/androidpn/client/ConnectivityReceiver;

    invoke-static {v0}, Lorg/androidpn/client/LogUtil;->makeLogTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    .line 33
    sput-object v0, Lorg/androidpn/client/ConnectivityReceiver;->LOGTAG:Ljava/lang/String;

    .line 34
    return-void
.end method

.method public constructor <init>(Lorg/androidpn/client/NotificationService;)V
    .locals 0
    .param p1, "notificationService"    # Lorg/androidpn/client/NotificationService;

    .prologue
    .line 38
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 39
    iput-object p1, p0, Lorg/androidpn/client/ConnectivityReceiver;->notificationService:Lorg/androidpn/client/NotificationService;

    .line 40
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 44
    sget-object v1, Lorg/androidpn/client/ConnectivityReceiver;->LOGTAG:Ljava/lang/String;

    const-string v2, "ConnectivityReceiver.onReceive()..."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 45
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 46
    .local v0, "action":Ljava/lang/String;
    sget-object v1, Lorg/androidpn/client/ConnectivityReceiver;->LOGTAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "action="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 48
    invoke-static {p1}, Lcom/githang/android/apnbb/NetworkUtil;->isNetworkAvaible(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 49
    sget-object v1, Lorg/androidpn/client/ConnectivityReceiver;->LOGTAG:Ljava/lang/String;

    const-string v2, "Network connected"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 50
    iget-object v1, p0, Lorg/androidpn/client/ConnectivityReceiver;->notificationService:Lorg/androidpn/client/NotificationService;

    invoke-virtual {v1}, Lorg/androidpn/client/NotificationService;->connect()V

    .line 61
    :goto_0
    return-void

    .line 55
    :cond_0
    sget-object v1, Lorg/androidpn/client/ConnectivityReceiver;->LOGTAG:Ljava/lang/String;

    const-string v2, "Network unavailable"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 56
    iget-object v1, p0, Lorg/androidpn/client/ConnectivityReceiver;->notificationService:Lorg/androidpn/client/NotificationService;

    invoke-virtual {v1}, Lorg/androidpn/client/NotificationService;->disconnect()V

    goto :goto_0
.end method
