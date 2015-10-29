.class Lcom/pubinfo/izhejiang/fragment/AroundFragment$3;
.super Ljava/lang/Object;
.source "AroundFragment.java"

# interfaces
.implements Lcom/baidu/mapapi/map/BaiduMap$OnMapClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pubinfo/izhejiang/fragment/AroundFragment;->initMap()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pubinfo/izhejiang/fragment/AroundFragment;


# direct methods
.method constructor <init>(Lcom/pubinfo/izhejiang/fragment/AroundFragment;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/pubinfo/izhejiang/fragment/AroundFragment$3;->this$0:Lcom/pubinfo/izhejiang/fragment/AroundFragment;

    .line 348
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMapClick(Lcom/baidu/mapapi/model/LatLng;)V
    .locals 1
    .param p1, "arg0"    # Lcom/baidu/mapapi/model/LatLng;

    .prologue
    .line 365
    iget-object v0, p0, Lcom/pubinfo/izhejiang/fragment/AroundFragment$3;->this$0:Lcom/pubinfo/izhejiang/fragment/AroundFragment;

    # getter for: Lcom/pubinfo/izhejiang/fragment/AroundFragment;->mBaiduMap:Lcom/baidu/mapapi/map/BaiduMap;
    invoke-static {v0}, Lcom/pubinfo/izhejiang/fragment/AroundFragment;->access$2(Lcom/pubinfo/izhejiang/fragment/AroundFragment;)Lcom/baidu/mapapi/map/BaiduMap;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/mapapi/map/BaiduMap;->hideInfoWindow()V

    .line 366
    return-void
.end method

.method public onMapPoiClick(Lcom/baidu/mapapi/map/MapPoi;)Z
    .locals 1
    .param p1, "arg0"    # Lcom/baidu/mapapi/map/MapPoi;

    .prologue
    .line 355
    iget-object v0, p0, Lcom/pubinfo/izhejiang/fragment/AroundFragment$3;->this$0:Lcom/pubinfo/izhejiang/fragment/AroundFragment;

    # getter for: Lcom/pubinfo/izhejiang/fragment/AroundFragment;->mBaiduMap:Lcom/baidu/mapapi/map/BaiduMap;
    invoke-static {v0}, Lcom/pubinfo/izhejiang/fragment/AroundFragment;->access$2(Lcom/pubinfo/izhejiang/fragment/AroundFragment;)Lcom/baidu/mapapi/map/BaiduMap;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/mapapi/map/BaiduMap;->hideInfoWindow()V

    .line 356
    const/4 v0, 0x0

    return v0
.end method
