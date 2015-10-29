.class Lcom/pubinfo/freewifialliance/view/SettingsPage$1;
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
    iput-object p1, p0, Lcom/pubinfo/freewifialliance/view/SettingsPage$1;->this$0:Lcom/pubinfo/freewifialliance/view/SettingsPage;

    .line 125
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSwitchChanged(Lcom/pubinfo/freewifialliance/view/SlideSwitch;I)V
    .locals 6
    .param p1, "obj"    # Lcom/pubinfo/freewifialliance/view/SlideSwitch;
    .param p2, "status"    # I

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 130
    if-nez p2, :cond_2

    .line 131
    iget-object v3, p0, Lcom/pubinfo/freewifialliance/view/SettingsPage$1;->this$0:Lcom/pubinfo/freewifialliance/view/SettingsPage;

    # getter for: Lcom/pubinfo/freewifialliance/view/SettingsPage;->autoSearchSlideSwitch:Lcom/pubinfo/freewifialliance/view/SlideSwitch;
    invoke-static {v3}, Lcom/pubinfo/freewifialliance/view/SettingsPage;->access$0(Lcom/pubinfo/freewifialliance/view/SettingsPage;)Lcom/pubinfo/freewifialliance/view/SlideSwitch;

    move-result-object v3

    invoke-virtual {v3}, Lcom/pubinfo/freewifialliance/view/SlideSwitch;->getStatus()I

    move-result v3

    if-ne v3, v4, :cond_0

    .line 132
    iget-object v3, p0, Lcom/pubinfo/freewifialliance/view/SettingsPage$1;->this$0:Lcom/pubinfo/freewifialliance/view/SettingsPage;

    # getter for: Lcom/pubinfo/freewifialliance/view/SettingsPage;->autoSearchSlideSwitch:Lcom/pubinfo/freewifialliance/view/SlideSwitch;
    invoke-static {v3}, Lcom/pubinfo/freewifialliance/view/SettingsPage;->access$0(Lcom/pubinfo/freewifialliance/view/SettingsPage;)Lcom/pubinfo/freewifialliance/view/SlideSwitch;

    move-result-object v3

    invoke-virtual {v3, v5}, Lcom/pubinfo/freewifialliance/view/SlideSwitch;->setStatus(Z)V

    .line 134
    :cond_0
    invoke-static {v5}, Lcom/pubinfo/freewifialliance/view/SettingsPage;->access$1(I)V

    .line 135
    iget-object v3, p0, Lcom/pubinfo/freewifialliance/view/SettingsPage$1;->this$0:Lcom/pubinfo/freewifialliance/view/SettingsPage;

    const-string v4, "service"

    invoke-virtual {v3, v4, v5}, Lcom/pubinfo/freewifialliance/view/SettingsPage;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 136
    .local v2, "sharedPreferences":Landroid/content/SharedPreferences;
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 137
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v3, "stop"

    const-string v4, "stop"

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 138
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 139
    new-instance v1, Landroid/content/Intent;

    iget-object v3, p0, Lcom/pubinfo/freewifialliance/view/SettingsPage$1;->this$0:Lcom/pubinfo/freewifialliance/view/SettingsPage;

    const-class v4, Lcom/pubinfo/freewifialliance/service/WifiConnService;

    invoke-direct {v1, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 140
    .local v1, "intent":Landroid/content/Intent;
    iget-object v3, p0, Lcom/pubinfo/freewifialliance/view/SettingsPage$1;->this$0:Lcom/pubinfo/freewifialliance/view/SettingsPage;

    invoke-virtual {v3, v1}, Lcom/pubinfo/freewifialliance/view/SettingsPage;->stopService(Landroid/content/Intent;)Z

    .line 149
    .end local v0    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local v1    # "intent":Landroid/content/Intent;
    .end local v2    # "sharedPreferences":Landroid/content/SharedPreferences;
    :cond_1
    :goto_0
    return-void

    .line 141
    :cond_2
    if-ne p2, v4, :cond_1

    .line 142
    invoke-static {v4}, Lcom/pubinfo/freewifialliance/view/SettingsPage;->access$1(I)V

    .line 143
    iget-object v3, p0, Lcom/pubinfo/freewifialliance/view/SettingsPage$1;->this$0:Lcom/pubinfo/freewifialliance/view/SettingsPage;

    invoke-virtual {v3}, Lcom/pubinfo/freewifialliance/view/SettingsPage;->startWifiService()V

    .line 144
    iget-object v3, p0, Lcom/pubinfo/freewifialliance/view/SettingsPage$1;->this$0:Lcom/pubinfo/freewifialliance/view/SettingsPage;

    const-string v4, "service"

    invoke-virtual {v3, v4, v5}, Lcom/pubinfo/freewifialliance/view/SettingsPage;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 145
    .restart local v2    # "sharedPreferences":Landroid/content/SharedPreferences;
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 146
    .restart local v0    # "editor":Landroid/content/SharedPreferences$Editor;
    const-string v3, "stop"

    const-string v4, ""

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 147
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_0
.end method
