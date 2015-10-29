.class public Lcom/pubinfo/androidpn/client/AutoRunReceiver;
.super Landroid/content/BroadcastReceiver;
.source "AutoRunReceiver.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 15
    const-class v0, Lcom/pubinfo/androidpn/client/AutoRunReceiver;

    invoke-static {v0}, Lorg/androidpn/client/LogUtil;->makeLogTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/pubinfo/androidpn/client/AutoRunReceiver;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 17
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 21
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 22
    .local v0, "action":Ljava/lang/String;
    const-string v2, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 23
    sget-object v2, Lcom/pubinfo/androidpn/client/AutoRunReceiver;->LOG_TAG:Ljava/lang/String;

    const-string v3, "action_boot_completed"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 24
    invoke-static {p1}, Lorg/androidpn/client/ServiceManager;->getInstance(Landroid/content/Context;)Lorg/androidpn/client/ServiceManager;

    move-result-object v1

    .line 25
    .local v1, "serviceManager":Lorg/androidpn/client/ServiceManager;
    sget v2, Lcom/iwifi/sdk/R$drawable;->iwifi_logo2:I

    invoke-virtual {v1, v2}, Lorg/androidpn/client/ServiceManager;->setNotificationIcon(I)V

    .line 26
    invoke-virtual {v1}, Lorg/androidpn/client/ServiceManager;->startService()V

    .line 28
    .end local v1    # "serviceManager":Lorg/androidpn/client/ServiceManager;
    :cond_0
    return-void
.end method
