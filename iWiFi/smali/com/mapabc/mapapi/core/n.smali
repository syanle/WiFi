.class public Lcom/mapabc/mapapi/core/n;
.super Ljava/lang/Object;
.source "MapConfigParseManager.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/io/InputStream;)Lcom/mapabc/mapapi/core/m;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 24
    .line 25
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v3

    .line 27
    const-string v0, "UTF-8"

    invoke-interface {v3, p0, v0}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 28
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v0

    move v2, v0

    move-object v0, v1

    .line 29
    :goto_0
    const/4 v4, 0x1

    if-eq v2, v4, :cond_4a

    .line 30
    packed-switch v2, :pswitch_data_0

    .line 417
    :cond_0
    :goto_1
    :pswitch_0
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v2

    goto :goto_0

    .line 32
    :pswitch_1
    new-instance v1, Lcom/mapabc/mapapi/core/m;

    invoke-direct {v1}, Lcom/mapabc/mapapi/core/m;-><init>()V

    goto :goto_1

    .line 35
    :pswitch_2
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 36
    if-eqz v1, :cond_0

    .line 37
    const-string v4, "AuthKey"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 38
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v1, Lcom/mapabc/mapapi/core/m;->a:Ljava/lang/String;

    .line 40
    :cond_1
    const-string v4, "CoordinateSys"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 41
    new-instance v4, Lcom/mapabc/mapapi/core/m$a;

    invoke-direct {v4}, Lcom/mapabc/mapapi/core/m$a;-><init>()V

    iput-object v4, v1, Lcom/mapabc/mapapi/core/m;->b:Lcom/mapabc/mapapi/core/m$a;

    .line 43
    :cond_2
    iget-object v4, v1, Lcom/mapabc/mapapi/core/m;->b:Lcom/mapabc/mapapi/core/m$a;

    if-eqz v4, :cond_7

    .line 44
    const-string v4, "Projection"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 45
    iget-object v4, v1, Lcom/mapabc/mapapi/core/m;->b:Lcom/mapabc/mapapi/core/m$a;

    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/mapabc/mapapi/core/m$a;->a:Ljava/lang/String;

    .line 48
    :cond_3
    const-string v4, "MaxResolution"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 49
    iget-object v4, v1, Lcom/mapabc/mapapi/core/m;->b:Lcom/mapabc/mapapi/core/m$a;

    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v5

    iput-wide v5, v4, Lcom/mapabc/mapapi/core/m$a;->b:D

    .line 52
    :cond_4
    const-string v4, "CutDirection"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 53
    iget-object v4, v1, Lcom/mapabc/mapapi/core/m;->b:Lcom/mapabc/mapapi/core/m$a;

    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    iput v5, v4, Lcom/mapabc/mapapi/core/m$a;->c:I

    .line 56
    :cond_5
    const-string v4, "CutOriX"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 57
    iget-object v4, v1, Lcom/mapabc/mapapi/core/m;->b:Lcom/mapabc/mapapi/core/m$a;

    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v5

    iput-wide v5, v4, Lcom/mapabc/mapapi/core/m$a;->d:D

    .line 60
    :cond_6
    const-string v4, "CutOriY"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 61
    iget-object v4, v1, Lcom/mapabc/mapapi/core/m;->b:Lcom/mapabc/mapapi/core/m$a;

    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v5

    iput-wide v5, v4, Lcom/mapabc/mapapi/core/m$a;->e:D

    .line 66
    :cond_7
    const-string v4, "Grid"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 67
    new-instance v0, Lcom/mapabc/mapapi/core/m$b;

    invoke-direct {v0}, Lcom/mapabc/mapapi/core/m$b;-><init>()V

    iput-object v0, v1, Lcom/mapabc/mapapi/core/m;->c:Lcom/mapabc/mapapi/core/m$b;

    move-object v0, v2

    .line 70
    :cond_8
    iget-object v4, v1, Lcom/mapabc/mapapi/core/m;->c:Lcom/mapabc/mapapi/core/m$b;

    if-eqz v4, :cond_31

    .line 71
    const-string v4, "TileSize"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_9

    const-string v4, "Grid"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 72
    iget-object v4, v1, Lcom/mapabc/mapapi/core/m;->c:Lcom/mapabc/mapapi/core/m$b;

    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/mapabc/mapapi/core/m$b;->a:Ljava/lang/String;

    .line 75
    :cond_9
    const-string v4, "GridMap"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 76
    iget-object v0, v1, Lcom/mapabc/mapapi/core/m;->c:Lcom/mapabc/mapapi/core/m$b;

    new-instance v4, Lcom/mapabc/mapapi/core/m$c;

    invoke-direct {v4}, Lcom/mapabc/mapapi/core/m$c;-><init>()V

    iput-object v4, v0, Lcom/mapabc/mapapi/core/m$b;->b:Lcom/mapabc/mapapi/core/m$c;

    move-object v0, v2

    .line 79
    :cond_a
    iget-object v4, v1, Lcom/mapabc/mapapi/core/m;->c:Lcom/mapabc/mapapi/core/m$b;

    iget-object v4, v4, Lcom/mapabc/mapapi/core/m$b;->b:Lcom/mapabc/mapapi/core/m$c;

    if-eqz v4, :cond_13

    .line 80
    const-string v4, "BaseLayer"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_b

    const-string v4, "GridMap"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_b

    .line 82
    iget-object v4, v1, Lcom/mapabc/mapapi/core/m;->c:Lcom/mapabc/mapapi/core/m$b;

    iget-object v4, v4, Lcom/mapabc/mapapi/core/m$b;->b:Lcom/mapabc/mapapi/core/m$c;

    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v5

    iput-boolean v5, v4, Lcom/mapabc/mapapi/core/m$c;->a:Z

    .line 85
    :cond_b
    const-string v4, "VectorRoad"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_c

    const-string v4, "GridMap"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_c

    .line 87
    iget-object v4, v1, Lcom/mapabc/mapapi/core/m;->c:Lcom/mapabc/mapapi/core/m$b;

    iget-object v4, v4, Lcom/mapabc/mapapi/core/m$b;->b:Lcom/mapabc/mapapi/core/m$c;

    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v5

    iput-boolean v5, v4, Lcom/mapabc/mapapi/core/m$c;->b:Z

    .line 90
    :cond_c
    const-string v4, "Cache"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_d

    const-string v4, "GridMap"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_d

    .line 92
    iget-object v4, v1, Lcom/mapabc/mapapi/core/m;->c:Lcom/mapabc/mapapi/core/m$b;

    iget-object v4, v4, Lcom/mapabc/mapapi/core/m$b;->b:Lcom/mapabc/mapapi/core/m$c;

    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v5

    iput-boolean v5, v4, Lcom/mapabc/mapapi/core/m$c;->c:Z

    .line 95
    :cond_d
    const-string v4, "Language"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_e

    const-string v4, "GridMap"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_e

    .line 97
    iget-object v4, v1, Lcom/mapabc/mapapi/core/m;->c:Lcom/mapabc/mapapi/core/m$b;

    iget-object v4, v4, Lcom/mapabc/mapapi/core/m$b;->b:Lcom/mapabc/mapapi/core/m$c;

    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/mapabc/mapapi/core/m$c;->d:Ljava/lang/String;

    .line 100
    :cond_e
    const-string v4, "LayerName"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_f

    const-string v4, "GridMap"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_f

    .line 102
    iget-object v4, v1, Lcom/mapabc/mapapi/core/m;->c:Lcom/mapabc/mapapi/core/m$b;

    iget-object v4, v4, Lcom/mapabc/mapapi/core/m$b;->b:Lcom/mapabc/mapapi/core/m$c;

    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/mapabc/mapapi/core/m$c;->e:Ljava/lang/String;

    .line 105
    :cond_f
    const-string v4, "UpdateTime"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_10

    const-string v4, "GridMap"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_10

    .line 107
    iget-object v4, v1, Lcom/mapabc/mapapi/core/m;->c:Lcom/mapabc/mapapi/core/m$b;

    iget-object v4, v4, Lcom/mapabc/mapapi/core/m$b;->b:Lcom/mapabc/mapapi/core/m$c;

    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v5

    iput-wide v5, v4, Lcom/mapabc/mapapi/core/m$c;->f:J

    .line 110
    :cond_10
    const-string v4, "MinZoomLevel"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_11

    const-string v4, "GridMap"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_11

    .line 112
    iget-object v4, v1, Lcom/mapabc/mapapi/core/m;->c:Lcom/mapabc/mapapi/core/m$b;

    iget-object v4, v4, Lcom/mapabc/mapapi/core/m$b;->b:Lcom/mapabc/mapapi/core/m$c;

    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    iput v5, v4, Lcom/mapabc/mapapi/core/m$c;->g:I

    .line 115
    :cond_11
    const-string v4, "MaxZoomLevel"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_12

    const-string v4, "GridMap"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_12

    .line 117
    iget-object v4, v1, Lcom/mapabc/mapapi/core/m;->c:Lcom/mapabc/mapapi/core/m$b;

    iget-object v4, v4, Lcom/mapabc/mapapi/core/m$b;->b:Lcom/mapabc/mapapi/core/m$c;

    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    iput v5, v4, Lcom/mapabc/mapapi/core/m$c;->h:I

    .line 120
    :cond_12
    const-string v4, "Url"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_13

    const-string v4, "GridMap"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_13

    .line 122
    iget-object v4, v1, Lcom/mapabc/mapapi/core/m;->c:Lcom/mapabc/mapapi/core/m$b;

    iget-object v4, v4, Lcom/mapabc/mapapi/core/m$b;->b:Lcom/mapabc/mapapi/core/m$c;

    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/mapabc/mapapi/core/m$c;->i:Ljava/lang/String;

    .line 127
    :cond_13
    const-string v4, "SatelliteMap"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_14

    .line 128
    iget-object v0, v1, Lcom/mapabc/mapapi/core/m;->c:Lcom/mapabc/mapapi/core/m$b;

    new-instance v4, Lcom/mapabc/mapapi/core/m$e;

    invoke-direct {v4}, Lcom/mapabc/mapapi/core/m$e;-><init>()V

    iput-object v4, v0, Lcom/mapabc/mapapi/core/m$b;->c:Lcom/mapabc/mapapi/core/m$e;

    move-object v0, v2

    .line 131
    :cond_14
    iget-object v4, v1, Lcom/mapabc/mapapi/core/m;->c:Lcom/mapabc/mapapi/core/m$b;

    iget-object v4, v4, Lcom/mapabc/mapapi/core/m$b;->c:Lcom/mapabc/mapapi/core/m$e;

    if-eqz v4, :cond_1d

    const-string v4, "SatelliteMap"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1d

    .line 133
    const-string v4, "BaseLayer"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_15

    .line 134
    iget-object v4, v1, Lcom/mapabc/mapapi/core/m;->c:Lcom/mapabc/mapapi/core/m$b;

    iget-object v4, v4, Lcom/mapabc/mapapi/core/m$b;->c:Lcom/mapabc/mapapi/core/m$e;

    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v5

    iput-boolean v5, v4, Lcom/mapabc/mapapi/core/m$e;->a:Z

    .line 137
    :cond_15
    const-string v4, "VectorRoad"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_16

    const-string v4, "SatelliteMap"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_16

    .line 139
    iget-object v4, v1, Lcom/mapabc/mapapi/core/m;->c:Lcom/mapabc/mapapi/core/m$b;

    iget-object v4, v4, Lcom/mapabc/mapapi/core/m$b;->c:Lcom/mapabc/mapapi/core/m$e;

    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v5

    iput-boolean v5, v4, Lcom/mapabc/mapapi/core/m$e;->b:Z

    .line 142
    :cond_16
    const-string v4, "Cache"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_17

    const-string v4, "SatelliteMap"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_17

    .line 144
    iget-object v4, v1, Lcom/mapabc/mapapi/core/m;->c:Lcom/mapabc/mapapi/core/m$b;

    iget-object v4, v4, Lcom/mapabc/mapapi/core/m$b;->c:Lcom/mapabc/mapapi/core/m$e;

    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v5

    iput-boolean v5, v4, Lcom/mapabc/mapapi/core/m$e;->c:Z

    .line 147
    :cond_17
    const-string v4, "Language"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_18

    const-string v4, "SatelliteMap"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_18

    .line 149
    iget-object v4, v1, Lcom/mapabc/mapapi/core/m;->c:Lcom/mapabc/mapapi/core/m$b;

    iget-object v4, v4, Lcom/mapabc/mapapi/core/m$b;->c:Lcom/mapabc/mapapi/core/m$e;

    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/mapabc/mapapi/core/m$e;->d:Ljava/lang/String;

    .line 152
    :cond_18
    const-string v4, "LayerName"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_19

    const-string v4, "SatelliteMap"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_19

    .line 154
    iget-object v4, v1, Lcom/mapabc/mapapi/core/m;->c:Lcom/mapabc/mapapi/core/m$b;

    iget-object v4, v4, Lcom/mapabc/mapapi/core/m$b;->c:Lcom/mapabc/mapapi/core/m$e;

    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/mapabc/mapapi/core/m$e;->e:Ljava/lang/String;

    .line 157
    :cond_19
    const-string v4, "UpdateTime"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1a

    const-string v4, "SatelliteMap"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1a

    .line 159
    iget-object v4, v1, Lcom/mapabc/mapapi/core/m;->c:Lcom/mapabc/mapapi/core/m$b;

    iget-object v4, v4, Lcom/mapabc/mapapi/core/m$b;->c:Lcom/mapabc/mapapi/core/m$e;

    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v5

    iput-wide v5, v4, Lcom/mapabc/mapapi/core/m$e;->f:J

    .line 162
    :cond_1a
    const-string v4, "MinZoomLevel"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1b

    const-string v4, "SatelliteMap"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1b

    .line 164
    iget-object v4, v1, Lcom/mapabc/mapapi/core/m;->c:Lcom/mapabc/mapapi/core/m$b;

    iget-object v4, v4, Lcom/mapabc/mapapi/core/m$b;->c:Lcom/mapabc/mapapi/core/m$e;

    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    iput v5, v4, Lcom/mapabc/mapapi/core/m$e;->g:I

    .line 167
    :cond_1b
    const-string v4, "MaxZoomLevel"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1c

    const-string v4, "SatelliteMap"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1c

    .line 169
    iget-object v4, v1, Lcom/mapabc/mapapi/core/m;->c:Lcom/mapabc/mapapi/core/m$b;

    iget-object v4, v4, Lcom/mapabc/mapapi/core/m$b;->c:Lcom/mapabc/mapapi/core/m$e;

    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    iput v5, v4, Lcom/mapabc/mapapi/core/m$e;->h:I

    .line 172
    :cond_1c
    const-string v4, "Url"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1d

    const-string v4, "SatelliteMap"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1d

    .line 174
    iget-object v4, v1, Lcom/mapabc/mapapi/core/m;->c:Lcom/mapabc/mapapi/core/m$b;

    iget-object v4, v4, Lcom/mapabc/mapapi/core/m$b;->c:Lcom/mapabc/mapapi/core/m$e;

    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/mapabc/mapapi/core/m$e;->i:Ljava/lang/String;

    .line 179
    :cond_1d
    const-string v4, "TrafficMap"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1e

    .line 180
    iget-object v0, v1, Lcom/mapabc/mapapi/core/m;->c:Lcom/mapabc/mapapi/core/m$b;

    new-instance v4, Lcom/mapabc/mapapi/core/m$g;

    invoke-direct {v4}, Lcom/mapabc/mapapi/core/m$g;-><init>()V

    iput-object v4, v0, Lcom/mapabc/mapapi/core/m$b;->d:Lcom/mapabc/mapapi/core/m$g;

    move-object v0, v2

    .line 183
    :cond_1e
    iget-object v4, v1, Lcom/mapabc/mapapi/core/m;->c:Lcom/mapabc/mapapi/core/m$b;

    iget-object v4, v4, Lcom/mapabc/mapapi/core/m$b;->d:Lcom/mapabc/mapapi/core/m$g;

    if-eqz v4, :cond_27

    .line 184
    const-string v4, "BaseLayer"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1f

    const-string v4, "TrafficMap"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1f

    .line 186
    iget-object v4, v1, Lcom/mapabc/mapapi/core/m;->c:Lcom/mapabc/mapapi/core/m$b;

    iget-object v4, v4, Lcom/mapabc/mapapi/core/m$b;->d:Lcom/mapabc/mapapi/core/m$g;

    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v5

    iput-boolean v5, v4, Lcom/mapabc/mapapi/core/m$g;->a:Z

    .line 189
    :cond_1f
    const-string v4, "VectorRoad"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_20

    const-string v4, "TrafficMap"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_20

    .line 191
    iget-object v4, v1, Lcom/mapabc/mapapi/core/m;->c:Lcom/mapabc/mapapi/core/m$b;

    iget-object v4, v4, Lcom/mapabc/mapapi/core/m$b;->d:Lcom/mapabc/mapapi/core/m$g;

    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v5

    iput-boolean v5, v4, Lcom/mapabc/mapapi/core/m$g;->b:Z

    .line 194
    :cond_20
    const-string v4, "Cache"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_21

    const-string v4, "TrafficMap"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_21

    .line 196
    iget-object v4, v1, Lcom/mapabc/mapapi/core/m;->c:Lcom/mapabc/mapapi/core/m$b;

    iget-object v4, v4, Lcom/mapabc/mapapi/core/m$b;->d:Lcom/mapabc/mapapi/core/m$g;

    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v5

    iput-boolean v5, v4, Lcom/mapabc/mapapi/core/m$g;->c:Z

    .line 199
    :cond_21
    const-string v4, "Language"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_22

    const-string v4, "TrafficMap"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_22

    .line 201
    iget-object v4, v1, Lcom/mapabc/mapapi/core/m;->c:Lcom/mapabc/mapapi/core/m$b;

    iget-object v4, v4, Lcom/mapabc/mapapi/core/m$b;->d:Lcom/mapabc/mapapi/core/m$g;

    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/mapabc/mapapi/core/m$g;->d:Ljava/lang/String;

    .line 204
    :cond_22
    const-string v4, "LayerName"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_23

    const-string v4, "TrafficMap"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_23

    .line 206
    iget-object v4, v1, Lcom/mapabc/mapapi/core/m;->c:Lcom/mapabc/mapapi/core/m$b;

    iget-object v4, v4, Lcom/mapabc/mapapi/core/m$b;->d:Lcom/mapabc/mapapi/core/m$g;

    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/mapabc/mapapi/core/m$g;->e:Ljava/lang/String;

    .line 209
    :cond_23
    const-string v4, "UpdateTime"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_24

    const-string v4, "TrafficMap"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_24

    .line 211
    iget-object v4, v1, Lcom/mapabc/mapapi/core/m;->c:Lcom/mapabc/mapapi/core/m$b;

    iget-object v4, v4, Lcom/mapabc/mapapi/core/m$b;->d:Lcom/mapabc/mapapi/core/m$g;

    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v5

    iput-wide v5, v4, Lcom/mapabc/mapapi/core/m$g;->f:J

    .line 214
    :cond_24
    const-string v4, "MinZoomLevel"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_25

    const-string v4, "TrafficMap"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_25

    .line 216
    iget-object v4, v1, Lcom/mapabc/mapapi/core/m;->c:Lcom/mapabc/mapapi/core/m$b;

    iget-object v4, v4, Lcom/mapabc/mapapi/core/m$b;->d:Lcom/mapabc/mapapi/core/m$g;

    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    iput v5, v4, Lcom/mapabc/mapapi/core/m$g;->g:I

    .line 219
    :cond_25
    const-string v4, "MaxZoomLevel"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_26

    const-string v4, "TrafficMap"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_26

    .line 221
    iget-object v4, v1, Lcom/mapabc/mapapi/core/m;->c:Lcom/mapabc/mapapi/core/m$b;

    iget-object v4, v4, Lcom/mapabc/mapapi/core/m$b;->d:Lcom/mapabc/mapapi/core/m$g;

    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    iput v5, v4, Lcom/mapabc/mapapi/core/m$g;->h:I

    .line 224
    :cond_26
    const-string v4, "Url"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_27

    const-string v4, "TrafficMap"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_27

    .line 226
    iget-object v4, v1, Lcom/mapabc/mapapi/core/m;->c:Lcom/mapabc/mapapi/core/m$b;

    iget-object v4, v4, Lcom/mapabc/mapapi/core/m$b;->d:Lcom/mapabc/mapapi/core/m$g;

    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/mapabc/mapapi/core/m$g;->i:Ljava/lang/String;

    .line 231
    :cond_27
    const-string v4, "RailwayMap"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_28

    .line 232
    iget-object v0, v1, Lcom/mapabc/mapapi/core/m;->c:Lcom/mapabc/mapapi/core/m$b;

    new-instance v4, Lcom/mapabc/mapapi/core/m$d;

    invoke-direct {v4}, Lcom/mapabc/mapapi/core/m$d;-><init>()V

    iput-object v4, v0, Lcom/mapabc/mapapi/core/m$b;->e:Lcom/mapabc/mapapi/core/m$d;

    move-object v0, v2

    .line 235
    :cond_28
    iget-object v4, v1, Lcom/mapabc/mapapi/core/m;->c:Lcom/mapabc/mapapi/core/m$b;

    iget-object v4, v4, Lcom/mapabc/mapapi/core/m$b;->e:Lcom/mapabc/mapapi/core/m$d;

    if-eqz v4, :cond_31

    .line 236
    const-string v4, "BaseLayer"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_29

    const-string v4, "RailwayMap"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_29

    .line 238
    iget-object v4, v1, Lcom/mapabc/mapapi/core/m;->c:Lcom/mapabc/mapapi/core/m$b;

    iget-object v4, v4, Lcom/mapabc/mapapi/core/m$b;->e:Lcom/mapabc/mapapi/core/m$d;

    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v5

    iput-boolean v5, v4, Lcom/mapabc/mapapi/core/m$d;->a:Z

    .line 241
    :cond_29
    const-string v4, "VectorRoad"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2a

    const-string v4, "RailwayMap"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2a

    .line 243
    iget-object v4, v1, Lcom/mapabc/mapapi/core/m;->c:Lcom/mapabc/mapapi/core/m$b;

    iget-object v4, v4, Lcom/mapabc/mapapi/core/m$b;->e:Lcom/mapabc/mapapi/core/m$d;

    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v5

    iput-boolean v5, v4, Lcom/mapabc/mapapi/core/m$d;->b:Z

    .line 246
    :cond_2a
    const-string v4, "Cache"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2b

    const-string v4, "RailwayMap"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2b

    .line 248
    iget-object v4, v1, Lcom/mapabc/mapapi/core/m;->c:Lcom/mapabc/mapapi/core/m$b;

    iget-object v4, v4, Lcom/mapabc/mapapi/core/m$b;->e:Lcom/mapabc/mapapi/core/m$d;

    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v5

    iput-boolean v5, v4, Lcom/mapabc/mapapi/core/m$d;->c:Z

    .line 251
    :cond_2b
    const-string v4, "Language"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2c

    const-string v4, "RailwayMap"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2c

    .line 253
    iget-object v4, v1, Lcom/mapabc/mapapi/core/m;->c:Lcom/mapabc/mapapi/core/m$b;

    iget-object v4, v4, Lcom/mapabc/mapapi/core/m$b;->e:Lcom/mapabc/mapapi/core/m$d;

    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/mapabc/mapapi/core/m$d;->d:Ljava/lang/String;

    .line 256
    :cond_2c
    const-string v4, "LayerName"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2d

    const-string v4, "RailwayMap"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2d

    .line 258
    iget-object v4, v1, Lcom/mapabc/mapapi/core/m;->c:Lcom/mapabc/mapapi/core/m$b;

    iget-object v4, v4, Lcom/mapabc/mapapi/core/m$b;->e:Lcom/mapabc/mapapi/core/m$d;

    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/mapabc/mapapi/core/m$d;->e:Ljava/lang/String;

    .line 261
    :cond_2d
    const-string v4, "UpdateTime"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2e

    const-string v4, "RailwayMap"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2e

    .line 263
    iget-object v4, v1, Lcom/mapabc/mapapi/core/m;->c:Lcom/mapabc/mapapi/core/m$b;

    iget-object v4, v4, Lcom/mapabc/mapapi/core/m$b;->e:Lcom/mapabc/mapapi/core/m$d;

    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v5

    iput-wide v5, v4, Lcom/mapabc/mapapi/core/m$d;->f:J

    .line 266
    :cond_2e
    const-string v4, "MinZoomLevel"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2f

    const-string v4, "RailwayMap"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2f

    .line 268
    iget-object v4, v1, Lcom/mapabc/mapapi/core/m;->c:Lcom/mapabc/mapapi/core/m$b;

    iget-object v4, v4, Lcom/mapabc/mapapi/core/m$b;->e:Lcom/mapabc/mapapi/core/m$d;

    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    iput v5, v4, Lcom/mapabc/mapapi/core/m$d;->g:I

    .line 271
    :cond_2f
    const-string v4, "MaxZoomLevel"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_30

    const-string v4, "RailwayMap"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_30

    .line 273
    iget-object v4, v1, Lcom/mapabc/mapapi/core/m;->c:Lcom/mapabc/mapapi/core/m$b;

    iget-object v4, v4, Lcom/mapabc/mapapi/core/m$b;->e:Lcom/mapabc/mapapi/core/m$d;

    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    iput v5, v4, Lcom/mapabc/mapapi/core/m$d;->h:I

    .line 276
    :cond_30
    const-string v4, "Url"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_31

    const-string v4, "RailwayMap"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_31

    .line 278
    iget-object v4, v1, Lcom/mapabc/mapapi/core/m;->c:Lcom/mapabc/mapapi/core/m$b;

    iget-object v4, v4, Lcom/mapabc/mapapi/core/m$b;->e:Lcom/mapabc/mapapi/core/m$d;

    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/mapabc/mapapi/core/m$d;->i:Ljava/lang/String;

    .line 284
    :cond_31
    const-string v4, "Vector"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_32

    .line 285
    new-instance v0, Lcom/mapabc/mapapi/core/m$j;

    invoke-direct {v0}, Lcom/mapabc/mapapi/core/m$j;-><init>()V

    iput-object v0, v1, Lcom/mapabc/mapapi/core/m;->d:Lcom/mapabc/mapapi/core/m$j;

    move-object v0, v2

    .line 288
    :cond_32
    iget-object v4, v1, Lcom/mapabc/mapapi/core/m;->d:Lcom/mapabc/mapapi/core/m$j;

    if-eqz v4, :cond_47

    .line 289
    const-string v4, "TileSize"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_33

    const-string v4, "Vector"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_33

    .line 291
    iget-object v4, v1, Lcom/mapabc/mapapi/core/m;->d:Lcom/mapabc/mapapi/core/m$j;

    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/mapabc/mapapi/core/m$j;->a:Ljava/lang/String;

    .line 294
    :cond_33
    const-string v4, "VMap"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_34

    .line 295
    iget-object v0, v1, Lcom/mapabc/mapapi/core/m;->d:Lcom/mapabc/mapapi/core/m$j;

    new-instance v4, Lcom/mapabc/mapapi/core/m$h;

    invoke-direct {v4}, Lcom/mapabc/mapapi/core/m$h;-><init>()V

    iput-object v4, v0, Lcom/mapabc/mapapi/core/m$j;->b:Lcom/mapabc/mapapi/core/m$h;

    move-object v0, v2

    .line 298
    :cond_34
    iget-object v4, v1, Lcom/mapabc/mapapi/core/m;->d:Lcom/mapabc/mapapi/core/m$j;

    iget-object v4, v4, Lcom/mapabc/mapapi/core/m$j;->b:Lcom/mapabc/mapapi/core/m$h;

    if-eqz v4, :cond_3d

    .line 299
    const-string v4, "BaseLayer"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_35

    const-string v4, "VMap"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_35

    .line 301
    iget-object v4, v1, Lcom/mapabc/mapapi/core/m;->d:Lcom/mapabc/mapapi/core/m$j;

    iget-object v4, v4, Lcom/mapabc/mapapi/core/m$j;->b:Lcom/mapabc/mapapi/core/m$h;

    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v5

    iput-boolean v5, v4, Lcom/mapabc/mapapi/core/m$h;->a:Z

    .line 304
    :cond_35
    const-string v4, "VectorRoad"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_36

    const-string v4, "VMap"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_36

    .line 306
    iget-object v4, v1, Lcom/mapabc/mapapi/core/m;->d:Lcom/mapabc/mapapi/core/m$j;

    iget-object v4, v4, Lcom/mapabc/mapapi/core/m$j;->b:Lcom/mapabc/mapapi/core/m$h;

    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v5

    iput-boolean v5, v4, Lcom/mapabc/mapapi/core/m$h;->b:Z

    .line 309
    :cond_36
    const-string v4, "Cache"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_37

    const-string v4, "VMap"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_37

    .line 311
    iget-object v4, v1, Lcom/mapabc/mapapi/core/m;->d:Lcom/mapabc/mapapi/core/m$j;

    iget-object v4, v4, Lcom/mapabc/mapapi/core/m$j;->b:Lcom/mapabc/mapapi/core/m$h;

    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v5

    iput-boolean v5, v4, Lcom/mapabc/mapapi/core/m$h;->c:Z

    .line 314
    :cond_37
    const-string v4, "Language"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_38

    const-string v4, "VMap"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_38

    .line 316
    iget-object v4, v1, Lcom/mapabc/mapapi/core/m;->d:Lcom/mapabc/mapapi/core/m$j;

    iget-object v4, v4, Lcom/mapabc/mapapi/core/m$j;->b:Lcom/mapabc/mapapi/core/m$h;

    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/mapabc/mapapi/core/m$h;->d:Ljava/lang/String;

    .line 319
    :cond_38
    const-string v4, "LayerName"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_39

    const-string v4, "VMap"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_39

    .line 321
    iget-object v4, v1, Lcom/mapabc/mapapi/core/m;->d:Lcom/mapabc/mapapi/core/m$j;

    iget-object v4, v4, Lcom/mapabc/mapapi/core/m$j;->b:Lcom/mapabc/mapapi/core/m$h;

    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/mapabc/mapapi/core/m$h;->e:Ljava/lang/String;

    .line 324
    :cond_39
    const-string v4, "UpdateTime"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3a

    const-string v4, "VMap"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3a

    .line 326
    iget-object v4, v1, Lcom/mapabc/mapapi/core/m;->d:Lcom/mapabc/mapapi/core/m$j;

    iget-object v4, v4, Lcom/mapabc/mapapi/core/m$j;->b:Lcom/mapabc/mapapi/core/m$h;

    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v5

    iput-wide v5, v4, Lcom/mapabc/mapapi/core/m$h;->f:J

    .line 329
    :cond_3a
    const-string v4, "MinZoomLevel"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3b

    const-string v4, "VMap"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3b

    .line 331
    iget-object v4, v1, Lcom/mapabc/mapapi/core/m;->d:Lcom/mapabc/mapapi/core/m$j;

    iget-object v4, v4, Lcom/mapabc/mapapi/core/m$j;->b:Lcom/mapabc/mapapi/core/m$h;

    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    iput v5, v4, Lcom/mapabc/mapapi/core/m$h;->g:I

    .line 334
    :cond_3b
    const-string v4, "MaxZoomLevel"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3c

    const-string v4, "VMap"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3c

    .line 336
    iget-object v4, v1, Lcom/mapabc/mapapi/core/m;->d:Lcom/mapabc/mapapi/core/m$j;

    iget-object v4, v4, Lcom/mapabc/mapapi/core/m$j;->b:Lcom/mapabc/mapapi/core/m$h;

    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    iput v5, v4, Lcom/mapabc/mapapi/core/m$h;->h:I

    .line 339
    :cond_3c
    const-string v4, "Url"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3d

    const-string v4, "VMap"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3d

    .line 340
    iget-object v4, v1, Lcom/mapabc/mapapi/core/m;->d:Lcom/mapabc/mapapi/core/m$j;

    iget-object v4, v4, Lcom/mapabc/mapapi/core/m$j;->b:Lcom/mapabc/mapapi/core/m$h;

    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/mapabc/mapapi/core/m$h;->i:Ljava/lang/String;

    .line 345
    :cond_3d
    const-string v4, "VTMap"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3e

    .line 346
    iget-object v0, v1, Lcom/mapabc/mapapi/core/m;->d:Lcom/mapabc/mapapi/core/m$j;

    new-instance v4, Lcom/mapabc/mapapi/core/m$i;

    invoke-direct {v4}, Lcom/mapabc/mapapi/core/m$i;-><init>()V

    iput-object v4, v0, Lcom/mapabc/mapapi/core/m$j;->c:Lcom/mapabc/mapapi/core/m$i;

    move-object v0, v2

    .line 349
    :cond_3e
    iget-object v4, v1, Lcom/mapabc/mapapi/core/m;->d:Lcom/mapabc/mapapi/core/m$j;

    iget-object v4, v4, Lcom/mapabc/mapapi/core/m$j;->c:Lcom/mapabc/mapapi/core/m$i;

    if-eqz v4, :cond_47

    .line 350
    const-string v4, "BaseLayer"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3f

    const-string v4, "VTMap"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3f

    .line 352
    iget-object v4, v1, Lcom/mapabc/mapapi/core/m;->d:Lcom/mapabc/mapapi/core/m$j;

    iget-object v4, v4, Lcom/mapabc/mapapi/core/m$j;->c:Lcom/mapabc/mapapi/core/m$i;

    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v5

    iput-boolean v5, v4, Lcom/mapabc/mapapi/core/m$i;->a:Z

    .line 355
    :cond_3f
    const-string v4, "VectorRoad"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_40

    const-string v4, "VTMap"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_40

    .line 357
    iget-object v4, v1, Lcom/mapabc/mapapi/core/m;->d:Lcom/mapabc/mapapi/core/m$j;

    iget-object v4, v4, Lcom/mapabc/mapapi/core/m$j;->c:Lcom/mapabc/mapapi/core/m$i;

    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v5

    iput-boolean v5, v4, Lcom/mapabc/mapapi/core/m$i;->b:Z

    .line 360
    :cond_40
    const-string v4, "Cache"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_41

    const-string v4, "VTMap"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_41

    .line 362
    iget-object v4, v1, Lcom/mapabc/mapapi/core/m;->d:Lcom/mapabc/mapapi/core/m$j;

    iget-object v4, v4, Lcom/mapabc/mapapi/core/m$j;->c:Lcom/mapabc/mapapi/core/m$i;

    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v5

    iput-boolean v5, v4, Lcom/mapabc/mapapi/core/m$i;->c:Z

    .line 365
    :cond_41
    const-string v4, "Language"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_42

    const-string v4, "VTMap"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_42

    .line 367
    iget-object v4, v1, Lcom/mapabc/mapapi/core/m;->d:Lcom/mapabc/mapapi/core/m$j;

    iget-object v4, v4, Lcom/mapabc/mapapi/core/m$j;->c:Lcom/mapabc/mapapi/core/m$i;

    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/mapabc/mapapi/core/m$i;->d:Ljava/lang/String;

    .line 370
    :cond_42
    const-string v4, "LayerName"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_43

    const-string v4, "VTMap"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_43

    .line 372
    iget-object v4, v1, Lcom/mapabc/mapapi/core/m;->d:Lcom/mapabc/mapapi/core/m$j;

    iget-object v4, v4, Lcom/mapabc/mapapi/core/m$j;->c:Lcom/mapabc/mapapi/core/m$i;

    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/mapabc/mapapi/core/m$i;->e:Ljava/lang/String;

    .line 375
    :cond_43
    const-string v4, "UpdateTime"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_44

    const-string v4, "VTMap"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_44

    .line 377
    iget-object v4, v1, Lcom/mapabc/mapapi/core/m;->d:Lcom/mapabc/mapapi/core/m$j;

    iget-object v4, v4, Lcom/mapabc/mapapi/core/m$j;->c:Lcom/mapabc/mapapi/core/m$i;

    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v5

    iput-wide v5, v4, Lcom/mapabc/mapapi/core/m$i;->f:J

    .line 380
    :cond_44
    const-string v4, "MinZoomLevel"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_45

    const-string v4, "VTMap"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_45

    .line 382
    iget-object v4, v1, Lcom/mapabc/mapapi/core/m;->d:Lcom/mapabc/mapapi/core/m$j;

    iget-object v4, v4, Lcom/mapabc/mapapi/core/m$j;->c:Lcom/mapabc/mapapi/core/m$i;

    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    iput v5, v4, Lcom/mapabc/mapapi/core/m$i;->g:I

    .line 385
    :cond_45
    const-string v4, "MaxZoomLevel"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_46

    const-string v4, "VTMap"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_46

    .line 387
    iget-object v4, v1, Lcom/mapabc/mapapi/core/m;->d:Lcom/mapabc/mapapi/core/m$j;

    iget-object v4, v4, Lcom/mapabc/mapapi/core/m$j;->c:Lcom/mapabc/mapapi/core/m$i;

    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    iput v5, v4, Lcom/mapabc/mapapi/core/m$i;->h:I

    .line 390
    :cond_46
    const-string v4, "Url"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_47

    const-string v4, "VTMap"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_47

    .line 391
    iget-object v4, v1, Lcom/mapabc/mapapi/core/m;->d:Lcom/mapabc/mapapi/core/m$j;

    iget-object v4, v4, Lcom/mapabc/mapapi/core/m$j;->c:Lcom/mapabc/mapapi/core/m$i;

    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/mapabc/mapapi/core/m$i;->i:Ljava/lang/String;

    .line 397
    :cond_47
    const-string v4, "SearchAddress"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_48

    .line 398
    new-instance v4, Lcom/mapabc/mapapi/core/m$f;

    invoke-direct {v4}, Lcom/mapabc/mapapi/core/m$f;-><init>()V

    iput-object v4, v1, Lcom/mapabc/mapapi/core/m;->e:Lcom/mapabc/mapapi/core/m$f;

    .line 400
    :cond_48
    iget-object v4, v1, Lcom/mapabc/mapapi/core/m;->e:Lcom/mapabc/mapapi/core/m$f;

    if-eqz v4, :cond_0

    .line 401
    const-string v4, "XMLSearch"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_49

    .line 402
    iget-object v4, v1, Lcom/mapabc/mapapi/core/m;->e:Lcom/mapabc/mapapi/core/m$f;

    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/mapabc/mapapi/core/m$f;->a:Ljava/lang/String;

    .line 405
    :cond_49
    const-string v4, "PBSearch"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 406
    iget-object v2, v1, Lcom/mapabc/mapapi/core/m;->e:Lcom/mapabc/mapapi/core/m$f;

    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v2, Lcom/mapabc/mapapi/core/m$f;->b:Ljava/lang/String;

    goto/16 :goto_1

    .line 419
    :cond_4a
    return-object v1

    .line 30
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method
