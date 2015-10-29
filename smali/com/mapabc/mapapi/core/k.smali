.class public Lcom/mapabc/mapapi/core/k;
.super Lcom/mapabc/mapapi/core/s;
.source "LocTansProtoBufHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mapabc/mapapi/core/k$a;,
        Lcom/mapabc/mapapi/core/k$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/mapabc/mapapi/core/s",
        "<",
        "Lcom/mapabc/mapapi/core/GeoPoint$b;",
        "Lcom/mapabc/mapapi/core/GeoPoint$b;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Lcom/mapabc/mapapi/core/k$b;

.field private b:Lcom/mapabc/mapapi/core/GeoPoint$b;


# direct methods
.method public constructor <init>(Lcom/mapabc/mapapi/core/GeoPoint$b;Ljava/net/Proxy;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 23
    invoke-direct/range {p0 .. p5}, Lcom/mapabc/mapapi/core/s;-><init>(Ljava/lang/Object;Ljava/net/Proxy;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 24
    iput-object p1, p0, Lcom/mapabc/mapapi/core/k;->b:Lcom/mapabc/mapapi/core/GeoPoint$b;

    .line 25
    return-void
.end method


# virtual methods
.method protected a(Ljava/io/InputStream;)Lcom/mapabc/mapapi/core/GeoPoint$b;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/mapabc/mapapi/core/MapAbcException;
        }
    .end annotation

    .prologue
    .line 106
    invoke-static {p1}, Lcom/mapabc/mapapi/core/i;->a(Ljava/io/InputStream;)[B

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mapabc/mapapi/core/k;->parseProtoBufResponse([B)Z

    move-result v0

    .line 107
    if-eqz v0, :cond_0

    .line 108
    iget-object v0, p0, Lcom/mapabc/mapapi/core/k;->a:Lcom/mapabc/mapapi/core/k$b;

    iget-object v0, v0, Lcom/mapabc/mapapi/core/k$b;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    .line 110
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_0

    .line 111
    iget-object v0, p0, Lcom/mapabc/mapapi/core/k;->a:Lcom/mapabc/mapapi/core/k$b;

    iget-object v0, v0, Lcom/mapabc/mapapi/core/k$b;->a:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mapabc/mapapi/core/k$a;

    .line 112
    iget-object v3, p0, Lcom/mapabc/mapapi/core/k;->b:Lcom/mapabc/mapapi/core/GeoPoint$b;

    iget-object v4, v0, Lcom/mapabc/mapapi/core/k$a;->a:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v4

    iput-wide v4, v3, Lcom/mapabc/mapapi/core/GeoPoint$b;->a:D

    .line 113
    iget-object v3, p0, Lcom/mapabc/mapapi/core/k;->b:Lcom/mapabc/mapapi/core/GeoPoint$b;

    iget-object v0, v0, Lcom/mapabc/mapapi/core/k$a;->b:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v4

    iput-wide v4, v3, Lcom/mapabc/mapapi/core/GeoPoint$b;->b:D

    .line 110
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 116
    :cond_0
    if-eqz p1, :cond_1

    .line 118
    :try_start_0
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 124
    :cond_1
    iget-object v0, p0, Lcom/mapabc/mapapi/core/k;->b:Lcom/mapabc/mapapi/core/GeoPoint$b;

    return-object v0

    .line 120
    :catch_0
    move-exception v0

    .line 121
    new-instance v0, Lcom/mapabc/mapapi/core/MapAbcException;

    const-string v1, "IO \u64cd\u4f5c\u5f02\u5e38 - IOException"

    invoke-direct {v0, v1}, Lcom/mapabc/mapapi/core/MapAbcException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected a(Lcom/mapabc/mapapi/core/GeoPoint$b;)V
    .locals 0

    .prologue
    .line 29
    return-void
.end method

.method protected getRequestLines()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 139
    const/4 v0, 0x0

    return-object v0
.end method

.method protected getServiceCode()I
    .locals 1

    .prologue
    .line 101
    const/4 v0, 0x0

    return v0
.end method

.method protected bridge synthetic initParams(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 14
    check-cast p1, Lcom/mapabc/mapapi/core/GeoPoint$b;

    invoke-virtual {p0, p1}, Lcom/mapabc/mapapi/core/k;->a(Lcom/mapabc/mapapi/core/GeoPoint$b;)V

    return-void
.end method

.method protected bridge synthetic loadData(Ljava/io/InputStream;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/mapabc/mapapi/core/MapAbcException;
        }
    .end annotation

    .prologue
    .line 14
    invoke-virtual {p0, p1}, Lcom/mapabc/mapapi/core/k;->a(Ljava/io/InputStream;)Lcom/mapabc/mapapi/core/GeoPoint$b;

    move-result-object v0

    return-object v0
.end method

.method protected makePostRequestBytes()[B
    .locals 11

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 33
    const/16 v0, 0x72d

    invoke-static {v0}, Lcom/mapabc/mapapi/core/i;->a(I)[B

    move-result-object v1

    .line 34
    invoke-static {}, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCRequest;->newBuilder()Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCRequest$Builder;

    move-result-object v2

    .line 35
    invoke-static {}, Lcom/mapabc/mapapi/core/CommonProtoBuf$Common;->newBuilder()Lcom/mapabc/mapapi/core/CommonProtoBuf$Common$Builder;

    move-result-object v0

    .line 36
    const-string v3, "RGC"

    invoke-virtual {v0, v3}, Lcom/mapabc/mapapi/core/CommonProtoBuf$Common$Builder;->setConfig(Ljava/lang/String;)Lcom/mapabc/mapapi/core/CommonProtoBuf$Common$Builder;

    .line 37
    iget-object v3, p0, Lcom/mapabc/mapapi/core/k;->mKey:Ljava/lang/String;

    invoke-virtual {v0, v3}, Lcom/mapabc/mapapi/core/CommonProtoBuf$Common$Builder;->setAK(Ljava/lang/String;)Lcom/mapabc/mapapi/core/CommonProtoBuf$Common$Builder;

    .line 38
    const-string v3, "buf"

    invoke-virtual {v0, v3}, Lcom/mapabc/mapapi/core/CommonProtoBuf$Common$Builder;->setResType(Ljava/lang/String;)Lcom/mapabc/mapapi/core/CommonProtoBuf$Common$Builder;

    .line 39
    const-string v3, "UTF-8"

    invoke-virtual {v0, v3}, Lcom/mapabc/mapapi/core/CommonProtoBuf$Common$Builder;->setEnc(Ljava/lang/String;)Lcom/mapabc/mapapi/core/CommonProtoBuf$Common$Builder;

    .line 40
    invoke-virtual {v2, v0}, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCRequest$Builder;->setCommon(Lcom/mapabc/mapapi/core/CommonProtoBuf$Common$Builder;)Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCRequest$Builder;

    .line 41
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 42
    const-string v4, "%f"

    new-array v5, v10, [Ljava/lang/Object;

    iget-object v0, p0, Lcom/mapabc/mapapi/core/k;->task:Ljava/lang/Object;

    check-cast v0, Lcom/mapabc/mapapi/core/GeoPoint$b;

    iget-wide v6, v0, Lcom/mapabc/mapapi/core/GeoPoint$b;->a:D

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    aput-object v0, v5, v9

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, ","

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "%f"

    new-array v6, v10, [Ljava/lang/Object;

    iget-object v0, p0, Lcom/mapabc/mapapi/core/k;->task:Ljava/lang/Object;

    check-cast v0, Lcom/mapabc/mapapi/core/GeoPoint$b;

    iget-wide v7, v0, Lcom/mapabc/mapapi/core/GeoPoint$b;->b:D

    invoke-static {v7, v8}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    aput-object v0, v6, v9

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCRequest$Builder;->setCoors(Ljava/lang/String;)Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCRequest$Builder;

    .line 45
    invoke-static {v10}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCRequest$Builder;->setFlag(Ljava/lang/String;)Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCRequest$Builder;

    .line 46
    invoke-virtual {v2}, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCRequest$Builder;->build()Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCRequest;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCRequest;->toByteArray()[B

    move-result-object v0

    .line 47
    array-length v2, v1

    array-length v3, v0

    add-int/2addr v2, v3

    new-array v2, v2, [B

    .line 48
    array-length v3, v1

    invoke-static {v1, v9, v2, v9, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 49
    array-length v1, v1

    array-length v3, v0

    invoke-static {v0, v9, v2, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 50
    return-object v2
.end method

.method protected parseProtoBufResponse([B)Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/mapabc/mapapi/core/MapAbcException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x4

    const/4 v0, 0x0

    .line 56
    new-instance v1, Lcom/mapabc/mapapi/core/k$b;

    invoke-direct {v1}, Lcom/mapabc/mapapi/core/k$b;-><init>()V

    iput-object v1, p0, Lcom/mapabc/mapapi/core/k;->a:Lcom/mapabc/mapapi/core/k$b;

    .line 57
    new-array v1, v3, [B

    .line 58
    invoke-static {p1, v0, v1, v0, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 59
    invoke-static {v1}, Lcom/mapabc/mapapi/core/i;->a([B)I

    move-result v1

    .line 60
    new-array v2, v1, [B

    .line 61
    invoke-static {p1, v3, v2, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 62
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v2}, Ljava/lang/String;-><init>([B)V

    iput-object v3, p0, Lcom/mapabc/mapapi/core/k;->serverReturnCode:Ljava/lang/String;

    .line 63
    const-string v2, "000000"

    iget-object v3, p0, Lcom/mapabc/mapapi/core/k;->serverReturnCode:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 64
    array-length v2, p1

    add-int/lit8 v2, v2, -0x4

    sub-int/2addr v2, v1

    new-array v2, v2, [B

    .line 65
    add-int/lit8 v1, v1, 0x4

    array-length v3, v2

    invoke-static {p1, v1, v2, v0, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 68
    :try_start_0
    invoke-static {v2}, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCResponse;->parseFrom([B)Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCResponse;
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 72
    invoke-virtual {v1}, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCResponse;->getRgcItemCount()I

    move-result v2

    if-lez v2, :cond_3

    .line 73
    invoke-virtual {v1}, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCResponse;->getRgcItemList()Ljava/util/List;

    move-result-object v2

    .line 74
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    move v1, v0

    .line 77
    :goto_0
    if-ge v1, v3, :cond_3

    .line 78
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCItem;

    .line 79
    new-instance v4, Lcom/mapabc/mapapi/core/k$a;

    invoke-direct {v4}, Lcom/mapabc/mapapi/core/k$a;-><init>()V

    .line 80
    invoke-virtual {v0}, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCItem;->hasX()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 81
    invoke-virtual {v0}, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCItem;->getX()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/mapabc/mapapi/core/k$a;->a:Ljava/lang/String;

    .line 83
    :cond_0
    invoke-virtual {v0}, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCItem;->hasY()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 84
    invoke-virtual {v0}, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCItem;->getY()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/mapabc/mapapi/core/k$a;->b:Ljava/lang/String;

    .line 86
    :cond_1
    invoke-virtual {v0}, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCItem;->hasGridcode()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 87
    invoke-virtual {v0}, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCItem;->getGridcode()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v4, Lcom/mapabc/mapapi/core/k$a;->c:Ljava/lang/String;

    .line 89
    :cond_2
    iget-object v0, p0, Lcom/mapabc/mapapi/core/k;->a:Lcom/mapabc/mapapi/core/k$b;

    iget-object v0, v0, Lcom/mapabc/mapapi/core/k$b;->a:Ljava/util/List;

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 77
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 69
    :catch_0
    move-exception v0

    .line 70
    new-instance v0, Lcom/mapabc/mapapi/core/MapAbcException;

    const-string v1, "protobuf\u89e3\u6790\u9519\u8bef - InvalidProtocolBufferException"

    invoke-direct {v0, v1}, Lcom/mapabc/mapapi/core/MapAbcException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 92
    :cond_3
    const/4 v0, 0x1

    .line 95
    :goto_1
    return v0

    .line 94
    :cond_4
    invoke-virtual {p0}, Lcom/mapabc/mapapi/core/k;->throwsProtoBufferMapAbcException()V

    goto :goto_1
.end method
