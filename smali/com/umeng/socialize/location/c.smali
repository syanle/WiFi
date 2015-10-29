.class public Lcom/umeng/socialize/location/c;
.super Ljava/lang/Object;
.source "SocializeLocationListener.java"

# interfaces
.implements Landroid/location/LocationListener;


# instance fields
.field private a:Lcom/umeng/socialize/location/a;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    return-void
.end method


# virtual methods
.method public a(Lcom/umeng/socialize/location/a;)V
    .locals 0

    .prologue
    .line 40
    iput-object p1, p0, Lcom/umeng/socialize/location/c;->a:Lcom/umeng/socialize/location/a;

    .line 41
    return-void
.end method

.method public onLocationChanged(Landroid/location/Location;)V
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/umeng/socialize/location/c;->a:Lcom/umeng/socialize/location/a;

    if-eqz v0, :cond_0

    .line 34
    iget-object v0, p0, Lcom/umeng/socialize/location/c;->a:Lcom/umeng/socialize/location/a;

    invoke-virtual {v0, p1}, Lcom/umeng/socialize/location/a;->a(Landroid/location/Location;)V

    .line 35
    iget-object v0, p0, Lcom/umeng/socialize/location/c;->a:Lcom/umeng/socialize/location/a;

    invoke-virtual {v0}, Lcom/umeng/socialize/location/a;->c()Lcom/umeng/socialize/location/d;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/umeng/socialize/location/d;->a(Landroid/location/LocationListener;)V

    .line 37
    :cond_0
    return-void
.end method

.method public onProviderDisabled(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 29
    return-void
.end method

.method public onProviderEnabled(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 26
    return-void
.end method

.method public onStatusChanged(Ljava/lang/String;ILandroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 23
    return-void
.end method
