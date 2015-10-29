.class public abstract Lcom/pubinfo/freewifialliance/controller/WifiListFun;
.super Lcom/pubinfo/wifi_core/AppBaseActivity;
.source "WifiListFun.java"

# interfaces
.implements Lcom/iwifi/sdk/protocol/UpdateSsidListInterface;
.implements Lcom/iwifi/sdk/protocol/GlobaleAuthenticationRequestCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pubinfo/freewifialliance/controller/WifiListFun$WifiConnectedBroadcastReciver;
    }
.end annotation


# static fields
.field private static tianyiWifi:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/net/wifi/ScanResult;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public ac_name:Ljava/lang/String;

.field public appauth_type:Ljava/lang/String;

.field final c:Ljava/util/Calendar;

.field data:Ljava/lang/String;

.field public dev_id:Ljava/lang/String;

.field public handler:Landroid/os/Handler;

.field private final homePressReceiver:Landroid/content/BroadcastReceiver;

.field isClicked:Z

.field public logoffUrl:Ljava/lang/String;

.field public message:Ljava/lang/String;

.field public platform_code:Ljava/lang/String;

.field public portal_url:Ljava/lang/String;

.field public result:Ljava/lang/String;

.field private results:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/net/wifi/ScanResult;",
            ">;"
        }
    .end annotation
.end field

.field public third_token:Ljava/lang/String;

.field public token:Ljava/lang/String;

.field wifiConnectedBroadcastReciver:Lcom/pubinfo/freewifialliance/controller/WifiListFun$WifiConnectedBroadcastReciver;

.field private wifiManager:Landroid/net/wifi/WifiManager;

.field private wificonf:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/net/wifi/WifiConfiguration;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 89
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/pubinfo/freewifialliance/controller/WifiListFun;->tianyiWifi:Ljava/util/List;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    .line 43
    invoke-direct {p0}, Lcom/pubinfo/wifi_core/AppBaseActivity;-><init>()V

    .line 99
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/pubinfo/freewifialliance/controller/WifiListFun;->isClicked:Z

    .line 110
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Lcom/pubinfo/freewifialliance/controller/WifiListFun;->c:Ljava/util/Calendar;

    .line 111
    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/pubinfo/freewifialliance/controller/WifiListFun;->c:Ljava/util/Calendar;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/pubinfo/freewifialliance/controller/WifiListFun;->c:Ljava/util/Calendar;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 112
    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/pubinfo/freewifialliance/controller/WifiListFun;->c:Ljava/util/Calendar;

    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/pubinfo/freewifialliance/controller/WifiListFun;->data:Ljava/lang/String;

    .line 180
    new-instance v0, Lcom/pubinfo/freewifialliance/controller/WifiListFun$1;

    invoke-direct {v0, p0}, Lcom/pubinfo/freewifialliance/controller/WifiListFun$1;-><init>(Lcom/pubinfo/freewifialliance/controller/WifiListFun;)V

    iput-object v0, p0, Lcom/pubinfo/freewifialliance/controller/WifiListFun;->handler:Landroid/os/Handler;

    .line 388
    new-instance v0, Lcom/pubinfo/freewifialliance/controller/WifiListFun$2;

    invoke-direct {v0, p0}, Lcom/pubinfo/freewifialliance/controller/WifiListFun$2;-><init>(Lcom/pubinfo/freewifialliance/controller/WifiListFun;)V

    iput-object v0, p0, Lcom/pubinfo/freewifialliance/controller/WifiListFun;->homePressReceiver:Landroid/content/BroadcastReceiver;

    .line 43
    return-void
.end method

.method static synthetic access$0(Lcom/pubinfo/freewifialliance/controller/WifiListFun;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lcom/pubinfo/freewifialliance/controller/WifiListFun;->showMsgToast(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1(Lcom/pubinfo/freewifialliance/controller/WifiListFun;)Landroid/net/wifi/WifiManager;
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lcom/pubinfo/freewifialliance/controller/WifiListFun;->wifiManager:Landroid/net/wifi/WifiManager;

    return-object v0
.end method

.method public static getTianyiWifi()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/net/wifi/ScanResult;",
            ">;"
        }
    .end annotation

    .prologue
    .line 326
    sget-object v0, Lcom/pubinfo/freewifialliance/controller/WifiListFun;->tianyiWifi:Ljava/util/List;

    return-object v0
.end method


# virtual methods
.method public abstract connToWifi()V
.end method

.method public abstract connWifiBy()V
.end method

.method public abstract getConfirmFail()V
.end method

.method public abstract getConfirmSuccess(Ljava/lang/String;)V
.end method

.method public getConnectedWifiSSId()Ljava/lang/String;
    .locals 2

    .prologue
    .line 377
    iget-object v1, p0, Lcom/pubinfo/freewifialliance/controller/WifiListFun;->wifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v0

    .line 378
    .local v0, "wifiInfo":Landroid/net/wifi/WifiInfo;
    if-eqz v0, :cond_0

    .line 379
    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v1

    .line 381
    :goto_0
    return-object v1

    :cond_0
    const-string v1, ""

    goto :goto_0
.end method

.method public getWiFi()V
    .locals 5

    .prologue
    .line 151
    const-string v3, "wifi"

    invoke-virtual {p0, v3}, Lcom/pubinfo/freewifialliance/controller/WifiListFun;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/wifi/WifiManager;

    iput-object v3, p0, Lcom/pubinfo/freewifialliance/controller/WifiListFun;->wifiManager:Landroid/net/wifi/WifiManager;

    .line 153
    iget-object v3, p0, Lcom/pubinfo/freewifialliance/controller/WifiListFun;->wifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v3}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 154
    sget-object v3, Lcom/pubinfo/freewifialliance/controller/WifiListFun;->tianyiWifi:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->clear()V

    .line 155
    iget-object v3, p0, Lcom/pubinfo/freewifialliance/controller/WifiListFun;->wifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v3}, Landroid/net/wifi/WifiManager;->startScan()Z

    .line 156
    iget-object v3, p0, Lcom/pubinfo/freewifialliance/controller/WifiListFun;->wifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v3}, Landroid/net/wifi/WifiManager;->getConfiguredNetworks()Ljava/util/List;

    move-result-object v3

    iput-object v3, p0, Lcom/pubinfo/freewifialliance/controller/WifiListFun;->wificonf:Ljava/util/List;

    .line 157
    iget-object v3, p0, Lcom/pubinfo/freewifialliance/controller/WifiListFun;->wifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v3}, Landroid/net/wifi/WifiManager;->getScanResults()Ljava/util/List;

    move-result-object v3

    iput-object v3, p0, Lcom/pubinfo/freewifialliance/controller/WifiListFun;->results:Ljava/util/List;

    .line 158
    iget-object v3, p0, Lcom/pubinfo/freewifialliance/controller/WifiListFun;->results:Ljava/util/List;

    if-eqz v3, :cond_0

    .line 159
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v3, p0, Lcom/pubinfo/freewifialliance/controller/WifiListFun;->results:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-lt v0, v3, :cond_2

    .line 176
    .end local v0    # "i":I
    :cond_0
    iget-object v3, p0, Lcom/pubinfo/freewifialliance/controller/WifiListFun;->handler:Landroid/os/Handler;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 178
    :cond_1
    return-void

    .line 160
    .restart local v0    # "i":I
    :cond_2
    iget-object v3, p0, Lcom/pubinfo/freewifialliance/controller/WifiListFun;->results:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/wifi/ScanResult;

    iget-object v3, v3, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    invoke-virtual {p0, v3}, Lcom/pubinfo/freewifialliance/controller/WifiListFun;->isWifiAlliance(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 161
    const/4 v1, 0x0

    .line 162
    .local v1, "isHave":Z
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_1
    sget-object v3, Lcom/pubinfo/freewifialliance/controller/WifiListFun;->tianyiWifi:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-lt v2, v3, :cond_4

    .line 169
    :goto_2
    if-nez v1, :cond_3

    .line 170
    sget-object v4, Lcom/pubinfo/freewifialliance/controller/WifiListFun;->tianyiWifi:Ljava/util/List;

    iget-object v3, p0, Lcom/pubinfo/freewifialliance/controller/WifiListFun;->results:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/wifi/ScanResult;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 159
    .end local v1    # "isHave":Z
    .end local v2    # "j":I
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 163
    .restart local v1    # "isHave":Z
    .restart local v2    # "j":I
    :cond_4
    iget-object v3, p0, Lcom/pubinfo/freewifialliance/controller/WifiListFun;->results:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/wifi/ScanResult;

    iget-object v4, v3, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    .line 164
    sget-object v3, Lcom/pubinfo/freewifialliance/controller/WifiListFun;->tianyiWifi:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/wifi/ScanResult;

    iget-object v3, v3, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 165
    const/4 v1, 0x1

    .line 166
    goto :goto_2

    .line 162
    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method public abstract hideLoadingView()V
.end method

.method public isClicked()Z
    .locals 1

    .prologue
    .line 330
    iget-boolean v0, p0, Lcom/pubinfo/freewifialliance/controller/WifiListFun;->isClicked:Z

    return v0
.end method

.method public onAuthenticationReqFail(Ljava/lang/String;)V
    .locals 3
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 275
    const-string v0, "iWifiSDKDemo"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, " onAuthenticationReqFail : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 276
    invoke-virtual {p0}, Lcom/pubinfo/freewifialliance/controller/WifiListFun;->getConfirmFail()V

    .line 277
    return-void
.end method

.method public onAuthenticationReqSucc(Ljava/lang/String;)V
    .locals 7
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 232
    const-string v4, "iWifiSDKDemo"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, " onAuthenticationReqSucc : "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 234
    :try_start_0
    invoke-static {p1}, Lcom/iwifi/sdk/parser/GetCodeResultParser;->GetJsonObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 236
    .local v0, "codeRes":Lorg/json/JSONObject;
    const-string v4, "result"

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/pubinfo/freewifialliance/controller/WifiListFun;->result:Ljava/lang/String;

    .line 237
    const-string v4, "message"

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/pubinfo/freewifialliance/controller/WifiListFun;->message:Ljava/lang/String;

    .line 238
    const-string v4, "appauth_type"

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/pubinfo/freewifialliance/controller/WifiListFun;->appauth_type:Ljava/lang/String;

    .line 239
    const-string v4, "logoffUrl"

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/pubinfo/freewifialliance/controller/WifiListFun;->logoffUrl:Ljava/lang/String;

    .line 240
    const-string v4, "token"

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/pubinfo/freewifialliance/controller/WifiListFun;->token:Ljava/lang/String;

    .line 241
    const-string v4, "portal_url"

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/pubinfo/freewifialliance/controller/WifiListFun;->portal_url:Ljava/lang/String;

    .line 242
    const-string v4, "platform_code"

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/pubinfo/freewifialliance/controller/WifiListFun;->platform_code:Ljava/lang/String;

    .line 243
    const-string v4, "third_token"

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/pubinfo/freewifialliance/controller/WifiListFun;->third_token:Ljava/lang/String;

    .line 244
    const-string v4, "dev_id"

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/pubinfo/freewifialliance/controller/WifiListFun;->dev_id:Ljava/lang/String;

    .line 245
    const-string v4, "ac_name"

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/pubinfo/freewifialliance/controller/WifiListFun;->ac_name:Ljava/lang/String;

    .line 247
    iget-object v4, p0, Lcom/pubinfo/freewifialliance/controller/WifiListFun;->message:Ljava/lang/String;

    const-string v5, "Already onLine"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 251
    const-string v4, "LOGOFF"

    const/4 v5, 0x0

    .line 250
    invoke-virtual {p0, v4, v5}, Lcom/pubinfo/freewifialliance/controller/WifiListFun;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 252
    .local v3, "sharedPreferences":Landroid/content/SharedPreferences;
    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 253
    .local v2, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v4, "result"

    iget-object v5, p0, Lcom/pubinfo/freewifialliance/controller/WifiListFun;->result:Ljava/lang/String;

    invoke-interface {v2, v4, v5}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 254
    const-string v4, "message"

    iget-object v5, p0, Lcom/pubinfo/freewifialliance/controller/WifiListFun;->message:Ljava/lang/String;

    invoke-interface {v2, v4, v5}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 255
    const-string v4, "appauth_type"

    iget-object v5, p0, Lcom/pubinfo/freewifialliance/controller/WifiListFun;->appauth_type:Ljava/lang/String;

    invoke-interface {v2, v4, v5}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 256
    const-string v4, "logoffUrl"

    iget-object v5, p0, Lcom/pubinfo/freewifialliance/controller/WifiListFun;->logoffUrl:Ljava/lang/String;

    invoke-interface {v2, v4, v5}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 257
    const-string v4, "token"

    iget-object v5, p0, Lcom/pubinfo/freewifialliance/controller/WifiListFun;->token:Ljava/lang/String;

    invoke-interface {v2, v4, v5}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 258
    const-string v4, "portal_url"

    iget-object v5, p0, Lcom/pubinfo/freewifialliance/controller/WifiListFun;->portal_url:Ljava/lang/String;

    invoke-interface {v2, v4, v5}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 259
    const-string v4, "platform_code"

    iget-object v5, p0, Lcom/pubinfo/freewifialliance/controller/WifiListFun;->platform_code:Ljava/lang/String;

    invoke-interface {v2, v4, v5}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 260
    const-string v4, "third_token"

    iget-object v5, p0, Lcom/pubinfo/freewifialliance/controller/WifiListFun;->third_token:Ljava/lang/String;

    invoke-interface {v2, v4, v5}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 261
    const-string v4, "dev_id"

    iget-object v5, p0, Lcom/pubinfo/freewifialliance/controller/WifiListFun;->dev_id:Ljava/lang/String;

    invoke-interface {v2, v4, v5}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 262
    const-string v4, "ac_name"

    iget-object v5, p0, Lcom/pubinfo/freewifialliance/controller/WifiListFun;->ac_name:Ljava/lang/String;

    invoke-interface {v2, v4, v5}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 263
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 270
    .end local v0    # "codeRes":Lorg/json/JSONObject;
    .end local v2    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local v3    # "sharedPreferences":Landroid/content/SharedPreferences;
    :cond_0
    :goto_0
    iget-object v4, p0, Lcom/pubinfo/freewifialliance/controller/WifiListFun;->dev_id:Ljava/lang/String;

    invoke-virtual {p0, v4}, Lcom/pubinfo/freewifialliance/controller/WifiListFun;->getConfirmSuccess(Ljava/lang/String;)V

    .line 271
    return-void

    .line 265
    :catch_0
    move-exception v1

    .line 267
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 0

    .prologue
    .line 373
    invoke-super {p0}, Lcom/pubinfo/wifi_core/AppBaseActivity;->onDestroy()V

    .line 374
    return-void
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 339
    invoke-super {p0}, Lcom/pubinfo/wifi_core/AppBaseActivity;->onPause()V

    .line 340
    iget-object v1, p0, Lcom/pubinfo/freewifialliance/controller/WifiListFun;->wifiConnectedBroadcastReciver:Lcom/pubinfo/freewifialliance/controller/WifiListFun$WifiConnectedBroadcastReciver;

    invoke-virtual {p0, v1}, Lcom/pubinfo/freewifialliance/controller/WifiListFun;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 341
    iget-object v1, p0, Lcom/pubinfo/freewifialliance/controller/WifiListFun;->homePressReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1}, Lcom/pubinfo/freewifialliance/controller/WifiListFun;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 343
    sget-object v1, Lcom/pubinfo/freewifialliance/controller/WifiListFun;->tianyiWifi:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 345
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 346
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "com.pubinfo.freewifialliance.service.WifiConnService.FreshViewBroadcastReceiver"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 347
    invoke-virtual {p0, v0}, Lcom/pubinfo/freewifialliance/controller/WifiListFun;->sendBroadcast(Landroid/content/Intent;)V

    .line 349
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_0
    return-void
.end method

.method protected onResume()V
    .locals 3

    .prologue
    .line 353
    invoke-super {p0}, Lcom/pubinfo/wifi_core/AppBaseActivity;->onResume()V

    .line 355
    new-instance v2, Lcom/pubinfo/freewifialliance/controller/WifiListFun$WifiConnectedBroadcastReciver;

    invoke-direct {v2, p0}, Lcom/pubinfo/freewifialliance/controller/WifiListFun$WifiConnectedBroadcastReciver;-><init>(Lcom/pubinfo/freewifialliance/controller/WifiListFun;)V

    iput-object v2, p0, Lcom/pubinfo/freewifialliance/controller/WifiListFun;->wifiConnectedBroadcastReciver:Lcom/pubinfo/freewifialliance/controller/WifiListFun$WifiConnectedBroadcastReciver;

    .line 356
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 357
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v2, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 359
    iget-object v2, p0, Lcom/pubinfo/freewifialliance/controller/WifiListFun;->wifiConnectedBroadcastReciver:Lcom/pubinfo/freewifialliance/controller/WifiListFun$WifiConnectedBroadcastReciver;

    invoke-virtual {p0, v2, v0}, Lcom/pubinfo/freewifialliance/controller/WifiListFun;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 361
    new-instance v1, Landroid/content/IntentFilter;

    .line 362
    const-string v2, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    .line 361
    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 363
    .local v1, "homeFilter":Landroid/content/IntentFilter;
    iget-object v2, p0, Lcom/pubinfo/freewifialliance/controller/WifiListFun;->homePressReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v2, v1}, Lcom/pubinfo/freewifialliance/controller/WifiListFun;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 369
    return-void
.end method

.method public setClicked(Z)V
    .locals 0
    .param p1, "isClicked"    # Z

    .prologue
    .line 334
    iput-boolean p1, p0, Lcom/pubinfo/freewifialliance/controller/WifiListFun;->isClicked:Z

    .line 335
    return-void
.end method

.method public abstract setWifiListView()V
.end method

.method public abstract showLoadingView()V
.end method

.method public updateSsidErr(Ljava/lang/String;)V
    .locals 0
    .param p1, "arg0"    # Ljava/lang/String;

    .prologue
    .line 124
    return-void
.end method

.method public updateSsidList()V
    .locals 1

    .prologue
    .line 116
    new-instance v0, Lcom/iwifi/sdk/protocol/impl/UpdateSsidListConn_iWiFi_20;

    invoke-direct {v0, p0}, Lcom/iwifi/sdk/protocol/impl/UpdateSsidListConn_iWiFi_20;-><init>(Lcom/iwifi/sdk/protocol/UpdateSsidListInterface;)V

    .line 118
    return-void
.end method

.method public updateSsidListSucc(Lcom/iwifi/sdk/data/SsidList;)V
    .locals 5
    .param p1, "arg0"    # Lcom/iwifi/sdk/data/SsidList;

    .prologue
    .line 132
    .line 133
    const-string v3, "ssidlist"

    const/4 v4, 0x0

    .line 132
    invoke-virtual {p0, v3, v4}, Lcom/pubinfo/freewifialliance/controller/WifiListFun;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 135
    .local v1, "sharedPreferences":Landroid/content/SharedPreferences;
    const-string v3, "version"

    const-string v4, ""

    .line 134
    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 136
    .local v2, "version":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcom/iwifi/sdk/data/SsidList;->getVersion()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 137
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 138
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v3, "data"

    invoke-virtual {p1}, Lcom/iwifi/sdk/data/SsidList;->getData()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 139
    const-string v3, "version"

    invoke-virtual {p1}, Lcom/iwifi/sdk/data/SsidList;->getVersion()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 140
    const-string v3, "time"

    iget-object v4, p0, Lcom/pubinfo/freewifialliance/controller/WifiListFun;->data:Ljava/lang/String;

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 141
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 143
    .end local v0    # "editor":Landroid/content/SharedPreferences$Editor;
    :cond_0
    return-void
.end method
