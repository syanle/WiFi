.class public final Lorg/androidpn/client/NotificationReceiver;
.super Landroid/content/BroadcastReceiver;
.source "NotificationReceiver.java"


# static fields
.field private static final LOGTAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 34
    const-class v0, Lorg/androidpn/client/NotificationReceiver;

    invoke-static {v0}, Lorg/androidpn/client/LogUtil;->makeLogTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    .line 33
    sput-object v0, Lorg/androidpn/client/NotificationReceiver;->LOGTAG:Ljava/lang/String;

    .line 34
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 37
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 12
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 42
    sget-object v9, Lorg/androidpn/client/NotificationReceiver;->LOGTAG:Ljava/lang/String;

    const-string v10, "NotificationReceiver.onReceive()..."

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 43
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v8

    .line 44
    .local v8, "action":Ljava/lang/String;
    sget-object v9, Lorg/androidpn/client/NotificationReceiver;->LOGTAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "action="

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 46
    const-string v9, "org.androidpn.client.SHOW_NOTIFICATION"

    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 48
    const-string v9, "NOTIFICATION_ID"

    invoke-virtual {p2, v9}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 50
    .local v1, "notificationId":Ljava/lang/String;
    const-string v9, "NOTIFICATION_API_KEY"

    invoke-virtual {p2, v9}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 52
    .local v2, "notificationApiKey":Ljava/lang/String;
    const-string v9, "NOTIFICATION_TITLE"

    invoke-virtual {p2, v9}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 54
    .local v3, "notificationTitle":Ljava/lang/String;
    const-string v9, "NOTIFICATION_MESSAGE"

    invoke-virtual {p2, v9}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 56
    .local v4, "notificationMessage":Ljava/lang/String;
    const-string v9, "NOTIFICATION_URI"

    invoke-virtual {p2, v9}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 58
    .local v5, "notificationUri":Ljava/lang/String;
    const-string v9, "NOTIFICATION_PUSH_TYPE"

    invoke-virtual {p2, v9}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 59
    .local v6, "notificationPushtype":Ljava/lang/String;
    const-string v9, "PACKET_ID"

    invoke-virtual {p2, v9}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 69
    .local v7, "packetId":Ljava/lang/String;
    new-instance v0, Lorg/androidpn/client/Notifier;

    invoke-direct {v0, p1}, Lorg/androidpn/client/Notifier;-><init>(Landroid/content/Context;)V

    .line 70
    .local v0, "notifier":Lorg/androidpn/client/Notifier;
    invoke-virtual/range {v0 .. v7}, Lorg/androidpn/client/Notifier;->notify(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    .end local v0    # "notifier":Lorg/androidpn/client/Notifier;
    .end local v1    # "notificationId":Ljava/lang/String;
    .end local v2    # "notificationApiKey":Ljava/lang/String;
    .end local v3    # "notificationTitle":Ljava/lang/String;
    .end local v4    # "notificationMessage":Ljava/lang/String;
    .end local v5    # "notificationUri":Ljava/lang/String;
    .end local v6    # "notificationPushtype":Ljava/lang/String;
    .end local v7    # "packetId":Ljava/lang/String;
    :cond_0
    return-void
.end method
