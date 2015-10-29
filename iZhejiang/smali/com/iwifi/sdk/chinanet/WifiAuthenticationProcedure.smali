.class public Lcom/iwifi/sdk/chinanet/WifiAuthenticationProcedure;
.super Ljava/lang/Object;
.source "WifiAuthenticationProcedure.java"

# interfaces
.implements Lcom/iwifi/sdk/chinanet/wispr/IWlanAuthenRequestCallback;


# static fields
.field protected static final CHINANET_MD5_SUFFIX:Ljava/lang/String; = "@www.51iwifi.com@"

.field protected static final CHINANET_USERNAME_SUFFIX:Ljava/lang/String; = "@51iwifi.com"


# instance fields
.field public ctx:Landroid/content/Context;

.field private is_webview_shown:Z

.field private logoffCallback:Lcom/iwifi/sdk/chinanet/WifiLogOffCallback;

.field private requestCallback:Lcom/iwifi/sdk/chinanet/WifiAuthenticationRequestCallback;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/iwifi/sdk/chinanet/WifiAuthenticationRequestCallback;Lcom/iwifi/sdk/chinanet/WifiLogOffCallback;)V
    .locals 1
    .param p1, "ctx"    # Landroid/content/Context;
    .param p2, "callback"    # Lcom/iwifi/sdk/chinanet/WifiAuthenticationRequestCallback;
    .param p3, "callback2"    # Lcom/iwifi/sdk/chinanet/WifiLogOffCallback;

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/iwifi/sdk/chinanet/WifiAuthenticationProcedure;->is_webview_shown:Z

    .line 30
    iput-object p1, p0, Lcom/iwifi/sdk/chinanet/WifiAuthenticationProcedure;->ctx:Landroid/content/Context;

    .line 31
    iput-object p2, p0, Lcom/iwifi/sdk/chinanet/WifiAuthenticationProcedure;->requestCallback:Lcom/iwifi/sdk/chinanet/WifiAuthenticationRequestCallback;

    .line 32
    iput-object p3, p0, Lcom/iwifi/sdk/chinanet/WifiAuthenticationProcedure;->logoffCallback:Lcom/iwifi/sdk/chinanet/WifiLogOffCallback;

    .line 34
    return-void
.end method


# virtual methods
.method public SetWebViewStatus(Z)V
    .locals 0
    .param p1, "ishown"    # Z

    .prologue
    .line 37
    iput-boolean p1, p0, Lcom/iwifi/sdk/chinanet/WifiAuthenticationProcedure;->is_webview_shown:Z

    .line 38
    return-void
.end method

.method public doAunthenticaterRequest(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "post_authenity_username"    # Ljava/lang/String;
    .param p2, "post_authenity_passowrd"    # Ljava/lang/String;

    .prologue
    .line 49
    new-instance v0, Lcom/iwifi/sdk/chinanet/wispr/WlanRoamingAuthProtocol;

    invoke-direct {v0}, Lcom/iwifi/sdk/chinanet/wispr/WlanRoamingAuthProtocol;-><init>()V

    .line 50
    .local v0, "wisprClient":Lcom/iwifi/sdk/chinanet/wispr/WlanRoamingAuthProtocol;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "@51iwifi.com"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 51
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "@51iwifi.com"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "@www.51iwifi.com@"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/iwifi/sdk/protocol/impl/SDKCommonMotheds;->getMD5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 50
    invoke-virtual {v0, v1, p2, v2, p0}, Lcom/iwifi/sdk/chinanet/wispr/WlanRoamingAuthProtocol;->doAunthenticaterRequest(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/iwifi/sdk/chinanet/wispr/IWlanAuthenRequestCallback;)V

    .line 53
    const-string v1, "iWiFiSDK|AAA Authentication|doAunthenticaterRequest"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "username="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "&password="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/iwifi/sdk/tools/Logger;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 54
    return-void
.end method

.method public doLogOffRequest(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "post_authenity_username"    # Ljava/lang/String;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    .line 57
    new-instance v0, Lcom/iwifi/sdk/chinanet/wispr/WlanRoamingAuthProtocol;

    invoke-direct {v0}, Lcom/iwifi/sdk/chinanet/wispr/WlanRoamingAuthProtocol;-><init>()V

    .line 59
    .local v0, "wisprClient":Lcom/iwifi/sdk/chinanet/wispr/WlanRoamingAuthProtocol;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "@51iwifi.com"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 58
    invoke-virtual {v0, p2, v1, p0}, Lcom/iwifi/sdk/chinanet/wispr/WlanRoamingAuthProtocol;->doLogOffRequest(Ljava/lang/String;Ljava/lang/String;Lcom/iwifi/sdk/chinanet/wispr/IWlanAuthenRequestCallback;)V

    .line 60
    const-string v1, "iWiFiSDK|AAA Logoff|doLogOffRequest"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "username="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "&LogoffUrl="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/iwifi/sdk/tools/Logger;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    return-void
.end method

.method public getWebViewStatus()Z
    .locals 1

    .prologue
    .line 41
    iget-boolean v0, p0, Lcom/iwifi/sdk/chinanet/WifiAuthenticationProcedure;->is_webview_shown:Z

    return v0
.end method

.method public onAuthenticationFailed(Lcom/iwifi/sdk/chinanet/wispr/WlanRoamingAuthProtocol$ResultInfos;)V
    .locals 3
    .param p1, "arg0"    # Lcom/iwifi/sdk/chinanet/wispr/WlanRoamingAuthProtocol$ResultInfos;

    .prologue
    .line 67
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "{\"result\":\"-1\",\"msg\":\""

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p1, Lcom/iwifi/sdk/chinanet/wispr/WlanRoamingAuthProtocol$ResultInfos;->failInfo:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\",\"logooffurl\":\"\"}"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 68
    .local v0, "msg":Ljava/lang/String;
    iget-object v1, p0, Lcom/iwifi/sdk/chinanet/WifiAuthenticationProcedure;->requestCallback:Lcom/iwifi/sdk/chinanet/WifiAuthenticationRequestCallback;

    invoke-virtual {v1, v0}, Lcom/iwifi/sdk/chinanet/WifiAuthenticationRequestCallback;->onAuthenticationRequestFailure(Ljava/lang/String;)V

    .line 69
    return-void
.end method

.method public onAuthenticationSuccuess(Lcom/iwifi/sdk/chinanet/wispr/WlanRoamingAuthProtocol$ResultInfos;)V
    .locals 4
    .param p1, "arg0"    # Lcom/iwifi/sdk/chinanet/wispr/WlanRoamingAuthProtocol$ResultInfos;

    .prologue
    .line 74
    iget-boolean v2, p0, Lcom/iwifi/sdk/chinanet/WifiAuthenticationProcedure;->is_webview_shown:Z

    if-eqz v2, :cond_0

    .line 75
    new-instance v0, Landroid/content/Intent;

    iget-object v2, p0, Lcom/iwifi/sdk/chinanet/WifiAuthenticationProcedure;->ctx:Landroid/content/Context;

    const-class v3, Lcom/iwifi/sdk/chinanet/WelcomePage;

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 76
    .local v0, "intent":Landroid/content/Intent;
    iget-object v2, p0, Lcom/iwifi/sdk/chinanet/WifiAuthenticationProcedure;->ctx:Landroid/content/Context;

    check-cast v2, Landroid/app/Activity;

    const/4 v3, 0x0

    invoke-virtual {v2, v0, v3}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 78
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "{\"result\":\"0\",\"msg\":\"\u6210\u529f\",\"logooffurl\":\""

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p1, Lcom/iwifi/sdk/chinanet/wispr/WlanRoamingAuthProtocol$ResultInfos;->logoffUrl:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\"}"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 79
    .local v1, "msg":Ljava/lang/String;
    iget-object v2, p0, Lcom/iwifi/sdk/chinanet/WifiAuthenticationProcedure;->requestCallback:Lcom/iwifi/sdk/chinanet/WifiAuthenticationRequestCallback;

    invoke-virtual {v2, v1}, Lcom/iwifi/sdk/chinanet/WifiAuthenticationRequestCallback;->onAuthenticationRequestSuccess(Ljava/lang/String;)V

    .line 81
    return-void
.end method

.method public onLogoffFailed(Lcom/iwifi/sdk/chinanet/wispr/WlanRoamingAuthProtocol$ResultInfos;)V
    .locals 3
    .param p1, "arg0"    # Lcom/iwifi/sdk/chinanet/wispr/WlanRoamingAuthProtocol$ResultInfos;

    .prologue
    .line 86
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "{\"result\":\"-1\",\"msg\":\""

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p1, Lcom/iwifi/sdk/chinanet/wispr/WlanRoamingAuthProtocol$ResultInfos;->failInfo:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\"}"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 87
    .local v0, "msg":Ljava/lang/String;
    iget-object v1, p0, Lcom/iwifi/sdk/chinanet/WifiAuthenticationProcedure;->logoffCallback:Lcom/iwifi/sdk/chinanet/WifiLogOffCallback;

    invoke-virtual {v1, v0}, Lcom/iwifi/sdk/chinanet/WifiLogOffCallback;->onLogOffFailure(Ljava/lang/String;)V

    .line 89
    return-void
.end method

.method public onLogoffSuccess(Lcom/iwifi/sdk/chinanet/wispr/WlanRoamingAuthProtocol$ResultInfos;)V
    .locals 2
    .param p1, "arg0"    # Lcom/iwifi/sdk/chinanet/wispr/WlanRoamingAuthProtocol$ResultInfos;

    .prologue
    .line 94
    const-string v0, "{\"result\":\"0\",\"msg\":\"\u6210\u529f\"}"

    .line 95
    .local v0, "msg":Ljava/lang/String;
    iget-object v1, p0, Lcom/iwifi/sdk/chinanet/WifiAuthenticationProcedure;->logoffCallback:Lcom/iwifi/sdk/chinanet/WifiLogOffCallback;

    invoke-virtual {v1, v0}, Lcom/iwifi/sdk/chinanet/WifiLogOffCallback;->onLogOffSuccess(Ljava/lang/String;)V

    .line 96
    return-void
.end method
