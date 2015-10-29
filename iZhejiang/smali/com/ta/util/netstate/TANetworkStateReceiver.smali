.class public Lcom/ta/util/netstate/TANetworkStateReceiver;
.super Landroid/content/BroadcastReceiver;
.source "TANetworkStateReceiver.java"


# static fields
.field private static final ANDROID_NET_CHANGE_ACTION:Ljava/lang/String; = "android.net.conn.CONNECTIVITY_CHANGE"

.field public static final TA_ANDROID_NET_CHANGE_ACTION:Ljava/lang/String; = "ta.android.net.conn.CONNECTIVITY_CHANGE"

.field private static netChangeObserverArrayList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/ta/util/netstate/TANetChangeObserver;",
            ">;"
        }
    .end annotation
.end field

.field private static netType:Lcom/ta/util/netstate/TANetWorkUtil$netType;

.field private static networkAvailable:Ljava/lang/Boolean;

.field private static receiver:Landroid/content/BroadcastReceiver;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 54
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/ta/util/netstate/TANetworkStateReceiver;->networkAvailable:Ljava/lang/Boolean;

    .line 56
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/ta/util/netstate/TANetworkStateReceiver;->netChangeObserverArrayList:Ljava/util/ArrayList;

    .line 59
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 52
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method public static checkNetworkState(Landroid/content/Context;)V
    .locals 2
    .param p0, "mContext"    # Landroid/content/Context;

    .prologue
    .line 114
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 115
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "ta.android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 116
    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 117
    return-void
.end method

.method public static getAPNType()Lcom/ta/util/netstate/TANetWorkUtil$netType;
    .locals 1

    .prologue
    .line 152
    sget-object v0, Lcom/ta/util/netstate/TANetworkStateReceiver;->netType:Lcom/ta/util/netstate/TANetWorkUtil$netType;

    return-object v0
.end method

.method private static getReceiver()Landroid/content/BroadcastReceiver;
    .locals 1

    .prologue
    .line 63
    sget-object v0, Lcom/ta/util/netstate/TANetworkStateReceiver;->receiver:Landroid/content/BroadcastReceiver;

    if-nez v0, :cond_0

    .line 65
    new-instance v0, Lcom/ta/util/netstate/TANetworkStateReceiver;

    invoke-direct {v0}, Lcom/ta/util/netstate/TANetworkStateReceiver;-><init>()V

    sput-object v0, Lcom/ta/util/netstate/TANetworkStateReceiver;->receiver:Landroid/content/BroadcastReceiver;

    .line 67
    :cond_0
    sget-object v0, Lcom/ta/util/netstate/TANetworkStateReceiver;->receiver:Landroid/content/BroadcastReceiver;

    return-object v0
.end method

.method public static isNetworkAvailable()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 147
    sget-object v0, Lcom/ta/util/netstate/TANetworkStateReceiver;->networkAvailable:Ljava/lang/Boolean;

    return-object v0
.end method

.method private notifyObserver()V
    .locals 3

    .prologue
    .line 158
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget-object v2, Lcom/ta/util/netstate/TANetworkStateReceiver;->netChangeObserverArrayList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lt v0, v2, :cond_0

    .line 173
    return-void

    .line 160
    :cond_0
    sget-object v2, Lcom/ta/util/netstate/TANetworkStateReceiver;->netChangeObserverArrayList:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ta/util/netstate/TANetChangeObserver;

    .line 161
    .local v1, "observer":Lcom/ta/util/netstate/TANetChangeObserver;
    if-eqz v1, :cond_1

    .line 163
    invoke-static {}, Lcom/ta/util/netstate/TANetworkStateReceiver;->isNetworkAvailable()Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 165
    sget-object v2, Lcom/ta/util/netstate/TANetworkStateReceiver;->netType:Lcom/ta/util/netstate/TANetWorkUtil$netType;

    invoke-virtual {v1, v2}, Lcom/ta/util/netstate/TANetChangeObserver;->onConnect(Lcom/ta/util/netstate/TANetWorkUtil$netType;)V

    .line 158
    :cond_1
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 168
    :cond_2
    invoke-virtual {v1}, Lcom/ta/util/netstate/TANetChangeObserver;->onDisConnect()V

    goto :goto_1
.end method

.method public static registerNetworkStateReceiver(Landroid/content/Context;)V
    .locals 3
    .param p0, "mContext"    # Landroid/content/Context;

    .prologue
    .line 100
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 101
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "ta.android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 102
    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 103
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 104
    invoke-static {}, Lcom/ta/util/netstate/TANetworkStateReceiver;->getReceiver()Landroid/content/BroadcastReceiver;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 105
    return-void
.end method

.method public static registerObserver(Lcom/ta/util/netstate/TANetChangeObserver;)V
    .locals 1
    .param p0, "observer"    # Lcom/ta/util/netstate/TANetChangeObserver;

    .prologue
    .line 183
    sget-object v0, Lcom/ta/util/netstate/TANetworkStateReceiver;->netChangeObserverArrayList:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 185
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/ta/util/netstate/TANetworkStateReceiver;->netChangeObserverArrayList:Ljava/util/ArrayList;

    .line 187
    :cond_0
    sget-object v0, Lcom/ta/util/netstate/TANetworkStateReceiver;->netChangeObserverArrayList:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 188
    return-void
.end method

.method public static removeRegisterObserver(Lcom/ta/util/netstate/TANetChangeObserver;)V
    .locals 1
    .param p0, "observer"    # Lcom/ta/util/netstate/TANetChangeObserver;

    .prologue
    .line 198
    sget-object v0, Lcom/ta/util/netstate/TANetworkStateReceiver;->netChangeObserverArrayList:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 200
    sget-object v0, Lcom/ta/util/netstate/TANetworkStateReceiver;->netChangeObserverArrayList:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 202
    :cond_0
    return-void
.end method

.method public static unRegisterNetworkStateReceiver(Landroid/content/Context;)V
    .locals 3
    .param p0, "mContext"    # Landroid/content/Context;

    .prologue
    .line 126
    sget-object v1, Lcom/ta/util/netstate/TANetworkStateReceiver;->receiver:Landroid/content/BroadcastReceiver;

    if-eqz v1, :cond_0

    .line 130
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Lcom/ta/util/netstate/TANetworkStateReceiver;->receiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 138
    :cond_0
    :goto_0
    return-void

    .line 131
    :catch_0
    move-exception v0

    .line 134
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "TANetworkStateReceiver"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/ta/util/TALogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 73
    sput-object p0, Lcom/ta/util/netstate/TANetworkStateReceiver;->receiver:Landroid/content/BroadcastReceiver;

    .line 74
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 75
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 76
    const-string v1, "ta.android.net.conn.CONNECTIVITY_CHANGE"

    .line 75
    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    .line 76
    if-eqz v0, :cond_1

    .line 78
    :cond_0
    const-string v0, "\u7f51\u7edc\u72b6\u6001\u6539\u53d8."

    invoke-static {p0, v0}, Lcom/ta/util/TALogger;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 79
    invoke-static {p1}, Lcom/ta/util/netstate/TANetWorkUtil;->isNetworkAvailable(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 81
    const-string v0, "\u6ca1\u6709\u7f51\u7edc\u8fde\u63a5."

    invoke-static {p0, v0}, Lcom/ta/util/TALogger;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 82
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/ta/util/netstate/TANetworkStateReceiver;->networkAvailable:Ljava/lang/Boolean;

    .line 89
    :goto_0
    invoke-direct {p0}, Lcom/ta/util/netstate/TANetworkStateReceiver;->notifyObserver()V

    .line 91
    :cond_1
    return-void

    .line 85
    :cond_2
    const-string v0, "\u7f51\u7edc\u8fde\u63a5\u6210\u529f."

    invoke-static {p0, v0}, Lcom/ta/util/TALogger;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 86
    invoke-static {p1}, Lcom/ta/util/netstate/TANetWorkUtil;->getAPNType(Landroid/content/Context;)Lcom/ta/util/netstate/TANetWorkUtil$netType;

    move-result-object v0

    sput-object v0, Lcom/ta/util/netstate/TANetworkStateReceiver;->netType:Lcom/ta/util/netstate/TANetWorkUtil$netType;

    .line 87
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/ta/util/netstate/TANetworkStateReceiver;->networkAvailable:Ljava/lang/Boolean;

    goto :goto_0
.end method
