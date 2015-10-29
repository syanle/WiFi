.class public Lcom/pubinfo/androidpn/client/AndroidpnStatusReceiver;
.super Landroid/content/BroadcastReceiver;
.source "AndroidpnStatusReceiver.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String;

.field private static final STR_CITY_ONE:Ljava/lang/String; = "\u5e02"

.field private static final STR_CITY_SEC:Ljava/lang/String; = "\u5730\u533a"

.field private static final STR_PROVINCE:Ljava/lang/String; = "\u7701"

.field private static commonMethods:Lcom/iwifi/sdk/protocol/impl/SDKCommonMotheds;

.field private static mInstance:Lcom/pubinfo/androidpn/client/AndroidpnStatusReceiver;


# instance fields
.field Address:Ljava/lang/String;

.field Countrycode:Ljava/lang/String;

.field Latitude:Ljava/lang/String;

.field Longitude:Ljava/lang/String;

.field PhoneNum:Ljava/lang/String;

.field private lbm:Landroid/support/v4/content/LocalBroadcastManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 44
    const-class v0, Lcom/pubinfo/androidpn/client/AndroidpnStatusReceiver;

    invoke-static {v0}, Lorg/androidpn/client/LogUtil;->makeLogTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    .line 43
    sput-object v0, Lcom/pubinfo/androidpn/client/AndroidpnStatusReceiver;->LOG_TAG:Ljava/lang/String;

    .line 197
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 41
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 49
    iput-object v0, p0, Lcom/pubinfo/androidpn/client/AndroidpnStatusReceiver;->Countrycode:Ljava/lang/String;

    .line 50
    iput-object v0, p0, Lcom/pubinfo/androidpn/client/AndroidpnStatusReceiver;->PhoneNum:Ljava/lang/String;

    .line 51
    iput-object v0, p0, Lcom/pubinfo/androidpn/client/AndroidpnStatusReceiver;->Latitude:Ljava/lang/String;

    .line 52
    iput-object v0, p0, Lcom/pubinfo/androidpn/client/AndroidpnStatusReceiver;->Longitude:Ljava/lang/String;

    .line 53
    iput-object v0, p0, Lcom/pubinfo/androidpn/client/AndroidpnStatusReceiver;->Address:Ljava/lang/String;

    .line 41
    return-void
.end method

.method private UploadUserPushInfo(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 14
    .param p1, "mcontext"    # Landroid/content/Context;
    .param p2, "phoneNum"    # Ljava/lang/String;
    .param p3, "countrycode"    # Ljava/lang/String;
    .param p4, "imei"    # Ljava/lang/String;
    .param p5, "loc_latitude"    # Ljava/lang/String;
    .param p6, "loc_longitude"    # Ljava/lang/String;
    .param p7, "loc_city"    # Ljava/lang/String;
    .param p8, "cur_ssid"    # Ljava/lang/String;
    .param p9, "androidpn_usrName"    # Ljava/lang/String;
    .param p10, "androidpn_psw"    # Ljava/lang/String;
    .param p11, "appkey"    # Ljava/lang/String;
    .param p12, "secret"    # Ljava/lang/String;

    .prologue
    .line 248
    new-instance v0, Lcom/pubinfo/androidpn/client/AndroidpnStatusReceiver$1;

    move-object v1, p0

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move-object/from16 v9, p9

    move-object/from16 v10, p10

    move-object/from16 v11, p11

    move-object/from16 v12, p12

    move-object v13, p1

    invoke-direct/range {v0 .. v13}, Lcom/pubinfo/androidpn/client/AndroidpnStatusReceiver$1;-><init>(Lcom/pubinfo/androidpn/client/AndroidpnStatusReceiver;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    .line 367
    invoke-virtual {v0}, Lcom/pubinfo/androidpn/client/AndroidpnStatusReceiver$1;->start()V

    .line 368
    return-void
.end method

.method public static cityNameFilter(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p0, "totalAddrStr"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    const/4 v5, 0x0

    const/4 v4, 0x2

    .line 200
    const/4 v0, 0x0

    .line 201
    .local v0, "cityStr":Ljava/lang/String;
    if-nez p0, :cond_1

    .line 226
    :cond_0
    :goto_0
    return-object v2

    .line 204
    :cond_1
    const-string v3, "\u7701"

    invoke-virtual {p0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 205
    const-string v2, "\u7701"

    invoke-virtual {p0, v2, v4}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v2

    aget-object v1, v2, v5

    .line 206
    .local v1, "proviceStr":Ljava/lang/String;
    const-string v2, "\u7701"

    invoke-virtual {p0, v2, v4}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    aget-object v0, v2, v3

    .line 208
    const-string v2, "\u5e02"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 209
    const-string v2, "\u5e02"

    invoke-virtual {v0, v2, v4}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v2

    aget-object v0, v2, v5

    .line 210
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "\u5e02"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 215
    :cond_2
    :goto_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "\u7701"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .end local v1    # "proviceStr":Ljava/lang/String;
    :goto_2
    move-object v2, v0

    .line 226
    goto :goto_0

    .line 211
    .restart local v1    # "proviceStr":Ljava/lang/String;
    :cond_3
    const-string v2, "\u5730\u533a"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 212
    const-string v2, "\u5e02"

    invoke-virtual {v0, v2, v4}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v2

    aget-object v0, v2, v5

    .line 213
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "\u5730\u533a"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 217
    .end local v1    # "proviceStr":Ljava/lang/String;
    :cond_4
    const-string v3, "\u5e02"

    invoke-virtual {p0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 218
    const-string v2, "\u5e02"

    invoke-virtual {p0, v2, v4}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v2

    aget-object v0, v2, v5

    .line 219
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "\u5e02"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 220
    goto :goto_2

    :cond_5
    const-string v3, "\u5730\u533a"

    invoke-virtual {p0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 221
    const-string v2, "\u5730\u533a"

    invoke-virtual {p0, v2, v4}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v2

    aget-object v0, v2, v5

    .line 222
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "\u5730\u533a"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 223
    goto :goto_2
.end method

.method private determineUploadPushInfoCondition(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 7
    .param p1, "mCtx"    # Landroid/content/Context;
    .param p2, "curPhoneNum"    # Ljava/lang/String;
    .param p3, "curAddress"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x0

    .line 373
    const/4 v4, 0x0

    .line 377
    .local v4, "upload_status":Z
    const-string v5, "location_preferences"

    .line 376
    invoke-virtual {p1, v5, v6}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 381
    .local v3, "sharedPrefs":Landroid/content/SharedPreferences;
    const-string v5, "pushInfo_updated_flag"

    .line 380
    invoke-interface {v3, v5, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 382
    .local v0, "have_uploaded":Z
    if-nez v0, :cond_0

    .line 384
    const/4 v4, 0x1

    .line 403
    :goto_0
    return v4

    .line 389
    :cond_0
    const-string v5, "latest_authen_phoneNum"

    .line 390
    const-string v6, ""

    .line 388
    invoke-interface {v3, v5, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 392
    .local v2, "last_upload_phoneNum":Ljava/lang/String;
    const-string v5, "Location_Address"

    const-string v6, ""

    .line 391
    invoke-interface {v3, v5, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/pubinfo/androidpn/client/AndroidpnStatusReceiver;->cityNameFilter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 394
    .local v1, "last_upload_CityName":Ljava/lang/String;
    const-string v5, ""

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 395
    const-string v5, ""

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 396
    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 397
    invoke-static {p3}, Lcom/pubinfo/androidpn/client/AndroidpnStatusReceiver;->cityNameFilter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 398
    :cond_1
    const/4 v4, 0x1

    .line 399
    goto :goto_0

    .line 400
    :cond_2
    const/4 v4, 0x0

    goto :goto_0
.end method

.method public static getReceiverInstance()Lcom/pubinfo/androidpn/client/AndroidpnStatusReceiver;
    .locals 1

    .prologue
    .line 87
    sget-object v0, Lcom/pubinfo/androidpn/client/AndroidpnStatusReceiver;->mInstance:Lcom/pubinfo/androidpn/client/AndroidpnStatusReceiver;

    if-nez v0, :cond_0

    .line 88
    new-instance v0, Lcom/pubinfo/androidpn/client/AndroidpnStatusReceiver;

    invoke-direct {v0}, Lcom/pubinfo/androidpn/client/AndroidpnStatusReceiver;-><init>()V

    sput-object v0, Lcom/pubinfo/androidpn/client/AndroidpnStatusReceiver;->mInstance:Lcom/pubinfo/androidpn/client/AndroidpnStatusReceiver;

    .line 89
    :cond_0
    sget-object v0, Lcom/pubinfo/androidpn/client/AndroidpnStatusReceiver;->mInstance:Lcom/pubinfo/androidpn/client/AndroidpnStatusReceiver;

    return-object v0
.end method


# virtual methods
.method public final doRegister(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 57
    new-instance v1, Lcom/iwifi/sdk/protocol/impl/SDKCommonMotheds;

    invoke-direct {v1, p1}, Lcom/iwifi/sdk/protocol/impl/SDKCommonMotheds;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/pubinfo/androidpn/client/AndroidpnStatusReceiver;->commonMethods:Lcom/iwifi/sdk/protocol/impl/SDKCommonMotheds;

    .line 58
    invoke-static {p1}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v1

    iput-object v1, p0, Lcom/pubinfo/androidpn/client/AndroidpnStatusReceiver;->lbm:Landroid/support/v4/content/LocalBroadcastManager;

    .line 60
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 61
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "org.androidpn.client.ANDROIDPN_STATUS_LOGINED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 62
    const-string v1, "org.androidpn.client.ANDROIDPN_STATUS_LOGIN_SUCCESS"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 63
    const-string v1, "org.androidpn.client.ANDROIDPN_STATUS_DISCONNECT"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 64
    const-string v1, "org.androidpn.client.ANDROIDPN_STATUS_CONNECT_FAILED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 65
    const-string v1, "org.androidpn.client.ANDROIDPN_STATUS_CONNECTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 66
    const-string v1, "org.androidpn.client.ANDROIDPN_STATUS_RECONNECTING"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 67
    const-string v1, "org.androidpn.client.ANDROIDPN_STATUS_CONNECTING"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 68
    const-string v1, "org.androidpn.client.ANDROIDPN_MSG_RECEIVER_READY"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 69
    iget-object v1, p0, Lcom/pubinfo/androidpn/client/AndroidpnStatusReceiver;->lbm:Landroid/support/v4/content/LocalBroadcastManager;

    invoke-virtual {v1, p0, v0}, Landroid/support/v4/content/LocalBroadcastManager;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 71
    return-void
.end method

.method public final doUnregester(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 83
    iget-object v0, p0, Lcom/pubinfo/androidpn/client/AndroidpnStatusReceiver;->lbm:Landroid/support/v4/content/LocalBroadcastManager;

    invoke-virtual {v0, p0}, Landroid/support/v4/content/LocalBroadcastManager;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 84
    return-void
.end method

.method public final loadParams(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "countrycode"    # Ljava/lang/String;
    .param p2, "phoneNum"    # Ljava/lang/String;
    .param p3, "latitude"    # Ljava/lang/String;
    .param p4, "longitude"    # Ljava/lang/String;
    .param p5, "address"    # Ljava/lang/String;

    .prologue
    .line 75
    iput-object p1, p0, Lcom/pubinfo/androidpn/client/AndroidpnStatusReceiver;->Countrycode:Ljava/lang/String;

    .line 76
    iput-object p2, p0, Lcom/pubinfo/androidpn/client/AndroidpnStatusReceiver;->PhoneNum:Ljava/lang/String;

    .line 77
    iput-object p3, p0, Lcom/pubinfo/androidpn/client/AndroidpnStatusReceiver;->Latitude:Ljava/lang/String;

    .line 78
    iput-object p4, p0, Lcom/pubinfo/androidpn/client/AndroidpnStatusReceiver;->Longitude:Ljava/lang/String;

    .line 79
    iput-object p5, p0, Lcom/pubinfo/androidpn/client/AndroidpnStatusReceiver;->Address:Ljava/lang/String;

    .line 80
    return-void
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 18
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 97
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v15

    .line 98
    .local v15, "action":Ljava/lang/String;
    sget-object v2, Lcom/pubinfo/androidpn/client/AndroidpnStatusReceiver;->LOG_TAG:Ljava/lang/String;

    invoke-static {v2, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    const-string v2, "org.androidpn.client.ANDROIDPN_STATUS_LOGIN_SUCCESS"

    invoke-virtual {v2, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 100
    const-string v2, "org.androidpn.client.ANDROIDPN_STATUS_LOGINED"

    invoke-virtual {v2, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 101
    :cond_0
    sget-object v2, Lcom/pubinfo/androidpn/client/AndroidpnStatusReceiver;->LOG_TAG:Ljava/lang/String;

    const-string v3, "test ---- APN Login Success ---- enter "

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    const-string v2, "client_preferences"

    const/4 v3, 0x0

    .line 107
    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v17

    .line 157
    .local v17, "sharedPrefs_pn":Landroid/content/SharedPreferences;
    sget-object v2, Lcom/pubinfo/androidpn/client/AndroidpnStatusReceiver;->LOG_TAG:Ljava/lang/String;

    const-string v3, " push loaction  others "

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    const-string v2, "XMPP_USERNAME"

    const-string v3, ""

    .line 159
    move-object/from16 v0, v17

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 162
    .local v11, "androidpn_usrName":Ljava/lang/String;
    const-string v2, "XMPP_PASSWORD"

    const-string v3, ""

    .line 161
    move-object/from16 v0, v17

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 164
    .local v12, "androidpn_psw":Ljava/lang/String;
    sget-object v2, Lcom/pubinfo/androidpn/client/AndroidpnStatusReceiver;->commonMethods:Lcom/iwifi/sdk/protocol/impl/SDKCommonMotheds;

    invoke-virtual {v2}, Lcom/iwifi/sdk/protocol/impl/SDKCommonMotheds;->getIMEICode()Ljava/lang/String;

    move-result-object v6

    .line 165
    .local v6, "imei":Ljava/lang/String;
    sget-object v2, Lcom/pubinfo/androidpn/client/AndroidpnStatusReceiver;->commonMethods:Lcom/iwifi/sdk/protocol/impl/SDKCommonMotheds;

    invoke-virtual {v2}, Lcom/iwifi/sdk/protocol/impl/SDKCommonMotheds;->getConnectedWifiSSId()Ljava/lang/String;

    move-result-object v10

    .line 168
    .local v10, "cur_ssid":Ljava/lang/String;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/pubinfo/androidpn/client/AndroidpnStatusReceiver;->PhoneNum:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/pubinfo/androidpn/client/AndroidpnStatusReceiver;->Address:Ljava/lang/String;

    .line 167
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v2, v3}, Lcom/pubinfo/androidpn/client/AndroidpnStatusReceiver;->determineUploadPushInfoCondition(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v16

    .line 169
    .local v16, "isNeedUploadPushInfo":Z
    if-eqz v16, :cond_1

    .line 171
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/pubinfo/androidpn/client/AndroidpnStatusReceiver;->PhoneNum:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/pubinfo/androidpn/client/AndroidpnStatusReceiver;->Countrycode:Ljava/lang/String;

    .line 172
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/pubinfo/androidpn/client/AndroidpnStatusReceiver;->Latitude:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/pubinfo/androidpn/client/AndroidpnStatusReceiver;->Longitude:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/pubinfo/androidpn/client/AndroidpnStatusReceiver;->Address:Ljava/lang/String;

    invoke-static {v2}, Lcom/pubinfo/androidpn/client/AndroidpnStatusReceiver;->cityNameFilter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 174
    const-string v13, "10001000"

    const-string v14, "513add10608f815f4d7eaf7c6376097b"

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    .line 171
    invoke-direct/range {v2 .. v14}, Lcom/pubinfo/androidpn/client/AndroidpnStatusReceiver;->UploadUserPushInfo(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 193
    .end local v6    # "imei":Ljava/lang/String;
    .end local v10    # "cur_ssid":Ljava/lang/String;
    .end local v11    # "androidpn_usrName":Ljava/lang/String;
    .end local v12    # "androidpn_psw":Ljava/lang/String;
    .end local v16    # "isNeedUploadPushInfo":Z
    .end local v17    # "sharedPrefs_pn":Landroid/content/SharedPreferences;
    :cond_1
    :goto_0
    return-void

    .line 179
    :cond_2
    const-string v2, "org.androidpn.client.ANDROIDPN_STATUS_CONNECTED"

    invoke-virtual {v2, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 180
    sget-object v2, Lcom/pubinfo/androidpn/client/AndroidpnStatusReceiver;->LOG_TAG:Ljava/lang/String;

    const-string v3, "test ---- APN connected ---- enter "

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 181
    :cond_3
    const-string v2, "org.androidpn.client.ANDROIDPN_STATUS_CONNECT_FAILED"

    invoke-virtual {v2, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 182
    sget-object v2, Lcom/pubinfo/androidpn/client/AndroidpnStatusReceiver;->LOG_TAG:Ljava/lang/String;

    const-string v3, "test ---- APN Failed ---- enter "

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 183
    :cond_4
    const-string v2, "org.androidpn.client.ANDROIDPN_STATUS_DISCONNECT"

    invoke-virtual {v2, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 184
    sget-object v2, Lcom/pubinfo/androidpn/client/AndroidpnStatusReceiver;->LOG_TAG:Ljava/lang/String;

    const-string v3, "test ---- APN Disconnect ---- enter "

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 185
    :cond_5
    const-string v2, "org.androidpn.client.ANDROIDPN_STATUS_RECONNECTING"

    invoke-virtual {v2, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 186
    sget-object v2, Lcom/pubinfo/androidpn/client/AndroidpnStatusReceiver;->LOG_TAG:Ljava/lang/String;

    const-string v3, "test ---- APN reconnecting ---- enter "

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 187
    :cond_6
    const-string v2, "org.androidpn.client.ANDROIDPN_MSG_RECEIVER_READY"

    invoke-virtual {v2, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 188
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/pubinfo/androidpn/client/AndroidpnStatusReceiver;->lbm:Landroid/support/v4/content/LocalBroadcastManager;

    new-instance v3, Landroid/content/Intent;

    .line 189
    const-string v4, "org.androidpn.client.ANDROIDPN_ACTION_REQUEST_STATUS"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 188
    invoke-virtual {v2, v3}, Landroid/support/v4/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    goto :goto_0

    .line 190
    :cond_7
    const-string v2, "org.androidpn.client.ANDROIDPN_STATUS_CONNECTING"

    invoke-virtual {v2, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 191
    sget-object v2, Lcom/pubinfo/androidpn/client/AndroidpnStatusReceiver;->LOG_TAG:Ljava/lang/String;

    const-string v3, "test ---- APN connecting ---- enter "

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 176
    .restart local v6    # "imei":Ljava/lang/String;
    .restart local v10    # "cur_ssid":Ljava/lang/String;
    .restart local v11    # "androidpn_usrName":Ljava/lang/String;
    .restart local v12    # "androidpn_psw":Ljava/lang/String;
    .restart local v17    # "sharedPrefs_pn":Landroid/content/SharedPreferences;
    :catch_0
    move-exception v2

    goto :goto_0
.end method
