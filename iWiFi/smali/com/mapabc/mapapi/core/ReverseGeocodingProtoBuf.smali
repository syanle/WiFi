.class public final Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf;
.super Ljava/lang/Object;
.source "ReverseGeocodingProtoBuf.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Cross;,
        Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$CrossOrBuilder;,
        Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Crosses;,
        Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$CrossesOrBuilder;,
        Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$POIS;,
        Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$POISOrBuilder;,
        Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Road;,
        Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$RoadOrBuilder;,
        Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Roads;,
        Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$RoadsOrBuilder;,
        Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$District;,
        Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$DistrictOrBuilder;,
        Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$City;,
        Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$CityOrBuilder;,
        Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Province;,
        Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$ProvinceOrBuilder;,
        Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Spatial;,
        Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$SpatialOrBuilder;,
        Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$ReverseGeocodingResponse;,
        Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$ReverseGeocodingResponseOrBuilder;,
        Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$ReverseGeocodingRequest;,
        Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$ReverseGeocodingRequestOrBuilder;
    }
.end annotation


# static fields
.field private static descriptor:Lcom/google/protobuf/Descriptors$FileDescriptor;

.field private static internal_static_City_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

.field private static internal_static_City_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

.field private static internal_static_Cross_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

.field private static internal_static_Cross_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

.field private static internal_static_Crosses_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

.field private static internal_static_Crosses_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

.field private static internal_static_District_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

.field private static internal_static_District_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

.field private static internal_static_POIS_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

.field private static internal_static_POIS_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

.field private static internal_static_Province_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

.field private static internal_static_Province_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

.field private static internal_static_ReverseGeocodingRequest_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

.field private static internal_static_ReverseGeocodingRequest_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

.field private static internal_static_ReverseGeocodingResponse_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

.field private static internal_static_ReverseGeocodingResponse_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

.field private static internal_static_Road_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

.field private static internal_static_Road_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

.field private static internal_static_Roads_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

.field private static internal_static_Roads_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

.field private static internal_static_Spatial_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

.field private static internal_static_Spatial_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v2, 0x1

    const/4 v4, 0x0

    .line 7432
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "\n\u0016reversegeocoding.proto\u001a\u000ccommon.proto\"F\n\u0017ReverseGeocodingRequest\u0012\u0017\n\u0006common\u0018\u0001 \u0002(\u000b2\u0007.Common\u0012\u0012\n\nspatialXml\u0018\u0002 \u0002(\t\"5\n\u0018ReverseGeocodingResponse\u0012\u0019\n\u0007spatial\u0018\u0001 \u0003(\u000b2\u0008.Spatial\"\u009f\u0001\n\u0007Spatial\u0012\u001b\n\u0008province\u0018\u0001 \u0002(\u000b2\t.Province\u0012\u0013\n\u0004city\u0018\u0002 \u0002(\u000b2\u0005.City\u0012\u001b\n\u0008district\u0018\u0003 \u0002(\u000b2\t.District\u0012\u0015\n\u0005roads\u0018\u0004 \u0001(\u000b2\u0006.Roads\u0012\u0013\n\u0004pois\u0018\u0005 \u0001(\u000b2\u0005.POIS\u0012\u0019\n\u0007crosses\u0018\u0006 \u0001(\u000b2\u0008.Crosses\"&\n\u0008Province\u0012\u000c\n\u0004name\u0018\u0001 \u0001(\t\u0012\u000c\n\u0004code\u0018\u0002 \u0001(\t\"/\n\u0004City\u0012\u000c\n\u0004name\u0018\u0001 \u0001(\t\u0012\u000c\n\u0004code\u0018\u0002 "

    aput-object v1, v0, v4

    const-string v1, "\u0001(\t\u0012\u000b\n\u0003tel\u0018\u0003 \u0001(\t\"L\n\u0008District\u0012\u000c\n\u0004name\u0018\u0001 \u0001(\t\u0012\u000c\n\u0004code\u0018\u0002 \u0001(\t\u0012\t\n\u0001x\u0018\u0003 \u0001(\t\u0012\t\n\u0001y\u0018\u0004 \u0001(\t\u0012\u000e\n\u0006bounds\u0018\u0005 \u0001(\t\"\u001c\n\u0005Roads\u0012\u0013\n\u0004road\u0018\u0001 \u0003(\u000b2\u0005.Road\"r\n\u0004Road\u0012\n\n\u0002id\u0018\u0001 \u0002(\t\u0012\u000c\n\u0004name\u0018\u0002 \u0002(\t\u0012\r\n\u0005ename\u0018\u0003 \u0002(\t\u0012\r\n\u0005width\u0018\u0004 \u0002(\t\u0012\r\n\u0005level\u0018\u0005 \u0002(\t\u0012\u0010\n\u0008distance\u0018\u0006 \u0002(\t\u0012\u0011\n\tdirection\u0018\u0007 \u0002(\t\"\u0019\n\u0004POIS\u0012\u0011\n\u0003poi\u0018\u0001 \u0003(\u000b2\u0004.POI\" \n\u0007Crosses\u0012\u0015\n\u0005cross\u0018\u0001 \u0003(\u000b2\u0006.Cross\"+\n\u0005Cross\u0012\u000c\n\u0004name\u0018\u0001 \u0002(\t\u0012\t\n\u0001x\u0018\u0002 \u0002(\t\u0012\t\n\u0001y\u0018\u0003 \u0002(\tB2\n\u0016com.mapabc.mapapi.coreB\u0018ReverseGeocodingProtoBuf"

    aput-object v1, v0, v2

    .line 7454
    new-instance v1, Lcom/mapabc/mapapi/core/z;

    invoke-direct {v1}, Lcom/mapabc/mapapi/core/z;-><init>()V

    .line 7550
    new-array v2, v2, [Lcom/google/protobuf/Descriptors$FileDescriptor;

    invoke-static {}, Lcom/mapabc/mapapi/core/CommonProtoBuf;->getDescriptor()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v0, v2, v1}, Lcom/google/protobuf/Descriptors$FileDescriptor;->internalBuildGeneratedFileFrom([Ljava/lang/String;[Lcom/google/protobuf/Descriptors$FileDescriptor;Lcom/google/protobuf/Descriptors$FileDescriptor$InternalDescriptorAssigner;)V

    .line 7555
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 6
    sget-object v0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf;->internal_static_ReverseGeocodingRequest_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method static synthetic access$002(Lcom/google/protobuf/Descriptors$Descriptor;)Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 0

    .prologue
    .line 6
    sput-object p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf;->internal_static_ReverseGeocodingRequest_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object p0
.end method

.method static synthetic access$100()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 1

    .prologue
    .line 6
    sget-object v0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf;->internal_static_ReverseGeocodingRequest_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    return-object v0
.end method

.method static synthetic access$1000()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 6
    sget-object v0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf;->internal_static_ReverseGeocodingResponse_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method static synthetic access$10000()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 6
    sget-object v0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf;->internal_static_Crosses_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method static synthetic access$10002(Lcom/google/protobuf/Descriptors$Descriptor;)Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 0

    .prologue
    .line 6
    sput-object p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf;->internal_static_Crosses_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object p0
.end method

.method static synthetic access$1002(Lcom/google/protobuf/Descriptors$Descriptor;)Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 0

    .prologue
    .line 6
    sput-object p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf;->internal_static_ReverseGeocodingResponse_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object p0
.end method

.method static synthetic access$10100()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 1

    .prologue
    .line 6
    sget-object v0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf;->internal_static_Crosses_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    return-object v0
.end method

.method static synthetic access$10102(Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;)Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 0

    .prologue
    .line 6
    sput-object p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf;->internal_static_Crosses_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    return-object p0
.end method

.method static synthetic access$102(Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;)Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 0

    .prologue
    .line 6
    sput-object p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf;->internal_static_ReverseGeocodingRequest_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    return-object p0
.end method

.method static synthetic access$10900()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 6
    sget-object v0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf;->internal_static_Cross_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method static synthetic access$10902(Lcom/google/protobuf/Descriptors$Descriptor;)Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 0

    .prologue
    .line 6
    sput-object p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf;->internal_static_Cross_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object p0
.end method

.method static synthetic access$1100()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 1

    .prologue
    .line 6
    sget-object v0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf;->internal_static_ReverseGeocodingResponse_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    return-object v0
.end method

.method static synthetic access$11000()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 1

    .prologue
    .line 6
    sget-object v0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf;->internal_static_Cross_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    return-object v0
.end method

.method static synthetic access$11002(Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;)Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 0

    .prologue
    .line 6
    sput-object p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf;->internal_static_Cross_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    return-object p0
.end method

.method static synthetic access$1102(Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;)Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 0

    .prologue
    .line 6
    sput-object p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf;->internal_static_ReverseGeocodingResponse_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    return-object p0
.end method

.method static synthetic access$12002(Lcom/google/protobuf/Descriptors$FileDescriptor;)Lcom/google/protobuf/Descriptors$FileDescriptor;
    .locals 0

    .prologue
    .line 6
    sput-object p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf;->descriptor:Lcom/google/protobuf/Descriptors$FileDescriptor;

    return-object p0
.end method

.method static synthetic access$1900()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 6
    sget-object v0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf;->internal_static_Spatial_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method static synthetic access$1902(Lcom/google/protobuf/Descriptors$Descriptor;)Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 0

    .prologue
    .line 6
    sput-object p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf;->internal_static_Spatial_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object p0
.end method

.method static synthetic access$2000()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 1

    .prologue
    .line 6
    sget-object v0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf;->internal_static_Spatial_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    return-object v0
.end method

.method static synthetic access$2002(Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;)Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 0

    .prologue
    .line 6
    sput-object p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf;->internal_static_Spatial_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    return-object p0
.end method

.method static synthetic access$3300()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 6
    sget-object v0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf;->internal_static_Province_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method static synthetic access$3302(Lcom/google/protobuf/Descriptors$Descriptor;)Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 0

    .prologue
    .line 6
    sput-object p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf;->internal_static_Province_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object p0
.end method

.method static synthetic access$3400()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 1

    .prologue
    .line 6
    sget-object v0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf;->internal_static_Province_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    return-object v0
.end method

.method static synthetic access$3402(Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;)Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 0

    .prologue
    .line 6
    sput-object p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf;->internal_static_Province_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    return-object p0
.end method

.method static synthetic access$4300()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 6
    sget-object v0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf;->internal_static_City_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method static synthetic access$4302(Lcom/google/protobuf/Descriptors$Descriptor;)Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 0

    .prologue
    .line 6
    sput-object p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf;->internal_static_City_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object p0
.end method

.method static synthetic access$4400()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 1

    .prologue
    .line 6
    sget-object v0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf;->internal_static_City_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    return-object v0
.end method

.method static synthetic access$4402(Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;)Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 0

    .prologue
    .line 6
    sput-object p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf;->internal_static_City_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    return-object p0
.end method

.method static synthetic access$5400()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 6
    sget-object v0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf;->internal_static_District_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method static synthetic access$5402(Lcom/google/protobuf/Descriptors$Descriptor;)Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 0

    .prologue
    .line 6
    sput-object p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf;->internal_static_District_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object p0
.end method

.method static synthetic access$5500()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 1

    .prologue
    .line 6
    sget-object v0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf;->internal_static_District_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    return-object v0
.end method

.method static synthetic access$5502(Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;)Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 0

    .prologue
    .line 6
    sput-object p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf;->internal_static_District_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    return-object p0
.end method

.method static synthetic access$6700()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 6
    sget-object v0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf;->internal_static_Roads_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method static synthetic access$6702(Lcom/google/protobuf/Descriptors$Descriptor;)Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 0

    .prologue
    .line 6
    sput-object p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf;->internal_static_Roads_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object p0
.end method

.method static synthetic access$6800()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 1

    .prologue
    .line 6
    sget-object v0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf;->internal_static_Roads_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    return-object v0
.end method

.method static synthetic access$6802(Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;)Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 0

    .prologue
    .line 6
    sput-object p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf;->internal_static_Roads_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    return-object p0
.end method

.method static synthetic access$7600()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 6
    sget-object v0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf;->internal_static_Road_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method static synthetic access$7602(Lcom/google/protobuf/Descriptors$Descriptor;)Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 0

    .prologue
    .line 6
    sput-object p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf;->internal_static_Road_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object p0
.end method

.method static synthetic access$7700()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 1

    .prologue
    .line 6
    sget-object v0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf;->internal_static_Road_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    return-object v0
.end method

.method static synthetic access$7702(Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;)Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 0

    .prologue
    .line 6
    sput-object p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf;->internal_static_Road_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    return-object p0
.end method

.method static synthetic access$9100()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 6
    sget-object v0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf;->internal_static_POIS_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method static synthetic access$9102(Lcom/google/protobuf/Descriptors$Descriptor;)Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 0

    .prologue
    .line 6
    sput-object p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf;->internal_static_POIS_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object p0
.end method

.method static synthetic access$9200()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 1

    .prologue
    .line 6
    sget-object v0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf;->internal_static_POIS_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    return-object v0
.end method

.method static synthetic access$9202(Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;)Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 0

    .prologue
    .line 6
    sput-object p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf;->internal_static_POIS_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    return-object p0
.end method

.method public static getDescriptor()Lcom/google/protobuf/Descriptors$FileDescriptor;
    .locals 1

    .prologue
    .line 7427
    sget-object v0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf;->descriptor:Lcom/google/protobuf/Descriptors$FileDescriptor;

    return-object v0
.end method

.method public static registerAllExtensions(Lcom/google/protobuf/ExtensionRegistry;)V
    .locals 0

    .prologue
    .line 10
    return-void
.end method
