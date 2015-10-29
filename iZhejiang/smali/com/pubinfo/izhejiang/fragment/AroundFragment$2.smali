.class Lcom/pubinfo/izhejiang/fragment/AroundFragment$2;
.super Ljava/lang/Object;
.source "AroundFragment.java"

# interfaces
.implements Lcom/baidu/mapapi/map/BaiduMap$OnMarkerClickListener;


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
    iput-object p1, p0, Lcom/pubinfo/izhejiang/fragment/AroundFragment$2;->this$0:Lcom/pubinfo/izhejiang/fragment/AroundFragment;

    .line 270
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/pubinfo/izhejiang/fragment/AroundFragment$2;)Lcom/pubinfo/izhejiang/fragment/AroundFragment;
    .locals 1

    .prologue
    .line 270
    iget-object v0, p0, Lcom/pubinfo/izhejiang/fragment/AroundFragment$2;->this$0:Lcom/pubinfo/izhejiang/fragment/AroundFragment;

    return-object v0
.end method


# virtual methods
.method public onMarkerClick(Lcom/baidu/mapapi/map/Marker;)Z
    .locals 14
    .param p1, "marker"    # Lcom/baidu/mapapi/map/Marker;

    .prologue
    .line 272
    iget-object v9, p0, Lcom/pubinfo/izhejiang/fragment/AroundFragment$2;->this$0:Lcom/pubinfo/izhejiang/fragment/AroundFragment;

    iget-object v10, p0, Lcom/pubinfo/izhejiang/fragment/AroundFragment$2;->this$0:Lcom/pubinfo/izhejiang/fragment/AroundFragment;

    # getter for: Lcom/pubinfo/izhejiang/fragment/AroundFragment;->factory:Landroid/view/LayoutInflater;
    invoke-static {v10}, Lcom/pubinfo/izhejiang/fragment/AroundFragment;->access$7(Lcom/pubinfo/izhejiang/fragment/AroundFragment;)Landroid/view/LayoutInflater;

    move-result-object v10

    const v11, 0x7f03001f

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-virtual {v10, v11, v12, v13}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v10

    iput-object v10, v9, Lcom/pubinfo/izhejiang/fragment/AroundFragment;->convertView:Landroid/view/View;

    .line 275
    invoke-virtual {p1}, Lcom/baidu/mapapi/map/Marker;->getTitle()Ljava/lang/String;

    move-result-object v2

    .line 276
    .local v2, "data":Ljava/lang/String;
    const-string v9, ""

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_0

    .line 277
    const-string v9, ","

    invoke-virtual {v2, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    .line 278
    .local v7, "strings":[Ljava/lang/String;
    iget-object v9, p0, Lcom/pubinfo/izhejiang/fragment/AroundFragment$2;->this$0:Lcom/pubinfo/izhejiang/fragment/AroundFragment;

    const/4 v10, 0x0

    aget-object v10, v7, v10

    iput-object v10, v9, Lcom/pubinfo/izhejiang/fragment/AroundFragment;->name:Ljava/lang/String;

    .line 279
    iget-object v9, p0, Lcom/pubinfo/izhejiang/fragment/AroundFragment$2;->this$0:Lcom/pubinfo/izhejiang/fragment/AroundFragment;

    const/4 v10, 0x1

    aget-object v10, v7, v10

    iput-object v10, v9, Lcom/pubinfo/izhejiang/fragment/AroundFragment;->goods:Ljava/lang/String;

    .line 280
    iget-object v9, p0, Lcom/pubinfo/izhejiang/fragment/AroundFragment$2;->this$0:Lcom/pubinfo/izhejiang/fragment/AroundFragment;

    const/4 v10, 0x2

    aget-object v10, v7, v10

    iput-object v10, v9, Lcom/pubinfo/izhejiang/fragment/AroundFragment;->url:Ljava/lang/String;

    .line 281
    iget-object v9, p0, Lcom/pubinfo/izhejiang/fragment/AroundFragment$2;->this$0:Lcom/pubinfo/izhejiang/fragment/AroundFragment;

    const/4 v10, 0x3

    aget-object v10, v7, v10

    iput-object v10, v9, Lcom/pubinfo/izhejiang/fragment/AroundFragment;->type:Ljava/lang/String;

    .line 283
    .end local v7    # "strings":[Ljava/lang/String;
    :cond_0
    const/4 v3, 0x0

    .line 284
    .local v3, "listener":Lcom/baidu/mapapi/map/InfoWindow$OnInfoWindowClickListener;
    new-instance v3, Lcom/pubinfo/izhejiang/fragment/AroundFragment$2$1;

    .end local v3    # "listener":Lcom/baidu/mapapi/map/InfoWindow$OnInfoWindowClickListener;
    invoke-direct {v3, p0, p1}, Lcom/pubinfo/izhejiang/fragment/AroundFragment$2$1;-><init>(Lcom/pubinfo/izhejiang/fragment/AroundFragment$2;Lcom/baidu/mapapi/map/Marker;)V

    .line 303
    .restart local v3    # "listener":Lcom/baidu/mapapi/map/InfoWindow$OnInfoWindowClickListener;
    iget-object v9, p0, Lcom/pubinfo/izhejiang/fragment/AroundFragment$2;->this$0:Lcom/pubinfo/izhejiang/fragment/AroundFragment;

    iget-object v9, v9, Lcom/pubinfo/izhejiang/fragment/AroundFragment;->convertView:Landroid/view/View;

    const v10, 0x7f0a00a8

    invoke-virtual {v9, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 304
    .local v1, "Name":Landroid/widget/TextView;
    iget-object v9, p0, Lcom/pubinfo/izhejiang/fragment/AroundFragment$2;->this$0:Lcom/pubinfo/izhejiang/fragment/AroundFragment;

    iget-object v9, v9, Lcom/pubinfo/izhejiang/fragment/AroundFragment;->name:Ljava/lang/String;

    invoke-virtual {v1, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 305
    iget-object v9, p0, Lcom/pubinfo/izhejiang/fragment/AroundFragment$2;->this$0:Lcom/pubinfo/izhejiang/fragment/AroundFragment;

    iget-object v9, v9, Lcom/pubinfo/izhejiang/fragment/AroundFragment;->convertView:Landroid/view/View;

    const v10, 0x7f0a00a9

    invoke-virtual {v9, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 306
    .local v0, "Goods":Landroid/widget/TextView;
    iget-object v9, p0, Lcom/pubinfo/izhejiang/fragment/AroundFragment$2;->this$0:Lcom/pubinfo/izhejiang/fragment/AroundFragment;

    iget-object v9, v9, Lcom/pubinfo/izhejiang/fragment/AroundFragment;->type:Ljava/lang/String;

    const-string v10, "0"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_1

    iget-object v9, p0, Lcom/pubinfo/izhejiang/fragment/AroundFragment$2;->this$0:Lcom/pubinfo/izhejiang/fragment/AroundFragment;

    iget-object v9, v9, Lcom/pubinfo/izhejiang/fragment/AroundFragment;->type:Ljava/lang/String;

    const-string v10, "1"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_1

    iget-object v9, p0, Lcom/pubinfo/izhejiang/fragment/AroundFragment$2;->this$0:Lcom/pubinfo/izhejiang/fragment/AroundFragment;

    iget-object v9, v9, Lcom/pubinfo/izhejiang/fragment/AroundFragment;->type:Ljava/lang/String;

    const-string v10, "2"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 307
    :cond_1
    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "\u597d\u8bc4\u6570\uff1a"

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v10, p0, Lcom/pubinfo/izhejiang/fragment/AroundFragment$2;->this$0:Lcom/pubinfo/izhejiang/fragment/AroundFragment;

    iget-object v10, v10, Lcom/pubinfo/izhejiang/fragment/AroundFragment;->goods:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 312
    :cond_2
    :goto_0
    invoke-virtual {p1}, Lcom/baidu/mapapi/map/Marker;->getPosition()Lcom/baidu/mapapi/model/LatLng;

    move-result-object v4

    .line 313
    .local v4, "ll":Lcom/baidu/mapapi/model/LatLng;
    invoke-static {v4}, Lcom/baidu/mapapi/map/MapStatusUpdateFactory;->newLatLng(Lcom/baidu/mapapi/model/LatLng;)Lcom/baidu/mapapi/map/MapStatusUpdate;

    move-result-object v8

    .line 314
    .local v8, "u":Lcom/baidu/mapapi/map/MapStatusUpdate;
    iget-object v9, p0, Lcom/pubinfo/izhejiang/fragment/AroundFragment$2;->this$0:Lcom/pubinfo/izhejiang/fragment/AroundFragment;

    # getter for: Lcom/pubinfo/izhejiang/fragment/AroundFragment;->mBaiduMap:Lcom/baidu/mapapi/map/BaiduMap;
    invoke-static {v9}, Lcom/pubinfo/izhejiang/fragment/AroundFragment;->access$2(Lcom/pubinfo/izhejiang/fragment/AroundFragment;)Lcom/baidu/mapapi/map/BaiduMap;

    move-result-object v9

    invoke-virtual {v9, v8}, Lcom/baidu/mapapi/map/BaiduMap;->animateMapStatus(Lcom/baidu/mapapi/map/MapStatusUpdate;)V

    .line 315
    iget-object v9, p0, Lcom/pubinfo/izhejiang/fragment/AroundFragment$2;->this$0:Lcom/pubinfo/izhejiang/fragment/AroundFragment;

    new-instance v10, Lcom/baidu/mapapi/map/InfoWindow;

    .line 316
    iget-object v11, p0, Lcom/pubinfo/izhejiang/fragment/AroundFragment$2;->this$0:Lcom/pubinfo/izhejiang/fragment/AroundFragment;

    iget-object v11, v11, Lcom/pubinfo/izhejiang/fragment/AroundFragment;->convertView:Landroid/view/View;

    invoke-static {v11}, Lcom/baidu/mapapi/map/BitmapDescriptorFactory;->fromView(Landroid/view/View;)Lcom/baidu/mapapi/map/BitmapDescriptor;

    move-result-object v11

    const/16 v12, -0x2f

    invoke-direct {v10, v11, v4, v12, v3}, Lcom/baidu/mapapi/map/InfoWindow;-><init>(Lcom/baidu/mapapi/map/BitmapDescriptor;Lcom/baidu/mapapi/model/LatLng;ILcom/baidu/mapapi/map/InfoWindow$OnInfoWindowClickListener;)V

    .line 315
    invoke-static {v9, v10}, Lcom/pubinfo/izhejiang/fragment/AroundFragment;->access$8(Lcom/pubinfo/izhejiang/fragment/AroundFragment;Lcom/baidu/mapapi/map/InfoWindow;)V

    .line 317
    iget-object v9, p0, Lcom/pubinfo/izhejiang/fragment/AroundFragment$2;->this$0:Lcom/pubinfo/izhejiang/fragment/AroundFragment;

    # getter for: Lcom/pubinfo/izhejiang/fragment/AroundFragment;->mBaiduMap:Lcom/baidu/mapapi/map/BaiduMap;
    invoke-static {v9}, Lcom/pubinfo/izhejiang/fragment/AroundFragment;->access$2(Lcom/pubinfo/izhejiang/fragment/AroundFragment;)Lcom/baidu/mapapi/map/BaiduMap;

    move-result-object v9

    iget-object v10, p0, Lcom/pubinfo/izhejiang/fragment/AroundFragment$2;->this$0:Lcom/pubinfo/izhejiang/fragment/AroundFragment;

    # getter for: Lcom/pubinfo/izhejiang/fragment/AroundFragment;->mInfoWindow:Lcom/baidu/mapapi/map/InfoWindow;
    invoke-static {v10}, Lcom/pubinfo/izhejiang/fragment/AroundFragment;->access$9(Lcom/pubinfo/izhejiang/fragment/AroundFragment;)Lcom/baidu/mapapi/map/InfoWindow;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/baidu/mapapi/map/BaiduMap;->showInfoWindow(Lcom/baidu/mapapi/map/InfoWindow;)V

    .line 319
    iget-object v9, p0, Lcom/pubinfo/izhejiang/fragment/AroundFragment$2;->this$0:Lcom/pubinfo/izhejiang/fragment/AroundFragment;

    invoke-virtual {v9}, Lcom/pubinfo/izhejiang/fragment/AroundFragment;->reseticon()V

    .line 324
    new-instance v9, Lcom/baidu/mapapi/map/MarkerOptions;

    invoke-direct {v9}, Lcom/baidu/mapapi/map/MarkerOptions;-><init>()V

    iget-object v10, p0, Lcom/pubinfo/izhejiang/fragment/AroundFragment$2;->this$0:Lcom/pubinfo/izhejiang/fragment/AroundFragment;

    iget-object v10, v10, Lcom/pubinfo/izhejiang/fragment/AroundFragment;->bdB:Lcom/baidu/mapapi/map/BitmapDescriptor;

    invoke-virtual {v9, v10}, Lcom/baidu/mapapi/map/MarkerOptions;->icon(Lcom/baidu/mapapi/map/BitmapDescriptor;)Lcom/baidu/mapapi/map/MarkerOptions;

    move-result-object v9

    .line 325
    invoke-virtual {p1}, Lcom/baidu/mapapi/map/Marker;->getPosition()Lcom/baidu/mapapi/model/LatLng;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/baidu/mapapi/map/MarkerOptions;->position(Lcom/baidu/mapapi/model/LatLng;)Lcom/baidu/mapapi/map/MarkerOptions;

    move-result-object v9

    .line 326
    new-instance v10, Ljava/lang/StringBuilder;

    iget-object v11, p0, Lcom/pubinfo/izhejiang/fragment/AroundFragment$2;->this$0:Lcom/pubinfo/izhejiang/fragment/AroundFragment;

    iget-object v11, v11, Lcom/pubinfo/izhejiang/fragment/AroundFragment;->name:Ljava/lang/String;

    invoke-static {v11}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v11, ","

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/pubinfo/izhejiang/fragment/AroundFragment$2;->this$0:Lcom/pubinfo/izhejiang/fragment/AroundFragment;

    iget-object v11, v11, Lcom/pubinfo/izhejiang/fragment/AroundFragment;->goods:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ","

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/pubinfo/izhejiang/fragment/AroundFragment$2;->this$0:Lcom/pubinfo/izhejiang/fragment/AroundFragment;

    iget-object v11, v11, Lcom/pubinfo/izhejiang/fragment/AroundFragment;->url:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ","

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/pubinfo/izhejiang/fragment/AroundFragment$2;->this$0:Lcom/pubinfo/izhejiang/fragment/AroundFragment;

    iget-object v11, v11, Lcom/pubinfo/izhejiang/fragment/AroundFragment;->type:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/baidu/mapapi/map/MarkerOptions;->title(Ljava/lang/String;)Lcom/baidu/mapapi/map/MarkerOptions;

    move-result-object v6

    .line 328
    .local v6, "markerOptions":Lcom/baidu/mapapi/map/MarkerOptions;
    invoke-virtual {p1}, Lcom/baidu/mapapi/map/Marker;->remove()V

    .line 329
    iget-object v9, p0, Lcom/pubinfo/izhejiang/fragment/AroundFragment$2;->this$0:Lcom/pubinfo/izhejiang/fragment/AroundFragment;

    # getter for: Lcom/pubinfo/izhejiang/fragment/AroundFragment;->mBaiduMap:Lcom/baidu/mapapi/map/BaiduMap;
    invoke-static {v9}, Lcom/pubinfo/izhejiang/fragment/AroundFragment;->access$2(Lcom/pubinfo/izhejiang/fragment/AroundFragment;)Lcom/baidu/mapapi/map/BaiduMap;

    move-result-object v9

    invoke-virtual {v9, v6}, Lcom/baidu/mapapi/map/BaiduMap;->addOverlay(Lcom/baidu/mapapi/map/OverlayOptions;)Lcom/baidu/mapapi/map/Overlay;

    move-result-object v5

    check-cast v5, Lcom/baidu/mapapi/map/Marker;

    .line 344
    .local v5, "marker2":Lcom/baidu/mapapi/map/Marker;
    const/4 v9, 0x1

    return v9

    .line 308
    .end local v4    # "ll":Lcom/baidu/mapapi/model/LatLng;
    .end local v5    # "marker2":Lcom/baidu/mapapi/map/Marker;
    .end local v6    # "markerOptions":Lcom/baidu/mapapi/map/MarkerOptions;
    .end local v8    # "u":Lcom/baidu/mapapi/map/MapStatusUpdate;
    :cond_3
    iget-object v9, p0, Lcom/pubinfo/izhejiang/fragment/AroundFragment$2;->this$0:Lcom/pubinfo/izhejiang/fragment/AroundFragment;

    iget-object v9, v9, Lcom/pubinfo/izhejiang/fragment/AroundFragment;->type:Ljava/lang/String;

    const-string v10, "3"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 309
    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "\u8bc4\u8bba\u6570\uff1a"

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v10, p0, Lcom/pubinfo/izhejiang/fragment/AroundFragment$2;->this$0:Lcom/pubinfo/izhejiang/fragment/AroundFragment;

    iget-object v10, v10, Lcom/pubinfo/izhejiang/fragment/AroundFragment;->goods:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0
.end method
