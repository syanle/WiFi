.class public abstract Lcom/pubinfo/freewifialliance/controller/LoginFun;
.super Lcom/pubinfo/wifi_core/AppBaseActivity;
.source "LoginFun.java"

# interfaces
.implements Lcom/iwifi/sdk/protocol/DoSmsAuthInterface;
.implements Lcom/iwifi/sdk/protocol/CheckCodeAuthInterface;
.implements Lcom/iwifi/sdk/protocol/GetPortalUrlCallback;
.implements Lcom/iwifi/sdk/protocol/GlobaleAuthenticationRequestCallback;


# static fields
.field private static final AESTYPE:Ljava/lang/String; = "AES/CBC/NoPadding"

.field protected static type:Ljava/lang/String;


# instance fields
.field ac_name:Ljava/lang/String;

.field aes:Lcom/pubinfo/freewifialliance/view/AESEN;

.field appauth_type:Ljava/lang/String;

.field dev_id:Ljava/lang/String;

.field final_dev_id:Ljava/lang/String;

.field logoffUrl:Ljava/lang/String;

.field private mCodeResult:Lcom/iwifi/sdk/data/CodeResult;

.field private mPhoneNum:Ljava/lang/String;

.field mac:Ljava/lang/String;

.field message:Ljava/lang/String;

.field protected num:Ljava/lang/String;

.field platform_code:Ljava/lang/String;

.field portal_url:Ljava/lang/String;

.field result:Ljava/lang/String;

.field save_portal_url:Ljava/lang/String;

.field protected ssid:Ljava/lang/String;

.field third_token:Ljava/lang/String;

.field token:Ljava/lang/String;

.field protected wifiListPage:Lcom/iwifi/sdk/chinanet/WifiAuthenticationProcedure;

.field private wifiMgr:Landroid/net/wifi/WifiManager;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 38
    invoke-direct {p0}, Lcom/pubinfo/wifi_core/AppBaseActivity;-><init>()V

    .line 42
    new-instance v0, Lcom/pubinfo/freewifialliance/view/AESEN;

    invoke-direct {v0}, Lcom/pubinfo/freewifialliance/view/AESEN;-><init>()V

    iput-object v0, p0, Lcom/pubinfo/freewifialliance/controller/LoginFun;->aes:Lcom/pubinfo/freewifialliance/view/AESEN;

    .line 72
    iput-object v1, p0, Lcom/pubinfo/freewifialliance/controller/LoginFun;->wifiMgr:Landroid/net/wifi/WifiManager;

    .line 73
    iput-object v1, p0, Lcom/pubinfo/freewifialliance/controller/LoginFun;->mac:Ljava/lang/String;

    .line 75
    const-string v0, ""

    iput-object v0, p0, Lcom/pubinfo/freewifialliance/controller/LoginFun;->save_portal_url:Ljava/lang/String;

    .line 38
    return-void
.end method

.method private getDhcpGatewayAddr()Ljava/lang/String;
    .locals 4

    .prologue
    .line 281
    iget-object v1, p0, Lcom/pubinfo/freewifialliance/controller/LoginFun;->wifiMgr:Landroid/net/wifi/WifiManager;

    if-nez v1, :cond_0

    .line 282
    const-string v1, "wifi"

    invoke-virtual {p0, v1}, Lcom/pubinfo/freewifialliance/controller/LoginFun;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/WifiManager;

    iput-object v1, p0, Lcom/pubinfo/freewifialliance/controller/LoginFun;->wifiMgr:Landroid/net/wifi/WifiManager;

    .line 284
    :cond_0
    iget-object v1, p0, Lcom/pubinfo/freewifialliance/controller/LoginFun;->wifiMgr:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getDhcpInfo()Landroid/net/DhcpInfo;

    move-result-object v0

    .line 285
    .local v0, "dhcpInfo":Landroid/net/DhcpInfo;
    const-string v1, "iWifiSDKDemo"

    .line 286
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Gateway address : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 287
    iget v3, v0, Landroid/net/DhcpInfo;->gateway:I

    invoke-static {v3}, Landroid/text/format/Formatter;->formatIpAddress(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 286
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 285
    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 290
    iget v1, v0, Landroid/net/DhcpInfo;->gateway:I

    invoke-static {v1}, Landroid/text/format/Formatter;->formatIpAddress(I)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private getLocalMacAddress()Ljava/lang/String;
    .locals 2

    .prologue
    .line 211
    iget-object v1, p0, Lcom/pubinfo/freewifialliance/controller/LoginFun;->wifiMgr:Landroid/net/wifi/WifiManager;

    if-nez v1, :cond_0

    .line 212
    const-string v1, "wifi"

    invoke-virtual {p0, v1}, Lcom/pubinfo/freewifialliance/controller/LoginFun;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/WifiManager;

    iput-object v1, p0, Lcom/pubinfo/freewifialliance/controller/LoginFun;->wifiMgr:Landroid/net/wifi/WifiManager;

    .line 214
    :cond_0
    iget-object v1, p0, Lcom/pubinfo/freewifialliance/controller/LoginFun;->wifiMgr:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v0

    .line 215
    .local v0, "info":Landroid/net/wifi/WifiInfo;
    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getMacAddress()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public checkCodeAuthSucc(Ljava/lang/String;)V
    .locals 10
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 221
    :try_start_0
    iget-object v0, p0, Lcom/pubinfo/freewifialliance/controller/LoginFun;->context:Lcom/pubinfo/wifi_core/AppBaseActivity;

    invoke-static {v0}, Lcom/pubinfo/wifi_core/core/database/Database;->getInstance(Landroid/content/Context;)Lcom/pubinfo/wifi_core/core/database/Database;

    move-result-object v0

    const-string v1, ""

    iget-object v2, p0, Lcom/pubinfo/freewifialliance/controller/LoginFun;->mPhoneNum:Ljava/lang/String;

    const-string v3, ""

    const-string v4, ""

    const-string v5, ""

    .line 222
    const-string v6, ""

    const-string v7, ""

    const-string v8, ""

    .line 221
    invoke-virtual/range {v0 .. v8}, Lcom/pubinfo/wifi_core/core/database/Database;->insertUser(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 223
    invoke-virtual {p0}, Lcom/pubinfo/freewifialliance/controller/LoginFun;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "type"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/pubinfo/freewifialliance/controller/LoginFun;->type:Ljava/lang/String;

    .line 224
    sget-object v0, Lcom/pubinfo/freewifialliance/controller/LoginFun;->type:Ljava/lang/String;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/pubinfo/freewifialliance/controller/LoginFun;->type:Ljava/lang/String;

    const-string v1, "log"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 225
    invoke-virtual {p0}, Lcom/pubinfo/freewifialliance/controller/LoginFun;->finish()V

    .line 272
    :goto_0
    return-void

    .line 227
    :cond_0
    invoke-virtual {p0}, Lcom/pubinfo/freewifialliance/controller/LoginFun;->getCheckCodeSuccess()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 268
    :catch_0
    move-exception v9

    .line 270
    .local v9, "e":Ljava/lang/Exception;
    invoke-virtual {v9}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method protected doConnectNet(Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .param p1, "phoneNum"    # Ljava/lang/String;
    .param p2, "code"    # Ljava/lang/String;

    .prologue
    .line 142
    iput-object p1, p0, Lcom/pubinfo/freewifialliance/controller/LoginFun;->mPhoneNum:Ljava/lang/String;

    .line 148
    const-string v0, "wifi"

    invoke-virtual {p0, v0}, Lcom/pubinfo/freewifialliance/controller/LoginFun;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    iput-object v0, p0, Lcom/pubinfo/freewifialliance/controller/LoginFun;->wifiMgr:Landroid/net/wifi/WifiManager;

    .line 149
    invoke-direct {p0}, Lcom/pubinfo/freewifialliance/controller/LoginFun;->getLocalMacAddress()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/pubinfo/freewifialliance/controller/LoginFun;->mac:Ljava/lang/String;

    .line 150
    new-instance v0, Lcom/iwifi/sdk/protocol/impl/CheckCodeAuthConn_iWiFi_20;

    iget-object v1, p0, Lcom/pubinfo/freewifialliance/controller/LoginFun;->mPhoneNum:Ljava/lang/String;

    const-string v3, "android"

    iget-object v4, p0, Lcom/pubinfo/freewifialliance/controller/LoginFun;->mac:Ljava/lang/String;

    .line 151
    iget-object v5, p0, Lcom/pubinfo/freewifialliance/controller/LoginFun;->final_dev_id:Ljava/lang/String;

    move-object v2, p2

    move-object v6, p0

    .line 150
    invoke-direct/range {v0 .. v6}, Lcom/iwifi/sdk/protocol/impl/CheckCodeAuthConn_iWiFi_20;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/iwifi/sdk/protocol/CheckCodeAuthInterface;)V

    .line 153
    return-void
.end method

.method public doSmsAuthSucc(Ljava/lang/String;)V
    .locals 3
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 127
    const-string v0, "iWifiSDKDemo"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "doSmsAuthSucc:  "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    invoke-virtual {p0}, Lcom/pubinfo/freewifialliance/controller/LoginFun;->getSmsAuthSuccess()V

    .line 132
    return-void
.end method

.method public abstract getCheckCodeSuccess()V
.end method

.method public abstract getConfirmFail()V
.end method

.method public abstract getConfirmSuccess(Ljava/lang/String;)V
.end method

.method public getPortalUrlCallback(Ljava/lang/String;)V
    .locals 8
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 97
    const-string v0, "iWifiSDKDemo"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "getDeviceInfosCallback:  "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    :try_start_0
    const-string v0, "result"

    const-string v1, "message"

    const-string v2, "portal_url"

    .line 99
    invoke-static {p1, v0, v1, v2}, Lcom/iwifi/sdk/parser/GetCodeResultParser;->GetCodeResultList(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/iwifi/sdk/data/CodeResult;

    move-result-object v7

    .line 101
    .local v7, "result":Lcom/iwifi/sdk/data/CodeResult;
    invoke-virtual {v7}, Lcom/iwifi/sdk/data/CodeResult;->getResult()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OK"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 102
    invoke-virtual {v7}, Lcom/iwifi/sdk/data/CodeResult;->getData()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/pubinfo/freewifialliance/controller/LoginFun;->save_portal_url:Ljava/lang/String;

    .line 104
    invoke-virtual {v7}, Lcom/iwifi/sdk/data/CodeResult;->getData()Ljava/lang/String;

    move-result-object v0

    const-string v1, "dev_id="

    .line 103
    invoke-static {v0, v1}, Lcom/iwifi/sdk/protocol/impl/SDKCommonMotheds;->getDevidOrPltCodeFromUrl(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/pubinfo/freewifialliance/controller/LoginFun;->final_dev_id:Ljava/lang/String;

    .line 105
    iget-object v0, p0, Lcom/pubinfo/freewifialliance/controller/LoginFun;->final_dev_id:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 106
    const-string v0, ""

    iput-object v0, p0, Lcom/pubinfo/freewifialliance/controller/LoginFun;->final_dev_id:Ljava/lang/String;

    .line 108
    :cond_0
    invoke-direct {p0}, Lcom/pubinfo/freewifialliance/controller/LoginFun;->getLocalMacAddress()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/pubinfo/freewifialliance/controller/LoginFun;->mac:Ljava/lang/String;

    .line 109
    new-instance v0, Lcom/iwifi/sdk/protocol/impl/DoSmsAuthConn_iWiFi_20;

    iget-object v1, p0, Lcom/pubinfo/freewifialliance/controller/LoginFun;->num:Ljava/lang/String;

    iget-object v2, p0, Lcom/pubinfo/freewifialliance/controller/LoginFun;->final_dev_id:Ljava/lang/String;

    iget-object v3, p0, Lcom/pubinfo/freewifialliance/controller/LoginFun;->mac:Ljava/lang/String;

    .line 110
    iget-object v4, p0, Lcom/pubinfo/freewifialliance/controller/LoginFun;->save_portal_url:Ljava/lang/String;

    move-object v5, p0

    .line 109
    invoke-direct/range {v0 .. v5}, Lcom/iwifi/sdk/protocol/impl/DoSmsAuthConn_iWiFi_20;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/iwifi/sdk/protocol/DoSmsAuthInterface;)V

    .line 121
    .end local v7    # "result":Lcom/iwifi/sdk/data/CodeResult;
    :goto_0
    return-void

    .line 112
    .restart local v7    # "result":Lcom/iwifi/sdk/data/CodeResult;
    :cond_1
    invoke-direct {p0}, Lcom/pubinfo/freewifialliance/controller/LoginFun;->getLocalMacAddress()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/pubinfo/freewifialliance/controller/LoginFun;->mac:Ljava/lang/String;

    .line 113
    new-instance v0, Lcom/iwifi/sdk/protocol/impl/DoSmsAuthConn_iWiFi_20;

    iget-object v1, p0, Lcom/pubinfo/freewifialliance/controller/LoginFun;->num:Ljava/lang/String;

    .line 114
    const-string v2, ""

    iget-object v3, p0, Lcom/pubinfo/freewifialliance/controller/LoginFun;->mac:Ljava/lang/String;

    const-string v4, ""

    move-object v5, p0

    .line 113
    invoke-direct/range {v0 .. v5}, Lcom/iwifi/sdk/protocol/impl/DoSmsAuthConn_iWiFi_20;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/iwifi/sdk/protocol/DoSmsAuthInterface;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 116
    .end local v7    # "result":Lcom/iwifi/sdk/data/CodeResult;
    :catch_0
    move-exception v6

    .line 118
    .local v6, "e":Ljava/lang/Exception;
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public abstract getSmsAuthSuccess()V
.end method

.method protected getSmsCode(Ljava/lang/String;)V
    .locals 1
    .param p1, "phoneNum"    # Ljava/lang/String;

    .prologue
    .line 91
    iput-object p1, p0, Lcom/pubinfo/freewifialliance/controller/LoginFun;->num:Ljava/lang/String;

    .line 92
    new-instance v0, Lcom/iwifi/sdk/protocol/impl/GetPortalURL;

    invoke-direct {v0, p0}, Lcom/iwifi/sdk/protocol/impl/GetPortalURL;-><init>(Lcom/iwifi/sdk/protocol/GetPortalUrlCallback;)V

    .line 93
    return-void
.end method

.method public onAuthenticationReqFail(Ljava/lang/String;)V
    .locals 3
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 201
    const-string v0, "iWifiSDKDemo"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, " onAuthenticationReqFail : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 202
    invoke-virtual {p0}, Lcom/pubinfo/freewifialliance/controller/LoginFun;->getConfirmFail()V

    .line 203
    return-void
.end method

.method public onAuthenticationReqSucc(Ljava/lang/String;)V
    .locals 7
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 157
    const-string v4, "iWifiSDKDemo"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, " onAuthenticationReqSucc : "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 159
    :try_start_0
    invoke-static {p1}, Lcom/iwifi/sdk/parser/GetCodeResultParser;->GetJsonObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 161
    .local v0, "codeRes":Lorg/json/JSONObject;
    const-string v4, "result"

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/pubinfo/freewifialliance/controller/LoginFun;->result:Ljava/lang/String;

    .line 162
    const-string v4, "message"

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/pubinfo/freewifialliance/controller/LoginFun;->message:Ljava/lang/String;

    .line 163
    const-string v4, "appauth_type"

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/pubinfo/freewifialliance/controller/LoginFun;->appauth_type:Ljava/lang/String;

    .line 164
    const-string v4, "platform_code"

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/pubinfo/freewifialliance/controller/LoginFun;->platform_code:Ljava/lang/String;

    .line 165
    const-string v4, "logoffUrl"

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/pubinfo/freewifialliance/controller/LoginFun;->logoffUrl:Ljava/lang/String;

    .line 166
    const-string v4, "token"

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/pubinfo/freewifialliance/controller/LoginFun;->token:Ljava/lang/String;

    .line 167
    const-string v4, "portal_url"

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/pubinfo/freewifialliance/controller/LoginFun;->portal_url:Ljava/lang/String;

    .line 168
    const-string v4, "third_token"

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/pubinfo/freewifialliance/controller/LoginFun;->third_token:Ljava/lang/String;

    .line 169
    const-string v4, "dev_id"

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/pubinfo/freewifialliance/controller/LoginFun;->dev_id:Ljava/lang/String;

    .line 170
    const-string v4, "ac_name"

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/pubinfo/freewifialliance/controller/LoginFun;->ac_name:Ljava/lang/String;

    .line 172
    iget-object v4, p0, Lcom/pubinfo/freewifialliance/controller/LoginFun;->message:Ljava/lang/String;

    const-string v5, "Already onLine"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 176
    const-string v4, "LOGOFF"

    const/4 v5, 0x0

    .line 175
    invoke-virtual {p0, v4, v5}, Lcom/pubinfo/freewifialliance/controller/LoginFun;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 177
    .local v3, "sharedPreferences":Landroid/content/SharedPreferences;
    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 178
    .local v2, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v4, "result"

    iget-object v5, p0, Lcom/pubinfo/freewifialliance/controller/LoginFun;->result:Ljava/lang/String;

    invoke-interface {v2, v4, v5}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 179
    const-string v4, "message"

    iget-object v5, p0, Lcom/pubinfo/freewifialliance/controller/LoginFun;->message:Ljava/lang/String;

    invoke-interface {v2, v4, v5}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 180
    const-string v4, "appauth_type"

    iget-object v5, p0, Lcom/pubinfo/freewifialliance/controller/LoginFun;->appauth_type:Ljava/lang/String;

    invoke-interface {v2, v4, v5}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 181
    const-string v4, "platform_code"

    iget-object v5, p0, Lcom/pubinfo/freewifialliance/controller/LoginFun;->platform_code:Ljava/lang/String;

    invoke-interface {v2, v4, v5}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 182
    const-string v4, "logoffUrl"

    iget-object v5, p0, Lcom/pubinfo/freewifialliance/controller/LoginFun;->logoffUrl:Ljava/lang/String;

    invoke-interface {v2, v4, v5}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 183
    const-string v4, "token"

    iget-object v5, p0, Lcom/pubinfo/freewifialliance/controller/LoginFun;->token:Ljava/lang/String;

    invoke-interface {v2, v4, v5}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 184
    const-string v4, "portal_url"

    iget-object v5, p0, Lcom/pubinfo/freewifialliance/controller/LoginFun;->portal_url:Ljava/lang/String;

    invoke-interface {v2, v4, v5}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 185
    const-string v4, "third_token"

    iget-object v5, p0, Lcom/pubinfo/freewifialliance/controller/LoginFun;->third_token:Ljava/lang/String;

    invoke-interface {v2, v4, v5}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 186
    const-string v4, "dev_id"

    iget-object v5, p0, Lcom/pubinfo/freewifialliance/controller/LoginFun;->dev_id:Ljava/lang/String;

    invoke-interface {v2, v4, v5}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 187
    const-string v4, "ac_name"

    iget-object v5, p0, Lcom/pubinfo/freewifialliance/controller/LoginFun;->ac_name:Ljava/lang/String;

    invoke-interface {v2, v4, v5}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 188
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 196
    .end local v0    # "codeRes":Lorg/json/JSONObject;
    .end local v2    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local v3    # "sharedPreferences":Landroid/content/SharedPreferences;
    :cond_0
    :goto_0
    iget-object v4, p0, Lcom/pubinfo/freewifialliance/controller/LoginFun;->dev_id:Ljava/lang/String;

    invoke-virtual {p0, v4}, Lcom/pubinfo/freewifialliance/controller/LoginFun;->getConfirmSuccess(Ljava/lang/String;)V

    .line 197
    return-void

    .line 190
    :catch_0
    move-exception v1

    .line 192
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
