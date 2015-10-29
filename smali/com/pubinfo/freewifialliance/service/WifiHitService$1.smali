.class Lcom/pubinfo/freewifialliance/service/WifiHitService$1;
.super Ljava/util/TimerTask;
.source "WifiHitService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pubinfo/freewifialliance/service/WifiHitService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pubinfo/freewifialliance/service/WifiHitService;


# direct methods
.method constructor <init>(Lcom/pubinfo/freewifialliance/service/WifiHitService;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/pubinfo/freewifialliance/service/WifiHitService$1;->this$0:Lcom/pubinfo/freewifialliance/service/WifiHitService;

    .line 35
    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .prologue
    .line 40
    iget-object v0, p0, Lcom/pubinfo/freewifialliance/service/WifiHitService$1;->this$0:Lcom/pubinfo/freewifialliance/service/WifiHitService;

    iget-object v1, p0, Lcom/pubinfo/freewifialliance/service/WifiHitService$1;->this$0:Lcom/pubinfo/freewifialliance/service/WifiHitService;

    # getter for: Lcom/pubinfo/freewifialliance/service/WifiHitService;->wifiManager:Landroid/net/wifi/WifiManager;
    invoke-static {v1}, Lcom/pubinfo/freewifialliance/service/WifiHitService;->access$0(Lcom/pubinfo/freewifialliance/service/WifiHitService;)Landroid/net/wifi/WifiManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/pubinfo/freewifialliance/service/WifiHitService;->access$1(Lcom/pubinfo/freewifialliance/service/WifiHitService;Ljava/lang/String;)V

    .line 41
    iget-object v0, p0, Lcom/pubinfo/freewifialliance/service/WifiHitService$1;->this$0:Lcom/pubinfo/freewifialliance/service/WifiHitService;

    invoke-static {v0}, Lcom/pubinfo/wifi_core/core/database/Database;->getInstance(Landroid/content/Context;)Lcom/pubinfo/wifi_core/core/database/Database;

    move-result-object v0

    invoke-virtual {v0}, Lcom/pubinfo/wifi_core/core/database/Database;->selectUserRow()V

    .line 42
    iget-object v0, p0, Lcom/pubinfo/freewifialliance/service/WifiHitService$1;->this$0:Lcom/pubinfo/freewifialliance/service/WifiHitService;

    # getter for: Lcom/pubinfo/freewifialliance/service/WifiHitService;->ssid:Ljava/lang/String;
    invoke-static {v0}, Lcom/pubinfo/freewifialliance/service/WifiHitService;->access$2(Lcom/pubinfo/freewifialliance/service/WifiHitService;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/pubinfo/freewifialliance/service/WifiHitService$1;->this$0:Lcom/pubinfo/freewifialliance/service/WifiHitService;

    # getter for: Lcom/pubinfo/freewifialliance/service/WifiHitService;->ssid:Ljava/lang/String;
    invoke-static {v0}, Lcom/pubinfo/freewifialliance/service/WifiHitService;->access$2(Lcom/pubinfo/freewifialliance/service/WifiHitService;)Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    if-eq v0, v1, :cond_0

    invoke-static {}, Lcom/pubinfo/wifi_core/core/data/ComData;->getInstance()Lcom/pubinfo/wifi_core/core/data/ComData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/pubinfo/wifi_core/core/data/ComData;->getWifiInfoData()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 43
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_0
    invoke-static {}, Lcom/pubinfo/wifi_core/core/data/ComData;->getInstance()Lcom/pubinfo/wifi_core/core/data/ComData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/pubinfo/wifi_core/core/data/ComData;->getWifiInfoData()Ljava/util/List;

    move-result-object v0

    .line 44
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 43
    if-lt v8, v0, :cond_1

    .line 58
    .end local v8    # "i":I
    :cond_0
    :goto_1
    return-void

    .line 45
    .restart local v8    # "i":I
    :cond_1
    iget-object v0, p0, Lcom/pubinfo/freewifialliance/service/WifiHitService$1;->this$0:Lcom/pubinfo/freewifialliance/service/WifiHitService;

    iget-object v1, p0, Lcom/pubinfo/freewifialliance/service/WifiHitService$1;->this$0:Lcom/pubinfo/freewifialliance/service/WifiHitService;

    # getter for: Lcom/pubinfo/freewifialliance/service/WifiHitService;->ssid:Ljava/lang/String;
    invoke-static {v1}, Lcom/pubinfo/freewifialliance/service/WifiHitService;->access$2(Lcom/pubinfo/freewifialliance/service/WifiHitService;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/pubinfo/freewifialliance/service/WifiHitService;->checkWifiType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 46
    invoke-static {}, Lcom/pubinfo/wifi_core/core/data/ComData;->getInstance()Lcom/pubinfo/wifi_core/core/data/ComData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/pubinfo/wifi_core/core/data/ComData;->getWifiInfoData()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/pubinfo/wifi_core/core/database/WifiInfoData;

    .line 47
    invoke-virtual {v0}, Lcom/pubinfo/wifi_core/core/database/WifiInfoData;->getType()Ljava/lang/String;

    move-result-object v0

    .line 45
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 47
    if-eqz v0, :cond_2

    .line 48
    invoke-static {}, Lcom/pubinfo/wifi_core/core/data/ComData;->getInstance()Lcom/pubinfo/wifi_core/core/data/ComData;

    move-result-object v0

    .line 49
    invoke-virtual {v0}, Lcom/pubinfo/wifi_core/core/data/ComData;->getWifiInfoData()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/pubinfo/wifi_core/core/database/WifiInfoData;

    .line 50
    .local v9, "wifiInfoData":Lcom/pubinfo/wifi_core/core/database/WifiInfoData;
    new-instance v0, Lcom/pubinfo/freewifialliance/protocol/impl/HeartHitConn;

    invoke-virtual {v9}, Lcom/pubinfo/wifi_core/core/database/WifiInfoData;->getPhone()Ljava/lang/String;

    move-result-object v1

    .line 51
    invoke-virtual {v9}, Lcom/pubinfo/wifi_core/core/database/WifiInfoData;->getKey()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/pubinfo/freewifialliance/service/WifiHitService$1;->this$0:Lcom/pubinfo/freewifialliance/service/WifiHitService;

    invoke-static {v3}, Lcom/pubinfo/wifi_core/core/util/FileManager;->getMacAddress(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    .line 52
    const/4 v4, 0x1

    iget-object v5, p0, Lcom/pubinfo/freewifialliance/service/WifiHitService$1;->this$0:Lcom/pubinfo/freewifialliance/service/WifiHitService;

    invoke-static {v5}, Lcom/pubinfo/wifi_core/core/util/FileManager;->getDevId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/pubinfo/freewifialliance/service/WifiHitService$1;->this$0:Lcom/pubinfo/freewifialliance/service/WifiHitService;

    # getter for: Lcom/pubinfo/freewifialliance/service/WifiHitService;->ssid:Ljava/lang/String;
    invoke-static {v6}, Lcom/pubinfo/freewifialliance/service/WifiHitService;->access$2(Lcom/pubinfo/freewifialliance/service/WifiHitService;)Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/pubinfo/freewifialliance/service/WifiHitService$1;->this$0:Lcom/pubinfo/freewifialliance/service/WifiHitService;

    .line 50
    invoke-direct/range {v0 .. v7}, Lcom/pubinfo/freewifialliance/protocol/impl/HeartHitConn;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Lcom/pubinfo/freewifialliance/protocol/HeartHitInterface;)V

    goto :goto_1

    .line 44
    .end local v9    # "wifiInfoData":Lcom/pubinfo/wifi_core/core/database/WifiInfoData;
    :cond_2
    add-int/lit8 v8, v8, 0x1

    goto :goto_0
.end method
