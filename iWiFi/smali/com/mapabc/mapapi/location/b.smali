.class Lcom/mapabc/mapapi/location/b;
.super Ljava/lang/Object;
.source "IAPSManager.java"

# interfaces
.implements Landroid/location/LocationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mapabc/mapapi/location/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/mapabc/mapapi/location/a;


# direct methods
.method constructor <init>(Lcom/mapabc/mapapi/location/a;)V
    .locals 0

    .prologue
    .line 252
    iput-object p1, p0, Lcom/mapabc/mapapi/location/b;->a:Lcom/mapabc/mapapi/location/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLocationChanged(Landroid/location/Location;)V
    .locals 1

    .prologue
    .line 255
    iget-object v0, p0, Lcom/mapabc/mapapi/location/b;->a:Lcom/mapabc/mapapi/location/a;

    invoke-static {v0, p1}, Lcom/mapabc/mapapi/location/a;->a(Lcom/mapabc/mapapi/location/a;Landroid/location/Location;)Landroid/location/Location;

    .line 256
    return-void
.end method

.method public onProviderDisabled(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 260
    return-void
.end method

.method public onProviderEnabled(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 264
    return-void
.end method

.method public onStatusChanged(Ljava/lang/String;ILandroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 268
    return-void
.end method
