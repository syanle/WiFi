.class public Lcom/mapabc/mapapi/core/PoiItem;
.super Lcom/mapabc/mapapi/core/OverlayItem;
.source "PoiItem.java"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/mapabc/mapapi/core/PoiItem;",
            ">;"
        }
    .end annotation
.end field

.field public static final DesSplit:Ljava/lang/String; = " - "


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 30
    new-instance v0, Lcom/mapabc/mapapi/core/q;

    invoke-direct {v0}, Lcom/mapabc/mapapi/core/q;-><init>()V

    sput-object v0, Lcom/mapabc/mapapi/core/PoiItem;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .prologue
    .line 22
    invoke-direct {p0, p1}, Lcom/mapabc/mapapi/core/OverlayItem;-><init>(Landroid/os/Parcel;)V

    .line 11
    const-string v0, ""

    iput-object v0, p0, Lcom/mapabc/mapapi/core/PoiItem;->e:Ljava/lang/String;

    .line 23
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mapabc/mapapi/core/PoiItem;->a:Ljava/lang/String;

    .line 24
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mapabc/mapapi/core/PoiItem;->d:Ljava/lang/String;

    .line 25
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mapabc/mapapi/core/PoiItem;->c:Ljava/lang/String;

    .line 26
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mapabc/mapapi/core/PoiItem;->b:Ljava/lang/String;

    .line 27
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mapabc/mapapi/core/PoiItem;->e:Ljava/lang/String;

    .line 28
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/mapabc/mapapi/core/q;)V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0, p1}, Lcom/mapabc/mapapi/core/PoiItem;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/mapabc/mapapi/core/GeoPoint;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 17
    invoke-direct {p0, p2, p3, p4}, Lcom/mapabc/mapapi/core/OverlayItem;-><init>(Lcom/mapabc/mapapi/core/GeoPoint;Ljava/lang/String;Ljava/lang/String;)V

    .line 11
    const-string v0, ""

    iput-object v0, p0, Lcom/mapabc/mapapi/core/PoiItem;->e:Ljava/lang/String;

    .line 18
    iput-object p1, p0, Lcom/mapabc/mapapi/core/PoiItem;->a:Ljava/lang/String;

    .line 19
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 41
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 99
    if-nez p1, :cond_1

    .line 107
    :cond_0
    :goto_0
    return v0

    .line 102
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    if-ne v1, v2, :cond_0

    .line 105
    check-cast p1, Lcom/mapabc/mapapi/core/PoiItem;

    .line 107
    iget-object v1, p0, Lcom/mapabc/mapapi/core/PoiItem;->a:Ljava/lang/String;

    iget-object v2, p1, Lcom/mapabc/mapapi/core/PoiItem;->a:Ljava/lang/String;

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public getAdCode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lcom/mapabc/mapapi/core/PoiItem;->d:Ljava/lang/String;

    return-object v0
.end method

.method public getDistance()I
    .locals 1

    .prologue
    .line 54
    iget v0, p0, Lcom/mapabc/mapapi/core/PoiItem;->g:I

    return v0
.end method

.method public getPoiId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lcom/mapabc/mapapi/core/PoiItem;->a:Ljava/lang/String;

    return-object v0
.end method

.method public getTel()Ljava/lang/String;
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lcom/mapabc/mapapi/core/PoiItem;->c:Ljava/lang/String;

    return-object v0
.end method

.method public getTypeCode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 122
    iget-object v0, p0, Lcom/mapabc/mapapi/core/PoiItem;->b:Ljava/lang/String;

    return-object v0
.end method

.method public getTypeDes()Ljava/lang/String;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/mapabc/mapapi/core/PoiItem;->e:Ljava/lang/String;

    return-object v0
.end method

.method public getXmlNode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lcom/mapabc/mapapi/core/PoiItem;->f:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 112
    iget-object v0, p0, Lcom/mapabc/mapapi/core/PoiItem;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public setAdCode(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 90
    iput-object p1, p0, Lcom/mapabc/mapapi/core/PoiItem;->d:Ljava/lang/String;

    .line 91
    return-void
.end method

.method public setDistance(I)V
    .locals 0

    .prologue
    .line 58
    iput p1, p0, Lcom/mapabc/mapapi/core/PoiItem;->g:I

    .line 59
    return-void
.end method

.method public setTel(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 82
    iput-object p1, p0, Lcom/mapabc/mapapi/core/PoiItem;->c:Ljava/lang/String;

    .line 83
    return-void
.end method

.method public setTypeCode(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 126
    iput-object p1, p0, Lcom/mapabc/mapapi/core/PoiItem;->b:Ljava/lang/String;

    .line 127
    return-void
.end method

.method public setTypeDes(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 66
    iput-object p1, p0, Lcom/mapabc/mapapi/core/PoiItem;->e:Ljava/lang/String;

    .line 67
    return-void
.end method

.method public setXmlNode(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 74
    iput-object p1, p0, Lcom/mapabc/mapapi/core/PoiItem;->f:Ljava/lang/String;

    .line 75
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 118
    iget-object v0, p0, Lcom/mapabc/mapapi/core/PoiItem;->mTitle:Ljava/lang/String;

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .prologue
    .line 45
    invoke-super {p0, p1, p2}, Lcom/mapabc/mapapi/core/OverlayItem;->writeToParcel(Landroid/os/Parcel;I)V

    .line 46
    iget-object v0, p0, Lcom/mapabc/mapapi/core/PoiItem;->a:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 47
    iget-object v0, p0, Lcom/mapabc/mapapi/core/PoiItem;->d:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 48
    iget-object v0, p0, Lcom/mapabc/mapapi/core/PoiItem;->c:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 49
    iget-object v0, p0, Lcom/mapabc/mapapi/core/PoiItem;->b:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 50
    iget-object v0, p0, Lcom/mapabc/mapapi/core/PoiItem;->e:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 51
    return-void
.end method
