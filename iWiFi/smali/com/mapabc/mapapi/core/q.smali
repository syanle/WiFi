.class final Lcom/mapabc/mapapi/core/q;
.super Ljava/lang/Object;
.source "PoiItem.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mapabc/mapapi/core/PoiItem;
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
        "Lcom/mapabc/mapapi/core/PoiItem;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/os/Parcel;)Lcom/mapabc/mapapi/core/PoiItem;
    .locals 2

    .prologue
    .line 32
    new-instance v0, Lcom/mapabc/mapapi/core/PoiItem;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/mapabc/mapapi/core/PoiItem;-><init>(Landroid/os/Parcel;Lcom/mapabc/mapapi/core/q;)V

    return-object v0
.end method

.method public a(I)[Lcom/mapabc/mapapi/core/PoiItem;
    .locals 1

    .prologue
    .line 36
    new-array v0, p1, [Lcom/mapabc/mapapi/core/PoiItem;

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 30
    invoke-virtual {p0, p1}, Lcom/mapabc/mapapi/core/q;->a(Landroid/os/Parcel;)Lcom/mapabc/mapapi/core/PoiItem;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 30
    invoke-virtual {p0, p1}, Lcom/mapabc/mapapi/core/q;->a(I)[Lcom/mapabc/mapapi/core/PoiItem;

    move-result-object v0

    return-object v0
.end method
