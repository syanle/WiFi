.class public Lcom/pubinfo/izhejiang/fragment/SsidFragment;
.super Lcom/pubinfo/izhejiang/controller/WifiListFun;
.source "SsidFragment.java"

# interfaces
.implements Lcom/cat/list/XListView$IXListViewListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pubinfo/izhejiang/fragment/SsidFragment$MyThread;,
        Lcom/pubinfo/izhejiang/fragment/SsidFragment$WifiAdapter;
    }
.end annotation


# static fields
.field public static final SSID_CONNECT:I = 0x3

.field public static final SSID_LOGIN:I = 0x2


# instance fields
.field Layout_message:Landroid/widget/LinearLayout;

.field Layout_near:Landroid/widget/LinearLayout;

.field Layout_share:Landroid/widget/LinearLayout;

.field Layout_sign:Landroid/widget/LinearLayout;

.field iv_wifi:Landroid/widget/ImageView;

.field private listHandler:Landroid/os/Handler;

.field mDownloader:Lcom/cat/list/ImageDownloader;

.field macstring:Ljava/lang/String;

.field onClickListener:Landroid/view/View$OnClickListener;

.field ssidstring:Ljava/lang/String;

.field tag:Z

.field username:Ljava/lang/String;

.field wifiListAll:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/cat/data/SsidData;",
            ">;"
        }
    .end annotation
.end field

.field wifiManager:Landroid/net/wifi/WifiManager;

.field protected wifiMgr:Landroid/net/wifi/WifiManager;

.field wifibtn:Z

.field wifibtn_click:Z

.field wifimac:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 50
    invoke-direct {p0}, Lcom/pubinfo/izhejiang/controller/WifiListFun;-><init>()V

    .line 55
    iput-object v0, p0, Lcom/pubinfo/izhejiang/fragment/SsidFragment;->listHandler:Landroid/os/Handler;

    .line 59
    iput-object v0, p0, Lcom/pubinfo/izhejiang/fragment/SsidFragment;->wifiMgr:Landroid/net/wifi/WifiManager;

    .line 60
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/pubinfo/izhejiang/fragment/SsidFragment;->tag:Z

    .line 64
    iput-boolean v1, p0, Lcom/pubinfo/izhejiang/fragment/SsidFragment;->wifibtn:Z

    .line 65
    iput-boolean v1, p0, Lcom/pubinfo/izhejiang/fragment/SsidFragment;->wifibtn_click:Z

    .line 67
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/pubinfo/izhejiang/fragment/SsidFragment;->wifiListAll:Ljava/util/List;

    .line 519
    new-instance v0, Lcom/pubinfo/izhejiang/fragment/SsidFragment$1;

    invoke-direct {v0, p0}, Lcom/pubinfo/izhejiang/fragment/SsidFragment$1;-><init>(Lcom/pubinfo/izhejiang/fragment/SsidFragment;)V

    iput-object v0, p0, Lcom/pubinfo/izhejiang/fragment/SsidFragment;->onClickListener:Landroid/view/View$OnClickListener;

    .line 50
    return-void
.end method

.method static synthetic access$0(Lcom/pubinfo/izhejiang/fragment/SsidFragment;)V
    .locals 0

    .prologue
    .line 1
    invoke-virtual {p0}, Lcom/pubinfo/izhejiang/fragment/SsidFragment;->showLoading()V

    return-void
.end method

.method static synthetic access$1(Lcom/pubinfo/izhejiang/fragment/SsidFragment;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/pubinfo/izhejiang/fragment/SsidFragment;->listHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$2(Lcom/pubinfo/izhejiang/fragment/SsidFragment;)Lcom/cat/list/XListView;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/pubinfo/izhejiang/fragment/SsidFragment;->wifiLView:Lcom/cat/list/XListView;

    return-object v0
.end method

.method static synthetic access$3(Lcom/pubinfo/izhejiang/fragment/SsidFragment;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 1
    invoke-virtual/range {p0 .. p5}, Lcom/pubinfo/izhejiang/fragment/SsidFragment;->getSsidInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$4(Lcom/pubinfo/izhejiang/fragment/SsidFragment;)V
    .locals 0

    .prologue
    .line 1
    invoke-virtual {p0}, Lcom/pubinfo/izhejiang/fragment/SsidFragment;->hideLoading()V

    return-void
.end method

.method static synthetic access$5(Lcom/pubinfo/izhejiang/fragment/SsidFragment;)V
    .locals 0

    .prologue
    .line 842
    invoke-direct {p0}, Lcom/pubinfo/izhejiang/fragment/SsidFragment;->onLoad()V

    return-void
.end method

.method static synthetic access$6(Lcom/pubinfo/izhejiang/fragment/SsidFragment;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lcom/pubinfo/izhejiang/fragment/SsidFragment;->showMsgToast(Ljava/lang/String;)V

    return-void
.end method

.method public static getNewList(Ljava/util/List;)Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/cat/data/SsidData;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/cat/data/SsidData;",
            ">;"
        }
    .end annotation

    .prologue
    .line 486
    .local p0, "li":Ljava/util/List;, "Ljava/util/List<Lcom/cat/data/SsidData;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 487
    .local v2, "list":Ljava/util/List;, "Ljava/util/List<Lcom/cat/data/SsidData;>;"
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 489
    .local v3, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Object;Ljava/lang/Object;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v7

    if-lt v0, v7, :cond_0

    .line 516
    return-object v2

    .line 490
    :cond_0
    new-instance v4, Lcom/cat/data/SsidData;

    invoke-direct {v4}, Lcom/cat/data/SsidData;-><init>()V

    .line 491
    .local v4, "sd":Lcom/cat/data/SsidData;
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    .end local v4    # "sd":Lcom/cat/data/SsidData;
    check-cast v4, Lcom/cat/data/SsidData;

    .line 495
    .restart local v4    # "sd":Lcom/cat/data/SsidData;
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/cat/data/SsidData;

    invoke-virtual {v7}, Lcom/cat/data/SsidData;->getSsid()Ljava/lang/String;

    move-result-object v5

    .line 498
    .local v5, "str":Ljava/lang/String;
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v7

    if-lez v7, :cond_4

    .line 499
    const/4 v6, 0x0

    .line 500
    .local v6, "tag":I
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_1
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v7

    if-lt v1, v7, :cond_2

    .line 505
    if-nez v6, :cond_1

    .line 507
    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 489
    .end local v1    # "j":I
    .end local v6    # "tag":I
    :cond_1
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 501
    .restart local v1    # "j":I
    .restart local v6    # "tag":I
    :cond_2
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/cat/data/SsidData;

    invoke-virtual {v7}, Lcom/cat/data/SsidData;->getSsid()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 502
    add-int/lit8 v6, v6, 0x1

    .line 500
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 511
    .end local v1    # "j":I
    .end local v6    # "tag":I
    :cond_4
    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2
.end method

.method private initialHandler()V
    .locals 1

    .prologue
    .line 130
    new-instance v0, Lcom/pubinfo/izhejiang/fragment/SsidFragment$2;

    invoke-direct {v0, p0}, Lcom/pubinfo/izhejiang/fragment/SsidFragment$2;-><init>(Lcom/pubinfo/izhejiang/fragment/SsidFragment;)V

    iput-object v0, p0, Lcom/pubinfo/izhejiang/fragment/SsidFragment;->listHandler:Landroid/os/Handler;

    .line 286
    return-void
.end method

.method private onLoad()V
    .locals 2

    .prologue
    .line 843
    iget-object v0, p0, Lcom/pubinfo/izhejiang/fragment/SsidFragment;->wifiLView:Lcom/cat/list/XListView;

    invoke-virtual {v0}, Lcom/cat/list/XListView;->stopRefresh()V

    .line 844
    iget-object v0, p0, Lcom/pubinfo/izhejiang/fragment/SsidFragment;->wifiLView:Lcom/cat/list/XListView;

    const-string v1, "\u521a\u521a"

    invoke-virtual {v0, v1}, Lcom/cat/list/XListView;->setRefreshTime(Ljava/lang/String;)V

    .line 845
    return-void
.end method


# virtual methods
.method public checkPassword(Ljava/lang/String;)I
    .locals 1
    .param p1, "capabilities"    # Ljava/lang/String;

    .prologue
    .line 469
    const-string v0, "WPA"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "WEP"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 470
    :cond_0
    const/4 v0, 0x1

    .line 473
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public doSsidInfoErr(Ljava/lang/String;)V
    .locals 2
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 928
    iget-object v0, p0, Lcom/pubinfo/izhejiang/fragment/SsidFragment;->listHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 929
    return-void
.end method

.method public doSsidInfoSucc(Ljava/lang/String;)V
    .locals 4
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 877
    if-eqz p1, :cond_1

    .line 880
    :try_start_0
    invoke-static {p1}, Lcom/cat/parase/SsidInfoParser;->Ssidinfoparaser(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 881
    .local v1, "result":Ljava/lang/Object;
    const-string v2, "OK"

    invoke-virtual {p1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 882
    invoke-static {}, Lcom/cat/data/ComData;->getInstance()Lcom/cat/data/ComData;

    move-result-object v2

    check-cast v1, Ljava/util/List;

    .end local v1    # "result":Ljava/lang/Object;
    invoke-virtual {v2, v1}, Lcom/cat/data/ComData;->setpError(Ljava/util/List;)V

    .line 883
    iget-object v2, p0, Lcom/pubinfo/izhejiang/fragment/SsidFragment;->listHandler:Landroid/os/Handler;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 898
    :goto_0
    return-void

    .line 886
    .restart local v1    # "result":Ljava/lang/Object;
    :cond_0
    invoke-static {}, Lcom/cat/data/ComData;->getInstance()Lcom/cat/data/ComData;

    move-result-object v2

    check-cast v1, Ljava/util/List;

    .end local v1    # "result":Ljava/lang/Object;
    invoke-virtual {v2, v1}, Lcom/cat/data/ComData;->setSsidData(Ljava/util/List;)V

    .line 887
    iget-object v2, p0, Lcom/pubinfo/izhejiang/fragment/SsidFragment;->listHandler:Landroid/os/Handler;

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 890
    :catch_0
    move-exception v0

    .line 891
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {p0}, Lcom/pubinfo/izhejiang/fragment/SsidFragment;->hideLoading()V

    .line 892
    iget-object v2, p0, Lcom/pubinfo/izhejiang/fragment/SsidFragment;->listHandler:Landroid/os/Handler;

    const/4 v3, 0x6

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 896
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_1
    iget-object v2, p0, Lcom/pubinfo/izhejiang/fragment/SsidFragment;->listHandler:Landroid/os/Handler;

    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0
.end method

.method public getLocalMacAddress()Ljava/lang/String;
    .locals 3

    .prologue
    .line 834
    iget-object v1, p0, Lcom/pubinfo/izhejiang/fragment/SsidFragment;->wifiMgr:Landroid/net/wifi/WifiManager;

    if-nez v1, :cond_0

    .line 835
    invoke-virtual {p0}, Lcom/pubinfo/izhejiang/fragment/SsidFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    .line 836
    const-string v2, "wifi"

    .line 835
    invoke-virtual {v1, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/WifiManager;

    iput-object v1, p0, Lcom/pubinfo/izhejiang/fragment/SsidFragment;->wifiMgr:Landroid/net/wifi/WifiManager;

    .line 838
    :cond_0
    iget-object v1, p0, Lcom/pubinfo/izhejiang/fragment/SsidFragment;->wifiMgr:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v0

    .line 839
    .local v0, "info":Landroid/net/wifi/WifiInfo;
    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getMacAddress()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 4
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    const/4 v3, 0x0

    .line 571
    const/4 v1, 0x2

    if-ne p1, v1, :cond_0

    .line 572
    if-eqz p3, :cond_2

    .line 573
    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "username"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/pubinfo/izhejiang/fragment/SsidFragment;->username:Ljava/lang/String;

    .line 581
    :cond_0
    const/4 v1, 0x3

    if-ne p1, v1, :cond_1

    .line 582
    invoke-virtual {p0}, Lcom/pubinfo/izhejiang/fragment/SsidFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    .line 583
    const-string v2, "LoginSucess"

    .line 582
    invoke-virtual {v1, v2, v3}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 584
    .local v0, "sharedata":Landroid/content/SharedPreferences;
    const-string v1, "username"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/pubinfo/izhejiang/fragment/SsidFragment;->username:Ljava/lang/String;

    .line 585
    iget-object v1, p0, Lcom/pubinfo/izhejiang/fragment/SsidFragment;->wifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 586
    invoke-virtual {p0}, Lcom/pubinfo/izhejiang/fragment/SsidFragment;->getWiFi()V

    .line 589
    .end local v0    # "sharedata":Landroid/content/SharedPreferences;
    :cond_1
    invoke-super {p0, p1, p2, p3}, Lcom/pubinfo/izhejiang/controller/WifiListFun;->onActivityResult(IILandroid/content/Intent;)V

    .line 590
    :goto_0
    return-void

    .line 575
    :cond_2
    invoke-virtual {p0}, Lcom/pubinfo/izhejiang/fragment/SsidFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    .line 576
    const-string v2, "LoginSucess"

    invoke-virtual {v1, v2, v3}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 577
    .restart local v0    # "sharedata":Landroid/content/SharedPreferences;
    const-string v1, "username"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/pubinfo/izhejiang/fragment/SsidFragment;->username:Ljava/lang/String;

    goto :goto_0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 7
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 74
    const v2, 0x7f03001e

    invoke-virtual {p1, v2, p2, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 75
    .local v1, "view":Landroid/view/View;
    invoke-virtual {p0}, Lcom/pubinfo/izhejiang/fragment/SsidFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/4 v3, -0x3

    invoke-virtual {v2, v3}, Landroid/view/Window;->setFormat(I)V

    .line 76
    const v2, 0x7f0a0029

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, p0, Lcom/pubinfo/izhejiang/fragment/SsidFragment;->ll_pageInnerLoading:Landroid/widget/LinearLayout;

    .line 77
    iget-object v2, p0, Lcom/pubinfo/izhejiang/fragment/SsidFragment;->ll_pageInnerLoading:Landroid/widget/LinearLayout;

    .line 78
    const v3, 0x7f0a00a4

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 77
    iput-object v2, p0, Lcom/pubinfo/izhejiang/fragment/SsidFragment;->iv_pageInnerLoading:Landroid/widget/ImageView;

    .line 79
    iget-object v2, p0, Lcom/pubinfo/izhejiang/fragment/SsidFragment;->iv_pageInnerLoading:Landroid/widget/ImageView;

    invoke-virtual {v2, v4, v4}, Landroid/widget/ImageView;->measure(II)V

    .line 80
    iget-object v2, p0, Lcom/pubinfo/izhejiang/fragment/SsidFragment;->iv_pageInnerLoading:Landroid/widget/ImageView;

    .line 81
    invoke-virtual {v2}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    check-cast v2, Landroid/graphics/drawable/AnimationDrawable;

    .line 80
    iput-object v2, p0, Lcom/pubinfo/izhejiang/fragment/SsidFragment;->msInnerLoadingAnim:Landroid/graphics/drawable/AnimationDrawable;

    .line 83
    const v2, 0x7f0a00a0

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/pubinfo/izhejiang/fragment/SsidFragment;->iv_wifi:Landroid/widget/ImageView;

    .line 84
    iget-object v2, p0, Lcom/pubinfo/izhejiang/fragment/SsidFragment;->iv_wifi:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/pubinfo/izhejiang/fragment/SsidFragment;->onClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 86
    const v2, 0x7f0a00a1

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, p0, Lcom/pubinfo/izhejiang/fragment/SsidFragment;->Layout_sign:Landroid/widget/LinearLayout;

    .line 87
    const v2, 0x7f0a00a2

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, p0, Lcom/pubinfo/izhejiang/fragment/SsidFragment;->Layout_near:Landroid/widget/LinearLayout;

    .line 88
    const v2, 0x7f0a00a3

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, p0, Lcom/pubinfo/izhejiang/fragment/SsidFragment;->Layout_message:Landroid/widget/LinearLayout;

    .line 89
    const v2, 0x7f0a0030

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, p0, Lcom/pubinfo/izhejiang/fragment/SsidFragment;->Layout_share:Landroid/widget/LinearLayout;

    .line 90
    iget-object v2, p0, Lcom/pubinfo/izhejiang/fragment/SsidFragment;->Layout_sign:Landroid/widget/LinearLayout;

    iget-object v3, p0, Lcom/pubinfo/izhejiang/fragment/SsidFragment;->onClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 91
    iget-object v2, p0, Lcom/pubinfo/izhejiang/fragment/SsidFragment;->Layout_near:Landroid/widget/LinearLayout;

    iget-object v3, p0, Lcom/pubinfo/izhejiang/fragment/SsidFragment;->onClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 92
    iget-object v2, p0, Lcom/pubinfo/izhejiang/fragment/SsidFragment;->Layout_message:Landroid/widget/LinearLayout;

    iget-object v3, p0, Lcom/pubinfo/izhejiang/fragment/SsidFragment;->onClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 93
    iget-object v2, p0, Lcom/pubinfo/izhejiang/fragment/SsidFragment;->Layout_share:Landroid/widget/LinearLayout;

    iget-object v3, p0, Lcom/pubinfo/izhejiang/fragment/SsidFragment;->onClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 94
    invoke-virtual {p0}, Lcom/pubinfo/izhejiang/fragment/SsidFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    .line 95
    const-string v3, "wifi"

    .line 94
    invoke-virtual {v2, v3}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/WifiManager;

    iput-object v2, p0, Lcom/pubinfo/izhejiang/fragment/SsidFragment;->wifiManager:Landroid/net/wifi/WifiManager;

    .line 97
    invoke-virtual {p0}, Lcom/pubinfo/izhejiang/fragment/SsidFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    .line 98
    const-string v3, "LoginSucess"

    .line 97
    invoke-virtual {v2, v3, v4}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 99
    .local v0, "sharedata":Landroid/content/SharedPreferences;
    const-string v2, "username"

    const-string v3, ""

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/pubinfo/izhejiang/fragment/SsidFragment;->username:Ljava/lang/String;

    .line 101
    const v2, 0x7f0a00a6

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/cat/list/XListView;

    iput-object v2, p0, Lcom/pubinfo/izhejiang/fragment/SsidFragment;->wifiLView:Lcom/cat/list/XListView;

    .line 102
    iget-object v2, p0, Lcom/pubinfo/izhejiang/fragment/SsidFragment;->wifiLView:Lcom/cat/list/XListView;

    invoke-virtual {v2, v5}, Lcom/cat/list/XListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 103
    iget-object v2, p0, Lcom/pubinfo/izhejiang/fragment/SsidFragment;->wifiLView:Lcom/cat/list/XListView;

    invoke-virtual {v2, v4}, Lcom/cat/list/XListView;->setCacheColorHint(I)V

    .line 104
    iget-object v2, p0, Lcom/pubinfo/izhejiang/fragment/SsidFragment;->wifiLView:Lcom/cat/list/XListView;

    invoke-virtual {v2, v6}, Lcom/cat/list/XListView;->setPullLoadEnable(Z)V

    .line 105
    iget-object v2, p0, Lcom/pubinfo/izhejiang/fragment/SsidFragment;->wifiLView:Lcom/cat/list/XListView;

    invoke-virtual {v2, p0}, Lcom/cat/list/XListView;->setXListViewListener(Lcom/cat/list/XListView$IXListViewListener;)V

    .line 106
    invoke-direct {p0}, Lcom/pubinfo/izhejiang/fragment/SsidFragment;->initialHandler()V

    .line 109
    invoke-virtual {p0}, Lcom/pubinfo/izhejiang/fragment/SsidFragment;->isAdded()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 110
    iget-object v2, p0, Lcom/pubinfo/izhejiang/fragment/SsidFragment;->wifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v2}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 112
    invoke-virtual {p0}, Lcom/pubinfo/izhejiang/fragment/SsidFragment;->showLoading()V

    .line 113
    iget-object v2, p0, Lcom/pubinfo/izhejiang/fragment/SsidFragment;->iv_wifi:Landroid/widget/ImageView;

    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 114
    iget-object v2, p0, Lcom/pubinfo/izhejiang/fragment/SsidFragment;->iv_wifi:Landroid/widget/ImageView;

    const v3, 0x7f02013a

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 115
    invoke-virtual {p0}, Lcom/pubinfo/izhejiang/fragment/SsidFragment;->getWiFi()V

    .line 116
    iput-boolean v6, p0, Lcom/pubinfo/izhejiang/fragment/SsidFragment;->wifibtn:Z

    .line 126
    :cond_0
    :goto_0
    return-object v1

    .line 118
    :cond_1
    invoke-virtual {p0}, Lcom/pubinfo/izhejiang/fragment/SsidFragment;->hideLoading()V

    .line 119
    iget-object v2, p0, Lcom/pubinfo/izhejiang/fragment/SsidFragment;->iv_wifi:Landroid/widget/ImageView;

    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 120
    iget-object v2, p0, Lcom/pubinfo/izhejiang/fragment/SsidFragment;->iv_wifi:Landroid/widget/ImageView;

    const v3, 0x7f020137

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 121
    iput-boolean v4, p0, Lcom/pubinfo/izhejiang/fragment/SsidFragment;->wifibtn:Z

    .line 122
    const v2, 0x7f06002f

    invoke-virtual {p0, v2}, Lcom/pubinfo/izhejiang/fragment/SsidFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/pubinfo/izhejiang/fragment/SsidFragment;->showMsgToast(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 921
    invoke-super {p0}, Lcom/pubinfo/izhejiang/controller/WifiListFun;->onPause()V

    .line 923
    return-void
.end method

.method public onRefresh()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 849
    iget-boolean v0, p0, Lcom/pubinfo/izhejiang/fragment/SsidFragment;->tag:Z

    if-eqz v0, :cond_1

    .line 850
    iget-object v0, p0, Lcom/pubinfo/izhejiang/fragment/SsidFragment;->wifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 851
    invoke-virtual {p0}, Lcom/pubinfo/izhejiang/fragment/SsidFragment;->getWiFi()V

    .line 852
    iput-boolean v2, p0, Lcom/pubinfo/izhejiang/fragment/SsidFragment;->tag:Z

    .line 872
    :goto_0
    return-void

    .line 854
    :cond_0
    invoke-virtual {p0}, Lcom/pubinfo/izhejiang/fragment/SsidFragment;->hideLoading()V

    .line 855
    iget-object v0, p0, Lcom/pubinfo/izhejiang/fragment/SsidFragment;->iv_wifi:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 856
    iget-object v0, p0, Lcom/pubinfo/izhejiang/fragment/SsidFragment;->iv_wifi:Landroid/widget/ImageView;

    const v1, 0x7f020137

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 857
    iput-boolean v2, p0, Lcom/pubinfo/izhejiang/fragment/SsidFragment;->wifibtn:Z

    .line 858
    const v0, 0x7f06002f

    invoke-virtual {p0, v0}, Lcom/pubinfo/izhejiang/fragment/SsidFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/pubinfo/izhejiang/fragment/SsidFragment;->showMsgToast(Ljava/lang/String;)V

    .line 859
    invoke-direct {p0}, Lcom/pubinfo/izhejiang/fragment/SsidFragment;->onLoad()V

    goto :goto_0

    .line 862
    :cond_1
    invoke-direct {p0}, Lcom/pubinfo/izhejiang/fragment/SsidFragment;->onLoad()V

    goto :goto_0
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 902
    invoke-super {p0}, Lcom/pubinfo/izhejiang/controller/WifiListFun;->onResume()V

    .line 917
    return-void
.end method

.method public setWifiListView()V
    .locals 2

    .prologue
    .line 561
    invoke-virtual {p0}, Lcom/pubinfo/izhejiang/fragment/SsidFragment;->getConnectedSSID()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/pubinfo/izhejiang/fragment/SsidFragment;->ssidstring:Ljava/lang/String;

    .line 562
    invoke-virtual {p0}, Lcom/pubinfo/izhejiang/fragment/SsidFragment;->getConnectedWifiMac()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/pubinfo/izhejiang/fragment/SsidFragment;->wifimac:Ljava/lang/String;

    .line 564
    invoke-static {}, Lcom/pubinfo/izhejiang/fragment/SsidFragment;->getTianyiWifi()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/pubinfo/izhejiang/fragment/SsidFragment;->getTianyiWifi()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 565
    iget-object v0, p0, Lcom/pubinfo/izhejiang/fragment/SsidFragment;->listHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 567
    :cond_0
    return-void
.end method

.method public showWifiBtn()V
    .locals 2

    .prologue
    .line 552
    invoke-virtual {p0}, Lcom/pubinfo/izhejiang/fragment/SsidFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Lcom/pubinfo/izhejiang/fragment/SsidFragment$3;

    invoke-direct {v1, p0}, Lcom/pubinfo/izhejiang/fragment/SsidFragment$3;-><init>(Lcom/pubinfo/izhejiang/fragment/SsidFragment;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 557
    return-void
.end method
