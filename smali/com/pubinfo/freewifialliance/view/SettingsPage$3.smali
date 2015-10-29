.class Lcom/pubinfo/freewifialliance/view/SettingsPage$3;
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
    iput-object p1, p0, Lcom/pubinfo/freewifialliance/view/SettingsPage$3;->this$0:Lcom/pubinfo/freewifialliance/view/SettingsPage;

    .line 185
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSwitchChanged(Lcom/pubinfo/freewifialliance/view/SlideSwitch;I)V
    .locals 3
    .param p1, "obj"    # Lcom/pubinfo/freewifialliance/view/SlideSwitch;
    .param p2, "status"    # I

    .prologue
    const/4 v2, 0x1

    .line 190
    if-nez p2, :cond_1

    .line 191
    const/4 v1, 0x0

    invoke-static {v1}, Lcom/pubinfo/freewifialliance/view/SettingsPage;->access$5(I)V

    .line 192
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 193
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "com.pubinfo.freewifialliance.service.WifiConnService.StopNightSearchBroadcastReceiver"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 194
    iget-object v1, p0, Lcom/pubinfo/freewifialliance/view/SettingsPage$3;->this$0:Lcom/pubinfo/freewifialliance/view/SettingsPage;

    invoke-virtual {v1, v0}, Lcom/pubinfo/freewifialliance/view/SettingsPage;->sendBroadcast(Landroid/content/Intent;)V

    .line 205
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_0
    :goto_0
    return-void

    .line 195
    :cond_1
    if-ne p2, v2, :cond_0

    .line 196
    iget-object v1, p0, Lcom/pubinfo/freewifialliance/view/SettingsPage$3;->this$0:Lcom/pubinfo/freewifialliance/view/SettingsPage;

    # getter for: Lcom/pubinfo/freewifialliance/view/SettingsPage;->autoSearchSlideSwitch:Lcom/pubinfo/freewifialliance/view/SlideSwitch;
    invoke-static {v1}, Lcom/pubinfo/freewifialliance/view/SettingsPage;->access$0(Lcom/pubinfo/freewifialliance/view/SettingsPage;)Lcom/pubinfo/freewifialliance/view/SlideSwitch;

    move-result-object v1

    invoke-virtual {v1}, Lcom/pubinfo/freewifialliance/view/SlideSwitch;->getStatus()I

    move-result v1

    if-nez v1, :cond_2

    .line 197
    iget-object v1, p0, Lcom/pubinfo/freewifialliance/view/SettingsPage$3;->this$0:Lcom/pubinfo/freewifialliance/view/SettingsPage;

    # getter for: Lcom/pubinfo/freewifialliance/view/SettingsPage;->autoSearchSlideSwitch:Lcom/pubinfo/freewifialliance/view/SlideSwitch;
    invoke-static {v1}, Lcom/pubinfo/freewifialliance/view/SettingsPage;->access$0(Lcom/pubinfo/freewifialliance/view/SettingsPage;)Lcom/pubinfo/freewifialliance/view/SlideSwitch;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/pubinfo/freewifialliance/view/SlideSwitch;->setStatus(Z)V

    .line 199
    :cond_2
    invoke-static {v2}, Lcom/pubinfo/freewifialliance/view/SettingsPage;->access$5(I)V

    .line 200
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 201
    .restart local v0    # "intent":Landroid/content/Intent;
    const-string v1, "com.pubinfo.freewifialliance.service.WifiConnService.StartNightSearchBroadcastReceiver"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 202
    iget-object v1, p0, Lcom/pubinfo/freewifialliance/view/SettingsPage$3;->this$0:Lcom/pubinfo/freewifialliance/view/SettingsPage;

    invoke-virtual {v1, v0}, Lcom/pubinfo/freewifialliance/view/SettingsPage;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0
.end method
