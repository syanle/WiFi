.class public Lcom/pubinfo/freewifialliance/view/WelcomePage;
.super Lcom/pubinfo/freewifialliance/controller/WelcomeFun;
.source "WelcomePage.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/webkit/DownloadListener;
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pubinfo/freewifialliance/view/WelcomePage$MyWebViewClient2;
    }
.end annotation


# static fields
.field public static final NO_UPDATE:I = 0xabcd006

.field public static final UPDATE_START:I = 0xabcd00a

.field private static handler:Landroid/os/Handler;

.field public static loading_process:I


# instance fields
.field WIFIHIT:Ljava/lang/String;

.field private alertDialog:Landroid/app/AlertDialog;

.field private awUpdater:Lcom/pubinfo/freewifialliance/update/AWingUpdater;

.field protected btnBack:Landroid/widget/Button;

.field device_id:Ljava/lang/String;

.field downloadurl:Ljava/lang/String;

.field file:Ljava/io/File;

.field fileName:Ljava/lang/String;

.field handlers:Landroid/os/Handler;

.field private isGetLocate:Z

.field lat:Ljava/lang/String;

.field launchActivity:Ljava/lang/String;

.field lng:Ljava/lang/String;

.field private locationManager:Lcom/pubinfo/freewifialliance/location/LocationManager;

.field private mLocalVersionCode:I

.field private mLocalVersionName:Ljava/lang/String;

.field private mPackMg:Landroid/content/pm/PackageManager;

.field private mThread:Ljava/lang/Thread;

.field pack:Ljava/lang/String;

.field phone:Ljava/lang/String;

.field ssid:Ljava/lang/String;

.field url:Ljava/lang/String;

.field private webView:Landroid/webkit/WebView;

.field protected web_back:Landroid/widget/ImageButton;

.field protected web_refresh:Landroid/widget/ImageButton;

.field protected web_stop:Landroid/widget/ImageButton;

.field protected web_towards:Landroid/widget/ImageButton;

.field wifiManager:Landroid/net/wifi/WifiManager;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 66
    invoke-direct {p0}, Lcom/pubinfo/freewifialliance/controller/WelcomeFun;-><init>()V

    .line 71
    iput-object v1, p0, Lcom/pubinfo/freewifialliance/view/WelcomePage;->mPackMg:Landroid/content/pm/PackageManager;

    .line 72
    iput v2, p0, Lcom/pubinfo/freewifialliance/view/WelcomePage;->mLocalVersionCode:I

    .line 73
    const-string v0, ""

    iput-object v0, p0, Lcom/pubinfo/freewifialliance/view/WelcomePage;->mLocalVersionName:Ljava/lang/String;

    .line 74
    iput-object v1, p0, Lcom/pubinfo/freewifialliance/view/WelcomePage;->mThread:Ljava/lang/Thread;

    .line 75
    iput-object v1, p0, Lcom/pubinfo/freewifialliance/view/WelcomePage;->awUpdater:Lcom/pubinfo/freewifialliance/update/AWingUpdater;

    .line 87
    const-string v0, "com.pubinfo.freewifialliance.service.WifiHitService"

    iput-object v0, p0, Lcom/pubinfo/freewifialliance/view/WelcomePage;->WIFIHIT:Ljava/lang/String;

    .line 92
    iput-boolean v2, p0, Lcom/pubinfo/freewifialliance/view/WelcomePage;->isGetLocate:Z

    .line 66
    return-void
.end method

.method static synthetic access$0(Lcom/pubinfo/freewifialliance/view/WelcomePage;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 156
    invoke-direct {p0, p1, p2}, Lcom/pubinfo/freewifialliance/view/WelcomePage;->isPackageExist(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1(Lcom/pubinfo/freewifialliance/view/WelcomePage;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lcom/pubinfo/freewifialliance/view/WelcomePage;->showMsgToast(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2(Lcom/pubinfo/freewifialliance/view/WelcomePage;Landroid/app/AlertDialog;)V
    .locals 0

    .prologue
    .line 88
    iput-object p1, p0, Lcom/pubinfo/freewifialliance/view/WelcomePage;->alertDialog:Landroid/app/AlertDialog;

    return-void
.end method

.method static synthetic access$3(Lcom/pubinfo/freewifialliance/view/WelcomePage;)Landroid/app/AlertDialog;
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lcom/pubinfo/freewifialliance/view/WelcomePage;->alertDialog:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic access$4(Lcom/pubinfo/freewifialliance/view/WelcomePage;Lcom/pubinfo/freewifialliance/update/AWingUpdater;)V
    .locals 0

    .prologue
    .line 75
    iput-object p1, p0, Lcom/pubinfo/freewifialliance/view/WelcomePage;->awUpdater:Lcom/pubinfo/freewifialliance/update/AWingUpdater;

    return-void
.end method

.method static synthetic access$5(Lcom/pubinfo/freewifialliance/view/WelcomePage;)Lcom/pubinfo/freewifialliance/update/AWingUpdater;
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcom/pubinfo/freewifialliance/view/WelcomePage;->awUpdater:Lcom/pubinfo/freewifialliance/update/AWingUpdater;

    return-object v0
.end method

.method static synthetic access$6(Lcom/pubinfo/freewifialliance/view/WelcomePage;)I
    .locals 1

    .prologue
    .line 72
    iget v0, p0, Lcom/pubinfo/freewifialliance/view/WelcomePage;->mLocalVersionCode:I

    return v0
.end method

.method static synthetic access$7(Lcom/pubinfo/freewifialliance/view/WelcomePage;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcom/pubinfo/freewifialliance/view/WelcomePage;->mLocalVersionName:Ljava/lang/String;

    return-object v0
.end method

.method private getLocation()V
    .locals 10

    .prologue
    const/4 v9, 0x2

    const/4 v6, 0x1

    const-wide/16 v3, 0x7530

    const-wide/16 v7, 0x3e8

    const/4 v5, 0x0

    .line 336
    iget-object v0, p0, Lcom/pubinfo/freewifialliance/view/WelcomePage;->context:Lcom/pubinfo/wifi_core/AppBaseActivity;

    invoke-static {v0}, Lcom/pubinfo/freewifialliance/view/WelcomePage;->isOPen(Landroid/content/Context;)I

    move-result v0

    if-eq v0, v6, :cond_0

    .line 337
    new-instance v0, Lcom/pubinfo/freewifialliance/location/LocationManager;

    iget-object v1, p0, Lcom/pubinfo/freewifialliance/view/WelcomePage;->context:Lcom/pubinfo/wifi_core/AppBaseActivity;

    sget-object v2, Lcom/pubinfo/freewifialliance/view/WelcomePage;->handler:Landroid/os/Handler;

    invoke-direct {v0, v5, v1, v2}, Lcom/pubinfo/freewifialliance/location/LocationManager;-><init>(ILandroid/content/Context;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/pubinfo/freewifialliance/view/WelcomePage;->locationManager:Lcom/pubinfo/freewifialliance/location/LocationManager;

    .line 338
    iget-object v0, p0, Lcom/pubinfo/freewifialliance/view/WelcomePage;->locationManager:Lcom/pubinfo/freewifialliance/location/LocationManager;

    invoke-virtual {v0}, Lcom/pubinfo/freewifialliance/location/LocationManager;->onStart()V

    .line 341
    new-instance v6, Ljava/util/Timer;

    invoke-direct {v6}, Ljava/util/Timer;-><init>()V

    new-instance v0, Lcom/pubinfo/freewifialliance/location/TimeOutHeartTask;

    sget-object v1, Lcom/pubinfo/freewifialliance/view/WelcomePage;->handler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/pubinfo/freewifialliance/view/WelcomePage;->context:Lcom/pubinfo/wifi_core/AppBaseActivity;

    .line 342
    invoke-direct/range {v0 .. v5}, Lcom/pubinfo/freewifialliance/location/TimeOutHeartTask;-><init>(Landroid/os/Handler;Landroid/content/Context;JI)V

    .line 341
    invoke-virtual {v6, v0, v7, v8}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    .line 374
    :goto_0
    return-void

    .line 344
    :cond_0
    iget-object v0, p0, Lcom/pubinfo/freewifialliance/view/WelcomePage;->context:Lcom/pubinfo/wifi_core/AppBaseActivity;

    invoke-static {v0}, Lcom/pubinfo/freewifialliance/view/WelcomePage;->isOPen(Landroid/content/Context;)I

    move-result v0

    if-ne v0, v6, :cond_1

    .line 345
    new-instance v0, Lcom/pubinfo/freewifialliance/location/LocationManager;

    iget-object v1, p0, Lcom/pubinfo/freewifialliance/view/WelcomePage;->context:Lcom/pubinfo/wifi_core/AppBaseActivity;

    sget-object v2, Lcom/pubinfo/freewifialliance/view/WelcomePage;->handler:Landroid/os/Handler;

    invoke-direct {v0, v6, v1, v2}, Lcom/pubinfo/freewifialliance/location/LocationManager;-><init>(ILandroid/content/Context;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/pubinfo/freewifialliance/view/WelcomePage;->locationManager:Lcom/pubinfo/freewifialliance/location/LocationManager;

    .line 346
    iget-object v0, p0, Lcom/pubinfo/freewifialliance/view/WelcomePage;->locationManager:Lcom/pubinfo/freewifialliance/location/LocationManager;

    invoke-virtual {v0}, Lcom/pubinfo/freewifialliance/location/LocationManager;->onStart()V

    .line 349
    new-instance v6, Ljava/util/Timer;

    invoke-direct {v6}, Ljava/util/Timer;-><init>()V

    new-instance v0, Lcom/pubinfo/freewifialliance/location/TimeOutHeartTask;

    sget-object v1, Lcom/pubinfo/freewifialliance/view/WelcomePage;->handler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/pubinfo/freewifialliance/view/WelcomePage;->context:Lcom/pubinfo/wifi_core/AppBaseActivity;

    .line 350
    invoke-direct/range {v0 .. v5}, Lcom/pubinfo/freewifialliance/location/TimeOutHeartTask;-><init>(Landroid/os/Handler;Landroid/content/Context;JI)V

    .line 349
    invoke-virtual {v6, v0, v7, v8}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    goto :goto_0

    .line 355
    :cond_1
    iget-object v0, p0, Lcom/pubinfo/freewifialliance/view/WelcomePage;->context:Lcom/pubinfo/wifi_core/AppBaseActivity;

    invoke-static {v0}, Lcom/pubinfo/freewifialliance/view/WelcomePage;->isOPen(Landroid/content/Context;)I

    move-result v0

    if-ne v0, v9, :cond_2

    .line 356
    new-instance v0, Lcom/pubinfo/freewifialliance/location/LocationManager;

    iget-object v1, p0, Lcom/pubinfo/freewifialliance/view/WelcomePage;->context:Lcom/pubinfo/wifi_core/AppBaseActivity;

    sget-object v2, Lcom/pubinfo/freewifialliance/view/WelcomePage;->handler:Landroid/os/Handler;

    invoke-direct {v0, v9, v1, v2}, Lcom/pubinfo/freewifialliance/location/LocationManager;-><init>(ILandroid/content/Context;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/pubinfo/freewifialliance/view/WelcomePage;->locationManager:Lcom/pubinfo/freewifialliance/location/LocationManager;

    .line 357
    iget-object v0, p0, Lcom/pubinfo/freewifialliance/view/WelcomePage;->locationManager:Lcom/pubinfo/freewifialliance/location/LocationManager;

    invoke-virtual {v0}, Lcom/pubinfo/freewifialliance/location/LocationManager;->onStart()V

    .line 360
    new-instance v6, Ljava/util/Timer;

    invoke-direct {v6}, Ljava/util/Timer;-><init>()V

    new-instance v0, Lcom/pubinfo/freewifialliance/location/TimeOutHeartTask;

    sget-object v1, Lcom/pubinfo/freewifialliance/view/WelcomePage;->handler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/pubinfo/freewifialliance/view/WelcomePage;->context:Lcom/pubinfo/wifi_core/AppBaseActivity;

    .line 361
    invoke-direct/range {v0 .. v5}, Lcom/pubinfo/freewifialliance/location/TimeOutHeartTask;-><init>(Landroid/os/Handler;Landroid/content/Context;JI)V

    .line 360
    invoke-virtual {v6, v0, v7, v8}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    goto :goto_0

    .line 366
    :cond_2
    new-instance v0, Lcom/pubinfo/freewifialliance/location/LocationManager;

    iget-object v1, p0, Lcom/pubinfo/freewifialliance/view/WelcomePage;->context:Lcom/pubinfo/wifi_core/AppBaseActivity;

    sget-object v2, Lcom/pubinfo/freewifialliance/view/WelcomePage;->handler:Landroid/os/Handler;

    invoke-direct {v0, v5, v1, v2}, Lcom/pubinfo/freewifialliance/location/LocationManager;-><init>(ILandroid/content/Context;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/pubinfo/freewifialliance/view/WelcomePage;->locationManager:Lcom/pubinfo/freewifialliance/location/LocationManager;

    .line 367
    iget-object v0, p0, Lcom/pubinfo/freewifialliance/view/WelcomePage;->locationManager:Lcom/pubinfo/freewifialliance/location/LocationManager;

    invoke-virtual {v0}, Lcom/pubinfo/freewifialliance/location/LocationManager;->onStart()V

    .line 369
    new-instance v6, Ljava/util/Timer;

    invoke-direct {v6}, Ljava/util/Timer;-><init>()V

    new-instance v0, Lcom/pubinfo/freewifialliance/location/TimeOutHeartTask;

    sget-object v1, Lcom/pubinfo/freewifialliance/view/WelcomePage;->handler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/pubinfo/freewifialliance/view/WelcomePage;->context:Lcom/pubinfo/wifi_core/AppBaseActivity;

    .line 370
    invoke-direct/range {v0 .. v5}, Lcom/pubinfo/freewifialliance/location/TimeOutHeartTask;-><init>(Landroid/os/Handler;Landroid/content/Context;JI)V

    .line 369
    invoke-virtual {v6, v0, v7, v8}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    goto :goto_0
.end method

.method public static getStringArr(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;
    .locals 1
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "v"    # Ljava/lang/String;

    .prologue
    .line 331
    invoke-virtual {p0, p1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 332
    .local v0, "rStr":[Ljava/lang/String;
    return-object v0
.end method

.method public static final isOPen(Landroid/content/Context;)I
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 389
    .line 390
    const-string v3, "location"

    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 389
    check-cast v1, Landroid/location/LocationManager;

    .line 395
    .local v1, "locationManager":Landroid/location/LocationManager;
    const-string v3, "gps"

    invoke-virtual {v1, v3}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v0

    .line 400
    .local v0, "gps":Z
    const-string v3, "network"

    invoke-virtual {v1, v3}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v2

    .line 402
    .local v2, "network":Z
    if-eqz v0, :cond_0

    .line 403
    const/4 v3, 0x1

    .line 409
    :goto_0
    return v3

    .line 406
    :cond_0
    if-eqz v2, :cond_1

    .line 407
    const/4 v3, 0x2

    goto :goto_0

    .line 409
    :cond_1
    const/4 v3, 0x0

    goto :goto_0
.end method

.method private isPackageExist(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 8
    .param p1, "pack"    # Ljava/lang/String;
    .param p2, "launchActivity"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    .line 158
    new-instance v3, Landroid/content/Intent;

    const-string v6, "android.intent.action.MAIN"

    const/4 v7, 0x0

    invoke-direct {v3, v6, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 159
    .local v3, "mainIntent":Landroid/content/Intent;
    const-string v6, "android.intent.category.LAUNCHER"

    invoke-virtual {v3, v6}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 161
    invoke-virtual {p0}, Lcom/pubinfo/freewifialliance/view/WelcomePage;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    .line 163
    .local v4, "manager":Landroid/content/pm/PackageManager;
    invoke-virtual {v4, v3, v5}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    .line 166
    .local v0, "apps":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v6

    if-lt v1, v6, :cond_0

    .line 183
    :goto_1
    return v5

    .line 168
    :cond_0
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ResolveInfo;

    .line 170
    .local v2, "info":Landroid/content/pm/ResolveInfo;
    iget-object v6, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v6, v6, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v6, v6, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 171
    invoke-virtual {v6, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 179
    const/4 v5, 0x1

    goto :goto_1

    .line 166
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private sendMsg(II)V
    .locals 2
    .param p1, "flag"    # I
    .param p2, "c"    # I

    .prologue
    .line 597
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 598
    .local v0, "msg":Landroid/os/Message;
    iput p1, v0, Landroid/os/Message;->what:I

    .line 599
    iput p2, v0, Landroid/os/Message;->arg1:I

    .line 600
    iget-object v1, p0, Lcom/pubinfo/freewifialliance/view/WelcomePage;->handlers:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 601
    return-void
.end method


# virtual methods
.method public Beginning()V
    .locals 4

    .prologue
    .line 549
    const-string v2, "down"

    .line 550
    const/4 v3, 0x0

    .line 549
    invoke-virtual {p0, v2, v3}, Lcom/pubinfo/freewifialliance/view/WelcomePage;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 551
    .local v1, "sharedPreferences":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 552
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    .line 553
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 554
    new-instance v2, Lcom/pubinfo/freewifialliance/view/WelcomePage$3;

    invoke-direct {v2, p0}, Lcom/pubinfo/freewifialliance/view/WelcomePage$3;-><init>(Lcom/pubinfo/freewifialliance/view/WelcomePage;)V

    .line 558
    invoke-virtual {v2}, Lcom/pubinfo/freewifialliance/view/WelcomePage$3;->start()V

    .line 559
    return-void
.end method

.method public getConnectedWifiSSId()Ljava/lang/String;
    .locals 4

    .prologue
    .line 280
    const-string v1, "wifi"

    invoke-virtual {p0, v1}, Lcom/pubinfo/freewifialliance/view/WelcomePage;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/WifiManager;

    iput-object v1, p0, Lcom/pubinfo/freewifialliance/view/WelcomePage;->wifiManager:Landroid/net/wifi/WifiManager;

    .line 281
    iget-object v1, p0, Lcom/pubinfo/freewifialliance/view/WelcomePage;->wifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v0

    .line 282
    .local v0, "wifiInfo":Landroid/net/wifi/WifiInfo;
    if-eqz v0, :cond_0

    .line 283
    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v1

    const-string v2, "\""

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    .line 285
    :goto_0
    return-object v1

    :cond_0
    const-string v1, ""

    goto :goto_0
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .locals 5
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 301
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 327
    :cond_0
    :goto_0
    :pswitch_0
    return v3

    .line 303
    :pswitch_1
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    const-string v2, "&&"

    invoke-static {v1, v2}, Lcom/pubinfo/freewifialliance/view/WelcomePage;->getStringArr(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 304
    .local v0, "temp":[Ljava/lang/String;
    aget-object v1, v0, v3

    iput-object v1, p0, Lcom/pubinfo/freewifialliance/view/WelcomePage;->lng:Ljava/lang/String;

    .line 305
    aget-object v1, v0, v4

    iput-object v1, p0, Lcom/pubinfo/freewifialliance/view/WelcomePage;->lat:Ljava/lang/String;

    .line 306
    iput-boolean v4, p0, Lcom/pubinfo/freewifialliance/view/WelcomePage;->isGetLocate:Z

    .line 307
    invoke-virtual {p0}, Lcom/pubinfo/freewifialliance/view/WelcomePage;->start()V

    goto :goto_0

    .line 313
    .end local v0    # "temp":[Ljava/lang/String;
    :pswitch_2
    iget v1, p1, Landroid/os/Message;->arg1:I

    if-nez v1, :cond_0

    .line 314
    iget-boolean v1, p0, Lcom/pubinfo/freewifialliance/view/WelcomePage;->isGetLocate:Z

    if-nez v1, :cond_0

    .line 315
    iget-object v1, p0, Lcom/pubinfo/freewifialliance/view/WelcomePage;->context:Lcom/pubinfo/wifi_core/AppBaseActivity;

    const-string v2, "\u5b9a\u4f4d\u5931\u8d25\uff0c\u8bf7\u786e\u8ba4\u6570\u636e\u7f51\u7edc\u6b63\u5e38\uff0c\u7a0d\u540e\u518d\u8bd5"

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    .line 316
    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 317
    invoke-virtual {p0}, Lcom/pubinfo/freewifialliance/view/WelcomePage;->start()V

    goto :goto_0

    .line 301
    nop

    :pswitch_data_0
    .packed-switch 0x3e1
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public loadFile(Ljava/lang/String;)V
    .locals 13
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 562
    new-instance v2, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v2}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    .line 563
    .local v2, "client":Lorg/apache/http/client/HttpClient;
    new-instance v7, Lorg/apache/http/client/methods/HttpGet;

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v7, v11}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    .line 566
    .local v7, "get":Lorg/apache/http/client/methods/HttpGet;
    :try_start_0
    invoke-interface {v2, v7}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v10

    .line 568
    .local v10, "response":Lorg/apache/http/HttpResponse;
    invoke-interface {v10}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v5

    .line 569
    .local v5, "entity":Lorg/apache/http/HttpEntity;
    invoke-interface {v5}, Lorg/apache/http/HttpEntity;->getContentLength()J

    move-result-wide v11

    long-to-float v9, v11

    .line 571
    .local v9, "length":F
    invoke-interface {v5}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v8

    .line 572
    .local v8, "is":Ljava/io/InputStream;
    const/4 v6, 0x0

    .line 573
    .local v6, "fileOutputStream":Ljava/io/FileOutputStream;
    if-eqz v8, :cond_0

    .line 575
    new-instance v6, Ljava/io/FileOutputStream;

    .end local v6    # "fileOutputStream":Ljava/io/FileOutputStream;
    iget-object v11, p0, Lcom/pubinfo/freewifialliance/view/WelcomePage;->file:Ljava/io/File;

    invoke-direct {v6, v11}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 576
    .restart local v6    # "fileOutputStream":Ljava/io/FileOutputStream;
    const/16 v11, 0x400

    new-array v0, v11, [B

    .line 577
    .local v0, "buf":[B
    const/4 v1, -0x1

    .line 578
    .local v1, "ch":I
    const/4 v3, 0x0

    .line 579
    .local v3, "count":F
    :goto_0
    invoke-virtual {v8, v0}, Ljava/io/InputStream;->read([B)I

    move-result v1

    const/4 v11, -0x1

    if-ne v1, v11, :cond_2

    .line 584
    float-to-double v11, v3

    .line 586
    .end local v0    # "buf":[B
    .end local v1    # "ch":I
    .end local v3    # "count":F
    :cond_0
    const/4 v11, 0x2

    const/4 v12, 0x0

    invoke-direct {p0, v11, v12}, Lcom/pubinfo/freewifialliance/view/WelcomePage;->sendMsg(II)V

    .line 587
    invoke-virtual {v6}, Ljava/io/FileOutputStream;->flush()V

    .line 588
    if-eqz v6, :cond_1

    .line 589
    invoke-virtual {v6}, Ljava/io/FileOutputStream;->close()V

    .line 594
    .end local v5    # "entity":Lorg/apache/http/HttpEntity;
    .end local v6    # "fileOutputStream":Ljava/io/FileOutputStream;
    .end local v8    # "is":Ljava/io/InputStream;
    .end local v9    # "length":F
    .end local v10    # "response":Lorg/apache/http/HttpResponse;
    :cond_1
    :goto_1
    return-void

    .line 580
    .restart local v0    # "buf":[B
    .restart local v1    # "ch":I
    .restart local v3    # "count":F
    .restart local v5    # "entity":Lorg/apache/http/HttpEntity;
    .restart local v6    # "fileOutputStream":Ljava/io/FileOutputStream;
    .restart local v8    # "is":Ljava/io/InputStream;
    .restart local v9    # "length":F
    .restart local v10    # "response":Lorg/apache/http/HttpResponse;
    :cond_2
    const/4 v11, 0x0

    invoke-virtual {v6, v0, v11, v1}, Ljava/io/FileOutputStream;->write([BII)V

    .line 581
    int-to-float v11, v1

    add-float/2addr v3, v11

    .line 582
    const/4 v11, 0x1

    const/high16 v12, 0x42c80000    # 100.0f

    mul-float/2addr v12, v3

    div-float/2addr v12, v9

    float-to-int v12, v12

    invoke-direct {p0, v11, v12}, Lcom/pubinfo/freewifialliance/view/WelcomePage;->sendMsg(II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 591
    .end local v0    # "buf":[B
    .end local v1    # "ch":I
    .end local v3    # "count":F
    .end local v5    # "entity":Lorg/apache/http/HttpEntity;
    .end local v6    # "fileOutputStream":Ljava/io/FileOutputStream;
    .end local v8    # "is":Ljava/io/InputStream;
    .end local v9    # "length":F
    .end local v10    # "response":Lorg/apache/http/HttpResponse;
    :catch_0
    move-exception v4

    .line 592
    .local v4, "e":Ljava/lang/Exception;
    const/4 v11, -0x1

    const/4 v12, 0x0

    invoke-direct {p0, v11, v12}, Lcom/pubinfo/freewifialliance/view/WelcomePage;->sendMsg(II)V

    goto :goto_1
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 651
    iget-object v0, p0, Lcom/pubinfo/freewifialliance/view/WelcomePage;->web_back:Landroid/widget/ImageButton;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 652
    iget-object v0, p0, Lcom/pubinfo/freewifialliance/view/WelcomePage;->webView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->goBack()V

    .line 660
    :cond_0
    :goto_0
    return-void

    .line 653
    :cond_1
    iget-object v0, p0, Lcom/pubinfo/freewifialliance/view/WelcomePage;->web_towards:Landroid/widget/ImageButton;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 654
    iget-object v0, p0, Lcom/pubinfo/freewifialliance/view/WelcomePage;->webView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->goForward()V

    goto :goto_0

    .line 655
    :cond_2
    iget-object v0, p0, Lcom/pubinfo/freewifialliance/view/WelcomePage;->web_refresh:Landroid/widget/ImageButton;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 656
    iget-object v0, p0, Lcom/pubinfo/freewifialliance/view/WelcomePage;->webView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->reload()V

    goto :goto_0

    .line 657
    :cond_3
    iget-object v0, p0, Lcom/pubinfo/freewifialliance/view/WelcomePage;->web_stop:Landroid/widget/ImageButton;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 658
    iget-object v0, p0, Lcom/pubinfo/freewifialliance/view/WelcomePage;->webView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->stopLoading()V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v3, 0x1

    .line 98
    invoke-super {p0, p1}, Lcom/pubinfo/freewifialliance/controller/WelcomeFun;->onCreate(Landroid/os/Bundle;)V

    .line 99
    const v1, 0x7f030039

    invoke-virtual {p0, v1}, Lcom/pubinfo/freewifialliance/view/WelcomePage;->setContentView(I)V

    .line 100
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1, p0}, Landroid/os/Handler;-><init>(Landroid/os/Handler$Callback;)V

    sput-object v1, Lcom/pubinfo/freewifialliance/view/WelcomePage;->handler:Landroid/os/Handler;

    .line 105
    const v1, 0x7f0c00e0

    invoke-virtual {p0, v1}, Lcom/pubinfo/freewifialliance/view/WelcomePage;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    iput-object v1, p0, Lcom/pubinfo/freewifialliance/view/WelcomePage;->web_back:Landroid/widget/ImageButton;

    .line 106
    iget-object v1, p0, Lcom/pubinfo/freewifialliance/view/WelcomePage;->web_back:Landroid/widget/ImageButton;

    invoke-virtual {v1, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 107
    const v1, 0x7f0c00e1

    invoke-virtual {p0, v1}, Lcom/pubinfo/freewifialliance/view/WelcomePage;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    iput-object v1, p0, Lcom/pubinfo/freewifialliance/view/WelcomePage;->web_towards:Landroid/widget/ImageButton;

    .line 108
    iget-object v1, p0, Lcom/pubinfo/freewifialliance/view/WelcomePage;->web_towards:Landroid/widget/ImageButton;

    invoke-virtual {v1, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 109
    const v1, 0x7f0c00e2

    invoke-virtual {p0, v1}, Lcom/pubinfo/freewifialliance/view/WelcomePage;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    iput-object v1, p0, Lcom/pubinfo/freewifialliance/view/WelcomePage;->web_refresh:Landroid/widget/ImageButton;

    .line 110
    iget-object v1, p0, Lcom/pubinfo/freewifialliance/view/WelcomePage;->web_refresh:Landroid/widget/ImageButton;

    invoke-virtual {v1, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 111
    const v1, 0x7f0c00e3

    invoke-virtual {p0, v1}, Lcom/pubinfo/freewifialliance/view/WelcomePage;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    iput-object v1, p0, Lcom/pubinfo/freewifialliance/view/WelcomePage;->web_stop:Landroid/widget/ImageButton;

    .line 112
    iget-object v1, p0, Lcom/pubinfo/freewifialliance/view/WelcomePage;->web_stop:Landroid/widget/ImageButton;

    invoke-virtual {v1, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 114
    const v1, 0x7f0c00de

    invoke-virtual {p0, v1}, Lcom/pubinfo/freewifialliance/view/WelcomePage;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/webkit/WebView;

    iput-object v1, p0, Lcom/pubinfo/freewifialliance/view/WelcomePage;->webView:Landroid/webkit/WebView;

    .line 116
    iget-object v1, p0, Lcom/pubinfo/freewifialliance/view/WelcomePage;->webView:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 119
    iget-object v1, p0, Lcom/pubinfo/freewifialliance/view/WelcomePage;->webView:Landroid/webkit/WebView;

    new-instance v2, Landroid/webkit/WebChromeClient;

    invoke-direct {v2}, Landroid/webkit/WebChromeClient;-><init>()V

    invoke-virtual {v1, v2}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 120
    iget-object v1, p0, Lcom/pubinfo/freewifialliance/view/WelcomePage;->webView:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/webkit/WebSettings;->setJavaScriptCanOpenWindowsAutomatically(Z)V

    .line 121
    iget-object v1, p0, Lcom/pubinfo/freewifialliance/view/WelcomePage;->webView:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->requestFocus()Z

    .line 122
    iget-object v1, p0, Lcom/pubinfo/freewifialliance/view/WelcomePage;->webView:Landroid/webkit/WebView;

    new-instance v2, Lcom/pubinfo/freewifialliance/view/WelcomePage$MyWebViewClient2;

    invoke-direct {v2, p0}, Lcom/pubinfo/freewifialliance/view/WelcomePage$MyWebViewClient2;-><init>(Lcom/pubinfo/freewifialliance/view/WelcomePage;)V

    invoke-virtual {v1, v2}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 123
    iget-object v1, p0, Lcom/pubinfo/freewifialliance/view/WelcomePage;->webView:Landroid/webkit/WebView;

    invoke-virtual {v1, p0}, Landroid/webkit/WebView;->setDownloadListener(Landroid/webkit/DownloadListener;)V

    .line 124
    iget-object v1, p0, Lcom/pubinfo/freewifialliance/view/WelcomePage;->webView:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/webkit/WebSettings;->setCacheMode(I)V

    .line 125
    iget-object v1, p0, Lcom/pubinfo/freewifialliance/view/WelcomePage;->webView:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/webkit/WebSettings;->setLoadWithOverviewMode(Z)V

    .line 126
    iget-object v1, p0, Lcom/pubinfo/freewifialliance/view/WelcomePage;->webView:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/webkit/WebSettings;->setUseWideViewPort(Z)V

    .line 129
    invoke-static {p0}, Lcom/pubinfo/wifi_core/core/database/Database;->getInstance(Landroid/content/Context;)Lcom/pubinfo/wifi_core/core/database/Database;

    move-result-object v1

    invoke-virtual {v1}, Lcom/pubinfo/wifi_core/core/database/Database;->selectUserRow()V

    .line 130
    iget-object v1, p0, Lcom/pubinfo/freewifialliance/view/WelcomePage;->webView:Landroid/webkit/WebView;

    const-string v2, "http://app.51iwifi.com:12380/redirect.jsp"

    invoke-virtual {v1, v2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 140
    const-string v1, "connSucc"

    invoke-virtual {p0, v1}, Lcom/pubinfo/freewifialliance/view/WelcomePage;->umengCount(Ljava/lang/String;)V

    .line 145
    invoke-virtual {p0}, Lcom/pubinfo/freewifialliance/view/WelcomePage;->startWifiHitService()V

    .line 147
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 148
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "com.pubinfo.freewifialliance.service.WifiConnService.FreshBroadcastReceiver"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 149
    invoke-virtual {p0, v0}, Lcom/pubinfo/freewifialliance/view/WelcomePage;->sendBroadcast(Landroid/content/Intent;)V

    .line 151
    invoke-virtual {p0}, Lcom/pubinfo/freewifialliance/view/WelcomePage;->updateSsidList()V

    .line 152
    invoke-direct {p0}, Lcom/pubinfo/freewifialliance/view/WelcomePage;->getLocation()V

    .line 154
    return-void
.end method

.method public onDownloadStart(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 0
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "userAgent"    # Ljava/lang/String;
    .param p3, "contentDisposition"    # Ljava/lang/String;
    .param p4, "mimetype"    # Ljava/lang/String;
    .param p5, "contentLength"    # J

    .prologue
    .line 667
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 612
    iget-object v1, p0, Lcom/pubinfo/freewifialliance/view/WelcomePage;->webView:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->canGoBack()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x4

    if-ne p1, v1, :cond_0

    .line 613
    iget-object v1, p0, Lcom/pubinfo/freewifialliance/view/WelcomePage;->webView:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->goBack()V

    .line 614
    const/4 v1, 0x1

    .line 621
    :goto_0
    return v1

    .line 615
    :cond_0
    iget-object v1, p0, Lcom/pubinfo/freewifialliance/view/WelcomePage;->webView:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->canGoBack()Z

    move-result v1

    if-nez v1, :cond_1

    .line 616
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 617
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "android.intent.category.HOME"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 618
    invoke-virtual {p0, v0}, Lcom/pubinfo/freewifialliance/view/WelcomePage;->startActivity(Landroid/content/Intent;)V

    .line 619
    invoke-virtual {p0}, Lcom/pubinfo/freewifialliance/view/WelcomePage;->finish()V

    .line 621
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_1
    invoke-super {p0, p1, p2}, Lcom/pubinfo/freewifialliance/controller/WelcomeFun;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v1

    goto :goto_0
.end method

.method protected onPause()V
    .locals 0

    .prologue
    .line 291
    invoke-super {p0}, Lcom/pubinfo/freewifialliance/controller/WelcomeFun;->onPause()V

    .line 292
    return-void
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 296
    invoke-super {p0}, Lcom/pubinfo/freewifialliance/controller/WelcomeFun;->onResume()V

    .line 298
    return-void
.end method

.method public openBrowser(Ljava/lang/String;)V
    .locals 1
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 276
    iget-object v0, p0, Lcom/pubinfo/freewifialliance/view/WelcomePage;->webView:Landroid/webkit/WebView;

    invoke-virtual {v0, p1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 277
    return-void
.end method

.method public start()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    .line 416
    new-instance v5, Landroid/os/Handler;

    new-instance v6, Lcom/pubinfo/freewifialliance/view/WelcomePage$1;

    invoke-direct {v6, p0}, Lcom/pubinfo/freewifialliance/view/WelcomePage$1;-><init>(Lcom/pubinfo/freewifialliance/view/WelcomePage;)V

    invoke-direct {v5, v6}, Landroid/os/Handler;-><init>(Landroid/os/Handler$Callback;)V

    iput-object v5, p0, Lcom/pubinfo/freewifialliance/view/WelcomePage;->handlers:Landroid/os/Handler;

    .line 506
    invoke-virtual {p0}, Lcom/pubinfo/freewifialliance/view/WelcomePage;->getBaseContext()Landroid/content/Context;

    move-result-object v5

    const-string v6, "apk_catch"

    invoke-virtual {v5, v6, v7}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v1

    .line 508
    .local v1, "file":Ljava/io/File;
    invoke-virtual {p0}, Lcom/pubinfo/freewifialliance/view/WelcomePage;->getBaseContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    iput-object v5, p0, Lcom/pubinfo/freewifialliance/view/WelcomePage;->mPackMg:Landroid/content/pm/PackageManager;

    .line 510
    invoke-virtual {p0}, Lcom/pubinfo/freewifialliance/view/WelcomePage;->getIntent()Landroid/content/Intent;

    move-result-object v2

    .line 511
    .local v2, "in":Landroid/content/Intent;
    const-string v5, "ssid"

    invoke-virtual {v2, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/pubinfo/freewifialliance/view/WelcomePage;->ssid:Ljava/lang/String;

    .line 512
    const-string v5, "device_id"

    invoke-virtual {v2, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/pubinfo/freewifialliance/view/WelcomePage;->device_id:Ljava/lang/String;

    .line 513
    invoke-static {}, Lcom/pubinfo/wifi_core/core/data/ComData;->getInstance()Lcom/pubinfo/wifi_core/core/data/ComData;

    move-result-object v5

    invoke-virtual {v5}, Lcom/pubinfo/wifi_core/core/data/ComData;->getWifiInfoData()Ljava/util/List;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 514
    invoke-static {}, Lcom/pubinfo/wifi_core/core/data/ComData;->getInstance()Lcom/pubinfo/wifi_core/core/data/ComData;

    move-result-object v5

    invoke-virtual {v5}, Lcom/pubinfo/wifi_core/core/data/ComData;->getWifiInfoData()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_0

    .line 515
    invoke-static {}, Lcom/pubinfo/wifi_core/core/data/ComData;->getInstance()Lcom/pubinfo/wifi_core/core/data/ComData;

    move-result-object v5

    invoke-virtual {v5}, Lcom/pubinfo/wifi_core/core/data/ComData;->getWifiInfoData()Ljava/util/List;

    move-result-object v5

    .line 516
    const/4 v6, 0x0

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/pubinfo/wifi_core/core/database/WifiInfoData;

    .line 517
    .local v4, "wifiInfoData":Lcom/pubinfo/wifi_core/core/database/WifiInfoData;
    invoke-virtual {v4}, Lcom/pubinfo/wifi_core/core/database/WifiInfoData;->getPhone()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/pubinfo/freewifialliance/view/WelcomePage;->phone:Ljava/lang/String;

    .line 521
    .end local v4    # "wifiInfoData":Lcom/pubinfo/wifi_core/core/database/WifiInfoData;
    :goto_0
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "?mobile="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/pubinfo/freewifialliance/view/WelcomePage;->phone:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "&lat="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/pubinfo/freewifialliance/view/WelcomePage;->lat:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 522
    const-string v6, "&lng="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/pubinfo/freewifialliance/view/WelcomePage;->lng:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "&ssid="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/pubinfo/freewifialliance/view/WelcomePage;->ssid:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "&dev_id="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/pubinfo/freewifialliance/view/WelcomePage;->device_id:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 523
    const-string v6, "&platform="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 524
    const-string v6, "&ter_type=1"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 521
    iput-object v5, p0, Lcom/pubinfo/freewifialliance/view/WelcomePage;->url:Ljava/lang/String;

    .line 526
    :try_start_0
    iget-object v5, p0, Lcom/pubinfo/freewifialliance/view/WelcomePage;->mPackMg:Landroid/content/pm/PackageManager;

    .line 527
    invoke-virtual {p0}, Lcom/pubinfo/freewifialliance/view/WelcomePage;->getBaseContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    .line 528
    const/4 v7, 0x1

    .line 526
    invoke-virtual {v5, v6, v7}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v3

    .line 529
    .local v3, "packInfo":Landroid/content/pm/PackageInfo;
    iget v5, v3, Landroid/content/pm/PackageInfo;->versionCode:I

    iput v5, p0, Lcom/pubinfo/freewifialliance/view/WelcomePage;->mLocalVersionCode:I

    .line 530
    iget-object v5, v3, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    iput-object v5, p0, Lcom/pubinfo/freewifialliance/view/WelcomePage;->mLocalVersionName:Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 535
    .end local v3    # "packInfo":Landroid/content/pm/PackageInfo;
    :goto_1
    new-instance v5, Lcom/pubinfo/freewifialliance/view/WelcomePage$2;

    invoke-direct {v5, p0, v1}, Lcom/pubinfo/freewifialliance/view/WelcomePage$2;-><init>(Lcom/pubinfo/freewifialliance/view/WelcomePage;Ljava/io/File;)V

    iput-object v5, p0, Lcom/pubinfo/freewifialliance/view/WelcomePage;->mThread:Ljava/lang/Thread;

    .line 542
    iget-object v5, p0, Lcom/pubinfo/freewifialliance/view/WelcomePage;->mThread:Ljava/lang/Thread;

    invoke-virtual {v5}, Ljava/lang/Thread;->start()V

    .line 543
    return-void

    .line 519
    :cond_0
    const-string v5, ""

    iput-object v5, p0, Lcom/pubinfo/freewifialliance/view/WelcomePage;->phone:Ljava/lang/String;

    goto :goto_0

    .line 531
    :catch_0
    move-exception v0

    .line 532
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_1
.end method

.method public startWifiHitService()V
    .locals 7

    .prologue
    const v5, 0x7fffffff

    .line 628
    const/4 v2, 0x0

    .line 629
    .local v2, "isServiceRunning":Z
    const-string v4, "activity"

    invoke-virtual {p0, v4}, Lcom/pubinfo/freewifialliance/view/WelcomePage;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 630
    .local v0, "activityManager":Landroid/app/ActivityManager;
    invoke-virtual {v0, v5}, Landroid/app/ActivityManager;->getRunningServices(I)Ljava/util/List;

    .line 632
    invoke-virtual {v0, v5}, Landroid/app/ActivityManager;->getRunningServices(I)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 631
    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_2

    .line 639
    :goto_0
    if-nez v2, :cond_1

    .line 640
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 641
    .local v1, "intent2":Landroid/content/Intent;
    iget-object v4, p0, Lcom/pubinfo/freewifialliance/view/WelcomePage;->WIFIHIT:Ljava/lang/String;

    invoke-virtual {v1, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 642
    iget-object v4, p0, Lcom/pubinfo/freewifialliance/view/WelcomePage;->context:Lcom/pubinfo/wifi_core/AppBaseActivity;

    invoke-virtual {v4, v1}, Lcom/pubinfo/wifi_core/AppBaseActivity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 644
    .end local v1    # "intent2":Landroid/content/Intent;
    :cond_1
    return-void

    .line 632
    :cond_2
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/ActivityManager$RunningServiceInfo;

    .line 633
    .local v3, "serviceInfo":Landroid/app/ActivityManager$RunningServiceInfo;
    iget-object v5, p0, Lcom/pubinfo/freewifialliance/view/WelcomePage;->WIFIHIT:Ljava/lang/String;

    iget-object v6, v3, Landroid/app/ActivityManager$RunningServiceInfo;->service:Landroid/content/ComponentName;

    invoke-virtual {v6}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 634
    const/4 v2, 0x1

    .line 635
    goto :goto_0
.end method
