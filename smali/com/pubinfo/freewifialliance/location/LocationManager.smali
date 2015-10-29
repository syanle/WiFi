.class public Lcom/pubinfo/freewifialliance/location/LocationManager;
.super Ljava/lang/Object;
.source "LocationManager.java"

# interfaces
.implements Landroid/location/LocationListener;
.implements Landroid/os/Handler$Callback;


# static fields
.field public static addressName:Ljava/lang/String; = null

.field public static geoLat:Ljava/lang/Double; = null

.field public static geoLng:Ljava/lang/Double; = null

.field private static final mLocationUpdateMinDistance:F = 0.0f

.field private static final mLocationUpdateMinTime:J = 0x3e8L


# instance fields
.field private address:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/location/Address;",
            ">;"
        }
    .end annotation
.end field

.field private coder:Lcom/mapabc/mapapi/geocoder/Geocoder;

.field private context:Landroid/content/Context;

.field private handler:Landroid/os/Handler;

.field private locationManager:Lcom/mapabc/mapapi/location/LocationManagerProxy;

.field private locationType:I

.field private mLocationListener:Lcom/pubinfo/freewifialliance/location/LocationListenerProxy;

.field private m_handler:Landroid/os/Handler;

.field private maps_api_key:Ljava/lang/String;


# direct methods
.method public constructor <init>(ILandroid/content/Context;Landroid/os/Handler;)V
    .locals 2
    .param p1, "locationType"    # I
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "m_handler"    # Landroid/os/Handler;

    .prologue
    const/4 v0, 0x0

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object v0, p0, Lcom/pubinfo/freewifialliance/location/LocationManager;->locationManager:Lcom/mapabc/mapapi/location/LocationManagerProxy;

    .line 24
    iput-object v0, p0, Lcom/pubinfo/freewifialliance/location/LocationManager;->mLocationListener:Lcom/pubinfo/freewifialliance/location/LocationListenerProxy;

    .line 34
    const-string v0, "c2b0f58a6f09cafd1503c06ef08ac7aeb7ddb91a0f5e16007f475128bca0d86544b2e9c9c0ecb4bb"

    iput-object v0, p0, Lcom/pubinfo/freewifialliance/location/LocationManager;->maps_api_key:Ljava/lang/String;

    .line 36
    const/4 v0, 0x0

    iput v0, p0, Lcom/pubinfo/freewifialliance/location/LocationManager;->locationType:I

    .line 39
    iput-object p2, p0, Lcom/pubinfo/freewifialliance/location/LocationManager;->context:Landroid/content/Context;

    .line 40
    iput-object p3, p0, Lcom/pubinfo/freewifialliance/location/LocationManager;->m_handler:Landroid/os/Handler;

    .line 41
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0, p0}, Landroid/os/Handler;-><init>(Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/pubinfo/freewifialliance/location/LocationManager;->handler:Landroid/os/Handler;

    .line 42
    iput p1, p0, Lcom/pubinfo/freewifialliance/location/LocationManager;->locationType:I

    .line 43
    new-instance v0, Lcom/mapabc/mapapi/geocoder/Geocoder;

    iget-object v1, p0, Lcom/pubinfo/freewifialliance/location/LocationManager;->maps_api_key:Ljava/lang/String;

    invoke-direct {v0, p2, v1}, Lcom/mapabc/mapapi/geocoder/Geocoder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/pubinfo/freewifialliance/location/LocationManager;->coder:Lcom/mapabc/mapapi/geocoder/Geocoder;

    .line 46
    return-void
.end method

.method static synthetic access$0(Lcom/pubinfo/freewifialliance/location/LocationManager;)Ljava/util/List;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/pubinfo/freewifialliance/location/LocationManager;->address:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$1(Lcom/pubinfo/freewifialliance/location/LocationManager;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lcom/pubinfo/freewifialliance/location/LocationManager;->handler:Landroid/os/Handler;

    return-object v0
.end method


# virtual methods
.method public disableMyLocation()V
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/pubinfo/freewifialliance/location/LocationManager;->mLocationListener:Lcom/pubinfo/freewifialliance/location/LocationListenerProxy;

    if-eqz v0, :cond_0

    .line 67
    iget-object v0, p0, Lcom/pubinfo/freewifialliance/location/LocationManager;->mLocationListener:Lcom/pubinfo/freewifialliance/location/LocationListenerProxy;

    invoke-virtual {v0}, Lcom/pubinfo/freewifialliance/location/LocationListenerProxy;->stopListening()V

    .line 69
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/pubinfo/freewifialliance/location/LocationManager;->mLocationListener:Lcom/pubinfo/freewifialliance/location/LocationListenerProxy;

    .line 70
    return-void
.end method

.method public enableMyLocation()Z
    .locals 5

    .prologue
    .line 56
    const/4 v0, 0x1

    .line 57
    .local v0, "result":Z
    iget-object v1, p0, Lcom/pubinfo/freewifialliance/location/LocationManager;->mLocationListener:Lcom/pubinfo/freewifialliance/location/LocationListenerProxy;

    if-nez v1, :cond_0

    .line 58
    new-instance v1, Lcom/pubinfo/freewifialliance/location/LocationListenerProxy;

    iget-object v2, p0, Lcom/pubinfo/freewifialliance/location/LocationManager;->context:Landroid/content/Context;

    iget-object v3, p0, Lcom/pubinfo/freewifialliance/location/LocationManager;->locationManager:Lcom/mapabc/mapapi/location/LocationManagerProxy;

    iget v4, p0, Lcom/pubinfo/freewifialliance/location/LocationManager;->locationType:I

    invoke-direct {v1, v2, v3, v4}, Lcom/pubinfo/freewifialliance/location/LocationListenerProxy;-><init>(Landroid/content/Context;Lcom/mapabc/mapapi/location/LocationManagerProxy;I)V

    iput-object v1, p0, Lcom/pubinfo/freewifialliance/location/LocationManager;->mLocationListener:Lcom/pubinfo/freewifialliance/location/LocationListenerProxy;

    .line 59
    iget-object v1, p0, Lcom/pubinfo/freewifialliance/location/LocationManager;->mLocationListener:Lcom/pubinfo/freewifialliance/location/LocationListenerProxy;

    .line 60
    const-wide/16 v2, 0x3e8

    const/4 v4, 0x0

    .line 59
    invoke-virtual {v1, p0, v2, v3, v4}, Lcom/pubinfo/freewifialliance/location/LocationListenerProxy;->startListening(Landroid/location/LocationListener;JF)Z

    move-result v0

    .line 62
    :cond_0
    return v0
.end method

.method public getAddress(DD)V
    .locals 2
    .param p1, "mlat"    # D
    .param p3, "mLon"    # D

    .prologue
    .line 148
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/pubinfo/freewifialliance/location/LocationManager$1;

    invoke-direct {v1, p0}, Lcom/pubinfo/freewifialliance/location/LocationManager$1;-><init>(Lcom/pubinfo/freewifialliance/location/LocationManager;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 169
    .local v0, "t":Ljava/lang/Thread;
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 170
    return-void
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .locals 6
    .param p1, "arg0"    # Landroid/os/Message;

    .prologue
    const/4 v5, 0x0

    .line 102
    iget v3, p1, Landroid/os/Message;->what:I

    packed-switch v3, :pswitch_data_0

    .line 144
    :cond_0
    :goto_0
    return v5

    .line 106
    :pswitch_0
    :try_start_0
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    .line 107
    .local v1, "msg":Landroid/os/Message;
    const/16 v3, 0x3e1

    iput v3, v1, Landroid/os/Message;->what:I

    .line 108
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/pubinfo/freewifialliance/location/LocationManager;->geoLng:Ljava/lang/Double;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "&&"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/pubinfo/freewifialliance/location/LocationManager;->geoLat:Ljava/lang/Double;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 109
    iget v3, p0, Lcom/pubinfo/freewifialliance/location/LocationManager;->locationType:I

    iput v3, v1, Landroid/os/Message;->arg1:I

    .line 110
    iget-object v3, p0, Lcom/pubinfo/freewifialliance/location/LocationManager;->m_handler:Landroid/os/Handler;

    invoke-virtual {v3, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 112
    iget-object v3, p0, Lcom/pubinfo/freewifialliance/location/LocationManager;->mLocationListener:Lcom/pubinfo/freewifialliance/location/LocationListenerProxy;

    if-eqz v3, :cond_0

    .line 113
    invoke-virtual {p0}, Lcom/pubinfo/freewifialliance/location/LocationManager;->disableMyLocation()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 117
    .end local v1    # "msg":Landroid/os/Message;
    :catch_0
    move-exception v3

    goto :goto_0

    .line 122
    :pswitch_1
    iget-object v3, p0, Lcom/pubinfo/freewifialliance/location/LocationManager;->address:Ljava/util/List;

    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/Address;

    .line 124
    .local v0, "addres":Landroid/location/Address;
    invoke-virtual {v0}, Landroid/location/Address;->getPremises()Ljava/lang/String;

    move-result-object v2

    .line 125
    .local v2, "type":Ljava/lang/String;
    invoke-virtual {v0}, Landroid/location/Address;->getAdminArea()Ljava/lang/String;

    move-result-object v3

    sput-object v3, Lcom/pubinfo/freewifialliance/location/LocationManager;->addressName:Ljava/lang/String;

    .line 126
    invoke-virtual {v0}, Landroid/location/Address;->getLocality()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 127
    sget-object v3, Lcom/pubinfo/freewifialliance/location/LocationManager;->addressName:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/location/Address;->getLocality()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    sput-object v3, Lcom/pubinfo/freewifialliance/location/LocationManager;->addressName:Ljava/lang/String;

    .line 129
    :cond_1
    invoke-virtual {v0}, Landroid/location/Address;->getSubLocality()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 130
    sget-object v3, Lcom/pubinfo/freewifialliance/location/LocationManager;->addressName:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/location/Address;->getSubLocality()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    sput-object v3, Lcom/pubinfo/freewifialliance/location/LocationManager;->addressName:Ljava/lang/String;

    .line 132
    :cond_2
    sget-object v3, Lcom/pubinfo/freewifialliance/location/LocationManager;->addressName:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/location/Address;->getFeatureName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    sput-object v3, Lcom/pubinfo/freewifialliance/location/LocationManager;->addressName:Ljava/lang/String;

    .line 133
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    .line 134
    .restart local v1    # "msg":Landroid/os/Message;
    const/16 v3, 0x3dc

    iput v3, v1, Landroid/os/Message;->what:I

    .line 135
    sget-object v3, Lcom/pubinfo/freewifialliance/location/LocationManager;->addressName:Ljava/lang/String;

    iput-object v3, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 136
    iget-object v3, p0, Lcom/pubinfo/freewifialliance/location/LocationManager;->m_handler:Landroid/os/Handler;

    invoke-virtual {v3, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0

    .line 102
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onLocationChanged(Landroid/location/Location;)V
    .locals 2
    .param p1, "location"    # Landroid/location/Location;

    .prologue
    .line 75
    if-eqz p1, :cond_0

    .line 76
    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    sput-object v0, Lcom/pubinfo/freewifialliance/location/LocationManager;->geoLat:Ljava/lang/Double;

    .line 77
    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    sput-object v0, Lcom/pubinfo/freewifialliance/location/LocationManager;->geoLng:Ljava/lang/Double;

    .line 78
    iget-object v0, p0, Lcom/pubinfo/freewifialliance/location/LocationManager;->handler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 80
    :cond_0
    return-void
.end method

.method public onProviderDisabled(Ljava/lang/String;)V
    .locals 0
    .param p1, "provider"    # Ljava/lang/String;

    .prologue
    .line 86
    return-void
.end method

.method public onProviderEnabled(Ljava/lang/String;)V
    .locals 0
    .param p1, "provider"    # Ljava/lang/String;

    .prologue
    .line 92
    return-void
.end method

.method public onStart()V
    .locals 2

    .prologue
    .line 48
    iget-object v0, p0, Lcom/pubinfo/freewifialliance/location/LocationManager;->context:Landroid/content/Context;

    iget-object v1, p0, Lcom/pubinfo/freewifialliance/location/LocationManager;->maps_api_key:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/mapabc/mapapi/location/LocationManagerProxy;->getInstance(Landroid/content/Context;Ljava/lang/String;)Lcom/mapabc/mapapi/location/LocationManagerProxy;

    move-result-object v0

    iput-object v0, p0, Lcom/pubinfo/freewifialliance/location/LocationManager;->locationManager:Lcom/mapabc/mapapi/location/LocationManagerProxy;

    .line 49
    invoke-virtual {p0}, Lcom/pubinfo/freewifialliance/location/LocationManager;->enableMyLocation()Z

    .line 50
    return-void
.end method

.method public onStatusChanged(Ljava/lang/String;ILandroid/os/Bundle;)V
    .locals 0
    .param p1, "provider"    # Ljava/lang/String;
    .param p2, "status"    # I
    .param p3, "extras"    # Landroid/os/Bundle;

    .prologue
    .line 98
    return-void
.end method

.method public onStop()V
    .locals 0

    .prologue
    .line 52
    invoke-virtual {p0}, Lcom/pubinfo/freewifialliance/location/LocationManager;->disableMyLocation()V

    .line 53
    return-void
.end method
