.class public Lorg/androidpn/client/NotificationService;
.super Landroid/app/Service;
.source "NotificationService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/androidpn/client/NotificationService$TaskSubmitter;,
        Lorg/androidpn/client/NotificationService$TaskTracker;
    }
.end annotation


# static fields
.field private static final LOGTAG:Ljava/lang/String;

.field private static mService:Lorg/androidpn/client/NotificationService;


# instance fields
.field private connectivityReceiver:Landroid/content/BroadcastReceiver;

.field private deviceId:Ljava/lang/String;

.field private executorService:Ljava/util/concurrent/ExecutorService;

.field private mWakeLock:Landroid/os/PowerManager$WakeLock;

.field private notificationReceiver:Landroid/content/BroadcastReceiver;

.field private phoneStateListener:Landroid/telephony/PhoneStateListener;

.field private sharedPrefs:Landroid/content/SharedPreferences;

.field private taskSubmitter:Lorg/androidpn/client/NotificationService$TaskSubmitter;

.field private taskTracker:Lorg/androidpn/client/NotificationService$TaskTracker;

.field private telephonyManager:Landroid/telephony/TelephonyManager;

.field private xmppManager:Lorg/androidpn/client/XmppManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 49
    const-class v0, Lorg/androidpn/client/NotificationService;

    invoke-static {v0}, Lorg/androidpn/client/LogUtil;->makeLogTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    .line 48
    sput-object v0, Lorg/androidpn/client/NotificationService;->LOGTAG:Ljava/lang/String;

    .line 71
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 78
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 79
    sput-object p0, Lorg/androidpn/client/NotificationService;->mService:Lorg/androidpn/client/NotificationService;

    .line 80
    new-instance v0, Lorg/androidpn/client/NotificationReceiver;

    invoke-direct {v0}, Lorg/androidpn/client/NotificationReceiver;-><init>()V

    iput-object v0, p0, Lorg/androidpn/client/NotificationService;->notificationReceiver:Landroid/content/BroadcastReceiver;

    .line 81
    new-instance v0, Lorg/androidpn/client/ConnectivityReceiver;

    invoke-direct {v0, p0}, Lorg/androidpn/client/ConnectivityReceiver;-><init>(Lorg/androidpn/client/NotificationService;)V

    iput-object v0, p0, Lorg/androidpn/client/NotificationService;->connectivityReceiver:Landroid/content/BroadcastReceiver;

    .line 82
    new-instance v0, Lorg/androidpn/client/PhoneStateChangeListener;

    invoke-direct {v0, p0}, Lorg/androidpn/client/PhoneStateChangeListener;-><init>(Lorg/androidpn/client/NotificationService;)V

    iput-object v0, p0, Lorg/androidpn/client/NotificationService;->phoneStateListener:Landroid/telephony/PhoneStateListener;

    .line 83
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lorg/androidpn/client/NotificationService;->executorService:Ljava/util/concurrent/ExecutorService;

    .line 84
    new-instance v0, Lorg/androidpn/client/NotificationService$TaskSubmitter;

    invoke-direct {v0, p0, p0}, Lorg/androidpn/client/NotificationService$TaskSubmitter;-><init>(Lorg/androidpn/client/NotificationService;Lorg/androidpn/client/NotificationService;)V

    iput-object v0, p0, Lorg/androidpn/client/NotificationService;->taskSubmitter:Lorg/androidpn/client/NotificationService$TaskSubmitter;

    .line 85
    new-instance v0, Lorg/androidpn/client/NotificationService$TaskTracker;

    invoke-direct {v0, p0, p0}, Lorg/androidpn/client/NotificationService$TaskTracker;-><init>(Lorg/androidpn/client/NotificationService;Lorg/androidpn/client/NotificationService;)V

    iput-object v0, p0, Lorg/androidpn/client/NotificationService;->taskTracker:Lorg/androidpn/client/NotificationService$TaskTracker;

    .line 86
    return-void
.end method

.method static synthetic access$0()Ljava/lang/String;
    .locals 1

    .prologue
    .line 48
    sget-object v0, Lorg/androidpn/client/NotificationService;->LOGTAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1(Lorg/androidpn/client/NotificationService;)V
    .locals 0

    .prologue
    .line 267
    invoke-direct {p0}, Lorg/androidpn/client/NotificationService;->start()V

    return-void
.end method

.method private final acquireWakeLock()V
    .locals 3

    .prologue
    .line 178
    iget-object v1, p0, Lorg/androidpn/client/NotificationService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-nez v1, :cond_0

    .line 179
    const-string v1, "power"

    invoke-virtual {p0, v1}, Lorg/androidpn/client/NotificationService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 180
    .local v0, "pm":Landroid/os/PowerManager;
    const/4 v1, 0x1

    invoke-virtual {p0}, Lorg/androidpn/client/NotificationService;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    iput-object v1, p0, Lorg/androidpn/client/NotificationService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 182
    .end local v0    # "pm":Landroid/os/PowerManager;
    :cond_0
    iget-object v1, p0, Lorg/androidpn/client/NotificationService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v1, :cond_1

    .line 183
    iget-object v1, p0, Lorg/androidpn/client/NotificationService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 184
    sget-object v1, Lorg/androidpn/client/NotificationService;->LOGTAG:Ljava/lang/String;

    const-string v2, "mWakeLock.acquire()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 186
    :cond_1
    return-void
.end method

.method private avoidServerBeKill()V
    .locals 3

    .prologue
    .line 128
    const/4 v0, 0x1

    .line 129
    .local v0, "ID":I
    new-instance v1, Landroid/app/Notification;

    invoke-direct {v1}, Landroid/app/Notification;-><init>()V

    .line 130
    .local v1, "notification":Landroid/app/Notification;
    const/4 v2, 0x1

    invoke-virtual {p0, v2, v1}, Lorg/androidpn/client/NotificationService;->startForeground(ILandroid/app/Notification;)V

    .line 131
    return-void
.end method

.method public static getIntent(Landroid/content/Context;)Landroid/content/Intent;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 174
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lorg/androidpn/client/NotificationService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    return-object v0
.end method

.method public static getNotificationService()Lorg/androidpn/client/NotificationService;
    .locals 1

    .prologue
    .line 285
    sget-object v0, Lorg/androidpn/client/NotificationService;->mService:Lorg/androidpn/client/NotificationService;

    return-object v0
.end method

.method private registerConnectivityReceiver()V
    .locals 4

    .prologue
    .line 251
    sget-object v1, Lorg/androidpn/client/NotificationService;->LOGTAG:Ljava/lang/String;

    const-string v2, "registerConnectivityReceiver()..."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 252
    iget-object v1, p0, Lorg/androidpn/client/NotificationService;->telephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v2, p0, Lorg/androidpn/client/NotificationService;->phoneStateListener:Landroid/telephony/PhoneStateListener;

    .line 253
    const/16 v3, 0x40

    .line 252
    invoke-virtual {v1, v2, v3}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 254
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 256
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 257
    iget-object v1, p0, Lorg/androidpn/client/NotificationService;->connectivityReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lorg/androidpn/client/NotificationService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 258
    return-void
.end method

.method private registerNotificationReceiver()V
    .locals 2

    .prologue
    .line 239
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 240
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "org.androidpn.client.SHOW_NOTIFICATION"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 241
    const-string v1, "org.androidpn.client.NOTIFICATION_CLICKED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 242
    const-string v1, "org.androidpn.client.NOTIFICATION_CLEARED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 243
    iget-object v1, p0, Lorg/androidpn/client/NotificationService;->notificationReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lorg/androidpn/client/NotificationService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 244
    return-void
.end method

.method private final releaseWakeLock()V
    .locals 2

    .prologue
    .line 189
    sget-object v0, Lorg/androidpn/client/NotificationService;->LOGTAG:Ljava/lang/String;

    const-string v1, "releaseWakeLock"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 190
    iget-object v0, p0, Lorg/androidpn/client/NotificationService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_0

    .line 191
    iget-object v0, p0, Lorg/androidpn/client/NotificationService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 192
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/androidpn/client/NotificationService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 194
    :cond_0
    return-void
.end method

.method private start()V
    .locals 2

    .prologue
    .line 268
    sget-object v0, Lorg/androidpn/client/NotificationService;->LOGTAG:Ljava/lang/String;

    const-string v1, "start()..."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 269
    invoke-direct {p0}, Lorg/androidpn/client/NotificationService;->registerNotificationReceiver()V

    .line 270
    invoke-direct {p0}, Lorg/androidpn/client/NotificationService;->registerConnectivityReceiver()V

    .line 271
    iget-object v0, p0, Lorg/androidpn/client/NotificationService;->xmppManager:Lorg/androidpn/client/XmppManager;

    invoke-virtual {v0}, Lorg/androidpn/client/XmppManager;->connect()V

    .line 272
    return-void
.end method

.method private stop()V
    .locals 2

    .prologue
    .line 275
    sget-object v0, Lorg/androidpn/client/NotificationService;->LOGTAG:Ljava/lang/String;

    const-string v1, "stop()..."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 276
    invoke-direct {p0}, Lorg/androidpn/client/NotificationService;->unregisterNotificationReceiver()V

    .line 277
    invoke-direct {p0}, Lorg/androidpn/client/NotificationService;->unregisterConnectivityReceiver()V

    .line 278
    iget-object v0, p0, Lorg/androidpn/client/NotificationService;->xmppManager:Lorg/androidpn/client/XmppManager;

    invoke-virtual {v0}, Lorg/androidpn/client/XmppManager;->disconnect()V

    .line 279
    iget-object v0, p0, Lorg/androidpn/client/NotificationService;->executorService:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    .line 280
    invoke-direct {p0}, Lorg/androidpn/client/NotificationService;->releaseWakeLock()V

    .line 281
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/androidpn/client/NotificationService;->stopForeground(Z)V

    .line 282
    return-void
.end method

.method private unregisterConnectivityReceiver()V
    .locals 3

    .prologue
    .line 261
    sget-object v0, Lorg/androidpn/client/NotificationService;->LOGTAG:Ljava/lang/String;

    const-string v1, "unregisterConnectivityReceiver()..."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 262
    iget-object v0, p0, Lorg/androidpn/client/NotificationService;->telephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v1, p0, Lorg/androidpn/client/NotificationService;->phoneStateListener:Landroid/telephony/PhoneStateListener;

    .line 263
    const/4 v2, 0x0

    .line 262
    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 264
    iget-object v0, p0, Lorg/androidpn/client/NotificationService;->connectivityReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lorg/androidpn/client/NotificationService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 265
    return-void
.end method

.method private unregisterNotificationReceiver()V
    .locals 1

    .prologue
    .line 247
    iget-object v0, p0, Lorg/androidpn/client/NotificationService;->notificationReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lorg/androidpn/client/NotificationService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 248
    return-void
.end method


# virtual methods
.method public connect()V
    .locals 2

    .prologue
    .line 221
    sget-object v0, Lorg/androidpn/client/NotificationService;->LOGTAG:Ljava/lang/String;

    const-string v1, "connect()..."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 222
    iget-object v0, p0, Lorg/androidpn/client/NotificationService;->taskSubmitter:Lorg/androidpn/client/NotificationService$TaskSubmitter;

    new-instance v1, Lorg/androidpn/client/NotificationService$2;

    invoke-direct {v1, p0}, Lorg/androidpn/client/NotificationService$2;-><init>(Lorg/androidpn/client/NotificationService;)V

    invoke-virtual {v0, v1}, Lorg/androidpn/client/NotificationService$TaskSubmitter;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 227
    return-void
.end method

.method public disconnect()V
    .locals 2

    .prologue
    .line 230
    sget-object v0, Lorg/androidpn/client/NotificationService;->LOGTAG:Ljava/lang/String;

    const-string v1, "disconnect()..."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 231
    iget-object v0, p0, Lorg/androidpn/client/NotificationService;->taskSubmitter:Lorg/androidpn/client/NotificationService$TaskSubmitter;

    new-instance v1, Lorg/androidpn/client/NotificationService$3;

    invoke-direct {v1, p0}, Lorg/androidpn/client/NotificationService$3;-><init>(Lorg/androidpn/client/NotificationService;)V

    invoke-virtual {v0, v1}, Lorg/androidpn/client/NotificationService$TaskSubmitter;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 236
    return-void
.end method

.method public getDeviceId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 217
    iget-object v0, p0, Lorg/androidpn/client/NotificationService;->deviceId:Ljava/lang/String;

    return-object v0
.end method

.method public getExecutorService()Ljava/util/concurrent/ExecutorService;
    .locals 1

    .prologue
    .line 197
    iget-object v0, p0, Lorg/androidpn/client/NotificationService;->executorService:Ljava/util/concurrent/ExecutorService;

    return-object v0
.end method

.method public getSharedPreferences()Landroid/content/SharedPreferences;
    .locals 1

    .prologue
    .line 213
    iget-object v0, p0, Lorg/androidpn/client/NotificationService;->sharedPrefs:Landroid/content/SharedPreferences;

    return-object v0
.end method

.method public getTaskSubmitter()Lorg/androidpn/client/NotificationService$TaskSubmitter;
    .locals 1

    .prologue
    .line 201
    iget-object v0, p0, Lorg/androidpn/client/NotificationService;->taskSubmitter:Lorg/androidpn/client/NotificationService$TaskSubmitter;

    return-object v0
.end method

.method public getTaskTracker()Lorg/androidpn/client/NotificationService$TaskTracker;
    .locals 1

    .prologue
    .line 205
    iget-object v0, p0, Lorg/androidpn/client/NotificationService;->taskTracker:Lorg/androidpn/client/NotificationService$TaskTracker;

    return-object v0
.end method

.method public getXmppManager()Lorg/androidpn/client/XmppManager;
    .locals 1

    .prologue
    .line 209
    iget-object v0, p0, Lorg/androidpn/client/NotificationService;->xmppManager:Lorg/androidpn/client/XmppManager;

    return-object v0
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 158
    sget-object v0, Lorg/androidpn/client/NotificationService;->LOGTAG:Ljava/lang/String;

    const-string v1, "onBind()..."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 159
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .locals 5

    .prologue
    .line 90
    sget-object v1, Lorg/androidpn/client/NotificationService;->LOGTAG:Ljava/lang/String;

    const-string v2, "onCreate()..."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    const-string v1, "phone"

    invoke-virtual {p0, v1}, Lorg/androidpn/client/NotificationService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    iput-object v1, p0, Lorg/androidpn/client/NotificationService;->telephonyManager:Landroid/telephony/TelephonyManager;

    .line 93
    const-string v1, "client_preferences"

    .line 94
    const/4 v2, 0x0

    .line 93
    invoke-virtual {p0, v1, v2}, Lorg/androidpn/client/NotificationService;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    iput-object v1, p0, Lorg/androidpn/client/NotificationService;->sharedPrefs:Landroid/content/SharedPreferences;

    .line 97
    iget-object v1, p0, Lorg/androidpn/client/NotificationService;->telephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lorg/androidpn/client/NotificationService;->deviceId:Ljava/lang/String;

    .line 98
    iget-object v1, p0, Lorg/androidpn/client/NotificationService;->sharedPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 99
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v1, "DEVICE_ID"

    iget-object v2, p0, Lorg/androidpn/client/NotificationService;->deviceId:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 100
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 103
    iget-object v1, p0, Lorg/androidpn/client/NotificationService;->deviceId:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/androidpn/client/NotificationService;->deviceId:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_0

    .line 104
    iget-object v1, p0, Lorg/androidpn/client/NotificationService;->deviceId:Ljava/lang/String;

    const-string v2, "0+"

    invoke-virtual {v1, v2}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 105
    :cond_0
    iget-object v1, p0, Lorg/androidpn/client/NotificationService;->sharedPrefs:Landroid/content/SharedPreferences;

    const-string v2, "EMULATOR_DEVICE_ID"

    invoke-interface {v1, v2}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 106
    iget-object v1, p0, Lorg/androidpn/client/NotificationService;->sharedPrefs:Landroid/content/SharedPreferences;

    const-string v2, "EMULATOR_DEVICE_ID"

    .line 107
    const-string v3, ""

    .line 106
    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lorg/androidpn/client/NotificationService;->deviceId:Ljava/lang/String;

    .line 116
    :cond_1
    :goto_0
    sget-object v1, Lorg/androidpn/client/NotificationService;->LOGTAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "deviceId="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lorg/androidpn/client/NotificationService;->deviceId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    new-instance v1, Lorg/androidpn/client/XmppManager;

    invoke-direct {v1, p0}, Lorg/androidpn/client/XmppManager;-><init>(Lorg/androidpn/client/NotificationService;)V

    iput-object v1, p0, Lorg/androidpn/client/NotificationService;->xmppManager:Lorg/androidpn/client/XmppManager;

    .line 120
    iget-object v1, p0, Lorg/androidpn/client/NotificationService;->taskSubmitter:Lorg/androidpn/client/NotificationService$TaskSubmitter;

    new-instance v2, Lorg/androidpn/client/NotificationService$1;

    invoke-direct {v2, p0}, Lorg/androidpn/client/NotificationService$1;-><init>(Lorg/androidpn/client/NotificationService;)V

    invoke-virtual {v1, v2}, Lorg/androidpn/client/NotificationService$TaskSubmitter;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 125
    return-void

    .line 109
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "EMU"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 110
    new-instance v2, Ljava/util/Random;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-direct {v2, v3, v4}, Ljava/util/Random;-><init>(J)V

    invoke-virtual {v2}, Ljava/util/Random;->nextLong()J

    move-result-wide v2

    .line 109
    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 111
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 109
    iput-object v1, p0, Lorg/androidpn/client/NotificationService;->deviceId:Ljava/lang/String;

    .line 112
    const-string v1, "EMULATOR_DEVICE_ID"

    iget-object v2, p0, Lorg/androidpn/client/NotificationService;->deviceId:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 113
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 3

    .prologue
    .line 147
    sget-object v1, Lorg/androidpn/client/NotificationService;->LOGTAG:Ljava/lang/String;

    const-string v2, "onDestroy()..."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    invoke-direct {p0}, Lorg/androidpn/client/NotificationService;->stop()V

    .line 151
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 152
    .local v0, "localIntent":Landroid/content/Intent;
    const-class v1, Lorg/androidpn/client/NotificationService;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 153
    invoke-virtual {p0, v0}, Lorg/androidpn/client/NotificationService;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 154
    return-void
.end method

.method public onRebind(Landroid/content/Intent;)V
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 164
    sget-object v0, Lorg/androidpn/client/NotificationService;->LOGTAG:Ljava/lang/String;

    const-string v1, "onRebind()..."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 165
    return-void
.end method

.method public onStart(Landroid/content/Intent;I)V
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "startId"    # I

    .prologue
    .line 135
    sget-object v0, Lorg/androidpn/client/NotificationService;->LOGTAG:Ljava/lang/String;

    const-string v1, "onStart()..."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    invoke-direct {p0}, Lorg/androidpn/client/NotificationService;->acquireWakeLock()V

    .line 137
    invoke-direct {p0}, Lorg/androidpn/client/NotificationService;->avoidServerBeKill()V

    .line 138
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "flags"    # I
    .param p3, "startId"    # I

    .prologue
    .line 142
    const/4 v0, 0x3

    invoke-super {p0, p1, v0, p3}, Landroid/app/Service;->onStartCommand(Landroid/content/Intent;II)I

    move-result v0

    return v0
.end method

.method public onUnbind(Landroid/content/Intent;)Z
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 169
    sget-object v0, Lorg/androidpn/client/NotificationService;->LOGTAG:Ljava/lang/String;

    const-string v1, "onUnbind()..."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 170
    const/4 v0, 0x1

    return v0
.end method
