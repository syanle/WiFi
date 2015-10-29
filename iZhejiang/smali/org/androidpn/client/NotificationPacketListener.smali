.class public Lorg/androidpn/client/NotificationPacketListener;
.super Ljava/lang/Object;
.source "NotificationPacketListener.java"

# interfaces
.implements Lorg/jivesoftware/smack/PacketListener;


# static fields
.field private static final LOGTAG:Ljava/lang/String;


# instance fields
.field private final xmppManager:Lorg/androidpn/client/XmppManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 35
    const-class v0, Lorg/androidpn/client/NotificationPacketListener;

    invoke-static {v0}, Lorg/androidpn/client/LogUtil;->makeLogTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    .line 34
    sput-object v0, Lorg/androidpn/client/NotificationPacketListener;->LOGTAG:Ljava/lang/String;

    .line 35
    return-void
.end method

.method public constructor <init>(Lorg/androidpn/client/XmppManager;)V
    .locals 0
    .param p1, "xmppManager"    # Lorg/androidpn/client/XmppManager;

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-object p1, p0, Lorg/androidpn/client/NotificationPacketListener;->xmppManager:Lorg/androidpn/client/XmppManager;

    .line 41
    return-void
.end method


# virtual methods
.method public processPacket(Lorg/jivesoftware/smack/packet/Packet;)V
    .locals 13
    .param p1, "packet"    # Lorg/jivesoftware/smack/packet/Packet;

    .prologue
    .line 45
    sget-object v10, Lorg/androidpn/client/NotificationPacketListener;->LOGTAG:Ljava/lang/String;

    const-string v11, "NotificationPacketListener.processPacket()..."

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 46
    sget-object v10, Lorg/androidpn/client/NotificationPacketListener;->LOGTAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "packet.toXML()="

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lorg/jivesoftware/smack/packet/Packet;->toXML()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 48
    instance-of v10, p1, Lorg/androidpn/client/NotificationIQ;

    if-eqz v10, :cond_0

    move-object v1, p1

    .line 49
    check-cast v1, Lorg/androidpn/client/NotificationIQ;

    .line 51
    .local v1, "notification":Lorg/androidpn/client/NotificationIQ;
    invoke-virtual {v1}, Lorg/androidpn/client/NotificationIQ;->getChildElementXML()Ljava/lang/String;

    move-result-object v10

    .line 52
    const-string v11, "androidpn:iq:notification"

    .line 51
    invoke-virtual {v10, v11}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v10

    .line 52
    if-eqz v10, :cond_0

    .line 53
    invoke-virtual {v1}, Lorg/androidpn/client/NotificationIQ;->getId()Ljava/lang/String;

    move-result-object v3

    .line 54
    .local v3, "notificationId":Ljava/lang/String;
    invoke-virtual {v1}, Lorg/androidpn/client/NotificationIQ;->getApiKey()Ljava/lang/String;

    move-result-object v2

    .line 55
    .local v2, "notificationApiKey":Ljava/lang/String;
    invoke-virtual {v1}, Lorg/androidpn/client/NotificationIQ;->getTitle()Ljava/lang/String;

    move-result-object v6

    .line 56
    .local v6, "notificationTitle":Ljava/lang/String;
    invoke-virtual {v1}, Lorg/androidpn/client/NotificationIQ;->getMessage()Ljava/lang/String;

    move-result-object v4

    .line 57
    .local v4, "notificationMessage":Ljava/lang/String;
    invoke-virtual {v1}, Lorg/androidpn/client/NotificationIQ;->getUri()Ljava/lang/String;

    move-result-object v7

    .line 58
    .local v7, "notificationUri":Ljava/lang/String;
    invoke-virtual {v1}, Lorg/androidpn/client/NotificationIQ;->getPushType()Ljava/lang/String;

    move-result-object v5

    .line 59
    .local v5, "notificationPushtype":Ljava/lang/String;
    invoke-virtual {v1}, Lorg/androidpn/client/NotificationIQ;->getPacketID()Ljava/lang/String;

    move-result-object v8

    .line 61
    .local v8, "packetId":Ljava/lang/String;
    new-instance v0, Landroid/content/Intent;

    const-string v10, "org.androidpn.client.SHOW_NOTIFICATION"

    invoke-direct {v0, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 62
    .local v0, "intent":Landroid/content/Intent;
    const-string v10, "NOTIFICATION_ID"

    invoke-virtual {v0, v10, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 63
    const-string v10, "NOTIFICATION_API_KEY"

    invoke-virtual {v0, v10, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 66
    const-string v10, "NOTIFICATION_TITLE"

    invoke-virtual {v0, v10, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 68
    const-string v10, "NOTIFICATION_MESSAGE"

    invoke-virtual {v0, v10, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 70
    const-string v10, "NOTIFICATION_URI"

    invoke-virtual {v0, v10, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 71
    const-string v10, "NOTIFICATION_PUSH_TYPE"

    invoke-virtual {v0, v10, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 72
    const-string v10, "PACKET_ID"

    invoke-virtual {v0, v10, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 73
    new-instance v9, Landroid/content/Intent;

    const-string v10, "org.androidpn.client.ANDROIDPN_ACTION_RECEIPT"

    invoke-direct {v9, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 74
    .local v9, "receiptIntent":Landroid/content/Intent;
    const-string v10, "INTENT_IQ"

    invoke-virtual {v9, v10, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 75
    iget-object v10, p0, Lorg/androidpn/client/NotificationPacketListener;->xmppManager:Lorg/androidpn/client/XmppManager;

    invoke-virtual {v10}, Lorg/androidpn/client/XmppManager;->getContext()Landroid/content/Context;

    move-result-object v10

    invoke-static {v10, v9}, Lcom/githang/android/apnbb/BroadcastUtil;->sendBroadcast(Landroid/content/Context;Landroid/content/Intent;)V

    .line 76
    iget-object v10, p0, Lorg/androidpn/client/NotificationPacketListener;->xmppManager:Lorg/androidpn/client/XmppManager;

    invoke-virtual {v10}, Lorg/androidpn/client/XmppManager;->getContext()Landroid/content/Context;

    move-result-object v10

    invoke-virtual {v10, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 80
    .end local v0    # "intent":Landroid/content/Intent;
    .end local v1    # "notification":Lorg/androidpn/client/NotificationIQ;
    .end local v2    # "notificationApiKey":Ljava/lang/String;
    .end local v3    # "notificationId":Ljava/lang/String;
    .end local v4    # "notificationMessage":Ljava/lang/String;
    .end local v5    # "notificationPushtype":Ljava/lang/String;
    .end local v6    # "notificationTitle":Ljava/lang/String;
    .end local v7    # "notificationUri":Ljava/lang/String;
    .end local v8    # "packetId":Ljava/lang/String;
    .end local v9    # "receiptIntent":Landroid/content/Intent;
    :cond_0
    return-void
.end method
