.class public Lcom/mapabc/mapapi/location/c;
.super Ljava/lang/Object;
.source "LocationListenerProxy.java"

# interfaces
.implements Landroid/location/LocationListener;


# instance fields
.field private a:Lcom/mapabc/mapapi/location/LocationManagerProxy;

.field private b:Landroid/location/LocationListener;


# direct methods
.method public constructor <init>(Lcom/mapabc/mapapi/location/LocationManagerProxy;)V
    .locals 1

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mapabc/mapapi/location/c;->b:Landroid/location/LocationListener;

    .line 12
    iput-object p1, p0, Lcom/mapabc/mapapi/location/c;->a:Lcom/mapabc/mapapi/location/LocationManagerProxy;

    .line 13
    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/mapabc/mapapi/location/c;->a:Lcom/mapabc/mapapi/location/LocationManagerProxy;

    if-eqz v0, :cond_0

    .line 45
    iget-object v0, p0, Lcom/mapabc/mapapi/location/c;->a:Lcom/mapabc/mapapi/location/LocationManagerProxy;

    invoke-virtual {v0, p0}, Lcom/mapabc/mapapi/location/LocationManagerProxy;->removeUpdates(Landroid/location/LocationListener;)V

    .line 47
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mapabc/mapapi/location/c;->b:Landroid/location/LocationListener;

    .line 48
    return-void
.end method

.method public a(Landroid/location/LocationListener;JF)Z
    .locals 8

    .prologue
    const/4 v6, 0x1

    .line 30
    const/4 v0, 0x0

    .line 31
    iput-object p1, p0, Lcom/mapabc/mapapi/location/c;->b:Landroid/location/LocationListener;

    .line 32
    iget-object v1, p0, Lcom/mapabc/mapapi/location/c;->a:Lcom/mapabc/mapapi/location/LocationManagerProxy;

    invoke-virtual {v1, v6}, Lcom/mapabc/mapapi/location/LocationManagerProxy;->getProviders(Z)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_0
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 33
    const-string v2, "gps"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "network"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 36
    :cond_1
    iget-object v0, p0, Lcom/mapabc/mapapi/location/c;->a:Lcom/mapabc/mapapi/location/LocationManagerProxy;

    move-wide v2, p2

    move v4, p4

    move-object v5, p0

    invoke-virtual/range {v0 .. v5}, Lcom/mapabc/mapapi/location/LocationManagerProxy;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;)V

    move v0, v6

    goto :goto_0

    .line 40
    :cond_2
    return v0
.end method

.method public a(Landroid/location/LocationListener;JFLjava/lang/String;)Z
    .locals 7

    .prologue
    .line 18
    const/4 v0, 0x0

    .line 19
    iput-object p1, p0, Lcom/mapabc/mapapi/location/c;->b:Landroid/location/LocationListener;

    .line 20
    const-string v1, "lbs"

    invoke-virtual {v1, p5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 21
    const/4 v6, 0x1

    .line 22
    iget-object v0, p0, Lcom/mapabc/mapapi/location/c;->a:Lcom/mapabc/mapapi/location/LocationManagerProxy;

    move-object v1, p5

    move-wide v2, p2

    move v4, p4

    move-object v5, p0

    invoke-virtual/range {v0 .. v5}, Lcom/mapabc/mapapi/location/LocationManagerProxy;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;)V

    move v0, v6

    .line 25
    :cond_0
    return v0
.end method

.method public onLocationChanged(Landroid/location/Location;)V
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/mapabc/mapapi/location/c;->b:Landroid/location/LocationListener;

    if-eqz v0, :cond_0

    .line 53
    iget-object v0, p0, Lcom/mapabc/mapapi/location/c;->b:Landroid/location/LocationListener;

    invoke-interface {v0, p1}, Landroid/location/LocationListener;->onLocationChanged(Landroid/location/Location;)V

    .line 55
    :cond_0
    return-void
.end method

.method public onProviderDisabled(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcom/mapabc/mapapi/location/c;->b:Landroid/location/LocationListener;

    if-eqz v0, :cond_0

    .line 74
    iget-object v0, p0, Lcom/mapabc/mapapi/location/c;->b:Landroid/location/LocationListener;

    invoke-interface {v0, p1}, Landroid/location/LocationListener;->onProviderDisabled(Ljava/lang/String;)V

    .line 76
    :cond_0
    return-void
.end method

.method public onProviderEnabled(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/mapabc/mapapi/location/c;->b:Landroid/location/LocationListener;

    if-eqz v0, :cond_0

    .line 67
    iget-object v0, p0, Lcom/mapabc/mapapi/location/c;->b:Landroid/location/LocationListener;

    invoke-interface {v0, p1}, Landroid/location/LocationListener;->onProviderEnabled(Ljava/lang/String;)V

    .line 69
    :cond_0
    return-void
.end method

.method public onStatusChanged(Ljava/lang/String;ILandroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/mapabc/mapapi/location/c;->b:Landroid/location/LocationListener;

    if-eqz v0, :cond_0

    .line 60
    iget-object v0, p0, Lcom/mapabc/mapapi/location/c;->b:Landroid/location/LocationListener;

    invoke-interface {v0, p1, p2, p3}, Landroid/location/LocationListener;->onStatusChanged(Ljava/lang/String;ILandroid/os/Bundle;)V

    .line 62
    :cond_0
    return-void
.end method
