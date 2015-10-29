.class public Lcom/pubinfo/wifi_core/core/data/ComData;
.super Ljava/lang/Object;
.source "ComData.java"


# static fields
.field private static instance:Lcom/pubinfo/wifi_core/core/data/ComData;


# instance fields
.field private endPointList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private startPointList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private tianyiWifi:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/net/wifi/ScanResult;",
            ">;"
        }
    .end annotation
.end field

.field private wifiInfoData:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/pubinfo/wifi_core/core/database/WifiInfoData;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 12
    const/4 v0, 0x0

    sput-object v0, Lcom/pubinfo/wifi_core/core/data/ComData;->instance:Lcom/pubinfo/wifi_core/core/data/ComData;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/pubinfo/wifi_core/core/data/ComData;->tianyiWifi:Ljava/util/List;

    .line 22
    return-void
.end method

.method public static getInstance()Lcom/pubinfo/wifi_core/core/data/ComData;
    .locals 1

    .prologue
    .line 15
    sget-object v0, Lcom/pubinfo/wifi_core/core/data/ComData;->instance:Lcom/pubinfo/wifi_core/core/data/ComData;

    if-nez v0, :cond_0

    .line 16
    new-instance v0, Lcom/pubinfo/wifi_core/core/data/ComData;

    invoke-direct {v0}, Lcom/pubinfo/wifi_core/core/data/ComData;-><init>()V

    sput-object v0, Lcom/pubinfo/wifi_core/core/data/ComData;->instance:Lcom/pubinfo/wifi_core/core/data/ComData;

    .line 18
    :cond_0
    sget-object v0, Lcom/pubinfo/wifi_core/core/data/ComData;->instance:Lcom/pubinfo/wifi_core/core/data/ComData;

    return-object v0
.end method


# virtual methods
.method public getEndPointList()Ljava/util/List;
    .locals 1
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
    .line 76
    iget-object v0, p0, Lcom/pubinfo/wifi_core/core/data/ComData;->endPointList:Ljava/util/List;

    return-object v0
.end method

.method public getStartPointList()Ljava/util/List;
    .locals 1
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
    .line 68
    iget-object v0, p0, Lcom/pubinfo/wifi_core/core/data/ComData;->startPointList:Ljava/util/List;

    return-object v0
.end method

.method public getTianyiWifi()Ljava/util/List;
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
    .line 38
    iget-object v0, p0, Lcom/pubinfo/wifi_core/core/data/ComData;->tianyiWifi:Ljava/util/List;

    return-object v0
.end method

.method public getWifiInfoData()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/pubinfo/wifi_core/core/database/WifiInfoData;",
            ">;"
        }
    .end annotation

    .prologue
    .line 49
    iget-object v0, p0, Lcom/pubinfo/wifi_core/core/data/ComData;->wifiInfoData:Ljava/util/List;

    return-object v0
.end method

.method public setEndPointList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 80
    .local p1, "endPointList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/pubinfo/wifi_core/core/data/ComData;->endPointList:Ljava/util/List;

    .line 81
    return-void
.end method

.method public setStartPointList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 72
    .local p1, "startPointList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/pubinfo/wifi_core/core/data/ComData;->startPointList:Ljava/util/List;

    .line 73
    return-void
.end method

.method public setTianyiWifi(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/net/wifi/ScanResult;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 42
    .local p1, "tianyiWifi":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/ScanResult;>;"
    iput-object p1, p0, Lcom/pubinfo/wifi_core/core/data/ComData;->tianyiWifi:Ljava/util/List;

    .line 43
    return-void
.end method

.method public setWifiInfoData(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/pubinfo/wifi_core/core/database/WifiInfoData;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 53
    .local p1, "wifiInfoData":Ljava/util/List;, "Ljava/util/List<Lcom/pubinfo/wifi_core/core/database/WifiInfoData;>;"
    iput-object p1, p0, Lcom/pubinfo/wifi_core/core/data/ComData;->wifiInfoData:Ljava/util/List;

    .line 54
    return-void
.end method
