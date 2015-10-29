.class public Lorg/androidpn/client/Notifier;
.super Ljava/lang/Object;
.source "Notifier.java"


# static fields
.field private static final LOGTAG:Ljava/lang/String;

.field private static requestCode:I


# instance fields
.field private context:Landroid/content/Context;

.field private notificationManager:Landroid/app/NotificationManager;

.field private sharedPrefs:Landroid/content/SharedPreferences;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 42
    const-class v0, Lorg/androidpn/client/Notifier;

    invoke-static {v0}, Lorg/androidpn/client/LogUtil;->makeLogTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/androidpn/client/Notifier;->LOGTAG:Ljava/lang/String;

    .line 49
    const/16 v0, 0x3e8

    sput v0, Lorg/androidpn/client/Notifier;->requestCode:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    iput-object p1, p0, Lorg/androidpn/client/Notifier;->context:Landroid/content/Context;

    .line 54
    const-string v0, "client_preferences"

    const/4 v1, 0x0

    .line 53
    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lorg/androidpn/client/Notifier;->sharedPrefs:Landroid/content/SharedPreferences;

    .line 56
    const-string v0, "notification"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 55
    iput-object v0, p0, Lorg/androidpn/client/Notifier;->notificationManager:Landroid/app/NotificationManager;

    .line 57
    return-void
.end method

.method private createNotification(Ljava/lang/String;)Landroid/app/Notification;
    .locals 3
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 202
    new-instance v0, Landroid/app/Notification;

    invoke-direct {v0}, Landroid/app/Notification;-><init>()V

    .line 203
    .local v0, "notification":Landroid/app/Notification;
    invoke-direct {p0}, Lorg/androidpn/client/Notifier;->getNotificationIcon()I

    move-result v1

    iput v1, v0, Landroid/app/Notification;->icon:I

    .line 204
    const/4 v1, 0x4

    iput v1, v0, Landroid/app/Notification;->defaults:I

    .line 205
    invoke-direct {p0}, Lorg/androidpn/client/Notifier;->isNotificationSoundEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 206
    iget v1, v0, Landroid/app/Notification;->defaults:I

    or-int/lit8 v1, v1, 0x1

    iput v1, v0, Landroid/app/Notification;->defaults:I

    .line 208
    :cond_0
    invoke-direct {p0}, Lorg/androidpn/client/Notifier;->isNotificationVibrateEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 209
    iget v1, v0, Landroid/app/Notification;->defaults:I

    or-int/lit8 v1, v1, 0x2

    iput v1, v0, Landroid/app/Notification;->defaults:I

    .line 211
    :cond_1
    iget v1, v0, Landroid/app/Notification;->flags:I

    or-int/lit8 v1, v1, 0x10

    iput v1, v0, Landroid/app/Notification;->flags:I

    .line 212
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, v0, Landroid/app/Notification;->when:J

    .line 213
    iput-object p1, v0, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    .line 214
    return-object v0
.end method

.method private getNotificationIcon()I
    .locals 3

    .prologue
    .line 218
    iget-object v0, p0, Lorg/androidpn/client/Notifier;->sharedPrefs:Landroid/content/SharedPreferences;

    const-string v1, "NOTIFICATION_ICON"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method private isNotificationEnabled()Z
    .locals 3

    .prologue
    .line 222
    iget-object v0, p0, Lorg/androidpn/client/Notifier;->sharedPrefs:Landroid/content/SharedPreferences;

    const-string v1, "SETTINGS_NOTIFICATION_ENABLED"

    .line 223
    const/4 v2, 0x1

    .line 222
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method private isNotificationSoundEnabled()Z
    .locals 3

    .prologue
    .line 227
    iget-object v0, p0, Lorg/androidpn/client/Notifier;->sharedPrefs:Landroid/content/SharedPreferences;

    const-string v1, "SETTINGS_SOUND_ENABLED"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method private isNotificationToastEnabled()Z
    .locals 3

    .prologue
    .line 235
    iget-object v0, p0, Lorg/androidpn/client/Notifier;->sharedPrefs:Landroid/content/SharedPreferences;

    const-string v1, "SETTINGS_TOAST_ENABLED"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method private isNotificationVibrateEnabled()Z
    .locals 3

    .prologue
    .line 231
    iget-object v0, p0, Lorg/androidpn/client/Notifier;->sharedPrefs:Landroid/content/SharedPreferences;

    const-string v1, "SETTINGS_VIBRATE_ENABLED"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method private isiWiFiClientRunning(Landroid/content/Context;)Z
    .locals 8
    .param p1, "mcontext"    # Landroid/content/Context;

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 239
    const/4 v2, 0x0

    .line 241
    .local v2, "isRunning":Z
    const-string v7, "activity"

    invoke-virtual {p1, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/ActivityManager;

    .line 242
    .local v3, "manager":Landroid/app/ActivityManager;
    invoke-virtual {v3, v5}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v7

    invoke-interface {v7, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager$RunningTaskInfo;

    .line 243
    .local v1, "info":Landroid/app/ActivityManager$RunningTaskInfo;
    iget-object v7, v1, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v7}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v0

    .line 244
    .local v0, "className":Ljava/lang/String;
    iget-object v7, v1, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v7}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    .line 246
    .local v4, "packageName":Ljava/lang/String;
    if-eqz v4, :cond_0

    const-string v7, "com.pubinfo.freewifialliance"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 250
    :goto_0
    return v5

    :cond_0
    move v5, v6

    goto :goto_0
.end method


# virtual methods
.method public notify(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 14
    .param p1, "notificationId"    # Ljava/lang/String;
    .param p2, "apiKey"    # Ljava/lang/String;
    .param p3, "title"    # Ljava/lang/String;
    .param p4, "message"    # Ljava/lang/String;
    .param p5, "uri"    # Ljava/lang/String;
    .param p6, "pushType"    # Ljava/lang/String;
    .param p7, "packetId"    # Ljava/lang/String;

    .prologue
    .line 93
    sget-object v11, Lorg/androidpn/client/Notifier;->LOGTAG:Ljava/lang/String;

    const-string v12, "notify()..."

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    sget-object v11, Lorg/androidpn/client/Notifier;->LOGTAG:Ljava/lang/String;

    new-instance v12, Ljava/lang/StringBuilder;

    const-string v13, "notificationId="

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    sget-object v11, Lorg/androidpn/client/Notifier;->LOGTAG:Ljava/lang/String;

    new-instance v12, Ljava/lang/StringBuilder;

    const-string v13, "notificationApiKey="

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p2

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    sget-object v11, Lorg/androidpn/client/Notifier;->LOGTAG:Ljava/lang/String;

    new-instance v12, Ljava/lang/StringBuilder;

    const-string v13, "notificationTitle="

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p3

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    sget-object v11, Lorg/androidpn/client/Notifier;->LOGTAG:Ljava/lang/String;

    new-instance v12, Ljava/lang/StringBuilder;

    const-string v13, "notificationMessage="

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p4

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    sget-object v11, Lorg/androidpn/client/Notifier;->LOGTAG:Ljava/lang/String;

    new-instance v12, Ljava/lang/StringBuilder;

    const-string v13, "notificationUri="

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p5

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    sget-object v11, Lorg/androidpn/client/Notifier;->LOGTAG:Ljava/lang/String;

    new-instance v12, Ljava/lang/StringBuilder;

    const-string v13, "notificationPushType="

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p6

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    invoke-direct {p0}, Lorg/androidpn/client/Notifier;->isNotificationEnabled()Z

    move-result v11

    if-eqz v11, :cond_12

    .line 104
    invoke-direct {p0}, Lorg/androidpn/client/Notifier;->isNotificationToastEnabled()Z

    move-result v11

    if-eqz v11, :cond_0

    .line 105
    iget-object v11, p0, Lorg/androidpn/client/Notifier;->context:Landroid/content/Context;

    const/4 v12, 0x1

    move-object/from16 v0, p4

    invoke-static {v11, v0, v12}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v11

    invoke-virtual {v11}, Landroid/widget/Toast;->show()V

    .line 109
    :cond_0
    move-object/from16 v0, p4

    invoke-direct {p0, v0}, Lorg/androidpn/client/Notifier;->createNotification(Ljava/lang/String;)Landroid/app/Notification;

    move-result-object v8

    .line 111
    .local v8, "notification":Landroid/app/Notification;
    const/4 v9, 0x0

    .line 112
    .local v9, "preintent":Landroid/content/Intent;
    const/4 v2, 0x0

    .line 113
    .local v2, "b_show_notification_only":Z
    if-eqz p6, :cond_2

    invoke-virtual/range {p6 .. p6}, Ljava/lang/String;->length()I

    move-result v11

    if-lez v11, :cond_2

    if-eqz p5, :cond_2

    invoke-virtual/range {p5 .. p5}, Ljava/lang/String;->length()I

    move-result v11

    if-lez v11, :cond_2

    .line 114
    const-string v11, "push_update"

    move-object/from16 v0, p6

    invoke-virtual {v0, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_1

    .line 115
    const-string v11, "push_url"

    move-object/from16 v0, p6

    invoke-virtual {v0, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_1

    .line 116
    const-string v11, "push_news"

    move-object/from16 v0, p6

    invoke-virtual {v0, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_5

    .line 118
    :cond_1
    new-instance v9, Landroid/content/Intent;

    .end local v9    # "preintent":Landroid/content/Intent;
    const-string v11, "android.intent.action.VIEW"

    invoke-static/range {p5 .. p5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v12

    invoke-direct {v9, v11, v12}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 171
    .restart local v9    # "preintent":Landroid/content/Intent;
    :cond_2
    :goto_0
    if-nez v2, :cond_3

    if-nez v9, :cond_3

    .line 172
    iget-object v11, p0, Lorg/androidpn/client/Notifier;->context:Landroid/content/Context;

    .line 173
    const-string v12, "client_preferences"

    const/4 v13, 0x0

    .line 172
    invoke-virtual {v11, v12, v13}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v10

    .line 175
    .local v10, "sharedPrefs":Landroid/content/SharedPreferences;
    const-string v11, "CALLBACK_ACTIVITY_PACKAGE_NAME"

    const-string v12, ""

    .line 174
    invoke-interface {v10, v11, v12}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 177
    .local v4, "callbackActivityPackageName":Ljava/lang/String;
    const-string v11, "CALLBACK_ACTIVITY_CLASS_NAME"

    const-string v12, ""

    .line 176
    invoke-interface {v10, v11, v12}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 178
    .local v3, "callbackActivityClassName":Ljava/lang/String;
    new-instance v11, Landroid/content/Intent;

    invoke-direct {v11}, Landroid/content/Intent;-><init>()V

    invoke-virtual {v11, v4, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v9

    .line 183
    .end local v3    # "callbackActivityClassName":Ljava/lang/String;
    .end local v4    # "callbackActivityPackageName":Ljava/lang/String;
    .end local v10    # "sharedPrefs":Landroid/content/SharedPreferences;
    :cond_3
    if-eqz v9, :cond_4

    .line 184
    const/high16 v11, 0x20000000

    invoke-virtual {v9, v11}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 185
    const/high16 v11, 0x4000000

    invoke-virtual {v9, v11}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 188
    :cond_4
    iget-object v11, p0, Lorg/androidpn/client/Notifier;->context:Landroid/content/Context;

    sget v12, Lorg/androidpn/client/Notifier;->requestCode:I

    .line 189
    const/high16 v13, 0x8000000

    .line 188
    invoke-static {v11, v12, v9, v13}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v5

    .line 191
    .local v5, "contentIntent":Landroid/app/PendingIntent;
    iget-object v11, p0, Lorg/androidpn/client/Notifier;->context:Landroid/content/Context;

    move-object/from16 v0, p3

    move-object/from16 v1, p4

    invoke-virtual {v8, v11, v0, v1, v5}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 193
    iget-object v11, p0, Lorg/androidpn/client/Notifier;->notificationManager:Landroid/app/NotificationManager;

    sget v12, Lorg/androidpn/client/Notifier;->requestCode:I

    invoke-virtual {v11, v12, v8}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 194
    sget v11, Lorg/androidpn/client/Notifier;->requestCode:I

    add-int/lit8 v11, v11, 0x1

    sput v11, Lorg/androidpn/client/Notifier;->requestCode:I

    .line 198
    .end local v2    # "b_show_notification_only":Z
    .end local v5    # "contentIntent":Landroid/app/PendingIntent;
    .end local v8    # "notification":Landroid/app/Notification;
    .end local v9    # "preintent":Landroid/content/Intent;
    :goto_1
    return-void

    .line 119
    .restart local v2    # "b_show_notification_only":Z
    .restart local v8    # "notification":Landroid/app/Notification;
    .restart local v9    # "preintent":Landroid/content/Intent;
    :cond_5
    const-string v11, "push_intent"

    move-object/from16 v0, p6

    invoke-virtual {v0, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_6

    .line 120
    move-object/from16 v6, p5

    .line 121
    .local v6, "intent_action":Ljava/lang/String;
    new-instance v9, Landroid/content/Intent;

    .end local v9    # "preintent":Landroid/content/Intent;
    invoke-direct {v9, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 122
    .restart local v9    # "preintent":Landroid/content/Intent;
    goto :goto_0

    .end local v6    # "intent_action":Ljava/lang/String;
    :cond_6
    const-string v11, "push_app_redirect"

    move-object/from16 v0, p6

    invoke-virtual {v0, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_10

    .line 123
    iget-object v11, p0, Lorg/androidpn/client/Notifier;->context:Landroid/content/Context;

    invoke-direct {p0, v11}, Lorg/androidpn/client/Notifier;->isiWiFiClientRunning(Landroid/content/Context;)Z

    move-result v7

    .line 125
    .local v7, "isOurClientRunning":Z
    const-string v11, "connection"

    move-object/from16 v0, p5

    invoke-virtual {v0, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_8

    .line 126
    if-eqz v7, :cond_7

    .line 127
    new-instance v11, Landroid/content/Intent;

    invoke-direct {v11}, Landroid/content/Intent;-><init>()V

    const-string v12, "com.pubinfo.freewifialliance"

    const-string v13, "com.pubinfo.freewifialliance.view.CenterPage"

    invoke-virtual {v11, v12, v13}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v9

    .line 131
    :goto_2
    const-string v11, "center_page_tab_current_index"

    const/4 v12, 0x0

    invoke-virtual {v9, v11, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto/16 :goto_0

    .line 129
    :cond_7
    new-instance v11, Landroid/content/Intent;

    invoke-direct {v11}, Landroid/content/Intent;-><init>()V

    const-string v12, "com.pubinfo.freewifialliance"

    const-string v13, "com.pubinfo.freewifialliance.view.LoadingView"

    invoke-virtual {v11, v12, v13}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v9

    goto :goto_2

    .line 132
    :cond_8
    const-string v11, "near"

    move-object/from16 v0, p5

    invoke-virtual {v0, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_a

    .line 133
    if-eqz v7, :cond_9

    .line 134
    new-instance v11, Landroid/content/Intent;

    invoke-direct {v11}, Landroid/content/Intent;-><init>()V

    const-string v12, "com.pubinfo.freewifialliance"

    const-string v13, "com.pubinfo.freewifialliance.view.CenterPage"

    invoke-virtual {v11, v12, v13}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v9

    .line 138
    :goto_3
    const-string v11, "center_page_tab_current_index"

    const/4 v12, 0x1

    invoke-virtual {v9, v11, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto/16 :goto_0

    .line 136
    :cond_9
    new-instance v11, Landroid/content/Intent;

    invoke-direct {v11}, Landroid/content/Intent;-><init>()V

    const-string v12, "com.pubinfo.freewifialliance"

    const-string v13, "com.pubinfo.freewifialliance.view.LoadingView"

    invoke-virtual {v11, v12, v13}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v9

    goto :goto_3

    .line 139
    :cond_a
    const-string v11, "mycenter"

    move-object/from16 v0, p5

    invoke-virtual {v0, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_c

    .line 140
    if-eqz v7, :cond_b

    .line 141
    new-instance v11, Landroid/content/Intent;

    invoke-direct {v11}, Landroid/content/Intent;-><init>()V

    const-string v12, "com.pubinfo.freewifialliance"

    const-string v13, "com.pubinfo.freewifialliance.view.CenterPage"

    invoke-virtual {v11, v12, v13}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v9

    .line 145
    :goto_4
    const-string v11, "center_page_tab_current_index"

    const/4 v12, 0x2

    invoke-virtual {v9, v11, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto/16 :goto_0

    .line 143
    :cond_b
    new-instance v11, Landroid/content/Intent;

    invoke-direct {v11}, Landroid/content/Intent;-><init>()V

    const-string v12, "com.pubinfo.freewifialliance"

    const-string v13, "com.pubinfo.freewifialliance.view.LoadingView"

    invoke-virtual {v11, v12, v13}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v9

    goto :goto_4

    .line 146
    :cond_c
    const-string v11, "share"

    move-object/from16 v0, p5

    invoke-virtual {v0, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_e

    .line 147
    if-eqz v7, :cond_d

    .line 148
    new-instance v11, Landroid/content/Intent;

    invoke-direct {v11}, Landroid/content/Intent;-><init>()V

    const-string v12, "com.pubinfo.freewifialliance"

    const-string v13, "com.pubinfo.freewifialliance.view.CenterPage"

    invoke-virtual {v11, v12, v13}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v9

    .line 152
    :goto_5
    const-string v11, "center_page_tab_current_index"

    const/4 v12, 0x2

    invoke-virtual {v9, v11, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 153
    const-string v11, "QuickSharedShown"

    const/4 v12, 0x1

    invoke-virtual {v9, v11, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    goto/16 :goto_0

    .line 150
    :cond_d
    new-instance v11, Landroid/content/Intent;

    invoke-direct {v11}, Landroid/content/Intent;-><init>()V

    const-string v12, "com.pubinfo.freewifialliance"

    const-string v13, "com.pubinfo.freewifialliance.view.LoadingView"

    invoke-virtual {v11, v12, v13}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v9

    goto :goto_5

    .line 155
    :cond_e
    const-string v11, "weixin"

    move-object/from16 v0, p5

    invoke-virtual {v0, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_2

    .line 156
    if-eqz v7, :cond_f

    .line 157
    new-instance v11, Landroid/content/Intent;

    invoke-direct {v11}, Landroid/content/Intent;-><init>()V

    const-string v12, "com.pubinfo.freewifialliance"

    const-string v13, "com.pubinfo.freewifialliance.view.CenterPage"

    invoke-virtual {v11, v12, v13}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v9

    .line 161
    :goto_6
    const-string v11, "center_page_tab_current_index"

    const/4 v12, 0x2

    invoke-virtual {v9, v11, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 162
    const-string v11, "WeixinShown"

    const/4 v12, 0x1

    invoke-virtual {v9, v11, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    goto/16 :goto_0

    .line 159
    :cond_f
    new-instance v11, Landroid/content/Intent;

    invoke-direct {v11}, Landroid/content/Intent;-><init>()V

    const-string v12, "com.pubinfo.freewifialliance"

    const-string v13, "com.pubinfo.freewifialliance.view.LoadingView"

    invoke-virtual {v11, v12, v13}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v9

    goto :goto_6

    .line 164
    .end local v7    # "isOurClientRunning":Z
    :cond_10
    const-string v11, "push_text"

    move-object/from16 v0, p6

    invoke-virtual {v0, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_11

    .line 165
    const/4 v2, 0x0

    .line 166
    goto/16 :goto_0

    .line 167
    :cond_11
    const/4 v2, 0x0

    goto/16 :goto_0

    .line 196
    .end local v2    # "b_show_notification_only":Z
    .end local v8    # "notification":Landroid/app/Notification;
    .end local v9    # "preintent":Landroid/content/Intent;
    :cond_12
    sget-object v11, Lorg/androidpn/client/Notifier;->LOGTAG:Ljava/lang/String;

    const-string v12, "Notificaitons disabled."

    invoke-static {v11, v12}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1
.end method

.method public notify(Lorg/jivesoftware/smack/packet/IQ;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .param p1, "iq"    # Lorg/jivesoftware/smack/packet/IQ;
    .param p2, "title"    # Ljava/lang/String;
    .param p3, "message"    # Ljava/lang/String;

    .prologue
    .line 60
    invoke-direct {p0}, Lorg/androidpn/client/Notifier;->isNotificationEnabled()Z

    move-result v4

    if-nez v4, :cond_1

    .line 61
    sget-object v4, Lorg/androidpn/client/Notifier;->LOGTAG:Ljava/lang/String;

    const-string v5, "Notificaitons disabled."

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    :cond_0
    :goto_0
    return-void

    .line 64
    :cond_1
    invoke-direct {p0}, Lorg/androidpn/client/Notifier;->isNotificationToastEnabled()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 65
    iget-object v4, p0, Lorg/androidpn/client/Notifier;->context:Landroid/content/Context;

    const/4 v5, 0x1

    invoke-static {v4, p3, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    .line 69
    :cond_2
    invoke-direct {p0, p3}, Lorg/androidpn/client/Notifier;->createNotification(Ljava/lang/String;)Landroid/app/Notification;

    move-result-object v3

    .line 70
    .local v3, "notification":Landroid/app/Notification;
    sget-object v4, Lcom/githang/android/apnbb/NotifierConfig;->notifyActivity:Ljava/lang/String;

    if-eqz v4, :cond_0

    .line 72
    :try_start_0
    new-instance v2, Landroid/content/Intent;

    iget-object v4, p0, Lorg/androidpn/client/Notifier;->context:Landroid/content/Context;

    sget-object v5, Lcom/githang/android/apnbb/NotifierConfig;->notifyActivity:Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    invoke-direct {v2, v4, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 73
    .local v2, "intent":Landroid/content/Intent;
    const-string v4, "INTENT_IQ"

    invoke-virtual {v2, v4, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 74
    iget-object v4, p0, Lorg/androidpn/client/Notifier;->context:Landroid/content/Context;

    sget v5, Lorg/androidpn/client/Notifier;->requestCode:I

    .line 75
    const/high16 v6, 0x8000000

    .line 74
    invoke-static {v4, v5, v2, v6}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 76
    .local v0, "contentIntent":Landroid/app/PendingIntent;
    iget-object v4, p0, Lorg/androidpn/client/Notifier;->context:Landroid/content/Context;

    invoke-virtual {v3, v4, p2, p3, v0}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 78
    iget-object v4, p0, Lorg/androidpn/client/Notifier;->notificationManager:Landroid/app/NotificationManager;

    sget v5, Lorg/androidpn/client/Notifier;->requestCode:I

    invoke-virtual {v4, v5, v3}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 79
    sget v4, Lorg/androidpn/client/Notifier;->requestCode:I

    add-int/lit8 v4, v4, 0x1

    sput v4, Lorg/androidpn/client/Notifier;->requestCode:I
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 80
    .end local v0    # "contentIntent":Landroid/app/PendingIntent;
    .end local v2    # "intent":Landroid/content/Intent;
    :catch_0
    move-exception v1

    .line 81
    .local v1, "e":Ljava/lang/ClassNotFoundException;
    sget-object v4, Lorg/androidpn/client/Notifier;->LOGTAG:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/ClassNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
