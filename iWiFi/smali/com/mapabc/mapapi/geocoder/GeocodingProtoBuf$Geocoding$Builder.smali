.class public final Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$Geocoding$Builder;
.super Lcom/google/protobuf/GeneratedMessage$Builder;
.source "GeocodingProtoBuf.java"

# interfaces
.implements Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeocodingOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$Geocoding;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessage$Builder",
        "<",
        "Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$Geocoding$Builder;",
        ">;",
        "Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeocodingOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private poiBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/RepeatedFieldBuilder",
            "<",
            "Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI;",
            "Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI$Builder;",
            "Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOIOrBuilder;",
            ">;"
        }
    .end annotation
.end field

.field private poi_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 1582
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;-><init>()V

    .line 1744
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$Geocoding$Builder;->poi_:Ljava/util/List;

    .line 1583
    invoke-direct {p0}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$Geocoding$Builder;->maybeForceBuilderInitialization()V

    .line 1584
    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V
    .locals 1

    .prologue
    .line 1587
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessage$Builder;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V

    .line 1744
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$Geocoding$Builder;->poi_:Ljava/util/List;

    .line 1588
    invoke-direct {p0}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$Geocoding$Builder;->maybeForceBuilderInitialization()V

    .line 1589
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;Lcom/mapabc/mapapi/geocoder/c;)V
    .locals 0

    .prologue
    .line 1568
    invoke-direct {p0, p1}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$Geocoding$Builder;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V

    return-void
.end method

.method static synthetic access$2500(Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$Geocoding$Builder;)Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$Geocoding;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 1568
    invoke-direct {p0}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$Geocoding$Builder;->buildParsed()Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$Geocoding;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2600()Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$Geocoding$Builder;
    .locals 1

    .prologue
    .line 1568
    invoke-static {}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$Geocoding$Builder;->create()Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$Geocoding$Builder;

    move-result-object v0

    return-object v0
.end method

.method private buildParsed()Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$Geocoding;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 1633
    invoke-virtual {p0}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$Geocoding$Builder;->buildPartial()Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$Geocoding;

    move-result-object v0

    .line 1634
    invoke-virtual {v0}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$Geocoding;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1635
    invoke-static {v0}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$Geocoding$Builder;->newUninitializedMessageException(Lcom/google/protobuf/Message;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/UninitializedMessageException;->asInvalidProtocolBufferException()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0

    .line 1638
    :cond_0
    return-object v0
.end method

.method private static create()Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$Geocoding$Builder;
    .locals 1

    .prologue
    .line 1596
    new-instance v0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$Geocoding$Builder;

    invoke-direct {v0}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$Geocoding$Builder;-><init>()V

    return-object v0
.end method

.method private ensurePoiIsMutable()V
    .locals 2

    .prologue
    .line 1747
    iget v0, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$Geocoding$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 1748
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$Geocoding$Builder;->poi_:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$Geocoding$Builder;->poi_:Ljava/util/List;

    .line 1749
    iget v0, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$Geocoding$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$Geocoding$Builder;->bitField0_:I

    .line 1751
    :cond_0
    return-void
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 1573
    # getter for: Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf;->internal_static_Geocoding_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;
    invoke-static {}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf;->access$2300()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method private getPoiFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilder;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/RepeatedFieldBuilder",
            "<",
            "Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI;",
            "Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI$Builder;",
            "Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOIOrBuilder;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v0, 0x1

    .line 1917
    iget-object v1, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$Geocoding$Builder;->poiBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v1, :cond_0

    .line 1918
    new-instance v1, Lcom/google/protobuf/RepeatedFieldBuilder;

    iget-object v2, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$Geocoding$Builder;->poi_:Ljava/util/List;

    iget v3, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$Geocoding$Builder;->bitField0_:I

    and-int/lit8 v3, v3, 0x1

    if-ne v3, v0, :cond_1

    :goto_0
    invoke-virtual {p0}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$Geocoding$Builder;->getParentForChildren()Lcom/google/protobuf/GeneratedMessage$BuilderParent;

    move-result-object v3

    invoke-virtual {p0}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$Geocoding$Builder;->isClean()Z

    move-result v4

    invoke-direct {v1, v2, v0, v3, v4}, Lcom/google/protobuf/RepeatedFieldBuilder;-><init>(Ljava/util/List;ZLcom/google/protobuf/GeneratedMessage$BuilderParent;Z)V

    iput-object v1, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$Geocoding$Builder;->poiBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    .line 1924
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$Geocoding$Builder;->poi_:Ljava/util/List;

    .line 1926
    :cond_0
    iget-object v0, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$Geocoding$Builder;->poiBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    return-object v0

    .line 1918
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private maybeForceBuilderInitialization()V
    .locals 1

    .prologue
    .line 1591
    # getter for: Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$Geocoding;->alwaysUseFieldBuilders:Z
    invoke-static {}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$Geocoding;->access$2800()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1592
    invoke-direct {p0}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$Geocoding$Builder;->getPoiFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilder;

    .line 1594
    :cond_0
    return-void
.end method


# virtual methods
.method public addAllPoi(Ljava/lang/Iterable;)Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$Geocoding$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<+",
            "Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI;",
            ">;)",
            "Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$Geocoding$Builder;"
        }
    .end annotation

    .prologue
    .line 1853
    iget-object v0, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$Geocoding$Builder;->poiBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 1854
    invoke-direct {p0}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$Geocoding$Builder;->ensurePoiIsMutable()V

    .line 1855
    iget-object v0, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$Geocoding$Builder;->poi_:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/google/protobuf/GeneratedMessage$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    .line 1856
    invoke-virtual {p0}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$Geocoding$Builder;->onChanged()V

    .line 1860
    :goto_0
    return-object p0

    .line 1858
    :cond_0
    iget-object v0, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$Geocoding$Builder;->poiBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilder;->addAllMessages(Ljava/lang/Iterable;)Lcom/google/protobuf/RepeatedFieldBuilder;

    goto :goto_0
.end method

.method public addPoi(ILcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI$Builder;)Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$Geocoding$Builder;
    .locals 2

    .prologue
    .line 1842
    iget-object v0, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$Geocoding$Builder;->poiBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 1843
    invoke-direct {p0}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$Geocoding$Builder;->ensurePoiIsMutable()V

    .line 1844
    iget-object v0, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$Geocoding$Builder;->poi_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI$Builder;->build()Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 1845
    invoke-virtual {p0}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$Geocoding$Builder;->onChanged()V

    .line 1849
    :goto_0
    return-object p0

    .line 1847
    :cond_0
    iget-object v0, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$Geocoding$Builder;->poiBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {p2}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI$Builder;->build()Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/google/protobuf/RepeatedFieldBuilder;->addMessage(ILcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/RepeatedFieldBuilder;

    goto :goto_0
.end method

.method public addPoi(ILcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI;)Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$Geocoding$Builder;
    .locals 1

    .prologue
    .line 1817
    iget-object v0, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$Geocoding$Builder;->poiBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_1

    .line 1818
    if-nez p2, :cond_0

    .line 1819
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1821
    :cond_0
    invoke-direct {p0}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$Geocoding$Builder;->ensurePoiIsMutable()V

    .line 1822
    iget-object v0, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$Geocoding$Builder;->poi_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 1823
    invoke-virtual {p0}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$Geocoding$Builder;->onChanged()V

    .line 1827
    :goto_0
    return-object p0

    .line 1825
    :cond_1
    iget-object v0, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$Geocoding$Builder;->poiBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0, p1, p2}, Lcom/google/protobuf/RepeatedFieldBuilder;->addMessage(ILcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/RepeatedFieldBuilder;

    goto :goto_0
.end method

.method public addPoi(Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI$Builder;)Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$Geocoding$Builder;
    .locals 2

    .prologue
    .line 1831
    iget-object v0, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$Geocoding$Builder;->poiBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 1832
    invoke-direct {p0}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$Geocoding$Builder;->ensurePoiIsMutable()V

    .line 1833
    iget-object v0, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$Geocoding$Builder;->poi_:Ljava/util/List;

    invoke-virtual {p1}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI$Builder;->build()Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1834
    invoke-virtual {p0}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$Geocoding$Builder;->onChanged()V

    .line 1838
    :goto_0
    return-object p0

    .line 1836
    :cond_0
    iget-object v0, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$Geocoding$Builder;->poiBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {p1}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI$Builder;->build()Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/protobuf/RepeatedFieldBuilder;->addMessage(Lcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/RepeatedFieldBuilder;

    goto :goto_0
.end method

.method public addPoi(Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI;)Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$Geocoding$Builder;
    .locals 1

    .prologue
    .line 1803
    iget-object v0, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$Geocoding$Builder;->poiBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_1

    .line 1804
    if-nez p1, :cond_0

    .line 1805
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1807
    :cond_0
    invoke-direct {p0}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$Geocoding$Builder;->ensurePoiIsMutable()V

    .line 1808
    iget-object v0, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$Geocoding$Builder;->poi_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1809
    invoke-virtual {p0}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$Geocoding$Builder;->onChanged()V

    .line 1813
    :goto_0
    return-object p0

    .line 1811
    :cond_1
    iget-object v0, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$Geocoding$Builder;->poiBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilder;->addMessage(Lcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/RepeatedFieldBuilder;

    goto :goto_0
.end method

.method public addPoiBuilder()Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI$Builder;
    .locals 2

    .prologue
    .line 1902
    invoke-direct {p0}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$Geocoding$Builder;->getPoiFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilder;

    move-result-object v0

    invoke-static {}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI;->getDefaultInstance()Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/protobuf/RepeatedFieldBuilder;->addBuilder(Lcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/GeneratedMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI$Builder;

    return-object v0
.end method

.method public addPoiBuilder(I)Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI$Builder;
    .locals 2

    .prologue
    .line 1907
    invoke-direct {p0}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$Geocoding$Builder;->getPoiFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilder;

    move-result-object v0

    invoke-static {}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI;->getDefaultInstance()Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/google/protobuf/RepeatedFieldBuilder;->addBuilder(ILcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/GeneratedMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI$Builder;

    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 1568
    invoke-virtual {p0}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$Geocoding$Builder;->build()Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$Geocoding;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 1568
    invoke-virtual {p0}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$Geocoding$Builder;->build()Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$Geocoding;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$Geocoding;
    .locals 2

    .prologue
    .line 1624
    invoke-virtual {p0}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$Geocoding$Builder;->buildPartial()Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$Geocoding;

    move-result-object v0

    .line 1625
    invoke-virtual {v0}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$Geocoding;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1626
    invoke-static {v0}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$Geocoding$Builder;->newUninitializedMessageException(Lcom/google/protobuf/Message;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0

    .line 1628
    :cond_0
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 1568
    invoke-virtual {p0}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$Geocoding$Builder;->buildPartial()Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$Geocoding;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 1568
    invoke-virtual {p0}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$Geocoding$Builder;->buildPartial()Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$Geocoding;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$Geocoding;
    .locals 3

    .prologue
    .line 1642
    new-instance v0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$Geocoding;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$Geocoding;-><init>(Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$Geocoding$Builder;Lcom/mapabc/mapapi/geocoder/c;)V

    .line 1643
    iget v1, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$Geocoding$Builder;->bitField0_:I

    .line 1644
    iget-object v1, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$Geocoding$Builder;->poiBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v1, :cond_1

    .line 1645
    iget v1, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$Geocoding$Builder;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 1646
    iget-object v1, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$Geocoding$Builder;->poi_:Ljava/util/List;

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$Geocoding$Builder;->poi_:Ljava/util/List;

    .line 1647
    iget v1, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$Geocoding$Builder;->bitField0_:I

    and-int/lit8 v1, v1, -0x2

    iput v1, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$Geocoding$Builder;->bitField0_:I

    .line 1649
    :cond_0
    iget-object v1, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$Geocoding$Builder;->poi_:Ljava/util/List;

    # setter for: Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$Geocoding;->poi_:Ljava/util/List;
    invoke-static {v0, v1}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$Geocoding;->access$3002(Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$Geocoding;Ljava/util/List;)Ljava/util/List;

    .line 1653
    :goto_0
    invoke-virtual {p0}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$Geocoding$Builder;->onBuilt()V

    .line 1654
    return-object v0

    .line 1651
    :cond_1
    iget-object v1, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$Geocoding$Builder;->poiBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v1}, Lcom/google/protobuf/RepeatedFieldBuilder;->build()Ljava/util/List;

    move-result-object v1

    # setter for: Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$Geocoding;->poi_:Ljava/util/List;
    invoke-static {v0, v1}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$Geocoding;->access$3002(Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$Geocoding;Ljava/util/List;)Ljava/util/List;

    goto :goto_0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 1568
    invoke-virtual {p0}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$Geocoding$Builder;->clear()Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$Geocoding$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessage$Builder;
    .locals 1

    .prologue
    .line 1568
    invoke-virtual {p0}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$Geocoding$Builder;->clear()Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$Geocoding$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 1568
    invoke-virtual {p0}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$Geocoding$Builder;->clear()Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$Geocoding$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 1568
    invoke-virtual {p0}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$Geocoding$Builder;->clear()Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$Geocoding$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$Geocoding$Builder;
    .locals 1

    .prologue
    .line 1600
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->clear()Lcom/google/protobuf/GeneratedMessage$Builder;

    .line 1601
    iget-object v0, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$Geocoding$Builder;->poiBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 1602
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$Geocoding$Builder;->poi_:Ljava/util/List;

    .line 1603
    iget v0, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$Geocoding$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$Geocoding$Builder;->bitField0_:I

    .line 1607
    :goto_0
    return-object p0

    .line 1605
    :cond_0
    iget-object v0, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$Geocoding$Builder;->poiBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilder;->clear()V

    goto :goto_0
.end method

.method public clearPoi()Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$Geocoding$Builder;
    .locals 1

    .prologue
    .line 1863
    iget-object v0, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$Geocoding$Builder;->poiBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 1864
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$Geocoding$Builder;->poi_:Ljava/util/List;

    .line 1865
    iget v0, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$Geocoding$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$Geocoding$Builder;->bitField0_:I

    .line 1866
    invoke-virtual {p0}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$Geocoding$Builder;->onChanged()V

    .line 1870
    :goto_0
    return-object p0

    .line 1868
    :cond_0
    iget-object v0, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$Geocoding$Builder;->poiBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilder;->clear()V

    goto :goto_0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 1568
    invoke-virtual {p0}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$Geocoding$Builder;->clone()Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$Geocoding$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .prologue
    .line 1568
    invoke-virtual {p0}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$Geocoding$Builder;->clone()Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$Geocoding$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessage$Builder;
    .locals 1

    .prologue
    .line 1568
    invoke-virtual {p0}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$Geocoding$Builder;->clone()Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$Geocoding$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 1568
    invoke-virtual {p0}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$Geocoding$Builder;->clone()Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$Geocoding$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 1568
    invoke-virtual {p0}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$Geocoding$Builder;->clone()Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$Geocoding$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$Geocoding$Builder;
    .locals 2

    .prologue
    .line 1611
    invoke-static {}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$Geocoding$Builder;->create()Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$Geocoding$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$Geocoding$Builder;->buildPartial()Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$Geocoding;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$Geocoding$Builder;->mergeFrom(Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$Geocoding;)Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$Geocoding$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 1568
    invoke-virtual {p0}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$Geocoding$Builder;->clone()Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$Geocoding$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 1568
    invoke-virtual {p0}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$Geocoding$Builder;->getDefaultInstanceForType()Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$Geocoding;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 1568
    invoke-virtual {p0}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$Geocoding$Builder;->getDefaultInstanceForType()Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$Geocoding;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$Geocoding;
    .locals 1

    .prologue
    .line 1620
    invoke-static {}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$Geocoding;->getDefaultInstance()Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$Geocoding;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 1616
    invoke-static {}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$Geocoding;->getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public getPoi(I)Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI;
    .locals 1

    .prologue
    .line 1771
    iget-object v0, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$Geocoding$Builder;->poiBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 1772
    iget-object v0, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$Geocoding$Builder;->poi_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI;

    .line 1774
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$Geocoding$Builder;->poiBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilder;->getMessage(I)Lcom/google/protobuf/GeneratedMessage;

    move-result-object v0

    check-cast v0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI;

    goto :goto_0
.end method

.method public getPoiBuilder(I)Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI$Builder;
    .locals 1

    .prologue
    .line 1884
    invoke-direct {p0}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$Geocoding$Builder;->getPoiFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilder;->getBuilder(I)Lcom/google/protobuf/GeneratedMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI$Builder;

    return-object v0
.end method

.method public getPoiBuilderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI$Builder;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1912
    invoke-direct {p0}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$Geocoding$Builder;->getPoiFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilder;->getBuilderList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getPoiCount()I
    .locals 1

    .prologue
    .line 1764
    iget-object v0, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$Geocoding$Builder;->poiBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 1765
    iget-object v0, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$Geocoding$Builder;->poi_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 1767
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$Geocoding$Builder;->poiBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilder;->getCount()I

    move-result v0

    goto :goto_0
.end method

.method public getPoiList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1757
    iget-object v0, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$Geocoding$Builder;->poiBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 1758
    iget-object v0, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$Geocoding$Builder;->poi_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 1760
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$Geocoding$Builder;->poiBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilder;->getMessageList()Ljava/util/List;

    move-result-object v0

    goto :goto_0
.end method

.method public getPoiOrBuilder(I)Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOIOrBuilder;
    .locals 1

    .prologue
    .line 1888
    iget-object v0, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$Geocoding$Builder;->poiBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 1889
    iget-object v0, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$Geocoding$Builder;->poi_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOIOrBuilder;

    .line 1890
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$Geocoding$Builder;->poiBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilder;->getMessageOrBuilder(I)Lcom/google/protobuf/MessageOrBuilder;

    move-result-object v0

    check-cast v0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOIOrBuilder;

    goto :goto_0
.end method

.method public getPoiOrBuilderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<+",
            "Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOIOrBuilder;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1895
    iget-object v0, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$Geocoding$Builder;->poiBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-eqz v0, :cond_0

    .line 1896
    iget-object v0, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$Geocoding$Builder;->poiBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilder;->getMessageOrBuilderList()Ljava/util/List;

    move-result-object v0

    .line 1898
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$Geocoding$Builder;->poi_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    goto :goto_0
.end method

.method protected internalGetFieldAccessorTable()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 1

    .prologue
    .line 1578
    # getter for: Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf;->internal_static_Geocoding_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    invoke-static {}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf;->access$2400()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 1699
    move v0, v1

    :goto_0
    invoke-virtual {p0}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$Geocoding$Builder;->getPoiCount()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 1700
    invoke-virtual {p0, v0}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$Geocoding$Builder;->getPoi(I)Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI;->isInitialized()Z

    move-result v2

    if-nez v2, :cond_0

    .line 1705
    :goto_1
    return v1

    .line 1699
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1705
    :cond_1
    const/4 v1, 0x1

    goto :goto_1
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1568
    invoke-virtual {p0, p1, p2}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$Geocoding$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$Geocoding$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 1568
    invoke-virtual {p0, p1}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$Geocoding$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$Geocoding$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1568
    invoke-virtual {p0, p1, p2}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$Geocoding$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$Geocoding$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/Message$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1568
    invoke-virtual {p0, p1, p2}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$Geocoding$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$Geocoding$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 1568
    invoke-virtual {p0, p1}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$Geocoding$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$Geocoding$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1568
    invoke-virtual {p0, p1, p2}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$Geocoding$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$Geocoding$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$Geocoding$Builder;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1712
    invoke-virtual {p0}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$Geocoding$Builder;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v0

    invoke-static {v0}, Lcom/google/protobuf/UnknownFieldSet;->newBuilder(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/UnknownFieldSet$Builder;

    move-result-object v0

    .line 1716
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v1

    .line 1717
    sparse-switch v1, :sswitch_data_0

    .line 1723
    invoke-virtual {p0, p1, v0, p2, v1}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$Geocoding$Builder;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/UnknownFieldSet$Builder;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1725
    invoke-virtual {v0}, Lcom/google/protobuf/UnknownFieldSet$Builder;->build()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$Geocoding$Builder;->setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessage$Builder;

    .line 1726
    invoke-virtual {p0}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$Geocoding$Builder;->onChanged()V

    .line 1727
    :goto_1
    return-object p0

    .line 1719
    :sswitch_0
    invoke-virtual {v0}, Lcom/google/protobuf/UnknownFieldSet$Builder;->build()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$Geocoding$Builder;->setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessage$Builder;

    .line 1720
    invoke-virtual {p0}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$Geocoding$Builder;->onChanged()V

    goto :goto_1

    .line 1732
    :sswitch_1
    invoke-static {}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI;->newBuilder()Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI$Builder;

    move-result-object v1

    .line 1733
    invoke-virtual {p1, v1, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 1734
    invoke-virtual {v1}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI$Builder;->buildPartial()Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$Geocoding$Builder;->addPoi(Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI;)Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$Geocoding$Builder;

    goto :goto_0

    .line 1717
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
    .end sparse-switch
.end method

.method public mergeFrom(Lcom/google/protobuf/Message;)Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$Geocoding$Builder;
    .locals 1

    .prologue
    .line 1658
    instance-of v0, p1, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$Geocoding;

    if-eqz v0, :cond_0

    .line 1659
    check-cast p1, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$Geocoding;

    invoke-virtual {p0, p1}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$Geocoding$Builder;->mergeFrom(Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$Geocoding;)Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$Geocoding$Builder;

    move-result-object p0

    .line 1662
    :goto_0
    return-object p0

    .line 1661
    :cond_0
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessage$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;

    goto :goto_0
.end method

.method public mergeFrom(Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$Geocoding;)Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$Geocoding$Builder;
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 1667
    invoke-static {}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$Geocoding;->getDefaultInstance()Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$Geocoding;

    move-result-object v1

    if-ne p1, v1, :cond_0

    .line 1695
    :goto_0
    return-object p0

    .line 1668
    :cond_0
    iget-object v1, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$Geocoding$Builder;->poiBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v1, :cond_3

    .line 1669
    # getter for: Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$Geocoding;->poi_:Ljava/util/List;
    invoke-static {p1}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$Geocoding;->access$3000(Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$Geocoding;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1670
    iget-object v0, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$Geocoding$Builder;->poi_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1671
    # getter for: Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$Geocoding;->poi_:Ljava/util/List;
    invoke-static {p1}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$Geocoding;->access$3000(Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$Geocoding;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$Geocoding$Builder;->poi_:Ljava/util/List;

    .line 1672
    iget v0, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$Geocoding$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$Geocoding$Builder;->bitField0_:I

    .line 1677
    :goto_1
    invoke-virtual {p0}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$Geocoding$Builder;->onChanged()V

    .line 1694
    :cond_1
    :goto_2
    invoke-virtual {p1}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$Geocoding;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$Geocoding$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessage$Builder;

    goto :goto_0

    .line 1674
    :cond_2
    invoke-direct {p0}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$Geocoding$Builder;->ensurePoiIsMutable()V

    .line 1675
    iget-object v0, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$Geocoding$Builder;->poi_:Ljava/util/List;

    # getter for: Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$Geocoding;->poi_:Ljava/util/List;
    invoke-static {p1}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$Geocoding;->access$3000(Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$Geocoding;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_1

    .line 1680
    :cond_3
    # getter for: Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$Geocoding;->poi_:Ljava/util/List;
    invoke-static {p1}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$Geocoding;->access$3000(Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$Geocoding;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 1681
    iget-object v1, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$Geocoding$Builder;->poiBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v1}, Lcom/google/protobuf/RepeatedFieldBuilder;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 1682
    iget-object v1, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$Geocoding$Builder;->poiBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v1}, Lcom/google/protobuf/RepeatedFieldBuilder;->dispose()V

    .line 1683
    iput-object v0, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$Geocoding$Builder;->poiBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    .line 1684
    # getter for: Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$Geocoding;->poi_:Ljava/util/List;
    invoke-static {p1}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$Geocoding;->access$3000(Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$Geocoding;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$Geocoding$Builder;->poi_:Ljava/util/List;

    .line 1685
    iget v1, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$Geocoding$Builder;->bitField0_:I

    and-int/lit8 v1, v1, -0x2

    iput v1, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$Geocoding$Builder;->bitField0_:I

    .line 1686
    # getter for: Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$Geocoding;->alwaysUseFieldBuilders:Z
    invoke-static {}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$Geocoding;->access$3100()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-direct {p0}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$Geocoding$Builder;->getPoiFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilder;

    move-result-object v0

    :cond_4
    iput-object v0, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$Geocoding$Builder;->poiBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    goto :goto_2

    .line 1690
    :cond_5
    iget-object v0, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$Geocoding$Builder;->poiBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    # getter for: Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$Geocoding;->poi_:Ljava/util/List;
    invoke-static {p1}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$Geocoding;->access$3000(Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$Geocoding;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/protobuf/RepeatedFieldBuilder;->addAllMessages(Ljava/lang/Iterable;)Lcom/google/protobuf/RepeatedFieldBuilder;

    goto :goto_2
.end method

.method public removePoi(I)Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$Geocoding$Builder;
    .locals 1

    .prologue
    .line 1873
    iget-object v0, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$Geocoding$Builder;->poiBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 1874
    invoke-direct {p0}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$Geocoding$Builder;->ensurePoiIsMutable()V

    .line 1875
    iget-object v0, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$Geocoding$Builder;->poi_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 1876
    invoke-virtual {p0}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$Geocoding$Builder;->onChanged()V

    .line 1880
    :goto_0
    return-object p0

    .line 1878
    :cond_0
    iget-object v0, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$Geocoding$Builder;->poiBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilder;->remove(I)V

    goto :goto_0
.end method

.method public setPoi(ILcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI$Builder;)Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$Geocoding$Builder;
    .locals 2

    .prologue
    .line 1793
    iget-object v0, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$Geocoding$Builder;->poiBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 1794
    invoke-direct {p0}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$Geocoding$Builder;->ensurePoiIsMutable()V

    .line 1795
    iget-object v0, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$Geocoding$Builder;->poi_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI$Builder;->build()Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1796
    invoke-virtual {p0}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$Geocoding$Builder;->onChanged()V

    .line 1800
    :goto_0
    return-object p0

    .line 1798
    :cond_0
    iget-object v0, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$Geocoding$Builder;->poiBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {p2}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI$Builder;->build()Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/google/protobuf/RepeatedFieldBuilder;->setMessage(ILcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/RepeatedFieldBuilder;

    goto :goto_0
.end method

.method public setPoi(ILcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI;)Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$Geocoding$Builder;
    .locals 1

    .prologue
    .line 1779
    iget-object v0, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$Geocoding$Builder;->poiBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_1

    .line 1780
    if-nez p2, :cond_0

    .line 1781
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1783
    :cond_0
    invoke-direct {p0}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$Geocoding$Builder;->ensurePoiIsMutable()V

    .line 1784
    iget-object v0, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$Geocoding$Builder;->poi_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1785
    invoke-virtual {p0}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$Geocoding$Builder;->onChanged()V

    .line 1789
    :goto_0
    return-object p0

    .line 1787
    :cond_1
    iget-object v0, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$Geocoding$Builder;->poiBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0, p1, p2}, Lcom/google/protobuf/RepeatedFieldBuilder;->setMessage(ILcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/RepeatedFieldBuilder;

    goto :goto_0
.end method
