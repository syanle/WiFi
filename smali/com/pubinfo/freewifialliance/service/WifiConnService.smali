.class public Lcom/pubinfo/freewifialliance/service/WifiConnService;
.super Landroid/app/Service;
.source "WifiConnService.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pubinfo/freewifialliance/service/WifiConnService$FreshBroadcastReceiver;,
        Lcom/pubinfo/freewifialliance/service/WifiConnService$FreshViewBroadcastReceiver;,
        Lcom/pubinfo/freewifialliance/service/WifiConnService$MyThread;,
        Lcom/pubinfo/freewifialliance/service/WifiConnService$StartNightSearchBroadcastReceiver;,
        Lcom/pubinfo/freewifialliance/service/WifiConnService$StartTaskBroadcastReceiver;,
        Lcom/pubinfo/freewifialliance/service/WifiConnService$StopNightSearchBroadcastReceiver;,
        Lcom/pubinfo/freewifialliance/service/WifiConnService$StopTaskBroadcastReceiver;,
        Lcom/pubinfo/freewifialliance/service/WifiConnService$WifiEnableBroadcastReciver;,
        Lcom/pubinfo/freewifialliance/service/WifiConnService$Worker;
    }
.end annotation


# static fields
.field public static final STOP_SERVICE:Ljava/lang/String; = "stop"

.field public static final STOP_SP:Ljava/lang/String; = "service"

.field private static floatView:Lcom/pubinfo/freewifialliance/view/FloatView;

.field private static isNight:Z


# instance fields
.field freshBroadcastReceiver:Lcom/pubinfo/freewifialliance/service/WifiConnService$FreshBroadcastReceiver;

.field freshViewBroadcastReceiver:Lcom/pubinfo/freewifialliance/service/WifiConnService$FreshViewBroadcastReceiver;

.field handler:Landroid/os/Handler;

.field isNightSearch:Z

.field isRunning:Z

.field logoDrawable:Landroid/graphics/drawable/Drawable;

.field logoLvDrawable:Landroid/graphics/drawable/Drawable;

.field logoWuDrawable:Landroid/graphics/drawable/Drawable;

.field mActivityManager:Landroid/app/ActivityManager;

.field nightRunnable:Ljava/lang/Runnable;

.field private results:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/net/wifi/ScanResult;",
            ">;"
        }
    .end annotation
.end field

.field private runnable:Ljava/lang/Runnable;

.field startNightSearchBroadcastReceiver:Lcom/pubinfo/freewifialliance/service/WifiConnService$StartNightSearchBroadcastReceiver;

.field startTaskBroadcastReceiver:Lcom/pubinfo/freewifialliance/service/WifiConnService$StartTaskBroadcastReceiver;

.field stopNightSearchBroadcastReceiver:Lcom/pubinfo/freewifialliance/service/WifiConnService$StopNightSearchBroadcastReceiver;

.field stopTaskBroadcastReceiver:Lcom/pubinfo/freewifialliance/service/WifiConnService$StopTaskBroadcastReceiver;

.field private tianyi_wifi:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/net/wifi/ScanResult;",
            ">;"
        }
    .end annotation
.end field

.field private timer:Ljava/util/Timer;

.field wifiEnableBroadcastReciver:Lcom/pubinfo/freewifialliance/service/WifiConnService$WifiEnableBroadcastReciver;

.field private wifiManager:Landroid/net/wifi/WifiManager;

.field private windowManager:Landroid/view/WindowManager;

.field private windowManagerParams:Landroid/view/WindowManager$LayoutParams;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 56
    const/4 v0, 0x0

    sput-object v0, Lcom/pubinfo/freewifialliance/service/WifiConnService;->floatView:Lcom/pubinfo/freewifialliance/view/FloatView;

    .line 79
    const/4 v0, 0x0

    sput-boolean v0, Lcom/pubinfo/freewifialliance/service/WifiConnService;->isNight:Z

    .line 91
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 51
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 61
    iput-object v0, p0, Lcom/pubinfo/freewifialliance/service/WifiConnService;->windowManager:Landroid/view/WindowManager;

    .line 62
    iput-object v0, p0, Lcom/pubinfo/freewifialliance/service/WifiConnService;->windowManagerParams:Landroid/view/WindowManager$LayoutParams;

    .line 77
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/pubinfo/freewifialliance/service/WifiConnService;->tianyi_wifi:Ljava/util/List;

    .line 88
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/pubinfo/freewifialliance/service/WifiConnService;->timer:Ljava/util/Timer;

    .line 107
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/pubinfo/freewifialliance/service/WifiConnService;->isNightSearch:Z

    .line 116
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/pubinfo/freewifialliance/service/WifiConnService;->isRunning:Z

    .line 644
    new-instance v0, Lcom/pubinfo/freewifialliance/service/WifiConnService$1;

    invoke-direct {v0, p0}, Lcom/pubinfo/freewifialliance/service/WifiConnService$1;-><init>(Lcom/pubinfo/freewifialliance/service/WifiConnService;)V

    iput-object v0, p0, Lcom/pubinfo/freewifialliance/service/WifiConnService;->runnable:Ljava/lang/Runnable;

    .line 662
    new-instance v0, Lcom/pubinfo/freewifialliance/service/WifiConnService$2;

    invoke-direct {v0, p0}, Lcom/pubinfo/freewifialliance/service/WifiConnService$2;-><init>(Lcom/pubinfo/freewifialliance/service/WifiConnService;)V

    iput-object v0, p0, Lcom/pubinfo/freewifialliance/service/WifiConnService;->nightRunnable:Ljava/lang/Runnable;

    .line 674
    new-instance v0, Lcom/pubinfo/freewifialliance/service/WifiConnService$3;

    invoke-direct {v0, p0}, Lcom/pubinfo/freewifialliance/service/WifiConnService$3;-><init>(Lcom/pubinfo/freewifialliance/service/WifiConnService;)V

    iput-object v0, p0, Lcom/pubinfo/freewifialliance/service/WifiConnService;->handler:Landroid/os/Handler;

    .line 51
    return-void
.end method

.method static synthetic access$0()Z
    .locals 1

    .prologue
    .line 79
    sget-boolean v0, Lcom/pubinfo/freewifialliance/service/WifiConnService;->isNight:Z

    return v0
.end method

.method static synthetic access$1()Lcom/pubinfo/freewifialliance/view/FloatView;
    .locals 1

    .prologue
    .line 56
    sget-object v0, Lcom/pubinfo/freewifialliance/service/WifiConnService;->floatView:Lcom/pubinfo/freewifialliance/view/FloatView;

    return-object v0
.end method

.method static synthetic access$2(Lcom/pubinfo/freewifialliance/service/WifiConnService;)Ljava/lang/Runnable;
    .locals 1

    .prologue
    .line 644
    iget-object v0, p0, Lcom/pubinfo/freewifialliance/service/WifiConnService;->runnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method private createView()V
    .locals 5

    .prologue
    const/4 v4, -0x2

    const/4 v3, 0x1

    .line 206
    new-instance v0, Lcom/pubinfo/freewifialliance/view/FloatView;

    invoke-virtual {p0}, Lcom/pubinfo/freewifialliance/service/WifiConnService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Lcom/pubinfo/freewifialliance/service/WifiConnService;->getScreenWidth()I

    move-result v2

    invoke-direct {v0, v1, v2}, Lcom/pubinfo/freewifialliance/view/FloatView;-><init>(Landroid/content/Context;I)V

    sput-object v0, Lcom/pubinfo/freewifialliance/service/WifiConnService;->floatView:Lcom/pubinfo/freewifialliance/view/FloatView;

    .line 207
    sget-object v0, Lcom/pubinfo/freewifialliance/service/WifiConnService;->floatView:Lcom/pubinfo/freewifialliance/view/FloatView;

    invoke-virtual {v0, p0}, Lcom/pubinfo/freewifialliance/view/FloatView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 208
    sget-object v0, Lcom/pubinfo/freewifialliance/service/WifiConnService;->floatView:Lcom/pubinfo/freewifialliance/view/FloatView;

    invoke-virtual {v0, v3}, Lcom/pubinfo/freewifialliance/view/FloatView;->setOrientation(I)V

    .line 209
    sget-object v0, Lcom/pubinfo/freewifialliance/service/WifiConnService;->floatView:Lcom/pubinfo/freewifialliance/view/FloatView;

    invoke-virtual {v0, v3}, Lcom/pubinfo/freewifialliance/view/FloatView;->setGravity(I)V

    .line 210
    sget-object v0, Lcom/pubinfo/freewifialliance/service/WifiConnService;->floatView:Lcom/pubinfo/freewifialliance/view/FloatView;

    iget-object v1, p0, Lcom/pubinfo/freewifialliance/service/WifiConnService;->logoWuDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Lcom/pubinfo/freewifialliance/view/FloatView;->setImage(Landroid/graphics/drawable/Drawable;)V

    .line 211
    sget-object v0, Lcom/pubinfo/freewifialliance/service/WifiConnService;->floatView:Lcom/pubinfo/freewifialliance/view/FloatView;

    invoke-virtual {v0}, Lcom/pubinfo/freewifialliance/view/FloatView;->setTextInvisiable()V

    .line 213
    invoke-virtual {p0}, Lcom/pubinfo/freewifialliance/service/WifiConnService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 214
    const-string v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 213
    iput-object v0, p0, Lcom/pubinfo/freewifialliance/service/WifiConnService;->windowManager:Landroid/view/WindowManager;

    .line 216
    invoke-virtual {p0}, Lcom/pubinfo/freewifialliance/service/WifiConnService;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/pubinfo/freewifialliance/view/FloatApplication;

    .line 217
    invoke-virtual {v0}, Lcom/pubinfo/freewifialliance/view/FloatApplication;->getWindowParams()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 216
    iput-object v0, p0, Lcom/pubinfo/freewifialliance/service/WifiConnService;->windowManagerParams:Landroid/view/WindowManager$LayoutParams;

    .line 218
    iget-object v0, p0, Lcom/pubinfo/freewifialliance/service/WifiConnService;->windowManagerParams:Landroid/view/WindowManager$LayoutParams;

    const/16 v1, 0x7d2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 219
    iget-object v0, p0, Lcom/pubinfo/freewifialliance/service/WifiConnService;->windowManagerParams:Landroid/view/WindowManager$LayoutParams;

    iput v3, v0, Landroid/view/WindowManager$LayoutParams;->format:I

    .line 221
    iget-object v0, p0, Lcom/pubinfo/freewifialliance/service/WifiConnService;->windowManagerParams:Landroid/view/WindowManager$LayoutParams;

    const/16 v1, 0x28

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 229
    iget-object v0, p0, Lcom/pubinfo/freewifialliance/service/WifiConnService;->windowManagerParams:Landroid/view/WindowManager$LayoutParams;

    const/16 v1, 0x33

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 231
    iget-object v0, p0, Lcom/pubinfo/freewifialliance/service/WifiConnService;->windowManagerParams:Landroid/view/WindowManager$LayoutParams;

    const/4 v1, 0x0

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 232
    iget-object v0, p0, Lcom/pubinfo/freewifialliance/service/WifiConnService;->windowManagerParams:Landroid/view/WindowManager$LayoutParams;

    const/16 v1, 0x64

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 234
    iget-object v0, p0, Lcom/pubinfo/freewifialliance/service/WifiConnService;->windowManagerParams:Landroid/view/WindowManager$LayoutParams;

    iput v4, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 235
    iget-object v0, p0, Lcom/pubinfo/freewifialliance/service/WifiConnService;->windowManagerParams:Landroid/view/WindowManager$LayoutParams;

    iput v4, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 237
    iget-object v0, p0, Lcom/pubinfo/freewifialliance/service/WifiConnService;->windowManager:Landroid/view/WindowManager;

    sget-object v1, Lcom/pubinfo/freewifialliance/service/WifiConnService;->floatView:Lcom/pubinfo/freewifialliance/view/FloatView;

    iget-object v2, p0, Lcom/pubinfo/freewifialliance/service/WifiConnService;->windowManagerParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, v1, v2}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 238
    return-void
.end method

.method public static executeCommand(Ljava/lang/String;J)I
    .locals 4
    .param p0, "command"    # Ljava/lang/String;
    .param p1, "timeout"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;,
            Ljava/util/concurrent/TimeoutException;
        }
    .end annotation

    .prologue
    .line 470
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v1

    .line 471
    .local v1, "process":Ljava/lang/Process;
    new-instance v2, Lcom/pubinfo/freewifialliance/service/WifiConnService$Worker;

    const/4 v3, 0x0

    invoke-direct {v2, v1, v3}, Lcom/pubinfo/freewifialliance/service/WifiConnService$Worker;-><init>(Ljava/lang/Process;Lcom/pubinfo/freewifialliance/service/WifiConnService$Worker;)V

    .line 472
    .local v2, "worker":Lcom/pubinfo/freewifialliance/service/WifiConnService$Worker;
    invoke-virtual {v2}, Lcom/pubinfo/freewifialliance/service/WifiConnService$Worker;->start()V

    .line 474
    :try_start_0
    invoke-virtual {v2, p1, p2}, Lcom/pubinfo/freewifialliance/service/WifiConnService$Worker;->join(J)V

    .line 475
    # getter for: Lcom/pubinfo/freewifialliance/service/WifiConnService$Worker;->exit:Ljava/lang/Integer;
    invoke-static {v2}, Lcom/pubinfo/freewifialliance/service/WifiConnService$Worker;->access$1(Lcom/pubinfo/freewifialliance/service/WifiConnService$Worker;)Ljava/lang/Integer;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 476
    # getter for: Lcom/pubinfo/freewifialliance/service/WifiConnService$Worker;->exit:Ljava/lang/Integer;
    invoke-static {v2}, Lcom/pubinfo/freewifialliance/service/WifiConnService$Worker;->access$1(Lcom/pubinfo/freewifialliance/service/WifiConnService$Worker;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    .line 485
    invoke-virtual {v1}, Ljava/lang/Process;->destroy()V

    .line 476
    return v3

    .line 478
    :cond_0
    :try_start_1
    new-instance v3, Ljava/util/concurrent/TimeoutException;

    invoke-direct {v3}, Ljava/util/concurrent/TimeoutException;-><init>()V

    throw v3
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 480
    :catch_0
    move-exception v0

    .line 481
    .local v0, "ex":Ljava/lang/InterruptedException;
    :try_start_2
    invoke-virtual {v2}, Lcom/pubinfo/freewifialliance/service/WifiConnService$Worker;->interrupt()V

    .line 482
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->interrupt()V

    .line 483
    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 484
    .end local v0    # "ex":Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v3

    .line 485
    invoke-virtual {v1}, Ljava/lang/Process;->destroy()V

    .line 486
    throw v3
.end method

.method private getHomes()Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 355
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 356
    .local v1, "names":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p0}, Lcom/pubinfo/freewifialliance/service/WifiConnService;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 358
    .local v2, "packageManager":Landroid/content/pm/PackageManager;
    new-instance v0, Landroid/content/Intent;

    const-string v5, "android.intent.action.MAIN"

    invoke-direct {v0, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 359
    .local v0, "intent":Landroid/content/Intent;
    const-string v5, "android.intent.category.HOME"

    invoke-virtual {v0, v5}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 361
    const/high16 v5, 0x10000

    .line 360
    invoke-virtual {v2, v0, v5}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v3

    .line 362
    .local v3, "resolveInfo":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-nez v6, :cond_0

    .line 365
    return-object v1

    .line 362
    :cond_0
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/ResolveInfo;

    .line 363
    .local v4, "ri":Landroid/content/pm/ResolveInfo;
    iget-object v6, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v6, v6, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-interface {v1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method


# virtual methods
.method public Vibrate(J)V
    .locals 2
    .param p1, "milliseconds"    # J

    .prologue
    .line 345
    const-string v1, "vibrator"

    invoke-virtual {p0, v1}, Lcom/pubinfo/freewifialliance/service/WifiConnService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    .line 346
    .local v0, "vib":Landroid/os/Vibrator;
    invoke-virtual {v0, p1, p2}, Landroid/os/Vibrator;->vibrate(J)V

    .line 347
    return-void
.end method

.method public getConnectedWifiSSId()Ljava/lang/String;
    .locals 2

    .prologue
    .line 491
    iget-object v1, p0, Lcom/pubinfo/freewifialliance/service/WifiConnService;->wifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v0

    .line 492
    .local v0, "wifiInfo":Landroid/net/wifi/WifiInfo;
    if-eqz v0, :cond_0

    .line 493
    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v1

    .line 495
    :goto_0
    return-object v1

    :cond_0
    const-string v1, ""

    goto :goto_0
.end method

.method public getScreenWidth()I
    .locals 2

    .prologue
    .line 517
    const-string v1, "window"

    invoke-virtual {p0, v1}, Lcom/pubinfo/freewifialliance/service/WifiConnService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    .line 518
    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 519
    .local v0, "display":Landroid/view/Display;
    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v1

    return v1
.end method

.method public getTianyi_wifi()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/net/wifi/ScanResult;",
            ">;"
        }
    .end annotation

    .prologue
    .line 82
    iget-object v0, p0, Lcom/pubinfo/freewifialliance/service/WifiConnService;->tianyi_wifi:Ljava/util/List;

    return-object v0
.end method

.method public getWiFi()V
    .locals 5

    .prologue
    .line 244
    iget-object v3, p0, Lcom/pubinfo/freewifialliance/service/WifiConnService;->tianyi_wifi:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->clear()V

    .line 245
    iget-object v3, p0, Lcom/pubinfo/freewifialliance/service/WifiConnService;->results:Ljava/util/List;

    if-eqz v3, :cond_0

    .line 246
    iget-object v3, p0, Lcom/pubinfo/freewifialliance/service/WifiConnService;->results:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->clear()V

    .line 248
    :cond_0
    iget-object v3, p0, Lcom/pubinfo/freewifialliance/service/WifiConnService;->wifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v3}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 249
    iget-object v3, p0, Lcom/pubinfo/freewifialliance/service/WifiConnService;->wifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v3}, Landroid/net/wifi/WifiManager;->startScan()Z

    .line 251
    :cond_1
    iget-object v3, p0, Lcom/pubinfo/freewifialliance/service/WifiConnService;->wifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v3}, Landroid/net/wifi/WifiManager;->getScanResults()Ljava/util/List;

    move-result-object v3

    iput-object v3, p0, Lcom/pubinfo/freewifialliance/service/WifiConnService;->results:Ljava/util/List;

    .line 252
    iget-object v3, p0, Lcom/pubinfo/freewifialliance/service/WifiConnService;->results:Ljava/util/List;

    if-eqz v3, :cond_2

    .line 253
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v3, p0, Lcom/pubinfo/freewifialliance/service/WifiConnService;->results:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-lt v0, v3, :cond_3

    .line 273
    .end local v0    # "i":I
    :cond_2
    iget-object v3, p0, Lcom/pubinfo/freewifialliance/service/WifiConnService;->tianyi_wifi:Ljava/util/List;

    if-eqz v3, :cond_8

    iget-object v3, p0, Lcom/pubinfo/freewifialliance/service/WifiConnService;->tianyi_wifi:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_8

    .line 274
    invoke-virtual {p0}, Lcom/pubinfo/freewifialliance/service/WifiConnService;->isConnTianyiWifi()Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-virtual {p0}, Lcom/pubinfo/freewifialliance/service/WifiConnService;->isPingAbleTwo()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 275
    iget-object v3, p0, Lcom/pubinfo/freewifialliance/service/WifiConnService;->handler:Landroid/os/Handler;

    const/4 v4, 0x5

    invoke-virtual {v3, v4}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 282
    :goto_1
    return-void

    .line 254
    .restart local v0    # "i":I
    :cond_3
    iget-object v3, p0, Lcom/pubinfo/freewifialliance/service/WifiConnService;->results:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/wifi/ScanResult;

    iget-object v3, v3, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    invoke-virtual {p0, v3}, Lcom/pubinfo/freewifialliance/service/WifiConnService;->isWifiAlliance(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 256
    const/4 v1, 0x0

    .line 257
    .local v1, "isHave":Z
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_2
    iget-object v3, p0, Lcom/pubinfo/freewifialliance/service/WifiConnService;->tianyi_wifi:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-lt v2, v3, :cond_5

    .line 263
    :goto_3
    if-nez v1, :cond_4

    .line 264
    iget-object v4, p0, Lcom/pubinfo/freewifialliance/service/WifiConnService;->tianyi_wifi:Ljava/util/List;

    iget-object v3, p0, Lcom/pubinfo/freewifialliance/service/WifiConnService;->results:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/wifi/ScanResult;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 253
    .end local v1    # "isHave":Z
    .end local v2    # "j":I
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 258
    .restart local v1    # "isHave":Z
    .restart local v2    # "j":I
    :cond_5
    iget-object v3, p0, Lcom/pubinfo/freewifialliance/service/WifiConnService;->results:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/wifi/ScanResult;

    iget-object v4, v3, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    iget-object v3, p0, Lcom/pubinfo/freewifialliance/service/WifiConnService;->tianyi_wifi:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/wifi/ScanResult;

    iget-object v3, v3, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 259
    const/4 v1, 0x1

    .line 260
    goto :goto_3

    .line 257
    :cond_6
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 277
    .end local v0    # "i":I
    .end local v1    # "isHave":Z
    .end local v2    # "j":I
    :cond_7
    iget-object v3, p0, Lcom/pubinfo/freewifialliance/service/WifiConnService;->handler:Landroid/os/Handler;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_1

    .line 280
    :cond_8
    iget-object v3, p0, Lcom/pubinfo/freewifialliance/service/WifiConnService;->handler:Landroid/os/Handler;

    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_1
.end method

.method public isConnTianyiWifi()Z
    .locals 2

    .prologue
    .line 387
    iget-object v1, p0, Lcom/pubinfo/freewifialliance/service/WifiConnService;->wifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v0

    .line 388
    .local v0, "wifiInfo":Landroid/net/wifi/WifiInfo;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/pubinfo/freewifialliance/service/WifiConnService;->isWifiAlliance(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 389
    const/4 v1, 0x1

    .line 391
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isHome()Z
    .locals 3

    .prologue
    .line 374
    iget-object v1, p0, Lcom/pubinfo/freewifialliance/service/WifiConnService;->mActivityManager:Landroid/app/ActivityManager;

    if-nez v1, :cond_0

    .line 375
    const-string v1, "activity"

    invoke-virtual {p0, v1}, Lcom/pubinfo/freewifialliance/service/WifiConnService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager;

    iput-object v1, p0, Lcom/pubinfo/freewifialliance/service/WifiConnService;->mActivityManager:Landroid/app/ActivityManager;

    .line 377
    :cond_0
    iget-object v1, p0, Lcom/pubinfo/freewifialliance/service/WifiConnService;->mActivityManager:Landroid/app/ActivityManager;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v0

    .line 378
    .local v0, "rti":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    invoke-direct {p0}, Lcom/pubinfo/freewifialliance/service/WifiConnService;->getHomes()Ljava/util/List;

    move-result-object v2

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v1, v1, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method public isNight()V
    .locals 4

    .prologue
    const/16 v3, 0xb

    .line 503
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 504
    .local v0, "calendar":Ljava/util/Calendar;
    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v1

    const/16 v2, 0x16

    if-gt v1, v2, :cond_0

    .line 505
    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v1

    const/4 v2, 0x7

    if-ge v1, v2, :cond_1

    .line 506
    :cond_0
    const/4 v1, 0x1

    sput-boolean v1, Lcom/pubinfo/freewifialliance/service/WifiConnService;->isNight:Z

    .line 510
    :goto_0
    return-void

    .line 508
    :cond_1
    const/4 v1, 0x0

    sput-boolean v1, Lcom/pubinfo/freewifialliance/service/WifiConnService;->isNight:Z

    goto :goto_0
.end method

.method public isPingAble()Z
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 441
    :try_start_0
    const-string v2, "ping -c 1 -i 0.2 -W 1 www.baidu.com"

    const-wide/16 v3, 0xbb8

    invoke-static {v2, v3, v4}, Lcom/pubinfo/freewifialliance/service/WifiConnService;->executeCommand(Ljava/lang/String;J)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_2

    move-result v2

    if-nez v2, :cond_0

    .line 442
    const/4 v1, 0x1

    .line 454
    :cond_0
    :goto_0
    return v1

    .line 446
    :catch_0
    move-exception v0

    .line 447
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 449
    .end local v0    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v0

    .line 450
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0

    .line 452
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :catch_2
    move-exception v0

    .line 453
    .local v0, "e":Ljava/util/concurrent/TimeoutException;
    invoke-virtual {v0}, Ljava/util/concurrent/TimeoutException;->printStackTrace()V

    goto :goto_0
.end method

.method public isPingAbleTwo()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 428
    invoke-virtual {p0}, Lcom/pubinfo/freewifialliance/service/WifiConnService;->isPingAble()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 434
    :cond_0
    :goto_0
    return v0

    .line 431
    :cond_1
    invoke-virtual {p0}, Lcom/pubinfo/freewifialliance/service/WifiConnService;->isPingAble()Z

    move-result v1

    if-nez v1, :cond_0

    .line 434
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isWifiAlliance(Ljava/lang/String;)Z
    .locals 4
    .param p1, "wifi"    # Ljava/lang/String;

    .prologue
    .line 402
    .line 403
    const-string v2, "ssidlist"

    const/4 v3, 0x0

    .line 402
    invoke-virtual {p0, v2, v3}, Lcom/pubinfo/freewifialliance/service/WifiConnService;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 404
    .local v1, "sharedPreferences":Landroid/content/SharedPreferences;
    const-string v2, "data"

    const-string v3, ""

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 405
    .local v0, "data":Ljava/lang/String;
    const-string v2, ""

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 406
    invoke-static {p0}, Lcom/pubinfo/wifi_core/core/util/FileManager;->getSsidList(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, p1, v2}, Lcom/pubinfo/freewifialliance/service/WifiConnService;->ssidListParser(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    .line 408
    :goto_0
    return v2

    :cond_0
    invoke-virtual {p0, p1, v0}, Lcom/pubinfo/freewifialliance/service/WifiConnService;->ssidListParser(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    goto :goto_0
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 199
    const/4 v0, 0x0

    return-object v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 8
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/high16 v6, 0x10000000

    .line 290
    sget-object v4, Lcom/pubinfo/freewifialliance/service/WifiConnService;->floatView:Lcom/pubinfo/freewifialliance/view/FloatView;

    invoke-virtual {p1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 291
    iget-object v4, p0, Lcom/pubinfo/freewifialliance/service/WifiConnService;->wifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v4}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v4

    if-eqz v4, :cond_a

    .line 292
    sget-object v4, Lcom/pubinfo/freewifialliance/service/WifiConnService;->floatView:Lcom/pubinfo/freewifialliance/view/FloatView;

    invoke-virtual {v4}, Lcom/pubinfo/freewifialliance/view/FloatView;->getImage()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    iget-object v5, p0, Lcom/pubinfo/freewifialliance/service/WifiConnService;->logoWuDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 293
    iget-object v4, p0, Lcom/pubinfo/freewifialliance/service/WifiConnService;->tianyi_wifi:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->clear()V

    .line 294
    iget-object v4, p0, Lcom/pubinfo/freewifialliance/service/WifiConnService;->results:Ljava/util/List;

    if-eqz v4, :cond_0

    .line 295
    iget-object v4, p0, Lcom/pubinfo/freewifialliance/service/WifiConnService;->results:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->clear()V

    .line 297
    :cond_0
    iget-object v4, p0, Lcom/pubinfo/freewifialliance/service/WifiConnService;->wifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v4}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 298
    iget-object v4, p0, Lcom/pubinfo/freewifialliance/service/WifiConnService;->wifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v4}, Landroid/net/wifi/WifiManager;->startScan()Z

    .line 300
    :cond_1
    iget-object v4, p0, Lcom/pubinfo/freewifialliance/service/WifiConnService;->wifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v4}, Landroid/net/wifi/WifiManager;->getScanResults()Ljava/util/List;

    move-result-object v4

    iput-object v4, p0, Lcom/pubinfo/freewifialliance/service/WifiConnService;->results:Ljava/util/List;

    .line 301
    iget-object v4, p0, Lcom/pubinfo/freewifialliance/service/WifiConnService;->results:Ljava/util/List;

    if-eqz v4, :cond_2

    .line 302
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v4, p0, Lcom/pubinfo/freewifialliance/service/WifiConnService;->results:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-lt v0, v4, :cond_4

    .line 318
    .end local v0    # "i":I
    :cond_2
    iget-object v4, p0, Lcom/pubinfo/freewifialliance/service/WifiConnService;->tianyi_wifi:Ljava/util/List;

    if-eqz v4, :cond_8

    iget-object v4, p0, Lcom/pubinfo/freewifialliance/service/WifiConnService;->tianyi_wifi:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_8

    .line 319
    new-instance v1, Landroid/content/Intent;

    const-class v4, Lcom/pubinfo/freewifialliance/view/LoadingView;

    invoke-direct {v1, p0, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 320
    .local v1, "intent":Landroid/content/Intent;
    invoke-virtual {v1, v6}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 321
    invoke-virtual {p0, v1}, Lcom/pubinfo/freewifialliance/service/WifiConnService;->startActivity(Landroid/content/Intent;)V

    .line 337
    .end local v1    # "intent":Landroid/content/Intent;
    :cond_3
    :goto_1
    return-void

    .line 303
    .restart local v0    # "i":I
    :cond_4
    iget-object v4, p0, Lcom/pubinfo/freewifialliance/service/WifiConnService;->results:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/wifi/ScanResult;

    iget-object v4, v4, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    invoke-virtual {p0, v4}, Lcom/pubinfo/freewifialliance/service/WifiConnService;->isWifiAlliance(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 305
    const/4 v2, 0x0

    .line 306
    .local v2, "isHave":Z
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_2
    iget-object v4, p0, Lcom/pubinfo/freewifialliance/service/WifiConnService;->tianyi_wifi:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-lt v3, v4, :cond_6

    .line 312
    :goto_3
    if-nez v2, :cond_5

    .line 313
    iget-object v5, p0, Lcom/pubinfo/freewifialliance/service/WifiConnService;->tianyi_wifi:Ljava/util/List;

    iget-object v4, p0, Lcom/pubinfo/freewifialliance/service/WifiConnService;->results:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/wifi/ScanResult;

    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 302
    .end local v2    # "isHave":Z
    .end local v3    # "j":I
    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 307
    .restart local v2    # "isHave":Z
    .restart local v3    # "j":I
    :cond_6
    iget-object v4, p0, Lcom/pubinfo/freewifialliance/service/WifiConnService;->results:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/wifi/ScanResult;

    iget-object v5, v4, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    iget-object v4, p0, Lcom/pubinfo/freewifialliance/service/WifiConnService;->tianyi_wifi:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/wifi/ScanResult;

    iget-object v4, v4, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 308
    const/4 v2, 0x1

    .line 309
    goto :goto_3

    .line 306
    :cond_7
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 323
    .end local v0    # "i":I
    .end local v2    # "isHave":Z
    .end local v3    # "j":I
    :cond_8
    sget-object v4, Lcom/pubinfo/freewifialliance/service/WifiConnService;->floatView:Lcom/pubinfo/freewifialliance/view/FloatView;

    invoke-virtual {v4}, Lcom/pubinfo/freewifialliance/view/FloatView;->setTextVisiable()V

    .line 324
    iget-object v4, p0, Lcom/pubinfo/freewifialliance/service/WifiConnService;->handler:Landroid/os/Handler;

    const/4 v5, 0x3

    const-wide/16 v6, 0x3e8

    invoke-virtual {v4, v5, v6, v7}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_1

    .line 327
    :cond_9
    new-instance v1, Landroid/content/Intent;

    const-class v4, Lcom/pubinfo/freewifialliance/view/LoadingView;

    invoke-direct {v1, p0, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 328
    .restart local v1    # "intent":Landroid/content/Intent;
    invoke-virtual {v1, v6}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 329
    invoke-virtual {p0, v1}, Lcom/pubinfo/freewifialliance/service/WifiConnService;->startActivity(Landroid/content/Intent;)V

    goto :goto_1

    .line 332
    .end local v1    # "intent":Landroid/content/Intent;
    :cond_a
    new-instance v1, Landroid/content/Intent;

    const-class v4, Lcom/pubinfo/freewifialliance/view/LoadingView;

    invoke-direct {v1, p0, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 333
    .restart local v1    # "intent":Landroid/content/Intent;
    invoke-virtual {v1, v6}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 334
    invoke-virtual {p0, v1}, Lcom/pubinfo/freewifialliance/service/WifiConnService;->startActivity(Landroid/content/Intent;)V

    goto :goto_1
.end method

.method public onCreate()V
    .locals 11

    .prologue
    .line 124
    const-string v7, "wifi"

    invoke-virtual {p0, v7}, Lcom/pubinfo/freewifialliance/service/WifiConnService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/net/wifi/WifiManager;

    iput-object v7, p0, Lcom/pubinfo/freewifialliance/service/WifiConnService;->wifiManager:Landroid/net/wifi/WifiManager;

    .line 127
    invoke-virtual {p0}, Lcom/pubinfo/freewifialliance/service/WifiConnService;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f020071

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    iput-object v7, p0, Lcom/pubinfo/freewifialliance/service/WifiConnService;->logoWuDrawable:Landroid/graphics/drawable/Drawable;

    .line 128
    invoke-virtual {p0}, Lcom/pubinfo/freewifialliance/service/WifiConnService;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f02006b

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    iput-object v7, p0, Lcom/pubinfo/freewifialliance/service/WifiConnService;->logoDrawable:Landroid/graphics/drawable/Drawable;

    .line 129
    invoke-virtual {p0}, Lcom/pubinfo/freewifialliance/service/WifiConnService;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f020070

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    iput-object v7, p0, Lcom/pubinfo/freewifialliance/service/WifiConnService;->logoLvDrawable:Landroid/graphics/drawable/Drawable;

    .line 131
    iget-object v7, p0, Lcom/pubinfo/freewifialliance/service/WifiConnService;->handler:Landroid/os/Handler;

    iget-object v8, p0, Lcom/pubinfo/freewifialliance/service/WifiConnService;->nightRunnable:Ljava/lang/Runnable;

    const-wide/16 v9, 0x0

    invoke-virtual {v7, v8, v9, v10}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 132
    const/4 v7, 0x1

    iput-boolean v7, p0, Lcom/pubinfo/freewifialliance/service/WifiConnService;->isNightSearch:Z

    .line 134
    new-instance v7, Lcom/pubinfo/freewifialliance/service/WifiConnService$WifiEnableBroadcastReciver;

    invoke-direct {v7, p0}, Lcom/pubinfo/freewifialliance/service/WifiConnService$WifiEnableBroadcastReciver;-><init>(Lcom/pubinfo/freewifialliance/service/WifiConnService;)V

    iput-object v7, p0, Lcom/pubinfo/freewifialliance/service/WifiConnService;->wifiEnableBroadcastReciver:Lcom/pubinfo/freewifialliance/service/WifiConnService$WifiEnableBroadcastReciver;

    .line 135
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 136
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v7, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v0, v7}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 137
    iget-object v7, p0, Lcom/pubinfo/freewifialliance/service/WifiConnService;->wifiEnableBroadcastReciver:Lcom/pubinfo/freewifialliance/service/WifiConnService$WifiEnableBroadcastReciver;

    invoke-virtual {p0, v7, v0}, Lcom/pubinfo/freewifialliance/service/WifiConnService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 139
    new-instance v7, Lcom/pubinfo/freewifialliance/service/WifiConnService$StopTaskBroadcastReceiver;

    invoke-direct {v7, p0}, Lcom/pubinfo/freewifialliance/service/WifiConnService$StopTaskBroadcastReceiver;-><init>(Lcom/pubinfo/freewifialliance/service/WifiConnService;)V

    iput-object v7, p0, Lcom/pubinfo/freewifialliance/service/WifiConnService;->stopTaskBroadcastReceiver:Lcom/pubinfo/freewifialliance/service/WifiConnService$StopTaskBroadcastReceiver;

    .line 140
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 141
    .local v1, "filter2":Landroid/content/IntentFilter;
    const-string v7, "com.pubinfo.freewifialliance.service.WifiConnService.StopTaskBroadcastReceiver"

    invoke-virtual {v1, v7}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 142
    iget-object v7, p0, Lcom/pubinfo/freewifialliance/service/WifiConnService;->stopTaskBroadcastReceiver:Lcom/pubinfo/freewifialliance/service/WifiConnService$StopTaskBroadcastReceiver;

    invoke-virtual {p0, v7, v1}, Lcom/pubinfo/freewifialliance/service/WifiConnService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 144
    new-instance v7, Lcom/pubinfo/freewifialliance/service/WifiConnService$StartTaskBroadcastReceiver;

    invoke-direct {v7, p0}, Lcom/pubinfo/freewifialliance/service/WifiConnService$StartTaskBroadcastReceiver;-><init>(Lcom/pubinfo/freewifialliance/service/WifiConnService;)V

    iput-object v7, p0, Lcom/pubinfo/freewifialliance/service/WifiConnService;->startTaskBroadcastReceiver:Lcom/pubinfo/freewifialliance/service/WifiConnService$StartTaskBroadcastReceiver;

    .line 145
    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    .line 146
    .local v2, "filter3":Landroid/content/IntentFilter;
    const-string v7, "com.pubinfo.freewifialliance.service.WifiConnService.StartTaskBroadcastReceiver"

    invoke-virtual {v2, v7}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 147
    iget-object v7, p0, Lcom/pubinfo/freewifialliance/service/WifiConnService;->startTaskBroadcastReceiver:Lcom/pubinfo/freewifialliance/service/WifiConnService$StartTaskBroadcastReceiver;

    invoke-virtual {p0, v7, v2}, Lcom/pubinfo/freewifialliance/service/WifiConnService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 149
    new-instance v7, Lcom/pubinfo/freewifialliance/service/WifiConnService$StartNightSearchBroadcastReceiver;

    invoke-direct {v7, p0}, Lcom/pubinfo/freewifialliance/service/WifiConnService$StartNightSearchBroadcastReceiver;-><init>(Lcom/pubinfo/freewifialliance/service/WifiConnService;)V

    iput-object v7, p0, Lcom/pubinfo/freewifialliance/service/WifiConnService;->startNightSearchBroadcastReceiver:Lcom/pubinfo/freewifialliance/service/WifiConnService$StartNightSearchBroadcastReceiver;

    .line 150
    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    .line 151
    .local v3, "filter4":Landroid/content/IntentFilter;
    const-string v7, "com.pubinfo.freewifialliance.service.WifiConnService.StartNightSearchBroadcastReceiver"

    invoke-virtual {v3, v7}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 152
    iget-object v7, p0, Lcom/pubinfo/freewifialliance/service/WifiConnService;->startNightSearchBroadcastReceiver:Lcom/pubinfo/freewifialliance/service/WifiConnService$StartNightSearchBroadcastReceiver;

    invoke-virtual {p0, v7, v3}, Lcom/pubinfo/freewifialliance/service/WifiConnService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 154
    new-instance v7, Lcom/pubinfo/freewifialliance/service/WifiConnService$StopNightSearchBroadcastReceiver;

    invoke-direct {v7, p0}, Lcom/pubinfo/freewifialliance/service/WifiConnService$StopNightSearchBroadcastReceiver;-><init>(Lcom/pubinfo/freewifialliance/service/WifiConnService;)V

    iput-object v7, p0, Lcom/pubinfo/freewifialliance/service/WifiConnService;->stopNightSearchBroadcastReceiver:Lcom/pubinfo/freewifialliance/service/WifiConnService$StopNightSearchBroadcastReceiver;

    .line 155
    new-instance v4, Landroid/content/IntentFilter;

    invoke-direct {v4}, Landroid/content/IntentFilter;-><init>()V

    .line 156
    .local v4, "filter5":Landroid/content/IntentFilter;
    const-string v7, "com.pubinfo.freewifialliance.service.WifiConnService.StopNightSearchBroadcastReceiver"

    invoke-virtual {v4, v7}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 157
    iget-object v7, p0, Lcom/pubinfo/freewifialliance/service/WifiConnService;->stopNightSearchBroadcastReceiver:Lcom/pubinfo/freewifialliance/service/WifiConnService$StopNightSearchBroadcastReceiver;

    invoke-virtual {p0, v7, v4}, Lcom/pubinfo/freewifialliance/service/WifiConnService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 159
    new-instance v7, Lcom/pubinfo/freewifialliance/service/WifiConnService$FreshBroadcastReceiver;

    invoke-direct {v7, p0}, Lcom/pubinfo/freewifialliance/service/WifiConnService$FreshBroadcastReceiver;-><init>(Lcom/pubinfo/freewifialliance/service/WifiConnService;)V

    iput-object v7, p0, Lcom/pubinfo/freewifialliance/service/WifiConnService;->freshBroadcastReceiver:Lcom/pubinfo/freewifialliance/service/WifiConnService$FreshBroadcastReceiver;

    .line 160
    new-instance v5, Landroid/content/IntentFilter;

    invoke-direct {v5}, Landroid/content/IntentFilter;-><init>()V

    .line 161
    .local v5, "filter6":Landroid/content/IntentFilter;
    const-string v7, "com.pubinfo.freewifialliance.service.WifiConnService.FreshBroadcastReceiver"

    invoke-virtual {v5, v7}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 162
    iget-object v7, p0, Lcom/pubinfo/freewifialliance/service/WifiConnService;->freshBroadcastReceiver:Lcom/pubinfo/freewifialliance/service/WifiConnService$FreshBroadcastReceiver;

    invoke-virtual {p0, v7, v5}, Lcom/pubinfo/freewifialliance/service/WifiConnService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 164
    new-instance v7, Lcom/pubinfo/freewifialliance/service/WifiConnService$FreshViewBroadcastReceiver;

    invoke-direct {v7, p0}, Lcom/pubinfo/freewifialliance/service/WifiConnService$FreshViewBroadcastReceiver;-><init>(Lcom/pubinfo/freewifialliance/service/WifiConnService;)V

    iput-object v7, p0, Lcom/pubinfo/freewifialliance/service/WifiConnService;->freshViewBroadcastReceiver:Lcom/pubinfo/freewifialliance/service/WifiConnService$FreshViewBroadcastReceiver;

    .line 165
    new-instance v6, Landroid/content/IntentFilter;

    invoke-direct {v6}, Landroid/content/IntentFilter;-><init>()V

    .line 166
    .local v6, "filter7":Landroid/content/IntentFilter;
    const-string v7, "com.pubinfo.freewifialliance.service.WifiConnService.FreshViewBroadcastReceiver"

    invoke-virtual {v6, v7}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 167
    iget-object v7, p0, Lcom/pubinfo/freewifialliance/service/WifiConnService;->freshViewBroadcastReceiver:Lcom/pubinfo/freewifialliance/service/WifiConnService$FreshViewBroadcastReceiver;

    invoke-virtual {p0, v7, v6}, Lcom/pubinfo/freewifialliance/service/WifiConnService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 169
    invoke-direct {p0}, Lcom/pubinfo/freewifialliance/service/WifiConnService;->createView()V

    .line 170
    iget-object v7, p0, Lcom/pubinfo/freewifialliance/service/WifiConnService;->handler:Landroid/os/Handler;

    const/4 v8, 0x4

    invoke-virtual {v7, v8}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 171
    return-void
.end method

.method public onDestroy()V
    .locals 5

    .prologue
    .line 175
    iget-object v3, p0, Lcom/pubinfo/freewifialliance/service/WifiConnService;->wifiEnableBroadcastReciver:Lcom/pubinfo/freewifialliance/service/WifiConnService$WifiEnableBroadcastReciver;

    invoke-virtual {p0, v3}, Lcom/pubinfo/freewifialliance/service/WifiConnService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 176
    iget-object v3, p0, Lcom/pubinfo/freewifialliance/service/WifiConnService;->stopTaskBroadcastReceiver:Lcom/pubinfo/freewifialliance/service/WifiConnService$StopTaskBroadcastReceiver;

    invoke-virtual {p0, v3}, Lcom/pubinfo/freewifialliance/service/WifiConnService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 177
    iget-object v3, p0, Lcom/pubinfo/freewifialliance/service/WifiConnService;->startTaskBroadcastReceiver:Lcom/pubinfo/freewifialliance/service/WifiConnService$StartTaskBroadcastReceiver;

    invoke-virtual {p0, v3}, Lcom/pubinfo/freewifialliance/service/WifiConnService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 178
    iget-object v3, p0, Lcom/pubinfo/freewifialliance/service/WifiConnService;->startNightSearchBroadcastReceiver:Lcom/pubinfo/freewifialliance/service/WifiConnService$StartNightSearchBroadcastReceiver;

    invoke-virtual {p0, v3}, Lcom/pubinfo/freewifialliance/service/WifiConnService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 179
    iget-object v3, p0, Lcom/pubinfo/freewifialliance/service/WifiConnService;->stopNightSearchBroadcastReceiver:Lcom/pubinfo/freewifialliance/service/WifiConnService$StopNightSearchBroadcastReceiver;

    invoke-virtual {p0, v3}, Lcom/pubinfo/freewifialliance/service/WifiConnService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 180
    iget-object v3, p0, Lcom/pubinfo/freewifialliance/service/WifiConnService;->freshBroadcastReceiver:Lcom/pubinfo/freewifialliance/service/WifiConnService$FreshBroadcastReceiver;

    invoke-virtual {p0, v3}, Lcom/pubinfo/freewifialliance/service/WifiConnService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 181
    iget-object v3, p0, Lcom/pubinfo/freewifialliance/service/WifiConnService;->freshViewBroadcastReceiver:Lcom/pubinfo/freewifialliance/service/WifiConnService$FreshViewBroadcastReceiver;

    invoke-virtual {p0, v3}, Lcom/pubinfo/freewifialliance/service/WifiConnService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 183
    iget-object v3, p0, Lcom/pubinfo/freewifialliance/service/WifiConnService;->windowManager:Landroid/view/WindowManager;

    sget-object v4, Lcom/pubinfo/freewifialliance/service/WifiConnService;->floatView:Lcom/pubinfo/freewifialliance/view/FloatView;

    invoke-interface {v3, v4}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    .line 184
    const-string v3, "service"

    .line 185
    const/4 v4, 0x0

    .line 184
    invoke-virtual {p0, v3, v4}, Lcom/pubinfo/freewifialliance/service/WifiConnService;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 186
    .local v2, "sharedPreferences":Landroid/content/SharedPreferences;
    const-string v3, "stop"

    const-string v4, ""

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 187
    .local v1, "isStopString":Ljava/lang/String;
    const-string v3, ""

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 188
    new-instance v0, Landroid/content/Intent;

    const-class v3, Lcom/pubinfo/freewifialliance/service/WifiConnService;

    invoke-direct {v0, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 189
    .local v0, "i":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/pubinfo/freewifialliance/service/WifiConnService;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 191
    .end local v0    # "i":Landroid/content/Intent;
    :cond_0
    return-void
.end method

.method public onStart(Landroid/content/Intent;I)V
    .locals 0
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "startId"    # I

    .prologue
    .line 195
    return-void
.end method

.method protected showMsgToast(Ljava/lang/String;)V
    .locals 1
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 285
    const/16 v0, 0xa

    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 286
    return-void
.end method

.method public ssidListParser(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 7
    .param p1, "wifi"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 413
    const-string v3, ","

    invoke-virtual {p2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 414
    .local v1, "strings":[Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v3, v1

    if-lt v0, v3, :cond_0

    .line 424
    :goto_1
    return v2

    .line 415
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    .line 416
    aget-object v4, v1, v0

    const-string v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    aget-object v4, v4, v2

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 417
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    .line 418
    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    .line 419
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "\""

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget-object v5, v1, v0

    const-string v6, ":"

    invoke-virtual {v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    aget-object v5, v5, v2

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 420
    const-string v5, "\""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 419
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    .line 420
    if-eqz v3, :cond_2

    .line 421
    :cond_1
    const/4 v2, 0x1

    goto :goto_1

    .line 414
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method
