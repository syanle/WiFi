.class final Lcom/mapabc/mapapi/core/h;
.super Ljava/lang/Object;
.source "GeoPoint.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mapabc/mapapi/core/GeoPoint;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/mapabc/mapapi/core/GeoPoint;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 346
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/os/Parcel;)Lcom/mapabc/mapapi/core/GeoPoint;
    .locals 2

    .prologue
    .line 348
    new-instance v0, Lcom/mapabc/mapapi/core/GeoPoint;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/mapabc/mapapi/core/GeoPoint;-><init>(Landroid/os/Parcel;Lcom/mapabc/mapapi/core/h;)V

    return-object v0
.end method

.method public a(I)[Lcom/mapabc/mapapi/core/GeoPoint;
    .locals 1

    .prologue
    .line 352
    new-array v0, p1, [Lcom/mapabc/mapapi/core/GeoPoint;

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 346
    invoke-virtual {p0, p1}, Lcom/mapabc/mapapi/core/h;->a(Landroid/os/Parcel;)Lcom/mapabc/mapapi/core/GeoPoint;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 346
    invoke-virtual {p0, p1}, Lcom/mapabc/mapapi/core/h;->a(I)[Lcom/mapabc/mapapi/core/GeoPoint;

    move-result-object v0

    return-object v0
.end method
