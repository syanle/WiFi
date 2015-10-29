.class Lcom/pubinfo/freewifialliance/view/SettingsPage$2;
.super Ljava/lang/Object;
.source "SettingsPage.java"

# interfaces
.implements Lcom/pubinfo/freewifialliance/view/SlideSwitch$OnSwitchChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pubinfo/freewifialliance/view/SettingsPage;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pubinfo/freewifialliance/view/SettingsPage;


# direct methods
.method constructor <init>(Lcom/pubinfo/freewifialliance/view/SettingsPage;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/pubinfo/freewifialliance/view/SettingsPage$2;->this$0:Lcom/pubinfo/freewifialliance/view/SettingsPage;

    .line 156
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSwitchChanged(Lcom/pubinfo/freewifialliance/view/SlideSwitch;I)V
    .locals 4
    .param p1, "obj"    # Lcom/pubinfo/freewifialliance/view/SlideSwitch;
    .param p2, "status"    # I

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 161
    if-nez p2, :cond_2

    .line 162
    iget-object v1, p0, Lcom/pubinfo/freewifialliance/view/SettingsPage$2;->this$0:Lcom/pubinfo/freewifialliance/view/SettingsPage;

    # getter for: Lcom/pubinfo/freewifialliance/view/SettingsPage;->nightStopSlideSwitch:Lcom/pubinfo/freewifialliance/view/SlideSwitch;
    invoke-static {v1}, Lcom/pubinfo/freewifialliance/view/SettingsPage;->access$2(Lcom/pubinfo/freewifialliance/view/SettingsPage;)Lcom/pubinfo/freewifialliance/view/SlideSwitch;

    move-result-object v1

    invoke-virtual {v1}, Lcom/pubinfo/freewifialliance/view/SlideSwitch;->getStatus()I

    move-result v1

    if-ne v1, v2, :cond_0

    .line 163
    iget-object v1, p0, Lcom/pubinfo/freewifialliance/view/SettingsPage$2;->this$0:Lcom/pubinfo/freewifialliance/view/SettingsPage;

    # getter for: Lcom/pubinfo/freewifialliance/view/SettingsPage;->nightStopSlideSwitch:Lcom/pubinfo/freewifialliance/view/SlideSwitch;
    invoke-static {v1}, Lcom/pubinfo/freewifialliance/view/SettingsPage;->access$2(Lcom/pubinfo/freewifialliance/view/SettingsPage;)Lcom/pubinfo/freewifialliance/view/SlideSwitch;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/pubinfo/freewifialliance/view/SlideSwitch;->setStatus(Z)V

    .line 165
    :cond_0
    invoke-static {v3}, Lcom/pubinfo/freewifialliance/view/SettingsPage;->access$3(I)V

    .line 166
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 167
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "com.pubinfo.freewifialliance.service.WifiConnService.StopTaskBroadcastReceiver"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 168
    iget-object v1, p0, Lcom/pubinfo/freewifialliance/view/SettingsPage$2;->this$0:Lcom/pubinfo/freewifialliance/view/SettingsPage;

    invoke-virtual {v1, v0}, Lcom/pubinfo/freewifialliance/view/SettingsPage;->sendBroadcast(Landroid/content/Intent;)V

    .line 178
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_1
    :goto_0
    return-void

    .line 169
    :cond_2
    if-ne p2, v2, :cond_1

    .line 170
    iget-object v1, p0, Lcom/pubinfo/freewifialliance/view/SettingsPage$2;->this$0:Lcom/pubinfo/freewifialliance/view/SettingsPage;

    # getter for: Lcom/pubinfo/freewifialliance/view/SettingsPage;->isShowDeskViewSlideSwitch:Lcom/pubinfo/freewifialliance/view/SlideSwitch;
    invoke-static {v1}, Lcom/pubinfo/freewifialliance/view/SettingsPage;->access$4(Lcom/pubinfo/freewifialliance/view/SettingsPage;)Lcom/pubinfo/freewifialliance/view/SlideSwitch;

    move-result-object v1

    invoke-virtual {v1}, Lcom/pubinfo/freewifialliance/view/SlideSwitch;->getStatus()I

    move-result v1

    if-nez v1, :cond_3

    .line 171
    iget-object v1, p0, Lcom/pubinfo/freewifialliance/view/SettingsPage$2;->this$0:Lcom/pubinfo/freewifialliance/view/SettingsPage;

    # getter for: Lcom/pubinfo/freewifialliance/view/SettingsPage;->isShowDeskViewSlideSwitch:Lcom/pubinfo/freewifialliance/view/SlideSwitch;
    invoke-static {v1}, Lcom/pubinfo/freewifialliance/view/SettingsPage;->access$4(Lcom/pubinfo/freewifialliance/view/SettingsPage;)Lcom/pubinfo/freewifialliance/view/SlideSwitch;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/pubinfo/freewifialliance/view/SlideSwitch;->setStatus(Z)V

    .line 173
    :cond_3
    invoke-static {v2}, Lcom/pubinfo/freewifialliance/view/SettingsPage;->access$3(I)V

    .line 174
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 175
    .restart local v0    # "intent":Landroid/content/Intent;
    const-string v1, "com.pubinfo.freewifialliance.service.WifiConnService.StartTaskBroadcastReceiver"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 176
    iget-object v1, p0, Lcom/pubinfo/freewifialliance/view/SettingsPage$2;->this$0:Lcom/pubinfo/freewifialliance/view/SettingsPage;

    invoke-virtual {v1, v0}, Lcom/pubinfo/freewifialliance/view/SettingsPage;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0
.end method
