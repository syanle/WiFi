.class public final Lcom/baidu/mapapi/model/LatLngBounds;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/mapapi/model/LatLngBounds$Builder;
    }
.end annotation


# instance fields
.field public final northeast:Lcom/baidu/mapapi/model/LatLng;

.field public final southwest:Lcom/baidu/mapapi/model/LatLng;


# direct methods
.method constructor <init>(Lcom/baidu/mapapi/model/LatLng;Lcom/baidu/mapapi/model/LatLng;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/baidu/mapapi/model/LatLngBounds;->northeast:Lcom/baidu/mapapi/model/LatLng;

    iput-object p2, p0, Lcom/baidu/mapapi/model/LatLngBounds;->southwest:Lcom/baidu/mapapi/model/LatLng;

    return-void
.end method


# virtual methods
.method public contains(Lcom/baidu/mapapi/model/LatLng;)Z
    .locals 13

    const/4 v0, 0x0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/baidu/mapapi/model/LatLngBounds;->southwest:Lcom/baidu/mapapi/model/LatLng;

    iget-wide v1, v1, Lcom/baidu/mapapi/model/LatLng;->latitude:D

    iget-object v3, p0, Lcom/baidu/mapapi/model/LatLngBounds;->northeast:Lcom/baidu/mapapi/model/LatLng;

    iget-wide v3, v3, Lcom/baidu/mapapi/model/LatLng;->latitude:D

    iget-object v5, p0, Lcom/baidu/mapapi/model/LatLngBounds;->southwest:Lcom/baidu/mapapi/model/LatLng;

    iget-wide v5, v5, Lcom/baidu/mapapi/model/LatLng;->longitude:D

    iget-object v7, p0, Lcom/baidu/mapapi/model/LatLngBounds;->northeast:Lcom/baidu/mapapi/model/LatLng;

    iget-wide v7, v7, Lcom/baidu/mapapi/model/LatLng;->longitude:D

    iget-wide v9, p1, Lcom/baidu/mapapi/model/LatLng;->latitude:D

    iget-wide v11, p1, Lcom/baidu/mapapi/model/LatLng;->longitude:D

    cmpl-double v1, v9, v1

    if-ltz v1, :cond_0

    cmpg-double v1, v9, v3

    if-gtz v1, :cond_0

    cmpl-double v1, v11, v5

    if-ltz v1, :cond_0

    cmpg-double v1, v11, v7

    if-gtz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public getCenter()Lcom/baidu/mapapi/model/LatLng;
    .locals 8

    const-wide/high16 v6, 0x4000000000000000L    # 2.0

    iget-object v0, p0, Lcom/baidu/mapapi/model/LatLngBounds;->northeast:Lcom/baidu/mapapi/model/LatLng;

    iget-wide v0, v0, Lcom/baidu/mapapi/model/LatLng;->latitude:D

    iget-object v2, p0, Lcom/baidu/mapapi/model/LatLngBounds;->southwest:Lcom/baidu/mapapi/model/LatLng;

    iget-wide v2, v2, Lcom/baidu/mapapi/model/LatLng;->latitude:D

    sub-double/2addr v0, v2

    div-double/2addr v0, v6

    iget-object v2, p0, Lcom/baidu/mapapi/model/LatLngBounds;->southwest:Lcom/baidu/mapapi/model/LatLng;

    iget-wide v2, v2, Lcom/baidu/mapapi/model/LatLng;->latitude:D

    add-double/2addr v0, v2

    iget-object v2, p0, Lcom/baidu/mapapi/model/LatLngBounds;->northeast:Lcom/baidu/mapapi/model/LatLng;

    iget-wide v2, v2, Lcom/baidu/mapapi/model/LatLng;->longitude:D

    iget-object v4, p0, Lcom/baidu/mapapi/model/LatLngBounds;->southwest:Lcom/baidu/mapapi/model/LatLng;

    iget-wide v4, v4, Lcom/baidu/mapapi/model/LatLng;->longitude:D

    sub-double/2addr v2, v4

    div-double/2addr v2, v6

    iget-object v4, p0, Lcom/baidu/mapapi/model/LatLngBounds;->southwest:Lcom/baidu/mapapi/model/LatLng;

    iget-wide v4, v4, Lcom/baidu/mapapi/model/LatLng;->longitude:D

    add-double/2addr v2, v4

    new-instance v4, Lcom/baidu/mapapi/model/LatLng;

    invoke-direct {v4, v0, v1, v2, v3}, Lcom/baidu/mapapi/model/LatLng;-><init>(DD)V

    return-object v4
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "southwest: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/baidu/mapapi/model/LatLngBounds;->southwest:Lcom/baidu/mapapi/model/LatLng;

    iget-wide v1, v1, Lcom/baidu/mapapi/model/LatLng;->latitude:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/baidu/mapapi/model/LatLngBounds;->southwest:Lcom/baidu/mapapi/model/LatLng;

    iget-wide v1, v1, Lcom/baidu/mapapi/model/LatLng;->longitude:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "northeast: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/baidu/mapapi/model/LatLngBounds;->northeast:Lcom/baidu/mapapi/model/LatLng;

    iget-wide v1, v1, Lcom/baidu/mapapi/model/LatLng;->latitude:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/baidu/mapapi/model/LatLngBounds;->northeast:Lcom/baidu/mapapi/model/LatLng;

    iget-wide v1, v1, Lcom/baidu/mapapi/model/LatLng;->longitude:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
