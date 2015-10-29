.class public Lcom/laiwang/sdk/channel/IILWAPIChannelProxy;
.super Ljava/lang/Object;
.source "IILWAPIChannelProxy.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/laiwang/sdk/channel/IILWAPIChannelProxy$ISDKConnListener;,
        Lcom/laiwang/sdk/channel/IILWAPIChannelProxy$LaiwangConnection;
    }
.end annotation


# instance fields
.field private mLWApiProxy:Lcom/laiwang/sdk/channel/IILWAPIChannel;

.field private mLaiwangConnection:Lcom/laiwang/sdk/channel/IILWAPIChannelProxy$LaiwangConnection;

.field private mTimeStemp:J


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object v0, p0, Lcom/laiwang/sdk/channel/IILWAPIChannelProxy;->mLWApiProxy:Lcom/laiwang/sdk/channel/IILWAPIChannel;

    .line 27
    iput-object v0, p0, Lcom/laiwang/sdk/channel/IILWAPIChannelProxy;->mLaiwangConnection:Lcom/laiwang/sdk/channel/IILWAPIChannelProxy$LaiwangConnection;

    .line 24
    return-void
.end method

.method static synthetic access$0(Lcom/laiwang/sdk/channel/IILWAPIChannelProxy;)J
    .locals 2

    .prologue
    .line 29
    iget-wide v0, p0, Lcom/laiwang/sdk/channel/IILWAPIChannelProxy;->mTimeStemp:J

    return-wide v0
.end method

.method static synthetic access$1(Lcom/laiwang/sdk/channel/IILWAPIChannelProxy;J)V
    .locals 0

    .prologue
    .line 29
    iput-wide p1, p0, Lcom/laiwang/sdk/channel/IILWAPIChannelProxy;->mTimeStemp:J

    return-void
.end method

.method static synthetic access$2(Lcom/laiwang/sdk/channel/IILWAPIChannelProxy;Lcom/laiwang/sdk/channel/IILWAPIChannel;)V
    .locals 0

    .prologue
    .line 26
    iput-object p1, p0, Lcom/laiwang/sdk/channel/IILWAPIChannelProxy;->mLWApiProxy:Lcom/laiwang/sdk/channel/IILWAPIChannel;

    return-void
.end method


# virtual methods
.method public bindLaiwangService(Lcom/laiwang/sdk/channel/IILWAPIChannelProxy$ISDKConnListener;)Z
    .locals 6
    .param p1, "iSDKConnListener"    # Lcom/laiwang/sdk/channel/IILWAPIChannelProxy$ISDKConnListener;

    .prologue
    const/4 v1, 0x1

    .line 84
    iget-object v3, p0, Lcom/laiwang/sdk/channel/IILWAPIChannelProxy;->mLaiwangConnection:Lcom/laiwang/sdk/channel/IILWAPIChannelProxy$LaiwangConnection;

    if-nez v3, :cond_2

    .line 85
    new-instance v3, Lcom/laiwang/sdk/channel/IILWAPIChannelProxy$LaiwangConnection;

    invoke-direct {v3, p0, p1}, Lcom/laiwang/sdk/channel/IILWAPIChannelProxy$LaiwangConnection;-><init>(Lcom/laiwang/sdk/channel/IILWAPIChannelProxy;Lcom/laiwang/sdk/channel/IILWAPIChannelProxy$ISDKConnListener;)V

    iput-object v3, p0, Lcom/laiwang/sdk/channel/IILWAPIChannelProxy;->mLaiwangConnection:Lcom/laiwang/sdk/channel/IILWAPIChannelProxy$LaiwangConnection;

    .line 93
    :cond_0
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 95
    .local v2, "intentService":Landroid/content/Intent;
    const-string v3, "com.alibaba.android.babylon"

    const-string v4, "com.alibaba.android.babylon.push.CMNSService"

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 96
    const-string v3, "LWAPI"

    const-string v4, "Laiwang service is binding."

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    sget-boolean v3, Lcom/laiwang/sdk/openapi/LWAPI;->DEBUG:Z

    if-eqz v3, :cond_1

    .line 98
    const-string v3, "SDK:laiwang binding"

    invoke-static {}, Lcom/laiwang/sdk/openapi/LWAPI;->getApplication()Landroid/app/Application;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/laiwang/sdk/utils/LWAPINotification;->showToast(Ljava/lang/String;Landroid/content/Context;)V

    .line 101
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/laiwang/sdk/channel/IILWAPIChannelProxy;->mTimeStemp:J

    .line 102
    const/4 v1, 0x0

    .line 104
    .local v1, "exitService":Z
    :try_start_0
    invoke-static {}, Lcom/laiwang/sdk/openapi/LWAPI;->getApplication()Landroid/app/Application;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/app/Application;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 105
    invoke-static {}, Lcom/laiwang/sdk/openapi/LWAPI;->getApplication()Landroid/app/Application;

    move-result-object v3

    iget-object v4, p0, Lcom/laiwang/sdk/channel/IILWAPIChannelProxy;->mLaiwangConnection:Lcom/laiwang/sdk/channel/IILWAPIChannelProxy$LaiwangConnection;

    const/4 v5, 0x1

    invoke-virtual {v3, v2, v4, v5}, Landroid/app/Application;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 111
    .end local v1    # "exitService":Z
    .end local v2    # "intentService":Landroid/content/Intent;
    :goto_0
    return v1

    .line 87
    :cond_2
    iget-object v3, p0, Lcom/laiwang/sdk/channel/IILWAPIChannelProxy;->mLWApiProxy:Lcom/laiwang/sdk/channel/IILWAPIChannel;

    if-eqz v3, :cond_0

    if-eqz p1, :cond_0

    .line 88
    const-string v3, "LWAPI"

    const-string v4, "Laiwang service has already started."

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    invoke-interface {p1}, Lcom/laiwang/sdk/channel/IILWAPIChannelProxy$ISDKConnListener;->onStart()V

    goto :goto_0

    .line 106
    .restart local v1    # "exitService":Z
    .restart local v2    # "intentService":Landroid/content/Intent;
    :catch_0
    move-exception v0

    .line 108
    .local v0, "e":Ljava/lang/Exception;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isConnected()Z
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/laiwang/sdk/channel/IILWAPIChannelProxy;->mLWApiProxy:Lcom/laiwang/sdk/channel/IILWAPIChannel;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/laiwang/sdk/channel/IILWAPIChannelProxy;->mLaiwangConnection:Lcom/laiwang/sdk/channel/IILWAPIChannelProxy$LaiwangConnection;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public registerAPP(Lcom/laiwang/sdk/openapi/LWAPIAccount;Lcom/laiwang/sdk/openapi/IILWAPICallback;ILjava/lang/String;)I
    .locals 3
    .param p1, "iLWAPIAccount"    # Lcom/laiwang/sdk/openapi/LWAPIAccount;
    .param p2, "iLWAPICallback"    # Lcom/laiwang/sdk/openapi/IILWAPICallback;
    .param p3, "version"    # I
    .param p4, "appName"    # Ljava/lang/String;

    .prologue
    .line 68
    const/4 v1, -0x1

    .line 70
    .local v1, "ret":I
    :try_start_0
    iget-object v2, p0, Lcom/laiwang/sdk/channel/IILWAPIChannelProxy;->mLWApiProxy:Lcom/laiwang/sdk/channel/IILWAPIChannel;

    invoke-interface {v2, p1, p2, p3, p4}, Lcom/laiwang/sdk/channel/IILWAPIChannel;->registerME(Lcom/laiwang/sdk/openapi/LWAPIAccount;Lcom/laiwang/sdk/openapi/IILWAPICallback;ILjava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    move v2, v1

    .line 79
    :goto_0
    return v2

    .line 74
    :catch_0
    move-exception v0

    .line 75
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 76
    const/4 v2, -0x1

    goto :goto_0
.end method

.method public requestData(Lcom/laiwang/sdk/openapi/LWAPIAccount;Landroid/os/Bundle;I)I
    .locals 2
    .param p1, "lwAPIAccount"    # Lcom/laiwang/sdk/openapi/LWAPIAccount;
    .param p2, "reqData"    # Landroid/os/Bundle;
    .param p3, "version"    # I

    .prologue
    .line 39
    :try_start_0
    iget-object v1, p0, Lcom/laiwang/sdk/channel/IILWAPIChannelProxy;->mLWApiProxy:Lcom/laiwang/sdk/channel/IILWAPIChannel;

    invoke-interface {v1, p1, p2, p3}, Lcom/laiwang/sdk/channel/IILWAPIChannel;->requestData(Lcom/laiwang/sdk/openapi/LWAPIAccount;Landroid/os/Bundle;I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 44
    :goto_0
    return v1

    .line 40
    :catch_0
    move-exception v0

    .line 41
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 44
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public transportData(Lcom/laiwang/sdk/openapi/LWAPIAccount;Lcom/laiwang/sdk/message/LWMessage;I)I
    .locals 4
    .param p1, "lwAPIAccount"    # Lcom/laiwang/sdk/openapi/LWAPIAccount;
    .param p2, "lwMessage"    # Lcom/laiwang/sdk/message/LWMessage;
    .param p3, "version"    # I

    .prologue
    const/4 v2, -0x1

    .line 49
    const/4 v1, -0x1

    .line 51
    .local v1, "ret":I
    const/4 v3, 0x0

    :try_start_0
    invoke-virtual {p1, v3}, Lcom/laiwang/sdk/openapi/LWAPIAccount;->setLwapiRandomKey(I)V

    .line 52
    iget-object v3, p0, Lcom/laiwang/sdk/channel/IILWAPIChannelProxy;->mLWApiProxy:Lcom/laiwang/sdk/channel/IILWAPIChannel;

    invoke-interface {v3, p1, p2, p3}, Lcom/laiwang/sdk/channel/IILWAPIChannel;->transportData(Lcom/laiwang/sdk/openapi/LWAPIAccount;Lcom/laiwang/sdk/message/LWMessage;I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 59
    invoke-virtual {p1}, Lcom/laiwang/sdk/openapi/LWAPIAccount;->getLwapiRandomKey()I

    move-result v3

    if-nez v3, :cond_0

    .line 63
    :goto_0
    return v2

    .line 53
    :catch_0
    move-exception v0

    .line 54
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    move v2, v1

    .line 63
    goto :goto_0
.end method
