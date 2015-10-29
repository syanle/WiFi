.class public final Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Spatial;
.super Lcom/google/protobuf/GeneratedMessage;
.source "ReverseGeocodingProtoBuf.java"

# interfaces
.implements Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$SpatialOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Spatial"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Spatial$Builder;
    }
.end annotation


# static fields
.field public static final CITY_FIELD_NUMBER:I = 0x2

.field public static final CROSSES_FIELD_NUMBER:I = 0x6

.field public static final DISTRICT_FIELD_NUMBER:I = 0x3

.field public static final POIS_FIELD_NUMBER:I = 0x5

.field public static final PROVINCE_FIELD_NUMBER:I = 0x1

.field public static final ROADS_FIELD_NUMBER:I = 0x4

.field private static final defaultInstance:Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Spatial;

.field private static final serialVersionUID:J


# instance fields
.field private bitField0_:I

.field private city_:Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$City;

.field private crosses_:Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Crosses;

.field private district_:Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$District;

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I

.field private pois_:Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$POIS;

.field private province_:Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Province;

.field private roads_:Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Roads;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 2308
    new-instance v0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Spatial;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Spatial;-><init>(Z)V

    sput-object v0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Spatial;->defaultInstance:Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Spatial;

    .line 2309
    sget-object v0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Spatial;->defaultInstance:Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Spatial;

    invoke-direct {v0}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Spatial;->initFields()V

    .line 2310
    return-void
.end method

.method private constructor <init>(Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Spatial$Builder;)V
    .locals 1

    .prologue
    const/4 v0, -0x1

    .line 1154
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessage;-><init>(Lcom/google/protobuf/GeneratedMessage$Builder;)V

    .line 1264
    iput-byte v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Spatial;->memoizedIsInitialized:B

    .line 1327
    iput v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Spatial;->memoizedSerializedSize:I

    .line 1155
    return-void
.end method

.method synthetic constructor <init>(Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Spatial$Builder;Lcom/mapabc/mapapi/core/z;)V
    .locals 0

    .prologue
    .line 1149
    invoke-direct {p0, p1}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Spatial;-><init>(Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Spatial$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 1

    .prologue
    const/4 v0, -0x1

    .line 1156
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage;-><init>()V

    .line 1264
    iput-byte v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Spatial;->memoizedIsInitialized:B

    .line 1327
    iput v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Spatial;->memoizedSerializedSize:I

    .line 1156
    return-void
.end method

.method static synthetic access$2400()Z
    .locals 1

    .prologue
    .line 1149
    sget-boolean v0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Spatial;->alwaysUseFieldBuilders:Z

    return v0
.end method

.method static synthetic access$2602(Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Spatial;Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Province;)Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Province;
    .locals 0

    .prologue
    .line 1149
    iput-object p1, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Spatial;->province_:Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Province;

    return-object p1
.end method

.method static synthetic access$2702(Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Spatial;Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$City;)Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$City;
    .locals 0

    .prologue
    .line 1149
    iput-object p1, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Spatial;->city_:Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$City;

    return-object p1
.end method

.method static synthetic access$2802(Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Spatial;Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$District;)Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$District;
    .locals 0

    .prologue
    .line 1149
    iput-object p1, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Spatial;->district_:Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$District;

    return-object p1
.end method

.method static synthetic access$2902(Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Spatial;Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Roads;)Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Roads;
    .locals 0

    .prologue
    .line 1149
    iput-object p1, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Spatial;->roads_:Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Roads;

    return-object p1
.end method

.method static synthetic access$3002(Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Spatial;Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$POIS;)Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$POIS;
    .locals 0

    .prologue
    .line 1149
    iput-object p1, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Spatial;->pois_:Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$POIS;

    return-object p1
.end method

.method static synthetic access$3102(Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Spatial;Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Crosses;)Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Crosses;
    .locals 0

    .prologue
    .line 1149
    iput-object p1, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Spatial;->crosses_:Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Crosses;

    return-object p1
.end method

.method static synthetic access$3202(Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Spatial;I)I
    .locals 0

    .prologue
    .line 1149
    iput p1, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Spatial;->bitField0_:I

    return p1
.end method

.method public static getDefaultInstance()Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Spatial;
    .locals 1

    .prologue
    .line 1160
    sget-object v0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Spatial;->defaultInstance:Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Spatial;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 1169
    # getter for: Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf;->internal_static_Spatial_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;
    invoke-static {}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf;->access$1900()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method private initFields()V
    .locals 1

    .prologue
    .line 1257
    invoke-static {}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Province;->getDefaultInstance()Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Province;

    move-result-object v0

    iput-object v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Spatial;->province_:Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Province;

    .line 1258
    invoke-static {}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$City;->getDefaultInstance()Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$City;

    move-result-object v0

    iput-object v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Spatial;->city_:Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$City;

    .line 1259
    invoke-static {}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$District;->getDefaultInstance()Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$District;

    move-result-object v0

    iput-object v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Spatial;->district_:Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$District;

    .line 1260
    invoke-static {}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Roads;->getDefaultInstance()Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Roads;

    move-result-object v0

    iput-object v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Spatial;->roads_:Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Roads;

    .line 1261
    invoke-static {}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$POIS;->getDefaultInstance()Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$POIS;

    move-result-object v0

    iput-object v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Spatial;->pois_:Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$POIS;

    .line 1262
    invoke-static {}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Crosses;->getDefaultInstance()Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Crosses;

    move-result-object v0

    iput-object v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Spatial;->crosses_:Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Crosses;

    .line 1263
    return-void
.end method

.method public static newBuilder()Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Spatial$Builder;
    .locals 1

    .prologue
    .line 1436
    # invokes: Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Spatial$Builder;->create()Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Spatial$Builder;
    invoke-static {}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Spatial$Builder;->access$2200()Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Spatial$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Spatial;)Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Spatial$Builder;
    .locals 1

    .prologue
    .line 1439
    invoke-static {}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Spatial;->newBuilder()Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Spatial$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Spatial$Builder;->mergeFrom(Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Spatial;)Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Spatial$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Spatial;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1405
    invoke-static {}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Spatial;->newBuilder()Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Spatial$Builder;

    move-result-object v0

    .line 1406
    invoke-virtual {v0, p0}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Spatial$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1407
    # invokes: Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Spatial$Builder;->buildParsed()Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Spatial;
    invoke-static {v0}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Spatial$Builder;->access$2100(Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Spatial$Builder;)Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Spatial;

    move-result-object v0

    .line 1409
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Spatial;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1416
    invoke-static {}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Spatial;->newBuilder()Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Spatial$Builder;

    move-result-object v0

    .line 1417
    invoke-virtual {v0, p0, p1}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Spatial$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1418
    # invokes: Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Spatial$Builder;->buildParsed()Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Spatial;
    invoke-static {v0}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Spatial$Builder;->access$2100(Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Spatial$Builder;)Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Spatial;

    move-result-object v0

    .line 1420
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Spatial;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 1372
    invoke-static {}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Spatial;->newBuilder()Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Spatial$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Spatial$Builder;->mergeFrom(Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Spatial$Builder;

    # invokes: Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Spatial$Builder;->buildParsed()Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Spatial;
    invoke-static {v0}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Spatial$Builder;->access$2100(Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Spatial$Builder;)Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Spatial;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Spatial;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 1378
    invoke-static {}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Spatial;->newBuilder()Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Spatial$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Spatial$Builder;->mergeFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Spatial$Builder;

    # invokes: Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Spatial$Builder;->buildParsed()Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Spatial;
    invoke-static {v0}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Spatial$Builder;->access$2100(Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Spatial$Builder;)Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Spatial;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Spatial;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1426
    invoke-static {}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Spatial;->newBuilder()Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Spatial$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Spatial$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Spatial$Builder;

    # invokes: Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Spatial$Builder;->buildParsed()Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Spatial;
    invoke-static {v0}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Spatial$Builder;->access$2100(Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Spatial$Builder;)Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Spatial;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Spatial;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1432
    invoke-static {}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Spatial;->newBuilder()Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Spatial$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Spatial$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Spatial$Builder;

    move-result-object v0

    # invokes: Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Spatial$Builder;->buildParsed()Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Spatial;
    invoke-static {v0}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Spatial$Builder;->access$2100(Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Spatial$Builder;)Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Spatial;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Spatial;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1394
    invoke-static {}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Spatial;->newBuilder()Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Spatial$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Spatial$Builder;->mergeFrom(Ljava/io/InputStream;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Spatial$Builder;

    # invokes: Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Spatial$Builder;->buildParsed()Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Spatial;
    invoke-static {v0}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Spatial$Builder;->access$2100(Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Spatial$Builder;)Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Spatial;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Spatial;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1400
    invoke-static {}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Spatial;->newBuilder()Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Spatial$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Spatial$Builder;->mergeFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Spatial$Builder;

    # invokes: Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Spatial$Builder;->buildParsed()Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Spatial;
    invoke-static {v0}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Spatial$Builder;->access$2100(Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Spatial$Builder;)Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Spatial;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Spatial;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 1383
    invoke-static {}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Spatial;->newBuilder()Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Spatial$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Spatial$Builder;->mergeFrom([B)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Spatial$Builder;

    # invokes: Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Spatial$Builder;->buildParsed()Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Spatial;
    invoke-static {v0}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Spatial$Builder;->access$2100(Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Spatial$Builder;)Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Spatial;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Spatial;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 1389
    invoke-static {}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Spatial;->newBuilder()Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Spatial$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Spatial$Builder;->mergeFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Spatial$Builder;

    # invokes: Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Spatial$Builder;->buildParsed()Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Spatial;
    invoke-static {v0}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Spatial$Builder;->access$2100(Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Spatial$Builder;)Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Spatial;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getCity()Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$City;
    .locals 1

    .prologue
    .line 1198
    iget-object v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Spatial;->city_:Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$City;

    return-object v0
.end method

.method public getCityOrBuilder()Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$CityOrBuilder;
    .locals 1

    .prologue
    .line 1201
    iget-object v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Spatial;->city_:Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$City;

    return-object v0
.end method

.method public getCrosses()Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Crosses;
    .locals 1

    .prologue
    .line 1250
    iget-object v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Spatial;->crosses_:Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Crosses;

    return-object v0
.end method

.method public getCrossesOrBuilder()Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$CrossesOrBuilder;
    .locals 1

    .prologue
    .line 1253
    iget-object v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Spatial;->crosses_:Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Crosses;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 1149
    invoke-virtual {p0}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Spatial;->getDefaultInstanceForType()Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Spatial;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 1149
    invoke-virtual {p0}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Spatial;->getDefaultInstanceForType()Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Spatial;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Spatial;
    .locals 1

    .prologue
    .line 1164
    sget-object v0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Spatial;->defaultInstance:Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Spatial;

    return-object v0
.end method

.method public getDistrict()Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$District;
    .locals 1

    .prologue
    .line 1211
    iget-object v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Spatial;->district_:Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$District;

    return-object v0
.end method

.method public getDistrictOrBuilder()Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$DistrictOrBuilder;
    .locals 1

    .prologue
    .line 1214
    iget-object v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Spatial;->district_:Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$District;

    return-object v0
.end method

.method public getPois()Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$POIS;
    .locals 1

    .prologue
    .line 1237
    iget-object v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Spatial;->pois_:Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$POIS;

    return-object v0
.end method

.method public getPoisOrBuilder()Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$POISOrBuilder;
    .locals 1

    .prologue
    .line 1240
    iget-object v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Spatial;->pois_:Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$POIS;

    return-object v0
.end method

.method public getProvince()Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Province;
    .locals 1

    .prologue
    .line 1185
    iget-object v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Spatial;->province_:Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Province;

    return-object v0
.end method

.method public getProvinceOrBuilder()Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$ProvinceOrBuilder;
    .locals 1

    .prologue
    .line 1188
    iget-object v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Spatial;->province_:Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Province;

    return-object v0
.end method

.method public getRoads()Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Roads;
    .locals 1

    .prologue
    .line 1224
    iget-object v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Spatial;->roads_:Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Roads;

    return-object v0
.end method

.method public getRoadsOrBuilder()Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$RoadsOrBuilder;
    .locals 1

    .prologue
    .line 1227
    iget-object v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Spatial;->roads_:Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Roads;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 5

    .prologue
    const/4 v4, 0x4

    const/4 v3, 0x2

    const/4 v2, 0x1

    .line 1329
    iget v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Spatial;->memoizedSerializedSize:I

    .line 1330
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 1359
    :goto_0
    return v0

    .line 1332
    :cond_0
    const/4 v0, 0x0

    .line 1333
    iget v1, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Spatial;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v2, :cond_1

    .line 1334
    iget-object v1, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Spatial;->province_:Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Province;

    invoke-static {v2, v1}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1337
    :cond_1
    iget v1, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Spatial;->bitField0_:I

    and-int/lit8 v1, v1, 0x2

    if-ne v1, v3, :cond_2

    .line 1338
    iget-object v1, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Spatial;->city_:Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$City;

    invoke-static {v3, v1}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1341
    :cond_2
    iget v1, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Spatial;->bitField0_:I

    and-int/lit8 v1, v1, 0x4

    if-ne v1, v4, :cond_3

    .line 1342
    const/4 v1, 0x3

    iget-object v2, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Spatial;->district_:Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$District;

    invoke-static {v1, v2}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1345
    :cond_3
    iget v1, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Spatial;->bitField0_:I

    and-int/lit8 v1, v1, 0x8

    const/16 v2, 0x8

    if-ne v1, v2, :cond_4

    .line 1346
    iget-object v1, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Spatial;->roads_:Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Roads;

    invoke-static {v4, v1}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1349
    :cond_4
    iget v1, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Spatial;->bitField0_:I

    and-int/lit8 v1, v1, 0x10

    const/16 v2, 0x10

    if-ne v1, v2, :cond_5

    .line 1350
    const/4 v1, 0x5

    iget-object v2, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Spatial;->pois_:Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$POIS;

    invoke-static {v1, v2}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1353
    :cond_5
    iget v1, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Spatial;->bitField0_:I

    and-int/lit8 v1, v1, 0x20

    const/16 v2, 0x20

    if-ne v1, v2, :cond_6

    .line 1354
    const/4 v1, 0x6

    iget-object v2, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Spatial;->crosses_:Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Crosses;

    invoke-static {v1, v2}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1357
    :cond_6
    invoke-virtual {p0}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Spatial;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protobuf/UnknownFieldSet;->getSerializedSize()I

    move-result v1

    add-int/2addr v0, v1

    .line 1358
    iput v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Spatial;->memoizedSerializedSize:I

    goto :goto_0
.end method

.method public hasCity()Z
    .locals 2

    .prologue
    .line 1195
    iget v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Spatial;->bitField0_:I

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
    .line 1247
    iget v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Spatial;->bitField0_:I

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
    .line 1208
    iget v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Spatial;->bitField0_:I

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
    .line 1234
    iget v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Spatial;->bitField0_:I

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

    .line 1182
    iget v1, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Spatial;->bitField0_:I

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
    .line 1221
    iget v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Spatial;->bitField0_:I

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
    .line 1174
    # getter for: Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf;->internal_static_Spatial_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    invoke-static {}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf;->access$2000()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1266
    iget-byte v2, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Spatial;->memoizedIsInitialized:B

    .line 1267
    const/4 v3, -0x1

    if-eq v2, v3, :cond_1

    if-ne v2, v0, :cond_0

    :goto_0
    move v1, v0

    .line 1300
    :goto_1
    return v1

    :cond_0
    move v0, v1

    .line 1267
    goto :goto_0

    .line 1269
    :cond_1
    invoke-virtual {p0}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Spatial;->hasProvince()Z

    move-result v2

    if-nez v2, :cond_2

    .line 1270
    iput-byte v1, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Spatial;->memoizedIsInitialized:B

    goto :goto_1

    .line 1273
    :cond_2
    invoke-virtual {p0}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Spatial;->hasCity()Z

    move-result v2

    if-nez v2, :cond_3

    .line 1274
    iput-byte v1, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Spatial;->memoizedIsInitialized:B

    goto :goto_1

    .line 1277
    :cond_3
    invoke-virtual {p0}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Spatial;->hasDistrict()Z

    move-result v2

    if-nez v2, :cond_4

    .line 1278
    iput-byte v1, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Spatial;->memoizedIsInitialized:B

    goto :goto_1

    .line 1281
    :cond_4
    invoke-virtual {p0}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Spatial;->hasRoads()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 1282
    invoke-virtual {p0}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Spatial;->getRoads()Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Roads;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Roads;->isInitialized()Z

    move-result v2

    if-nez v2, :cond_5

    .line 1283
    iput-byte v1, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Spatial;->memoizedIsInitialized:B

    goto :goto_1

    .line 1287
    :cond_5
    invoke-virtual {p0}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Spatial;->hasPois()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 1288
    invoke-virtual {p0}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Spatial;->getPois()Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$POIS;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$POIS;->isInitialized()Z

    move-result v2

    if-nez v2, :cond_6

    .line 1289
    iput-byte v1, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Spatial;->memoizedIsInitialized:B

    goto :goto_1

    .line 1293
    :cond_6
    invoke-virtual {p0}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Spatial;->hasCrosses()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 1294
    invoke-virtual {p0}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Spatial;->getCrosses()Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Crosses;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Crosses;->isInitialized()Z

    move-result v2

    if-nez v2, :cond_7

    .line 1295
    iput-byte v1, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Spatial;->memoizedIsInitialized:B

    goto :goto_1

    .line 1299
    :cond_7
    iput-byte v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Spatial;->memoizedIsInitialized:B

    move v1, v0

    .line 1300
    goto :goto_1
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 1149
    invoke-virtual {p0}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Spatial;->newBuilderForType()Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Spatial$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic newBuilderForType(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 1149
    invoke-virtual {p0, p1}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Spatial;->newBuilderForType(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Spatial$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 1149
    invoke-virtual {p0}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Spatial;->newBuilderForType()Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Spatial$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Spatial$Builder;
    .locals 1

    .prologue
    .line 1437
    invoke-static {}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Spatial;->newBuilder()Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Spatial$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected newBuilderForType(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Spatial$Builder;
    .locals 2

    .prologue
    .line 1446
    new-instance v0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Spatial$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Spatial$Builder;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;Lcom/mapabc/mapapi/core/z;)V

    .line 1447
    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 1149
    invoke-virtual {p0}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Spatial;->toBuilder()Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Spatial$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 1149
    invoke-virtual {p0}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Spatial;->toBuilder()Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Spatial$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Spatial$Builder;
    .locals 1

    .prologue
    .line 1441
    invoke-static {p0}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Spatial;->newBuilder(Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Spatial;)Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Spatial$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected writeReplace()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/ObjectStreamException;
        }
    .end annotation

    .prologue
    .line 1366
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessage;->writeReplace()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public writeTo(Lcom/google/protobuf/CodedOutputStream;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x4

    const/4 v2, 0x2

    const/4 v1, 0x1

    .line 1305
    invoke-virtual {p0}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Spatial;->getSerializedSize()I

    .line 1306
    iget v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Spatial;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_0

    .line 1307
    iget-object v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Spatial;->province_:Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Province;

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 1309
    :cond_0
    iget v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Spatial;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-ne v0, v2, :cond_1

    .line 1310
    iget-object v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Spatial;->city_:Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$City;

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 1312
    :cond_1
    iget v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Spatial;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-ne v0, v3, :cond_2

    .line 1313
    const/4 v0, 0x3

    iget-object v1, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Spatial;->district_:Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$District;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 1315
    :cond_2
    iget v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Spatial;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    const/16 v1, 0x8

    if-ne v0, v1, :cond_3

    .line 1316
    iget-object v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Spatial;->roads_:Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Roads;

    invoke-virtual {p1, v3, v0}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 1318
    :cond_3
    iget v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Spatial;->bitField0_:I

    and-int/lit8 v0, v0, 0x10

    const/16 v1, 0x10

    if-ne v0, v1, :cond_4

    .line 1319
    const/4 v0, 0x5

    iget-object v1, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Spatial;->pois_:Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$POIS;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 1321
    :cond_4
    iget v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Spatial;->bitField0_:I

    and-int/lit8 v0, v0, 0x20

    const/16 v1, 0x20

    if-ne v0, v1, :cond_5

    .line 1322
    const/4 v0, 0x6

    iget-object v1, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Spatial;->crosses_:Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Crosses;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 1324
    :cond_5
    invoke-virtual {p0}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Spatial;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/UnknownFieldSet;->writeTo(Lcom/google/protobuf/CodedOutputStream;)V

    .line 1325
    return-void
.end method
