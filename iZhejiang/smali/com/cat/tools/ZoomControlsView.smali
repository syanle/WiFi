.class public Lcom/cat/tools/ZoomControlsView;
.super Landroid/widget/RelativeLayout;
.source "ZoomControlsView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private baiduMap:Lcom/baidu/mapapi/map/BaiduMap;

.field private inBtn:Landroid/widget/Button;

.field private mapStatus:Lcom/baidu/mapapi/map/MapStatus;

.field private maxZoomLevel:F

.field private minZoomLevel:F

.field onMapStatusChangeListener:Lcom/baidu/mapapi/map/BaiduMap$OnMapStatusChangeListener;

.field private outBtn:Landroid/widget/Button;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 27
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 120
    new-instance v0, Lcom/cat/tools/ZoomControlsView$1;

    invoke-direct {v0, p0}, Lcom/cat/tools/ZoomControlsView$1;-><init>(Lcom/cat/tools/ZoomControlsView;)V

    iput-object v0, p0, Lcom/cat/tools/ZoomControlsView;->onMapStatusChangeListener:Lcom/baidu/mapapi/map/BaiduMap$OnMapStatusChangeListener;

    .line 28
    invoke-direct {p0}, Lcom/cat/tools/ZoomControlsView;->init()V

    .line 29
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 32
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 120
    new-instance v0, Lcom/cat/tools/ZoomControlsView$1;

    invoke-direct {v0, p0}, Lcom/cat/tools/ZoomControlsView$1;-><init>(Lcom/cat/tools/ZoomControlsView;)V

    iput-object v0, p0, Lcom/cat/tools/ZoomControlsView;->onMapStatusChangeListener:Lcom/baidu/mapapi/map/BaiduMap$OnMapStatusChangeListener;

    .line 33
    return-void
.end method

.method static synthetic access$0(Lcom/cat/tools/ZoomControlsView;)V
    .locals 0

    .prologue
    .line 95
    invoke-direct {p0}, Lcom/cat/tools/ZoomControlsView;->controlZoomShow()V

    return-void
.end method

.method private controlZoomShow()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 97
    iget-object v1, p0, Lcom/cat/tools/ZoomControlsView;->baiduMap:Lcom/baidu/mapapi/map/BaiduMap;

    invoke-virtual {v1}, Lcom/baidu/mapapi/map/BaiduMap;->getMapStatus()Lcom/baidu/mapapi/map/MapStatus;

    move-result-object v1

    iget v0, v1, Lcom/baidu/mapapi/map/MapStatus;->zoom:F

    .line 99
    .local v0, "zoom":F
    iget v1, p0, Lcom/cat/tools/ZoomControlsView;->maxZoomLevel:F

    cmpl-float v1, v0, v1

    if-ltz v1, :cond_0

    .line 101
    iget-object v1, p0, Lcom/cat/tools/ZoomControlsView;->inBtn:Landroid/widget/Button;

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 108
    :goto_0
    iget v1, p0, Lcom/cat/tools/ZoomControlsView;->minZoomLevel:F

    cmpg-float v1, v0, v1

    if-gtz v1, :cond_1

    .line 110
    iget-object v1, p0, Lcom/cat/tools/ZoomControlsView;->outBtn:Landroid/widget/Button;

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 115
    :goto_1
    return-void

    .line 104
    :cond_0
    iget-object v1, p0, Lcom/cat/tools/ZoomControlsView;->inBtn:Landroid/widget/Button;

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_0

    .line 113
    :cond_1
    iget-object v1, p0, Lcom/cat/tools/ZoomControlsView;->outBtn:Landroid/widget/Button;

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_1
.end method

.method private init()V
    .locals 4

    .prologue
    .line 40
    invoke-virtual {p0}, Lcom/cat/tools/ZoomControlsView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    .line 41
    const v2, 0x7f03003a

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 40
    check-cast v0, Landroid/widget/RelativeLayout;

    .line 43
    .local v0, "view":Landroid/widget/RelativeLayout;
    const v1, 0x7f0a00fe

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/cat/tools/ZoomControlsView;->inBtn:Landroid/widget/Button;

    .line 45
    const v1, 0x7f0a00ff

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/cat/tools/ZoomControlsView;->outBtn:Landroid/widget/Button;

    .line 47
    iget-object v1, p0, Lcom/cat/tools/ZoomControlsView;->inBtn:Landroid/widget/Button;

    invoke-virtual {v1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 48
    iget-object v1, p0, Lcom/cat/tools/ZoomControlsView;->outBtn:Landroid/widget/Button;

    invoke-virtual {v1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 50
    invoke-virtual {p0, v0}, Lcom/cat/tools/ZoomControlsView;->addView(Landroid/view/View;)V

    .line 51
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/high16 v2, 0x3f800000    # 1.0f

    .line 55
    iget-object v0, p0, Lcom/cat/tools/ZoomControlsView;->baiduMap:Lcom/baidu/mapapi/map/BaiduMap;

    invoke-virtual {v0}, Lcom/baidu/mapapi/map/BaiduMap;->getMapStatus()Lcom/baidu/mapapi/map/MapStatus;

    move-result-object v0

    iput-object v0, p0, Lcom/cat/tools/ZoomControlsView;->mapStatus:Lcom/baidu/mapapi/map/MapStatus;

    .line 56
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 73
    :goto_0
    iget-object v0, p0, Lcom/cat/tools/ZoomControlsView;->baiduMap:Lcom/baidu/mapapi/map/BaiduMap;

    invoke-virtual {v0}, Lcom/baidu/mapapi/map/BaiduMap;->getMapStatus()Lcom/baidu/mapapi/map/MapStatus;

    move-result-object v0

    iput-object v0, p0, Lcom/cat/tools/ZoomControlsView;->mapStatus:Lcom/baidu/mapapi/map/MapStatus;

    .line 74
    return-void

    .line 59
    :pswitch_0
    iget-object v0, p0, Lcom/cat/tools/ZoomControlsView;->baiduMap:Lcom/baidu/mapapi/map/BaiduMap;

    .line 60
    iget-object v1, p0, Lcom/cat/tools/ZoomControlsView;->mapStatus:Lcom/baidu/mapapi/map/MapStatus;

    iget v1, v1, Lcom/baidu/mapapi/map/MapStatus;->zoom:F

    add-float/2addr v1, v2

    invoke-static {v1}, Lcom/baidu/mapapi/map/MapStatusUpdateFactory;->zoomTo(F)Lcom/baidu/mapapi/map/MapStatusUpdate;

    move-result-object v1

    .line 59
    invoke-virtual {v0, v1}, Lcom/baidu/mapapi/map/BaiduMap;->setMapStatus(Lcom/baidu/mapapi/map/MapStatusUpdate;)V

    .line 61
    invoke-direct {p0}, Lcom/cat/tools/ZoomControlsView;->controlZoomShow()V

    goto :goto_0

    .line 65
    :pswitch_1
    iget-object v0, p0, Lcom/cat/tools/ZoomControlsView;->baiduMap:Lcom/baidu/mapapi/map/BaiduMap;

    .line 66
    iget-object v1, p0, Lcom/cat/tools/ZoomControlsView;->mapStatus:Lcom/baidu/mapapi/map/MapStatus;

    iget v1, v1, Lcom/baidu/mapapi/map/MapStatus;->zoom:F

    sub-float/2addr v1, v2

    invoke-static {v1}, Lcom/baidu/mapapi/map/MapStatusUpdateFactory;->zoomTo(F)Lcom/baidu/mapapi/map/MapStatusUpdate;

    move-result-object v1

    .line 65
    invoke-virtual {v0, v1}, Lcom/baidu/mapapi/map/BaiduMap;->setMapStatus(Lcom/baidu/mapapi/map/MapStatusUpdate;)V

    .line 67
    invoke-direct {p0}, Lcom/cat/tools/ZoomControlsView;->controlZoomShow()V

    goto :goto_0

    .line 56
    :pswitch_data_0
    .packed-switch 0x7f0a00fe
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public setMapView(Lcom/baidu/mapapi/map/MapView;)V
    .locals 2
    .param p1, "mapView"    # Lcom/baidu/mapapi/map/MapView;

    .prologue
    .line 83
    invoke-virtual {p1}, Lcom/baidu/mapapi/map/MapView;->getMap()Lcom/baidu/mapapi/map/BaiduMap;

    move-result-object v0

    iput-object v0, p0, Lcom/cat/tools/ZoomControlsView;->baiduMap:Lcom/baidu/mapapi/map/BaiduMap;

    .line 85
    iget-object v0, p0, Lcom/cat/tools/ZoomControlsView;->baiduMap:Lcom/baidu/mapapi/map/BaiduMap;

    iget-object v1, p0, Lcom/cat/tools/ZoomControlsView;->onMapStatusChangeListener:Lcom/baidu/mapapi/map/BaiduMap$OnMapStatusChangeListener;

    invoke-virtual {v0, v1}, Lcom/baidu/mapapi/map/BaiduMap;->setOnMapStatusChangeListener(Lcom/baidu/mapapi/map/BaiduMap$OnMapStatusChangeListener;)V

    .line 87
    iget-object v0, p0, Lcom/cat/tools/ZoomControlsView;->baiduMap:Lcom/baidu/mapapi/map/BaiduMap;

    invoke-virtual {v0}, Lcom/baidu/mapapi/map/BaiduMap;->getMaxZoomLevel()F

    move-result v0

    iput v0, p0, Lcom/cat/tools/ZoomControlsView;->maxZoomLevel:F

    .line 88
    iget-object v0, p0, Lcom/cat/tools/ZoomControlsView;->baiduMap:Lcom/baidu/mapapi/map/BaiduMap;

    invoke-virtual {v0}, Lcom/baidu/mapapi/map/BaiduMap;->getMinZoomLevel()F

    move-result v0

    iput v0, p0, Lcom/cat/tools/ZoomControlsView;->minZoomLevel:F

    .line 89
    invoke-direct {p0}, Lcom/cat/tools/ZoomControlsView;->controlZoomShow()V

    .line 90
    return-void
.end method
