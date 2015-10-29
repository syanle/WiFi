.class Lcom/laiwang/sdk/channel/IILWAPIChannelProxy$LaiwangConnection;
.super Ljava/lang/Object;
.source "IILWAPIChannelProxy.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/laiwang/sdk/channel/IILWAPIChannelProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LaiwangConnection"
.end annotation


# instance fields
.field private mISDKConnListener:Lcom/laiwang/sdk/channel/IILWAPIChannelProxy$ISDKConnListener;

.field final synthetic this$0:Lcom/laiwang/sdk/channel/IILWAPIChannelProxy;


# direct methods
.method public constructor <init>(Lcom/laiwang/sdk/channel/IILWAPIChannelProxy;Lcom/laiwang/sdk/channel/IILWAPIChannelProxy$ISDKConnListener;)V
    .locals 0
    .param p2, "iSDKConnListener"    # Lcom/laiwang/sdk/channel/IILWAPIChannelProxy$ISDKConnListener;

    .prologue
    .line 125
    iput-object p1, p0, Lcom/laiwang/sdk/channel/IILWAPIChannelProxy$LaiwangConnection;->this$0:Lcom/laiwang/sdk/channel/IILWAPIChannelProxy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 126
    iput-object p2, p0, Lcom/laiwang/sdk/channel/IILWAPIChannelProxy$LaiwangConnection;->mISDKConnListener:Lcom/laiwang/sdk/channel/IILWAPIChannelProxy$ISDKConnListener;

    .line 127
    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 5
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    .prologue
    .line 131
    iget-object v0, p0, Lcom/laiwang/sdk/channel/IILWAPIChannelProxy$LaiwangConnection;->this$0:Lcom/laiwang/sdk/channel/IILWAPIChannelProxy;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-object v3, p0, Lcom/laiwang/sdk/channel/IILWAPIChannelProxy$LaiwangConnection;->this$0:Lcom/laiwang/sdk/channel/IILWAPIChannelProxy;

    # getter for: Lcom/laiwang/sdk/channel/IILWAPIChannelProxy;->mTimeStemp:J
    invoke-static {v3}, Lcom/laiwang/sdk/channel/IILWAPIChannelProxy;->access$0(Lcom/laiwang/sdk/channel/IILWAPIChannelProxy;)J

    move-result-wide v3

    sub-long/2addr v1, v3

    invoke-static {v0, v1, v2}, Lcom/laiwang/sdk/channel/IILWAPIChannelProxy;->access$1(Lcom/laiwang/sdk/channel/IILWAPIChannelProxy;J)V

    .line 132
    const-string v0, "LWAPI"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Laiwang service connected, time:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/laiwang/sdk/channel/IILWAPIChannelProxy$LaiwangConnection;->this$0:Lcom/laiwang/sdk/channel/IILWAPIChannelProxy;

    # getter for: Lcom/laiwang/sdk/channel/IILWAPIChannelProxy;->mTimeStemp:J
    invoke-static {v2}, Lcom/laiwang/sdk/channel/IILWAPIChannelProxy;->access$0(Lcom/laiwang/sdk/channel/IILWAPIChannelProxy;)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    iget-object v0, p0, Lcom/laiwang/sdk/channel/IILWAPIChannelProxy$LaiwangConnection;->this$0:Lcom/laiwang/sdk/channel/IILWAPIChannelProxy;

    invoke-static {p2}, Lcom/laiwang/sdk/channel/IILWAPIChannel$Stub;->asInterface(Landroid/os/IBinder;)Lcom/laiwang/sdk/channel/IILWAPIChannel;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/laiwang/sdk/channel/IILWAPIChannelProxy;->access$2(Lcom/laiwang/sdk/channel/IILWAPIChannelProxy;Lcom/laiwang/sdk/channel/IILWAPIChannel;)V

    .line 153
    iget-object v0, p0, Lcom/laiwang/sdk/channel/IILWAPIChannelProxy$LaiwangConnection;->mISDKConnListener:Lcom/laiwang/sdk/channel/IILWAPIChannelProxy$ISDKConnListener;

    if-eqz v0, :cond_0

    .line 154
    iget-object v0, p0, Lcom/laiwang/sdk/channel/IILWAPIChannelProxy$LaiwangConnection;->mISDKConnListener:Lcom/laiwang/sdk/channel/IILWAPIChannelProxy$ISDKConnListener;

    invoke-interface {v0}, Lcom/laiwang/sdk/channel/IILWAPIChannelProxy$ISDKConnListener;->onStart()V

    .line 157
    :cond_0
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2
    .param p1, "name"    # Landroid/content/ComponentName;

    .prologue
    .line 161
    const-string v0, "LWAPI"

    const-string v1, "Laiwang service diconnected"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 163
    iget-object v0, p0, Lcom/laiwang/sdk/channel/IILWAPIChannelProxy$LaiwangConnection;->this$0:Lcom/laiwang/sdk/channel/IILWAPIChannelProxy;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/laiwang/sdk/channel/IILWAPIChannelProxy;->access$2(Lcom/laiwang/sdk/channel/IILWAPIChannelProxy;Lcom/laiwang/sdk/channel/IILWAPIChannel;)V

    .line 164
    sget-boolean v0, Lcom/laiwang/sdk/openapi/LWAPI;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 165
    const-string v0, "SDK:laiwang diconnected"

    invoke-static {}, Lcom/laiwang/sdk/openapi/LWAPI;->getApplication()Landroid/app/Application;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/laiwang/sdk/utils/LWAPINotification;->showToast(Ljava/lang/String;Landroid/content/Context;)V

    .line 167
    :cond_0
    iget-object v0, p0, Lcom/laiwang/sdk/channel/IILWAPIChannelProxy$LaiwangConnection;->mISDKConnListener:Lcom/laiwang/sdk/channel/IILWAPIChannelProxy$ISDKConnListener;

    if-eqz v0, :cond_1

    .line 168
    iget-object v0, p0, Lcom/laiwang/sdk/channel/IILWAPIChannelProxy$LaiwangConnection;->mISDKConnListener:Lcom/laiwang/sdk/channel/IILWAPIChannelProxy$ISDKConnListener;

    invoke-interface {v0}, Lcom/laiwang/sdk/channel/IILWAPIChannelProxy$ISDKConnListener;->onStop()V

    .line 170
    :cond_1
    return-void
.end method
