.class Lcom/mapabc/mapapi/geocoder/a;
.super Lcom/mapabc/mapapi/core/ac;
.source "GeocodingHandler.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/mapabc/mapapi/core/ac",
        "<",
        "Lcom/mapabc/mapapi/geocoder/b;",
        "Landroid/location/Address;",
        ">;"
    }
.end annotation


# instance fields
.field public a:I


# direct methods
.method public constructor <init>(Lcom/mapabc/mapapi/geocoder/b;Ljava/net/Proxy;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 25
    invoke-direct/range {p0 .. p5}, Lcom/mapabc/mapapi/core/ac;-><init>(Ljava/lang/Object;Ljava/net/Proxy;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 21
    const/4 v0, 0x0

    iput v0, p0, Lcom/mapabc/mapapi/geocoder/a;->a:I

    .line 26
    iget v0, p1, Lcom/mapabc/mapapi/geocoder/b;->f:I

    iput v0, p0, Lcom/mapabc/mapapi/geocoder/a;->a:I

    .line 27
    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;Landroid/location/Address;)V
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 89
    const-string v0, "name"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 90
    invoke-virtual {p3, p2}, Landroid/location/Address;->setFeatureName(Ljava/lang/String;)V

    .line 112
    :cond_0
    :goto_0
    return-void

    .line 91
    :cond_1
    const-string v0, "province"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 92
    invoke-virtual {p3, p2}, Landroid/location/Address;->setAdminArea(Ljava/lang/String;)V

    goto :goto_0

    .line 93
    :cond_2
    const-string v0, "city"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 94
    invoke-virtual {p3, p2}, Landroid/location/Address;->setLocality(Ljava/lang/String;)V

    goto :goto_0

    .line 95
    :cond_3
    const-string v0, "district"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 99
    :try_start_0
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "setSubLocality"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 101
    if-eqz v0, :cond_0

    .line 102
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    invoke-virtual {v0, p3, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 103
    :catch_0
    move-exception v0

    goto :goto_0

    .line 105
    :cond_4
    const-string v0, "address"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 106
    invoke-virtual {p3, v1, p2}, Landroid/location/Address;->setAddressLine(ILjava/lang/String;)V

    goto :goto_0

    .line 107
    :cond_5
    const-string v0, "x"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 108
    invoke-static {p2}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    invoke-virtual {p3, v0, v1}, Landroid/location/Address;->setLongitude(D)V

    goto :goto_0

    .line 109
    :cond_6
    const-string v0, "y"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 110
    invoke-static {p2}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    invoke-virtual {p3, v0, v1}, Landroid/location/Address;->setLatitude(D)V

    goto :goto_0
.end method

.method private a(Lorg/w3c/dom/Node;Landroid/location/Address;)V
    .locals 4

    .prologue
    .line 77
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v1

    .line 78
    const/4 v0, 0x0

    :goto_0
    invoke-interface {v1}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 80
    invoke-interface {v1, v0}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v2

    .line 81
    invoke-interface {v2}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v3

    .line 82
    invoke-virtual {p0, v2}, Lcom/mapabc/mapapi/geocoder/a;->a(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v2

    .line 84
    invoke-direct {p0, v3, v2, p2}, Lcom/mapabc/mapapi/geocoder/a;->a(Ljava/lang/String;Ljava/lang/String;Landroid/location/Address;)V

    .line 78
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 86
    :cond_0
    return-void
.end method


# virtual methods
.method protected a(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/location/Address;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 117
    return-void
.end method

.method protected a(Lorg/w3c/dom/Node;Ljava/util/ArrayList;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/w3c/dom/Node;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/location/Address;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 58
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "list"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 74
    :cond_0
    return-void

    .line 63
    :cond_1
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v1

    .line 65
    iget v0, p0, Lcom/mapabc/mapapi/geocoder/a;->a:I

    invoke-interface {v1}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v2

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 66
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    .line 67
    invoke-interface {v1, v0}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v3

    .line 68
    invoke-interface {v3}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "poi"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Lorg/w3c/dom/Node;->hasChildNodes()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 69
    invoke-static {}, Lcom/mapabc/mapapi/core/e;->d()Landroid/location/Address;

    move-result-object v4

    .line 70
    invoke-direct {p0, v3, v4}, Lcom/mapabc/mapapi/geocoder/a;->a(Lorg/w3c/dom/Node;Landroid/location/Address;)V

    .line 71
    invoke-virtual {p2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 66
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method protected getRequestLines()[Ljava/lang/String;
    .locals 5

    .prologue
    .line 31
    const/4 v0, 0x4

    new-array v2, v0, [Ljava/lang/String;

    .line 32
    const/4 v0, 0x0

    const-string v1, "&enc=utf-8"

    aput-object v1, v2, v0

    .line 33
    const/4 v0, 0x1

    const-string v1, "&ver=2"

    aput-object v1, v2, v0

    .line 34
    iget-object v0, p0, Lcom/mapabc/mapapi/geocoder/a;->task:Ljava/lang/Object;

    check-cast v0, Lcom/mapabc/mapapi/geocoder/b;

    iget-object v0, v0, Lcom/mapabc/mapapi/geocoder/b;->e:Ljava/lang/String;

    .line 36
    :try_start_0
    const-string v1, "utf-8"

    invoke-static {v0, v1}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 41
    :goto_0
    const/4 v1, 0x2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "&address="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v1

    .line 42
    const/4 v0, 0x3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "&a_k="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/mapabc/mapapi/geocoder/a;->getmKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v2, v0

    .line 48
    return-object v2

    .line 37
    :catch_0
    move-exception v1

    .line 39
    invoke-virtual {v1}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto :goto_0
.end method

.method protected getRequestType()Z
    .locals 1

    .prologue
    .line 128
    const/4 v0, 0x1

    return v0
.end method

.method protected getServiceCode()I
    .locals 1

    .prologue
    .line 53
    const/16 v0, 0x10

    return v0
.end method

.method protected getUrl()Ljava/lang/String;
    .locals 2

    .prologue
    .line 121
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/mapabc/mapapi/core/o;->a()Lcom/mapabc/mapapi/core/o;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mapabc/mapapi/core/o;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/sisserver?config=GOC"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
