.class Lcom/pubinfo/izhejiang/fragment/AroundFragment$2$1;
.super Ljava/lang/Object;
.source "AroundFragment.java"

# interfaces
.implements Lcom/baidu/mapapi/map/InfoWindow$OnInfoWindowClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pubinfo/izhejiang/fragment/AroundFragment$2;->onMarkerClick(Lcom/baidu/mapapi/map/Marker;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/pubinfo/izhejiang/fragment/AroundFragment$2;

.field private final synthetic val$marker:Lcom/baidu/mapapi/map/Marker;


# direct methods
.method constructor <init>(Lcom/pubinfo/izhejiang/fragment/AroundFragment$2;Lcom/baidu/mapapi/map/Marker;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/pubinfo/izhejiang/fragment/AroundFragment$2$1;->this$1:Lcom/pubinfo/izhejiang/fragment/AroundFragment$2;

    iput-object p2, p0, Lcom/pubinfo/izhejiang/fragment/AroundFragment$2$1;->val$marker:Lcom/baidu/mapapi/map/Marker;

    .line 284
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onInfoWindowClick()V
    .locals 6

    .prologue
    .line 286
    new-instance v0, Landroid/content/Intent;

    iget-object v4, p0, Lcom/pubinfo/izhejiang/fragment/AroundFragment$2$1;->this$1:Lcom/pubinfo/izhejiang/fragment/AroundFragment$2;

    # getter for: Lcom/pubinfo/izhejiang/fragment/AroundFragment$2;->this$0:Lcom/pubinfo/izhejiang/fragment/AroundFragment;
    invoke-static {v4}, Lcom/pubinfo/izhejiang/fragment/AroundFragment$2;->access$0(Lcom/pubinfo/izhejiang/fragment/AroundFragment$2;)Lcom/pubinfo/izhejiang/fragment/AroundFragment;

    move-result-object v4

    invoke-virtual {v4}, Lcom/pubinfo/izhejiang/fragment/AroundFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    .line 287
    const-class v5, Lcom/pubinfo/izhejiang/WebviewPage;

    .line 286
    invoke-direct {v0, v4, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 288
    .local v0, "intent":Landroid/content/Intent;
    const-string v4, "activity"

    const-string v5, "AroundFragment"

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 289
    iget-object v4, p0, Lcom/pubinfo/izhejiang/fragment/AroundFragment$2$1;->val$marker:Lcom/baidu/mapapi/map/Marker;

    invoke-virtual {v4}, Lcom/baidu/mapapi/map/Marker;->getPosition()Lcom/baidu/mapapi/model/LatLng;

    move-result-object v1

    .line 290
    .local v1, "latlng":Lcom/baidu/mapapi/model/LatLng;
    iget-wide v4, v1, Lcom/baidu/mapapi/model/LatLng;->latitude:D

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    .line 291
    .local v2, "maker_lat":Ljava/lang/Double;
    iget-wide v4, v1, Lcom/baidu/mapapi/model/LatLng;->longitude:D

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    .line 292
    .local v3, "maker_lon":Ljava/lang/Double;
    const-string v4, "url"

    iget-object v5, p0, Lcom/pubinfo/izhejiang/fragment/AroundFragment$2$1;->this$1:Lcom/pubinfo/izhejiang/fragment/AroundFragment$2;

    # getter for: Lcom/pubinfo/izhejiang/fragment/AroundFragment$2;->this$0:Lcom/pubinfo/izhejiang/fragment/AroundFragment;
    invoke-static {v5}, Lcom/pubinfo/izhejiang/fragment/AroundFragment$2;->access$0(Lcom/pubinfo/izhejiang/fragment/AroundFragment$2;)Lcom/pubinfo/izhejiang/fragment/AroundFragment;

    move-result-object v5

    iget-object v5, v5, Lcom/pubinfo/izhejiang/fragment/AroundFragment;->url:Ljava/lang/String;

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 293
    const-string v4, "name"

    iget-object v5, p0, Lcom/pubinfo/izhejiang/fragment/AroundFragment$2$1;->this$1:Lcom/pubinfo/izhejiang/fragment/AroundFragment$2;

    # getter for: Lcom/pubinfo/izhejiang/fragment/AroundFragment$2;->this$0:Lcom/pubinfo/izhejiang/fragment/AroundFragment;
    invoke-static {v5}, Lcom/pubinfo/izhejiang/fragment/AroundFragment$2;->access$0(Lcom/pubinfo/izhejiang/fragment/AroundFragment$2;)Lcom/pubinfo/izhejiang/fragment/AroundFragment;

    move-result-object v5

    iget-object v5, v5, Lcom/pubinfo/izhejiang/fragment/AroundFragment;->name:Ljava/lang/String;

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 294
    const-string v4, "goods"

    iget-object v5, p0, Lcom/pubinfo/izhejiang/fragment/AroundFragment$2$1;->this$1:Lcom/pubinfo/izhejiang/fragment/AroundFragment$2;

    # getter for: Lcom/pubinfo/izhejiang/fragment/AroundFragment$2;->this$0:Lcom/pubinfo/izhejiang/fragment/AroundFragment;
    invoke-static {v5}, Lcom/pubinfo/izhejiang/fragment/AroundFragment$2;->access$0(Lcom/pubinfo/izhejiang/fragment/AroundFragment$2;)Lcom/pubinfo/izhejiang/fragment/AroundFragment;

    move-result-object v5

    iget-object v5, v5, Lcom/pubinfo/izhejiang/fragment/AroundFragment;->goods:Ljava/lang/String;

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 295
    const-string v4, "type"

    iget-object v5, p0, Lcom/pubinfo/izhejiang/fragment/AroundFragment$2$1;->this$1:Lcom/pubinfo/izhejiang/fragment/AroundFragment$2;

    # getter for: Lcom/pubinfo/izhejiang/fragment/AroundFragment$2;->this$0:Lcom/pubinfo/izhejiang/fragment/AroundFragment;
    invoke-static {v5}, Lcom/pubinfo/izhejiang/fragment/AroundFragment$2;->access$0(Lcom/pubinfo/izhejiang/fragment/AroundFragment$2;)Lcom/pubinfo/izhejiang/fragment/AroundFragment;

    move-result-object v5

    iget-object v5, v5, Lcom/pubinfo/izhejiang/fragment/AroundFragment;->type:Ljava/lang/String;

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 296
    const-string v4, "lat"

    invoke-virtual {v0, v4, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 297
    const-string v4, "lon"

    invoke-virtual {v0, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 298
    iget-object v4, p0, Lcom/pubinfo/izhejiang/fragment/AroundFragment$2$1;->this$1:Lcom/pubinfo/izhejiang/fragment/AroundFragment$2;

    # getter for: Lcom/pubinfo/izhejiang/fragment/AroundFragment$2;->this$0:Lcom/pubinfo/izhejiang/fragment/AroundFragment;
    invoke-static {v4}, Lcom/pubinfo/izhejiang/fragment/AroundFragment$2;->access$0(Lcom/pubinfo/izhejiang/fragment/AroundFragment$2;)Lcom/pubinfo/izhejiang/fragment/AroundFragment;

    move-result-object v4

    const/4 v5, 0x1

    invoke-virtual {v4, v0, v5}, Lcom/pubinfo/izhejiang/fragment/AroundFragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 301
    return-void
.end method
