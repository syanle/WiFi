.class Lcom/cat/tools/ZoomControlsView$1;
.super Ljava/lang/Object;
.source "ZoomControlsView.java"

# interfaces
.implements Lcom/baidu/mapapi/map/BaiduMap$OnMapStatusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cat/tools/ZoomControlsView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cat/tools/ZoomControlsView;


# direct methods
.method constructor <init>(Lcom/cat/tools/ZoomControlsView;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/cat/tools/ZoomControlsView$1;->this$0:Lcom/cat/tools/ZoomControlsView;

    .line 120
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMapStatusChange(Lcom/baidu/mapapi/map/MapStatus;)V
    .locals 1
    .param p1, "arg0"    # Lcom/baidu/mapapi/map/MapStatus;

    .prologue
    .line 152
    iget-object v0, p0, Lcom/cat/tools/ZoomControlsView$1;->this$0:Lcom/cat/tools/ZoomControlsView;

    # invokes: Lcom/cat/tools/ZoomControlsView;->controlZoomShow()V
    invoke-static {v0}, Lcom/cat/tools/ZoomControlsView;->access$0(Lcom/cat/tools/ZoomControlsView;)V

    .line 153
    return-void
.end method

.method public onMapStatusChangeFinish(Lcom/baidu/mapapi/map/MapStatus;)V
    .locals 0
    .param p1, "arg0"    # Lcom/baidu/mapapi/map/MapStatus;

    .prologue
    .line 142
    return-void
.end method

.method public onMapStatusChangeStart(Lcom/baidu/mapapi/map/MapStatus;)V
    .locals 0
    .param p1, "arg0"    # Lcom/baidu/mapapi/map/MapStatus;

    .prologue
    .line 131
    return-void
.end method
