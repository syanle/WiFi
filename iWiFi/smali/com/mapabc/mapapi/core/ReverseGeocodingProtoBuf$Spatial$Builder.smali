.class public final Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Spatial$Builder;
.super Lcom/google/protobuf/GeneratedMessage$Builder;
.source "ReverseGeocodingProtoBuf.java"

# interfaces
.implements Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$SpatialOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Spatial;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessage$Builder",
        "<",
        "Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Spatial$Builder;",
        ">;",
        "Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$SpatialOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private cityBuilder_:Lcom/google/protobuf/SingleFieldBuilder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/SingleFieldBuilder",
            "<",
            "Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$City;",
            "Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$City$Builder;",
            "Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$CityOrBuilder;",
            ">;"
        }
    .end annotation
.end field

.field private city_:Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$City;

.field private crossesBuilder_:Lcom/google/protobuf/SingleFieldBuilder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/SingleFieldBuilder",
            "<",
            "Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Crosses;",
            "Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Crosses$Builder;",
            "Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$CrossesOrBuilder;",
            ">;"
        }
    .end annotation
.end field

.field private crosses_:Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Crosses;

.field private districtBuilder_:Lcom/google/protobuf/SingleFieldBuilder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/SingleFieldBuilder",
            "<",
            "Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$District;",
            "Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$District$Builder;",
            "Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$DistrictOrBuilder;",
            ">;"
        }
    .end annotation
.end field

.field private district_:Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$District;

.field private poisBuilder_:Lcom/google/protobuf/SingleFieldBuilder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/SingleFieldBuilder",
            "<",
            "Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$POIS;",
            "Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$POIS$Builder;",
            "Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$POISOrBuilder;",
            ">;"
        }
    .end annotation
.end field

.field private pois_:Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$POIS;

.field private provinceBuilder_:Lcom/google/protobuf/SingleFieldBuilder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/SingleFieldBuilder",
            "<",
            "Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Province;",
            "Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Province$Builder;",
            "Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$ProvinceOrBuilder;",
            ">;"
        }
    .end annotation
.end field

.field private province_:Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Province;

.field private roadsBuilder_:Lcom/google/protobuf/SingleFieldBuilder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/SingleFieldBuilder",
            "<",
            "Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Roads;",
            "Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Roads$Builder;",
            "Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$RoadsOrBuilder;",
            ">;"
        }
    .end annotation
.end field

.field private roads_:Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Roads;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 1463
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;-><init>()V

    .line 1765
    invoke-static {}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Province;->getDefaultInstance()Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Province;

    move-result-object v0

    iput-object v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Spatial$Builder;->province_:Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Province;

    .line 1855
    invoke-static {}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$City;->getDefaultInstance()Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$City;

    move-result-object v0

    iput-object v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Spatial$Builder;->city_:Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$City;

    .line 1945
    invoke-static {}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$District;->getDefaultInstance()Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$District;

    move-result-object v0

    iput-object v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Spatial$Builder;->district_:Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$District;

    .line 2035
    invoke-static {}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Roads;->getDefaultInstance()Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Roads;

    move-result-object v0

    iput-object v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Spatial$Builder;->roads_:Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Roads;

    .line 2125
    invoke-static {}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$POIS;->getDefaultInstance()Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$POIS;

    move-result-object v0

    iput-object v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Spatial$Builder;->pois_:Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$POIS;

    .line 2215
    invoke-static {}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Crosses;->getDefaultInstance()Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Crosses;

    move-result-object v0

    iput-object v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Spatial$Builder;->crosses_:Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Crosses;

    .line 1464
    invoke-direct {p0}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Spatial$Builder;->maybeForceBuilderInitialization()V

    .line 1465
    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V
    .locals 1

    .prologue
    .line 1468
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessage$Builder;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V

    .line 1765
    invoke-static {}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Province;->getDefaultInstance()Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Province;

    move-result-object v0

    iput-object v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Spatial$Builder;->province_:Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Province;

    .line 1855
    invoke-static {}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$City;->getDefaultInstance()Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$City;

    move-result-object v0

    iput-object v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Spatial$Builder;->city_:Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$City;

    .line 1945
    invoke-static {}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$District;->getDefaultInstance()Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$District;

    move-result-object v0

    iput-object v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Spatial$Builder;->district_:Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$District;

    .line 2035
    invoke-static {}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Roads;->getDefaultInstance()Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Roads;

    move-result-object v0

    iput-object v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Spatial$Builder;->roads_:Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Roads;

    .line 2125
    invoke-static {}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$POIS;->getDefaultInstance()Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$POIS;

    move-result-object v0

    iput-object v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Spatial$Builder;->pois_:Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$POIS;

    .line 2215
    invoke-static {}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Crosses;->getDefaultInstance()Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Crosses;

    move-result-object v0

    iput-object v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Spatial$Builder;->crosses_:Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Crosses;

    .line 1469
    invoke-direct {p0}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Spatial$Builder;->maybeForceBuilderInitialization()V

    .line 1470
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;Lcom/mapabc/mapapi/core/z;)V
    .locals 0

    .prologue
    .line 1449
    invoke-direct {p0, p1}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Spatial$Builder;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V

    return-void
.end method

.method static synthetic access$2100(Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Spatial$Builder;)Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Spatial;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 1449
    invoke-direct {p0}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Spatial$Builder;->buildParsed()Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Spatial;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2200()Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Spatial$Builder;
    .locals 1

    .prologue
    .line 1449
    invoke-static {}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Spatial$Builder;->create()Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Spatial$Builder;

    move-result-object v0

    return-object v0
.end method

.method private buildParsed()Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Spatial;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 1549
    invoke-virtual {p0}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Spatial$Builder;->buildPartial()Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Spatial;

    move-result-object v0

    .line 1550
    invoke-virtual {v0}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Spatial;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1551
    invoke-static {v0}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Spatial$Builder;->newUninitializedMessageException(Lcom/google/protobuf/Message;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/UninitializedMessageException;->asInvalidProtocolBufferException()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0

    .line 1554
    :cond_0
    return-object v0
.end method

.method private static create()Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Spatial$Builder;
    .locals 1

    .prologue
    .line 1482
    new-instance v0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Spatial$Builder;

    invoke-direct {v0}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Spatial$Builder;-><init>()V

    return-object v0
.end method

.method private getCityFieldBuilder()Lcom/google/protobuf/SingleFieldBuilder;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/SingleFieldBuilder",
            "<",
            "Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$City;",
            "Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$City$Builder;",
            "Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$CityOrBuilder;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1933
    iget-object v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Spatial$Builder;->cityBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_0

    .line 1934
    new-instance v0, Lcom/google/protobuf/SingleFieldBuilder;

    iget-object v1, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Spatial$Builder;->city_:Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$City;

    invoke-virtual {p0}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Spatial$Builder;->getParentForChildren()Lcom/google/protobuf/GeneratedMessage$BuilderParent;

    move-result-object v2

    invoke-virtual {p0}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Spatial$Builder;->isClean()Z

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lcom/google/protobuf/SingleFieldBuilder;-><init>(Lcom/google/protobuf/GeneratedMessage;Lcom/google/protobuf/GeneratedMessage$BuilderParent;Z)V

    iput-object v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Spatial$Builder;->cityBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    .line 1939
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Spatial$Builder;->city_:Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$City;

    .line 1941
    :cond_0
    iget-object v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Spatial$Builder;->cityBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    return-object v0
.end method

.method private getCrossesFieldBuilder()Lcom/google/protobuf/SingleFieldBuilder;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/SingleFieldBuilder",
            "<",
            "Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Crosses;",
            "Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Crosses$Builder;",
            "Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$CrossesOrBuilder;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2293
    iget-object v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Spatial$Builder;->crossesBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_0

    .line 2294
    new-instance v0, Lcom/google/protobuf/SingleFieldBuilder;

    iget-object v1, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Spatial$Builder;->crosses_:Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Crosses;

    invoke-virtual {p0}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Spatial$Builder;->getParentForChildren()Lcom/google/protobuf/GeneratedMessage$BuilderParent;

    move-result-object v2

    invoke-virtual {p0}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Spatial$Builder;->isClean()Z

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lcom/google/protobuf/SingleFieldBuilder;-><init>(Lcom/google/protobuf/GeneratedMessage;Lcom/google/protobuf/GeneratedMessage$BuilderParent;Z)V

    iput-object v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Spatial$Builder;->crossesBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    .line 2299
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Spatial$Builder;->crosses_:Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Crosses;

    .line 2301
    :cond_0
    iget-object v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Spatial$Builder;->crossesBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 1454
    # getter for: Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf;->internal_static_Spatial_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;
    invoke-static {}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf;->access$1900()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method private getDistrictFieldBuilder()Lcom/google/protobuf/SingleFieldBuilder;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/SingleFieldBuilder",
            "<",
            "Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$District;",
            "Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$District$Builder;",
            "Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$DistrictOrBuilder;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2023
    iget-object v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Spatial$Builder;->districtBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_0

    .line 2024
    new-instance v0, Lcom/google/protobuf/SingleFieldBuilder;

    iget-object v1, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Spatial$Builder;->district_:Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$District;

    invoke-virtual {p0}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Spatial$Builder;->getParentForChildren()Lcom/google/protobuf/GeneratedMessage$BuilderParent;

    move-result-object v2

    invoke-virtual {p0}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Spatial$Builder;->isClean()Z

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lcom/google/protobuf/SingleFieldBuilder;-><init>(Lcom/google/protobuf/GeneratedMessage;Lcom/google/protobuf/GeneratedMessage$BuilderParent;Z)V

    iput-object v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Spatial$Builder;->districtBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    .line 2029
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Spatial$Builder;->district_:Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$District;

    .line 2031
    :cond_0
    iget-object v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Spatial$Builder;->districtBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    return-object v0
.end method

.method private getPoisFieldBuilder()Lcom/google/protobuf/SingleFieldBuilder;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/SingleFieldBuilder",
            "<",
            "Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$POIS;",
            "Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$POIS$Builder;",
            "Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$POISOrBuilder;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2203
    iget-object v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Spatial$Builder;->poisBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_0

    .line 2204
    new-instance v0, Lcom/google/protobuf/SingleFieldBuilder;

    iget-object v1, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Spatial$Builder;->pois_:Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$POIS;

    invoke-virtual {p0}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Spatial$Builder;->getParentForChildren()Lcom/google/protobuf/GeneratedMessage$BuilderParent;

    move-result-object v2

    invoke-virtual {p0}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Spatial$Builder;->isClean()Z

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lcom/google/protobuf/SingleFieldBuilder;-><init>(Lcom/google/protobuf/GeneratedMessage;Lcom/google/protobuf/GeneratedMessage$BuilderParent;Z)V

    iput-object v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Spatial$Builder;->poisBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    .line 2209
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Spatial$Builder;->pois_:Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$POIS;

    .line 2211
    :cond_0
    iget-object v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Spatial$Builder;->poisBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    return-object v0
.end method

.method private getProvinceFieldBuilder()Lcom/google/protobuf/SingleFieldBuilder;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/SingleFieldBuilder",
            "<",
            "Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Province;",
            "Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Province$Builder;",
            "Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$ProvinceOrBuilder;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1843
    iget-object v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Spatial$Builder;->provinceBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_0

    .line 1844
    new-instance v0, Lcom/google/protobuf/SingleFieldBuilder;

    iget-object v1, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Spatial$Builder;->province_:Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Province;

    invoke-virtual {p0}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Spatial$Builder;->getParentForChildren()Lcom/google/protobuf/GeneratedMessage$BuilderParent;

    move-result-object v2

    invoke-virtual {p0}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Spatial$Builder;->isClean()Z

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lcom/google/protobuf/SingleFieldBuilder;-><init>(Lcom/google/protobuf/GeneratedMessage;Lcom/google/protobuf/GeneratedMessage$BuilderParent;Z)V

    iput-object v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Spatial$Builder;->provinceBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    .line 1849
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Spatial$Builder;->province_:Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Province;

    .line 1851
    :cond_0
    iget-object v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Spatial$Builder;->provinceBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    return-object v0
.end method

.method private getRoadsFieldBuilder()Lcom/google/protobuf/SingleFieldBuilder;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/SingleFieldBuilder",
            "<",
            "Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Roads;",
            "Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Roads$Builder;",
            "Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$RoadsOrBuilder;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2113
    iget-object v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Spatial$Builder;->roadsBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_0

    .line 2114
    new-instance v0, Lcom/google/protobuf/SingleFieldBuilder;

    iget-object v1, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Spatial$Builder;->roads_:Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Roads;

    invoke-virtual {p0}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Spatial$Builder;->getParentForChildren()Lcom/google/protobuf/GeneratedMessage$BuilderParent;

    move-result-object v2

    invoke-virtual {p0}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Spatial$Builder;->isClean()Z

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lcom/google/protobuf/SingleFieldBuilder;-><init>(Lcom/google/protobuf/GeneratedMessage;Lcom/google/protobuf/GeneratedMessage$BuilderParent;Z)V

    iput-object v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Spatial$Builder;->roadsBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    .line 2119
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Spatial$Builder;->roads_:Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Roads;

    .line 2121
    :cond_0
    iget-object v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Spatial$Builder;->roadsBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .locals 1

    .prologue
    .line 1472
    # getter for: Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Spatial;->alwaysUseFieldBuilders:Z
    invoke-static {}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Spatial;->access$2400()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1473
    invoke-direct {p0}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Spatial$Builder;->getProvinceFieldBuilder()Lcom/google/protobuf/SingleFieldBuilder;

    .line 1474
    invoke-direct {p0}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Spatial$Builder;->getCityFieldBuilder()Lcom/google/protobuf/SingleFieldBuilder;

    .line 1475
    invoke-direct {p0}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Spatial$Builder;->getDistrictFieldBuilder()Lcom/google/protobuf/SingleFieldBuilder;

    .line 1476
    invoke-direct {p0}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Spatial$Builder;->getRoadsFieldBuilder()Lcom/google/protobuf/SingleFieldBuilder;

    .line 1477
    invoke-direct {p0}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Spatial$Builder;->getPoisFieldBuilder()Lcom/google/protobuf/SingleFieldBuilder;

    .line 1478
    invoke-direct {p0}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Spatial$Builder;->getCrossesFieldBuilder()Lcom/google/protobuf/SingleFieldBuilder;

    .line 1480
    :cond_0
    return-void
.end method


# virtual methods
.method public bridge synthetic build()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 1449
    invoke-virtual {p0}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Spatial$Builder;->build()Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Spatial;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 1449
    invoke-virtual {p0}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Spatial$Builder;->build()Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Spatial;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Spatial;
    .locals 2

    .prologue
    .line 1540
    invoke-virtual {p0}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Spatial$Builder;->buildPartial()Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Spatial;

    move-result-object v0

    .line 1541
    invoke-virtual {v0}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Spatial;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1542
    invoke-static {v0}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Spatial$Builder;->newUninitializedMessageException(Lcom/google/protobuf/Message;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0

    .line 1544
    :cond_0
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 1449
    invoke-virtual {p0}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Spatial$Builder;->buildPartial()Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Spatial;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 1449
    invoke-virtual {p0}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Spatial$Builder;->buildPartial()Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Spatial;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Spatial;
    .locals 5

    .prologue
    const/4 v0, 0x1

    .line 1558
    new-instance v2, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Spatial;

    const/4 v1, 0x0

    invoke-direct {v2, p0, v1}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Spatial;-><init>(Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Spatial$Builder;Lcom/mapabc/mapapi/core/z;)V

    .line 1559
    iget v3, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Spatial$Builder;->bitField0_:I

    .line 1560
    const/4 v1, 0x0

    .line 1561
    and-int/lit8 v4, v3, 0x1

    if-ne v4, v0, :cond_0

    move v1, v0

    .line 1564
    :cond_0
    iget-object v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Spatial$Builder;->provinceBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_6

    .line 1565
    iget-object v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Spatial$Builder;->province_:Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Province;

    # setter for: Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Spatial;->province_:Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Province;
    invoke-static {v2, v0}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Spatial;->access$2602(Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Spatial;Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Province;)Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Province;

    .line 1569
    :goto_0
    and-int/lit8 v0, v3, 0x2

    const/4 v4, 0x2

    if-ne v0, v4, :cond_1

    .line 1570
    or-int/lit8 v1, v1, 0x2

    .line 1572
    :cond_1
    iget-object v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Spatial$Builder;->cityBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_7

    .line 1573
    iget-object v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Spatial$Builder;->city_:Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$City;

    # setter for: Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Spatial;->city_:Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$City;
    invoke-static {v2, v0}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Spatial;->access$2702(Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Spatial;Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$City;)Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$City;

    .line 1577
    :goto_1
    and-int/lit8 v0, v3, 0x4

    const/4 v4, 0x4

    if-ne v0, v4, :cond_2

    .line 1578
    or-int/lit8 v1, v1, 0x4

    .line 1580
    :cond_2
    iget-object v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Spatial$Builder;->districtBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_8

    .line 1581
    iget-object v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Spatial$Builder;->district_:Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$District;

    # setter for: Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Spatial;->district_:Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$District;
    invoke-static {v2, v0}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Spatial;->access$2802(Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Spatial;Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$District;)Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$District;

    .line 1585
    :goto_2
    and-int/lit8 v0, v3, 0x8

    const/16 v4, 0x8

    if-ne v0, v4, :cond_3

    .line 1586
    or-int/lit8 v1, v1, 0x8

    .line 1588
    :cond_3
    iget-object v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Spatial$Builder;->roadsBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_9

    .line 1589
    iget-object v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Spatial$Builder;->roads_:Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Roads;

    # setter for: Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Spatial;->roads_:Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Roads;
    invoke-static {v2, v0}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Spatial;->access$2902(Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Spatial;Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Roads;)Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Roads;

    .line 1593
    :goto_3
    and-int/lit8 v0, v3, 0x10

    const/16 v4, 0x10

    if-ne v0, v4, :cond_4

    .line 1594
    or-int/lit8 v1, v1, 0x10

    .line 1596
    :cond_4
    iget-object v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Spatial$Builder;->poisBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_a

    .line 1597
    iget-object v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Spatial$Builder;->pois_:Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$POIS;

    # setter for: Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Spatial;->pois_:Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$POIS;
    invoke-static {v2, v0}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Spatial;->access$3002(Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Spatial;Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$POIS;)Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$POIS;

    .line 1601
    :goto_4
    and-int/lit8 v0, v3, 0x20

    const/16 v3, 0x20

    if-ne v0, v3, :cond_5

    .line 1602
    or-int/lit8 v1, v1, 0x20

    .line 1604
    :cond_5
    iget-object v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Spatial$Builder;->crossesBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_b

    .line 1605
    iget-object v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Spatial$Builder;->crosses_:Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Crosses;

    # setter for: Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Spatial;->crosses_:Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Crosses;
    invoke-static {v2, v0}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Spatial;->access$3102(Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Spatial;Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Crosses;)Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Crosses;

    .line 1609
    :goto_5
    # setter for: Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Spatial;->bitField0_:I
    invoke-static {v2, v1}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Spatial;->access$3202(Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Spatial;I)I

    .line 1610
    invoke-virtual {p0}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Spatial$Builder;->onBuilt()V

    .line 1611
    return-object v2

    .line 1567
    :cond_6
    iget-object v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Spatial$Builder;->provinceBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilder;->build()Lcom/google/protobuf/GeneratedMessage;

    move-result-object v0

    check-cast v0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Province;

    # setter for: Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Spatial;->province_:Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Province;
    invoke-static {v2, v0}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Spatial;->access$2602(Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Spatial;Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Province;)Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Province;

    goto :goto_0

    .line 1575
    :cond_7
    iget-object v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Spatial$Builder;->cityBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilder;->build()Lcom/google/protobuf/GeneratedMessage;

    move-result-object v0

    check-cast v0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$City;

    # setter for: Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Spatial;->city_:Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$City;
    invoke-static {v2, v0}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Spatial;->access$2702(Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Spatial;Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$City;)Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$City;

    goto :goto_1

    .line 1583
    :cond_8
    iget-object v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Spatial$Builder;->districtBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilder;->build()Lcom/google/protobuf/GeneratedMessage;

    move-result-object v0

    check-cast v0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$District;

    # setter for: Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Spatial;->district_:Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$District;
    invoke-static {v2, v0}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Spatial;->access$2802(Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Spatial;Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$District;)Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$District;

    goto :goto_2

    .line 1591
    :cond_9
    iget-object v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Spatial$Builder;->roadsBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilder;->build()Lcom/google/protobuf/GeneratedMessage;

    move-result-object v0

    check-cast v0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Roads;

    # setter for: Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Spatial;->roads_:Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Roads;
    invoke-static {v2, v0}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Spatial;->access$2902(Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Spatial;Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Roads;)Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Roads;

    goto :goto_3

    .line 1599
    :cond_a
    iget-object v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Spatial$Builder;->poisBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilder;->build()Lcom/google/protobuf/GeneratedMessage;

    move-result-object v0

    check-cast v0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$POIS;

    # setter for: Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Spatial;->pois_:Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$POIS;
    invoke-static {v2, v0}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Spatial;->access$3002(Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Spatial;Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$POIS;)Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$POIS;

    goto :goto_4

    .line 1607
    :cond_b
    iget-object v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Spatial$Builder;->crossesBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilder;->build()Lcom/google/protobuf/GeneratedMessage;

    move-result-object v0

    check-cast v0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Crosses;

    # setter for: Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Spatial;->crosses_:Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Crosses;
    invoke-static {v2, v0}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Spatial;->access$3102(Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Spatial;Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Crosses;)Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Crosses;

    goto :goto_5
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 1449
    invoke-virtual {p0}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Spatial$Builder;->clear()Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Spatial$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessage$Builder;
    .locals 1

    .prologue
    .line 1449
    invoke-virtual {p0}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Spatial$Builder;->clear()Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Spatial$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 1449
    invoke-virtual {p0}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Spatial$Builder;->clear()Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Spatial$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 1449
    invoke-virtual {p0}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Spatial$Builder;->clear()Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Spatial$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Spatial$Builder;
    .locals 1

    .prologue
    .line 1486
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->clear()Lcom/google/protobuf/GeneratedMessage$Builder;

    .line 1487
    iget-object v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Spatial$Builder;->provinceBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_0

    .line 1488
    invoke-static {}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Province;->getDefaultInstance()Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Province;

    move-result-object v0

    iput-object v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Spatial$Builder;->province_:Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Province;

    .line 1492
    :goto_0
    iget v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Spatial$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Spatial$Builder;->bitField0_:I

    .line 1493
    iget-object v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Spatial$Builder;->cityBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_1

    .line 1494
    invoke-static {}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$City;->getDefaultInstance()Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$City;

    move-result-object v0

    iput-object v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Spatial$Builder;->city_:Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$City;

    .line 1498
    :goto_1
    iget v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Spatial$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Spatial$Builder;->bitField0_:I

    .line 1499
    iget-object v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Spatial$Builder;->districtBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_2

    .line 1500
    invoke-static {}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$District;->getDefaultInstance()Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$District;

    move-result-object v0

    iput-object v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Spatial$Builder;->district_:Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$District;

    .line 1504
    :goto_2
    iget v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Spatial$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Spatial$Builder;->bitField0_:I

    .line 1505
    iget-object v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Spatial$Builder;->roadsBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_3

    .line 1506
    invoke-static {}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Roads;->getDefaultInstance()Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Roads;

    move-result-object v0

    iput-object v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Spatial$Builder;->roads_:Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Roads;

    .line 1510
    :goto_3
    iget v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Spatial$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Spatial$Builder;->bitField0_:I

    .line 1511
    iget-object v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Spatial$Builder;->poisBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_4

    .line 1512
    invoke-static {}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$POIS;->getDefaultInstance()Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$POIS;

    move-result-object v0

    iput-object v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Spatial$Builder;->pois_:Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$POIS;

    .line 1516
    :goto_4
    iget v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Spatial$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Spatial$Builder;->bitField0_:I

    .line 1517
    iget-object v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Spatial$Builder;->crossesBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_5

    .line 1518
    invoke-static {}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Crosses;->getDefaultInstance()Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Crosses;

    move-result-object v0

    iput-object v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Spatial$Builder;->crosses_:Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Crosses;

    .line 1522
    :goto_5
    iget v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Spatial$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Spatial$Builder;->bitField0_:I

    .line 1523
    return-object p0

    .line 1490
    :cond_0
    iget-object v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Spatial$Builder;->provinceBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilder;->clear()Lcom/google/protobuf/SingleFieldBuilder;

    goto :goto_0

    .line 1496
    :cond_1
    iget-object v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Spatial$Builder;->cityBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilder;->clear()Lcom/google/protobuf/SingleFieldBuilder;

    goto :goto_1

    .line 1502
    :cond_2
    iget-object v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Spatial$Builder;->districtBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilder;->clear()Lcom/google/protobuf/SingleFieldBuilder;

    goto :goto_2

    .line 1508
    :cond_3
    iget-object v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Spatial$Builder;->roadsBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilder;->clear()Lcom/google/protobuf/SingleFieldBuilder;

    goto :goto_3

    .line 1514
    :cond_4
    iget-object v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Spatial$Builder;->poisBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilder;->clear()Lcom/google/protobuf/SingleFieldBuilder;

    goto :goto_4

    .line 1520
    :cond_5
    iget-object v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Spatial$Builder;->crossesBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilder;->clear()Lcom/google/protobuf/SingleFieldBuilder;

    goto :goto_5
.end method

.method public clearCity()Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Spatial$Builder;
    .locals 1

    .prologue
    .line 1909
    iget-object v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Spatial$Builder;->cityBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_0

    .line 1910
    invoke-static {}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$City;->getDefaultInstance()Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$City;

    move-result-object v0

    iput-object v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Spatial$Builder;->city_:Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$City;

    .line 1911
    invoke-virtual {p0}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Spatial$Builder;->onChanged()V

    .line 1915
    :goto_0
    iget v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Spatial$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Spatial$Builder;->bitField0_:I

    .line 1916
    return-object p0

    .line 1913
    :cond_0
    iget-object v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Spatial$Builder;->cityBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilder;->clear()Lcom/google/protobuf/SingleFieldBuilder;

    goto :goto_0
.end method

.method public clearCrosses()Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Spatial$Builder;
    .locals 1

    .prologue
    .line 2269
    iget-object v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Spatial$Builder;->crossesBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_0

    .line 2270
    invoke-static {}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Crosses;->getDefaultInstance()Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Crosses;

    move-result-object v0

    iput-object v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Spatial$Builder;->crosses_:Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Crosses;

    .line 2271
    invoke-virtual {p0}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Spatial$Builder;->onChanged()V

    .line 2275
    :goto_0
    iget v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Spatial$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Spatial$Builder;->bitField0_:I

    .line 2276
    return-object p0

    .line 2273
    :cond_0
    iget-object v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Spatial$Builder;->crossesBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilder;->clear()Lcom/google/protobuf/SingleFieldBuilder;

    goto :goto_0
.end method

.method public clearDistrict()Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Spatial$Builder;
    .locals 1

    .prologue
    .line 1999
    iget-object v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Spatial$Builder;->districtBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_0

    .line 2000
    invoke-static {}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$District;->getDefaultInstance()Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$District;

    move-result-object v0

    iput-object v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Spatial$Builder;->district_:Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$District;

    .line 2001
    invoke-virtual {p0}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Spatial$Builder;->onChanged()V

    .line 2005
    :goto_0
    iget v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Spatial$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Spatial$Builder;->bitField0_:I

    .line 2006
    return-object p0

    .line 2003
    :cond_0
    iget-object v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Spatial$Builder;->districtBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilder;->clear()Lcom/google/protobuf/SingleFieldBuilder;

    goto :goto_0
.end method

.method public clearPois()Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Spatial$Builder;
    .locals 1

    .prologue
    .line 2179
    iget-object v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Spatial$Builder;->poisBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_0

    .line 2180
    invoke-static {}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$POIS;->getDefaultInstance()Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$POIS;

    move-result-object v0

    iput-object v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Spatial$Builder;->pois_:Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$POIS;

    .line 2181
    invoke-virtual {p0}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Spatial$Builder;->onChanged()V

    .line 2185
    :goto_0
    iget v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Spatial$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Spatial$Builder;->bitField0_:I

    .line 2186
    return-object p0

    .line 2183
    :cond_0
    iget-object v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Spatial$Builder;->poisBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilder;->clear()Lcom/google/protobuf/SingleFieldBuilder;

    goto :goto_0
.end method

.method public clearProvince()Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Spatial$Builder;
    .locals 1

    .prologue
    .line 1819
    iget-object v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Spatial$Builder;->provinceBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_0

    .line 1820
    invoke-static {}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Province;->getDefaultInstance()Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Province;

    move-result-object v0

    iput-object v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Spatial$Builder;->province_:Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Province;

    .line 1821
    invoke-virtual {p0}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Spatial$Builder;->onChanged()V

    .line 1825
    :goto_0
    iget v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Spatial$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Spatial$Builder;->bitField0_:I

    .line 1826
    return-object p0

    .line 1823
    :cond_0
    iget-object v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Spatial$Builder;->provinceBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilder;->clear()Lcom/google/protobuf/SingleFieldBuilder;

    goto :goto_0
.end method

.method public clearRoads()Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Spatial$Builder;
    .locals 1

    .prologue
    .line 2089
    iget-object v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Spatial$Builder;->roadsBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_0

    .line 2090
    invoke-static {}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Roads;->getDefaultInstance()Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Roads;

    move-result-object v0

    iput-object v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Spatial$Builder;->roads_:Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Roads;

    .line 2091
    invoke-virtual {p0}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Spatial$Builder;->onChanged()V

    .line 2095
    :goto_0
    iget v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Spatial$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Spatial$Builder;->bitField0_:I

    .line 2096
    return-object p0

    .line 2093
    :cond_0
    iget-object v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Spatial$Builder;->roadsBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilder;->clear()Lcom/google/protobuf/SingleFieldBuilder;

    goto :goto_0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 1449
    invoke-virtual {p0}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Spatial$Builder;->clone()Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Spatial$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .prologue
    .line 1449
    invoke-virtual {p0}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Spatial$Builder;->clone()Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Spatial$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessage$Builder;
    .locals 1

    .prologue
    .line 1449
    invoke-virtual {p0}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Spatial$Builder;->clone()Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Spatial$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 1449
    invoke-virtual {p0}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Spatial$Builder;->clone()Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Spatial$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 1449
    invoke-virtual {p0}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Spatial$Builder;->clone()Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Spatial$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Spatial$Builder;
    .locals 2

    .prologue
    .line 1527
    invoke-static {}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Spatial$Builder;->create()Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Spatial$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Spatial$Builder;->buildPartial()Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Spatial;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Spatial$Builder;->mergeFrom(Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Spatial;)Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Spatial$Builder;

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
    .line 1449
    invoke-virtual {p0}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Spatial$Builder;->clone()Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Spatial$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getCity()Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$City;
    .locals 1

    .prologue
    .line 1862
    iget-object v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Spatial$Builder;->cityBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_0

    .line 1863
    iget-object v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Spatial$Builder;->city_:Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$City;

    .line 1865
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Spatial$Builder;->cityBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilder;->getMessage()Lcom/google/protobuf/GeneratedMessage;

    move-result-object v0

    check-cast v0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$City;

    goto :goto_0
.end method

.method public getCityBuilder()Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$City$Builder;
    .locals 1

    .prologue
    .line 1919
    iget v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Spatial$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Spatial$Builder;->bitField0_:I

    .line 1920
    invoke-virtual {p0}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Spatial$Builder;->onChanged()V

    .line 1921
    invoke-direct {p0}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Spatial$Builder;->getCityFieldBuilder()Lcom/google/protobuf/SingleFieldBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilder;->getBuilder()Lcom/google/protobuf/GeneratedMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$City$Builder;

    return-object v0
.end method

.method public getCityOrBuilder()Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$CityOrBuilder;
    .locals 1

    .prologue
    .line 1924
    iget-object v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Spatial$Builder;->cityBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-eqz v0, :cond_0

    .line 1925
    iget-object v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Spatial$Builder;->cityBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilder;->getMessageOrBuilder()Lcom/google/protobuf/MessageOrBuilder;

    move-result-object v0

    check-cast v0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$CityOrBuilder;

    .line 1927
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Spatial$Builder;->city_:Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$City;

    goto :goto_0
.end method

.method public getCrosses()Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Crosses;
    .locals 1

    .prologue
    .line 2222
    iget-object v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Spatial$Builder;->crossesBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_0

    .line 2223
    iget-object v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Spatial$Builder;->crosses_:Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Crosses;

    .line 2225
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Spatial$Builder;->crossesBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilder;->getMessage()Lcom/google/protobuf/GeneratedMessage;

    move-result-object v0

    check-cast v0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Crosses;

    goto :goto_0
.end method

.method public getCrossesBuilder()Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Crosses$Builder;
    .locals 1

    .prologue
    .line 2279
    iget v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Spatial$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Spatial$Builder;->bitField0_:I

    .line 2280
    invoke-virtual {p0}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Spatial$Builder;->onChanged()V

    .line 2281
    invoke-direct {p0}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Spatial$Builder;->getCrossesFieldBuilder()Lcom/google/protobuf/SingleFieldBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilder;->getBuilder()Lcom/google/protobuf/GeneratedMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Crosses$Builder;

    return-object v0
.end method

.method public getCrossesOrBuilder()Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$CrossesOrBuilder;
    .locals 1

    .prologue
    .line 2284
    iget-object v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Spatial$Builder;->crossesBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-eqz v0, :cond_0

    .line 2285
    iget-object v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Spatial$Builder;->crossesBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilder;->getMessageOrBuilder()Lcom/google/protobuf/MessageOrBuilder;

    move-result-object v0

    check-cast v0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$CrossesOrBuilder;

    .line 2287
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Spatial$Builder;->crosses_:Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Crosses;

    goto :goto_0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 1449
    invoke-virtual {p0}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Spatial$Builder;->getDefaultInstanceForType()Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Spatial;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 1449
    invoke-virtual {p0}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Spatial$Builder;->getDefaultInstanceForType()Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Spatial;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Spatial;
    .locals 1

    .prologue
    .line 1536
    invoke-static {}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Spatial;->getDefaultInstance()Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Spatial;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 1532
    invoke-static {}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Spatial;->getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public getDistrict()Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$District;
    .locals 1

    .prologue
    .line 1952
    iget-object v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Spatial$Builder;->districtBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_0

    .line 1953
    iget-object v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Spatial$Builder;->district_:Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$District;

    .line 1955
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Spatial$Builder;->districtBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilder;->getMessage()Lcom/google/protobuf/GeneratedMessage;

    move-result-object v0

    check-cast v0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$District;

    goto :goto_0
.end method

.method public getDistrictBuilder()Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$District$Builder;
    .locals 1

    .prologue
    .line 2009
    iget v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Spatial$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Spatial$Builder;->bitField0_:I

    .line 2010
    invoke-virtual {p0}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Spatial$Builder;->onChanged()V

    .line 2011
    invoke-direct {p0}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Spatial$Builder;->getDistrictFieldBuilder()Lcom/google/protobuf/SingleFieldBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilder;->getBuilder()Lcom/google/protobuf/GeneratedMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$District$Builder;

    return-object v0
.end method

.method public getDistrictOrBuilder()Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$DistrictOrBuilder;
    .locals 1

    .prologue
    .line 2014
    iget-object v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Spatial$Builder;->districtBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-eqz v0, :cond_0

    .line 2015
    iget-object v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Spatial$Builder;->districtBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilder;->getMessageOrBuilder()Lcom/google/protobuf/MessageOrBuilder;

    move-result-object v0

    check-cast v0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$DistrictOrBuilder;

    .line 2017
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Spatial$Builder;->district_:Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$District;

    goto :goto_0
.end method

.method public getPois()Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$POIS;
    .locals 1

    .prologue
    .line 2132
    iget-object v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Spatial$Builder;->poisBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_0

    .line 2133
    iget-object v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Spatial$Builder;->pois_:Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$POIS;

    .line 2135
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Spatial$Builder;->poisBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilder;->getMessage()Lcom/google/protobuf/GeneratedMessage;

    move-result-object v0

    check-cast v0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$POIS;

    goto :goto_0
.end method

.method public getPoisBuilder()Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$POIS$Builder;
    .locals 1

    .prologue
    .line 2189
    iget v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Spatial$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Spatial$Builder;->bitField0_:I

    .line 2190
    invoke-virtual {p0}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Spatial$Builder;->onChanged()V

    .line 2191
    invoke-direct {p0}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Spatial$Builder;->getPoisFieldBuilder()Lcom/google/protobuf/SingleFieldBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilder;->getBuilder()Lcom/google/protobuf/GeneratedMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$POIS$Builder;

    return-object v0
.end method

.method public getPoisOrBuilder()Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$POISOrBuilder;
    .locals 1

    .prologue
    .line 2194
    iget-object v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Spatial$Builder;->poisBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-eqz v0, :cond_0

    .line 2195
    iget-object v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Spatial$Builder;->poisBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilder;->getMessageOrBuilder()Lcom/google/protobuf/MessageOrBuilder;

    move-result-object v0

    check-cast v0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$POISOrBuilder;

    .line 2197
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Spatial$Builder;->pois_:Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$POIS;

    goto :goto_0
.end method

.method public getProvince()Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Province;
    .locals 1

    .prologue
    .line 1772
    iget-object v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Spatial$Builder;->provinceBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_0

    .line 1773
    iget-object v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Spatial$Builder;->province_:Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Province;

    .line 1775
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Spatial$Builder;->provinceBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilder;->getMessage()Lcom/google/protobuf/GeneratedMessage;

    move-result-object v0

    check-cast v0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Province;

    goto :goto_0
.end method

.method public getProvinceBuilder()Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Province$Builder;
    .locals 1

    .prologue
    .line 1829
    iget v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Spatial$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Spatial$Builder;->bitField0_:I

    .line 1830
    invoke-virtual {p0}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Spatial$Builder;->onChanged()V

    .line 1831
    invoke-direct {p0}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Spatial$Builder;->getProvinceFieldBuilder()Lcom/google/protobuf/SingleFieldBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilder;->getBuilder()Lcom/google/protobuf/GeneratedMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Province$Builder;

    return-object v0
.end method

.method public getProvinceOrBuilder()Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$ProvinceOrBuilder;
    .locals 1

    .prologue
    .line 1834
    iget-object v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Spatial$Builder;->provinceBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-eqz v0, :cond_0

    .line 1835
    iget-object v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Spatial$Builder;->provinceBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilder;->getMessageOrBuilder()Lcom/google/protobuf/MessageOrBuilder;

    move-result-object v0

    check-cast v0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$ProvinceOrBuilder;

    .line 1837
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Spatial$Builder;->province_:Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Province;

    goto :goto_0
.end method

.method public getRoads()Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Roads;
    .locals 1

    .prologue
    .line 2042
    iget-object v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Spatial$Builder;->roadsBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_0

    .line 2043
    iget-object v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Spatial$Builder;->roads_:Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Roads;

    .line 2045
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Spatial$Builder;->roadsBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilder;->getMessage()Lcom/google/protobuf/GeneratedMessage;

    move-result-object v0

    check-cast v0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Roads;

    goto :goto_0
.end method

.method public getRoadsBuilder()Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Roads$Builder;
    .locals 1

    .prologue
    .line 2099
    iget v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Spatial$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Spatial$Builder;->bitField0_:I

    .line 2100
    invoke-virtual {p0}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Spatial$Builder;->onChanged()V

    .line 2101
    invoke-direct {p0}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Spatial$Builder;->getRoadsFieldBuilder()Lcom/google/protobuf/SingleFieldBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilder;->getBuilder()Lcom/google/protobuf/GeneratedMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Roads$Builder;

    return-object v0
.end method

.method public getRoadsOrBuilder()Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$RoadsOrBuilder;
    .locals 1

    .prologue
    .line 2104
    iget-object v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Spatial$Builder;->roadsBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-eqz v0, :cond_0

    .line 2105
    iget-object v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Spatial$Builder;->roadsBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilder;->getMessageOrBuilder()Lcom/google/protobuf/MessageOrBuilder;

    move-result-object v0

    check-cast v0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$RoadsOrBuilder;

    .line 2107
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Spatial$Builder;->roads_:Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Roads;

    goto :goto_0
.end method

.method public hasCity()Z
    .locals 2

    .prologue
    .line 1859
    iget v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Spatial$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasCrosses()Z
    .locals 2

    .prologue
    .line 2219
    iget v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Spatial$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x20

    const/16 v1, 0x20

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasDistrict()Z
    .locals 2

    .prologue
    .line 1949
    iget v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Spatial$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasPois()Z
    .locals 2

    .prologue
    .line 2129
    iget v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Spatial$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x10

    const/16 v1, 0x10

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasProvince()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 1769
    iget v1, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Spatial$Builder;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasRoads()Z
    .locals 2

    .prologue
    .line 2039
    iget v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Spatial$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected internalGetFieldAccessorTable()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 1

    .prologue
    .line 1459
    # getter for: Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf;->internal_static_Spatial_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    invoke-static {}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf;->access$2000()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 1648
    invoke-virtual {p0}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Spatial$Builder;->hasProvince()Z

    move-result v1

    if-nez v1, :cond_1

    .line 1678
    :cond_0
    :goto_0
    return v0

    .line 1652
    :cond_1
    invoke-virtual {p0}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Spatial$Builder;->hasCity()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1656
    invoke-virtual {p0}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Spatial$Builder;->hasDistrict()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1660
    invoke-virtual {p0}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Spatial$Builder;->hasRoads()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1661
    invoke-virtual {p0}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Spatial$Builder;->getRoads()Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Roads;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Roads;->isInitialized()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1666
    :cond_2
    invoke-virtual {p0}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Spatial$Builder;->hasPois()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1667
    invoke-virtual {p0}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Spatial$Builder;->getPois()Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$POIS;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$POIS;->isInitialized()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1672
    :cond_3
    invoke-virtual {p0}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Spatial$Builder;->hasCrosses()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1673
    invoke-virtual {p0}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Spatial$Builder;->getCrosses()Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Crosses;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Crosses;->isInitialized()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1678
    :cond_4
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public mergeCity(Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$City;)Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Spatial$Builder;
    .locals 2

    .prologue
    .line 1893
    iget-object v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Spatial$Builder;->cityBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_1

    .line 1894
    iget v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Spatial$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Spatial$Builder;->city_:Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$City;

    invoke-static {}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$City;->getDefaultInstance()Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$City;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 1896
    iget-object v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Spatial$Builder;->city_:Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$City;

    invoke-static {v0}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$City;->newBuilder(Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$City;)Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$City$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$City$Builder;->mergeFrom(Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$City;)Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$City$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$City$Builder;->buildPartial()Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$City;

    move-result-object v0

    iput-object v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Spatial$Builder;->city_:Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$City;

    .line 1901
    :goto_0
    invoke-virtual {p0}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Spatial$Builder;->onChanged()V

    .line 1905
    :goto_1
    iget v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Spatial$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Spatial$Builder;->bitField0_:I

    .line 1906
    return-object p0

    .line 1899
    :cond_0
    iput-object p1, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Spatial$Builder;->city_:Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$City;

    goto :goto_0

    .line 1903
    :cond_1
    iget-object v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Spatial$Builder;->cityBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/SingleFieldBuilder;->mergeFrom(Lcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/SingleFieldBuilder;

    goto :goto_1
.end method

.method public mergeCrosses(Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Crosses;)Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Spatial$Builder;
    .locals 2

    .prologue
    .line 2253
    iget-object v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Spatial$Builder;->crossesBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_1

    .line 2254
    iget v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Spatial$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x20

    const/16 v1, 0x20

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Spatial$Builder;->crosses_:Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Crosses;

    invoke-static {}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Crosses;->getDefaultInstance()Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Crosses;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 2256
    iget-object v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Spatial$Builder;->crosses_:Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Crosses;

    invoke-static {v0}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Crosses;->newBuilder(Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Crosses;)Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Crosses$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Crosses$Builder;->mergeFrom(Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Crosses;)Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Crosses$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Crosses$Builder;->buildPartial()Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Crosses;

    move-result-object v0

    iput-object v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Spatial$Builder;->crosses_:Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Crosses;

    .line 2261
    :goto_0
    invoke-virtual {p0}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Spatial$Builder;->onChanged()V

    .line 2265
    :goto_1
    iget v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Spatial$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Spatial$Builder;->bitField0_:I

    .line 2266
    return-object p0

    .line 2259
    :cond_0
    iput-object p1, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Spatial$Builder;->crosses_:Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Crosses;

    goto :goto_0

    .line 2263
    :cond_1
    iget-object v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Spatial$Builder;->crossesBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/SingleFieldBuilder;->mergeFrom(Lcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/SingleFieldBuilder;

    goto :goto_1
.end method

.method public mergeDistrict(Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$District;)Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Spatial$Builder;
    .locals 2

    .prologue
    .line 1983
    iget-object v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Spatial$Builder;->districtBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_1

    .line 1984
    iget v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Spatial$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Spatial$Builder;->district_:Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$District;

    invoke-static {}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$District;->getDefaultInstance()Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$District;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 1986
    iget-object v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Spatial$Builder;->district_:Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$District;

    invoke-static {v0}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$District;->newBuilder(Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$District;)Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$District$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$District$Builder;->mergeFrom(Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$District;)Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$District$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$District$Builder;->buildPartial()Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$District;

    move-result-object v0

    iput-object v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Spatial$Builder;->district_:Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$District;

    .line 1991
    :goto_0
    invoke-virtual {p0}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Spatial$Builder;->onChanged()V

    .line 1995
    :goto_1
    iget v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Spatial$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Spatial$Builder;->bitField0_:I

    .line 1996
    return-object p0

    .line 1989
    :cond_0
    iput-object p1, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Spatial$Builder;->district_:Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$District;

    goto :goto_0

    .line 1993
    :cond_1
    iget-object v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Spatial$Builder;->districtBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/SingleFieldBuilder;->mergeFrom(Lcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/SingleFieldBuilder;

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
    .line 1449
    invoke-virtual {p0, p1, p2}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Spatial$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Spatial$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 1449
    invoke-virtual {p0, p1}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Spatial$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Spatial$Builder;

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
    .line 1449
    invoke-virtual {p0, p1, p2}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Spatial$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Spatial$Builder;

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
    .line 1449
    invoke-virtual {p0, p1, p2}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Spatial$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Spatial$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 1449
    invoke-virtual {p0, p1}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Spatial$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Spatial$Builder;

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
    .line 1449
    invoke-virtual {p0, p1, p2}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Spatial$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Spatial$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Spatial$Builder;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1685
    invoke-virtual {p0}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Spatial$Builder;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v0

    invoke-static {v0}, Lcom/google/protobuf/UnknownFieldSet;->newBuilder(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/UnknownFieldSet$Builder;

    move-result-object v0

    .line 1689
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v1

    .line 1690
    sparse-switch v1, :sswitch_data_0

    .line 1696
    invoke-virtual {p0, p1, v0, p2, v1}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Spatial$Builder;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/UnknownFieldSet$Builder;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1698
    invoke-virtual {v0}, Lcom/google/protobuf/UnknownFieldSet$Builder;->build()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Spatial$Builder;->setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessage$Builder;

    .line 1699
    invoke-virtual {p0}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Spatial$Builder;->onChanged()V

    .line 1700
    :goto_1
    return-object p0

    .line 1692
    :sswitch_0
    invoke-virtual {v0}, Lcom/google/protobuf/UnknownFieldSet$Builder;->build()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Spatial$Builder;->setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessage$Builder;

    .line 1693
    invoke-virtual {p0}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Spatial$Builder;->onChanged()V

    goto :goto_1

    .line 1705
    :sswitch_1
    invoke-static {}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Province;->newBuilder()Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Province$Builder;

    move-result-object v1

    .line 1706
    invoke-virtual {p0}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Spatial$Builder;->hasProvince()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1707
    invoke-virtual {p0}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Spatial$Builder;->getProvince()Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Province;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Province$Builder;->mergeFrom(Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Province;)Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Province$Builder;

    .line 1709
    :cond_1
    invoke-virtual {p1, v1, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 1710
    invoke-virtual {v1}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Province$Builder;->buildPartial()Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Province;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Spatial$Builder;->setProvince(Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Province;)Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Spatial$Builder;

    goto :goto_0

    .line 1714
    :sswitch_2
    invoke-static {}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$City;->newBuilder()Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$City$Builder;

    move-result-object v1

    .line 1715
    invoke-virtual {p0}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Spatial$Builder;->hasCity()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1716
    invoke-virtual {p0}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Spatial$Builder;->getCity()Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$City;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$City$Builder;->mergeFrom(Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$City;)Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$City$Builder;

    .line 1718
    :cond_2
    invoke-virtual {p1, v1, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 1719
    invoke-virtual {v1}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$City$Builder;->buildPartial()Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$City;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Spatial$Builder;->setCity(Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$City;)Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Spatial$Builder;

    goto :goto_0

    .line 1723
    :sswitch_3
    invoke-static {}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$District;->newBuilder()Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$District$Builder;

    move-result-object v1

    .line 1724
    invoke-virtual {p0}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Spatial$Builder;->hasDistrict()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1725
    invoke-virtual {p0}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Spatial$Builder;->getDistrict()Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$District;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$District$Builder;->mergeFrom(Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$District;)Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$District$Builder;

    .line 1727
    :cond_3
    invoke-virtual {p1, v1, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 1728
    invoke-virtual {v1}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$District$Builder;->buildPartial()Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$District;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Spatial$Builder;->setDistrict(Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$District;)Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Spatial$Builder;

    goto :goto_0

    .line 1732
    :sswitch_4
    invoke-static {}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Roads;->newBuilder()Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Roads$Builder;

    move-result-object v1

    .line 1733
    invoke-virtual {p0}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Spatial$Builder;->hasRoads()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1734
    invoke-virtual {p0}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Spatial$Builder;->getRoads()Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Roads;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Roads$Builder;->mergeFrom(Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Roads;)Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Roads$Builder;

    .line 1736
    :cond_4
    invoke-virtual {p1, v1, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 1737
    invoke-virtual {v1}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Roads$Builder;->buildPartial()Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Roads;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Spatial$Builder;->setRoads(Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Roads;)Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Spatial$Builder;

    goto/16 :goto_0

    .line 1741
    :sswitch_5
    invoke-static {}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$POIS;->newBuilder()Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$POIS$Builder;

    move-result-object v1

    .line 1742
    invoke-virtual {p0}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Spatial$Builder;->hasPois()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 1743
    invoke-virtual {p0}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Spatial$Builder;->getPois()Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$POIS;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$POIS$Builder;->mergeFrom(Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$POIS;)Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$POIS$Builder;

    .line 1745
    :cond_5
    invoke-virtual {p1, v1, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 1746
    invoke-virtual {v1}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$POIS$Builder;->buildPartial()Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$POIS;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Spatial$Builder;->setPois(Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$POIS;)Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Spatial$Builder;

    goto/16 :goto_0

    .line 1750
    :sswitch_6
    invoke-static {}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Crosses;->newBuilder()Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Crosses$Builder;

    move-result-object v1

    .line 1751
    invoke-virtual {p0}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Spatial$Builder;->hasCrosses()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 1752
    invoke-virtual {p0}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Spatial$Builder;->getCrosses()Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Crosses;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Crosses$Builder;->mergeFrom(Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Crosses;)Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Crosses$Builder;

    .line 1754
    :cond_6
    invoke-virtual {p1, v1, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 1755
    invoke-virtual {v1}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Crosses$Builder;->buildPartial()Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Crosses;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Spatial$Builder;->setCrosses(Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Crosses;)Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Spatial$Builder;

    goto/16 :goto_0

    .line 1690
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
        0x1a -> :sswitch_3
        0x22 -> :sswitch_4
        0x2a -> :sswitch_5
        0x32 -> :sswitch_6
    .end sparse-switch
.end method

.method public mergeFrom(Lcom/google/protobuf/Message;)Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Spatial$Builder;
    .locals 1

    .prologue
    .line 1615
    instance-of v0, p1, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Spatial;

    if-eqz v0, :cond_0

    .line 1616
    check-cast p1, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Spatial;

    invoke-virtual {p0, p1}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Spatial$Builder;->mergeFrom(Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Spatial;)Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Spatial$Builder;

    move-result-object p0

    .line 1619
    :goto_0
    return-object p0

    .line 1618
    :cond_0
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessage$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;

    goto :goto_0
.end method

.method public mergeFrom(Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Spatial;)Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Spatial$Builder;
    .locals 1

    .prologue
    .line 1624
    invoke-static {}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Spatial;->getDefaultInstance()Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Spatial;

    move-result-object v0

    if-ne p1, v0, :cond_0

    .line 1644
    :goto_0
    return-object p0

    .line 1625
    :cond_0
    invoke-virtual {p1}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Spatial;->hasProvince()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1626
    invoke-virtual {p1}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Spatial;->getProvince()Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Province;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Spatial$Builder;->mergeProvince(Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Province;)Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Spatial$Builder;

    .line 1628
    :cond_1
    invoke-virtual {p1}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Spatial;->hasCity()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1629
    invoke-virtual {p1}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Spatial;->getCity()Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$City;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Spatial$Builder;->mergeCity(Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$City;)Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Spatial$Builder;

    .line 1631
    :cond_2
    invoke-virtual {p1}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Spatial;->hasDistrict()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1632
    invoke-virtual {p1}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Spatial;->getDistrict()Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$District;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Spatial$Builder;->mergeDistrict(Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$District;)Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Spatial$Builder;

    .line 1634
    :cond_3
    invoke-virtual {p1}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Spatial;->hasRoads()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1635
    invoke-virtual {p1}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Spatial;->getRoads()Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Roads;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Spatial$Builder;->mergeRoads(Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Roads;)Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Spatial$Builder;

    .line 1637
    :cond_4
    invoke-virtual {p1}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Spatial;->hasPois()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1638
    invoke-virtual {p1}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Spatial;->getPois()Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$POIS;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Spatial$Builder;->mergePois(Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$POIS;)Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Spatial$Builder;

    .line 1640
    :cond_5
    invoke-virtual {p1}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Spatial;->hasCrosses()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1641
    invoke-virtual {p1}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Spatial;->getCrosses()Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Crosses;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Spatial$Builder;->mergeCrosses(Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Crosses;)Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Spatial$Builder;

    .line 1643
    :cond_6
    invoke-virtual {p1}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Spatial;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Spatial$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessage$Builder;

    goto :goto_0
.end method

.method public mergePois(Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$POIS;)Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Spatial$Builder;
    .locals 2

    .prologue
    .line 2163
    iget-object v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Spatial$Builder;->poisBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_1

    .line 2164
    iget v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Spatial$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x10

    const/16 v1, 0x10

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Spatial$Builder;->pois_:Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$POIS;

    invoke-static {}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$POIS;->getDefaultInstance()Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$POIS;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 2166
    iget-object v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Spatial$Builder;->pois_:Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$POIS;

    invoke-static {v0}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$POIS;->newBuilder(Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$POIS;)Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$POIS$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$POIS$Builder;->mergeFrom(Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$POIS;)Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$POIS$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$POIS$Builder;->buildPartial()Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$POIS;

    move-result-object v0

    iput-object v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Spatial$Builder;->pois_:Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$POIS;

    .line 2171
    :goto_0
    invoke-virtual {p0}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Spatial$Builder;->onChanged()V

    .line 2175
    :goto_1
    iget v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Spatial$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Spatial$Builder;->bitField0_:I

    .line 2176
    return-object p0

    .line 2169
    :cond_0
    iput-object p1, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Spatial$Builder;->pois_:Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$POIS;

    goto :goto_0

    .line 2173
    :cond_1
    iget-object v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Spatial$Builder;->poisBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/SingleFieldBuilder;->mergeFrom(Lcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/SingleFieldBuilder;

    goto :goto_1
.end method

.method public mergeProvince(Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Province;)Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Spatial$Builder;
    .locals 2

    .prologue
    .line 1803
    iget-object v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Spatial$Builder;->provinceBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_1

    .line 1804
    iget v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Spatial$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Spatial$Builder;->province_:Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Province;

    invoke-static {}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Province;->getDefaultInstance()Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Province;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 1806
    iget-object v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Spatial$Builder;->province_:Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Province;

    invoke-static {v0}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Province;->newBuilder(Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Province;)Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Province$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Province$Builder;->mergeFrom(Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Province;)Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Province$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Province$Builder;->buildPartial()Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Province;

    move-result-object v0

    iput-object v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Spatial$Builder;->province_:Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Province;

    .line 1811
    :goto_0
    invoke-virtual {p0}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Spatial$Builder;->onChanged()V

    .line 1815
    :goto_1
    iget v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Spatial$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Spatial$Builder;->bitField0_:I

    .line 1816
    return-object p0

    .line 1809
    :cond_0
    iput-object p1, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Spatial$Builder;->province_:Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Province;

    goto :goto_0

    .line 1813
    :cond_1
    iget-object v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Spatial$Builder;->provinceBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/SingleFieldBuilder;->mergeFrom(Lcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/SingleFieldBuilder;

    goto :goto_1
.end method

.method public mergeRoads(Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Roads;)Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Spatial$Builder;
    .locals 2

    .prologue
    .line 2073
    iget-object v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Spatial$Builder;->roadsBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_1

    .line 2074
    iget v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Spatial$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Spatial$Builder;->roads_:Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Roads;

    invoke-static {}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Roads;->getDefaultInstance()Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Roads;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 2076
    iget-object v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Spatial$Builder;->roads_:Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Roads;

    invoke-static {v0}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Roads;->newBuilder(Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Roads;)Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Roads$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Roads$Builder;->mergeFrom(Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Roads;)Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Roads$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Roads$Builder;->buildPartial()Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Roads;

    move-result-object v0

    iput-object v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Spatial$Builder;->roads_:Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Roads;

    .line 2081
    :goto_0
    invoke-virtual {p0}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Spatial$Builder;->onChanged()V

    .line 2085
    :goto_1
    iget v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Spatial$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Spatial$Builder;->bitField0_:I

    .line 2086
    return-object p0

    .line 2079
    :cond_0
    iput-object p1, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Spatial$Builder;->roads_:Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Roads;

    goto :goto_0

    .line 2083
    :cond_1
    iget-object v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Spatial$Builder;->roadsBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/SingleFieldBuilder;->mergeFrom(Lcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/SingleFieldBuilder;

    goto :goto_1
.end method

.method public setCity(Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$City$Builder;)Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Spatial$Builder;
    .locals 2

    .prologue
    .line 1883
    iget-object v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Spatial$Builder;->cityBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_0

    .line 1884
    invoke-virtual {p1}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$City$Builder;->build()Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$City;

    move-result-object v0

    iput-object v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Spatial$Builder;->city_:Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$City;

    .line 1885
    invoke-virtual {p0}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Spatial$Builder;->onChanged()V

    .line 1889
    :goto_0
    iget v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Spatial$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Spatial$Builder;->bitField0_:I

    .line 1890
    return-object p0

    .line 1887
    :cond_0
    iget-object v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Spatial$Builder;->cityBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    invoke-virtual {p1}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$City$Builder;->build()Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$City;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/protobuf/SingleFieldBuilder;->setMessage(Lcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/SingleFieldBuilder;

    goto :goto_0
.end method

.method public setCity(Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$City;)Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Spatial$Builder;
    .locals 1

    .prologue
    .line 1869
    iget-object v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Spatial$Builder;->cityBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_1

    .line 1870
    if-nez p1, :cond_0

    .line 1871
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1873
    :cond_0
    iput-object p1, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Spatial$Builder;->city_:Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$City;

    .line 1874
    invoke-virtual {p0}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Spatial$Builder;->onChanged()V

    .line 1878
    :goto_0
    iget v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Spatial$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Spatial$Builder;->bitField0_:I

    .line 1879
    return-object p0

    .line 1876
    :cond_1
    iget-object v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Spatial$Builder;->cityBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/SingleFieldBuilder;->setMessage(Lcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/SingleFieldBuilder;

    goto :goto_0
.end method

.method public setCrosses(Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Crosses$Builder;)Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Spatial$Builder;
    .locals 2

    .prologue
    .line 2243
    iget-object v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Spatial$Builder;->crossesBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_0

    .line 2244
    invoke-virtual {p1}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Crosses$Builder;->build()Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Crosses;

    move-result-object v0

    iput-object v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Spatial$Builder;->crosses_:Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Crosses;

    .line 2245
    invoke-virtual {p0}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Spatial$Builder;->onChanged()V

    .line 2249
    :goto_0
    iget v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Spatial$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Spatial$Builder;->bitField0_:I

    .line 2250
    return-object p0

    .line 2247
    :cond_0
    iget-object v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Spatial$Builder;->crossesBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    invoke-virtual {p1}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Crosses$Builder;->build()Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Crosses;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/protobuf/SingleFieldBuilder;->setMessage(Lcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/SingleFieldBuilder;

    goto :goto_0
.end method

.method public setCrosses(Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Crosses;)Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Spatial$Builder;
    .locals 1

    .prologue
    .line 2229
    iget-object v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Spatial$Builder;->crossesBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_1

    .line 2230
    if-nez p1, :cond_0

    .line 2231
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2233
    :cond_0
    iput-object p1, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Spatial$Builder;->crosses_:Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Crosses;

    .line 2234
    invoke-virtual {p0}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Spatial$Builder;->onChanged()V

    .line 2238
    :goto_0
    iget v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Spatial$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Spatial$Builder;->bitField0_:I

    .line 2239
    return-object p0

    .line 2236
    :cond_1
    iget-object v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Spatial$Builder;->crossesBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/SingleFieldBuilder;->setMessage(Lcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/SingleFieldBuilder;

    goto :goto_0
.end method

.method public setDistrict(Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$District$Builder;)Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Spatial$Builder;
    .locals 2

    .prologue
    .line 1973
    iget-object v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Spatial$Builder;->districtBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_0

    .line 1974
    invoke-virtual {p1}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$District$Builder;->build()Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$District;

    move-result-object v0

    iput-object v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Spatial$Builder;->district_:Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$District;

    .line 1975
    invoke-virtual {p0}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Spatial$Builder;->onChanged()V

    .line 1979
    :goto_0
    iget v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Spatial$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Spatial$Builder;->bitField0_:I

    .line 1980
    return-object p0

    .line 1977
    :cond_0
    iget-object v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Spatial$Builder;->districtBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    invoke-virtual {p1}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$District$Builder;->build()Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$District;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/protobuf/SingleFieldBuilder;->setMessage(Lcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/SingleFieldBuilder;

    goto :goto_0
.end method

.method public setDistrict(Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$District;)Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Spatial$Builder;
    .locals 1

    .prologue
    .line 1959
    iget-object v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Spatial$Builder;->districtBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_1

    .line 1960
    if-nez p1, :cond_0

    .line 1961
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1963
    :cond_0
    iput-object p1, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Spatial$Builder;->district_:Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$District;

    .line 1964
    invoke-virtual {p0}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Spatial$Builder;->onChanged()V

    .line 1968
    :goto_0
    iget v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Spatial$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Spatial$Builder;->bitField0_:I

    .line 1969
    return-object p0

    .line 1966
    :cond_1
    iget-object v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Spatial$Builder;->districtBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/SingleFieldBuilder;->setMessage(Lcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/SingleFieldBuilder;

    goto :goto_0
.end method

.method public setPois(Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$POIS$Builder;)Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Spatial$Builder;
    .locals 2

    .prologue
    .line 2153
    iget-object v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Spatial$Builder;->poisBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_0

    .line 2154
    invoke-virtual {p1}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$POIS$Builder;->build()Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$POIS;

    move-result-object v0

    iput-object v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Spatial$Builder;->pois_:Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$POIS;

    .line 2155
    invoke-virtual {p0}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Spatial$Builder;->onChanged()V

    .line 2159
    :goto_0
    iget v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Spatial$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Spatial$Builder;->bitField0_:I

    .line 2160
    return-object p0

    .line 2157
    :cond_0
    iget-object v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Spatial$Builder;->poisBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    invoke-virtual {p1}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$POIS$Builder;->build()Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$POIS;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/protobuf/SingleFieldBuilder;->setMessage(Lcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/SingleFieldBuilder;

    goto :goto_0
.end method

.method public setPois(Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$POIS;)Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Spatial$Builder;
    .locals 1

    .prologue
    .line 2139
    iget-object v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Spatial$Builder;->poisBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_1

    .line 2140
    if-nez p1, :cond_0

    .line 2141
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2143
    :cond_0
    iput-object p1, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Spatial$Builder;->pois_:Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$POIS;

    .line 2144
    invoke-virtual {p0}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Spatial$Builder;->onChanged()V

    .line 2148
    :goto_0
    iget v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Spatial$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Spatial$Builder;->bitField0_:I

    .line 2149
    return-object p0

    .line 2146
    :cond_1
    iget-object v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Spatial$Builder;->poisBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/SingleFieldBuilder;->setMessage(Lcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/SingleFieldBuilder;

    goto :goto_0
.end method

.method public setProvince(Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Province$Builder;)Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Spatial$Builder;
    .locals 2

    .prologue
    .line 1793
    iget-object v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Spatial$Builder;->provinceBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_0

    .line 1794
    invoke-virtual {p1}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Province$Builder;->build()Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Province;

    move-result-object v0

    iput-object v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Spatial$Builder;->province_:Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Province;

    .line 1795
    invoke-virtual {p0}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Spatial$Builder;->onChanged()V

    .line 1799
    :goto_0
    iget v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Spatial$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Spatial$Builder;->bitField0_:I

    .line 1800
    return-object p0

    .line 1797
    :cond_0
    iget-object v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Spatial$Builder;->provinceBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    invoke-virtual {p1}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Province$Builder;->build()Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Province;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/protobuf/SingleFieldBuilder;->setMessage(Lcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/SingleFieldBuilder;

    goto :goto_0
.end method

.method public setProvince(Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Province;)Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Spatial$Builder;
    .locals 1

    .prologue
    .line 1779
    iget-object v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Spatial$Builder;->provinceBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_1

    .line 1780
    if-nez p1, :cond_0

    .line 1781
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1783
    :cond_0
    iput-object p1, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Spatial$Builder;->province_:Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Province;

    .line 1784
    invoke-virtual {p0}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Spatial$Builder;->onChanged()V

    .line 1788
    :goto_0
    iget v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Spatial$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Spatial$Builder;->bitField0_:I

    .line 1789
    return-object p0

    .line 1786
    :cond_1
    iget-object v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Spatial$Builder;->provinceBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/SingleFieldBuilder;->setMessage(Lcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/SingleFieldBuilder;

    goto :goto_0
.end method

.method public setRoads(Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Roads$Builder;)Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Spatial$Builder;
    .locals 2

    .prologue
    .line 2063
    iget-object v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Spatial$Builder;->roadsBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_0

    .line 2064
    invoke-virtual {p1}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Roads$Builder;->build()Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Roads;

    move-result-object v0

    iput-object v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Spatial$Builder;->roads_:Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Roads;

    .line 2065
    invoke-virtual {p0}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Spatial$Builder;->onChanged()V

    .line 2069
    :goto_0
    iget v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Spatial$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Spatial$Builder;->bitField0_:I

    .line 2070
    return-object p0

    .line 2067
    :cond_0
    iget-object v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Spatial$Builder;->roadsBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    invoke-virtual {p1}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Roads$Builder;->build()Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Roads;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/protobuf/SingleFieldBuilder;->setMessage(Lcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/SingleFieldBuilder;

    goto :goto_0
.end method

.method public setRoads(Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Roads;)Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Spatial$Builder;
    .locals 1

    .prologue
    .line 2049
    iget-object v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Spatial$Builder;->roadsBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_1

    .line 2050
    if-nez p1, :cond_0

    .line 2051
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2053
    :cond_0
    iput-object p1, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Spatial$Builder;->roads_:Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Roads;

    .line 2054
    invoke-virtual {p0}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Spatial$Builder;->onChanged()V

    .line 2058
    :goto_0
    iget v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Spatial$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Spatial$Builder;->bitField0_:I

    .line 2059
    return-object p0

    .line 2056
    :cond_1
    iget-object v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Spatial$Builder;->roadsBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/SingleFieldBuilder;->setMessage(Lcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/SingleFieldBuilder;

    goto :goto_0
.end method
