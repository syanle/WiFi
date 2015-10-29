.class public abstract Lcom/pubinfo/izhejiang/controller/ConnectFun;
.super Lcom/pubinfo/izhejiang/ThinkAndroidBaseActivity;
.source "ConnectFun.java"

# interfaces
.implements Lcom/iwifi/sdk/protocol/GlobaleAuthenticationRequestCallback;
.implements Lcom/cat/protocol/DoApInfoInterface;
.implements Lcom/cat/protocol/DoCommentInterface;


# instance fields
.field public ac_name:Ljava/lang/String;

.field public accountid:Ljava/lang/String;

.field public appauth_type:Ljava/lang/String;

.field public btn_commit:Landroid/widget/Button;

.field public dev_id:Ljava/lang/String;

.field public handler:Landroid/os/Handler;

.field public iv_tag:Landroid/widget/ImageView;

.field public logoffUrl:Ljava/lang/String;

.field public message:Ljava/lang/String;

.field public platform_code:Ljava/lang/String;

.field public portal_url:Ljava/lang/String;

.field public result:Ljava/lang/String;

.field public third_token:Ljava/lang/String;

.field public token:Ljava/lang/String;

.field public tv_msg:Landroid/widget/TextView;

.field private wifiManager:Landroid/net/wifi/WifiManager;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/pubinfo/izhejiang/ThinkAndroidBaseActivity;-><init>()V

    .line 211
    new-instance v0, Lcom/pubinfo/izhejiang/controller/ConnectFun$1;

    invoke-direct {v0, p0}, Lcom/pubinfo/izhejiang/controller/ConnectFun$1;-><init>(Lcom/pubinfo/izhejiang/controller/ConnectFun;)V

    iput-object v0, p0, Lcom/pubinfo/izhejiang/controller/ConnectFun;->handler:Landroid/os/Handler;

    .line 37
    return-void
.end method


# virtual methods
.method public abstract connTimeOut()V
.end method

.method public abstract connToWifi()V
.end method

.method protected getApInfo(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V
    .locals 1
    .param p1, "mac"    # Ljava/lang/String;
    .param p2, "authid"    # Ljava/lang/String;
    .param p3, "context"    # Landroid/content/Context;

    .prologue
    .line 94
    invoke-virtual {p0}, Lcom/pubinfo/izhejiang/controller/ConnectFun;->diffTime()V

    .line 95
    new-instance v0, Lcom/cat/impl/DoApInfoConn;

    invoke-direct {v0, p1, p2, p0, p3}, Lcom/cat/impl/DoApInfoConn;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/cat/protocol/DoApInfoInterface;Landroid/content/Context;)V

    .line 96
    return-void
.end method

.method protected getComment(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V
    .locals 7
    .param p1, "mac"    # Ljava/lang/String;
    .param p2, "authid"    # Ljava/lang/String;
    .param p3, "info"    # Ljava/lang/String;
    .param p4, "type"    # Ljava/lang/String;
    .param p5, "context"    # Landroid/content/Context;

    .prologue
    .line 103
    invoke-virtual {p0}, Lcom/pubinfo/izhejiang/controller/ConnectFun;->diffTime()V

    .line 104
    new-instance v0, Lcom/cat/impl/DoCommentConn;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p0

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/cat/impl/DoCommentConn;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/cat/protocol/DoCommentInterface;Landroid/content/Context;)V

    .line 105
    return-void
.end method

.method public abstract getConfirmFail()V
.end method

.method public abstract getConfirmSuccess(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public getConnectedWifiMac()Ljava/lang/String;
    .locals 2

    .prologue
    .line 244
    const-string v1, "wifi"

    invoke-virtual {p0, v1}, Lcom/pubinfo/izhejiang/controller/ConnectFun;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/WifiManager;

    iput-object v1, p0, Lcom/pubinfo/izhejiang/controller/ConnectFun;->wifiManager:Landroid/net/wifi/WifiManager;

    .line 245
    iget-object v1, p0, Lcom/pubinfo/izhejiang/controller/ConnectFun;->wifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v0

    .line 246
    .local v0, "wifiInfo":Landroid/net/wifi/WifiInfo;
    if-eqz v0, :cond_0

    .line 247
    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    move-result-object v1

    .line 249
    :goto_0
    return-object v1

    :cond_0
    const-string v1, ""

    goto :goto_0
.end method

.method public getStandardTime(J)Ljava/lang/String;
    .locals 4
    .param p1, "timestamp"    # J

    .prologue
    .line 254
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v2, "HH:mm:ss"

    .line 255
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    .line 254
    invoke-direct {v1, v2, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 256
    .local v1, "sdf":Ljava/text/SimpleDateFormat;
    const-string v2, "GMT+0"

    invoke-static {v2}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 257
    new-instance v0, Ljava/util/Date;

    const-wide/16 v2, 0x3e8

    mul-long/2addr v2, p1

    invoke-direct {v0, v2, v3}, Ljava/util/Date;-><init>(J)V

    .line 258
    .local v0, "date":Ljava/util/Date;
    invoke-virtual {v1, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    .line 259
    invoke-virtual {v1, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public onAuthenticationReqFail(Ljava/lang/String;)V
    .locals 3
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 204
    const-string v0, "iWifiSDKDemo"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, " onAuthenticationReqFail : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 205
    invoke-virtual {p0}, Lcom/pubinfo/izhejiang/controller/ConnectFun;->getConfirmFail()V

    .line 209
    return-void
.end method

.method public onAuthenticationReqSucc(Ljava/lang/String;)V
    .locals 7
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 152
    const-string v4, "iWifiSDKDemo"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, " onAuthenticationReqSucc : "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 154
    :try_start_0
    invoke-static {p1}, Lcom/iwifi/sdk/parser/GetCodeResultParser;->GetJsonObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 156
    .local v0, "codeRes":Lorg/json/JSONObject;
    const-string v4, "result"

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/pubinfo/izhejiang/controller/ConnectFun;->result:Ljava/lang/String;

    .line 157
    const-string v4, "message"

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/pubinfo/izhejiang/controller/ConnectFun;->message:Ljava/lang/String;

    .line 158
    const-string v4, "appauth_type"

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/pubinfo/izhejiang/controller/ConnectFun;->appauth_type:Ljava/lang/String;

    .line 159
    const-string v4, "logoffUrl"

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/pubinfo/izhejiang/controller/ConnectFun;->logoffUrl:Ljava/lang/String;

    .line 160
    const-string v4, "token"

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/pubinfo/izhejiang/controller/ConnectFun;->token:Ljava/lang/String;

    .line 161
    const-string v4, "portal_url"

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/pubinfo/izhejiang/controller/ConnectFun;->portal_url:Ljava/lang/String;

    .line 162
    const-string v4, "platform_code"

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/pubinfo/izhejiang/controller/ConnectFun;->platform_code:Ljava/lang/String;

    .line 163
    const-string v4, "third_token"

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/pubinfo/izhejiang/controller/ConnectFun;->third_token:Ljava/lang/String;

    .line 164
    const-string v4, "dev_id"

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/pubinfo/izhejiang/controller/ConnectFun;->dev_id:Ljava/lang/String;

    .line 165
    const-string v4, "ac_name"

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/pubinfo/izhejiang/controller/ConnectFun;->ac_name:Ljava/lang/String;

    .line 166
    const-string v4, "accountid"

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/pubinfo/izhejiang/controller/ConnectFun;->accountid:Ljava/lang/String;

    .line 168
    iget-object v4, p0, Lcom/pubinfo/izhejiang/controller/ConnectFun;->message:Ljava/lang/String;

    const-string v5, "Already onLine"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 170
    const-string v4, "LOGOFF"

    const/4 v5, 0x0

    .line 169
    invoke-virtual {p0, v4, v5}, Lcom/pubinfo/izhejiang/controller/ConnectFun;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 171
    .local v3, "sharedPreferences":Landroid/content/SharedPreferences;
    iget-object v4, p0, Lcom/pubinfo/izhejiang/controller/ConnectFun;->dev_id:Ljava/lang/String;

    const-string v5, ""

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/pubinfo/izhejiang/controller/ConnectFun;->dev_id:Ljava/lang/String;

    .line 172
    iget-object v4, p0, Lcom/pubinfo/izhejiang/controller/ConnectFun;->accountid:Ljava/lang/String;

    const-string v5, ""

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/pubinfo/izhejiang/controller/ConnectFun;->accountid:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 195
    .end local v0    # "codeRes":Lorg/json/JSONObject;
    .end local v3    # "sharedPreferences":Landroid/content/SharedPreferences;
    :goto_0
    iget-object v4, p0, Lcom/pubinfo/izhejiang/controller/ConnectFun;->dev_id:Ljava/lang/String;

    iget-object v5, p0, Lcom/pubinfo/izhejiang/controller/ConnectFun;->accountid:Ljava/lang/String;

    invoke-virtual {p0, v4, v5}, Lcom/pubinfo/izhejiang/controller/ConnectFun;->getConfirmSuccess(Ljava/lang/String;Ljava/lang/String;)V

    .line 200
    return-void

    .line 175
    .restart local v0    # "codeRes":Lorg/json/JSONObject;
    :cond_0
    :try_start_1
    const-string v4, "LOGOFF"

    const/4 v5, 0x0

    .line 174
    invoke-virtual {p0, v4, v5}, Lcom/pubinfo/izhejiang/controller/ConnectFun;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 176
    .restart local v3    # "sharedPreferences":Landroid/content/SharedPreferences;
    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 177
    .local v2, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v4, "result"

    iget-object v5, p0, Lcom/pubinfo/izhejiang/controller/ConnectFun;->result:Ljava/lang/String;

    invoke-interface {v2, v4, v5}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 178
    const-string v4, "message"

    iget-object v5, p0, Lcom/pubinfo/izhejiang/controller/ConnectFun;->message:Ljava/lang/String;

    invoke-interface {v2, v4, v5}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 179
    const-string v4, "appauth_type"

    iget-object v5, p0, Lcom/pubinfo/izhejiang/controller/ConnectFun;->appauth_type:Ljava/lang/String;

    invoke-interface {v2, v4, v5}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 180
    const-string v4, "logoffUrl"

    iget-object v5, p0, Lcom/pubinfo/izhejiang/controller/ConnectFun;->logoffUrl:Ljava/lang/String;

    invoke-interface {v2, v4, v5}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 181
    const-string v4, "token"

    iget-object v5, p0, Lcom/pubinfo/izhejiang/controller/ConnectFun;->token:Ljava/lang/String;

    invoke-interface {v2, v4, v5}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 182
    const-string v4, "portal_url"

    iget-object v5, p0, Lcom/pubinfo/izhejiang/controller/ConnectFun;->portal_url:Ljava/lang/String;

    invoke-interface {v2, v4, v5}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 183
    const-string v4, "platform_code"

    iget-object v5, p0, Lcom/pubinfo/izhejiang/controller/ConnectFun;->platform_code:Ljava/lang/String;

    invoke-interface {v2, v4, v5}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 184
    const-string v4, "third_token"

    iget-object v5, p0, Lcom/pubinfo/izhejiang/controller/ConnectFun;->third_token:Ljava/lang/String;

    invoke-interface {v2, v4, v5}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 185
    const-string v4, "dev_id"

    iget-object v5, p0, Lcom/pubinfo/izhejiang/controller/ConnectFun;->dev_id:Ljava/lang/String;

    invoke-interface {v2, v4, v5}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 186
    const-string v4, "ac_name"

    iget-object v5, p0, Lcom/pubinfo/izhejiang/controller/ConnectFun;->ac_name:Ljava/lang/String;

    invoke-interface {v2, v4, v5}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 187
    const-string v4, "accountid"

    iget-object v5, p0, Lcom/pubinfo/izhejiang/controller/ConnectFun;->accountid:Ljava/lang/String;

    invoke-interface {v2, v4, v5}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 188
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 190
    .end local v0    # "codeRes":Lorg/json/JSONObject;
    .end local v2    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local v3    # "sharedPreferences":Landroid/content/SharedPreferences;
    :catch_0
    move-exception v1

    .line 192
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public abstract setStatus(ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
.end method
