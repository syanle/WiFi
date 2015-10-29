.class final Lcom/mapabc/mapapi/core/p;
.super Ljava/lang/Object;
.source "OverlayItem.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mapabc/mapapi/core/OverlayItem;
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
        "Lcom/mapabc/mapapi/core/OverlayItem;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/os/Parcel;)Lcom/mapabc/mapapi/core/OverlayItem;
    .locals 1

    .prologue
    .line 36
    new-instance v0, Lcom/mapabc/mapapi/core/OverlayItem;

    invoke-direct {v0, p1}, Lcom/mapabc/mapapi/core/OverlayItem;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public a(I)[Lcom/mapabc/mapapi/core/OverlayItem;
    .locals 1

    .prologue
    .line 40
    new-array v0, p1, [Lcom/mapabc/mapapi/core/OverlayItem;

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 34
    invoke-virtual {p0, p1}, Lcom/mapabc/mapapi/core/p;->a(Landroid/os/Parcel;)Lcom/mapabc/mapapi/core/OverlayItem;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 34
    invoke-virtual {p0, p1}, Lcom/mapabc/mapapi/core/p;->a(I)[Lcom/mapabc/mapapi/core/OverlayItem;

    move-result-object v0

    return-object v0
.end method
