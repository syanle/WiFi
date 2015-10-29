.class public Lcom/pubinfo/freewifialliance/view/SettingsPage;
.super Lcom/pubinfo/wifi_core/AppBaseActivity;
.source "SettingsPage.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static final SETTINGS:Ljava/lang/String; = "settings"

.field public static final STOP_SERVICE:Ljava/lang/String; = "stop"

.field public static final STOP_SP:Ljava/lang/String; = "service"

.field public static final SWITCH_OFF:I = 0x0

.field public static final SWITCH_ON:I = 0x1

.field private static auto:I

.field private static desk:I

.field private static night:I


# instance fields
.field WIFICONN:Ljava/lang/String;

.field about_rlLayout:Landroid/widget/RelativeLayout;

.field private autoSearchSlideSwitch:Lcom/pubinfo/freewifialliance/view/SlideSwitch;

.field auto_rlLayout:Landroid/widget/RelativeLayout;

.field backButton:Landroid/widget/ImageButton;

.field desk_rlLayout:Landroid/widget/RelativeLayout;

.field private file:Ljava/io/File;

.field private isShowDeskViewSlideSwitch:Lcom/pubinfo/freewifialliance/view/SlideSwitch;

.field ishaveNew:Z

.field ishaveNewImageView:Landroid/widget/ImageView;

.field lpLayoutParams:Landroid/widget/RelativeLayout$LayoutParams;

.field private mLocalVersionName:Ljava/lang/String;

.field private mPackMg:Landroid/content/pm/PackageManager;

.field new_rlLayout:Landroid/widget/RelativeLayout;

.field private nightStopSlideSwitch:Lcom/pubinfo/freewifialliance/view/SlideSwitch;

.field night_rlLayout:Landroid/widget/RelativeLayout;

.field refreshButton:Landroid/widget/ImageButton;

.field private wifiManager:Landroid/net/wifi/WifiManager;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/pubinfo/wifi_core/AppBaseActivity;-><init>()V

    .line 60
    const-string v0, "com.pubinfo.freewifialliance.service.WifiConnService"

    iput-object v0, p0, Lcom/pubinfo/freewifialliance/view/SettingsPage;->WIFICONN:Ljava/lang/String;

    .line 255
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/pubinfo/freewifialliance/view/SettingsPage;->mPackMg:Landroid/content/pm/PackageManager;

    .line 256
    const-string v0, ""

    iput-object v0, p0, Lcom/pubinfo/freewifialliance/view/SettingsPage;->mLocalVersionName:Ljava/lang/String;

    .line 31
    return-void
.end method

.method static synthetic access$0(Lcom/pubinfo/freewifialliance/view/SettingsPage;)Lcom/pubinfo/freewifialliance/view/SlideSwitch;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/pubinfo/freewifialliance/view/SettingsPage;->autoSearchSlideSwitch:Lcom/pubinfo/freewifialliance/view/SlideSwitch;

    return-object v0
.end method

.method static synthetic access$1(I)V
    .locals 0

    .prologue
    .line 46
    sput p0, Lcom/pubinfo/freewifialliance/view/SettingsPage;->desk:I

    return-void
.end method

.method static synthetic access$2(Lcom/pubinfo/freewifialliance/view/SettingsPage;)Lcom/pubinfo/freewifialliance/view/SlideSwitch;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/pubinfo/freewifialliance/view/SettingsPage;->nightStopSlideSwitch:Lcom/pubinfo/freewifialliance/view/SlideSwitch;

    return-object v0
.end method

.method static synthetic access$3(I)V
    .locals 0

    .prologue
    .line 48
    sput p0, Lcom/pubinfo/freewifialliance/view/SettingsPage;->auto:I

    return-void
.end method

.method static synthetic access$4(Lcom/pubinfo/freewifialliance/view/SettingsPage;)Lcom/pubinfo/freewifialliance/view/SlideSwitch;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/pubinfo/freewifialliance/view/SettingsPage;->isShowDeskViewSlideSwitch:Lcom/pubinfo/freewifialliance/view/SlideSwitch;

    return-object v0
.end method

.method static synthetic access$5(I)V
    .locals 0

    .prologue
    .line 44
    sput p0, Lcom/pubinfo/freewifialliance/view/SettingsPage;->night:I

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 262
    iget-object v0, p0, Lcom/pubinfo/freewifialliance/view/SettingsPage;->about_rlLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 264
    iget-object v0, p0, Lcom/pubinfo/freewifialliance/view/SettingsPage;->new_rlLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 266
    iget-object v0, p0, Lcom/pubinfo/freewifialliance/view/SettingsPage;->backButton:Landroid/widget/ImageButton;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 267
    invoke-virtual {p0}, Lcom/pubinfo/freewifialliance/view/SettingsPage;->finish()V

    .line 269
    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 7
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v6, -0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v3, -0x1

    .line 77
    invoke-super {p0, p1}, Lcom/pubinfo/wifi_core/AppBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 78
    const v1, 0x7f030012

    invoke-virtual {p0, v1}, Lcom/pubinfo/freewifialliance/view/SettingsPage;->setContentView(I)V

    .line 80
    const v1, 0x7f0c0047

    invoke-virtual {p0, v1}, Lcom/pubinfo/freewifialliance/view/SettingsPage;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    iput-object v1, p0, Lcom/pubinfo/freewifialliance/view/SettingsPage;->night_rlLayout:Landroid/widget/RelativeLayout;

    .line 81
    const v1, 0x7f0c0046

    invoke-virtual {p0, v1}, Lcom/pubinfo/freewifialliance/view/SettingsPage;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    iput-object v1, p0, Lcom/pubinfo/freewifialliance/view/SettingsPage;->auto_rlLayout:Landroid/widget/RelativeLayout;

    .line 82
    const v1, 0x7f0c0045

    invoke-virtual {p0, v1}, Lcom/pubinfo/freewifialliance/view/SettingsPage;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    iput-object v1, p0, Lcom/pubinfo/freewifialliance/view/SettingsPage;->desk_rlLayout:Landroid/widget/RelativeLayout;

    .line 84
    const v1, 0x7f0c005b

    invoke-virtual {p0, v1}, Lcom/pubinfo/freewifialliance/view/SettingsPage;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    iput-object v1, p0, Lcom/pubinfo/freewifialliance/view/SettingsPage;->refreshButton:Landroid/widget/ImageButton;

    .line 85
    iget-object v1, p0, Lcom/pubinfo/freewifialliance/view/SettingsPage;->refreshButton:Landroid/widget/ImageButton;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 87
    const v1, 0x7f0c0014

    invoke-virtual {p0, v1}, Lcom/pubinfo/freewifialliance/view/SettingsPage;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    iput-object v1, p0, Lcom/pubinfo/freewifialliance/view/SettingsPage;->backButton:Landroid/widget/ImageButton;

    .line 88
    iget-object v1, p0, Lcom/pubinfo/freewifialliance/view/SettingsPage;->backButton:Landroid/widget/ImageButton;

    invoke-virtual {v1, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 90
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v6, v6}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    iput-object v1, p0, Lcom/pubinfo/freewifialliance/view/SettingsPage;->lpLayoutParams:Landroid/widget/RelativeLayout$LayoutParams;

    .line 91
    iget-object v1, p0, Lcom/pubinfo/freewifialliance/view/SettingsPage;->lpLayoutParams:Landroid/widget/RelativeLayout$LayoutParams;

    const/16 v2, 0xb

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 92
    iget-object v1, p0, Lcom/pubinfo/freewifialliance/view/SettingsPage;->lpLayoutParams:Landroid/widget/RelativeLayout$LayoutParams;

    const/16 v2, 0xf

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 93
    iget-object v1, p0, Lcom/pubinfo/freewifialliance/view/SettingsPage;->lpLayoutParams:Landroid/widget/RelativeLayout$LayoutParams;

    const/16 v2, 0xa

    invoke-virtual {v1, v4, v4, v2, v4}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 96
    const-string v1, "settings"

    invoke-virtual {p0, v1, v4}, Lcom/pubinfo/freewifialliance/view/SettingsPage;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 97
    .local v0, "sharedPreferences":Landroid/content/SharedPreferences;
    const-string v1, "night"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v3, :cond_0

    .line 98
    sput v5, Lcom/pubinfo/freewifialliance/view/SettingsPage;->night:I

    .line 99
    sput v5, Lcom/pubinfo/freewifialliance/view/SettingsPage;->desk:I

    .line 100
    sput v5, Lcom/pubinfo/freewifialliance/view/SettingsPage;->auto:I

    .line 109
    :goto_0
    new-instance v1, Lcom/pubinfo/freewifialliance/view/SlideSwitch;

    sget v2, Lcom/pubinfo/freewifialliance/view/SettingsPage;->night:I

    invoke-direct {v1, p0, v2}, Lcom/pubinfo/freewifialliance/view/SlideSwitch;-><init>(Landroid/content/Context;I)V

    iput-object v1, p0, Lcom/pubinfo/freewifialliance/view/SettingsPage;->nightStopSlideSwitch:Lcom/pubinfo/freewifialliance/view/SlideSwitch;

    .line 110
    iget-object v1, p0, Lcom/pubinfo/freewifialliance/view/SettingsPage;->night_rlLayout:Landroid/widget/RelativeLayout;

    iget-object v2, p0, Lcom/pubinfo/freewifialliance/view/SettingsPage;->nightStopSlideSwitch:Lcom/pubinfo/freewifialliance/view/SlideSwitch;

    iget-object v3, p0, Lcom/pubinfo/freewifialliance/view/SettingsPage;->lpLayoutParams:Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {v1, v2, v3}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 113
    new-instance v1, Lcom/pubinfo/freewifialliance/view/SlideSwitch;

    sget v2, Lcom/pubinfo/freewifialliance/view/SettingsPage;->auto:I

    invoke-direct {v1, p0, v2}, Lcom/pubinfo/freewifialliance/view/SlideSwitch;-><init>(Landroid/content/Context;I)V

    iput-object v1, p0, Lcom/pubinfo/freewifialliance/view/SettingsPage;->autoSearchSlideSwitch:Lcom/pubinfo/freewifialliance/view/SlideSwitch;

    .line 114
    iget-object v1, p0, Lcom/pubinfo/freewifialliance/view/SettingsPage;->auto_rlLayout:Landroid/widget/RelativeLayout;

    iget-object v2, p0, Lcom/pubinfo/freewifialliance/view/SettingsPage;->autoSearchSlideSwitch:Lcom/pubinfo/freewifialliance/view/SlideSwitch;

    iget-object v3, p0, Lcom/pubinfo/freewifialliance/view/SettingsPage;->lpLayoutParams:Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {v1, v2, v3}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 117
    new-instance v1, Lcom/pubinfo/freewifialliance/view/SlideSwitch;

    sget v2, Lcom/pubinfo/freewifialliance/view/SettingsPage;->desk:I

    invoke-direct {v1, p0, v2}, Lcom/pubinfo/freewifialliance/view/SlideSwitch;-><init>(Landroid/content/Context;I)V

    iput-object v1, p0, Lcom/pubinfo/freewifialliance/view/SettingsPage;->isShowDeskViewSlideSwitch:Lcom/pubinfo/freewifialliance/view/SlideSwitch;

    .line 118
    iget-object v1, p0, Lcom/pubinfo/freewifialliance/view/SettingsPage;->desk_rlLayout:Landroid/widget/RelativeLayout;

    iget-object v2, p0, Lcom/pubinfo/freewifialliance/view/SettingsPage;->isShowDeskViewSlideSwitch:Lcom/pubinfo/freewifialliance/view/SlideSwitch;

    iget-object v3, p0, Lcom/pubinfo/freewifialliance/view/SettingsPage;->lpLayoutParams:Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {v1, v2, v3}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 124
    iget-object v1, p0, Lcom/pubinfo/freewifialliance/view/SettingsPage;->isShowDeskViewSlideSwitch:Lcom/pubinfo/freewifialliance/view/SlideSwitch;

    .line 125
    new-instance v2, Lcom/pubinfo/freewifialliance/view/SettingsPage$1;

    invoke-direct {v2, p0}, Lcom/pubinfo/freewifialliance/view/SettingsPage$1;-><init>(Lcom/pubinfo/freewifialliance/view/SettingsPage;)V

    invoke-virtual {v1, v2}, Lcom/pubinfo/freewifialliance/view/SlideSwitch;->setOnSwitchChangedListener(Lcom/pubinfo/freewifialliance/view/SlideSwitch$OnSwitchChangedListener;)V

    .line 155
    iget-object v1, p0, Lcom/pubinfo/freewifialliance/view/SettingsPage;->autoSearchSlideSwitch:Lcom/pubinfo/freewifialliance/view/SlideSwitch;

    .line 156
    new-instance v2, Lcom/pubinfo/freewifialliance/view/SettingsPage$2;

    invoke-direct {v2, p0}, Lcom/pubinfo/freewifialliance/view/SettingsPage$2;-><init>(Lcom/pubinfo/freewifialliance/view/SettingsPage;)V

    invoke-virtual {v1, v2}, Lcom/pubinfo/freewifialliance/view/SlideSwitch;->setOnSwitchChangedListener(Lcom/pubinfo/freewifialliance/view/SlideSwitch$OnSwitchChangedListener;)V

    .line 184
    iget-object v1, p0, Lcom/pubinfo/freewifialliance/view/SettingsPage;->nightStopSlideSwitch:Lcom/pubinfo/freewifialliance/view/SlideSwitch;

    .line 185
    new-instance v2, Lcom/pubinfo/freewifialliance/view/SettingsPage$3;

    invoke-direct {v2, p0}, Lcom/pubinfo/freewifialliance/view/SettingsPage$3;-><init>(Lcom/pubinfo/freewifialliance/view/SettingsPage;)V

    invoke-virtual {v1, v2}, Lcom/pubinfo/freewifialliance/view/SlideSwitch;->setOnSwitchChangedListener(Lcom/pubinfo/freewifialliance/view/SlideSwitch$OnSwitchChangedListener;)V

    .line 207
    return-void

    .line 102
    :cond_0
    const-string v1, "night"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    sput v1, Lcom/pubinfo/freewifialliance/view/SettingsPage;->night:I

    .line 103
    const-string v1, "desk"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    sput v1, Lcom/pubinfo/freewifialliance/view/SettingsPage;->desk:I

    .line 104
    const-string v1, "auto"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    sput v1, Lcom/pubinfo/freewifialliance/view/SettingsPage;->auto:I

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 4

    .prologue
    .line 245
    invoke-super {p0}, Lcom/pubinfo/wifi_core/AppBaseActivity;->onDestroy()V

    .line 246
    const-string v2, "settings"

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Lcom/pubinfo/freewifialliance/view/SettingsPage;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 247
    .local v1, "sharedPreferences":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 248
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v2, "night"

    sget v3, Lcom/pubinfo/freewifialliance/view/SettingsPage;->night:I

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 249
    const-string v2, "desk"

    sget v3, Lcom/pubinfo/freewifialliance/view/SettingsPage;->desk:I

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 250
    const-string v2, "auto"

    sget v3, Lcom/pubinfo/freewifialliance/view/SettingsPage;->auto:I

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 251
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 252
    return-void
.end method

.method protected onPause()V
    .locals 0

    .prologue
    .line 235
    invoke-super {p0}, Lcom/pubinfo/wifi_core/AppBaseActivity;->onPause()V

    .line 237
    return-void
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 240
    invoke-super {p0}, Lcom/pubinfo/wifi_core/AppBaseActivity;->onResume()V

    .line 241
    return-void
.end method

.method public startWifiService()V
    .locals 7

    .prologue
    const v5, 0x7fffffff

    .line 214
    const-string v4, "wifi"

    invoke-virtual {p0, v4}, Lcom/pubinfo/freewifialliance/view/SettingsPage;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/wifi/WifiManager;

    iput-object v4, p0, Lcom/pubinfo/freewifialliance/view/SettingsPage;->wifiManager:Landroid/net/wifi/WifiManager;

    .line 215
    const/4 v2, 0x0

    .line 216
    .local v2, "isServiceRunning":Z
    const-string v4, "activity"

    invoke-virtual {p0, v4}, Lcom/pubinfo/freewifialliance/view/SettingsPage;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 217
    .local v0, "activityManager":Landroid/app/ActivityManager;
    invoke-virtual {v0, v5}, Landroid/app/ActivityManager;->getRunningServices(I)Ljava/util/List;

    .line 219
    invoke-virtual {v0, v5}, Landroid/app/ActivityManager;->getRunningServices(I)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 218
    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_2

    .line 225
    if-nez v2, :cond_1

    .line 226
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 227
    .local v1, "intent2":Landroid/content/Intent;
    iget-object v4, p0, Lcom/pubinfo/freewifialliance/view/SettingsPage;->WIFICONN:Ljava/lang/String;

    invoke-virtual {v1, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 228
    iget-object v4, p0, Lcom/pubinfo/freewifialliance/view/SettingsPage;->context:Lcom/pubinfo/wifi_core/AppBaseActivity;

    invoke-virtual {v4, v1}, Lcom/pubinfo/wifi_core/AppBaseActivity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 230
    .end local v1    # "intent2":Landroid/content/Intent;
    :cond_1
    return-void

    .line 219
    :cond_2
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/ActivityManager$RunningServiceInfo;

    .line 220
    .local v3, "serviceInfo":Landroid/app/ActivityManager$RunningServiceInfo;
    iget-object v5, p0, Lcom/pubinfo/freewifialliance/view/SettingsPage;->WIFICONN:Ljava/lang/String;

    iget-object v6, v3, Landroid/app/ActivityManager$RunningServiceInfo;->service:Landroid/content/ComponentName;

    invoke-virtual {v6}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 221
    const/4 v2, 0x1

    goto :goto_0
.end method
