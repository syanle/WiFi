.class public final Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$Geocoding;
.super Lcom/google/protobuf/GeneratedMessage;
.source "GeocodingProtoBuf.java"

# interfaces
.implements Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeocodingOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Geocoding"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$Geocoding$Builder;
    }
.end annotation


# static fields
.field public static final POI_FIELD_NUMBER:I = 0x1

.field private static final defaultInstance:Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$Geocoding;

.field private static final serialVersionUID:J


# instance fields
.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I

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
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 1933
    new-instance v0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$Geocoding;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$Geocoding;-><init>(Z)V

    sput-object v0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$Geocoding;->defaultInstance:Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$Geocoding;

    .line 1934
    sget-object v0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$Geocoding;->defaultInstance:Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$Geocoding;

    invoke-direct {v0}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$Geocoding;->initFields()V

    .line 1935
    return-void
.end method

.method private constructor <init>(Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$Geocoding$Builder;)V
    .locals 1

    .prologue
    const/4 v0, -0x1

    .line 1395
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessage;-><init>(Lcom/google/protobuf/GeneratedMessage$Builder;)V

    .line 1442
    iput-byte v0, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$Geocoding;->memoizedIsInitialized:B

    .line 1466
    iput v0, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$Geocoding;->memoizedSerializedSize:I

    .line 1396
    return-void
.end method

.method synthetic constructor <init>(Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$Geocoding$Builder;Lcom/mapabc/mapapi/geocoder/c;)V
    .locals 0

    .prologue
    .line 1390
    invoke-direct {p0, p1}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$Geocoding;-><init>(Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$Geocoding$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 1

    .prologue
    const/4 v0, -0x1

    .line 1397
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage;-><init>()V

    .line 1442
    iput-byte v0, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$Geocoding;->memoizedIsInitialized:B

    .line 1466
    iput v0, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$Geocoding;->memoizedSerializedSize:I

    .line 1397
    return-void
.end method

.method static synthetic access$2800()Z
    .locals 1

    .prologue
    .line 1390
    sget-boolean v0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$Geocoding;->alwaysUseFieldBuilders:Z

    return v0
.end method

.method static synthetic access$3000(Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$Geocoding;)Ljava/util/List;
    .locals 1

    .prologue
    .line 1390
    iget-object v0, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$Geocoding;->poi_:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$3002(Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$Geocoding;Ljava/util/List;)Ljava/util/List;
    .locals 0

    .prologue
    .line 1390
    iput-object p1, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$Geocoding;->poi_:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$3100()Z
    .locals 1

    .prologue
    .line 1390
    sget-boolean v0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$Geocoding;->alwaysUseFieldBuilders:Z

    return v0
.end method

.method public static getDefaultInstance()Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$Geocoding;
    .locals 1

    .prologue
    .line 1401
    sget-object v0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$Geocoding;->defaultInstance:Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$Geocoding;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 1410
    # getter for: Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf;->internal_static_Geocoding_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;
    invoke-static {}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf;->access$2300()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method private initFields()V
    .locals 1

    .prologue
    .line 1440
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$Geocoding;->poi_:Ljava/util/List;

    .line 1441
    return-void
.end method

.method public static newBuilder()Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$Geocoding$Builder;
    .locals 1

    .prologue
    .line 1555
    # invokes: Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$Geocoding$Builder;->create()Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$Geocoding$Builder;
    invoke-static {}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$Geocoding$Builder;->access$2600()Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$Geocoding$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$Geocoding;)Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$Geocoding$Builder;
    .locals 1

    .prologue
    .line 1558
    invoke-static {}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$Geocoding;->newBuilder()Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$Geocoding$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$Geocoding$Builder;->mergeFrom(Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$Geocoding;)Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$Geocoding$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$Geocoding;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1524
    invoke-static {}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$Geocoding;->newBuilder()Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$Geocoding$Builder;

    move-result-object v0

    .line 1525
    invoke-virtual {v0, p0}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$Geocoding$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1526
    # invokes: Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$Geocoding$Builder;->buildParsed()Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$Geocoding;
    invoke-static {v0}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$Geocoding$Builder;->access$2500(Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$Geocoding$Builder;)Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$Geocoding;

    move-result-object v0

    .line 1528
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$Geocoding;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1535
    invoke-static {}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$Geocoding;->newBuilder()Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$Geocoding$Builder;

    move-result-object v0

    .line 1536
    invoke-virtual {v0, p0, p1}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$Geocoding$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1537
    # invokes: Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$Geocoding$Builder;->buildParsed()Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$Geocoding;
    invoke-static {v0}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$Geocoding$Builder;->access$2500(Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$Geocoding$Builder;)Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$Geocoding;

    move-result-object v0

    .line 1539
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$Geocoding;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 1491
    invoke-static {}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$Geocoding;->newBuilder()Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$Geocoding$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$Geocoding$Builder;->mergeFrom(Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$Geocoding$Builder;

    # invokes: Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$Geocoding$Builder;->buildParsed()Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$Geocoding;
    invoke-static {v0}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$Geocoding$Builder;->access$2500(Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$Geocoding$Builder;)Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$Geocoding;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$Geocoding;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 1497
    invoke-static {}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$Geocoding;->newBuilder()Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$Geocoding$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$Geocoding$Builder;->mergeFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$Geocoding$Builder;

    # invokes: Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$Geocoding$Builder;->buildParsed()Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$Geocoding;
    invoke-static {v0}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$Geocoding$Builder;->access$2500(Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$Geocoding$Builder;)Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$Geocoding;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$Geocoding;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1545
    invoke-static {}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$Geocoding;->newBuilder()Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$Geocoding$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$Geocoding$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$Geocoding$Builder;

    # invokes: Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$Geocoding$Builder;->buildParsed()Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$Geocoding;
    invoke-static {v0}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$Geocoding$Builder;->access$2500(Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$Geocoding$Builder;)Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$Geocoding;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$Geocoding;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1551
    invoke-static {}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$Geocoding;->newBuilder()Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$Geocoding$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$Geocoding$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$Geocoding$Builder;

    move-result-object v0

    # invokes: Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$Geocoding$Builder;->buildParsed()Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$Geocoding;
    invoke-static {v0}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$Geocoding$Builder;->access$2500(Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$Geocoding$Builder;)Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$Geocoding;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$Geocoding;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1513
    invoke-static {}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$Geocoding;->newBuilder()Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$Geocoding$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$Geocoding$Builder;->mergeFrom(Ljava/io/InputStream;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$Geocoding$Builder;

    # invokes: Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$Geocoding$Builder;->buildParsed()Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$Geocoding;
    invoke-static {v0}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$Geocoding$Builder;->access$2500(Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$Geocoding$Builder;)Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$Geocoding;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$Geocoding;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1519
    invoke-static {}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$Geocoding;->newBuilder()Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$Geocoding$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$Geocoding$Builder;->mergeFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$Geocoding$Builder;

    # invokes: Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$Geocoding$Builder;->buildParsed()Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$Geocoding;
    invoke-static {v0}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$Geocoding$Builder;->access$2500(Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$Geocoding$Builder;)Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$Geocoding;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$Geocoding;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 1502
    invoke-static {}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$Geocoding;->newBuilder()Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$Geocoding$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$Geocoding$Builder;->mergeFrom([B)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$Geocoding$Builder;

    # invokes: Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$Geocoding$Builder;->buildParsed()Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$Geocoding;
    invoke-static {v0}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$Geocoding$Builder;->access$2500(Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$Geocoding$Builder;)Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$Geocoding;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$Geocoding;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 1508
    invoke-static {}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$Geocoding;->newBuilder()Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$Geocoding$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$Geocoding$Builder;->mergeFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$Geocoding$Builder;

    # invokes: Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$Geocoding$Builder;->buildParsed()Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$Geocoding;
    invoke-static {v0}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$Geocoding$Builder;->access$2500(Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$Geocoding$Builder;)Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$Geocoding;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 1390
    invoke-virtual {p0}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$Geocoding;->getDefaultInstanceForType()Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$Geocoding;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 1390
    invoke-virtual {p0}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$Geocoding;->getDefaultInstanceForType()Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$Geocoding;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$Geocoding;
    .locals 1

    .prologue
    .line 1405
    sget-object v0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$Geocoding;->defaultInstance:Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$Geocoding;

    return-object v0
.end method

.method public getPoi(I)Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI;
    .locals 1

    .prologue
    .line 1432
    iget-object v0, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$Geocoding;->poi_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI;

    return-object v0
.end method

.method public getPoiCount()I
    .locals 1

    .prologue
    .line 1429
    iget-object v0, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$Geocoding;->poi_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
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
    .line 1422
    iget-object v0, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$Geocoding;->poi_:Ljava/util/List;

    return-object v0
.end method

.method public getPoiOrBuilder(I)Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOIOrBuilder;
    .locals 1

    .prologue
    .line 1436
    iget-object v0, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$Geocoding;->poi_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOIOrBuilder;

    return-object v0
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
    .line 1426
    iget-object v0, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$Geocoding;->poi_:Ljava/util/List;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 1468
    iget v1, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$Geocoding;->memoizedSerializedSize:I

    .line 1469
    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    move v0, v1

    .line 1478
    :goto_0
    return v0

    :cond_0
    move v1, v0

    move v2, v0

    .line 1472
    :goto_1
    iget-object v0, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$Geocoding;->poi_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    .line 1473
    const/4 v3, 0x1

    iget-object v0, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$Geocoding;->poi_:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/MessageLite;

    invoke-static {v3, v0}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v0

    add-int/2addr v2, v0

    .line 1472
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    .line 1476
    :cond_1
    invoke-virtual {p0}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$Geocoding;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/UnknownFieldSet;->getSerializedSize()I

    move-result v0

    add-int/2addr v0, v2

    .line 1477
    iput v0, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$Geocoding;->memoizedSerializedSize:I

    goto :goto_0
.end method

.method protected internalGetFieldAccessorTable()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 1

    .prologue
    .line 1415
    # getter for: Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf;->internal_static_Geocoding_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    invoke-static {}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf;->access$2400()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1444
    iget-byte v2, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$Geocoding;->memoizedIsInitialized:B

    .line 1445
    const/4 v3, -0x1

    if-eq v2, v3, :cond_1

    if-ne v2, v0, :cond_0

    .line 1454
    :goto_0
    return v0

    :cond_0
    move v0, v1

    .line 1445
    goto :goto_0

    :cond_1
    move v2, v1

    .line 1447
    :goto_1
    invoke-virtual {p0}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$Geocoding;->getPoiCount()I

    move-result v3

    if-ge v2, v3, :cond_3

    .line 1448
    invoke-virtual {p0, v2}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$Geocoding;->getPoi(I)Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI;

    move-result-object v3

    invoke-virtual {v3}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI;->isInitialized()Z

    move-result v3

    if-nez v3, :cond_2

    .line 1449
    iput-byte v1, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$Geocoding;->memoizedIsInitialized:B

    move v0, v1

    .line 1450
    goto :goto_0

    .line 1447
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1453
    :cond_3
    iput-byte v0, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$Geocoding;->memoizedIsInitialized:B

    goto :goto_0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 1390
    invoke-virtual {p0}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$Geocoding;->newBuilderForType()Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$Geocoding$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic newBuilderForType(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 1390
    invoke-virtual {p0, p1}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$Geocoding;->newBuilderForType(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$Geocoding$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 1390
    invoke-virtual {p0}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$Geocoding;->newBuilderForType()Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$Geocoding$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$Geocoding$Builder;
    .locals 1

    .prologue
    .line 1556
    invoke-static {}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$Geocoding;->newBuilder()Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$Geocoding$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected newBuilderForType(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$Geocoding$Builder;
    .locals 2

    .prologue
    .line 1565
    new-instance v0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$Geocoding$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$Geocoding$Builder;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;Lcom/mapabc/mapapi/geocoder/c;)V

    .line 1566
    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 1390
    invoke-virtual {p0}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$Geocoding;->toBuilder()Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$Geocoding$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 1390
    invoke-virtual {p0}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$Geocoding;->toBuilder()Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$Geocoding$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$Geocoding$Builder;
    .locals 1

    .prologue
    .line 1560
    invoke-static {p0}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$Geocoding;->newBuilder(Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$Geocoding;)Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$Geocoding$Builder;

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
    .line 1485
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessage;->writeReplace()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public writeTo(Lcom/google/protobuf/CodedOutputStream;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1459
    invoke-virtual {p0}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$Geocoding;->getSerializedSize()I

    .line 1460
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$Geocoding;->poi_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 1461
    const/4 v2, 0x1

    iget-object v0, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$Geocoding;->poi_:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/MessageLite;

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 1460
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 1463
    :cond_0
    invoke-virtual {p0}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$Geocoding;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/UnknownFieldSet;->writeTo(Lcom/google/protobuf/CodedOutputStream;)V

    .line 1464
    return-void
.end method
