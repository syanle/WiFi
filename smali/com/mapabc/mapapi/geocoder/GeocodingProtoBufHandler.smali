.class public Lcom/mapabc/mapapi/geocoder/GeocodingProtoBufHandler;
.super Lcom/mapabc/mapapi/core/r;
.source "GeocodingProtoBufHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mapabc/mapapi/geocoder/GeocodingProtoBufHandler$c;,
        Lcom/mapabc/mapapi/geocoder/GeocodingProtoBufHandler$a;,
        Lcom/mapabc/mapapi/geocoder/GeocodingProtoBufHandler$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/mapabc/mapapi/core/r",
        "<",
        "Lcom/mapabc/mapapi/geocoder/b;",
        "Landroid/location/Address;",
        ">;"
    }
.end annotation


# static fields
.field private static final GEOCODING_SERVER_CODE:I = 0x738


# instance fields
.field private geocodingResponse:Lcom/mapabc/mapapi/geocoder/GeocodingProtoBufHandler$b;


# direct methods
.method public constructor <init>(Lcom/mapabc/mapapi/geocoder/b;Ljava/net/Proxy;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 34
    invoke-direct/range {p0 .. p5}, Lcom/mapabc/mapapi/core/r;-><init>(Ljava/lang/Object;Ljava/net/Proxy;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 35
    return-void
.end method

.method private makeAddresses()Ljava/util/ArrayList;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/location/Address;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/mapabc/mapapi/core/MapAbcException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 97
    iget-object v0, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBufHandler;->geocodingResponse:Lcom/mapabc/mapapi/geocoder/GeocodingProtoBufHandler$b;

    iget-object v3, v0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBufHandler$b;->b:Ljava/util/List;

    .line 98
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 99
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 100
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    move v1, v2

    .line 103
    :goto_0
    if-ge v1, v5, :cond_1

    .line 104
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBufHandler$a;

    .line 105
    invoke-static {}, Lcom/mapabc/mapapi/core/e;->d()Landroid/location/Address;

    move-result-object v6

    .line 106
    iget-object v7, v0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBufHandler$a;->a:Ljava/lang/String;

    invoke-virtual {v6, v2, v7}, Landroid/location/Address;->setAddressLine(ILjava/lang/String;)V

    .line 107
    iget-object v7, v0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBufHandler$a;->f:Ljava/lang/String;

    invoke-virtual {v6, v7}, Landroid/location/Address;->setAdminArea(Ljava/lang/String;)V

    .line 108
    iget-object v7, v0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBufHandler$a;->g:Ljava/lang/String;

    invoke-virtual {v6, v7}, Landroid/location/Address;->setLocality(Ljava/lang/String;)V

    .line 111
    :try_start_0
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    const-string v8, "setSubLocality"

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Class;

    const/4 v10, 0x0

    const-class v11, Ljava/lang/String;

    aput-object v11, v9, v10

    invoke-virtual {v7, v8, v9}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v7

    .line 113
    if-eqz v7, :cond_0

    .line 114
    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    iget-object v10, v0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBufHandler$a;->i:Ljava/lang/String;

    aput-object v10, v8, v9

    invoke-virtual {v7, v6, v8}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2

    .line 126
    :cond_0
    iget-object v7, v0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBufHandler$a;->e:Ljava/lang/String;

    invoke-virtual {v6, v7}, Landroid/location/Address;->setFeatureName(Ljava/lang/String;)V

    .line 127
    iget-object v7, v0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBufHandler$a;->c:Ljava/lang/String;

    invoke-static {v7}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v7

    invoke-virtual {v6, v7, v8}, Landroid/location/Address;->setLongitude(D)V

    .line 128
    iget-object v0, v0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBufHandler$a;->d:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v7

    invoke-virtual {v6, v7, v8}, Landroid/location/Address;->setLatitude(D)V

    .line 129
    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 103
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 116
    :catch_0
    move-exception v0

    .line 117
    new-instance v0, Lcom/mapabc/mapapi/core/MapAbcException;

    const-string v1, "\u6ca1\u6709\u627e\u5230\u8c03\u7528\u65b9\u6cd5 - NoSuchMethodException"

    invoke-direct {v0, v1}, Lcom/mapabc/mapapi/core/MapAbcException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 119
    :catch_1
    move-exception v0

    .line 120
    new-instance v0, Lcom/mapabc/mapapi/core/MapAbcException;

    const-string v1, "\u53cd\u5c04\u9519\u8bef - InvocationTargetException"

    invoke-direct {v0, v1}, Lcom/mapabc/mapapi/core/MapAbcException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 122
    :catch_2
    move-exception v0

    .line 123
    new-instance v0, Lcom/mapabc/mapapi/core/MapAbcException;

    const-string v1, "\u53cd\u5c04\u9519\u8bef - InvocationTargetException"

    invoke-direct {v0, v1}, Lcom/mapabc/mapapi/core/MapAbcException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 132
    :cond_1
    return-object v4
.end method


# virtual methods
.method public getGeocodingResponse()Lcom/mapabc/mapapi/geocoder/GeocodingProtoBufHandler$b;
    .locals 1

    .prologue
    .line 268
    iget-object v0, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBufHandler;->geocodingResponse:Lcom/mapabc/mapapi/geocoder/GeocodingProtoBufHandler$b;

    return-object v0
.end method

.method protected getRequestLines()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 264
    const/4 v0, 0x0

    return-object v0
.end method

.method protected getServiceCode()I
    .locals 1

    .prologue
    .line 75
    const/4 v0, 0x0

    return v0
.end method

.method protected initParams(Lcom/mapabc/mapapi/geocoder/b;)V
    .locals 1

    .prologue
    .line 39
    const-string v0, "GOC"

    iput-object v0, p1, Lcom/mapabc/mapapi/geocoder/b;->a:Ljava/lang/String;

    .line 40
    iget-object v0, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBufHandler;->mKey:Ljava/lang/String;

    iput-object v0, p1, Lcom/mapabc/mapapi/geocoder/b;->d:Ljava/lang/String;

    .line 41
    const-string v0, "buf"

    iput-object v0, p1, Lcom/mapabc/mapapi/geocoder/b;->b:Ljava/lang/String;

    .line 42
    const-string v0, "UTF-8"

    iput-object v0, p1, Lcom/mapabc/mapapi/geocoder/b;->c:Ljava/lang/String;

    .line 43
    const-string v0, "2"

    iput-object v0, p1, Lcom/mapabc/mapapi/geocoder/b;->g:Ljava/lang/String;

    .line 44
    return-void
.end method

.method protected bridge synthetic initParams(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 25
    check-cast p1, Lcom/mapabc/mapapi/geocoder/b;

    invoke-virtual {p0, p1}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBufHandler;->initParams(Lcom/mapabc/mapapi/geocoder/b;)V

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
    .line 25
    invoke-virtual {p0, p1}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBufHandler;->loadData(Ljava/io/InputStream;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method protected loadData(Ljava/io/InputStream;)Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/location/Address;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/mapabc/mapapi/core/MapAbcException;
        }
    .end annotation

    .prologue
    .line 81
    invoke-static {p1}, Lcom/mapabc/mapapi/core/i;->a(Ljava/io/InputStream;)[B

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBufHandler;->parseProtoBufResponse([B)Z

    move-result v0

    .line 82
    if-eqz p1, :cond_0

    .line 84
    :try_start_0
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 90
    :cond_0
    if-eqz v0, :cond_1

    .line 91
    invoke-direct {p0}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBufHandler;->makeAddresses()Ljava/util/ArrayList;

    move-result-object v0

    .line 93
    :goto_0
    return-object v0

    .line 86
    :catch_0
    move-exception v0

    .line 87
    new-instance v0, Lcom/mapabc/mapapi/core/MapAbcException;

    const-string v1, "IO \u64cd\u4f5c\u5f02\u5e38 - IOException"

    invoke-direct {v0, v1}, Lcom/mapabc/mapapi/core/MapAbcException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 93
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    goto :goto_0
.end method

.method protected makePostRequestBytes()[B
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 48
    const/16 v0, 0x738

    invoke-static {v0}, Lcom/mapabc/mapapi/core/i;->a(I)[B

    move-result-object v2

    .line 49
    invoke-static {}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeocodingRequest;->newBuilder()Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeocodingRequest$Builder;

    move-result-object v3

    .line 51
    invoke-static {}, Lcom/mapabc/mapapi/core/CommonProtoBuf$Common;->newBuilder()Lcom/mapabc/mapapi/core/CommonProtoBuf$Common$Builder;

    move-result-object v1

    .line 52
    iget-object v0, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBufHandler;->task:Ljava/lang/Object;

    check-cast v0, Lcom/mapabc/mapapi/geocoder/b;

    iget-object v0, v0, Lcom/mapabc/mapapi/geocoder/b;->a:Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/mapabc/mapapi/core/CommonProtoBuf$Common$Builder;->setConfig(Ljava/lang/String;)Lcom/mapabc/mapapi/core/CommonProtoBuf$Common$Builder;

    .line 53
    iget-object v0, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBufHandler;->task:Ljava/lang/Object;

    check-cast v0, Lcom/mapabc/mapapi/geocoder/b;

    iget-object v0, v0, Lcom/mapabc/mapapi/geocoder/b;->d:Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/mapabc/mapapi/core/CommonProtoBuf$Common$Builder;->setAK(Ljava/lang/String;)Lcom/mapabc/mapapi/core/CommonProtoBuf$Common$Builder;

    .line 54
    iget-object v0, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBufHandler;->task:Ljava/lang/Object;

    check-cast v0, Lcom/mapabc/mapapi/geocoder/b;

    iget-object v0, v0, Lcom/mapabc/mapapi/geocoder/b;->b:Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/mapabc/mapapi/core/CommonProtoBuf$Common$Builder;->setResType(Ljava/lang/String;)Lcom/mapabc/mapapi/core/CommonProtoBuf$Common$Builder;

    .line 55
    iget-object v0, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBufHandler;->task:Ljava/lang/Object;

    check-cast v0, Lcom/mapabc/mapapi/geocoder/b;

    iget-object v0, v0, Lcom/mapabc/mapapi/geocoder/b;->c:Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/mapabc/mapapi/core/CommonProtoBuf$Common$Builder;->setEnc(Ljava/lang/String;)Lcom/mapabc/mapapi/core/CommonProtoBuf$Common$Builder;

    .line 56
    invoke-virtual {v3, v1}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeocodingRequest$Builder;->setCommon(Lcom/mapabc/mapapi/core/CommonProtoBuf$Common$Builder;)Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeocodingRequest$Builder;

    .line 57
    const/4 v1, 0x0

    .line 59
    :try_start_0
    iget-object v0, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBufHandler;->task:Ljava/lang/Object;

    check-cast v0, Lcom/mapabc/mapapi/geocoder/b;

    iget-object v0, v0, Lcom/mapabc/mapapi/geocoder/b;->e:Ljava/lang/String;

    const-string v4, "GBK"

    invoke-static {v0, v4}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 63
    :goto_0
    invoke-virtual {v3, v0}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeocodingRequest$Builder;->setAddress(Ljava/lang/String;)Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeocodingRequest$Builder;

    .line 64
    iget-object v0, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBufHandler;->task:Ljava/lang/Object;

    check-cast v0, Lcom/mapabc/mapapi/geocoder/b;

    iget v0, v0, Lcom/mapabc/mapapi/geocoder/b;->f:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeocodingRequest$Builder;->setPoiNumber(Ljava/lang/String;)Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeocodingRequest$Builder;

    .line 65
    iget-object v0, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBufHandler;->task:Ljava/lang/Object;

    check-cast v0, Lcom/mapabc/mapapi/geocoder/b;

    iget-object v0, v0, Lcom/mapabc/mapapi/geocoder/b;->g:Ljava/lang/String;

    invoke-virtual {v3, v0}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeocodingRequest$Builder;->setVer(Ljava/lang/String;)Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeocodingRequest$Builder;

    .line 66
    invoke-virtual {v3}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeocodingRequest$Builder;->build()Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeocodingRequest;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeocodingRequest;->toByteArray()[B

    move-result-object v0

    .line 67
    array-length v1, v2

    array-length v3, v0

    add-int/2addr v1, v3

    new-array v1, v1, [B

    .line 68
    array-length v3, v2

    invoke-static {v2, v5, v1, v5, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 69
    array-length v2, v2

    array-length v3, v0

    invoke-static {v0, v5, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 70
    return-object v1

    .line 60
    :catch_0
    move-exception v0

    .line 61
    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    move-object v0, v1

    goto :goto_0
.end method

.method protected parseProtoBufResponse([B)Z
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/mapabc/mapapi/core/MapAbcException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x4

    const/4 v1, 0x0

    .line 138
    new-instance v0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBufHandler$b;

    invoke-direct {v0}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBufHandler$b;-><init>()V

    iput-object v0, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBufHandler;->geocodingResponse:Lcom/mapabc/mapapi/geocoder/GeocodingProtoBufHandler$b;

    .line 139
    new-array v0, v3, [B

    .line 140
    invoke-static {p1, v1, v0, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 141
    invoke-static {v0}, Lcom/mapabc/mapapi/core/i;->a([B)I

    move-result v0

    .line 142
    new-array v2, v0, [B

    .line 143
    invoke-static {p1, v3, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 144
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v2}, Ljava/lang/String;-><init>([B)V

    iput-object v3, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBufHandler;->serverReturnCode:Ljava/lang/String;

    .line 145
    const-string v2, "000000"

    iget-object v3, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBufHandler;->serverReturnCode:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1b

    .line 146
    array-length v2, p1

    add-int/lit8 v2, v2, -0x4

    sub-int/2addr v2, v0

    new-array v2, v2, [B

    .line 147
    add-int/lit8 v0, v0, 0x4

    array-length v3, v2

    invoke-static {p1, v0, v2, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 150
    :try_start_0
    invoke-static {v2}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeocodingResponse;->parseFrom([B)Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeocodingResponse;
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 155
    invoke-virtual {v0}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeocodingResponse;->hasCount()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 156
    iget-object v2, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBufHandler;->geocodingResponse:Lcom/mapabc/mapapi/geocoder/GeocodingProtoBufHandler$b;

    invoke-virtual {v0}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeocodingResponse;->getCount()I

    move-result v3

    iput v3, v2, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBufHandler$b;->a:I

    .line 158
    :cond_0
    invoke-virtual {v0}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeocodingResponse;->hasSpellcorrect()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 159
    iget-object v2, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBufHandler;->geocodingResponse:Lcom/mapabc/mapapi/geocoder/GeocodingProtoBufHandler$b;

    invoke-virtual {v0}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeocodingResponse;->getSpellcorrect()Lcom/mapabc/mapapi/core/CommonProtoBuf$Spellcorrect;

    move-result-object v3

    invoke-virtual {v3}, Lcom/mapabc/mapapi/core/CommonProtoBuf$Spellcorrect;->getDataList()Ljava/util/List;

    move-result-object v3

    iput-object v3, v2, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBufHandler$b;->c:Ljava/util/List;

    .line 162
    :cond_1
    invoke-virtual {v0}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeocodingResponse;->hasGeocoding()Z

    move-result v2

    if-eqz v2, :cond_1a

    .line 163
    invoke-virtual {v0}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeocodingResponse;->getGeocoding()Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$Geocoding;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$Geocoding;->getPoiList()Ljava/util/List;

    move-result-object v4

    .line 165
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    move v2, v1

    .line 169
    :goto_0
    if-ge v2, v5, :cond_1a

    .line 170
    new-instance v6, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBufHandler$a;

    invoke-direct {v6}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBufHandler$a;-><init>()V

    .line 171
    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI;

    .line 172
    invoke-virtual {v0}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI;->hasName()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 173
    invoke-virtual {v0}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI;->getName()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v6, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBufHandler$a;->a:Ljava/lang/String;

    .line 175
    :cond_2
    invoke-virtual {v0}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI;->hasLevel()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 176
    invoke-virtual {v0}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI;->getLevel()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v6, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBufHandler$a;->b:Ljava/lang/String;

    .line 178
    :cond_3
    invoke-virtual {v0}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI;->hasX()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 179
    invoke-virtual {v0}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI;->getX()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v6, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBufHandler$a;->c:Ljava/lang/String;

    .line 181
    :cond_4
    invoke-virtual {v0}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI;->hasY()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 182
    invoke-virtual {v0}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI;->getY()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v6, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBufHandler$a;->d:Ljava/lang/String;

    .line 184
    :cond_5
    invoke-virtual {v0}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI;->hasAddress()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 185
    invoke-virtual {v0}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI;->getAddress()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v6, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBufHandler$a;->e:Ljava/lang/String;

    .line 187
    :cond_6
    invoke-virtual {v0}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI;->hasProvince()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 188
    invoke-virtual {v0}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI;->getProvince()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v6, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBufHandler$a;->f:Ljava/lang/String;

    .line 190
    :cond_7
    invoke-virtual {v0}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI;->hasCity()Z

    move-result v3

    if-eqz v3, :cond_8

    .line 191
    invoke-virtual {v0}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI;->getCity()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v6, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBufHandler$a;->g:Ljava/lang/String;

    .line 193
    :cond_8
    invoke-virtual {v0}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI;->hasEname()Z

    move-result v3

    if-eqz v3, :cond_9

    .line 194
    invoke-virtual {v0}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI;->getEname()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v6, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBufHandler$a;->h:Ljava/lang/String;

    .line 196
    :cond_9
    invoke-virtual {v0}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI;->hasDistrict()Z

    move-result v3

    if-eqz v3, :cond_a

    .line 197
    invoke-virtual {v0}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI;->getDistrict()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v6, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBufHandler$a;->i:Ljava/lang/String;

    .line 199
    :cond_a
    invoke-virtual {v0}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI;->hasRange()Z

    move-result v3

    if-eqz v3, :cond_b

    .line 200
    invoke-virtual {v0}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI;->getRange()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v6, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBufHandler$a;->j:Ljava/lang/String;

    .line 202
    :cond_b
    invoke-virtual {v0}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI;->hasNum()Z

    move-result v3

    if-eqz v3, :cond_c

    .line 203
    invoke-virtual {v0}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI;->getNum()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v6, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBufHandler$a;->k:Ljava/lang/String;

    .line 205
    :cond_c
    invoke-virtual {v0}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI;->hasInum()Z

    move-result v3

    if-eqz v3, :cond_d

    .line 206
    invoke-virtual {v0}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI;->getInum()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v6, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBufHandler$a;->l:Ljava/lang/String;

    .line 208
    :cond_d
    invoke-virtual {v0}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI;->hasProx()Z

    move-result v3

    if-eqz v3, :cond_e

    .line 209
    invoke-virtual {v0}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI;->getProx()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v6, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBufHandler$a;->m:Ljava/lang/String;

    .line 211
    :cond_e
    invoke-virtual {v0}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI;->hasScore()Z

    move-result v3

    if-eqz v3, :cond_f

    .line 212
    invoke-virtual {v0}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI;->getScore()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v6, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBufHandler$a;->n:Ljava/lang/String;

    .line 214
    :cond_f
    invoke-virtual {v0}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI;->hasEprovince()Z

    move-result v3

    if-eqz v3, :cond_10

    .line 215
    invoke-virtual {v0}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI;->getEprovince()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v6, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBufHandler$a;->o:Ljava/lang/String;

    .line 217
    :cond_10
    invoke-virtual {v0}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI;->hasEcity()Z

    move-result v3

    if-eqz v3, :cond_11

    .line 218
    invoke-virtual {v0}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI;->getEcity()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v6, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBufHandler$a;->p:Ljava/lang/String;

    .line 220
    :cond_11
    invoke-virtual {v0}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI;->hasEdistrict()Z

    move-result v3

    if-eqz v3, :cond_12

    .line 221
    invoke-virtual {v0}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI;->getEdistrict()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v6, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBufHandler$a;->q:Ljava/lang/String;

    .line 223
    :cond_12
    invoke-virtual {v0}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI;->hasEaddress()Z

    move-result v3

    if-eqz v3, :cond_13

    .line 224
    invoke-virtual {v0}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI;->getEaddress()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v6, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBufHandler$a;->r:Ljava/lang/String;

    .line 226
    :cond_13
    invoke-virtual {v0}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI;->hasRoadpts()Z

    move-result v3

    if-eqz v3, :cond_14

    .line 227
    invoke-virtual {v0}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI;->getRoadpts()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v6, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBufHandler$a;->s:Ljava/lang/String;

    .line 229
    :cond_14
    invoke-virtual {v0}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI;->hasSubpois()Z

    move-result v3

    if-eqz v3, :cond_19

    .line 230
    invoke-virtual {v0}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI;->getSubpois()Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$SubPOIS;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$SubPOIS;->getSubpoiList()Ljava/util/List;

    move-result-object v7

    .line 232
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v8

    move v3, v1

    .line 234
    :goto_1
    if-ge v3, v8, :cond_19

    .line 235
    new-instance v9, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBufHandler$c;

    invoke-direct {v9}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBufHandler$c;-><init>()V

    .line 236
    invoke-interface {v7, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$SubPOI;

    .line 237
    invoke-virtual {v0}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$SubPOI;->hasName()Z

    move-result v10

    if-eqz v10, :cond_15

    .line 238
    invoke-virtual {v0}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$SubPOI;->getName()Ljava/lang/String;

    move-result-object v10

    iput-object v10, v9, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBufHandler$c;->a:Ljava/lang/String;

    .line 240
    :cond_15
    invoke-virtual {v0}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$SubPOI;->hasEname()Z

    move-result v10

    if-eqz v10, :cond_16

    .line 241
    invoke-virtual {v0}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$SubPOI;->getEname()Ljava/lang/String;

    move-result-object v10

    iput-object v10, v9, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBufHandler$c;->b:Ljava/lang/String;

    .line 243
    :cond_16
    invoke-virtual {v0}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$SubPOI;->hasX()Z

    move-result v10

    if-eqz v10, :cond_17

    .line 244
    invoke-virtual {v0}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$SubPOI;->getX()Ljava/lang/String;

    move-result-object v10

    iput-object v10, v9, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBufHandler$c;->c:Ljava/lang/String;

    .line 246
    :cond_17
    invoke-virtual {v0}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$SubPOI;->hasY()Z

    move-result v10

    if-eqz v10, :cond_18

    .line 247
    invoke-virtual {v0}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$SubPOI;->getY()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v9, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBufHandler$c;->d:Ljava/lang/String;

    .line 249
    :cond_18
    iget-object v0, v6, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBufHandler$a;->t:Ljava/util/List;

    invoke-interface {v0, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 234
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_1

    .line 152
    :catch_0
    move-exception v0

    .line 153
    new-instance v0, Lcom/mapabc/mapapi/core/MapAbcException;

    const-string v1, "protobuf\u89e3\u6790\u9519\u8bef - InvalidProtocolBufferException"

    invoke-direct {v0, v1}, Lcom/mapabc/mapapi/core/MapAbcException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 252
    :cond_19
    iget-object v0, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBufHandler;->geocodingResponse:Lcom/mapabc/mapapi/geocoder/GeocodingProtoBufHandler$b;

    iget-object v0, v0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBufHandler$b;->b:Ljava/util/List;

    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 169
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto/16 :goto_0

    .line 255
    :cond_1a
    const/4 v0, 0x1

    .line 258
    :goto_2
    return v0

    .line 257
    :cond_1b
    invoke-virtual {p0}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBufHandler;->throwsProtoBufferMapAbcException()V

    move v0, v1

    .line 258
    goto :goto_2
.end method
