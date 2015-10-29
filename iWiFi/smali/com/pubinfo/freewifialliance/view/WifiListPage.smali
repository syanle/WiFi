.class public Lcom/pubinfo/freewifialliance/view/WifiListPage;
.super Lcom/pubinfo/freewifialliance/controller/WifiListFun;
.source "WifiListPage.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pubinfo/freewifialliance/view/WifiListPage$MyThread;,
        Lcom/pubinfo/freewifialliance/view/WifiListPage$WifiAdapter;,
        Lcom/pubinfo/freewifialliance/view/WifiListPage$Worker;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/pubinfo/freewifialliance/controller/WifiListFun;",
        "Landroid/widget/AdapterView$OnItemClickListener;",
        "Landroid/view/View$OnClickListener;"
    }
.end annotation


# static fields
.field private static isClicked:Z

.field private static isClicked2:Z

.field private static isFirst:Z


# instance fields
.field aes:Lcom/pubinfo/freewifialliance/view/AESEN;

.field arg2:I

.field private btnBack:Landroid/widget/ImageButton;

.field private btnRefresh:Landroid/widget/ImageButton;

.field private context:Landroid/content/Context;

.field final_dev_id:Ljava/lang/String;

.field i:I

.field listHandler:Landroid/os/Handler;

.field private loadingAnimationDrawable:Landroid/graphics/drawable/AnimationDrawable;

.field private loadingImageView:Landroid/widget/ImageView;

.field private loadingRelativeLayout:Landroid/widget/RelativeLayout;

.field logoTitle:Landroid/widget/LinearLayout;

.field noWifiLinearLayout:Landroid/widget/LinearLayout;

.field open_wifiButton:Landroid/widget/Button;

.field private progressTextView:Landroid/widget/TextView;

.field private progressTextView2:Landroid/widget/TextView;

.field serachButton:Landroid/widget/Button;

.field ssidString:Ljava/lang/String;

.field task:Ljava/util/TimerTask;

.field private textView1:Landroid/widget/TextView;

.field private textView2:Landroid/widget/TextView;

.field private timer:Ljava/util/Timer;

.field private wifiLView:Landroid/widget/ListView;

.field protected wifiListPage:Lcom/iwifi/sdk/chinanet/WifiAuthenticationProcedure;

.field wifiManager:Landroid/net/wifi/WifiManager;

.field private wifiMgr:Landroid/net/wifi/WifiManager;

.field wifiNOtEnableLinearLayout:Landroid/widget/LinearLayout;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 127
    const/4 v0, 0x0

    sput-boolean v0, Lcom/pubinfo/freewifialliance/view/WifiListPage;->isFirst:Z

    .line 129
    sput-boolean v1, Lcom/pubinfo/freewifialliance/view/WifiListPage;->isClicked:Z

    .line 131
    sput-boolean v1, Lcom/pubinfo/freewifialliance/view/WifiListPage;->isClicked2:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 54
    invoke-direct {p0}, Lcom/pubinfo/freewifialliance/controller/WifiListFun;-><init>()V

    .line 59
    new-instance v0, Lcom/pubinfo/freewifialliance/view/AESEN;

    invoke-direct {v0}, Lcom/pubinfo/freewifialliance/view/AESEN;-><init>()V

    iput-object v0, p0, Lcom/pubinfo/freewifialliance/view/WifiListPage;->aes:Lcom/pubinfo/freewifialliance/view/AESEN;

    .line 101
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/pubinfo/freewifialliance/view/WifiListPage;->timer:Ljava/util/Timer;

    .line 144
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/pubinfo/freewifialliance/view/WifiListPage;->wifiMgr:Landroid/net/wifi/WifiManager;

    .line 629
    new-instance v0, Lcom/pubinfo/freewifialliance/view/WifiListPage$1;

    invoke-direct {v0, p0}, Lcom/pubinfo/freewifialliance/view/WifiListPage$1;-><init>(Lcom/pubinfo/freewifialliance/view/WifiListPage;)V

    iput-object v0, p0, Lcom/pubinfo/freewifialliance/view/WifiListPage;->task:Ljava/util/TimerTask;

    .line 54
    return-void
.end method

.method static synthetic access$0()Z
    .locals 1

    .prologue
    .line 129
    sget-boolean v0, Lcom/pubinfo/freewifialliance/view/WifiListPage;->isClicked:Z

    return v0
.end method

.method static synthetic access$1(Z)V
    .locals 0

    .prologue
    .line 129
    sput-boolean p0, Lcom/pubinfo/freewifialliance/view/WifiListPage;->isClicked:Z

    return-void
.end method

.method static synthetic access$2()Z
    .locals 1

    .prologue
    .line 131
    sget-boolean v0, Lcom/pubinfo/freewifialliance/view/WifiListPage;->isClicked2:Z

    return v0
.end method

.method static synthetic access$3(Lcom/pubinfo/freewifialliance/view/WifiListPage;)V
    .locals 0

    .prologue
    .line 600
    invoke-direct {p0}, Lcom/pubinfo/freewifialliance/view/WifiListPage;->showLoading()V

    return-void
.end method

.method static synthetic access$4(Lcom/pubinfo/freewifialliance/view/WifiListPage;)Landroid/widget/ListView;
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lcom/pubinfo/freewifialliance/view/WifiListPage;->wifiLView:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic access$5(Lcom/pubinfo/freewifialliance/view/WifiListPage;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 123
    iget-object v0, p0, Lcom/pubinfo/freewifialliance/view/WifiListPage;->progressTextView:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$6(Lcom/pubinfo/freewifialliance/view/WifiListPage;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 125
    iget-object v0, p0, Lcom/pubinfo/freewifialliance/view/WifiListPage;->progressTextView2:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$7(Z)V
    .locals 0

    .prologue
    .line 131
    sput-boolean p0, Lcom/pubinfo/freewifialliance/view/WifiListPage;->isClicked2:Z

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
    .line 410
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v1

    .line 411
    .local v1, "process":Ljava/lang/Process;
    new-instance v2, Lcom/pubinfo/freewifialliance/view/WifiListPage$Worker;

    const/4 v3, 0x0

    invoke-direct {v2, v1, v3}, Lcom/pubinfo/freewifialliance/view/WifiListPage$Worker;-><init>(Ljava/lang/Process;Lcom/pubinfo/freewifialliance/view/WifiListPage$Worker;)V

    .line 412
    .local v2, "worker":Lcom/pubinfo/freewifialliance/view/WifiListPage$Worker;
    invoke-virtual {v2}, Lcom/pubinfo/freewifialliance/view/WifiListPage$Worker;->start()V

    .line 414
    :try_start_0
    invoke-virtual {v2, p1, p2}, Lcom/pubinfo/freewifialliance/view/WifiListPage$Worker;->join(J)V

    .line 415
    # getter for: Lcom/pubinfo/freewifialliance/view/WifiListPage$Worker;->exit:Ljava/lang/Integer;
    invoke-static {v2}, Lcom/pubinfo/freewifialliance/view/WifiListPage$Worker;->access$1(Lcom/pubinfo/freewifialliance/view/WifiListPage$Worker;)Ljava/lang/Integer;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 416
    # getter for: Lcom/pubinfo/freewifialliance/view/WifiListPage$Worker;->exit:Ljava/lang/Integer;
    invoke-static {v2}, Lcom/pubinfo/freewifialliance/view/WifiListPage$Worker;->access$1(Lcom/pubinfo/freewifialliance/view/WifiListPage$Worker;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    .line 425
    invoke-virtual {v1}, Ljava/lang/Process;->destroy()V

    .line 416
    return v3

    .line 418
    :cond_0
    :try_start_1
    new-instance v3, Ljava/util/concurrent/TimeoutException;

    invoke-direct {v3}, Ljava/util/concurrent/TimeoutException;-><init>()V

    throw v3
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 420
    :catch_0
    move-exception v0

    .line 421
    .local v0, "ex":Ljava/lang/InterruptedException;
    :try_start_2
    invoke-virtual {v2}, Lcom/pubinfo/freewifialliance/view/WifiListPage$Worker;->interrupt()V

    .line 422
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->interrupt()V

    .line 423
    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 424
    .end local v0    # "ex":Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v3

    .line 425
    invoke-virtual {v1}, Ljava/lang/Process;->destroy()V

    .line 426
    throw v3
.end method

.method private getDhcpGatewayAddr()Ljava/lang/String;
    .locals 4

    .prologue
    .line 562
    iget-object v1, p0, Lcom/pubinfo/freewifialliance/view/WifiListPage;->wifiMgr:Landroid/net/wifi/WifiManager;

    if-nez v1, :cond_0

    .line 563
    const-string v1, "wifi"

    invoke-virtual {p0, v1}, Lcom/pubinfo/freewifialliance/view/WifiListPage;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/WifiManager;

    iput-object v1, p0, Lcom/pubinfo/freewifialliance/view/WifiListPage;->wifiMgr:Landroid/net/wifi/WifiManager;

    .line 565
    :cond_0
    iget-object v1, p0, Lcom/pubinfo/freewifialliance/view/WifiListPage;->wifiMgr:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getDhcpInfo()Landroid/net/DhcpInfo;

    move-result-object v0

    .line 566
    .local v0, "dhcpInfo":Landroid/net/DhcpInfo;
    const-string v1, "iWifiSDKDemo"

    .line 567
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Gateway address : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 568
    iget v3, v0, Landroid/net/DhcpInfo;->gateway:I

    invoke-static {v3}, Landroid/text/format/Formatter;->formatIpAddress(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 567
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 566
    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 571
    iget v1, v0, Landroid/net/DhcpInfo;->gateway:I

    invoke-static {v1}, Landroid/text/format/Formatter;->formatIpAddress(I)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private hideLoading()V
    .locals 2

    .prologue
    const/4 v0, 0x1

    const/16 v1, 0x8

    .line 615
    sput-boolean v0, Lcom/pubinfo/freewifialliance/view/WifiListPage;->isClicked:Z

    .line 616
    sput-boolean v0, Lcom/pubinfo/freewifialliance/view/WifiListPage;->isClicked2:Z

    .line 617
    iget-object v0, p0, Lcom/pubinfo/freewifialliance/view/WifiListPage;->loadingRelativeLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 618
    iget-object v0, p0, Lcom/pubinfo/freewifialliance/view/WifiListPage;->loadingImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 619
    iget-object v0, p0, Lcom/pubinfo/freewifialliance/view/WifiListPage;->loadingRelativeLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 621
    iget-object v0, p0, Lcom/pubinfo/freewifialliance/view/WifiListPage;->progressTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 622
    iget-object v0, p0, Lcom/pubinfo/freewifialliance/view/WifiListPage;->progressTextView2:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 624
    :cond_0
    return-void
.end method

.method private showLoading()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 601
    iget-object v0, p0, Lcom/pubinfo/freewifialliance/view/WifiListPage;->loadingRelativeLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 602
    iget-object v0, p0, Lcom/pubinfo/freewifialliance/view/WifiListPage;->loadingImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 604
    iget-object v0, p0, Lcom/pubinfo/freewifialliance/view/WifiListPage;->progressTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 605
    iget-object v0, p0, Lcom/pubinfo/freewifialliance/view/WifiListPage;->loadingAnimationDrawable:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 606
    iget-object v0, p0, Lcom/pubinfo/freewifialliance/view/WifiListPage;->loadingAnimationDrawable:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->stop()V

    .line 607
    iget-object v0, p0, Lcom/pubinfo/freewifialliance/view/WifiListPage;->loadingAnimationDrawable:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    .line 611
    :goto_0
    return-void

    .line 609
    :cond_0
    iget-object v0, p0, Lcom/pubinfo/freewifialliance/view/WifiListPage;->loadingAnimationDrawable:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    goto :goto_0
.end method


# virtual methods
.method public connToWifi()V
    .locals 0

    .prologue
    .line 394
    invoke-virtual {p0}, Lcom/pubinfo/freewifialliance/view/WifiListPage;->setWifiListView()V

    .line 395
    invoke-virtual {p0}, Lcom/pubinfo/freewifialliance/view/WifiListPage;->connToWifiJugdeByRecord()V

    .line 396
    return-void
.end method

.method public connToWifiJugdeByRecord()V
    .locals 1

    .prologue
    .line 433
    invoke-static {p0}, Lcom/pubinfo/wifi_core/core/util/FileManager;->getMacAddress(Landroid/content/Context;)Ljava/lang/String;

    .line 434
    invoke-virtual {p0}, Lcom/pubinfo/freewifialliance/view/WifiListPage;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/pubinfo/wifi_core/core/database/Database;->getInstance(Landroid/content/Context;)Lcom/pubinfo/wifi_core/core/database/Database;

    move-result-object v0

    invoke-virtual {v0}, Lcom/pubinfo/wifi_core/core/database/Database;->selectUserRow()V

    .line 435
    invoke-static {}, Lcom/pubinfo/freewifialliance/view/WifiListPage;->getTianyiWifi()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 436
    invoke-virtual {p0}, Lcom/pubinfo/freewifialliance/view/WifiListPage;->connWifiBy()V

    .line 450
    :cond_0
    return-void
.end method

.method public connWifiBy()V
    .locals 6

    .prologue
    .line 488
    invoke-static {}, Lcom/pubinfo/wifi_core/core/data/ComData;->getInstance()Lcom/pubinfo/wifi_core/core/data/ComData;

    move-result-object v3

    invoke-virtual {v3}, Lcom/pubinfo/wifi_core/core/data/ComData;->getWifiInfoData()Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 489
    invoke-static {}, Lcom/pubinfo/wifi_core/core/data/ComData;->getInstance()Lcom/pubinfo/wifi_core/core/data/ComData;

    move-result-object v3

    invoke-virtual {v3}, Lcom/pubinfo/wifi_core/core/data/ComData;->getWifiInfoData()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_0

    .line 491
    invoke-static {}, Lcom/pubinfo/wifi_core/core/data/ComData;->getInstance()Lcom/pubinfo/wifi_core/core/data/ComData;

    move-result-object v3

    invoke-virtual {v3}, Lcom/pubinfo/wifi_core/core/data/ComData;->getWifiInfoData()Ljava/util/List;

    move-result-object v3

    .line 492
    const/4 v4, 0x0

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/pubinfo/wifi_core/core/database/WifiInfoData;

    .line 494
    .local v2, "wifiInfoData":Lcom/pubinfo/wifi_core/core/database/WifiInfoData;
    invoke-direct {p0}, Lcom/pubinfo/freewifialliance/view/WifiListPage;->showLoading()V

    .line 495
    iget-object v3, p0, Lcom/pubinfo/freewifialliance/view/WifiListPage;->progressTextView:Landroid/widget/TextView;

    const v4, 0x7f06005e

    invoke-virtual {p0, v4}, Lcom/pubinfo/freewifialliance/view/WifiListPage;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 497
    new-instance v0, Lcom/iwifi/sdk/protocol/impl/DoAuthenticationLogoffOperation;

    invoke-direct {v0, p0, p0}, Lcom/iwifi/sdk/protocol/impl/DoAuthenticationLogoffOperation;-><init>(Landroid/content/Context;Lcom/iwifi/sdk/protocol/GlobaleAuthenticationRequestCallback;)V

    .line 499
    .local v0, "authen_opt":Lcom/iwifi/sdk/protocol/impl/DoAuthenticationLogoffOperation;
    invoke-virtual {v2}, Lcom/pubinfo/wifi_core/core/database/WifiInfoData;->getPhone()Ljava/lang/String;

    move-result-object v3

    .line 500
    const-string v4, "2.0"

    const-string v5, ""

    .line 499
    invoke-virtual {v0, v3, v4, v5}, Lcom/iwifi/sdk/protocol/impl/DoAuthenticationLogoffOperation;->Global_AuthenticationRequest(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 553
    .end local v0    # "authen_opt":Lcom/iwifi/sdk/protocol/impl/DoAuthenticationLogoffOperation;
    .end local v2    # "wifiInfoData":Lcom/pubinfo/wifi_core/core/database/WifiInfoData;
    :goto_0
    return-void

    .line 548
    :cond_0
    invoke-direct {p0}, Lcom/pubinfo/freewifialliance/view/WifiListPage;->hideLoading()V

    .line 549
    new-instance v1, Landroid/content/Intent;

    const-class v3, Lcom/pubinfo/freewifialliance/view/LoginPage;

    invoke-direct {v1, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 550
    .local v1, "intent":Landroid/content/Intent;
    const-string v4, "ssid"

    invoke-static {}, Lcom/pubinfo/freewifialliance/view/WifiListPage;->getTianyiWifi()Ljava/util/List;

    move-result-object v3

    iget v5, p0, Lcom/pubinfo/freewifialliance/view/WifiListPage;->arg2:I

    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/wifi/ScanResult;

    iget-object v3, v3, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    invoke-virtual {v1, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 551
    invoke-virtual {p0, v1}, Lcom/pubinfo/freewifialliance/view/WifiListPage;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public disconnWifiBy()V
    .locals 10

    .prologue
    .line 467
    invoke-direct {p0}, Lcom/pubinfo/freewifialliance/view/WifiListPage;->showLoading()V

    .line 468
    invoke-static {}, Lcom/pubinfo/wifi_core/core/data/ComData;->getInstance()Lcom/pubinfo/wifi_core/core/data/ComData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/pubinfo/wifi_core/core/data/ComData;->getWifiInfoData()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 469
    invoke-static {}, Lcom/pubinfo/wifi_core/core/data/ComData;->getInstance()Lcom/pubinfo/wifi_core/core/data/ComData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/pubinfo/wifi_core/core/data/ComData;->getWifiInfoData()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 471
    invoke-static {}, Lcom/pubinfo/wifi_core/core/data/ComData;->getInstance()Lcom/pubinfo/wifi_core/core/data/ComData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/pubinfo/wifi_core/core/data/ComData;->getWifiInfoData()Ljava/util/List;

    move-result-object v1

    .line 472
    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/pubinfo/wifi_core/core/database/WifiInfoData;

    .line 474
    .local v9, "wifiInfoData":Lcom/pubinfo/wifi_core/core/database/WifiInfoData;
    new-instance v0, Lcom/iwifi/sdk/protocol/impl/DoAuthenticationLogoffOperation;

    invoke-direct {v0, p0, p0}, Lcom/iwifi/sdk/protocol/impl/DoAuthenticationLogoffOperation;-><init>(Landroid/content/Context;Lcom/iwifi/sdk/protocol/GlobaleAuthenticationRequestCallback;)V

    .line 476
    .local v0, "authen_opt":Lcom/iwifi/sdk/protocol/impl/DoAuthenticationLogoffOperation;
    invoke-virtual {v9}, Lcom/pubinfo/wifi_core/core/database/WifiInfoData;->getPhone()Ljava/lang/String;

    move-result-object v1

    .line 477
    iget-object v2, p0, Lcom/pubinfo/freewifialliance/view/WifiListPage;->appauth_type:Ljava/lang/String;

    iget-object v3, p0, Lcom/pubinfo/freewifialliance/view/WifiListPage;->logoffUrl:Ljava/lang/String;

    iget-object v4, p0, Lcom/pubinfo/freewifialliance/view/WifiListPage;->token:Ljava/lang/String;

    iget-object v5, p0, Lcom/pubinfo/freewifialliance/view/WifiListPage;->third_token:Ljava/lang/String;

    iget-object v6, p0, Lcom/pubinfo/freewifialliance/view/WifiListPage;->ac_name:Ljava/lang/String;

    iget-object v7, p0, Lcom/pubinfo/freewifialliance/view/WifiListPage;->platform_code:Ljava/lang/String;

    .line 478
    iget-object v8, p0, Lcom/pubinfo/freewifialliance/view/WifiListPage;->portal_url:Ljava/lang/String;

    .line 476
    invoke-virtual/range {v0 .. v8}, Lcom/iwifi/sdk/protocol/impl/DoAuthenticationLogoffOperation;->Global_LogoffUrlRequest(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 481
    .end local v0    # "authen_opt":Lcom/iwifi/sdk/protocol/impl/DoAuthenticationLogoffOperation;
    .end local v9    # "wifiInfoData":Lcom/pubinfo/wifi_core/core/database/WifiInfoData;
    :cond_0
    return-void
.end method

.method public getConfirmFail()V
    .locals 1

    .prologue
    .line 319
    const/4 v0, 0x1

    sput-boolean v0, Lcom/pubinfo/freewifialliance/view/WifiListPage;->isClicked:Z

    .line 320
    invoke-direct {p0}, Lcom/pubinfo/freewifialliance/view/WifiListPage;->hideLoading()V

    .line 321
    const-string v0, "\u8ba4\u8bc1\u5931\u8d25"

    invoke-virtual {p0, v0}, Lcom/pubinfo/freewifialliance/view/WifiListPage;->showMsgToast(Ljava/lang/String;)V

    .line 322
    return-void
.end method

.method public getConfirmSuccess(Ljava/lang/String;)V
    .locals 4
    .param p1, "device_id"    # Ljava/lang/String;

    .prologue
    .line 307
    const/4 v1, 0x1

    sput-boolean v1, Lcom/pubinfo/freewifialliance/view/WifiListPage;->isClicked:Z

    .line 308
    invoke-direct {p0}, Lcom/pubinfo/freewifialliance/view/WifiListPage;->hideLoading()V

    .line 309
    const-string v1, "\u8054\u7f51\u6210\u529f"

    invoke-virtual {p0, v1}, Lcom/pubinfo/freewifialliance/view/WifiListPage;->showMsgToast(Ljava/lang/String;)V

    .line 310
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/pubinfo/freewifialliance/view/WelcomePage;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 311
    .local v0, "intent":Landroid/content/Intent;
    const-string v2, "ssid"

    invoke-static {}, Lcom/pubinfo/freewifialliance/view/WifiListPage;->getTianyiWifi()Ljava/util/List;

    move-result-object v1

    iget v3, p0, Lcom/pubinfo/freewifialliance/view/WifiListPage;->arg2:I

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/ScanResult;

    iget-object v1, v1, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 312
    const-string v1, "device_id"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 313
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 314
    invoke-virtual {p0, v0}, Lcom/pubinfo/freewifialliance/view/WifiListPage;->startActivity(Landroid/content/Intent;)V

    .line 315
    return-void
.end method

.method public hideLoadingView()V
    .locals 0

    .prologue
    .line 596
    invoke-direct {p0}, Lcom/pubinfo/freewifialliance/view/WifiListPage;->hideLoading()V

    .line 597
    return-void
.end method

.method public initNoWifi()V
    .locals 3

    .prologue
    const/16 v2, 0x8

    .line 239
    iget-object v0, p0, Lcom/pubinfo/freewifialliance/view/WifiListPage;->noWifiLinearLayout:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 240
    iget-object v0, p0, Lcom/pubinfo/freewifialliance/view/WifiListPage;->wifiNOtEnableLinearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 241
    iget-object v0, p0, Lcom/pubinfo/freewifialliance/view/WifiListPage;->logoTitle:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 242
    iget-object v0, p0, Lcom/pubinfo/freewifialliance/view/WifiListPage;->wifiLView:Landroid/widget/ListView;

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setVisibility(I)V

    .line 244
    :try_start_0
    const-string v0, "ping -c 1 -i 0.2 -W 1 www.baidu.com"

    const-wide/16 v1, 0xbb8

    invoke-static {v0, v1, v2}, Lcom/pubinfo/freewifialliance/view/WifiListPage;->executeCommand(Ljava/lang/String;J)I

    move-result v0

    if-nez v0, :cond_0

    .line 245
    invoke-virtual {p0}, Lcom/pubinfo/freewifialliance/view/WifiListPage;->updateSsidList()V

    .line 253
    :goto_0
    return-void

    .line 247
    :cond_0
    const-string v0, "\u6211\u4eec\u63a8\u8350\u60a8\u5f00\u542f3G\u7f51\u7edc\u6216\u8005\u8fde\u63a5\u4e92\u8054\u7f51\uff0c\u641c\u7d22\u6700\u65b0\u7684\u7231WiFi\u70ed\u70b9\u3002"

    invoke-virtual {p0, v0}, Lcom/pubinfo/freewifialliance/view/WifiListPage;->showMsgToast(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 249
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public initShowList()V
    .locals 3

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 256
    iget-object v0, p0, Lcom/pubinfo/freewifialliance/view/WifiListPage;->noWifiLinearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 257
    iget-object v0, p0, Lcom/pubinfo/freewifialliance/view/WifiListPage;->wifiNOtEnableLinearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 258
    iget-object v0, p0, Lcom/pubinfo/freewifialliance/view/WifiListPage;->logoTitle:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 259
    iget-object v0, p0, Lcom/pubinfo/freewifialliance/view/WifiListPage;->wifiLView:Landroid/widget/ListView;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setVisibility(I)V

    .line 260
    return-void
.end method

.method public initWifiNotEnable()V
    .locals 3

    .prologue
    const/16 v2, 0x8

    .line 230
    iget-object v0, p0, Lcom/pubinfo/freewifialliance/view/WifiListPage;->wifiNOtEnableLinearLayout:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 231
    iget-object v0, p0, Lcom/pubinfo/freewifialliance/view/WifiListPage;->noWifiLinearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 232
    iget-object v0, p0, Lcom/pubinfo/freewifialliance/view/WifiListPage;->logoTitle:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 233
    iget-object v0, p0, Lcom/pubinfo/freewifialliance/view/WifiListPage;->wifiLView:Landroid/widget/ListView;

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setVisibility(I)V

    .line 235
    return-void
.end method

.method public isHaveRecord(Ljava/lang/String;)Z
    .locals 1
    .param p1, "wifiTye"    # Ljava/lang/String;

    .prologue
    .line 581
    invoke-virtual {p0}, Lcom/pubinfo/freewifialliance/view/WifiListPage;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/pubinfo/wifi_core/core/database/Database;->getInstance(Landroid/content/Context;)Lcom/pubinfo/wifi_core/core/database/Database;

    move-result-object v0

    invoke-virtual {v0}, Lcom/pubinfo/wifi_core/core/database/Database;->selectUserRow()V

    .line 582
    invoke-static {}, Lcom/pubinfo/wifi_core/core/data/ComData;->getInstance()Lcom/pubinfo/wifi_core/core/data/ComData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/pubinfo/wifi_core/core/data/ComData;->getWifiInfoData()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 583
    invoke-static {}, Lcom/pubinfo/wifi_core/core/data/ComData;->getInstance()Lcom/pubinfo/wifi_core/core/data/ComData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/pubinfo/wifi_core/core/data/ComData;->getWifiInfoData()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 584
    const/4 v0, 0x1

    .line 586
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 290
    iget-object v0, p0, Lcom/pubinfo/freewifialliance/view/WifiListPage;->btnRefresh:Landroid/widget/ImageButton;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 291
    invoke-virtual {p0}, Lcom/pubinfo/freewifialliance/view/WifiListPage;->getWiFi()V

    .line 304
    :cond_0
    :goto_0
    return-void

    .line 292
    :cond_1
    iget-object v0, p0, Lcom/pubinfo/freewifialliance/view/WifiListPage;->open_wifiButton:Landroid/widget/Button;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 293
    iget-object v0, p0, Lcom/pubinfo/freewifialliance/view/WifiListPage;->wifiManager:Landroid/net/wifi/WifiManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    .line 294
    invoke-direct {p0}, Lcom/pubinfo/freewifialliance/view/WifiListPage;->showLoading()V

    .line 295
    iget-object v0, p0, Lcom/pubinfo/freewifialliance/view/WifiListPage;->progressTextView:Landroid/widget/TextView;

    const v1, 0x7f06005f

    invoke-virtual {p0, v1}, Lcom/pubinfo/freewifialliance/view/WifiListPage;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 296
    iget-object v0, p0, Lcom/pubinfo/freewifialliance/view/WifiListPage;->handler:Landroid/os/Handler;

    const/16 v1, 0x9

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 297
    :cond_2
    iget-object v0, p0, Lcom/pubinfo/freewifialliance/view/WifiListPage;->serachButton:Landroid/widget/Button;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 298
    invoke-virtual {p0}, Lcom/pubinfo/freewifialliance/view/WifiListPage;->getWiFi()V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v2, 0x0

    .line 150
    invoke-super {p0, p1}, Lcom/pubinfo/freewifialliance/controller/WifiListFun;->onCreate(Landroid/os/Bundle;)V

    .line 151
    const v0, 0x7f03003d

    invoke-virtual {p0, v0}, Lcom/pubinfo/freewifialliance/view/WifiListPage;->setContentView(I)V

    .line 153
    iput-object p0, p0, Lcom/pubinfo/freewifialliance/view/WifiListPage;->context:Landroid/content/Context;

    .line 154
    const-string v0, "wifi"

    invoke-virtual {p0, v0}, Lcom/pubinfo/freewifialliance/view/WifiListPage;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    iput-object v0, p0, Lcom/pubinfo/freewifialliance/view/WifiListPage;->wifiManager:Landroid/net/wifi/WifiManager;

    .line 155
    const v0, 0x7f0c005b

    invoke-virtual {p0, v0}, Lcom/pubinfo/freewifialliance/view/WifiListPage;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/pubinfo/freewifialliance/view/WifiListPage;->btnRefresh:Landroid/widget/ImageButton;

    .line 156
    iget-object v0, p0, Lcom/pubinfo/freewifialliance/view/WifiListPage;->btnRefresh:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 158
    const v0, 0x7f0c00f7

    invoke-virtual {p0, v0}, Lcom/pubinfo/freewifialliance/view/WifiListPage;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/pubinfo/freewifialliance/view/WifiListPage;->open_wifiButton:Landroid/widget/Button;

    .line 159
    iget-object v0, p0, Lcom/pubinfo/freewifialliance/view/WifiListPage;->open_wifiButton:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 161
    const v0, 0x7f0c00f8

    invoke-virtual {p0, v0}, Lcom/pubinfo/freewifialliance/view/WifiListPage;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/pubinfo/freewifialliance/view/WifiListPage;->serachButton:Landroid/widget/Button;

    .line 162
    iget-object v0, p0, Lcom/pubinfo/freewifialliance/view/WifiListPage;->serachButton:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 164
    const v0, 0x7f0c00f5

    invoke-virtual {p0, v0}, Lcom/pubinfo/freewifialliance/view/WifiListPage;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/pubinfo/freewifialliance/view/WifiListPage;->wifiLView:Landroid/widget/ListView;

    .line 165
    iget-object v0, p0, Lcom/pubinfo/freewifialliance/view/WifiListPage;->wifiLView:Landroid/widget/ListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 166
    iget-object v0, p0, Lcom/pubinfo/freewifialliance/view/WifiListPage;->wifiLView:Landroid/widget/ListView;

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setCacheColorHint(I)V

    .line 167
    iget-object v0, p0, Lcom/pubinfo/freewifialliance/view/WifiListPage;->wifiLView:Landroid/widget/ListView;

    invoke-virtual {v0, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 169
    const v0, 0x7f0c001d

    invoke-virtual {p0, v0}, Lcom/pubinfo/freewifialliance/view/WifiListPage;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/pubinfo/freewifialliance/view/WifiListPage;->loadingImageView:Landroid/widget/ImageView;

    .line 170
    iget-object v0, p0, Lcom/pubinfo/freewifialliance/view/WifiListPage;->loadingImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, v2, v2}, Landroid/widget/ImageView;->measure(II)V

    .line 171
    iget-object v0, p0, Lcom/pubinfo/freewifialliance/view/WifiListPage;->loadingImageView:Landroid/widget/ImageView;

    .line 172
    invoke-virtual {v0}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/AnimationDrawable;

    .line 171
    iput-object v0, p0, Lcom/pubinfo/freewifialliance/view/WifiListPage;->loadingAnimationDrawable:Landroid/graphics/drawable/AnimationDrawable;

    .line 174
    const v0, 0x7f0c001e

    invoke-virtual {p0, v0}, Lcom/pubinfo/freewifialliance/view/WifiListPage;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/pubinfo/freewifialliance/view/WifiListPage;->progressTextView:Landroid/widget/TextView;

    .line 176
    const v0, 0x7f0c001f

    invoke-virtual {p0, v0}, Lcom/pubinfo/freewifialliance/view/WifiListPage;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/pubinfo/freewifialliance/view/WifiListPage;->progressTextView2:Landroid/widget/TextView;

    .line 178
    const v0, 0x7f0c00f6

    invoke-virtual {p0, v0}, Lcom/pubinfo/freewifialliance/view/WifiListPage;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/pubinfo/freewifialliance/view/WifiListPage;->loadingRelativeLayout:Landroid/widget/RelativeLayout;

    .line 180
    const v0, 0x7f0c00f1

    invoke-virtual {p0, v0}, Lcom/pubinfo/freewifialliance/view/WifiListPage;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/pubinfo/freewifialliance/view/WifiListPage;->noWifiLinearLayout:Landroid/widget/LinearLayout;

    .line 182
    const v0, 0x7f0c00f0

    invoke-virtual {p0, v0}, Lcom/pubinfo/freewifialliance/view/WifiListPage;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/pubinfo/freewifialliance/view/WifiListPage;->wifiNOtEnableLinearLayout:Landroid/widget/LinearLayout;

    .line 184
    const v0, 0x7f0c00f2

    invoke-virtual {p0, v0}, Lcom/pubinfo/freewifialliance/view/WifiListPage;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/pubinfo/freewifialliance/view/WifiListPage;->logoTitle:Landroid/widget/LinearLayout;

    .line 186
    const/4 v0, 0x1

    sput-boolean v0, Lcom/pubinfo/freewifialliance/view/WifiListPage;->isFirst:Z

    .line 187
    iget-object v0, p0, Lcom/pubinfo/freewifialliance/view/WifiListPage;->timer:Ljava/util/Timer;

    iget-object v1, p0, Lcom/pubinfo/freewifialliance/view/WifiListPage;->task:Ljava/util/TimerTask;

    const-wide/16 v2, 0x1388

    const-wide/32 v4, 0x493e0

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    .line 188
    invoke-direct {p0}, Lcom/pubinfo/freewifialliance/view/WifiListPage;->hideLoading()V

    .line 189
    new-instance v0, Lcom/pubinfo/freewifialliance/view/WifiListPage$2;

    invoke-direct {v0, p0}, Lcom/pubinfo/freewifialliance/view/WifiListPage$2;-><init>(Lcom/pubinfo/freewifialliance/view/WifiListPage;)V

    iput-object v0, p0, Lcom/pubinfo/freewifialliance/view/WifiListPage;->listHandler:Landroid/os/Handler;

    .line 221
    iget-object v0, p0, Lcom/pubinfo/freewifialliance/view/WifiListPage;->wifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 222
    invoke-virtual {p0}, Lcom/pubinfo/freewifialliance/view/WifiListPage;->initWifiNotEnable()V

    .line 226
    :goto_0
    return-void

    .line 224
    :cond_0
    invoke-virtual {p0}, Lcom/pubinfo/freewifialliance/view/WifiListPage;->getWiFi()V

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 326
    invoke-super {p0}, Lcom/pubinfo/freewifialliance/controller/WifiListFun;->onDestroy()V

    .line 327
    iget-object v0, p0, Lcom/pubinfo/freewifialliance/view/WifiListPage;->timer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 328
    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 9
    .param p2, "arg1"    # Landroid/view/View;
    .param p3, "arg2"    # I
    .param p4, "arg3"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .local p1, "arg0":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    const/4 v8, 0x1

    const/4 v5, 0x0

    .line 265
    iput p3, p0, Lcom/pubinfo/freewifialliance/view/WifiListPage;->arg2:I

    .line 266
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v0, "\""

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/pubinfo/freewifialliance/view/WifiListPage;->getTianyiWifi()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/ScanResult;

    iget-object v0, v0, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 267
    invoke-virtual {p0}, Lcom/pubinfo/freewifialliance/view/WifiListPage;->getConnectedWifiSSId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 268
    invoke-static {}, Lcom/pubinfo/freewifialliance/view/WifiListPage;->getTianyiWifi()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/ScanResult;

    iget-object v0, v0, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    .line 269
    invoke-virtual {p0}, Lcom/pubinfo/freewifialliance/view/WifiListPage;->getConnectedWifiSSId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 270
    :cond_0
    invoke-direct {p0}, Lcom/pubinfo/freewifialliance/view/WifiListPage;->showLoading()V

    .line 271
    invoke-virtual {p0}, Lcom/pubinfo/freewifialliance/view/WifiListPage;->connToWifiJugdeByRecord()V

    .line 286
    :goto_0
    return-void

    .line 273
    :cond_1
    iget-object v0, p0, Lcom/pubinfo/freewifialliance/view/WifiListPage;->handler:Landroid/os/Handler;

    const-wide/16 v1, 0x2710

    invoke-virtual {v0, v5, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 274
    new-instance v6, Lcom/pubinfo/wifi_core/core/util/WifiAdmin;

    invoke-direct {v6, p0}, Lcom/pubinfo/wifi_core/core/util/WifiAdmin;-><init>(Landroid/content/Context;)V

    .line 276
    .local v6, "wifiAdmin":Lcom/pubinfo/wifi_core/core/util/WifiAdmin;
    invoke-static {}, Lcom/pubinfo/freewifialliance/view/WifiListPage;->getTianyiWifi()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/ScanResult;

    iget-object v0, v0, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    const-string v1, ""

    .line 275
    invoke-virtual {v6, v0, v1, v8}, Lcom/pubinfo/wifi_core/core/util/WifiAdmin;->CreateWifiInfo(Ljava/lang/String;Ljava/lang/String;I)Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    invoke-virtual {v6, v0}, Lcom/pubinfo/wifi_core/core/util/WifiAdmin;->addNetwork(Landroid/net/wifi/WifiConfiguration;)V

    .line 277
    iget-object v7, p0, Lcom/pubinfo/freewifialliance/view/WifiListPage;->wifiLView:Landroid/widget/ListView;

    new-instance v0, Lcom/pubinfo/freewifialliance/view/WifiListPage$WifiAdapter;

    .line 278
    invoke-static {}, Lcom/pubinfo/freewifialliance/view/WifiListPage;->getTianyiWifi()Ljava/util/List;

    move-result-object v3

    const-string v4, ""

    move-object v1, p0

    move-object v2, p0

    invoke-direct/range {v0 .. v5}, Lcom/pubinfo/freewifialliance/view/WifiListPage$WifiAdapter;-><init>(Lcom/pubinfo/freewifialliance/view/WifiListPage;Landroid/content/Context;Ljava/util/List;Ljava/lang/String;I)V

    .line 277
    invoke-virtual {v7, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 279
    invoke-virtual {p0, v8}, Lcom/pubinfo/freewifialliance/view/WifiListPage;->setClicked(Z)V

    .line 280
    iget-object v0, p0, Lcom/pubinfo/freewifialliance/view/WifiListPage;->progressTextView:Landroid/widget/TextView;

    const v1, 0x7f06005c

    invoke-virtual {p0, v1}, Lcom/pubinfo/freewifialliance/view/WifiListPage;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 281
    iget-object v0, p0, Lcom/pubinfo/freewifialliance/view/WifiListPage;->progressTextView2:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 282
    iget-object v1, p0, Lcom/pubinfo/freewifialliance/view/WifiListPage;->progressTextView2:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/pubinfo/freewifialliance/view/WifiListPage;->getTianyiWifi()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/ScanResult;

    iget-object v0, v0, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 283
    const v0, 0x7f06005d

    invoke-virtual {p0, v0}, Lcom/pubinfo/freewifialliance/view/WifiListPage;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 282
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 284
    invoke-direct {p0}, Lcom/pubinfo/freewifialliance/view/WifiListPage;->showLoading()V

    goto :goto_0
.end method

.method public onLogoffRequestFail(Ljava/lang/String;)V
    .locals 3
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 917
    invoke-direct {p0}, Lcom/pubinfo/freewifialliance/view/WifiListPage;->hideLoading()V

    .line 918
    const-string v0, "iWifiSDKDemo"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, " onLogoffRequestFail : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 919
    const-string v0, "\u4e0b\u7ebf\u5931\u8d25"

    invoke-virtual {p0, v0}, Lcom/pubinfo/freewifialliance/view/WifiListPage;->showMsgToast(Ljava/lang/String;)V

    .line 920
    return-void
.end method

.method public onLogoffRequestSucc(Ljava/lang/String;)V
    .locals 4
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 907
    const-string v1, "LOGOFF"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lcom/pubinfo/freewifialliance/view/WifiListPage;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 908
    .local v0, "sharedata":Landroid/content/SharedPreferences;
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 910
    invoke-direct {p0}, Lcom/pubinfo/freewifialliance/view/WifiListPage;->hideLoading()V

    .line 911
    const-string v1, "iWifiSDKDemo"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, " onLogoffRequestSucc : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 912
    const-string v1, "\u4e0b\u7ebf\u6210\u529f"

    invoke-virtual {p0, v1}, Lcom/pubinfo/freewifialliance/view/WifiListPage;->showMsgToast(Ljava/lang/String;)V

    .line 913
    return-void
.end method

.method protected onPause()V
    .locals 0

    .prologue
    .line 74
    invoke-super {p0}, Lcom/pubinfo/freewifialliance/controller/WifiListFun;->onPause()V

    .line 75
    invoke-direct {p0}, Lcom/pubinfo/freewifialliance/view/WifiListPage;->hideLoading()V

    .line 76
    return-void
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 64
    invoke-super {p0}, Lcom/pubinfo/freewifialliance/controller/WifiListFun;->onResume()V

    .line 65
    iget-object v0, p0, Lcom/pubinfo/freewifialliance/view/WifiListPage;->wifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 66
    invoke-static {p0}, Lcom/pubinfo/wifi_core/core/database/Database;->getInstance(Landroid/content/Context;)Lcom/pubinfo/wifi_core/core/database/Database;

    move-result-object v0

    invoke-virtual {v0}, Lcom/pubinfo/wifi_core/core/database/Database;->selectUserRow()V

    .line 67
    invoke-virtual {p0}, Lcom/pubinfo/freewifialliance/view/WifiListPage;->setWifiListView()V

    .line 69
    :cond_0
    return-void
.end method

.method public setWifiListView()V
    .locals 11

    .prologue
    const v10, 0x7f06005d

    const v9, 0x7f06005c

    const/4 v8, 0x1

    const/4 v5, 0x0

    .line 335
    invoke-virtual {p0}, Lcom/pubinfo/freewifialliance/view/WifiListPage;->getConnectedWifiSSId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/pubinfo/freewifialliance/view/WifiListPage;->ssidString:Ljava/lang/String;

    .line 336
    iput v5, p0, Lcom/pubinfo/freewifialliance/view/WifiListPage;->i:I

    .line 337
    iget-object v0, p0, Lcom/pubinfo/freewifialliance/view/WifiListPage;->ssidString:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/pubinfo/freewifialliance/view/WifiListPage;->isHaveRecord(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 338
    iput v8, p0, Lcom/pubinfo/freewifialliance/view/WifiListPage;->i:I

    .line 342
    :cond_0
    invoke-static {}, Lcom/pubinfo/freewifialliance/view/WifiListPage;->getTianyiWifi()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-static {}, Lcom/pubinfo/freewifialliance/view/WifiListPage;->getTianyiWifi()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_4

    .line 343
    invoke-direct {p0}, Lcom/pubinfo/freewifialliance/view/WifiListPage;->hideLoading()V

    .line 345
    invoke-virtual {p0}, Lcom/pubinfo/freewifialliance/view/WifiListPage;->initShowList()V

    .line 346
    iget-object v0, p0, Lcom/pubinfo/freewifialliance/view/WifiListPage;->listHandler:Landroid/os/Handler;

    invoke-virtual {v0, v5}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 349
    sget-boolean v0, Lcom/pubinfo/freewifialliance/view/WifiListPage;->isFirst:Z

    if-eqz v0, :cond_2

    .line 350
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 351
    .local v3, "wifiList":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/ScanResult;>;"
    invoke-interface {v3}, Ljava/util/List;->clear()V

    .line 352
    invoke-static {}, Lcom/pubinfo/freewifialliance/view/WifiListPage;->getTianyiWifi()Ljava/util/List;

    move-result-object v0

    invoke-interface {v3, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 354
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_2

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    if-ne v0, v8, :cond_2

    .line 355
    iput v5, p0, Lcom/pubinfo/freewifialliance/view/WifiListPage;->arg2:I

    .line 356
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v0, "\""

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v0, p0, Lcom/pubinfo/freewifialliance/view/WifiListPage;->arg2:I

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/ScanResult;

    iget-object v0, v0, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 357
    invoke-virtual {p0}, Lcom/pubinfo/freewifialliance/view/WifiListPage;->getConnectedWifiSSId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 358
    iget v0, p0, Lcom/pubinfo/freewifialliance/view/WifiListPage;->arg2:I

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/ScanResult;

    iget-object v0, v0, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    .line 359
    invoke-virtual {p0}, Lcom/pubinfo/freewifialliance/view/WifiListPage;->getConnectedWifiSSId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 360
    :cond_1
    iget-object v0, p0, Lcom/pubinfo/freewifialliance/view/WifiListPage;->progressTextView:Landroid/widget/TextView;

    invoke-virtual {p0, v9}, Lcom/pubinfo/freewifialliance/view/WifiListPage;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 361
    iget-object v0, p0, Lcom/pubinfo/freewifialliance/view/WifiListPage;->progressTextView2:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 362
    iget-object v0, p0, Lcom/pubinfo/freewifialliance/view/WifiListPage;->progressTextView2:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/pubinfo/freewifialliance/view/WifiListPage;->getConnectedWifiSSId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 363
    invoke-virtual {p0, v10}, Lcom/pubinfo/freewifialliance/view/WifiListPage;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 362
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 364
    invoke-direct {p0}, Lcom/pubinfo/freewifialliance/view/WifiListPage;->showLoading()V

    .line 365
    invoke-virtual {p0}, Lcom/pubinfo/freewifialliance/view/WifiListPage;->connToWifiJugdeByRecord()V

    .line 389
    .end local v3    # "wifiList":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/ScanResult;>;"
    :cond_2
    :goto_0
    sput-boolean v5, Lcom/pubinfo/freewifialliance/view/WifiListPage;->isFirst:Z

    .line 390
    return-void

    .line 367
    .restart local v3    # "wifiList":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/ScanResult;>;"
    :cond_3
    iget-object v0, p0, Lcom/pubinfo/freewifialliance/view/WifiListPage;->handler:Landroid/os/Handler;

    const-wide/16 v1, 0x2710

    invoke-virtual {v0, v5, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 368
    new-instance v6, Lcom/pubinfo/wifi_core/core/util/WifiAdmin;

    invoke-direct {v6, p0}, Lcom/pubinfo/wifi_core/core/util/WifiAdmin;-><init>(Landroid/content/Context;)V

    .line 370
    .local v6, "wifiAdmin":Lcom/pubinfo/wifi_core/core/util/WifiAdmin;
    iget v0, p0, Lcom/pubinfo/freewifialliance/view/WifiListPage;->arg2:I

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/ScanResult;

    iget-object v0, v0, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    const-string v1, ""

    .line 369
    invoke-virtual {v6, v0, v1, v8}, Lcom/pubinfo/wifi_core/core/util/WifiAdmin;->CreateWifiInfo(Ljava/lang/String;Ljava/lang/String;I)Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    invoke-virtual {v6, v0}, Lcom/pubinfo/wifi_core/core/util/WifiAdmin;->addNetwork(Landroid/net/wifi/WifiConfiguration;)V

    .line 372
    iget-object v7, p0, Lcom/pubinfo/freewifialliance/view/WifiListPage;->wifiLView:Landroid/widget/ListView;

    new-instance v0, Lcom/pubinfo/freewifialliance/view/WifiListPage$WifiAdapter;

    .line 373
    const-string v4, ""

    move-object v1, p0

    move-object v2, p0

    invoke-direct/range {v0 .. v5}, Lcom/pubinfo/freewifialliance/view/WifiListPage$WifiAdapter;-><init>(Lcom/pubinfo/freewifialliance/view/WifiListPage;Landroid/content/Context;Ljava/util/List;Ljava/lang/String;I)V

    .line 372
    invoke-virtual {v7, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 374
    iget-object v0, p0, Lcom/pubinfo/freewifialliance/view/WifiListPage;->progressTextView:Landroid/widget/TextView;

    invoke-virtual {p0, v9}, Lcom/pubinfo/freewifialliance/view/WifiListPage;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 375
    iget-object v0, p0, Lcom/pubinfo/freewifialliance/view/WifiListPage;->progressTextView2:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 376
    iget-object v0, p0, Lcom/pubinfo/freewifialliance/view/WifiListPage;->progressTextView2:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/pubinfo/freewifialliance/view/WifiListPage;->getConnectedWifiSSId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 377
    invoke-virtual {p0, v10}, Lcom/pubinfo/freewifialliance/view/WifiListPage;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 376
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 378
    invoke-virtual {p0, v8}, Lcom/pubinfo/freewifialliance/view/WifiListPage;->setClicked(Z)V

    .line 379
    invoke-direct {p0}, Lcom/pubinfo/freewifialliance/view/WifiListPage;->showLoading()V

    goto :goto_0

    .line 385
    .end local v3    # "wifiList":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/ScanResult;>;"
    .end local v6    # "wifiAdmin":Lcom/pubinfo/wifi_core/core/util/WifiAdmin;
    :cond_4
    invoke-direct {p0}, Lcom/pubinfo/freewifialliance/view/WifiListPage;->hideLoading()V

    .line 386
    invoke-virtual {p0}, Lcom/pubinfo/freewifialliance/view/WifiListPage;->initNoWifi()V

    goto :goto_0
.end method

.method public showLoadingView()V
    .locals 0

    .prologue
    .line 591
    invoke-direct {p0}, Lcom/pubinfo/freewifialliance/view/WifiListPage;->showLoading()V

    .line 592
    return-void
.end method
