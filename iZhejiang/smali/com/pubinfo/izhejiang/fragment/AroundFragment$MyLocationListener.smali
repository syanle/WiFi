.class public Lcom/pubinfo/izhejiang/fragment/AroundFragment$MyLocationListener;
.super Ljava/lang/Object;
.source "AroundFragment.java"

# interfaces
.implements Lcom/baidu/location/BDLocationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pubinfo/izhejiang/fragment/AroundFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MyLocationListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pubinfo/izhejiang/fragment/AroundFragment;


# direct methods
.method public constructor <init>(Lcom/pubinfo/izhejiang/fragment/AroundFragment;)V
    .locals 0

    .prologue
    .line 736
    iput-object p1, p0, Lcom/pubinfo/izhejiang/fragment/AroundFragment$MyLocationListener;->this$0:Lcom/pubinfo/izhejiang/fragment/AroundFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceiveLocation(Lcom/baidu/location/BDLocation;)V
    .locals 13
    .param p1, "location"    # Lcom/baidu/location/BDLocation;

    .prologue
    const/4 v12, 0x1

    const/4 v11, 0x0

    .line 740
    new-instance v4, Ljava/lang/StringBuffer;

    const/16 v7, 0x100

    invoke-direct {v4, v7}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 741
    .local v4, "sb":Ljava/lang/StringBuffer;
    const-string v7, "time : "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 742
    invoke-virtual {p1}, Lcom/baidu/location/BDLocation;->getTime()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 743
    const-string v7, "\nerror code : "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 744
    invoke-virtual {p1}, Lcom/baidu/location/BDLocation;->getLocType()I

    move-result v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 745
    const-string v7, "\nlatitude : "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 746
    invoke-virtual {p1}, Lcom/baidu/location/BDLocation;->getLatitude()D

    move-result-wide v7

    invoke-virtual {v4, v7, v8}, Ljava/lang/StringBuffer;->append(D)Ljava/lang/StringBuffer;

    .line 747
    const-string v7, "\nlontitude : "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 748
    invoke-virtual {p1}, Lcom/baidu/location/BDLocation;->getLongitude()D

    move-result-wide v7

    invoke-virtual {v4, v7, v8}, Ljava/lang/StringBuffer;->append(D)Ljava/lang/StringBuffer;

    .line 749
    const-string v7, "\nradius : "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 750
    invoke-virtual {p1}, Lcom/baidu/location/BDLocation;->getRadius()F

    move-result v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuffer;->append(F)Ljava/lang/StringBuffer;

    .line 751
    invoke-virtual {p1}, Lcom/baidu/location/BDLocation;->getLocType()I

    move-result v7

    const/16 v8, 0x3d

    if-ne v7, v8, :cond_3

    .line 752
    iget-object v7, p0, Lcom/pubinfo/izhejiang/fragment/AroundFragment$MyLocationListener;->this$0:Lcom/pubinfo/izhejiang/fragment/AroundFragment;

    iget-object v7, v7, Lcom/pubinfo/izhejiang/fragment/AroundFragment;->mLocationClient:Lcom/baidu/location/LocationClient;

    invoke-virtual {v7}, Lcom/baidu/location/LocationClient;->stop()V

    .line 753
    const-string v7, "\nspeed : "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 754
    invoke-virtual {p1}, Lcom/baidu/location/BDLocation;->getSpeed()F

    move-result v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuffer;->append(F)Ljava/lang/StringBuffer;

    .line 755
    const-string v7, "\nsatellite : "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 756
    invoke-virtual {p1}, Lcom/baidu/location/BDLocation;->getSatelliteNumber()I

    move-result v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 757
    const-string v7, "\ndirection : "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 758
    const-string v7, "\naddr : "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 759
    invoke-virtual {p1}, Lcom/baidu/location/BDLocation;->getAddrStr()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 760
    invoke-virtual {p1}, Lcom/baidu/location/BDLocation;->getDirection()F

    move-result v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuffer;->append(F)Ljava/lang/StringBuffer;

    .line 768
    :cond_0
    :goto_0
    iget-object v7, p0, Lcom/pubinfo/izhejiang/fragment/AroundFragment$MyLocationListener;->this$0:Lcom/pubinfo/izhejiang/fragment/AroundFragment;

    invoke-virtual {v7}, Lcom/pubinfo/izhejiang/fragment/AroundFragment;->isAdded()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 769
    const/high16 v7, 0x41880000    # 17.0f

    invoke-static {v7}, Lcom/baidu/mapapi/map/MapStatusUpdateFactory;->zoomTo(F)Lcom/baidu/mapapi/map/MapStatusUpdate;

    move-result-object v3

    .line 770
    .local v3, "msu":Lcom/baidu/mapapi/map/MapStatusUpdate;
    iget-object v7, p0, Lcom/pubinfo/izhejiang/fragment/AroundFragment$MyLocationListener;->this$0:Lcom/pubinfo/izhejiang/fragment/AroundFragment;

    # getter for: Lcom/pubinfo/izhejiang/fragment/AroundFragment;->mBaiduMap:Lcom/baidu/mapapi/map/BaiduMap;
    invoke-static {v7}, Lcom/pubinfo/izhejiang/fragment/AroundFragment;->access$2(Lcom/pubinfo/izhejiang/fragment/AroundFragment;)Lcom/baidu/mapapi/map/BaiduMap;

    move-result-object v7

    invoke-virtual {v7, v3}, Lcom/baidu/mapapi/map/BaiduMap;->setMapStatus(Lcom/baidu/mapapi/map/MapStatusUpdate;)V

    .line 771
    new-instance v7, Lcom/baidu/mapapi/map/MyLocationData$Builder;

    invoke-direct {v7}, Lcom/baidu/mapapi/map/MyLocationData$Builder;-><init>()V

    .line 772
    invoke-virtual {p1}, Lcom/baidu/location/BDLocation;->getRadius()F

    move-result v8

    invoke-virtual {v7, v8}, Lcom/baidu/mapapi/map/MyLocationData$Builder;->accuracy(F)Lcom/baidu/mapapi/map/MyLocationData$Builder;

    move-result-object v7

    .line 774
    const/high16 v8, 0x42c80000    # 100.0f

    invoke-virtual {v7, v8}, Lcom/baidu/mapapi/map/MyLocationData$Builder;->direction(F)Lcom/baidu/mapapi/map/MyLocationData$Builder;

    move-result-object v7

    invoke-virtual {p1}, Lcom/baidu/location/BDLocation;->getLatitude()D

    move-result-wide v8

    invoke-virtual {v7, v8, v9}, Lcom/baidu/mapapi/map/MyLocationData$Builder;->latitude(D)Lcom/baidu/mapapi/map/MyLocationData$Builder;

    move-result-object v7

    .line 775
    invoke-virtual {p1}, Lcom/baidu/location/BDLocation;->getLongitude()D

    move-result-wide v8

    invoke-virtual {v7, v8, v9}, Lcom/baidu/mapapi/map/MyLocationData$Builder;->longitude(D)Lcom/baidu/mapapi/map/MyLocationData$Builder;

    move-result-object v7

    invoke-virtual {v7}, Lcom/baidu/mapapi/map/MyLocationData$Builder;->build()Lcom/baidu/mapapi/map/MyLocationData;

    move-result-object v2

    .line 776
    .local v2, "locData":Lcom/baidu/mapapi/map/MyLocationData;
    iget-object v7, p0, Lcom/pubinfo/izhejiang/fragment/AroundFragment$MyLocationListener;->this$0:Lcom/pubinfo/izhejiang/fragment/AroundFragment;

    # getter for: Lcom/pubinfo/izhejiang/fragment/AroundFragment;->mBaiduMap:Lcom/baidu/mapapi/map/BaiduMap;
    invoke-static {v7}, Lcom/pubinfo/izhejiang/fragment/AroundFragment;->access$2(Lcom/pubinfo/izhejiang/fragment/AroundFragment;)Lcom/baidu/mapapi/map/BaiduMap;

    move-result-object v7

    invoke-virtual {v7, v2}, Lcom/baidu/mapapi/map/BaiduMap;->setMyLocationData(Lcom/baidu/mapapi/map/MyLocationData;)V

    .line 779
    iget-object v7, p0, Lcom/pubinfo/izhejiang/fragment/AroundFragment$MyLocationListener;->this$0:Lcom/pubinfo/izhejiang/fragment/AroundFragment;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/baidu/location/BDLocation;->getLatitude()D

    move-result-wide v9

    invoke-static {v9, v10}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    iput-object v8, v7, Lcom/pubinfo/izhejiang/fragment/AroundFragment;->lat:Ljava/lang/String;

    .line 780
    iget-object v7, p0, Lcom/pubinfo/izhejiang/fragment/AroundFragment$MyLocationListener;->this$0:Lcom/pubinfo/izhejiang/fragment/AroundFragment;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/baidu/location/BDLocation;->getLongitude()D

    move-result-wide v9

    invoke-static {v9, v10}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    iput-object v8, v7, Lcom/pubinfo/izhejiang/fragment/AroundFragment;->lon:Ljava/lang/String;

    .line 781
    iget-object v7, p0, Lcom/pubinfo/izhejiang/fragment/AroundFragment$MyLocationListener;->this$0:Lcom/pubinfo/izhejiang/fragment/AroundFragment;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/baidu/location/BDLocation;->getLatitude()D

    move-result-wide v9

    invoke-static {v9, v10}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v9, ","

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p1}, Lcom/baidu/location/BDLocation;->getLongitude()D

    move-result-wide v9

    invoke-virtual {v8, v9, v10}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    iput-object v8, v7, Lcom/pubinfo/izhejiang/fragment/AroundFragment;->latlon:Ljava/lang/String;

    .line 782
    invoke-virtual {p1}, Lcom/baidu/location/BDLocation;->getAddrStr()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_1

    .line 783
    invoke-virtual {p1}, Lcom/baidu/location/BDLocation;->getAddrStr()Ljava/lang/String;

    move-result-object v7

    const-string v8, ""

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 784
    iget-object v7, p0, Lcom/pubinfo/izhejiang/fragment/AroundFragment$MyLocationListener;->this$0:Lcom/pubinfo/izhejiang/fragment/AroundFragment;

    invoke-virtual {p1}, Lcom/baidu/location/BDLocation;->getAddrStr()Ljava/lang/String;

    move-result-object v8

    const-string v9, "\u7701"

    invoke-virtual {v8, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    aget-object v8, v8, v12

    const-string v9, "\u5e02"

    invoke-virtual {v8, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    aget-object v8, v8, v11

    iput-object v8, v7, Lcom/pubinfo/izhejiang/fragment/AroundFragment;->city:Ljava/lang/String;

    .line 785
    iget-object v7, p0, Lcom/pubinfo/izhejiang/fragment/AroundFragment$MyLocationListener;->this$0:Lcom/pubinfo/izhejiang/fragment/AroundFragment;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/baidu/location/BDLocation;->getAddrStr()Ljava/lang/String;

    move-result-object v9

    const-string v10, "\u5e02"

    invoke-virtual {v9, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    aget-object v9, v9, v11

    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v9, "\u5e02"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    iput-object v8, v7, Lcom/pubinfo/izhejiang/fragment/AroundFragment;->cityS:Ljava/lang/String;

    .line 788
    :cond_1
    iget-object v7, p0, Lcom/pubinfo/izhejiang/fragment/AroundFragment$MyLocationListener;->this$0:Lcom/pubinfo/izhejiang/fragment/AroundFragment;

    invoke-virtual {v7}, Lcom/pubinfo/izhejiang/fragment/AroundFragment;->getActivity()Landroid/app/Activity;

    move-result-object v7

    .line 789
    const-string v8, "Location"

    invoke-virtual {v7, v8, v11}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v5

    .line 790
    .local v5, "sharedPreferences":Landroid/content/SharedPreferences;
    invoke-interface {v5}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 791
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v7, "city"

    iget-object v8, p0, Lcom/pubinfo/izhejiang/fragment/AroundFragment$MyLocationListener;->this$0:Lcom/pubinfo/izhejiang/fragment/AroundFragment;

    iget-object v8, v8, Lcom/pubinfo/izhejiang/fragment/AroundFragment;->city:Ljava/lang/String;

    invoke-interface {v0, v7, v8}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 792
    const-string v7, "cityS"

    iget-object v8, p0, Lcom/pubinfo/izhejiang/fragment/AroundFragment$MyLocationListener;->this$0:Lcom/pubinfo/izhejiang/fragment/AroundFragment;

    iget-object v8, v8, Lcom/pubinfo/izhejiang/fragment/AroundFragment;->cityS:Ljava/lang/String;

    invoke-interface {v0, v7, v8}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 793
    const-string v7, "lat"

    iget-object v8, p0, Lcom/pubinfo/izhejiang/fragment/AroundFragment$MyLocationListener;->this$0:Lcom/pubinfo/izhejiang/fragment/AroundFragment;

    iget-object v8, v8, Lcom/pubinfo/izhejiang/fragment/AroundFragment;->lat:Ljava/lang/String;

    invoke-interface {v0, v7, v8}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 794
    const-string v7, "lon"

    iget-object v8, p0, Lcom/pubinfo/izhejiang/fragment/AroundFragment$MyLocationListener;->this$0:Lcom/pubinfo/izhejiang/fragment/AroundFragment;

    iget-object v8, v8, Lcom/pubinfo/izhejiang/fragment/AroundFragment;->lon:Ljava/lang/String;

    invoke-interface {v0, v7, v8}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 795
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 797
    new-instance v1, Lcom/baidu/mapapi/model/LatLng;

    invoke-virtual {p1}, Lcom/baidu/location/BDLocation;->getLatitude()D

    move-result-wide v7

    .line 798
    invoke-virtual {p1}, Lcom/baidu/location/BDLocation;->getLongitude()D

    move-result-wide v9

    .line 797
    invoke-direct {v1, v7, v8, v9, v10}, Lcom/baidu/mapapi/model/LatLng;-><init>(DD)V

    .line 799
    .local v1, "ll":Lcom/baidu/mapapi/model/LatLng;
    invoke-static {v1}, Lcom/baidu/mapapi/map/MapStatusUpdateFactory;->newLatLng(Lcom/baidu/mapapi/model/LatLng;)Lcom/baidu/mapapi/map/MapStatusUpdate;

    move-result-object v6

    .line 800
    .local v6, "u":Lcom/baidu/mapapi/map/MapStatusUpdate;
    iget-object v7, p0, Lcom/pubinfo/izhejiang/fragment/AroundFragment$MyLocationListener;->this$0:Lcom/pubinfo/izhejiang/fragment/AroundFragment;

    # getter for: Lcom/pubinfo/izhejiang/fragment/AroundFragment;->mBaiduMap:Lcom/baidu/mapapi/map/BaiduMap;
    invoke-static {v7}, Lcom/pubinfo/izhejiang/fragment/AroundFragment;->access$2(Lcom/pubinfo/izhejiang/fragment/AroundFragment;)Lcom/baidu/mapapi/map/BaiduMap;

    move-result-object v7

    invoke-virtual {v7, v6}, Lcom/baidu/mapapi/map/BaiduMap;->animateMapStatus(Lcom/baidu/mapapi/map/MapStatusUpdate;)V

    .line 801
    iget-object v7, p0, Lcom/pubinfo/izhejiang/fragment/AroundFragment$MyLocationListener;->this$0:Lcom/pubinfo/izhejiang/fragment/AroundFragment;

    iget v7, v7, Lcom/pubinfo/izhejiang/fragment/AroundFragment;->tag:I

    if-nez v7, :cond_4

    .line 802
    iget-object v7, p0, Lcom/pubinfo/izhejiang/fragment/AroundFragment$MyLocationListener;->this$0:Lcom/pubinfo/izhejiang/fragment/AroundFragment;

    iget-object v7, v7, Lcom/pubinfo/izhejiang/fragment/AroundFragment;->listHandler:Landroid/os/Handler;

    const/4 v8, 0x2

    invoke-virtual {v7, v8}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 808
    .end local v0    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local v1    # "ll":Lcom/baidu/mapapi/model/LatLng;
    .end local v2    # "locData":Lcom/baidu/mapapi/map/MyLocationData;
    .end local v3    # "msu":Lcom/baidu/mapapi/map/MapStatusUpdate;
    .end local v5    # "sharedPreferences":Landroid/content/SharedPreferences;
    .end local v6    # "u":Lcom/baidu/mapapi/map/MapStatusUpdate;
    :cond_2
    :goto_1
    return-void

    .line 761
    :cond_3
    invoke-virtual {p1}, Lcom/baidu/location/BDLocation;->getLocType()I

    move-result v7

    const/16 v8, 0xa1

    if-ne v7, v8, :cond_0

    .line 762
    iget-object v7, p0, Lcom/pubinfo/izhejiang/fragment/AroundFragment$MyLocationListener;->this$0:Lcom/pubinfo/izhejiang/fragment/AroundFragment;

    iget-object v7, v7, Lcom/pubinfo/izhejiang/fragment/AroundFragment;->mLocationClient:Lcom/baidu/location/LocationClient;

    invoke-virtual {v7}, Lcom/baidu/location/LocationClient;->stop()V

    .line 763
    const-string v7, "\naddr : "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 764
    invoke-virtual {p1}, Lcom/baidu/location/BDLocation;->getAddrStr()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 765
    const-string v7, "\noperationers : "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 766
    invoke-virtual {p1}, Lcom/baidu/location/BDLocation;->getOperators()I

    move-result v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    goto/16 :goto_0

    .line 803
    .restart local v0    # "editor":Landroid/content/SharedPreferences$Editor;
    .restart local v1    # "ll":Lcom/baidu/mapapi/model/LatLng;
    .restart local v2    # "locData":Lcom/baidu/mapapi/map/MyLocationData;
    .restart local v3    # "msu":Lcom/baidu/mapapi/map/MapStatusUpdate;
    .restart local v5    # "sharedPreferences":Landroid/content/SharedPreferences;
    .restart local v6    # "u":Lcom/baidu/mapapi/map/MapStatusUpdate;
    :cond_4
    iget-object v7, p0, Lcom/pubinfo/izhejiang/fragment/AroundFragment$MyLocationListener;->this$0:Lcom/pubinfo/izhejiang/fragment/AroundFragment;

    iget v7, v7, Lcom/pubinfo/izhejiang/fragment/AroundFragment;->tag:I

    if-ne v7, v12, :cond_2

    .line 804
    invoke-static {v12}, Lcom/pubinfo/izhejiang/fragment/AroundFragment;->access$3(Z)V

    .line 805
    iget-object v7, p0, Lcom/pubinfo/izhejiang/fragment/AroundFragment$MyLocationListener;->this$0:Lcom/pubinfo/izhejiang/fragment/AroundFragment;

    # invokes: Lcom/pubinfo/izhejiang/fragment/AroundFragment;->hideLoading()V
    invoke-static {v7}, Lcom/pubinfo/izhejiang/fragment/AroundFragment;->access$4(Lcom/pubinfo/izhejiang/fragment/AroundFragment;)V

    goto :goto_1
.end method
