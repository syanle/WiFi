.class public Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBufHandler;
.super Lcom/mapabc/mapapi/core/r;
.source "ReverseGeocodingProtoBufHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBufHandler$b;,
        Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBufHandler$f;,
        Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBufHandler$c;,
        Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBufHandler$a;,
        Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBufHandler$d;,
        Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBufHandler$g;,
        Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBufHandler$e;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/mapabc/mapapi/core/r",
        "<",
        "Lcom/mapabc/mapapi/core/y;",
        "Landroid/location/Address;",
        ">;"
    }
.end annotation


# static fields
.field private static final RANGE:I = 0x1f4

.field private static final REVERSEGEOCODING_SERVER_CODE:I = 0x71a


# instance fields
.field private crosslist:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/location/Address;",
            ">;"
        }
    .end annotation
.end field

.field isCross:Z

.field isPoi:Z

.field isRoad:Z

.field private mMaxResult:I

.field private mReXML:Ljava/lang/String;

.field private poilist:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/location/Address;",
            ">;"
        }
    .end annotation
.end field

.field private reverseGeocodingResponse:Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBufHandler$e;

.field private roadlist:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/location/Address;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/mapabc/mapapi/core/y;Ljava/net/Proxy;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 37
    invoke-direct/range {p0 .. p5}, Lcom/mapabc/mapapi/core/r;-><init>(Ljava/lang/Object;Ljava/net/Proxy;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 20
    iput v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBufHandler;->mMaxResult:I

    .line 24
    iput-boolean v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBufHandler;->isRoad:Z

    .line 25
    iput-boolean v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBufHandler;->isPoi:Z

    .line 26
    iput-boolean v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBufHandler;->isCross:Z

    .line 27
    const-string v0, "<?xml version=\'1.0\' encoding=\'utf-8\' ?><spatial_request method=\'searchPoint\'><x>%f</x><y>%f</y><poiNumber>%d</poiNumber><range>%d</range><pattern>0</pattern><roadLevel>0</roadLevel></spatial_request>"

    iput-object v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBufHandler;->mReXML:Ljava/lang/String;

    .line 38
    iget v0, p1, Lcom/mapabc/mapapi/core/y;->h:I

    iput v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBufHandler;->mMaxResult:I

    .line 39
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBufHandler;->roadlist:Ljava/util/ArrayList;

    .line 40
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBufHandler;->poilist:Ljava/util/ArrayList;

    .line 41
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBufHandler;->crosslist:Ljava/util/ArrayList;

    .line 42
    return-void
.end method

.method private addAddressItem(Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/location/Address;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/location/Address;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 364
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 365
    iget v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBufHandler;->mMaxResult:I

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    sub-int v2, v0, v2

    .line 366
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_1

    .line 367
    if-le v1, v0, :cond_0

    .line 368
    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 366
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 371
    :cond_1
    return-void
.end method


# virtual methods
.method protected getRequestLines()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 423
    const/4 v0, 0x0

    return-object v0
.end method

.method protected getServiceCode()I
    .locals 1

    .prologue
    .line 236
    const/4 v0, 0x0

    return v0
.end method

.method protected initParams(Lcom/mapabc/mapapi/core/y;)V
    .locals 1

    .prologue
    .line 46
    const-string v0, "SPAS"

    iput-object v0, p1, Lcom/mapabc/mapapi/core/y;->a:Ljava/lang/String;

    .line 47
    iget-object v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBufHandler;->mKey:Ljava/lang/String;

    iput-object v0, p1, Lcom/mapabc/mapapi/core/y;->d:Ljava/lang/String;

    .line 48
    const-string v0, "buf"

    iput-object v0, p1, Lcom/mapabc/mapapi/core/y;->b:Ljava/lang/String;

    .line 49
    const-string v0, "UTF-8"

    iput-object v0, p1, Lcom/mapabc/mapapi/core/y;->c:Ljava/lang/String;

    .line 50
    const-string v0, "2"

    iput-object v0, p1, Lcom/mapabc/mapapi/core/y;->e:Ljava/lang/String;

    .line 51
    return-void
.end method

.method protected bridge synthetic initParams(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 16
    check-cast p1, Lcom/mapabc/mapapi/core/y;

    invoke-virtual {p0, p1}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBufHandler;->initParams(Lcom/mapabc/mapapi/core/y;)V

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
    .line 16
    invoke-virtual {p0, p1}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBufHandler;->loadData(Ljava/io/InputStream;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method protected loadData(Ljava/io/InputStream;)Ljava/util/ArrayList;
    .locals 14
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
    .line 242
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 243
    iget v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBufHandler;->mMaxResult:I

    if-gtz v0, :cond_0

    move-object v0, v2

    .line 359
    :goto_0
    return-object v0

    .line 246
    :cond_0
    invoke-static {p1}, Lcom/mapabc/mapapi/core/i;->a(Ljava/io/InputStream;)[B

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBufHandler;->parseProtoBufResponse([B)Z

    move-result v0

    .line 247
    if-eqz v0, :cond_d

    .line 248
    iget-object v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBufHandler;->reverseGeocodingResponse:Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBufHandler$e;

    iget-object v0, v0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBufHandler$e;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    .line 250
    const/4 v0, 0x0

    move v3, v0

    :goto_1
    if-ge v3, v5, :cond_d

    .line 251
    iget-object v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBufHandler;->reverseGeocodingResponse:Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBufHandler$e;

    iget-object v0, v0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBufHandler$e;->a:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBufHandler$g;

    .line 252
    iget-object v0, v1, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBufHandler$g;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget v4, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBufHandler;->mMaxResult:I

    invoke-static {v0, v4}, Ljava/lang/Math;->min(II)I

    move-result v6

    .line 253
    iget-object v0, v1, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBufHandler$g;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget v4, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBufHandler;->mMaxResult:I

    invoke-static {v0, v4}, Ljava/lang/Math;->min(II)I

    move-result v7

    .line 254
    iget-object v0, v1, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBufHandler$g;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget v4, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBufHandler;->mMaxResult:I

    invoke-static {v0, v4}, Ljava/lang/Math;->min(II)I

    move-result v8

    .line 259
    const/4 v0, 0x0

    move v4, v0

    :goto_2
    if-ge v4, v6, :cond_3

    .line 260
    invoke-static {}, Lcom/mapabc/mapapi/core/e;->d()Landroid/location/Address;

    move-result-object v9

    .line 261
    iget-object v0, v1, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBufHandler$g;->a:Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBufHandler$d;

    iget-object v0, v0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBufHandler$d;->a:Ljava/lang/String;

    invoke-virtual {v9, v0}, Landroid/location/Address;->setAdminArea(Ljava/lang/String;)V

    .line 262
    iget-object v0, v1, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBufHandler$g;->b:Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBufHandler$a;

    iget-object v0, v0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBufHandler$a;->a:Ljava/lang/String;

    invoke-virtual {v9, v0}, Landroid/location/Address;->setLocality(Ljava/lang/String;)V

    .line 264
    :try_start_0
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v10, "setSubLocality"

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Class;

    const/4 v12, 0x0

    const-class v13, Ljava/lang/String;

    aput-object v13, v11, v12

    invoke-virtual {v0, v10, v11}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 266
    if-eqz v0, :cond_1

    .line 267
    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    iget-object v12, v1, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBufHandler$g;->c:Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBufHandler$c;

    iget-object v12, v12, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBufHandler$c;->a:Ljava/lang/String;

    aput-object v12, v10, v11

    invoke-virtual {v0, v9, v10}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_6

    .line 270
    :cond_1
    :goto_3
    iget-object v0, v1, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBufHandler$g;->d:Ljava/util/List;

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBufHandler$f;

    .line 271
    iget-object v0, v0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBufHandler$f;->b:Ljava/lang/String;

    invoke-virtual {v9, v0}, Landroid/location/Address;->setFeatureName(Ljava/lang/String;)V

    .line 273
    :try_start_1
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v10, "setPremises"

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Class;

    const/4 v12, 0x0

    const-class v13, Ljava/lang/String;

    aput-object v13, v11, v12

    invoke-virtual {v0, v10, v11}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 275
    if-eqz v0, :cond_2

    .line 276
    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    const-string v12, "StreetAndRoad"

    aput-object v12, v10, v11

    invoke-virtual {v0, v9, v10}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_5

    .line 280
    :cond_2
    :goto_4
    iget-object v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBufHandler;->roadlist:Ljava/util/ArrayList;

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 281
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBufHandler;->isRoad:Z

    .line 259
    add-int/lit8 v0, v4, 0x1

    move v4, v0

    goto :goto_2

    .line 283
    :cond_3
    const/4 v0, 0x0

    move v4, v0

    :goto_5
    if-ge v4, v7, :cond_6

    .line 284
    invoke-static {}, Lcom/mapabc/mapapi/core/e;->d()Landroid/location/Address;

    move-result-object v6

    .line 285
    iget-object v0, v1, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBufHandler$g;->a:Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBufHandler$d;

    iget-object v0, v0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBufHandler$d;->a:Ljava/lang/String;

    invoke-virtual {v6, v0}, Landroid/location/Address;->setAdminArea(Ljava/lang/String;)V

    .line 286
    iget-object v0, v1, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBufHandler$g;->b:Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBufHandler$a;

    iget-object v0, v0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBufHandler$a;->a:Ljava/lang/String;

    invoke-virtual {v6, v0}, Landroid/location/Address;->setLocality(Ljava/lang/String;)V

    .line 288
    :try_start_2
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v9, "setSubLocality"

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Class;

    const/4 v11, 0x0

    const-class v12, Ljava/lang/String;

    aput-object v12, v10, v11

    invoke-virtual {v0, v9, v10}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 290
    if-eqz v0, :cond_4

    .line 291
    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    iget-object v11, v1, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBufHandler$g;->c:Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBufHandler$c;

    iget-object v11, v11, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBufHandler$c;->a:Ljava/lang/String;

    aput-object v11, v9, v10

    invoke-virtual {v0, v6, v9}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_4

    .line 294
    :cond_4
    :goto_6
    iget-object v0, v1, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBufHandler$g;->e:Ljava/util/List;

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mapabc/mapapi/core/s$a;

    .line 295
    const/4 v9, 0x0

    iget-object v10, v0, Lcom/mapabc/mapapi/core/s$a;->g:Ljava/lang/String;

    invoke-virtual {v6, v9, v10}, Landroid/location/Address;->setAddressLine(ILjava/lang/String;)V

    .line 296
    iget-object v9, v0, Lcom/mapabc/mapapi/core/s$a;->s:Ljava/lang/String;

    invoke-virtual {v6, v9}, Landroid/location/Address;->setPhone(Ljava/lang/String;)V

    .line 297
    iget-object v9, v0, Lcom/mapabc/mapapi/core/s$a;->b:Ljava/lang/String;

    invoke-virtual {v6, v9}, Landroid/location/Address;->setFeatureName(Ljava/lang/String;)V

    .line 298
    iget-object v9, v0, Lcom/mapabc/mapapi/core/s$a;->d:Ljava/lang/String;

    invoke-static {v9}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v9

    invoke-virtual {v6, v9, v10}, Landroid/location/Address;->setLongitude(D)V

    .line 299
    iget-object v0, v0, Lcom/mapabc/mapapi/core/s$a;->e:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v9

    invoke-virtual {v6, v9, v10}, Landroid/location/Address;->setLatitude(D)V

    .line 301
    :try_start_3
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v9, "setPremises"

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Class;

    const/4 v11, 0x0

    const-class v12, Ljava/lang/String;

    aput-object v12, v10, v11

    invoke-virtual {v0, v9, v10}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 303
    if-eqz v0, :cond_5

    .line 304
    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    const-string v11, "POI"

    aput-object v11, v9, v10

    invoke-virtual {v0, v6, v9}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    .line 307
    :cond_5
    :goto_7
    iget-object v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBufHandler;->poilist:Ljava/util/ArrayList;

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 308
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBufHandler;->isPoi:Z

    .line 283
    add-int/lit8 v0, v4, 0x1

    move v4, v0

    goto/16 :goto_5

    .line 310
    :cond_6
    const/4 v0, 0x0

    move v4, v0

    :goto_8
    if-ge v4, v8, :cond_9

    .line 311
    invoke-static {}, Lcom/mapabc/mapapi/core/e;->d()Landroid/location/Address;

    move-result-object v6

    .line 312
    iget-object v0, v1, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBufHandler$g;->a:Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBufHandler$d;

    iget-object v0, v0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBufHandler$d;->a:Ljava/lang/String;

    invoke-virtual {v6, v0}, Landroid/location/Address;->setAdminArea(Ljava/lang/String;)V

    .line 313
    iget-object v0, v1, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBufHandler$g;->b:Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBufHandler$a;

    iget-object v0, v0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBufHandler$a;->a:Ljava/lang/String;

    invoke-virtual {v6, v0}, Landroid/location/Address;->setLocality(Ljava/lang/String;)V

    .line 315
    :try_start_4
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v7, "setSubLocality"

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Class;

    const/4 v10, 0x0

    const-class v11, Ljava/lang/String;

    aput-object v11, v9, v10

    invoke-virtual {v0, v7, v9}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 317
    if-eqz v0, :cond_7

    .line 318
    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v9, 0x0

    iget-object v10, v1, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBufHandler$g;->c:Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBufHandler$c;

    iget-object v10, v10, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBufHandler$c;->a:Ljava/lang/String;

    aput-object v10, v7, v9

    invoke-virtual {v0, v6, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    .line 321
    :cond_7
    :goto_9
    iget-object v0, v1, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBufHandler$g;->f:Ljava/util/List;

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBufHandler$b;

    .line 322
    iget-object v7, v0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBufHandler$b;->a:Ljava/lang/String;

    invoke-virtual {v6, v7}, Landroid/location/Address;->setFeatureName(Ljava/lang/String;)V

    .line 323
    iget-object v7, v0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBufHandler$b;->b:Ljava/lang/String;

    invoke-static {v7}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v9

    invoke-virtual {v6, v9, v10}, Landroid/location/Address;->setLongitude(D)V

    .line 324
    iget-object v0, v0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBufHandler$b;->c:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v9

    invoke-virtual {v6, v9, v10}, Landroid/location/Address;->setLatitude(D)V

    .line 326
    :try_start_5
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v7, "setPremises"

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Class;

    const/4 v10, 0x0

    const-class v11, Ljava/lang/String;

    aput-object v11, v9, v10

    invoke-virtual {v0, v7, v9}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 328
    if-eqz v0, :cond_8

    .line 329
    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v9, 0x0

    const-string v10, "Cross"

    aput-object v10, v7, v9

    invoke-virtual {v0, v6, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    .line 332
    :cond_8
    :goto_a
    iget-object v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBufHandler;->crosslist:Ljava/util/ArrayList;

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 333
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBufHandler;->isCross:Z

    .line 310
    add-int/lit8 v0, v4, 0x1

    move v4, v0

    goto :goto_8

    .line 336
    :cond_9
    iget-boolean v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBufHandler;->isCross:Z

    if-eqz v0, :cond_a

    .line 337
    iget-object v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBufHandler;->crosslist:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 340
    :cond_a
    iget-object v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBufHandler;->poilist:Ljava/util/ArrayList;

    invoke-direct {p0, v2, v0}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBufHandler;->addAddressItem(Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 342
    iget v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBufHandler;->mMaxResult:I

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    sub-int/2addr v0, v1

    if-nez v0, :cond_c

    .line 343
    iget-boolean v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBufHandler;->isRoad:Z

    if-eqz v0, :cond_b

    .line 344
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    iget-object v1, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBufHandler;->roadlist:Ljava/util/ArrayList;

    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 250
    :cond_b
    :goto_b
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto/16 :goto_1

    .line 347
    :cond_c
    iget-object v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBufHandler;->roadlist:Ljava/util/ArrayList;

    invoke-direct {p0, v2, v0}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBufHandler;->addAddressItem(Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    goto :goto_b

    .line 351
    :cond_d
    if-eqz p1, :cond_e

    .line 353
    :try_start_6
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_0

    :cond_e
    move-object v0, v2

    .line 359
    goto/16 :goto_0

    .line 355
    :catch_0
    move-exception v0

    .line 356
    new-instance v0, Lcom/mapabc/mapapi/core/MapAbcException;

    const-string v1, "IO \u64cd\u4f5c\u5f02\u5e38 - IOException"

    invoke-direct {v0, v1}, Lcom/mapabc/mapapi/core/MapAbcException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 330
    :catch_1
    move-exception v0

    goto :goto_a

    .line 319
    :catch_2
    move-exception v0

    goto/16 :goto_9

    .line 305
    :catch_3
    move-exception v0

    goto/16 :goto_7

    .line 292
    :catch_4
    move-exception v0

    goto/16 :goto_6

    .line 278
    :catch_5
    move-exception v0

    goto/16 :goto_4

    .line 268
    :catch_6
    move-exception v0

    goto/16 :goto_3
.end method

.method protected makePostRequestBytes()[B
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 55
    const/16 v0, 0x71a

    invoke-static {v0}, Lcom/mapabc/mapapi/core/i;->a(I)[B

    move-result-object v1

    .line 56
    invoke-static {}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$ReverseGeocodingRequest;->newBuilder()Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$ReverseGeocodingRequest$Builder;

    move-result-object v2

    .line 58
    invoke-static {}, Lcom/mapabc/mapapi/core/CommonProtoBuf$Common;->newBuilder()Lcom/mapabc/mapapi/core/CommonProtoBuf$Common$Builder;

    move-result-object v3

    .line 59
    iget-object v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBufHandler;->task:Ljava/lang/Object;

    check-cast v0, Lcom/mapabc/mapapi/core/y;

    iget-object v0, v0, Lcom/mapabc/mapapi/core/y;->a:Ljava/lang/String;

    invoke-virtual {v3, v0}, Lcom/mapabc/mapapi/core/CommonProtoBuf$Common$Builder;->setConfig(Ljava/lang/String;)Lcom/mapabc/mapapi/core/CommonProtoBuf$Common$Builder;

    .line 60
    iget-object v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBufHandler;->task:Ljava/lang/Object;

    check-cast v0, Lcom/mapabc/mapapi/core/y;

    iget-object v0, v0, Lcom/mapabc/mapapi/core/y;->d:Ljava/lang/String;

    invoke-virtual {v3, v0}, Lcom/mapabc/mapapi/core/CommonProtoBuf$Common$Builder;->setAK(Ljava/lang/String;)Lcom/mapabc/mapapi/core/CommonProtoBuf$Common$Builder;

    .line 61
    iget-object v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBufHandler;->task:Ljava/lang/Object;

    check-cast v0, Lcom/mapabc/mapapi/core/y;

    iget-object v0, v0, Lcom/mapabc/mapapi/core/y;->b:Ljava/lang/String;

    invoke-virtual {v3, v0}, Lcom/mapabc/mapapi/core/CommonProtoBuf$Common$Builder;->setResType(Ljava/lang/String;)Lcom/mapabc/mapapi/core/CommonProtoBuf$Common$Builder;

    .line 62
    iget-object v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBufHandler;->task:Ljava/lang/Object;

    check-cast v0, Lcom/mapabc/mapapi/core/y;

    iget-object v0, v0, Lcom/mapabc/mapapi/core/y;->c:Ljava/lang/String;

    invoke-virtual {v3, v0}, Lcom/mapabc/mapapi/core/CommonProtoBuf$Common$Builder;->setEnc(Ljava/lang/String;)Lcom/mapabc/mapapi/core/CommonProtoBuf$Common$Builder;

    .line 63
    invoke-virtual {v2, v3}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$ReverseGeocodingRequest$Builder;->setCommon(Lcom/mapabc/mapapi/core/CommonProtoBuf$Common$Builder;)Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$ReverseGeocodingRequest$Builder;

    .line 64
    iget-object v3, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBufHandler;->mReXML:Ljava/lang/String;

    const/4 v0, 0x4

    new-array v4, v0, [Ljava/lang/Object;

    iget-object v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBufHandler;->task:Ljava/lang/Object;

    check-cast v0, Lcom/mapabc/mapapi/core/y;

    iget-wide v5, v0, Lcom/mapabc/mapapi/core/y;->f:D

    invoke-static {v5, v6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    aput-object v0, v4, v8

    const/4 v5, 0x1

    iget-object v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBufHandler;->task:Ljava/lang/Object;

    check-cast v0, Lcom/mapabc/mapapi/core/y;

    iget-wide v6, v0, Lcom/mapabc/mapapi/core/y;->g:D

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    aput-object v0, v4, v5

    const/4 v5, 0x2

    iget-object v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBufHandler;->task:Ljava/lang/Object;

    check-cast v0, Lcom/mapabc/mapapi/core/y;

    iget v0, v0, Lcom/mapabc/mapapi/core/y;->h:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v4, v5

    const/4 v0, 0x3

    const/16 v5, 0x1f4

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v0

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 71
    invoke-virtual {v2, v0}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$ReverseGeocodingRequest$Builder;->setSpatialXml(Ljava/lang/String;)Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$ReverseGeocodingRequest$Builder;

    .line 72
    invoke-virtual {v2}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$ReverseGeocodingRequest$Builder;->build()Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$ReverseGeocodingRequest;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$ReverseGeocodingRequest;->toByteArray()[B

    move-result-object v0

    .line 73
    array-length v2, v1

    array-length v3, v0

    add-int/2addr v2, v3

    new-array v2, v2, [B

    .line 74
    array-length v3, v1

    invoke-static {v1, v8, v2, v8, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 75
    array-length v1, v1

    array-length v3, v0

    invoke-static {v0, v8, v2, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 76
    return-object v2
.end method

.method protected parseProtoBufResponse([B)Z
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/mapabc/mapapi/core/MapAbcException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x4

    const/4 v2, 0x0

    .line 82
    new-instance v0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBufHandler$e;

    invoke-direct {v0}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBufHandler$e;-><init>()V

    iput-object v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBufHandler;->reverseGeocodingResponse:Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBufHandler$e;

    .line 83
    new-array v0, v3, [B

    .line 84
    invoke-static {p1, v2, v0, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 85
    invoke-static {v0}, Lcom/mapabc/mapapi/core/i;->a([B)I

    move-result v0

    .line 86
    new-array v1, v0, [B

    .line 87
    invoke-static {p1, v3, v1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 88
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v1}, Ljava/lang/String;-><init>([B)V

    iput-object v3, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBufHandler;->serverReturnCode:Ljava/lang/String;

    .line 89
    const-string v1, "000000"

    iget-object v3, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBufHandler;->serverReturnCode:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1b

    .line 90
    array-length v1, p1

    add-int/lit8 v1, v1, -0x4

    sub-int/2addr v1, v0

    new-array v1, v1, [B

    .line 91
    add-int/lit8 v0, v0, 0x4

    array-length v3, v1

    invoke-static {p1, v0, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 94
    :try_start_0
    invoke-static {v1}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$ReverseGeocodingResponse;->parseFrom([B)Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$ReverseGeocodingResponse;
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 99
    invoke-virtual {v0}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$ReverseGeocodingResponse;->getSpatialCount()I

    move-result v1

    if-lez v1, :cond_1a

    .line 100
    invoke-virtual {v0}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$ReverseGeocodingResponse;->getSpatialList()Ljava/util/List;

    move-result-object v5

    .line 102
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v6

    move v4, v2

    .line 111
    :goto_0
    if-ge v4, v6, :cond_1a

    .line 112
    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Spatial;

    .line 113
    new-instance v7, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBufHandler$g;

    invoke-direct {v7}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBufHandler$g;-><init>()V

    .line 114
    invoke-virtual {v0}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Spatial;->hasProvince()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 115
    new-instance v1, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBufHandler$d;

    invoke-direct {v1}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBufHandler$d;-><init>()V

    .line 116
    invoke-virtual {v0}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Spatial;->getProvince()Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Province;

    move-result-object v3

    invoke-virtual {v3}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Province;->hasName()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 117
    invoke-virtual {v0}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Spatial;->getProvince()Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Province;

    move-result-object v3

    invoke-virtual {v3}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Province;->getName()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBufHandler$d;->a:Ljava/lang/String;

    .line 120
    :cond_0
    invoke-virtual {v0}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Spatial;->getProvince()Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Province;

    move-result-object v3

    invoke-virtual {v3}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Province;->hasCode()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 121
    invoke-virtual {v0}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Spatial;->getProvince()Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Province;

    move-result-object v3

    invoke-virtual {v3}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Province;->getCode()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBufHandler$d;->b:Ljava/lang/String;

    .line 124
    :cond_1
    iput-object v1, v7, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBufHandler$g;->a:Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBufHandler$d;

    .line 126
    :cond_2
    invoke-virtual {v0}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Spatial;->hasCity()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 127
    new-instance v1, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBufHandler$a;

    invoke-direct {v1}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBufHandler$a;-><init>()V

    .line 128
    invoke-virtual {v0}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Spatial;->getCity()Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$City;

    move-result-object v3

    invoke-virtual {v3}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$City;->hasName()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 129
    invoke-virtual {v0}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Spatial;->getCity()Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$City;

    move-result-object v3

    invoke-virtual {v3}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$City;->getName()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBufHandler$a;->a:Ljava/lang/String;

    .line 131
    :cond_3
    invoke-virtual {v0}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Spatial;->getCity()Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$City;

    move-result-object v3

    invoke-virtual {v3}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$City;->hasCode()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 132
    invoke-virtual {v0}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Spatial;->getCity()Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$City;

    move-result-object v3

    invoke-virtual {v3}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$City;->getCode()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBufHandler$a;->b:Ljava/lang/String;

    .line 134
    :cond_4
    invoke-virtual {v0}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Spatial;->getCity()Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$City;

    move-result-object v3

    invoke-virtual {v3}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$City;->hasTel()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 135
    invoke-virtual {v0}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Spatial;->getCity()Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$City;

    move-result-object v3

    invoke-virtual {v3}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$City;->getTel()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBufHandler$a;->c:Ljava/lang/String;

    .line 137
    :cond_5
    iput-object v1, v7, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBufHandler$g;->b:Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBufHandler$a;

    .line 139
    :cond_6
    invoke-virtual {v0}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Spatial;->hasDistrict()Z

    move-result v1

    if-eqz v1, :cond_c

    .line 140
    new-instance v1, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBufHandler$c;

    invoke-direct {v1}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBufHandler$c;-><init>()V

    .line 141
    invoke-virtual {v0}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Spatial;->getDistrict()Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$District;

    move-result-object v3

    invoke-virtual {v3}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$District;->hasName()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 142
    invoke-virtual {v0}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Spatial;->getDistrict()Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$District;

    move-result-object v3

    invoke-virtual {v3}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$District;->getName()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBufHandler$c;->a:Ljava/lang/String;

    .line 145
    :cond_7
    invoke-virtual {v0}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Spatial;->getDistrict()Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$District;

    move-result-object v3

    invoke-virtual {v3}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$District;->hasCode()Z

    move-result v3

    if-eqz v3, :cond_8

    .line 146
    invoke-virtual {v0}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Spatial;->getDistrict()Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$District;

    move-result-object v3

    invoke-virtual {v3}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$District;->getCode()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBufHandler$c;->b:Ljava/lang/String;

    .line 149
    :cond_8
    invoke-virtual {v0}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Spatial;->getDistrict()Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$District;

    move-result-object v3

    invoke-virtual {v3}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$District;->hasX()Z

    move-result v3

    if-eqz v3, :cond_9

    .line 150
    invoke-virtual {v0}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Spatial;->getDistrict()Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$District;

    move-result-object v3

    invoke-virtual {v3}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$District;->getX()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBufHandler$c;->c:Ljava/lang/String;

    .line 152
    :cond_9
    invoke-virtual {v0}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Spatial;->getDistrict()Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$District;

    move-result-object v3

    invoke-virtual {v3}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$District;->hasY()Z

    move-result v3

    if-eqz v3, :cond_a

    .line 153
    invoke-virtual {v0}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Spatial;->getDistrict()Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$District;

    move-result-object v3

    invoke-virtual {v3}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$District;->getY()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBufHandler$c;->d:Ljava/lang/String;

    .line 155
    :cond_a
    invoke-virtual {v0}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Spatial;->getDistrict()Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$District;

    move-result-object v3

    invoke-virtual {v3}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$District;->hasBounds()Z

    move-result v3

    if-eqz v3, :cond_b

    .line 156
    invoke-virtual {v0}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Spatial;->getDistrict()Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$District;

    move-result-object v3

    invoke-virtual {v3}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$District;->getBounds()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBufHandler$c;->e:Ljava/lang/String;

    .line 159
    :cond_b
    iput-object v1, v7, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBufHandler$g;->c:Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBufHandler$c;

    .line 161
    :cond_c
    invoke-virtual {v0}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Spatial;->hasRoads()Z

    move-result v1

    if-eqz v1, :cond_14

    .line 162
    invoke-virtual {v0}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Spatial;->getRoads()Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Roads;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Roads;->getRoadList()Ljava/util/List;

    move-result-object v8

    .line 164
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v9

    move v3, v2

    .line 166
    :goto_1
    if-ge v3, v9, :cond_14

    .line 167
    invoke-interface {v8, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Road;

    .line 168
    new-instance v10, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBufHandler$f;

    invoke-direct {v10}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBufHandler$f;-><init>()V

    .line 169
    invoke-virtual {v1}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Road;->hasId()Z

    move-result v11

    if-eqz v11, :cond_d

    .line 170
    invoke-virtual {v1}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Road;->getId()Ljava/lang/String;

    move-result-object v11

    iput-object v11, v10, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBufHandler$f;->a:Ljava/lang/String;

    .line 172
    :cond_d
    invoke-virtual {v1}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Road;->hasName()Z

    move-result v11

    if-eqz v11, :cond_e

    .line 173
    invoke-virtual {v1}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Road;->getName()Ljava/lang/String;

    move-result-object v11

    iput-object v11, v10, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBufHandler$f;->b:Ljava/lang/String;

    .line 175
    :cond_e
    invoke-virtual {v1}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Road;->hasEname()Z

    move-result v11

    if-eqz v11, :cond_f

    .line 176
    invoke-virtual {v1}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Road;->getEname()Ljava/lang/String;

    move-result-object v11

    iput-object v11, v10, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBufHandler$f;->c:Ljava/lang/String;

    .line 178
    :cond_f
    invoke-virtual {v1}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Road;->hasWidth()Z

    move-result v11

    if-eqz v11, :cond_10

    .line 179
    invoke-virtual {v1}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Road;->getWidth()Ljava/lang/String;

    move-result-object v11

    iput-object v11, v10, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBufHandler$f;->d:Ljava/lang/String;

    .line 181
    :cond_10
    invoke-virtual {v1}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Road;->hasLevel()Z

    move-result v11

    if-eqz v11, :cond_11

    .line 182
    invoke-virtual {v1}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Road;->getLevel()Ljava/lang/String;

    move-result-object v11

    iput-object v11, v10, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBufHandler$f;->e:Ljava/lang/String;

    .line 184
    :cond_11
    invoke-virtual {v1}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Road;->hasDistance()Z

    move-result v11

    if-eqz v11, :cond_12

    .line 185
    invoke-virtual {v1}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Road;->getDistance()Ljava/lang/String;

    move-result-object v11

    iput-object v11, v10, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBufHandler$f;->f:Ljava/lang/String;

    .line 187
    :cond_12
    invoke-virtual {v1}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Road;->hasDirection()Z

    move-result v11

    if-eqz v11, :cond_13

    .line 188
    invoke-virtual {v1}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Road;->getDirection()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v10, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBufHandler$f;->g:Ljava/lang/String;

    .line 190
    :cond_13
    iget-object v1, v7, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBufHandler$g;->d:Ljava/util/List;

    invoke-interface {v1, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 166
    add-int/lit8 v1, v3, 0x1

    move v3, v1

    goto :goto_1

    .line 96
    :catch_0
    move-exception v0

    .line 97
    new-instance v0, Lcom/mapabc/mapapi/core/MapAbcException;

    const-string v1, "protobuf\u89e3\u6790\u9519\u8bef - InvalidProtocolBufferException"

    invoke-direct {v0, v1}, Lcom/mapabc/mapapi/core/MapAbcException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 193
    :cond_14
    invoke-virtual {v0}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Spatial;->hasPois()Z

    move-result v1

    if-eqz v1, :cond_15

    .line 194
    invoke-virtual {v0}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Spatial;->getPois()Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$POIS;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$POIS;->getPoiList()Ljava/util/List;

    move-result-object v8

    .line 196
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v9

    move v3, v2

    .line 198
    :goto_2
    if-ge v3, v9, :cond_15

    .line 199
    invoke-interface {v8, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI;

    .line 200
    invoke-virtual {p0, v1}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBufHandler;->initPOIEntity(Lcom/mapabc/mapapi/core/CommonProtoBuf$POI;)Lcom/mapabc/mapapi/core/s$a;

    move-result-object v1

    .line 201
    iget-object v10, v7, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBufHandler$g;->e:Ljava/util/List;

    invoke-interface {v10, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 198
    add-int/lit8 v1, v3, 0x1

    move v3, v1

    goto :goto_2

    .line 204
    :cond_15
    invoke-virtual {v0}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Spatial;->hasCrosses()Z

    move-result v1

    if-eqz v1, :cond_19

    .line 205
    invoke-virtual {v0}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Spatial;->getCrosses()Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Crosses;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Crosses;->getCrossList()Ljava/util/List;

    move-result-object v3

    .line 207
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v8

    move v1, v2

    .line 209
    :goto_3
    if-ge v1, v8, :cond_19

    .line 210
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Cross;

    .line 211
    new-instance v9, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBufHandler$b;

    invoke-direct {v9}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBufHandler$b;-><init>()V

    .line 212
    invoke-virtual {v0}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Cross;->hasName()Z

    move-result v10

    if-eqz v10, :cond_16

    .line 213
    invoke-virtual {v0}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Cross;->getName()Ljava/lang/String;

    move-result-object v10

    iput-object v10, v9, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBufHandler$b;->a:Ljava/lang/String;

    .line 215
    :cond_16
    invoke-virtual {v0}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Cross;->hasX()Z

    move-result v10

    if-eqz v10, :cond_17

    .line 216
    invoke-virtual {v0}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Cross;->getX()Ljava/lang/String;

    move-result-object v10

    iput-object v10, v9, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBufHandler$b;->b:Ljava/lang/String;

    .line 218
    :cond_17
    invoke-virtual {v0}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Cross;->hasY()Z

    move-result v10

    if-eqz v10, :cond_18

    .line 219
    invoke-virtual {v0}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Cross;->getY()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v9, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBufHandler$b;->c:Ljava/lang/String;

    .line 221
    :cond_18
    iget-object v0, v7, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBufHandler$g;->f:Ljava/util/List;

    invoke-interface {v0, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 209
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_3

    .line 224
    :cond_19
    iget-object v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBufHandler;->reverseGeocodingResponse:Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBufHandler$e;

    iget-object v0, v0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBufHandler$e;->a:Ljava/util/List;

    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 111
    add-int/lit8 v0, v4, 0x1

    move v4, v0

    goto/16 :goto_0

    .line 227
    :cond_1a
    const/4 v0, 0x1

    .line 230
    :goto_4
    return v0

    .line 229
    :cond_1b
    invoke-virtual {p0}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBufHandler;->throwsProtoBufferMapAbcException()V

    move v0, v2

    .line 230
    goto :goto_4
.end method
