.class public final Lorg/androidpn/client/ServiceManager;
.super Ljava/lang/Object;
.source "ServiceManager.java"


# static fields
.field private static final LOGTAG:Ljava/lang/String;

.field private static mInstance:Lorg/androidpn/client/ServiceManager;


# instance fields
.field private apiKey:Ljava/lang/String;

.field private callbackActivityClassName:Ljava/lang/String;

.field private callbackActivityPackageName:Ljava/lang/String;

.field private context:Landroid/content/Context;

.field private props:Ljava/util/Properties;

.field private sharedPrefs:Landroid/content/SharedPreferences;

.field private version:Ljava/lang/String;

.field private xmppHost:Ljava/lang/String;

.field private xmppPort:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 40
    const-class v0, Lorg/androidpn/client/ServiceManager;

    invoke-static {v0}, Lorg/androidpn/client/LogUtil;->makeLogTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    .line 39
    sput-object v0, Lorg/androidpn/client/ServiceManager;->LOGTAG:Ljava/lang/String;

    .line 42
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v5, 0x0

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    const-string v2, "0.7.0"

    iput-object v2, p0, Lorg/androidpn/client/ServiceManager;->version:Ljava/lang/String;

    .line 63
    iput-object p1, p0, Lorg/androidpn/client/ServiceManager;->context:Landroid/content/Context;

    .line 64
    sput-object p0, Lorg/androidpn/client/ServiceManager;->mInstance:Lorg/androidpn/client/ServiceManager;

    .line 66
    instance-of v2, p1, Landroid/app/Activity;

    if-eqz v2, :cond_0

    .line 67
    sget-object v2, Lorg/androidpn/client/ServiceManager;->LOGTAG:Ljava/lang/String;

    const-string v3, "Callback Activity..."

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, p1

    .line 68
    check-cast v0, Landroid/app/Activity;

    .line 69
    .local v0, "callbackActivity":Landroid/app/Activity;
    invoke-virtual {v0}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lorg/androidpn/client/ServiceManager;->callbackActivityPackageName:Ljava/lang/String;

    .line 70
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lorg/androidpn/client/ServiceManager;->callbackActivityClassName:Ljava/lang/String;

    .line 73
    .end local v0    # "callbackActivity":Landroid/app/Activity;
    :cond_0
    invoke-direct {p0}, Lorg/androidpn/client/ServiceManager;->loadProperties()Ljava/util/Properties;

    move-result-object v2

    iput-object v2, p0, Lorg/androidpn/client/ServiceManager;->props:Ljava/util/Properties;

    .line 74
    iget-object v2, p0, Lorg/androidpn/client/ServiceManager;->props:Ljava/util/Properties;

    const-string v3, "apiKey"

    const-string v4, "1234567890"

    invoke-virtual {v2, v3, v4}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lorg/androidpn/client/ServiceManager;->apiKey:Ljava/lang/String;

    .line 75
    iget-object v2, p0, Lorg/androidpn/client/ServiceManager;->props:Ljava/util/Properties;

    const-string v3, "xmppHost"

    const-string v4, "60.191.109.207"

    invoke-virtual {v2, v3, v4}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lorg/androidpn/client/ServiceManager;->xmppHost:Ljava/lang/String;

    .line 76
    iget-object v2, p0, Lorg/androidpn/client/ServiceManager;->props:Ljava/util/Properties;

    const-string v3, "xmppPort"

    const-string v4, "5222"

    invoke-virtual {v2, v3, v4}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lorg/androidpn/client/ServiceManager;->xmppPort:Ljava/lang/String;

    .line 77
    iget-object v2, p0, Lorg/androidpn/client/ServiceManager;->props:Ljava/util/Properties;

    const-string v3, "packetListener"

    invoke-virtual {v2, v3, v5}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/githang/android/apnbb/NotifierConfig;->packetListener:Ljava/lang/String;

    .line 78
    iget-object v2, p0, Lorg/androidpn/client/ServiceManager;->props:Ljava/util/Properties;

    const-string v3, "iq"

    invoke-virtual {v2, v3, v5}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/githang/android/apnbb/NotifierConfig;->iq:Ljava/lang/String;

    .line 79
    iget-object v2, p0, Lorg/androidpn/client/ServiceManager;->props:Ljava/util/Properties;

    const-string v3, "iqProvider"

    invoke-virtual {v2, v3, v5}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/githang/android/apnbb/NotifierConfig;->iqProvider:Ljava/lang/String;

    .line 80
    iget-object v2, p0, Lorg/androidpn/client/ServiceManager;->props:Ljava/util/Properties;

    const-string v3, "notifyActivity"

    invoke-virtual {v2, v3, v5}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/githang/android/apnbb/NotifierConfig;->notifyActivity:Ljava/lang/String;

    .line 81
    sget-object v2, Lorg/androidpn/client/ServiceManager;->LOGTAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "apiKey="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lorg/androidpn/client/ServiceManager;->apiKey:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    sget-object v2, Lorg/androidpn/client/ServiceManager;->LOGTAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "xmppHost="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lorg/androidpn/client/ServiceManager;->xmppHost:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    sget-object v2, Lorg/androidpn/client/ServiceManager;->LOGTAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "xmppPort="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lorg/androidpn/client/ServiceManager;->xmppPort:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    sget-object v2, Lorg/androidpn/client/ServiceManager;->LOGTAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "packetListener="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v4, Lcom/githang/android/apnbb/NotifierConfig;->packetListener:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    sget-object v2, Lorg/androidpn/client/ServiceManager;->LOGTAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "iq="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v4, Lcom/githang/android/apnbb/NotifierConfig;->iq:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    sget-object v2, Lorg/androidpn/client/ServiceManager;->LOGTAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "iqProvider="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v4, Lcom/githang/android/apnbb/NotifierConfig;->iqProvider:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    sget-object v2, Lorg/androidpn/client/ServiceManager;->LOGTAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "notifyActivity"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v4, Lcom/githang/android/apnbb/NotifierConfig;->notifyActivity:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    const-string v2, "client_preferences"

    const/4 v3, 0x0

    .line 89
    invoke-virtual {p1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    iput-object v2, p0, Lorg/androidpn/client/ServiceManager;->sharedPrefs:Landroid/content/SharedPreferences;

    .line 91
    iget-object v2, p0, Lorg/androidpn/client/ServiceManager;->sharedPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 92
    .local v1, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v2, "API_KEY"

    iget-object v3, p0, Lorg/androidpn/client/ServiceManager;->apiKey:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 93
    const-string v2, "VERSION"

    iget-object v3, p0, Lorg/androidpn/client/ServiceManager;->version:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 94
    const-string v2, "XMPP_HOST"

    iget-object v3, p0, Lorg/androidpn/client/ServiceManager;->xmppHost:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 95
    const-string v2, "XMPP_PORT"

    iget-object v3, p0, Lorg/androidpn/client/ServiceManager;->xmppPort:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 96
    const-string v2, "CALLBACK_ACTIVITY_PACKAGE_NAME"

    .line 97
    iget-object v3, p0, Lorg/androidpn/client/ServiceManager;->callbackActivityPackageName:Ljava/lang/String;

    .line 96
    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 98
    const-string v2, "CALLBACK_ACTIVITY_CLASS_NAME"

    .line 99
    iget-object v3, p0, Lorg/androidpn/client/ServiceManager;->callbackActivityClassName:Ljava/lang/String;

    .line 98
    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 100
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 101
    const v2, 0xea60

    invoke-static {v2}, Lorg/jivesoftware/smack/SmackConfiguration;->setKeepAliveInterval(I)V

    .line 102
    return-void
.end method

.method static synthetic access$0(Lorg/androidpn/client/ServiceManager;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lorg/androidpn/client/ServiceManager;->context:Landroid/content/Context;

    return-object v0
.end method

.method public static getInstance(Landroid/content/Context;)Lorg/androidpn/client/ServiceManager;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 105
    sget-object v0, Lorg/androidpn/client/ServiceManager;->mInstance:Lorg/androidpn/client/ServiceManager;

    if-nez v0, :cond_0

    .line 106
    new-instance v0, Lorg/androidpn/client/ServiceManager;

    invoke-direct {v0, p0}, Lorg/androidpn/client/ServiceManager;-><init>(Landroid/content/Context;)V

    sput-object v0, Lorg/androidpn/client/ServiceManager;->mInstance:Lorg/androidpn/client/ServiceManager;

    .line 108
    :cond_0
    sget-object v0, Lorg/androidpn/client/ServiceManager;->mInstance:Lorg/androidpn/client/ServiceManager;

    return-object v0
.end method

.method private loadProperties()Ljava/util/Properties;
    .locals 7

    .prologue
    .line 129
    new-instance v2, Ljava/util/Properties;

    invoke-direct {v2}, Ljava/util/Properties;-><init>()V

    .line 131
    .local v2, "props":Ljava/util/Properties;
    :try_start_0
    iget-object v3, p0, Lorg/androidpn/client/ServiceManager;->context:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const-string v4, "androidpn"

    const-string v5, "raw"

    .line 132
    iget-object v6, p0, Lorg/androidpn/client/ServiceManager;->context:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    .line 131
    invoke-virtual {v3, v4, v5, v6}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 133
    .local v1, "id":I
    iget-object v3, p0, Lorg/androidpn/client/ServiceManager;->context:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 137
    .end local v1    # "id":I
    :goto_0
    return-object v2

    .line 134
    :catch_0
    move-exception v0

    .line 135
    .local v0, "e":Ljava/lang/Exception;
    sget-object v3, Lorg/androidpn/client/ServiceManager;->LOGTAG:Ljava/lang/String;

    const-string v4, "Could not find the properties file."

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public static viewNotificationSettings(Landroid/content/Context;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 147
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 148
    const-class v2, Lorg/androidpn/client/NotificationSettingsActivity;

    .line 147
    invoke-virtual {v1, p0, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v0

    .line 149
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 150
    return-void
.end method


# virtual methods
.method public connectToPnServer()V
    .locals 3

    .prologue
    .line 153
    invoke-static {}, Lorg/androidpn/client/NotificationService;->getNotificationService()Lorg/androidpn/client/NotificationService;

    move-result-object v0

    .line 154
    .local v0, "mNotifyService":Lorg/androidpn/client/NotificationService;
    if-eqz v0, :cond_0

    .line 155
    invoke-virtual {v0}, Lorg/androidpn/client/NotificationService;->connect()V

    .line 159
    :goto_0
    return-void

    .line 157
    :cond_0
    const-string v1, "ServiceManager"

    const-string v2, "connectToPnServer: getNotificationService is null "

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public disconnectPnServer()V
    .locals 3

    .prologue
    .line 162
    invoke-static {}, Lorg/androidpn/client/NotificationService;->getNotificationService()Lorg/androidpn/client/NotificationService;

    move-result-object v0

    .line 163
    .local v0, "mNotifyService":Lorg/androidpn/client/NotificationService;
    if-eqz v0, :cond_0

    .line 164
    invoke-virtual {v0}, Lorg/androidpn/client/NotificationService;->disconnect()V

    .line 168
    :goto_0
    return-void

    .line 166
    :cond_0
    const-string v1, "ServiceManager"

    const-string v2, "connectToPnServer: disconnectPnServer is null "

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setNotificationIcon(I)V
    .locals 2
    .param p1, "iconId"    # I

    .prologue
    .line 141
    iget-object v1, p0, Lorg/androidpn/client/ServiceManager;->sharedPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 142
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v1, "NOTIFICATION_ICON"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 143
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 144
    return-void
.end method

.method public startService()V
    .locals 2

    .prologue
    .line 112
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lorg/androidpn/client/ServiceManager$1;

    invoke-direct {v1, p0}, Lorg/androidpn/client/ServiceManager$1;-><init>(Lorg/androidpn/client/ServiceManager;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 120
    .local v0, "serviceThread":Ljava/lang/Thread;
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 121
    return-void
.end method

.method public stopService()V
    .locals 2

    .prologue
    .line 124
    iget-object v1, p0, Lorg/androidpn/client/ServiceManager;->context:Landroid/content/Context;

    invoke-static {v1}, Lorg/androidpn/client/NotificationService;->getIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    .line 125
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lorg/androidpn/client/ServiceManager;->context:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->stopService(Landroid/content/Intent;)Z

    .line 126
    return-void
.end method
