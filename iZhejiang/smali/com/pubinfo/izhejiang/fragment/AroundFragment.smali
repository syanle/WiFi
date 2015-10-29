.class public Lcom/pubinfo/izhejiang/fragment/AroundFragment;
.super Lcom/pubinfo/izhejiang/controller/BaiduMapsFun;
.source "AroundFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pubinfo/izhejiang/fragment/AroundFragment$MyLocationListener;,
        Lcom/pubinfo/izhejiang/fragment/AroundFragment$MyThread;
    }
.end annotation


# static fields
.field public static final MORE_PAGE:I = 0x2

.field public static final WEB_PAGE:I = 0x1

.field private static location_isClicked:Z


# instance fields
.field bdA:Lcom/baidu/mapapi/map/BitmapDescriptor;

.field bdB:Lcom/baidu/mapapi/map/BitmapDescriptor;

.field bitmap:Landroid/graphics/Bitmap;

.field btn_location:Landroid/widget/ImageButton;

.field city:Ljava/lang/String;

.field cityS:Ljava/lang/String;

.field convertView:Landroid/view/View;

.field drawable_dfu:Landroid/graphics/drawable/Drawable;

.field private factory:Landroid/view/LayoutInflater;

.field goods:Ljava/lang/String;

.field iv:Landroid/widget/ImageView;

.field iv_picture:Landroid/widget/ImageView;

.field lat:Ljava/lang/String;

.field latlon:Ljava/lang/String;

.field layout1:Landroid/widget/LinearLayout;

.field layout_more:Landroid/widget/LinearLayout;

.field listHandler:Landroid/os/Handler;

.field private loadingAnimationDrawable:Landroid/graphics/drawable/AnimationDrawable;

.field private loadingImageView:Landroid/widget/ImageView;

.field private loadingRelativeLayout:Landroid/widget/RelativeLayout;

.field lon:Ljava/lang/String;

.field private mBaiduMap:Lcom/baidu/mapapi/map/BaiduMap;

.field mCurrentMarker:Lcom/baidu/mapapi/map/BitmapDescriptor;

.field private mGallery:Landroid/widget/LinearLayout;

.field private mInfoWindow:Lcom/baidu/mapapi/map/InfoWindow;

.field public mLocationClient:Lcom/baidu/location/LocationClient;

.field private mMapView:Lcom/baidu/mapapi/map/MapView;

.field public mMyLocationListener:Lcom/pubinfo/izhejiang/fragment/AroundFragment$MyLocationListener;

.field mScreenWitdh:I

.field md:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/cat/data/MapData;",
            ">;"
        }
    .end annotation
.end field

.field name:Ljava/lang/String;

.field open_wifiButton:Landroid/widget/Button;

.field phone:Ljava/lang/String;

.field private progressTextView:Landroid/widget/TextView;

.field private progressTextView2:Landroid/widget/TextView;

.field relativelayout_Map:Landroid/widget/RelativeLayout;

.field scrollView:Landroid/widget/HorizontalScrollView;

.field ssid:Ljava/lang/String;

.field tag:I

.field private tempMode:Lcom/baidu/location/LocationClientOption$LocationMode;

.field private tempcoor:Ljava/lang/String;

.field type:Ljava/lang/String;

.field url:Ljava/lang/String;

.field view:Landroid/view/View;

.field zcvZomm:Lcom/cat/tools/ZoomControlsView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 94
    const/4 v0, 0x1

    sput-boolean v0, Lcom/pubinfo/izhejiang/fragment/AroundFragment;->location_isClicked:Z

    .line 145
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 74
    invoke-direct {p0}, Lcom/pubinfo/izhejiang/controller/BaiduMapsFun;-><init>()V

    .line 84
    iput-object v1, p0, Lcom/pubinfo/izhejiang/fragment/AroundFragment;->latlon:Ljava/lang/String;

    .line 87
    iput-object v1, p0, Lcom/pubinfo/izhejiang/fragment/AroundFragment;->factory:Landroid/view/LayoutInflater;

    .line 91
    sget-object v0, Lcom/baidu/location/LocationClientOption$LocationMode;->Hight_Accuracy:Lcom/baidu/location/LocationClientOption$LocationMode;

    iput-object v0, p0, Lcom/pubinfo/izhejiang/fragment/AroundFragment;->tempMode:Lcom/baidu/location/LocationClientOption$LocationMode;

    .line 114
    const-string v0, "bd09ll"

    iput-object v0, p0, Lcom/pubinfo/izhejiang/fragment/AroundFragment;->tempcoor:Ljava/lang/String;

    .line 118
    const-string v0, ""

    iput-object v0, p0, Lcom/pubinfo/izhejiang/fragment/AroundFragment;->ssid:Ljava/lang/String;

    .line 131
    const v0, 0x7f0200ae

    invoke-static {v0}, Lcom/baidu/mapapi/map/BitmapDescriptorFactory;->fromResource(I)Lcom/baidu/mapapi/map/BitmapDescriptor;

    move-result-object v0

    iput-object v0, p0, Lcom/pubinfo/izhejiang/fragment/AroundFragment;->bdA:Lcom/baidu/mapapi/map/BitmapDescriptor;

    .line 133
    const v0, 0x7f0200af

    invoke-static {v0}, Lcom/baidu/mapapi/map/BitmapDescriptorFactory;->fromResource(I)Lcom/baidu/mapapi/map/BitmapDescriptor;

    move-result-object v0

    iput-object v0, p0, Lcom/pubinfo/izhejiang/fragment/AroundFragment;->bdB:Lcom/baidu/mapapi/map/BitmapDescriptor;

    .line 135
    iput-object v1, p0, Lcom/pubinfo/izhejiang/fragment/AroundFragment;->bitmap:Landroid/graphics/Bitmap;

    .line 136
    const/4 v0, 0x0

    iput v0, p0, Lcom/pubinfo/izhejiang/fragment/AroundFragment;->tag:I

    .line 74
    return-void
.end method

.method private Commit(Ljava/lang/String;)V
    .locals 13
    .param p1, "cate"    # Ljava/lang/String;

    .prologue
    .line 585
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/pubinfo/izhejiang/fragment/AroundFragment;->clearOverlay(Landroid/view/View;)V

    .line 586
    invoke-virtual {p0}, Lcom/pubinfo/izhejiang/fragment/AroundFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 587
    const-string v1, "LoginSucess"

    const/4 v2, 0x0

    .line 586
    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v12

    .line 588
    .local v12, "sharedata3":Landroid/content/SharedPreferences;
    const-string v0, "username"

    const-string v1, ""

    invoke-interface {v12, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 589
    .local v7, "username":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/pubinfo/izhejiang/fragment/AroundFragment;->getConnectedSSID()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/pubinfo/izhejiang/fragment/AroundFragment;->ssid:Ljava/lang/String;

    .line 590
    iget-object v1, p0, Lcom/pubinfo/izhejiang/fragment/AroundFragment;->city:Ljava/lang/String;

    iget-object v2, p0, Lcom/pubinfo/izhejiang/fragment/AroundFragment;->lon:Ljava/lang/String;

    iget-object v3, p0, Lcom/pubinfo/izhejiang/fragment/AroundFragment;->lat:Ljava/lang/String;

    const-string v4, "1000"

    const-string v6, "1"

    const-string v8, ""

    iget-object v9, p0, Lcom/pubinfo/izhejiang/fragment/AroundFragment;->ssid:Ljava/lang/String;

    .line 591
    const-string v10, "1"

    invoke-virtual {p0}, Lcom/pubinfo/izhejiang/fragment/AroundFragment;->getActivity()Landroid/app/Activity;

    move-result-object v11

    move-object v0, p0

    move-object v5, p1

    .line 590
    invoke-virtual/range {v0 .. v11}, Lcom/pubinfo/izhejiang/fragment/AroundFragment;->getNearBusList(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    .line 592
    return-void
.end method

.method static synthetic access$0(Lcom/pubinfo/izhejiang/fragment/AroundFragment;Z)V
    .locals 0

    .prologue
    .line 673
    invoke-direct {p0, p1}, Lcom/pubinfo/izhejiang/fragment/AroundFragment;->showLoading(Z)V

    return-void
.end method

.method static synthetic access$1(Lcom/pubinfo/izhejiang/fragment/AroundFragment;Ljava/lang/String;Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/pubinfo/izhejiang/fragment/AroundFragment;->getNearType(Ljava/lang/String;Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$2(Lcom/pubinfo/izhejiang/fragment/AroundFragment;)Lcom/baidu/mapapi/map/BaiduMap;
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lcom/pubinfo/izhejiang/fragment/AroundFragment;->mBaiduMap:Lcom/baidu/mapapi/map/BaiduMap;

    return-object v0
.end method

.method static synthetic access$3(Z)V
    .locals 0

    .prologue
    .line 94
    sput-boolean p0, Lcom/pubinfo/izhejiang/fragment/AroundFragment;->location_isClicked:Z

    return-void
.end method

.method static synthetic access$4(Lcom/pubinfo/izhejiang/fragment/AroundFragment;)V
    .locals 0

    .prologue
    .line 696
    invoke-direct {p0}, Lcom/pubinfo/izhejiang/fragment/AroundFragment;->hideLoading()V

    return-void
.end method

.method static synthetic access$5(Lcom/pubinfo/izhejiang/fragment/AroundFragment;)V
    .locals 0

    .prologue
    .line 710
    invoke-direct {p0}, Lcom/pubinfo/izhejiang/fragment/AroundFragment;->getLocation()V

    return-void
.end method

.method static synthetic access$6(Lcom/pubinfo/izhejiang/fragment/AroundFragment;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 584
    invoke-direct {p0, p1}, Lcom/pubinfo/izhejiang/fragment/AroundFragment;->Commit(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$7(Lcom/pubinfo/izhejiang/fragment/AroundFragment;)Landroid/view/LayoutInflater;
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Lcom/pubinfo/izhejiang/fragment/AroundFragment;->factory:Landroid/view/LayoutInflater;

    return-object v0
.end method

.method static synthetic access$8(Lcom/pubinfo/izhejiang/fragment/AroundFragment;Lcom/baidu/mapapi/map/InfoWindow;)V
    .locals 0

    .prologue
    .line 81
    iput-object p1, p0, Lcom/pubinfo/izhejiang/fragment/AroundFragment;->mInfoWindow:Lcom/baidu/mapapi/map/InfoWindow;

    return-void
.end method

.method static synthetic access$9(Lcom/pubinfo/izhejiang/fragment/AroundFragment;)Lcom/baidu/mapapi/map/InfoWindow;
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lcom/pubinfo/izhejiang/fragment/AroundFragment;->mInfoWindow:Lcom/baidu/mapapi/map/InfoWindow;

    return-object v0
.end method

.method public static getHttpBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 6
    .param p0, "url"    # Ljava/lang/String;

    .prologue
    .line 378
    const/4 v0, 0x0

    .line 380
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    :try_start_0
    new-instance v4, Ljava/net/URL;

    invoke-direct {v4, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 383
    .local v4, "myFileURL":Ljava/net/URL;
    invoke-virtual {v4}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v1

    .line 382
    check-cast v1, Ljava/net/HttpURLConnection;

    .line 385
    .local v1, "conn":Ljava/net/HttpURLConnection;
    const/16 v5, 0x1770

    invoke-virtual {v1, v5}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 387
    const/4 v5, 0x1

    invoke-virtual {v1, v5}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    .line 389
    const/4 v5, 0x0

    invoke-virtual {v1, v5}, Ljava/net/HttpURLConnection;->setUseCaches(Z)V

    .line 393
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v3

    .line 395
    .local v3, "is":Ljava/io/InputStream;
    invoke-static {v3}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 397
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 402
    .end local v1    # "conn":Ljava/net/HttpURLConnection;
    .end local v3    # "is":Ljava/io/InputStream;
    .end local v4    # "myFileURL":Ljava/net/URL;
    :goto_0
    return-object v0

    .line 398
    :catch_0
    move-exception v2

    .line 399
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private getLocation()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 713
    iget-object v2, p0, Lcom/pubinfo/izhejiang/fragment/AroundFragment;->mBaiduMap:Lcom/baidu/mapapi/map/BaiduMap;

    invoke-virtual {v2, v4}, Lcom/baidu/mapapi/map/BaiduMap;->setMyLocationEnabled(Z)V

    .line 715
    new-instance v2, Lcom/baidu/location/LocationClient;

    invoke-virtual {p0}, Lcom/pubinfo/izhejiang/fragment/AroundFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/baidu/location/LocationClient;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/pubinfo/izhejiang/fragment/AroundFragment;->mLocationClient:Lcom/baidu/location/LocationClient;

    .line 716
    new-instance v2, Lcom/pubinfo/izhejiang/fragment/AroundFragment$MyLocationListener;

    invoke-direct {v2, p0}, Lcom/pubinfo/izhejiang/fragment/AroundFragment$MyLocationListener;-><init>(Lcom/pubinfo/izhejiang/fragment/AroundFragment;)V

    iput-object v2, p0, Lcom/pubinfo/izhejiang/fragment/AroundFragment;->mMyLocationListener:Lcom/pubinfo/izhejiang/fragment/AroundFragment$MyLocationListener;

    .line 717
    iget-object v2, p0, Lcom/pubinfo/izhejiang/fragment/AroundFragment;->mLocationClient:Lcom/baidu/location/LocationClient;

    iget-object v3, p0, Lcom/pubinfo/izhejiang/fragment/AroundFragment;->mMyLocationListener:Lcom/pubinfo/izhejiang/fragment/AroundFragment$MyLocationListener;

    invoke-virtual {v2, v3}, Lcom/baidu/location/LocationClient;->registerLocationListener(Lcom/baidu/location/BDLocationListener;)V

    .line 718
    new-instance v0, Lcom/baidu/location/LocationClientOption;

    invoke-direct {v0}, Lcom/baidu/location/LocationClientOption;-><init>()V

    .line 719
    .local v0, "option":Lcom/baidu/location/LocationClientOption;
    iget-object v2, p0, Lcom/pubinfo/izhejiang/fragment/AroundFragment;->tempMode:Lcom/baidu/location/LocationClientOption$LocationMode;

    invoke-virtual {v0, v2}, Lcom/baidu/location/LocationClientOption;->setLocationMode(Lcom/baidu/location/LocationClientOption$LocationMode;)V

    .line 720
    iget-object v2, p0, Lcom/pubinfo/izhejiang/fragment/AroundFragment;->tempcoor:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/baidu/location/LocationClientOption;->setCoorType(Ljava/lang/String;)V

    .line 721
    const/16 v1, 0x3e8

    .line 723
    .local v1, "span":I
    const/16 v2, 0x3e8

    :try_start_0
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 727
    :goto_0
    invoke-virtual {v0, v1}, Lcom/baidu/location/LocationClientOption;->setScanSpan(I)V

    .line 728
    invoke-virtual {v0, v4}, Lcom/baidu/location/LocationClientOption;->setIsNeedAddress(Z)V

    .line 729
    iget-object v2, p0, Lcom/pubinfo/izhejiang/fragment/AroundFragment;->mLocationClient:Lcom/baidu/location/LocationClient;

    invoke-virtual {v2, v0}, Lcom/baidu/location/LocationClient;->setLocOption(Lcom/baidu/location/LocationClientOption;)V

    .line 730
    iget-object v2, p0, Lcom/pubinfo/izhejiang/fragment/AroundFragment;->mLocationClient:Lcom/baidu/location/LocationClient;

    invoke-virtual {v2}, Lcom/baidu/location/LocationClient;->start()V

    .line 731
    return-void

    .line 724
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method private hideLoading()V
    .locals 2

    .prologue
    const/16 v1, 0x8

    .line 697
    iget-object v0, p0, Lcom/pubinfo/izhejiang/fragment/AroundFragment;->loadingRelativeLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 698
    iget-object v0, p0, Lcom/pubinfo/izhejiang/fragment/AroundFragment;->loadingImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 699
    iget-object v0, p0, Lcom/pubinfo/izhejiang/fragment/AroundFragment;->loadingRelativeLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 701
    iget-object v0, p0, Lcom/pubinfo/izhejiang/fragment/AroundFragment;->progressTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 702
    iget-object v0, p0, Lcom/pubinfo/izhejiang/fragment/AroundFragment;->progressTextView2:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 704
    :cond_0
    return-void
.end method

.method private hideZoomView(Lcom/baidu/mapapi/map/MapView;)V
    .locals 5
    .param p1, "mapView"    # Lcom/baidu/mapapi/map/MapView;

    .prologue
    .line 412
    invoke-virtual {p1}, Lcom/baidu/mapapi/map/MapView;->getMap()Lcom/baidu/mapapi/map/BaiduMap;

    move-result-object v4

    iput-object v4, p0, Lcom/pubinfo/izhejiang/fragment/AroundFragment;->mBaiduMap:Lcom/baidu/mapapi/map/BaiduMap;

    .line 414
    invoke-virtual {p1}, Lcom/baidu/mapapi/map/MapView;->getChildCount()I

    move-result v1

    .line 415
    .local v1, "childCount":I
    const/4 v3, 0x0

    .line 416
    .local v3, "zoom":Landroid/view/View;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-lt v2, v1, :cond_0

    .line 423
    :goto_1
    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 424
    return-void

    .line 417
    :cond_0
    invoke-virtual {p1, v2}, Lcom/baidu/mapapi/map/MapView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 418
    .local v0, "child":Landroid/view/View;
    instance-of v4, v0, Landroid/widget/ZoomControls;

    if-eqz v4, :cond_1

    .line 419
    move-object v3, v0

    .line 420
    goto :goto_1

    .line 416
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method private showLoading(Z)V
    .locals 4
    .param p1, "s"    # Z

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 674
    if-eqz p1, :cond_0

    .line 675
    iget-object v0, p0, Lcom/pubinfo/izhejiang/fragment/AroundFragment;->progressTextView:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 676
    iget-object v0, p0, Lcom/pubinfo/izhejiang/fragment/AroundFragment;->progressTextView:Landroid/widget/TextView;

    const v1, 0x7f060030

    invoke-virtual {p0, v1}, Lcom/pubinfo/izhejiang/fragment/AroundFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 677
    iget-object v0, p0, Lcom/pubinfo/izhejiang/fragment/AroundFragment;->relativelayout_Map:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 678
    iget-object v0, p0, Lcom/pubinfo/izhejiang/fragment/AroundFragment;->scrollView:Landroid/widget/HorizontalScrollView;

    invoke-virtual {v0, v2}, Landroid/widget/HorizontalScrollView;->setVisibility(I)V

    .line 683
    :goto_0
    iget-object v0, p0, Lcom/pubinfo/izhejiang/fragment/AroundFragment;->layout1:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 684
    iget-object v0, p0, Lcom/pubinfo/izhejiang/fragment/AroundFragment;->loadingRelativeLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 685
    iget-object v0, p0, Lcom/pubinfo/izhejiang/fragment/AroundFragment;->loadingImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 686
    iget-object v0, p0, Lcom/pubinfo/izhejiang/fragment/AroundFragment;->progressTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 687
    iget-object v0, p0, Lcom/pubinfo/izhejiang/fragment/AroundFragment;->loadingAnimationDrawable:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 688
    iget-object v0, p0, Lcom/pubinfo/izhejiang/fragment/AroundFragment;->loadingAnimationDrawable:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->stop()V

    .line 689
    iget-object v0, p0, Lcom/pubinfo/izhejiang/fragment/AroundFragment;->loadingAnimationDrawable:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    .line 693
    :goto_1
    return-void

    .line 680
    :cond_0
    iget-object v0, p0, Lcom/pubinfo/izhejiang/fragment/AroundFragment;->relativelayout_Map:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 681
    iget-object v0, p0, Lcom/pubinfo/izhejiang/fragment/AroundFragment;->scrollView:Landroid/widget/HorizontalScrollView;

    invoke-virtual {v0, v3}, Landroid/widget/HorizontalScrollView;->setVisibility(I)V

    goto :goto_0

    .line 691
    :cond_1
    iget-object v0, p0, Lcom/pubinfo/izhejiang/fragment/AroundFragment;->loadingAnimationDrawable:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    goto :goto_1
.end method


# virtual methods
.method public clearOverlay(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 876
    iget-object v0, p0, Lcom/pubinfo/izhejiang/fragment/AroundFragment;->mBaiduMap:Lcom/baidu/mapapi/map/BaiduMap;

    invoke-virtual {v0}, Lcom/baidu/mapapi/map/BaiduMap;->clear()V

    .line 877
    return-void
.end method

.method public doNearBusListErr(Ljava/lang/String;)V
    .locals 2
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 618
    iget-object v0, p0, Lcom/pubinfo/izhejiang/fragment/AroundFragment;->listHandler:Landroid/os/Handler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 619
    return-void
.end method

.method public doNearBusListSucc(Ljava/lang/String;)V
    .locals 4
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 596
    if-eqz p1, :cond_1

    .line 598
    const/4 v2, 0x0

    :try_start_0
    invoke-static {p1, v2}, Lcom/cat/parase/NearBusListParser;->Nearbuslistparaser(Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object v1

    .line 599
    .local v1, "result":Ljava/lang/Object;
    const-string v2, "OK"

    invoke-virtual {p1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 600
    invoke-static {}, Lcom/cat/data/ComData;->getInstance()Lcom/cat/data/ComData;

    move-result-object v2

    check-cast v1, Ljava/util/List;

    .end local v1    # "result":Ljava/lang/Object;
    invoke-virtual {v2, v1}, Lcom/cat/data/ComData;->setpError(Ljava/util/List;)V

    .line 601
    iget-object v2, p0, Lcom/pubinfo/izhejiang/fragment/AroundFragment;->listHandler:Landroid/os/Handler;

    const/4 v3, 0x5

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 614
    :goto_0
    return-void

    .line 603
    .restart local v1    # "result":Ljava/lang/Object;
    :cond_0
    invoke-static {}, Lcom/cat/data/ComData;->getInstance()Lcom/cat/data/ComData;

    move-result-object v2

    .line 604
    check-cast v1, Ljava/util/List;

    .end local v1    # "result":Ljava/lang/Object;
    invoke-virtual {v2, v1}, Lcom/cat/data/ComData;->setMapCustom(Ljava/util/List;)V

    .line 605
    iget-object v2, p0, Lcom/pubinfo/izhejiang/fragment/AroundFragment;->listHandler:Landroid/os/Handler;

    const/4 v3, 0x6

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 607
    :catch_0
    move-exception v0

    .line 608
    .local v0, "e":Ljava/lang/Exception;
    invoke-direct {p0}, Lcom/pubinfo/izhejiang/fragment/AroundFragment;->hideLoading()V

    .line 609
    const/4 v2, 0x1

    sput-boolean v2, Lcom/pubinfo/izhejiang/fragment/AroundFragment;->location_isClicked:Z

    goto :goto_0

    .line 612
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_1
    iget-object v2, p0, Lcom/pubinfo/izhejiang/fragment/AroundFragment;->listHandler:Landroid/os/Handler;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0
.end method

.method public doNearTypeErr(Ljava/lang/String;)V
    .locals 2
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 578
    iget-object v0, p0, Lcom/pubinfo/izhejiang/fragment/AroundFragment;->listHandler:Landroid/os/Handler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 579
    return-void
.end method

.method public doNearTypeSucc(Ljava/lang/String;)V
    .locals 6
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x4

    .line 555
    if-eqz p1, :cond_1

    .line 557
    :try_start_0
    invoke-static {p1}, Lcom/cat/parase/NearTypeParser;->Neartypeparaser(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 558
    .local v1, "result":Ljava/lang/Object;
    const-string v2, "OK"

    invoke-virtual {p1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 559
    invoke-static {}, Lcom/cat/data/ComData;->getInstance()Lcom/cat/data/ComData;

    move-result-object v2

    check-cast v1, Ljava/util/List;

    .end local v1    # "result":Ljava/lang/Object;
    invoke-virtual {v2, v1}, Lcom/cat/data/ComData;->setpError(Ljava/util/List;)V

    .line 560
    iget-object v2, p0, Lcom/pubinfo/izhejiang/fragment/AroundFragment;->scrollView:Landroid/widget/HorizontalScrollView;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Landroid/widget/HorizontalScrollView;->setVisibility(I)V

    .line 561
    iget-object v2, p0, Lcom/pubinfo/izhejiang/fragment/AroundFragment;->listHandler:Landroid/os/Handler;

    const/4 v3, 0x5

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 574
    :goto_0
    return-void

    .line 563
    .restart local v1    # "result":Ljava/lang/Object;
    :cond_0
    iget-object v2, p0, Lcom/pubinfo/izhejiang/fragment/AroundFragment;->listHandler:Landroid/os/Handler;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 565
    .end local v1    # "result":Ljava/lang/Object;
    :catch_0
    move-exception v0

    .line 566
    .local v0, "e":Ljava/lang/Exception;
    invoke-direct {p0}, Lcom/pubinfo/izhejiang/fragment/AroundFragment;->hideLoading()V

    .line 567
    iget-object v2, p0, Lcom/pubinfo/izhejiang/fragment/AroundFragment;->scrollView:Landroid/widget/HorizontalScrollView;

    invoke-virtual {v2, v4}, Landroid/widget/HorizontalScrollView;->setVisibility(I)V

    .line 568
    sput-boolean v5, Lcom/pubinfo/izhejiang/fragment/AroundFragment;->location_isClicked:Z

    goto :goto_0

    .line 571
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_1
    iget-object v2, p0, Lcom/pubinfo/izhejiang/fragment/AroundFragment;->scrollView:Landroid/widget/HorizontalScrollView;

    invoke-virtual {v2, v4}, Landroid/widget/HorizontalScrollView;->setVisibility(I)V

    .line 572
    iget-object v2, p0, Lcom/pubinfo/izhejiang/fragment/AroundFragment;->listHandler:Landroid/os/Handler;

    invoke-virtual {v2, v4}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0
.end method

.method public initMap()V
    .locals 2

    .prologue
    .line 270
    iget-object v0, p0, Lcom/pubinfo/izhejiang/fragment/AroundFragment;->mBaiduMap:Lcom/baidu/mapapi/map/BaiduMap;

    new-instance v1, Lcom/pubinfo/izhejiang/fragment/AroundFragment$2;

    invoke-direct {v1, p0}, Lcom/pubinfo/izhejiang/fragment/AroundFragment$2;-><init>(Lcom/pubinfo/izhejiang/fragment/AroundFragment;)V

    invoke-virtual {v0, v1}, Lcom/baidu/mapapi/map/BaiduMap;->setOnMarkerClickListener(Lcom/baidu/mapapi/map/BaiduMap$OnMarkerClickListener;)V

    .line 348
    iget-object v0, p0, Lcom/pubinfo/izhejiang/fragment/AroundFragment;->mBaiduMap:Lcom/baidu/mapapi/map/BaiduMap;

    new-instance v1, Lcom/pubinfo/izhejiang/fragment/AroundFragment$3;

    invoke-direct {v1, p0}, Lcom/pubinfo/izhejiang/fragment/AroundFragment$3;-><init>(Lcom/pubinfo/izhejiang/fragment/AroundFragment;)V

    invoke-virtual {v0, v1}, Lcom/baidu/mapapi/map/BaiduMap;->setOnMapClickListener(Lcom/baidu/mapapi/map/BaiduMap$OnMapClickListener;)V

    .line 368
    return-void
.end method

.method public initOverlay()V
    .locals 11

    .prologue
    const/4 v10, -0x2

    .line 816
    invoke-virtual {p0}, Lcom/pubinfo/izhejiang/fragment/AroundFragment;->getActivity()Landroid/app/Activity;

    move-result-object v7

    .line 817
    const-string v8, "window"

    .line 816
    invoke-virtual {v7, v8}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/WindowManager;

    .line 818
    .local v6, "wm":Landroid/view/WindowManager;
    new-instance v5, Landroid/util/DisplayMetrics;

    invoke-direct {v5}, Landroid/util/DisplayMetrics;-><init>()V

    .line 819
    .local v5, "outMetrics":Landroid/util/DisplayMetrics;
    invoke-interface {v6}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v7

    invoke-virtual {v7, v5}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 820
    iget v7, v5, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v7, p0, Lcom/pubinfo/izhejiang/fragment/AroundFragment;->mScreenWitdh:I

    .line 822
    invoke-static {}, Lcom/cat/data/ComData;->getInstance()Lcom/cat/data/ComData;

    move-result-object v7

    invoke-virtual {v7}, Lcom/cat/data/ComData;->getMapData()Ljava/util/List;

    move-result-object v7

    iput-object v7, p0, Lcom/pubinfo/izhejiang/fragment/AroundFragment;->md:Ljava/util/List;

    .line 823
    iget-object v7, p0, Lcom/pubinfo/izhejiang/fragment/AroundFragment;->md:Ljava/util/List;

    if-eqz v7, :cond_0

    iget-object v7, p0, Lcom/pubinfo/izhejiang/fragment/AroundFragment;->md:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    if-lez v7, :cond_0

    .line 824
    iget-object v7, p0, Lcom/pubinfo/izhejiang/fragment/AroundFragment;->md:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    new-array v0, v7, [Landroid/widget/Button;

    .line 825
    .local v0, "Btn":[Landroid/widget/Button;
    new-instance v3, Landroid/widget/RelativeLayout$LayoutParams;

    .line 826
    const/4 v7, 0x1

    .line 825
    invoke-direct {v3, v7, v10}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 827
    .local v3, "ivParams":Landroid/widget/RelativeLayout$LayoutParams;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget-object v7, p0, Lcom/pubinfo/izhejiang/fragment/AroundFragment;->md:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    if-lt v2, v7, :cond_1

    .line 847
    const/4 v4, 0x0

    .local v4, "k":I
    :goto_1
    iget-object v7, p0, Lcom/pubinfo/izhejiang/fragment/AroundFragment;->md:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    if-lt v4, v7, :cond_3

    .line 867
    .end local v0    # "Btn":[Landroid/widget/Button;
    .end local v2    # "i":I
    .end local v3    # "ivParams":Landroid/widget/RelativeLayout$LayoutParams;
    .end local v4    # "k":I
    :cond_0
    iget-object v7, p0, Lcom/pubinfo/izhejiang/fragment/AroundFragment;->listHandler:Landroid/os/Handler;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 868
    return-void

    .line 828
    .restart local v0    # "Btn":[Landroid/widget/Button;
    .restart local v2    # "i":I
    .restart local v3    # "ivParams":Landroid/widget/RelativeLayout$LayoutParams;
    :cond_1
    new-instance v7, Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/pubinfo/izhejiang/fragment/AroundFragment;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-direct {v7, v8}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    aput-object v7, v0, v2

    .line 829
    new-instance v7, Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/pubinfo/izhejiang/fragment/AroundFragment;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-direct {v7, v8}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v7, p0, Lcom/pubinfo/izhejiang/fragment/AroundFragment;->iv:Landroid/widget/ImageView;

    .line 830
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    .line 831
    iget v7, p0, Lcom/pubinfo/izhejiang/fragment/AroundFragment;->mScreenWitdh:I

    div-int/lit8 v7, v7, 0x4

    .line 830
    invoke-direct {v1, v7, v10}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 832
    .local v1, "btParams":Landroid/widget/RelativeLayout$LayoutParams;
    aget-object v8, v0, v2

    iget-object v7, p0, Lcom/pubinfo/izhejiang/fragment/AroundFragment;->md:Ljava/util/List;

    invoke-interface {v7, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/cat/data/MapData;

    invoke-virtual {v7}, Lcom/cat/data/MapData;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v8, v7}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 833
    if-nez v2, :cond_2

    .line 834
    aget-object v7, v0, v2

    invoke-virtual {p0}, Lcom/pubinfo/izhejiang/fragment/AroundFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    .line 835
    const/high16 v9, 0x7f080000

    .line 834
    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/Button;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 840
    :goto_2
    aget-object v7, v0, v2

    const/4 v8, -0x1

    invoke-virtual {v7, v8}, Landroid/widget/Button;->setBackgroundColor(I)V

    .line 841
    aget-object v7, v0, v2

    const/16 v8, 0x11

    invoke-virtual {v7, v8}, Landroid/widget/Button;->setGravity(I)V

    .line 842
    iget-object v7, p0, Lcom/pubinfo/izhejiang/fragment/AroundFragment;->iv:Landroid/widget/ImageView;

    const v8, 0x7f02005b

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 844
    iget-object v7, p0, Lcom/pubinfo/izhejiang/fragment/AroundFragment;->mGallery:Landroid/widget/LinearLayout;

    aget-object v8, v0, v2

    invoke-virtual {v7, v8, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 845
    iget-object v7, p0, Lcom/pubinfo/izhejiang/fragment/AroundFragment;->mGallery:Landroid/widget/LinearLayout;

    iget-object v8, p0, Lcom/pubinfo/izhejiang/fragment/AroundFragment;->iv:Landroid/widget/ImageView;

    invoke-virtual {v7, v8, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 827
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 837
    :cond_2
    aget-object v7, v0, v2

    invoke-virtual {p0}, Lcom/pubinfo/izhejiang/fragment/AroundFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    .line 838
    const v9, 0x7f080006

    .line 837
    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/Button;->setTextColor(Landroid/content/res/ColorStateList;)V

    goto :goto_2

    .line 849
    .end local v1    # "btParams":Landroid/widget/RelativeLayout$LayoutParams;
    .restart local v4    # "k":I
    :cond_3
    aget-object v7, v0, v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/Button;->setTag(Ljava/lang/Object;)V

    .line 850
    aget-object v7, v0, v4

    new-instance v8, Lcom/pubinfo/izhejiang/fragment/AroundFragment$4;

    invoke-direct {v8, p0, v0}, Lcom/pubinfo/izhejiang/fragment/AroundFragment$4;-><init>(Lcom/pubinfo/izhejiang/fragment/AroundFragment;[Landroid/widget/Button;)V

    invoke-virtual {v7, v8}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 847
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_1
.end method

.method public initOverlay2()V
    .locals 11

    .prologue
    .line 625
    invoke-static {}, Lcom/cat/data/ComData;->getInstance()Lcom/cat/data/ComData;

    move-result-object v6

    invoke-virtual {v6}, Lcom/cat/data/ComData;->getMapCustom()Ljava/util/List;

    move-result-object v2

    .line 626
    .local v2, "mb":Ljava/util/List;, "Ljava/util/List<Lcom/cat/data/MapCustom;>;"
    invoke-virtual {p0}, Lcom/pubinfo/izhejiang/fragment/AroundFragment;->isAdded()Z

    move-result v6

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/pubinfo/izhejiang/fragment/AroundFragment;->lat:Ljava/lang/String;

    const-string v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    iget-object v6, p0, Lcom/pubinfo/izhejiang/fragment/AroundFragment;->lon:Ljava/lang/String;

    const-string v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 627
    new-instance v4, Lcom/baidu/mapapi/model/LatLng;

    iget-object v6, p0, Lcom/pubinfo/izhejiang/fragment/AroundFragment;->lat:Ljava/lang/String;

    invoke-static {v6}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v6

    iget-object v8, p0, Lcom/pubinfo/izhejiang/fragment/AroundFragment;->lon:Ljava/lang/String;

    invoke-static {v8}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v8

    invoke-direct {v4, v6, v7, v8, v9}, Lcom/baidu/mapapi/model/LatLng;-><init>(DD)V

    .line 628
    .local v4, "p":Lcom/baidu/mapapi/model/LatLng;
    invoke-static {v4}, Lcom/baidu/mapapi/map/MapStatusUpdateFactory;->newLatLng(Lcom/baidu/mapapi/model/LatLng;)Lcom/baidu/mapapi/map/MapStatusUpdate;

    move-result-object v5

    .line 629
    .local v5, "u":Lcom/baidu/mapapi/map/MapStatusUpdate;
    iget-object v6, p0, Lcom/pubinfo/izhejiang/fragment/AroundFragment;->mBaiduMap:Lcom/baidu/mapapi/map/BaiduMap;

    invoke-virtual {v6, v5}, Lcom/baidu/mapapi/map/BaiduMap;->setMapStatus(Lcom/baidu/mapapi/map/MapStatusUpdate;)V

    .line 631
    if-eqz v2, :cond_0

    .line 632
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v6

    if-lt v0, v6, :cond_1

    .line 650
    .end local v0    # "i":I
    .end local v4    # "p":Lcom/baidu/mapapi/model/LatLng;
    .end local v5    # "u":Lcom/baidu/mapapi/map/MapStatusUpdate;
    :cond_0
    return-void

    .line 637
    .restart local v0    # "i":I
    .restart local v4    # "p":Lcom/baidu/mapapi/model/LatLng;
    .restart local v5    # "u":Lcom/baidu/mapapi/map/MapStatusUpdate;
    :cond_1
    new-instance v1, Lcom/baidu/mapapi/model/LatLng;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/cat/data/MapCustom;

    .line 638
    invoke-virtual {v6}, Lcom/cat/data/MapCustom;->getLat()Ljava/lang/String;

    move-result-object v6

    .line 637
    invoke-static {v6}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v7

    .line 638
    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/cat/data/MapCustom;

    invoke-virtual {v6}, Lcom/cat/data/MapCustom;->getLng()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v9

    .line 637
    invoke-direct {v1, v7, v8, v9, v10}, Lcom/baidu/mapapi/model/LatLng;-><init>(DD)V

    .line 639
    .local v1, "llC":Lcom/baidu/mapapi/model/LatLng;
    new-instance v6, Lcom/baidu/mapapi/map/MarkerOptions;

    invoke-direct {v6}, Lcom/baidu/mapapi/map/MarkerOptions;-><init>()V

    .line 640
    invoke-virtual {v6, v1}, Lcom/baidu/mapapi/map/MarkerOptions;->position(Lcom/baidu/mapapi/model/LatLng;)Lcom/baidu/mapapi/map/MarkerOptions;

    move-result-object v6

    .line 641
    iget-object v7, p0, Lcom/pubinfo/izhejiang/fragment/AroundFragment;->bdA:Lcom/baidu/mapapi/map/BitmapDescriptor;

    invoke-virtual {v6, v7}, Lcom/baidu/mapapi/map/MarkerOptions;->icon(Lcom/baidu/mapapi/map/BitmapDescriptor;)Lcom/baidu/mapapi/map/MarkerOptions;

    move-result-object v7

    .line 642
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/cat/data/MapCustom;

    invoke-virtual {v6}, Lcom/cat/data/MapCustom;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v8, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, ","

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 643
    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/cat/data/MapCustom;

    invoke-virtual {v6}, Lcom/cat/data/MapCustom;->getGoods()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, ","

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 644
    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/cat/data/MapCustom;

    invoke-virtual {v6}, Lcom/cat/data/MapCustom;->getBusiness_url()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, ","

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 645
    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/cat/data/MapCustom;

    invoke-virtual {v6}, Lcom/cat/data/MapCustom;->getType()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 642
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v7, v6}, Lcom/baidu/mapapi/map/MarkerOptions;->title(Ljava/lang/String;)Lcom/baidu/mapapi/map/MarkerOptions;

    move-result-object v3

    .line 646
    .local v3, "ooC":Lcom/baidu/mapapi/map/OverlayOptions;
    iget-object v6, p0, Lcom/pubinfo/izhejiang/fragment/AroundFragment;->mBaiduMap:Lcom/baidu/mapapi/map/BaiduMap;

    invoke-virtual {v6, v3}, Lcom/baidu/mapapi/map/BaiduMap;->addOverlay(Lcom/baidu/mapapi/map/OverlayOptions;)Lcom/baidu/mapapi/map/Overlay;

    .line 632
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 13
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 475
    const/4 v9, 0x1

    if-ne p1, v9, :cond_2

    .line 476
    if-eqz p3, :cond_1

    .line 477
    invoke-virtual/range {p3 .. p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v9

    const-string v10, "name"

    invoke-virtual {v9, v10}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 478
    .local v3, "name":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v9

    const-string v10, "goods"

    invoke-virtual {v9, v10}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 479
    .local v0, "goods":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v9

    const-string v10, "url"

    invoke-virtual {v9, v10}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 480
    .local v8, "url":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v9

    const-string v10, "type"

    invoke-virtual {v9, v10}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 481
    .local v6, "type":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v9

    const-string v10, "lat"

    const-wide/16 v11, 0x0

    invoke-virtual {v9, v10, v11, v12}, Landroid/os/Bundle;->getDouble(Ljava/lang/String;D)D

    move-result-wide v9

    invoke-static {v9, v10}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    .line 482
    .local v1, "lat":Ljava/lang/Double;
    invoke-virtual/range {p3 .. p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v9

    const-string v10, "lon"

    const-wide/16 v11, 0x0

    invoke-virtual {v9, v10, v11, v12}, Landroid/os/Bundle;->getDouble(Ljava/lang/String;D)D

    move-result-wide v9

    invoke-static {v9, v10}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    .line 484
    .local v2, "lon":Ljava/lang/Double;
    invoke-virtual {p0}, Lcom/pubinfo/izhejiang/fragment/AroundFragment;->isAdded()Z

    move-result v9

    if-eqz v9, :cond_0

    .line 485
    invoke-static {}, Lcom/cat/data/ComData;->getInstance()Lcom/cat/data/ComData;

    move-result-object v9

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Lcom/cat/data/ComData;->setMapCustom(Ljava/util/List;)V

    .line 486
    iget-object v9, p0, Lcom/pubinfo/izhejiang/fragment/AroundFragment;->mBaiduMap:Lcom/baidu/mapapi/map/BaiduMap;

    invoke-virtual {v9}, Lcom/baidu/mapapi/map/BaiduMap;->clear()V

    .line 487
    const/4 v9, 0x0

    invoke-virtual {p0, v9}, Lcom/pubinfo/izhejiang/fragment/AroundFragment;->clearOverlay(Landroid/view/View;)V

    .line 488
    new-instance v5, Lcom/baidu/mapapi/model/LatLng;

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v9

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v11

    invoke-direct {v5, v9, v10, v11, v12}, Lcom/baidu/mapapi/model/LatLng;-><init>(DD)V

    .line 489
    .local v5, "p":Lcom/baidu/mapapi/model/LatLng;
    invoke-static {v5}, Lcom/baidu/mapapi/map/MapStatusUpdateFactory;->newLatLng(Lcom/baidu/mapapi/model/LatLng;)Lcom/baidu/mapapi/map/MapStatusUpdate;

    move-result-object v7

    .line 490
    .local v7, "u":Lcom/baidu/mapapi/map/MapStatusUpdate;
    iget-object v9, p0, Lcom/pubinfo/izhejiang/fragment/AroundFragment;->mBaiduMap:Lcom/baidu/mapapi/map/BaiduMap;

    invoke-virtual {v9, v7}, Lcom/baidu/mapapi/map/BaiduMap;->setMapStatus(Lcom/baidu/mapapi/map/MapStatusUpdate;)V

    .line 492
    new-instance v9, Lcom/baidu/mapapi/map/MarkerOptions;

    invoke-direct {v9}, Lcom/baidu/mapapi/map/MarkerOptions;-><init>()V

    invoke-virtual {v9, v5}, Lcom/baidu/mapapi/map/MarkerOptions;->position(Lcom/baidu/mapapi/model/LatLng;)Lcom/baidu/mapapi/map/MarkerOptions;

    move-result-object v9

    .line 493
    iget-object v10, p0, Lcom/pubinfo/izhejiang/fragment/AroundFragment;->bdA:Lcom/baidu/mapapi/map/BitmapDescriptor;

    invoke-virtual {v9, v10}, Lcom/baidu/mapapi/map/MarkerOptions;->icon(Lcom/baidu/mapapi/map/BitmapDescriptor;)Lcom/baidu/mapapi/map/MarkerOptions;

    move-result-object v9

    .line 494
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v11, ","

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ","

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ","

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/baidu/mapapi/map/MarkerOptions;->title(Ljava/lang/String;)Lcom/baidu/mapapi/map/MarkerOptions;

    move-result-object v4

    .line 495
    .local v4, "ooC":Lcom/baidu/mapapi/map/OverlayOptions;
    iget-object v9, p0, Lcom/pubinfo/izhejiang/fragment/AroundFragment;->mBaiduMap:Lcom/baidu/mapapi/map/BaiduMap;

    invoke-virtual {v9, v4}, Lcom/baidu/mapapi/map/BaiduMap;->addOverlay(Lcom/baidu/mapapi/map/OverlayOptions;)Lcom/baidu/mapapi/map/Overlay;

    .line 523
    .end local v0    # "goods":Ljava/lang/String;
    .end local v1    # "lat":Ljava/lang/Double;
    .end local v2    # "lon":Ljava/lang/Double;
    .end local v3    # "name":Ljava/lang/String;
    .end local v4    # "ooC":Lcom/baidu/mapapi/map/OverlayOptions;
    .end local v5    # "p":Lcom/baidu/mapapi/model/LatLng;
    .end local v6    # "type":Ljava/lang/String;
    .end local v7    # "u":Lcom/baidu/mapapi/map/MapStatusUpdate;
    .end local v8    # "url":Ljava/lang/String;
    :cond_0
    :goto_0
    invoke-super/range {p0 .. p3}, Lcom/pubinfo/izhejiang/controller/BaiduMapsFun;->onActivityResult(IILandroid/content/Intent;)V

    .line 524
    :cond_1
    return-void

    .line 501
    :cond_2
    const/4 v9, 0x2

    if-ne p1, v9, :cond_0

    .line 502
    if-eqz p3, :cond_1

    .line 503
    invoke-static {}, Lcom/cat/data/ComData;->getInstance()Lcom/cat/data/ComData;

    move-result-object v9

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Lcom/cat/data/ComData;->setMapCustom(Ljava/util/List;)V

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v2, 0x1

    .line 428
    iget-object v1, p0, Lcom/pubinfo/izhejiang/fragment/AroundFragment;->btn_location:Landroid/widget/ImageButton;

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 429
    sget-boolean v1, Lcom/pubinfo/izhejiang/fragment/AroundFragment;->location_isClicked:Z

    if-eqz v1, :cond_0

    .line 430
    const/4 v1, 0x0

    sput-boolean v1, Lcom/pubinfo/izhejiang/fragment/AroundFragment;->location_isClicked:Z

    .line 431
    iput v2, p0, Lcom/pubinfo/izhejiang/fragment/AroundFragment;->tag:I

    .line 432
    invoke-direct {p0, v2}, Lcom/pubinfo/izhejiang/fragment/AroundFragment;->showLoading(Z)V

    .line 433
    invoke-virtual {p0}, Lcom/pubinfo/izhejiang/fragment/AroundFragment;->checkNetWork()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 435
    :try_start_0
    invoke-direct {p0}, Lcom/pubinfo/izhejiang/fragment/AroundFragment;->getLocation()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 471
    :cond_0
    :goto_0
    return-void

    .line 440
    :cond_1
    const v1, 0x7f060032

    invoke-virtual {p0, v1}, Lcom/pubinfo/izhejiang/fragment/AroundFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/pubinfo/izhejiang/fragment/AroundFragment;->showMsgToast(Ljava/lang/String;)V

    .line 441
    invoke-direct {p0}, Lcom/pubinfo/izhejiang/fragment/AroundFragment;->hideLoading()V

    .line 442
    sput-boolean v2, Lcom/pubinfo/izhejiang/fragment/AroundFragment;->location_isClicked:Z

    goto :goto_0

    .line 445
    :cond_2
    iget-object v1, p0, Lcom/pubinfo/izhejiang/fragment/AroundFragment;->layout_more:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 446
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/pubinfo/izhejiang/fragment/AroundFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-class v2, Lcom/pubinfo/izhejiang/AroundMoreActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 447
    .local v0, "intent":Landroid/content/Intent;
    const/4 v1, 0x2

    invoke-virtual {p0, v0, v1}, Lcom/pubinfo/izhejiang/fragment/AroundFragment;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 436
    .end local v0    # "intent":Landroid/content/Intent;
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 6
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v4, 0x0

    .line 155
    const v2, 0x7f03001a

    invoke-virtual {p1, v2, p2, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/pubinfo/izhejiang/fragment/AroundFragment;->view:Landroid/view/View;

    .line 156
    invoke-virtual {p0}, Lcom/pubinfo/izhejiang/fragment/AroundFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/4 v3, -0x3

    invoke-virtual {v2, v3}, Landroid/view/Window;->setFormat(I)V

    .line 157
    iget-object v2, p0, Lcom/pubinfo/izhejiang/fragment/AroundFragment;->view:Landroid/view/View;

    const v3, 0x7f0a0060

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/HorizontalScrollView;

    iput-object v2, p0, Lcom/pubinfo/izhejiang/fragment/AroundFragment;->scrollView:Landroid/widget/HorizontalScrollView;

    .line 158
    iget-object v2, p0, Lcom/pubinfo/izhejiang/fragment/AroundFragment;->view:Landroid/view/View;

    .line 159
    const v3, 0x7f0a007e

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout;

    .line 158
    iput-object v2, p0, Lcom/pubinfo/izhejiang/fragment/AroundFragment;->relativelayout_Map:Landroid/widget/RelativeLayout;

    .line 160
    iget-object v2, p0, Lcom/pubinfo/izhejiang/fragment/AroundFragment;->view:Landroid/view/View;

    const v3, 0x7f0a0044

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, p0, Lcom/pubinfo/izhejiang/fragment/AroundFragment;->layout1:Landroid/widget/LinearLayout;

    .line 161
    iget-object v2, p0, Lcom/pubinfo/izhejiang/fragment/AroundFragment;->view:Landroid/view/View;

    const v3, 0x7f0a006b

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/pubinfo/izhejiang/fragment/AroundFragment;->loadingImageView:Landroid/widget/ImageView;

    .line 162
    iget-object v2, p0, Lcom/pubinfo/izhejiang/fragment/AroundFragment;->loadingImageView:Landroid/widget/ImageView;

    invoke-virtual {v2, v4, v4}, Landroid/widget/ImageView;->measure(II)V

    .line 163
    iget-object v2, p0, Lcom/pubinfo/izhejiang/fragment/AroundFragment;->loadingImageView:Landroid/widget/ImageView;

    .line 164
    invoke-virtual {v2}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    check-cast v2, Landroid/graphics/drawable/AnimationDrawable;

    .line 163
    iput-object v2, p0, Lcom/pubinfo/izhejiang/fragment/AroundFragment;->loadingAnimationDrawable:Landroid/graphics/drawable/AnimationDrawable;

    .line 165
    iget-object v2, p0, Lcom/pubinfo/izhejiang/fragment/AroundFragment;->view:Landroid/view/View;

    .line 166
    const v3, 0x7f0a0082

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout;

    .line 165
    iput-object v2, p0, Lcom/pubinfo/izhejiang/fragment/AroundFragment;->loadingRelativeLayout:Landroid/widget/RelativeLayout;

    .line 167
    iget-object v2, p0, Lcom/pubinfo/izhejiang/fragment/AroundFragment;->view:Landroid/view/View;

    const v3, 0x7f0a006c

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/pubinfo/izhejiang/fragment/AroundFragment;->progressTextView:Landroid/widget/TextView;

    .line 168
    iget-object v2, p0, Lcom/pubinfo/izhejiang/fragment/AroundFragment;->view:Landroid/view/View;

    const v3, 0x7f0a006d

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/pubinfo/izhejiang/fragment/AroundFragment;->progressTextView2:Landroid/widget/TextView;

    .line 169
    iget-object v2, p0, Lcom/pubinfo/izhejiang/fragment/AroundFragment;->view:Landroid/view/View;

    const v3, 0x7f0a007d

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, p0, Lcom/pubinfo/izhejiang/fragment/AroundFragment;->mGallery:Landroid/widget/LinearLayout;

    .line 170
    iget-object v2, p0, Lcom/pubinfo/izhejiang/fragment/AroundFragment;->view:Landroid/view/View;

    const v3, 0x7f0a007c

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, p0, Lcom/pubinfo/izhejiang/fragment/AroundFragment;->layout_more:Landroid/widget/LinearLayout;

    .line 171
    iget-object v2, p0, Lcom/pubinfo/izhejiang/fragment/AroundFragment;->layout_more:Landroid/widget/LinearLayout;

    invoke-virtual {v2, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 172
    iget-object v2, p0, Lcom/pubinfo/izhejiang/fragment/AroundFragment;->view:Landroid/view/View;

    const v3, 0x7f0a0080

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageButton;

    iput-object v2, p0, Lcom/pubinfo/izhejiang/fragment/AroundFragment;->btn_location:Landroid/widget/ImageButton;

    .line 173
    iget-object v2, p0, Lcom/pubinfo/izhejiang/fragment/AroundFragment;->btn_location:Landroid/widget/ImageButton;

    invoke-virtual {v2, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 174
    iget-object v2, p0, Lcom/pubinfo/izhejiang/fragment/AroundFragment;->view:Landroid/view/View;

    const v3, 0x7f0a007f

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/baidu/mapapi/map/MapView;

    iput-object v2, p0, Lcom/pubinfo/izhejiang/fragment/AroundFragment;->mMapView:Lcom/baidu/mapapi/map/MapView;

    .line 175
    iget-object v2, p0, Lcom/pubinfo/izhejiang/fragment/AroundFragment;->mMapView:Lcom/baidu/mapapi/map/MapView;

    invoke-virtual {v2}, Lcom/baidu/mapapi/map/MapView;->getMap()Lcom/baidu/mapapi/map/BaiduMap;

    move-result-object v2

    iput-object v2, p0, Lcom/pubinfo/izhejiang/fragment/AroundFragment;->mBaiduMap:Lcom/baidu/mapapi/map/BaiduMap;

    .line 176
    iget-object v2, p0, Lcom/pubinfo/izhejiang/fragment/AroundFragment;->mMapView:Lcom/baidu/mapapi/map/MapView;

    invoke-direct {p0, v2}, Lcom/pubinfo/izhejiang/fragment/AroundFragment;->hideZoomView(Lcom/baidu/mapapi/map/MapView;)V

    .line 178
    iget-object v2, p0, Lcom/pubinfo/izhejiang/fragment/AroundFragment;->view:Landroid/view/View;

    const v3, 0x7f0a0081

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/cat/tools/ZoomControlsView;

    iput-object v2, p0, Lcom/pubinfo/izhejiang/fragment/AroundFragment;->zcvZomm:Lcom/cat/tools/ZoomControlsView;

    .line 179
    iget-object v2, p0, Lcom/pubinfo/izhejiang/fragment/AroundFragment;->zcvZomm:Lcom/cat/tools/ZoomControlsView;

    iget-object v3, p0, Lcom/pubinfo/izhejiang/fragment/AroundFragment;->mMapView:Lcom/baidu/mapapi/map/MapView;

    invoke-virtual {v2, v3}, Lcom/cat/tools/ZoomControlsView;->setMapView(Lcom/baidu/mapapi/map/MapView;)V

    .line 186
    new-instance v0, Lcom/baidu/mapapi/model/LatLng;

    const-wide v2, 0x403e4815af94ada2L    # 30.2815809

    const-wide v4, 0x405e0a1476af89c6L    # 120.157499

    invoke-direct {v0, v2, v3, v4, v5}, Lcom/baidu/mapapi/model/LatLng;-><init>(DD)V

    .line 187
    .local v0, "p":Lcom/baidu/mapapi/model/LatLng;
    invoke-static {v0}, Lcom/baidu/mapapi/map/MapStatusUpdateFactory;->newLatLng(Lcom/baidu/mapapi/model/LatLng;)Lcom/baidu/mapapi/map/MapStatusUpdate;

    move-result-object v1

    .line 188
    .local v1, "u":Lcom/baidu/mapapi/map/MapStatusUpdate;
    iget-object v2, p0, Lcom/pubinfo/izhejiang/fragment/AroundFragment;->mBaiduMap:Lcom/baidu/mapapi/map/BaiduMap;

    invoke-virtual {v2, v1}, Lcom/baidu/mapapi/map/BaiduMap;->setMapStatus(Lcom/baidu/mapapi/map/MapStatusUpdate;)V

    .line 190
    invoke-virtual {p0}, Lcom/pubinfo/izhejiang/fragment/AroundFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    iput-object v2, p0, Lcom/pubinfo/izhejiang/fragment/AroundFragment;->factory:Landroid/view/LayoutInflater;

    .line 192
    new-instance v2, Lcom/pubinfo/izhejiang/fragment/AroundFragment$1;

    invoke-direct {v2, p0}, Lcom/pubinfo/izhejiang/fragment/AroundFragment$1;-><init>(Lcom/pubinfo/izhejiang/fragment/AroundFragment;)V

    iput-object v2, p0, Lcom/pubinfo/izhejiang/fragment/AroundFragment;->listHandler:Landroid/os/Handler;

    .line 264
    invoke-static {}, Lcom/cat/data/ComData;->getInstance()Lcom/cat/data/ComData;

    move-result-object v2

    invoke-virtual {v2}, Lcom/cat/data/ComData;->getMapData()Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Lcom/pubinfo/izhejiang/fragment/AroundFragment;->md:Ljava/util/List;

    .line 265
    new-instance v2, Lcom/pubinfo/izhejiang/fragment/AroundFragment$MyThread;

    invoke-direct {v2, p0}, Lcom/pubinfo/izhejiang/fragment/AroundFragment$MyThread;-><init>(Lcom/pubinfo/izhejiang/fragment/AroundFragment;)V

    invoke-virtual {v2}, Lcom/pubinfo/izhejiang/fragment/AroundFragment$MyThread;->start()V

    .line 266
    iget-object v2, p0, Lcom/pubinfo/izhejiang/fragment/AroundFragment;->view:Landroid/view/View;

    return-object v2
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 917
    invoke-super {p0}, Lcom/pubinfo/izhejiang/controller/BaiduMapsFun;->onDestroy()V

    .line 918
    iget-object v0, p0, Lcom/pubinfo/izhejiang/fragment/AroundFragment;->mMapView:Lcom/baidu/mapapi/map/MapView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/pubinfo/izhejiang/fragment/AroundFragment;->mLocationClient:Lcom/baidu/location/LocationClient;

    if-eqz v0, :cond_0

    .line 920
    iget-object v0, p0, Lcom/pubinfo/izhejiang/fragment/AroundFragment;->mLocationClient:Lcom/baidu/location/LocationClient;

    invoke-virtual {v0}, Lcom/baidu/location/LocationClient;->stop()V

    .line 922
    iget-object v0, p0, Lcom/pubinfo/izhejiang/fragment/AroundFragment;->mBaiduMap:Lcom/baidu/mapapi/map/BaiduMap;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/baidu/mapapi/map/BaiduMap;->setMyLocationEnabled(Z)V

    .line 924
    iget-object v0, p0, Lcom/pubinfo/izhejiang/fragment/AroundFragment;->mMapView:Lcom/baidu/mapapi/map/MapView;

    invoke-virtual {v0}, Lcom/baidu/mapapi/map/MapView;->onDestroy()V

    .line 925
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/pubinfo/izhejiang/fragment/AroundFragment;->mMapView:Lcom/baidu/mapapi/map/MapView;

    .line 926
    invoke-super {p0}, Lcom/pubinfo/izhejiang/controller/BaiduMapsFun;->onDestroy()V

    .line 928
    iget-object v0, p0, Lcom/pubinfo/izhejiang/fragment/AroundFragment;->bdA:Lcom/baidu/mapapi/map/BitmapDescriptor;

    invoke-virtual {v0}, Lcom/baidu/mapapi/map/BitmapDescriptor;->recycle()V

    .line 929
    iget-object v0, p0, Lcom/pubinfo/izhejiang/fragment/AroundFragment;->bdB:Lcom/baidu/mapapi/map/BitmapDescriptor;

    invoke-virtual {v0}, Lcom/baidu/mapapi/map/BitmapDescriptor;->recycle()V

    .line 934
    :cond_0
    return-void
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 891
    invoke-super {p0}, Lcom/pubinfo/izhejiang/controller/BaiduMapsFun;->onPause()V

    .line 892
    iget-object v0, p0, Lcom/pubinfo/izhejiang/fragment/AroundFragment;->mMapView:Lcom/baidu/mapapi/map/MapView;

    if-eqz v0, :cond_0

    .line 894
    invoke-virtual {p0}, Lcom/pubinfo/izhejiang/fragment/AroundFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/baidu/mapapi/SDKInitializer;->initialize(Landroid/content/Context;)V

    .line 895
    iget-object v0, p0, Lcom/pubinfo/izhejiang/fragment/AroundFragment;->mMapView:Lcom/baidu/mapapi/map/MapView;

    invoke-virtual {v0}, Lcom/baidu/mapapi/map/MapView;->getMap()Lcom/baidu/mapapi/map/BaiduMap;

    move-result-object v0

    iput-object v0, p0, Lcom/pubinfo/izhejiang/fragment/AroundFragment;->mBaiduMap:Lcom/baidu/mapapi/map/BaiduMap;

    .line 896
    iget-object v0, p0, Lcom/pubinfo/izhejiang/fragment/AroundFragment;->mMapView:Lcom/baidu/mapapi/map/MapView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/baidu/mapapi/map/MapView;->setVisibility(I)V

    .line 897
    iget-object v0, p0, Lcom/pubinfo/izhejiang/fragment/AroundFragment;->mMapView:Lcom/baidu/mapapi/map/MapView;

    invoke-virtual {v0}, Lcom/baidu/mapapi/map/MapView;->onPause()V

    .line 898
    invoke-super {p0}, Lcom/pubinfo/izhejiang/controller/BaiduMapsFun;->onPause()V

    .line 900
    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 904
    invoke-super {p0}, Lcom/pubinfo/izhejiang/controller/BaiduMapsFun;->onResume()V

    .line 905
    iget-object v0, p0, Lcom/pubinfo/izhejiang/fragment/AroundFragment;->mMapView:Lcom/baidu/mapapi/map/MapView;

    if-eqz v0, :cond_0

    .line 907
    invoke-virtual {p0}, Lcom/pubinfo/izhejiang/fragment/AroundFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/baidu/mapapi/SDKInitializer;->initialize(Landroid/content/Context;)V

    .line 908
    iget-object v0, p0, Lcom/pubinfo/izhejiang/fragment/AroundFragment;->mMapView:Lcom/baidu/mapapi/map/MapView;

    invoke-virtual {v0}, Lcom/baidu/mapapi/map/MapView;->getMap()Lcom/baidu/mapapi/map/BaiduMap;

    move-result-object v0

    iput-object v0, p0, Lcom/pubinfo/izhejiang/fragment/AroundFragment;->mBaiduMap:Lcom/baidu/mapapi/map/BaiduMap;

    .line 909
    iget-object v0, p0, Lcom/pubinfo/izhejiang/fragment/AroundFragment;->mMapView:Lcom/baidu/mapapi/map/MapView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/baidu/mapapi/map/MapView;->setVisibility(I)V

    .line 910
    iget-object v0, p0, Lcom/pubinfo/izhejiang/fragment/AroundFragment;->mMapView:Lcom/baidu/mapapi/map/MapView;

    invoke-virtual {v0}, Lcom/baidu/mapapi/map/MapView;->onResume()V

    .line 911
    invoke-super {p0}, Lcom/pubinfo/izhejiang/controller/BaiduMapsFun;->onResume()V

    .line 913
    :cond_0
    return-void
.end method

.method public resetOverlay(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 885
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/pubinfo/izhejiang/fragment/AroundFragment;->clearOverlay(Landroid/view/View;)V

    .line 887
    return-void
.end method

.method public reseticon()V
    .locals 9

    .prologue
    .line 656
    invoke-static {}, Lcom/cat/data/ComData;->getInstance()Lcom/cat/data/ComData;

    move-result-object v4

    invoke-virtual {v4}, Lcom/cat/data/ComData;->getMapCustom()Ljava/util/List;

    move-result-object v2

    .line 657
    .local v2, "mb":Ljava/util/List;, "Ljava/util/List<Lcom/cat/data/MapCustom;>;"
    if-eqz v2, :cond_0

    .line 658
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    if-lt v0, v4, :cond_1

    .line 670
    .end local v0    # "i":I
    :cond_0
    return-void

    .line 659
    .restart local v0    # "i":I
    :cond_1
    new-instance v1, Lcom/baidu/mapapi/model/LatLng;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/cat/data/MapCustom;

    invoke-virtual {v4}, Lcom/cat/data/MapCustom;->getLat()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v5

    .line 660
    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/cat/data/MapCustom;

    invoke-virtual {v4}, Lcom/cat/data/MapCustom;->getLng()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v7

    .line 659
    invoke-direct {v1, v5, v6, v7, v8}, Lcom/baidu/mapapi/model/LatLng;-><init>(DD)V

    .line 661
    .local v1, "llC":Lcom/baidu/mapapi/model/LatLng;
    new-instance v4, Lcom/baidu/mapapi/map/MarkerOptions;

    invoke-direct {v4}, Lcom/baidu/mapapi/map/MarkerOptions;-><init>()V

    .line 662
    invoke-virtual {v4, v1}, Lcom/baidu/mapapi/map/MarkerOptions;->position(Lcom/baidu/mapapi/model/LatLng;)Lcom/baidu/mapapi/map/MarkerOptions;

    move-result-object v4

    .line 663
    iget-object v5, p0, Lcom/pubinfo/izhejiang/fragment/AroundFragment;->bdA:Lcom/baidu/mapapi/map/BitmapDescriptor;

    invoke-virtual {v4, v5}, Lcom/baidu/mapapi/map/MarkerOptions;->icon(Lcom/baidu/mapapi/map/BitmapDescriptor;)Lcom/baidu/mapapi/map/MarkerOptions;

    move-result-object v5

    .line 664
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/cat/data/MapCustom;

    invoke-virtual {v4}, Lcom/cat/data/MapCustom;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v6, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, ","

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/cat/data/MapCustom;

    invoke-virtual {v4}, Lcom/cat/data/MapCustom;->getGoods()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 665
    const-string v6, ","

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/cat/data/MapCustom;

    invoke-virtual {v4}, Lcom/cat/data/MapCustom;->getBusiness_url()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, ","

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 666
    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/cat/data/MapCustom;

    invoke-virtual {v4}, Lcom/cat/data/MapCustom;->getType()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 664
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Lcom/baidu/mapapi/map/MarkerOptions;->title(Ljava/lang/String;)Lcom/baidu/mapapi/map/MarkerOptions;

    move-result-object v3

    .line 667
    .local v3, "ooC":Lcom/baidu/mapapi/map/OverlayOptions;
    iget-object v4, p0, Lcom/pubinfo/izhejiang/fragment/AroundFragment;->mBaiduMap:Lcom/baidu/mapapi/map/BaiduMap;

    invoke-virtual {v4, v3}, Lcom/baidu/mapapi/map/BaiduMap;->addOverlay(Lcom/baidu/mapapi/map/OverlayOptions;)Lcom/baidu/mapapi/map/Overlay;

    .line 658
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0
.end method

.method protected showMsgToast(Ljava/lang/String;)V
    .locals 2
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 707
    invoke-virtual {p0}, Lcom/pubinfo/izhejiang/fragment/AroundFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 708
    return-void
.end method
