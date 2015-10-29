.class public abstract Lcom/pubinfo/izhejiang/controller/WifiListFun;
.super Lcom/pubinfo/izhejiang/ThinkAndroidBaseFragment;
.source "WifiListFun.java"

# interfaces
.implements Lcom/cat/protocol/DoSsidInfoInterface;


# static fields
.field private static tianyiWifi:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/net/wifi/ScanResult;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public ac_name:Ljava/lang/String;

.field public accountid:Ljava/lang/String;

.field public appauth_type:Ljava/lang/String;

.field final c:Ljava/util/Calendar;

.field data:Ljava/lang/String;

.field public dev_id:Ljava/lang/String;

.field public handler:Landroid/os/Handler;

.field isClicked:Z

.field protected iv_pageInnerLoading:Landroid/widget/ImageView;

.field protected ll_pageInnerLoading:Landroid/widget/LinearLayout;

.field public logoffUrl:Ljava/lang/String;

.field public message:Ljava/lang/String;

.field protected msInnerLoadingAnim:Landroid/graphics/drawable/AnimationDrawable;

.field public platform_code:Ljava/lang/String;

.field public portal_url:Ljava/lang/String;

.field public result:Ljava/lang/String;

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

.field public third_token:Ljava/lang/String;

.field public token:Ljava/lang/String;

.field protected wifiLView:Lcom/cat/list/XListView;

.field private wifiManager:Landroid/net/wifi/WifiManager;

.field public wifi_isClicked:Z

.field private wificonf:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/net/wifi/WifiConfiguration;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 68
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/pubinfo/izhejiang/controller/WifiListFun;->tianyiWifi:Ljava/util/List;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 37
    invoke-direct {p0}, Lcom/pubinfo/izhejiang/ThinkAndroidBaseFragment;-><init>()V

    .line 78
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/pubinfo/izhejiang/controller/WifiListFun;->isClicked:Z

    .line 88
    iput-boolean v2, p0, Lcom/pubinfo/izhejiang/controller/WifiListFun;->wifi_isClicked:Z

    .line 91
    iput-object v1, p0, Lcom/pubinfo/izhejiang/controller/WifiListFun;->ll_pageInnerLoading:Landroid/widget/LinearLayout;

    .line 92
    iput-object v1, p0, Lcom/pubinfo/izhejiang/controller/WifiListFun;->iv_pageInnerLoading:Landroid/widget/ImageView;

    .line 93
    iput-object v1, p0, Lcom/pubinfo/izhejiang/controller/WifiListFun;->msInnerLoadingAnim:Landroid/graphics/drawable/AnimationDrawable;

    .line 95
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Lcom/pubinfo/izhejiang/controller/WifiListFun;->c:Ljava/util/Calendar;

    .line 96
    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/pubinfo/izhejiang/controller/WifiListFun;->c:Ljava/util/Calendar;

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/pubinfo/izhejiang/controller/WifiListFun;->c:Ljava/util/Calendar;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 97
    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/pubinfo/izhejiang/controller/WifiListFun;->c:Ljava/util/Calendar;

    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/pubinfo/izhejiang/controller/WifiListFun;->data:Ljava/lang/String;

    .line 156
    new-instance v0, Lcom/pubinfo/izhejiang/controller/WifiListFun$1;

    invoke-direct {v0, p0}, Lcom/pubinfo/izhejiang/controller/WifiListFun$1;-><init>(Lcom/pubinfo/izhejiang/controller/WifiListFun;)V

    iput-object v0, p0, Lcom/pubinfo/izhejiang/controller/WifiListFun;->handler:Landroid/os/Handler;

    .line 37
    return-void
.end method

.method static synthetic access$0(Lcom/pubinfo/izhejiang/controller/WifiListFun;)Landroid/net/wifi/WifiManager;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/pubinfo/izhejiang/controller/WifiListFun;->wifiManager:Landroid/net/wifi/WifiManager;

    return-object v0
.end method

.method public static getTianyiWifi()Ljava/util/List;
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
    .line 255
    sget-object v0, Lcom/pubinfo/izhejiang/controller/WifiListFun;->tianyiWifi:Ljava/util/List;

    return-object v0
.end method


# virtual methods
.method public getConnectedSSID()Ljava/lang/String;
    .locals 2

    .prologue
    .line 268
    iget-object v1, p0, Lcom/pubinfo/izhejiang/controller/WifiListFun;->wifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v0

    .line 269
    .local v0, "wifiInfo":Landroid/net/wifi/WifiInfo;
    if-eqz v0, :cond_0

    .line 270
    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v1

    .line 272
    :goto_0
    return-object v1

    :cond_0
    const-string v1, ""

    goto :goto_0
.end method

.method public getConnectedWifiMac()Ljava/lang/String;
    .locals 2

    .prologue
    .line 259
    iget-object v1, p0, Lcom/pubinfo/izhejiang/controller/WifiListFun;->wifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v0

    .line 260
    .local v0, "wifiInfo":Landroid/net/wifi/WifiInfo;
    if-eqz v0, :cond_0

    .line 261
    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    move-result-object v1

    .line 263
    :goto_0
    return-object v1

    :cond_0
    const-string v1, ""

    goto :goto_0
.end method

.method protected getSsidInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V
    .locals 7
    .param p1, "mobile"    # Ljava/lang/String;
    .param p2, "macs"    # Ljava/lang/String;
    .param p3, "province"    # Ljava/lang/String;
    .param p4, "city"    # Ljava/lang/String;
    .param p5, "context"    # Landroid/content/Context;

    .prologue
    .line 152
    invoke-virtual {p0}, Lcom/pubinfo/izhejiang/controller/WifiListFun;->diffTime()V

    .line 153
    new-instance v0, Lcom/cat/impl/DoSsidInfoConn;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p0

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/cat/impl/DoSsidInfoConn;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/cat/protocol/DoSsidInfoInterface;Landroid/content/Context;)V

    .line 154
    return-void
.end method

.method public getWiFi()V
    .locals 3

    .prologue
    .line 105
    invoke-virtual {p0}, Lcom/pubinfo/izhejiang/controller/WifiListFun;->getActivity()Landroid/app/Activity;

    move-result-object v1

    .line 106
    const-string v2, "wifi"

    .line 105
    invoke-virtual {v1, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/WifiManager;

    iput-object v1, p0, Lcom/pubinfo/izhejiang/controller/WifiListFun;->wifiManager:Landroid/net/wifi/WifiManager;

    .line 108
    iget-object v1, p0, Lcom/pubinfo/izhejiang/controller/WifiListFun;->wifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 109
    sget-object v1, Lcom/pubinfo/izhejiang/controller/WifiListFun;->tianyiWifi:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 110
    iget-object v1, p0, Lcom/pubinfo/izhejiang/controller/WifiListFun;->wifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->startScan()Z

    .line 111
    iget-object v1, p0, Lcom/pubinfo/izhejiang/controller/WifiListFun;->wifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getConfiguredNetworks()Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/pubinfo/izhejiang/controller/WifiListFun;->wificonf:Ljava/util/List;

    .line 112
    iget-object v1, p0, Lcom/pubinfo/izhejiang/controller/WifiListFun;->wifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getScanResults()Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/pubinfo/izhejiang/controller/WifiListFun;->results:Ljava/util/List;

    .line 113
    iget-object v1, p0, Lcom/pubinfo/izhejiang/controller/WifiListFun;->results:Ljava/util/List;

    if-eqz v1, :cond_0

    .line 114
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/pubinfo/izhejiang/controller/WifiListFun;->results:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lt v0, v1, :cond_1

    .line 118
    .end local v0    # "i":I
    :cond_0
    iget-object v1, p0, Lcom/pubinfo/izhejiang/controller/WifiListFun;->handler:Landroid/os/Handler;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 123
    :goto_1
    return-void

    .line 115
    .restart local v0    # "i":I
    :cond_1
    sget-object v2, Lcom/pubinfo/izhejiang/controller/WifiListFun;->tianyiWifi:Ljava/util/List;

    iget-object v1, p0, Lcom/pubinfo/izhejiang/controller/WifiListFun;->results:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/ScanResult;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 114
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 120
    .end local v0    # "i":I
    :cond_2
    invoke-virtual {p0}, Lcom/pubinfo/izhejiang/controller/WifiListFun;->hideLoading()V

    .line 121
    const v1, 0x7f06002f

    invoke-virtual {p0, v1}, Lcom/pubinfo/izhejiang/controller/WifiListFun;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/pubinfo/izhejiang/controller/WifiListFun;->showMsgToast(Ljava/lang/String;)V

    goto :goto_1
.end method

.method protected hideLoading()V
    .locals 2

    .prologue
    .line 141
    iget-object v0, p0, Lcom/pubinfo/izhejiang/controller/WifiListFun;->wifiLView:Lcom/cat/list/XListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/cat/list/XListView;->setVisibility(I)V

    .line 142
    iget-object v0, p0, Lcom/pubinfo/izhejiang/controller/WifiListFun;->ll_pageInnerLoading:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 143
    iget-object v0, p0, Lcom/pubinfo/izhejiang/controller/WifiListFun;->ll_pageInnerLoading:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 145
    :cond_0
    return-void
.end method

.method public abstract setWifiListView()V
.end method

.method protected showLoading()V
    .locals 2

    .prologue
    .line 130
    iget-object v0, p0, Lcom/pubinfo/izhejiang/controller/WifiListFun;->wifiLView:Lcom/cat/list/XListView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/cat/list/XListView;->setVisibility(I)V

    .line 131
    iget-object v0, p0, Lcom/pubinfo/izhejiang/controller/WifiListFun;->ll_pageInnerLoading:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 132
    iget-object v0, p0, Lcom/pubinfo/izhejiang/controller/WifiListFun;->msInnerLoadingAnim:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 133
    iget-object v0, p0, Lcom/pubinfo/izhejiang/controller/WifiListFun;->msInnerLoadingAnim:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->stop()V

    .line 134
    iget-object v0, p0, Lcom/pubinfo/izhejiang/controller/WifiListFun;->msInnerLoadingAnim:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    .line 138
    :goto_0
    return-void

    .line 136
    :cond_0
    iget-object v0, p0, Lcom/pubinfo/izhejiang/controller/WifiListFun;->msInnerLoadingAnim:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    goto :goto_0
.end method

.method protected showMsgToast(Ljava/lang/String;)V
    .locals 2
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 126
    invoke-virtual {p0}, Lcom/pubinfo/izhejiang/controller/WifiListFun;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 127
    return-void
.end method

.method public abstract showWifiBtn()V
.end method
