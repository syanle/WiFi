.class public Lcom/pubinfo/freewifialliance/location/LocationListenerProxy;
.super Ljava/lang/Object;
.source "LocationListenerProxy.java"

# interfaces
.implements Landroid/location/LocationListener;


# instance fields
.field private context:Landroid/content/Context;

.field private locationType:I

.field private mListener:Landroid/location/LocationListener;

.field private mLocationManager:Lcom/mapabc/mapapi/location/LocationManagerProxy;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/mapabc/mapapi/location/LocationManagerProxy;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "pLocationManager"    # Lcom/mapabc/mapapi/location/LocationManagerProxy;
    .param p3, "locationType"    # I

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/pubinfo/freewifialliance/location/LocationListenerProxy;->mListener:Landroid/location/LocationListener;

    .line 15
    const/4 v0, 0x0

    iput v0, p0, Lcom/pubinfo/freewifialliance/location/LocationListenerProxy;->locationType:I

    .line 18
    iput-object p2, p0, Lcom/pubinfo/freewifialliance/location/LocationListenerProxy;->mLocationManager:Lcom/mapabc/mapapi/location/LocationManagerProxy;

    .line 19
    iput p3, p0, Lcom/pubinfo/freewifialliance/location/LocationListenerProxy;->locationType:I

    .line 20
    iput-object p1, p0, Lcom/pubinfo/freewifialliance/location/LocationListenerProxy;->context:Landroid/content/Context;

    .line 21
    return-void
.end method


# virtual methods
.method public onLocationChanged(Landroid/location/Location;)V
    .locals 1
    .param p1, "location"    # Landroid/location/Location;

    .prologue
    .line 71
    iget-object v0, p0, Lcom/pubinfo/freewifialliance/location/LocationListenerProxy;->mListener:Landroid/location/LocationListener;

    if-eqz v0, :cond_0

    .line 72
    iget-object v0, p0, Lcom/pubinfo/freewifialliance/location/LocationListenerProxy;->mListener:Landroid/location/LocationListener;

    invoke-interface {v0, p1}, Landroid/location/LocationListener;->onLocationChanged(Landroid/location/Location;)V

    .line 74
    :cond_0
    return-void
.end method

.method public onProviderDisabled(Ljava/lang/String;)V
    .locals 1
    .param p1, "arg0"    # Ljava/lang/String;

    .prologue
    .line 77
    iget-object v0, p0, Lcom/pubinfo/freewifialliance/location/LocationListenerProxy;->mListener:Landroid/location/LocationListener;

    if-eqz v0, :cond_0

    .line 78
    iget-object v0, p0, Lcom/pubinfo/freewifialliance/location/LocationListenerProxy;->mListener:Landroid/location/LocationListener;

    invoke-interface {v0, p1}, Landroid/location/LocationListener;->onProviderDisabled(Ljava/lang/String;)V

    .line 80
    :cond_0
    return-void
.end method

.method public onProviderEnabled(Ljava/lang/String;)V
    .locals 1
    .param p1, "arg0"    # Ljava/lang/String;

    .prologue
    .line 83
    iget-object v0, p0, Lcom/pubinfo/freewifialliance/location/LocationListenerProxy;->mListener:Landroid/location/LocationListener;

    if-eqz v0, :cond_0

    .line 84
    iget-object v0, p0, Lcom/pubinfo/freewifialliance/location/LocationListenerProxy;->mListener:Landroid/location/LocationListener;

    invoke-interface {v0, p1}, Landroid/location/LocationListener;->onProviderEnabled(Ljava/lang/String;)V

    .line 86
    :cond_0
    return-void
.end method

.method public onStatusChanged(Ljava/lang/String;ILandroid/os/Bundle;)V
    .locals 1
    .param p1, "arg0"    # Ljava/lang/String;
    .param p2, "arg1"    # I
    .param p3, "arg2"    # Landroid/os/Bundle;

    .prologue
    .line 89
    iget-object v0, p0, Lcom/pubinfo/freewifialliance/location/LocationListenerProxy;->mListener:Landroid/location/LocationListener;

    if-eqz v0, :cond_0

    .line 90
    iget-object v0, p0, Lcom/pubinfo/freewifialliance/location/LocationListenerProxy;->mListener:Landroid/location/LocationListener;

    invoke-interface {v0, p1, p2, p3}, Landroid/location/LocationListener;->onStatusChanged(Ljava/lang/String;ILandroid/os/Bundle;)V

    .line 92
    :cond_0
    return-void
.end method

.method public startListening(Landroid/location/LocationListener;JF)Z
    .locals 8
    .param p1, "pListener"    # Landroid/location/LocationListener;
    .param p2, "pUpdateTime"    # J
    .param p4, "pUpdateDistance"    # F

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 25
    const/4 v6, 0x0

    .line 26
    .local v6, "result":Z
    iput-object p1, p0, Lcom/pubinfo/freewifialliance/location/LocationListenerProxy;->mListener:Landroid/location/LocationListener;

    .line 28
    iget-object v0, p0, Lcom/pubinfo/freewifialliance/location/LocationListenerProxy;->mLocationManager:Lcom/mapabc/mapapi/location/LocationManagerProxy;

    invoke-virtual {v0, v3}, Lcom/mapabc/mapapi/location/LocationManagerProxy;->getProviders(Z)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_1

    move v7, v6

    .line 53
    .end local v6    # "result":Z
    .local v7, "result":I
    :goto_0
    return v7

    .line 28
    .end local v7    # "result":I
    .restart local v6    # "result":Z
    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 29
    .local v1, "provider":Ljava/lang/String;
    iget v2, p0, Lcom/pubinfo/freewifialliance/location/LocationListenerProxy;->locationType:I

    if-ne v2, v3, :cond_2

    iget-object v2, p0, Lcom/pubinfo/freewifialliance/location/LocationListenerProxy;->context:Landroid/content/Context;

    invoke-static {v2}, Lcom/pubinfo/freewifialliance/view/WelcomePage;->isOPen(Landroid/content/Context;)I

    move-result v2

    if-ne v2, v3, :cond_2

    .line 30
    const-string v2, "gps"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 31
    const/4 v6, 0x1

    .line 32
    iget-object v0, p0, Lcom/pubinfo/freewifialliance/location/LocationListenerProxy;->mLocationManager:Lcom/mapabc/mapapi/location/LocationManagerProxy;

    move-wide v2, p2

    move v4, p4

    move-object v5, p0

    invoke-virtual/range {v0 .. v5}, Lcom/mapabc/mapapi/location/LocationManagerProxy;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;)V

    move v7, v6

    .line 34
    .restart local v7    # "result":I
    goto :goto_0

    .line 36
    .end local v7    # "result":I
    :cond_2
    iget v2, p0, Lcom/pubinfo/freewifialliance/location/LocationListenerProxy;->locationType:I

    if-ne v2, v4, :cond_3

    iget-object v2, p0, Lcom/pubinfo/freewifialliance/location/LocationListenerProxy;->context:Landroid/content/Context;

    invoke-static {v2}, Lcom/pubinfo/freewifialliance/view/WelcomePage;->isOPen(Landroid/content/Context;)I

    move-result v2

    if-ne v2, v4, :cond_3

    .line 37
    const-string v2, "lbs"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 38
    const/4 v6, 0x1

    .line 39
    iget-object v0, p0, Lcom/pubinfo/freewifialliance/location/LocationListenerProxy;->mLocationManager:Lcom/mapabc/mapapi/location/LocationManagerProxy;

    move-wide v2, p2

    move v4, p4

    move-object v5, p0

    invoke-virtual/range {v0 .. v5}, Lcom/mapabc/mapapi/location/LocationManagerProxy;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;)V

    move v7, v6

    .line 41
    .restart local v7    # "result":I
    goto :goto_0

    .line 43
    .end local v7    # "result":I
    :cond_3
    iget v2, p0, Lcom/pubinfo/freewifialliance/location/LocationListenerProxy;->locationType:I

    if-nez v2, :cond_0

    .line 44
    const-string v2, "gps"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    const-string v2, "lbs"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 46
    :cond_4
    const/4 v6, 0x1

    .line 47
    iget-object v0, p0, Lcom/pubinfo/freewifialliance/location/LocationListenerProxy;->mLocationManager:Lcom/mapabc/mapapi/location/LocationManagerProxy;

    move-wide v2, p2

    move v4, p4

    move-object v5, p0

    invoke-virtual/range {v0 .. v5}, Lcom/mapabc/mapapi/location/LocationManagerProxy;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;)V

    move v7, v6

    .line 49
    .restart local v7    # "result":I
    goto :goto_0
.end method

.method public stopListening()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 58
    const/4 v1, 0x0

    :try_start_0
    iput-object v1, p0, Lcom/pubinfo/freewifialliance/location/LocationListenerProxy;->mListener:Landroid/location/LocationListener;

    .line 59
    iget-object v1, p0, Lcom/pubinfo/freewifialliance/location/LocationListenerProxy;->mLocationManager:Lcom/mapabc/mapapi/location/LocationManagerProxy;

    if-eqz v1, :cond_0

    .line 60
    iget-object v1, p0, Lcom/pubinfo/freewifialliance/location/LocationListenerProxy;->mLocationManager:Lcom/mapabc/mapapi/location/LocationManagerProxy;

    invoke-virtual {v1, p0}, Lcom/mapabc/mapapi/location/LocationManagerProxy;->removeUpdates(Landroid/location/LocationListener;)V

    .line 61
    iget-object v1, p0, Lcom/pubinfo/freewifialliance/location/LocationListenerProxy;->mLocationManager:Lcom/mapabc/mapapi/location/LocationManagerProxy;

    invoke-virtual {v1}, Lcom/mapabc/mapapi/location/LocationManagerProxy;->destory()V

    .line 62
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/pubinfo/freewifialliance/location/LocationListenerProxy;->mLocationManager:Lcom/mapabc/mapapi/location/LocationManagerProxy;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 68
    :cond_0
    :goto_0
    return-void

    .line 64
    :catch_0
    move-exception v0

    .line 65
    .local v0, "e":Ljava/lang/Exception;
    iput-object v2, p0, Lcom/pubinfo/freewifialliance/location/LocationListenerProxy;->mLocationManager:Lcom/mapabc/mapapi/location/LocationManagerProxy;

    goto :goto_0
.end method
