.class public Lorg/androidpn/client/PhoneStateChangeListener;
.super Landroid/telephony/PhoneStateListener;
.source "PhoneStateChangeListener.java"


# static fields
.field private static final LOGTAG:Ljava/lang/String;


# instance fields
.field private final notificationService:Lorg/androidpn/client/NotificationService;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 32
    const-class v0, Lorg/androidpn/client/PhoneStateChangeListener;

    invoke-static {v0}, Lorg/androidpn/client/LogUtil;->makeLogTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    .line 31
    sput-object v0, Lorg/androidpn/client/PhoneStateChangeListener;->LOGTAG:Ljava/lang/String;

    .line 32
    return-void
.end method

.method public constructor <init>(Lorg/androidpn/client/NotificationService;)V
    .locals 0
    .param p1, "notificationService"    # Lorg/androidpn/client/NotificationService;

    .prologue
    .line 36
    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    .line 37
    iput-object p1, p0, Lorg/androidpn/client/PhoneStateChangeListener;->notificationService:Lorg/androidpn/client/NotificationService;

    .line 38
    return-void
.end method

.method private getState(I)Ljava/lang/String;
    .locals 1
    .param p1, "state"    # I

    .prologue
    .line 52
    packed-switch p1, :pswitch_data_0

    .line 62
    const-string v0, "DATA_<UNKNOWN>"

    :goto_0
    return-object v0

    .line 54
    :pswitch_0
    const-string v0, "DATA_DISCONNECTED"

    goto :goto_0

    .line 56
    :pswitch_1
    const-string v0, "DATA_CONNECTING"

    goto :goto_0

    .line 58
    :pswitch_2
    const-string v0, "DATA_CONNECTED"

    goto :goto_0

    .line 60
    :pswitch_3
    const-string v0, "DATA_SUSPENDED"

    goto :goto_0

    .line 52
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method


# virtual methods
.method public onDataConnectionStateChanged(I)V
    .locals 3
    .param p1, "state"    # I

    .prologue
    .line 42
    invoke-super {p0, p1}, Landroid/telephony/PhoneStateListener;->onDataConnectionStateChanged(I)V

    .line 43
    sget-object v0, Lorg/androidpn/client/PhoneStateChangeListener;->LOGTAG:Ljava/lang/String;

    const-string v1, "onDataConnectionStateChanged()..."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 44
    sget-object v0, Lorg/androidpn/client/PhoneStateChangeListener;->LOGTAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Data Connection State = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lorg/androidpn/client/PhoneStateChangeListener;->getState(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 46
    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 47
    iget-object v0, p0, Lorg/androidpn/client/PhoneStateChangeListener;->notificationService:Lorg/androidpn/client/NotificationService;

    const-string v1, "org.androidpn.client.ANDROIDPN_ACTION_RECONNECT"

    invoke-static {v0, v1}, Lcom/githang/android/apnbb/BroadcastUtil;->sendBroadcast(Landroid/content/Context;Ljava/lang/String;)V

    .line 49
    :cond_0
    return-void
.end method
