.class Lcom/mapabc/mapapi/location/LocationManagerProxy$a;
.super Ljava/lang/Object;
.source "LocationManagerProxy.java"

# interfaces
.implements Landroid/location/LocationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mapabc/mapapi/location/LocationManagerProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/mapabc/mapapi/location/LocationManagerProxy;


# direct methods
.method constructor <init>(Lcom/mapabc/mapapi/location/LocationManagerProxy;)V
    .locals 0

    .prologue
    .line 401
    iput-object p1, p0, Lcom/mapabc/mapapi/location/LocationManagerProxy$a;->a:Lcom/mapabc/mapapi/location/LocationManagerProxy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLocationChanged(Landroid/location/Location;)V
    .locals 8

    .prologue
    .line 404
    iget-object v0, p0, Lcom/mapabc/mapapi/location/LocationManagerProxy$a;->a:Lcom/mapabc/mapapi/location/LocationManagerProxy;

    invoke-static {v0}, Lcom/mapabc/mapapi/location/LocationManagerProxy;->c(Lcom/mapabc/mapapi/location/LocationManagerProxy;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/mapabc/mapapi/location/LocationManagerProxy$a;->a:Lcom/mapabc/mapapi/location/LocationManagerProxy;

    invoke-static {v0}, Lcom/mapabc/mapapi/location/LocationManagerProxy;->d(Lcom/mapabc/mapapi/location/LocationManagerProxy;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_2

    .line 405
    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v0

    .line 406
    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v2

    .line 407
    iget-object v4, p0, Lcom/mapabc/mapapi/location/LocationManagerProxy$a;->a:Lcom/mapabc/mapapi/location/LocationManagerProxy;

    invoke-static {v4}, Lcom/mapabc/mapapi/location/LocationManagerProxy;->e(Lcom/mapabc/mapapi/location/LocationManagerProxy;)D

    move-result-wide v4

    sub-double v4, v0, v4

    iget-object v6, p0, Lcom/mapabc/mapapi/location/LocationManagerProxy$a;->a:Lcom/mapabc/mapapi/location/LocationManagerProxy;

    invoke-static {v6}, Lcom/mapabc/mapapi/location/LocationManagerProxy;->e(Lcom/mapabc/mapapi/location/LocationManagerProxy;)D

    move-result-wide v6

    sub-double/2addr v0, v6

    mul-double/2addr v0, v4

    iget-object v4, p0, Lcom/mapabc/mapapi/location/LocationManagerProxy$a;->a:Lcom/mapabc/mapapi/location/LocationManagerProxy;

    invoke-static {v4}, Lcom/mapabc/mapapi/location/LocationManagerProxy;->f(Lcom/mapabc/mapapi/location/LocationManagerProxy;)D

    move-result-wide v4

    sub-double v4, v2, v4

    iget-object v6, p0, Lcom/mapabc/mapapi/location/LocationManagerProxy$a;->a:Lcom/mapabc/mapapi/location/LocationManagerProxy;

    invoke-static {v6}, Lcom/mapabc/mapapi/location/LocationManagerProxy;->f(Lcom/mapabc/mapapi/location/LocationManagerProxy;)D

    move-result-wide v6

    sub-double/2addr v2, v6

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v1

    .line 412
    iget-object v0, p0, Lcom/mapabc/mapapi/location/LocationManagerProxy$a;->a:Lcom/mapabc/mapapi/location/LocationManagerProxy;

    invoke-static {v0}, Lcom/mapabc/mapapi/location/LocationManagerProxy;->d(Lcom/mapabc/mapapi/location/LocationManagerProxy;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/PendingIntent;

    .line 413
    invoke-static {}, Lcom/mapabc/mapapi/core/e;->c()J

    move-result-wide v4

    .line 414
    iget-object v6, p0, Lcom/mapabc/mapapi/location/LocationManagerProxy$a;->a:Lcom/mapabc/mapapi/location/LocationManagerProxy;

    invoke-static {v6}, Lcom/mapabc/mapapi/location/LocationManagerProxy;->g(Lcom/mapabc/mapapi/location/LocationManagerProxy;)J

    move-result-wide v6

    cmp-long v4, v4, v6

    if-lez v4, :cond_1

    iget-object v4, p0, Lcom/mapabc/mapapi/location/LocationManagerProxy$a;->a:Lcom/mapabc/mapapi/location/LocationManagerProxy;

    invoke-static {v4}, Lcom/mapabc/mapapi/location/LocationManagerProxy;->g(Lcom/mapabc/mapapi/location/LocationManagerProxy;)J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-eqz v4, :cond_1

    .line 415
    iget-object v4, p0, Lcom/mapabc/mapapi/location/LocationManagerProxy$a;->a:Lcom/mapabc/mapapi/location/LocationManagerProxy;

    invoke-virtual {v4, v0}, Lcom/mapabc/mapapi/location/LocationManagerProxy;->removeProximityAlert(Landroid/app/PendingIntent;)V

    goto :goto_0

    .line 417
    :cond_1
    iget-object v4, p0, Lcom/mapabc/mapapi/location/LocationManagerProxy$a;->a:Lcom/mapabc/mapapi/location/LocationManagerProxy;

    invoke-static {v4}, Lcom/mapabc/mapapi/location/LocationManagerProxy;->h(Lcom/mapabc/mapapi/location/LocationManagerProxy;)D

    move-result-wide v4

    iget-object v6, p0, Lcom/mapabc/mapapi/location/LocationManagerProxy$a;->a:Lcom/mapabc/mapapi/location/LocationManagerProxy;

    invoke-static {v6}, Lcom/mapabc/mapapi/location/LocationManagerProxy;->h(Lcom/mapabc/mapapi/location/LocationManagerProxy;)D

    move-result-wide v6

    mul-double/2addr v4, v6

    sub-double v4, v1, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->abs(D)D

    move-result-wide v4

    .line 419
    const-wide/high16 v6, 0x3fe0000000000000L    # 0.5

    cmpg-double v4, v4, v6

    if-gez v4, :cond_0

    .line 420
    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    .line 421
    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    .line 422
    const-string v6, "location"

    invoke-virtual {v5, v6, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 425
    invoke-virtual {v4, v5}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 427
    :try_start_0
    iget-object v5, p0, Lcom/mapabc/mapapi/location/LocationManagerProxy$a;->a:Lcom/mapabc/mapapi/location/LocationManagerProxy;

    invoke-static {v5}, Lcom/mapabc/mapapi/location/LocationManagerProxy;->b(Lcom/mapabc/mapapi/location/LocationManagerProxy;)Landroid/content/Context;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v0, v5, v6, v4}, Landroid/app/PendingIntent;->send(Landroid/content/Context;ILandroid/content/Intent;)V
    :try_end_0
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 428
    :catch_0
    move-exception v0

    .line 429
    invoke-virtual {v0}, Landroid/app/PendingIntent$CanceledException;->printStackTrace()V

    goto :goto_0

    .line 435
    :cond_2
    return-void
.end method

.method public onProviderDisabled(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 447
    return-void
.end method

.method public onProviderEnabled(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 443
    return-void
.end method

.method public onStatusChanged(Ljava/lang/String;ILandroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 439
    return-void
.end method
