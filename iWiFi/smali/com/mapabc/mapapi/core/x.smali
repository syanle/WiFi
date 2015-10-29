.class public Lcom/mapabc/mapapi/core/x;
.super Lcom/mapabc/mapapi/core/ac;
.source "ReverseGeocodingHandler.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/mapabc/mapapi/core/ac",
        "<",
        "Lcom/mapabc/mapapi/core/y;",
        "Landroid/location/Address;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:I

.field private e:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/location/Address;",
            ">;"
        }
    .end annotation
.end field

.field private f:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/location/Address;",
            ">;"
        }
    .end annotation
.end field

.field private g:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/location/Address;",
            ">;"
        }
    .end annotation
.end field

.field private h:Z

.field private i:Z

.field private j:Z

.field private k:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/mapabc/mapapi/core/y;Ljava/net/Proxy;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 43
    invoke-direct/range {p0 .. p5}, Lcom/mapabc/mapapi/core/ac;-><init>(Ljava/lang/Object;Ljava/net/Proxy;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 20
    iput-object v0, p0, Lcom/mapabc/mapapi/core/x;->a:Ljava/lang/String;

    .line 21
    iput-object v0, p0, Lcom/mapabc/mapapi/core/x;->b:Ljava/lang/String;

    .line 22
    iput-object v0, p0, Lcom/mapabc/mapapi/core/x;->c:Ljava/lang/String;

    .line 27
    const/4 v0, 0x0

    iput v0, p0, Lcom/mapabc/mapapi/core/x;->d:I

    .line 35
    const-string v0, "<?xml version=\'1.0\' encoding=\'utf-8\' ?><spatial_request method=\'searchPoint\'><x>%f</x><y>%f</y><poiNumber>%d</poiNumber><range>%d</range><pattern>0</pattern><roadLevel>0</roadLevel></spatial_request>"

    iput-object v0, p0, Lcom/mapabc/mapapi/core/x;->k:Ljava/lang/String;

    .line 44
    iget v0, p1, Lcom/mapabc/mapapi/core/y;->h:I

    iput v0, p0, Lcom/mapabc/mapapi/core/x;->d:I

    .line 45
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mapabc/mapapi/core/x;->e:Ljava/util/ArrayList;

    .line 46
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mapabc/mapapi/core/x;->f:Ljava/util/ArrayList;

    .line 47
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mapabc/mapapi/core/x;->g:Ljava/util/ArrayList;

    .line 48
    return-void
.end method

.method private a(Lorg/w3c/dom/Node;Ljava/lang/String;)Landroid/location/Address;
    .locals 7

    .prologue
    .line 224
    invoke-interface {p1}, Lorg/w3c/dom/Node;->hasChildNodes()Z

    move-result v0

    if-nez v0, :cond_0

    .line 225
    const/4 v0, 0x0

    .line 245
    :goto_0
    return-object v0

    .line 228
    :cond_0
    invoke-static {}, Lcom/mapabc/mapapi/core/e;->d()Landroid/location/Address;

    move-result-object v1

    .line 229
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v2

    .line 230
    const/4 v0, 0x0

    :goto_1
    invoke-interface {v2}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v3

    if-ge v0, v3, :cond_3

    .line 231
    invoke-interface {v2, v0}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v3

    .line 232
    invoke-interface {v3}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v4

    .line 233
    invoke-virtual {p0, v3}, Lcom/mapabc/mapapi/core/x;->a(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v5

    .line 235
    invoke-interface {v3}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v3

    const/4 v6, 0x1

    if-eq v3, v6, :cond_2

    .line 230
    :cond_1
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 239
    :cond_2
    invoke-static {v5}, Lcom/mapabc/mapapi/core/e;->b(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 242
    invoke-direct {p0, v4, v5, v1}, Lcom/mapabc/mapapi/core/x;->a(Ljava/lang/String;Ljava/lang/String;Landroid/location/Address;)V

    goto :goto_2

    :cond_3
    move-object v0, v1

    .line 245
    goto :goto_0
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;Landroid/location/Address;)V
    .locals 1

    .prologue
    .line 250
    const-string v0, "address"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 251
    const/4 v0, 0x0

    invoke-virtual {p3, v0, p2}, Landroid/location/Address;->setAddressLine(ILjava/lang/String;)V

    .line 259
    :goto_0
    return-void

    .line 252
    :cond_0
    const-string v0, "tel"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 253
    invoke-virtual {p3, p2}, Landroid/location/Address;->setPhone(Ljava/lang/String;)V

    goto :goto_0

    .line 254
    :cond_1
    const-string v0, "name"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 255
    invoke-virtual {p3, p2}, Landroid/location/Address;->setFeatureName(Ljava/lang/String;)V

    goto :goto_0

    .line 257
    :cond_2
    invoke-direct {p0, p1, p2, p3}, Lcom/mapabc/mapapi/core/x;->b(Ljava/lang/String;Ljava/lang/String;Landroid/location/Address;)V

    goto :goto_0
.end method

.method private a(Ljava/util/ArrayList;Ljava/util/ArrayList;)V
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
    .line 213
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 214
    iget v0, p0, Lcom/mapabc/mapapi/core/x;->d:I

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    sub-int v2, v0, v2

    .line 215
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_1

    .line 216
    if-le v1, v0, :cond_0

    .line 217
    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 215
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 221
    :cond_1
    return-void
.end method

.method private a(Lorg/w3c/dom/Node;Ljava/util/ArrayList;Ljava/lang/String;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/w3c/dom/Node;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/location/Address;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    const/4 v9, 0x1

    .line 126
    iget v1, p0, Lcom/mapabc/mapapi/core/x;->d:I

    if-gtz v1, :cond_1

    .line 186
    :cond_0
    return-void

    .line 128
    :cond_1
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v1

    .line 129
    iget v2, p0, Lcom/mapabc/mapapi/core/x;->d:I

    invoke-interface {v1}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 130
    :goto_0
    if-ge v0, v2, :cond_0

    .line 131
    invoke-interface {v1, v0}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v3

    .line 132
    invoke-interface {v3}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v4

    if-eq v4, v9, :cond_3

    .line 130
    :cond_2
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 136
    :cond_3
    invoke-interface {v3}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v4

    .line 137
    invoke-virtual {v4, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 142
    invoke-direct {p0, v3, v4}, Lcom/mapabc/mapapi/core/x;->a(Lorg/w3c/dom/Node;Ljava/lang/String;)Landroid/location/Address;

    move-result-object v3

    .line 143
    const-string v5, "Road"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 147
    :try_start_0
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    const-string v5, "setPremises"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Class;

    const/4 v7, 0x0

    const-class v8, Ljava/lang/String;

    aput-object v8, v6, v7

    invoke-virtual {v4, v5, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    .line 149
    if-eqz v4, :cond_4

    .line 150
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const-string v7, "StreetAndRoad"

    aput-object v7, v5, v6

    invoke-virtual {v4, v3, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 153
    :cond_4
    :goto_2
    if-eqz v3, :cond_2

    .line 154
    iget-object v4, p0, Lcom/mapabc/mapapi/core/x;->e:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 155
    iput-boolean v9, p0, Lcom/mapabc/mapapi/core/x;->h:Z

    goto :goto_1

    .line 158
    :cond_5
    const-string v5, "poi"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 162
    :try_start_1
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    const-string v5, "setPremises"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Class;

    const/4 v7, 0x0

    const-class v8, Ljava/lang/String;

    aput-object v8, v6, v7

    invoke-virtual {v4, v5, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    .line 164
    if-eqz v4, :cond_6

    .line 165
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const-string v7, "POI"

    aput-object v7, v5, v6

    invoke-virtual {v4, v3, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 168
    :cond_6
    :goto_3
    if-eqz v3, :cond_2

    .line 169
    iget-object v4, p0, Lcom/mapabc/mapapi/core/x;->f:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 170
    iput-boolean v9, p0, Lcom/mapabc/mapapi/core/x;->i:Z

    goto :goto_1

    .line 172
    :cond_7
    const-string v5, "cross"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 174
    :try_start_2
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    const-string v5, "setPremises"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Class;

    const/4 v7, 0x0

    const-class v8, Ljava/lang/String;

    aput-object v8, v6, v7

    invoke-virtual {v4, v5, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    .line 176
    if-eqz v4, :cond_8

    .line 177
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const-string v7, "Cross"

    aput-object v7, v5, v6

    invoke-virtual {v4, v3, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 180
    :cond_8
    :goto_4
    if-eqz v3, :cond_2

    .line 181
    iget-object v4, p0, Lcom/mapabc/mapapi/core/x;->g:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 182
    iput-boolean v9, p0, Lcom/mapabc/mapapi/core/x;->j:Z

    goto/16 :goto_1

    .line 178
    :catch_0
    move-exception v4

    goto :goto_4

    .line 166
    :catch_1
    move-exception v4

    goto :goto_3

    .line 151
    :catch_2
    move-exception v4

    goto :goto_2
.end method

.method private b(Lorg/w3c/dom/Node;)Ljava/lang/String;
    .locals 6

    .prologue
    .line 109
    const/4 v1, 0x0

    .line 110
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v2

    .line 111
    const/4 v0, 0x0

    :goto_0
    invoke-interface {v2}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v3

    if-ge v0, v3, :cond_2

    .line 112
    invoke-interface {v2, v0}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v3

    .line 113
    invoke-interface {v3}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v4

    const/4 v5, 0x1

    if-eq v4, v5, :cond_1

    .line 111
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 116
    :cond_1
    invoke-interface {v3}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "name"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 117
    invoke-virtual {p0, v3}, Lcom/mapabc/mapapi/core/x;->a(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v0

    .line 121
    :goto_1
    return-object v0

    :cond_2
    move-object v0, v1

    goto :goto_1
.end method

.method private b(Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/location/Address;",
            ">;)",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/location/Address;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 189
    iget v0, p0, Lcom/mapabc/mapapi/core/x;->d:I

    if-gtz v0, :cond_1

    .line 208
    :cond_0
    :goto_0
    return-object p1

    .line 193
    :cond_1
    iget-boolean v0, p0, Lcom/mapabc/mapapi/core/x;->j:Z

    if-eqz v0, :cond_2

    .line 194
    iget-object v0, p0, Lcom/mapabc/mapapi/core/x;->g:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 197
    :cond_2
    iget-object v0, p0, Lcom/mapabc/mapapi/core/x;->f:Ljava/util/ArrayList;

    invoke-direct {p0, p1, v0}, Lcom/mapabc/mapapi/core/x;->a(Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 200
    iget v0, p0, Lcom/mapabc/mapapi/core/x;->d:I

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    sub-int/2addr v0, v1

    if-nez v0, :cond_3

    .line 201
    iget-boolean v0, p0, Lcom/mapabc/mapapi/core/x;->h:Z

    if-eqz v0, :cond_0

    .line 202
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    iget-object v1, p0, Lcom/mapabc/mapapi/core/x;->e:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 205
    :cond_3
    iget-object v0, p0, Lcom/mapabc/mapapi/core/x;->e:Ljava/util/ArrayList;

    invoke-direct {p0, p1, v0}, Lcom/mapabc/mapapi/core/x;->a(Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    goto :goto_0
.end method

.method private b(Ljava/lang/String;Ljava/lang/String;Landroid/location/Address;)V
    .locals 2

    .prologue
    .line 262
    const-string v0, "x"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 263
    invoke-static {p2}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    invoke-virtual {p3, v0, v1}, Landroid/location/Address;->setLongitude(D)V

    .line 267
    :cond_0
    :goto_0
    return-void

    .line 264
    :cond_1
    const-string v0, "y"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 265
    invoke-static {p2}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    invoke-virtual {p3, v0, v1}, Landroid/location/Address;->setLatitude(D)V

    goto :goto_0
.end method

.method private b(Lorg/w3c/dom/Node;Ljava/util/ArrayList;)V
    .locals 2
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
    .line 91
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v0

    .line 92
    const-string v1, "Province"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 93
    invoke-direct {p0, p1}, Lcom/mapabc/mapapi/core/x;->b(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mapabc/mapapi/core/x;->b:Ljava/lang/String;

    .line 106
    :cond_0
    :goto_0
    return-void

    .line 94
    :cond_1
    const-string v1, "City"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 95
    invoke-direct {p0, p1}, Lcom/mapabc/mapapi/core/x;->b(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mapabc/mapapi/core/x;->a:Ljava/lang/String;

    goto :goto_0

    .line 96
    :cond_2
    const-string v1, "District"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 97
    invoke-direct {p0, p1}, Lcom/mapabc/mapapi/core/x;->b(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mapabc/mapapi/core/x;->c:Ljava/lang/String;

    goto :goto_0

    .line 98
    :cond_3
    const-string v1, "roadList"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 99
    const-string v0, "Road"

    invoke-direct {p0, p1, p2, v0}, Lcom/mapabc/mapapi/core/x;->a(Lorg/w3c/dom/Node;Ljava/util/ArrayList;Ljava/lang/String;)V

    goto :goto_0

    .line 100
    :cond_4
    const-string v1, "poiList"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 101
    const-string v0, "poi"

    invoke-direct {p0, p1, p2, v0}, Lcom/mapabc/mapapi/core/x;->a(Lorg/w3c/dom/Node;Ljava/util/ArrayList;Ljava/lang/String;)V

    goto :goto_0

    .line 102
    :cond_5
    const-string v1, "crossPoiList"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 103
    const-string v0, "cross"

    invoke-direct {p0, p1, p2, v0}, Lcom/mapabc/mapapi/core/x;->a(Lorg/w3c/dom/Node;Ljava/util/ArrayList;Ljava/lang/String;)V

    .line 104
    invoke-direct {p0, p2}, Lcom/mapabc/mapapi/core/x;->b(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    goto :goto_0
.end method


# virtual methods
.method protected a(Ljava/util/ArrayList;)V
    .locals 7
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
    .line 271
    iget-object v0, p0, Lcom/mapabc/mapapi/core/x;->b:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 272
    invoke-static {}, Lcom/mapabc/mapapi/core/e;->d()Landroid/location/Address;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 275
    :cond_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/Address;

    .line 276
    iget-object v2, p0, Lcom/mapabc/mapapi/core/x;->b:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/location/Address;->setAdminArea(Ljava/lang/String;)V

    .line 277
    iget-object v2, p0, Lcom/mapabc/mapapi/core/x;->a:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/location/Address;->setLocality(Ljava/lang/String;)V

    .line 281
    :try_start_0
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-string v3, "setSubLocality"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    const-class v6, Ljava/lang/String;

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 283
    if-eqz v2, :cond_1

    .line 284
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/mapabc/mapapi/core/x;->c:Ljava/lang/String;

    aput-object v5, v3, v4

    invoke-virtual {v2, v0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 285
    :catch_0
    move-exception v0

    goto :goto_0

    .line 289
    :cond_2
    return-void
.end method

.method protected a(Lorg/w3c/dom/Node;Ljava/util/ArrayList;)V
    .locals 3
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
    .line 82
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v1

    .line 83
    const/4 v0, 0x0

    :goto_0
    invoke-interface {v1}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 84
    invoke-interface {v1, v0}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v2

    .line 85
    invoke-direct {p0, v2, p2}, Lcom/mapabc/mapapi/core/x;->b(Lorg/w3c/dom/Node;Ljava/util/ArrayList;)V

    .line 83
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 88
    :cond_0
    return-void
.end method

.method protected getRequestLines()[Ljava/lang/String;
    .locals 10

    .prologue
    const/4 v0, 0x3

    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v1, 0x0

    .line 52
    .line 53
    new-array v2, v0, [Ljava/lang/String;

    .line 54
    const-string v0, "&enc=utf-8"

    aput-object v0, v2, v1

    .line 55
    const-string v1, ""

    .line 57
    :try_start_0
    iget-object v3, p0, Lcom/mapabc/mapapi/core/x;->k:Ljava/lang/String;

    const/4 v0, 0x4

    new-array v4, v0, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget-object v0, p0, Lcom/mapabc/mapapi/core/x;->task:Ljava/lang/Object;

    check-cast v0, Lcom/mapabc/mapapi/core/y;

    iget-wide v6, v0, Lcom/mapabc/mapapi/core/y;->f:D

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    aput-object v0, v4, v5

    const/4 v5, 0x1

    iget-object v0, p0, Lcom/mapabc/mapapi/core/x;->task:Ljava/lang/Object;

    check-cast v0, Lcom/mapabc/mapapi/core/y;

    iget-wide v6, v0, Lcom/mapabc/mapapi/core/y;->g:D

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    aput-object v0, v4, v5

    const/4 v5, 0x2

    iget-object v0, p0, Lcom/mapabc/mapapi/core/x;->task:Ljava/lang/Object;

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

    const-string v3, "utf-8"

    invoke-static {v0, v3}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 62
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "&spatialXml="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v8

    .line 63
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "&a_k="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/mapabc/mapapi/core/x;->getmKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v9

    .line 72
    return-object v2

    .line 59
    :catch_0
    move-exception v0

    .line 60
    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    move-object v0, v1

    goto :goto_0
.end method

.method protected getRequestType()Z
    .locals 1

    .prologue
    .line 300
    const/4 v0, 0x1

    return v0
.end method

.method protected getServiceCode()I
    .locals 1

    .prologue
    .line 77
    const/16 v0, 0x11

    return v0
.end method

.method protected getUrl()Ljava/lang/String;
    .locals 2

    .prologue
    .line 293
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/mapabc/mapapi/core/o;->a()Lcom/mapabc/mapapi/core/o;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mapabc/mapapi/core/o;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/sisserver?&config=SPAS&resType=xml"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
