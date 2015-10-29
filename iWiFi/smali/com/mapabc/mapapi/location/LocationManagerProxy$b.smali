.class Lcom/mapabc/mapapi/location/LocationManagerProxy$b;
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
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Lcom/mapabc/mapapi/location/LocationManagerProxy;


# direct methods
.method constructor <init>(Lcom/mapabc/mapapi/location/LocationManagerProxy;)V
    .locals 0

    .prologue
    .line 369
    iput-object p1, p0, Lcom/mapabc/mapapi/location/LocationManagerProxy$b;->a:Lcom/mapabc/mapapi/location/LocationManagerProxy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLocationChanged(Landroid/location/Location;)V
    .locals 5

    .prologue
    .line 372
    iget-object v0, p0, Lcom/mapabc/mapapi/location/LocationManagerProxy$b;->a:Lcom/mapabc/mapapi/location/LocationManagerProxy;

    invoke-static {v0}, Lcom/mapabc/mapapi/location/LocationManagerProxy;->a(Lcom/mapabc/mapapi/location/LocationManagerProxy;)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mapabc/mapapi/location/LocationManagerProxy$b;->a:Lcom/mapabc/mapapi/location/LocationManagerProxy;

    invoke-static {v0}, Lcom/mapabc/mapapi/location/LocationManagerProxy;->a(Lcom/mapabc/mapapi/location/LocationManagerProxy;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 373
    iget-object v0, p0, Lcom/mapabc/mapapi/location/LocationManagerProxy$b;->a:Lcom/mapabc/mapapi/location/LocationManagerProxy;

    invoke-static {v0}, Lcom/mapabc/mapapi/location/LocationManagerProxy;->a(Lcom/mapabc/mapapi/location/LocationManagerProxy;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/PendingIntent;

    .line 374
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 375
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 376
    const-string v4, "location"

    invoke-virtual {v3, v4, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 378
    invoke-virtual {v2, v3}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 380
    :try_start_0
    iget-object v3, p0, Lcom/mapabc/mapapi/location/LocationManagerProxy$b;->a:Lcom/mapabc/mapapi/location/LocationManagerProxy;

    invoke-static {v3}, Lcom/mapabc/mapapi/location/LocationManagerProxy;->b(Lcom/mapabc/mapapi/location/LocationManagerProxy;)Landroid/content/Context;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4, v2}, Landroid/app/PendingIntent;->send(Landroid/content/Context;ILandroid/content/Intent;)V
    :try_end_0
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 381
    :catch_0
    move-exception v0

    .line 382
    invoke-virtual {v0}, Landroid/app/PendingIntent$CanceledException;->printStackTrace()V

    goto :goto_0

    .line 386
    :cond_0
    return-void
.end method

.method public onProviderDisabled(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 398
    return-void
.end method

.method public onProviderEnabled(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 394
    return-void
.end method

.method public onStatusChanged(Ljava/lang/String;ILandroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 390
    return-void
.end method
