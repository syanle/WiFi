.class public final Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf;
.super Ljava/lang/Object;
.source "GeocodingProtoBuf.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$SubPOI;,
        Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$SubPOIOrBuilder;,
        Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$SubPOIS;,
        Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$SubPOISOrBuilder;,
        Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI;,
        Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOIOrBuilder;,
        Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$Geocoding;,
        Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeocodingOrBuilder;,
        Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeocodingResponse;,
        Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeocodingResponseOrBuilder;,
        Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeocodingRequest;,
        Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeocodingRequestOrBuilder;
    }
.end annotation


# static fields
.field private static descriptor:Lcom/google/protobuf/Descriptors$FileDescriptor;

.field private static internal_static_GeoPOI_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

.field private static internal_static_GeoPOI_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

.field private static internal_static_GeocodingRequest_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

.field private static internal_static_GeocodingRequest_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

.field private static internal_static_GeocodingResponse_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

.field private static internal_static_GeocodingResponse_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

.field private static internal_static_Geocoding_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

.field private static internal_static_Geocoding_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

.field private static internal_static_SubPOIS_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

.field private static internal_static_SubPOIS_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

.field private static internal_static_SubPOI_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

.field private static internal_static_SubPOI_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v2, 0x1

    const/4 v4, 0x0

    .line 5428
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "\n\u000fgeocoding.proto\u001a\u000ccommon.proto\"\\\n\u0010GeocodingRequest\u0012\u0017\n\u0006common\u0018\u0001 \u0002(\u000b2\u0007.Common\u0012\u000f\n\u0007address\u0018\u0002 \u0002(\t\u0012\u0011\n\tpoiNumber\u0018\u0003 \u0001(\t\u0012\u000b\n\u0003ver\u0018\u0004 \u0001(\t\"f\n\u0011GeocodingResponse\u0012\r\n\u0005count\u0018\u0001 \u0001(\u0005\u0012\u001d\n\tgeocoding\u0018\u0002 \u0001(\u000b2\n.Geocoding\u0012#\n\u000cspellcorrect\u0018\u0003 \u0001(\u000b2\r.Spellcorrect\"!\n\tGeocoding\u0012\u0014\n\u0003poi\u0018\u0001 \u0003(\u000b2\u0007.GeoPOI\"\u00c7\u0002\n\u0006GeoPOI\u0012\u000c\n\u0004name\u0018\u0001 \u0002(\t\u0012\r\n\u0005level\u0018\u0002 \u0002(\t\u0012\t\n\u0001x\u0018\u0003 \u0002(\t\u0012\t\n\u0001y\u0018\u0004 \u0002(\t\u0012\u000f\n\u0007address\u0018\u0005 \u0001(\t\u0012\u0010\n\u0008province\u0018\u0006 \u0001(\t\u0012\u000c\n\u0004city\u0018\u0007 \u0001(\t\u0012\r\n\u0005ename\u0018\u0008 \u0001(\t\u0012\u0010\n\u0008distri"

    aput-object v1, v0, v4

    const-string v1, "ct\u0018\t \u0001(\t\u0012\r\n\u0005range\u0018\n \u0001(\t\u0012\u000b\n\u0003num\u0018\u000b \u0001(\t\u0012\u000c\n\u0004inum\u0018\u000c \u0001(\t\u0012\u000c\n\u0004prox\u0018\r \u0001(\t\u0012\r\n\u0005score\u0018\u000e \u0001(\t\u0012\u0011\n\teprovince\u0018\u000f \u0001(\t\u0012\r\n\u0005ecity\u0018\u0010 \u0001(\t\u0012\u0011\n\tedistrict\u0018\u0011 \u0001(\t\u0012\u0010\n\u0008eaddress\u0018\u0012 \u0001(\t\u0012\u000f\n\u0007roadpts\u0018\u0013 \u0001(\t\u0012\u0019\n\u0007subpois\u0018\u0014 \u0001(\u000b2\u0008.SubPOIS\"\"\n\u0007SubPOIS\u0012\u0017\n\u0006subpoi\u0018\u0001 \u0003(\u000b2\u0007.SubPOI\";\n\u0006SubPOI\u0012\u000c\n\u0004name\u0018\u0001 \u0001(\t\u0012\r\n\u0005ename\u0018\u0002 \u0001(\t\u0012\t\n\u0001x\u0018\u0003 \u0001(\t\u0012\t\n\u0001y\u0018\u0004 \u0001(\tB/\n\u001acom.mapabc.mapapi.geocoderB\u0011GeocodingProtoBuf"

    aput-object v1, v0, v2

    .line 5449
    new-instance v1, Lcom/mapabc/mapapi/geocoder/c;

    invoke-direct {v1}, Lcom/mapabc/mapapi/geocoder/c;-><init>()V

    .line 5505
    new-array v2, v2, [Lcom/google/protobuf/Descriptors$FileDescriptor;

    invoke-static {}, Lcom/mapabc/mapapi/core/CommonProtoBuf;->getDescriptor()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v0, v2, v1}, Lcom/google/protobuf/Descriptors$FileDescriptor;->internalBuildGeneratedFileFrom([Ljava/lang/String;[Lcom/google/protobuf/Descriptors$FileDescriptor;Lcom/google/protobuf/Descriptors$FileDescriptor$InternalDescriptorAssigner;)V

    .line 5510
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
    sget-object v0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf;->internal_static_GeocodingRequest_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method static synthetic access$002(Lcom/google/protobuf/Descriptors$Descriptor;)Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 0

    .prologue
    .line 6
    sput-object p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf;->internal_static_GeocodingRequest_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object p0
.end method

.method static synthetic access$100()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 1

    .prologue
    .line 6
    sget-object v0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf;->internal_static_GeocodingRequest_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    return-object v0
.end method

.method static synthetic access$102(Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;)Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 0

    .prologue
    .line 6
    sput-object p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf;->internal_static_GeocodingRequest_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    return-object p0
.end method

.method static synthetic access$1200()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 6
    sget-object v0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf;->internal_static_GeocodingResponse_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method static synthetic access$1202(Lcom/google/protobuf/Descriptors$Descriptor;)Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 0

    .prologue
    .line 6
    sput-object p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf;->internal_static_GeocodingResponse_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object p0
.end method

.method static synthetic access$1300()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 1

    .prologue
    .line 6
    sget-object v0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf;->internal_static_GeocodingResponse_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    return-object v0
.end method

.method static synthetic access$1302(Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;)Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 0

    .prologue
    .line 6
    sput-object p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf;->internal_static_GeocodingResponse_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    return-object p0
.end method

.method static synthetic access$2300()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 6
    sget-object v0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf;->internal_static_Geocoding_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method static synthetic access$2302(Lcom/google/protobuf/Descriptors$Descriptor;)Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 0

    .prologue
    .line 6
    sput-object p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf;->internal_static_Geocoding_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object p0
.end method

.method static synthetic access$2400()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 1

    .prologue
    .line 6
    sget-object v0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf;->internal_static_Geocoding_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    return-object v0
.end method

.method static synthetic access$2402(Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;)Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 0

    .prologue
    .line 6
    sput-object p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf;->internal_static_Geocoding_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    return-object p0
.end method

.method static synthetic access$3200()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 6
    sget-object v0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf;->internal_static_GeoPOI_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method static synthetic access$3202(Lcom/google/protobuf/Descriptors$Descriptor;)Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 0

    .prologue
    .line 6
    sput-object p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf;->internal_static_GeoPOI_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object p0
.end method

.method static synthetic access$3300()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 1

    .prologue
    .line 6
    sget-object v0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf;->internal_static_GeoPOI_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    return-object v0
.end method

.method static synthetic access$3302(Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;)Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 0

    .prologue
    .line 6
    sput-object p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf;->internal_static_GeoPOI_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    return-object p0
.end method

.method static synthetic access$6000()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 6
    sget-object v0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf;->internal_static_SubPOIS_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method static synthetic access$6002(Lcom/google/protobuf/Descriptors$Descriptor;)Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 0

    .prologue
    .line 6
    sput-object p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf;->internal_static_SubPOIS_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object p0
.end method

.method static synthetic access$6100()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 1

    .prologue
    .line 6
    sget-object v0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf;->internal_static_SubPOIS_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    return-object v0
.end method

.method static synthetic access$6102(Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;)Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 0

    .prologue
    .line 6
    sput-object p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf;->internal_static_SubPOIS_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    return-object p0
.end method

.method static synthetic access$6900()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 6
    sget-object v0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf;->internal_static_SubPOI_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method static synthetic access$6902(Lcom/google/protobuf/Descriptors$Descriptor;)Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 0

    .prologue
    .line 6
    sput-object p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf;->internal_static_SubPOI_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object p0
.end method

.method static synthetic access$7000()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 1

    .prologue
    .line 6
    sget-object v0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf;->internal_static_SubPOI_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    return-object v0
.end method

.method static synthetic access$7002(Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;)Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 0

    .prologue
    .line 6
    sput-object p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf;->internal_static_SubPOI_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    return-object p0
.end method

.method static synthetic access$8102(Lcom/google/protobuf/Descriptors$FileDescriptor;)Lcom/google/protobuf/Descriptors$FileDescriptor;
    .locals 0

    .prologue
    .line 6
    sput-object p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf;->descriptor:Lcom/google/protobuf/Descriptors$FileDescriptor;

    return-object p0
.end method

.method public static getDescriptor()Lcom/google/protobuf/Descriptors$FileDescriptor;
    .locals 1

    .prologue
    .line 5423
    sget-object v0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf;->descriptor:Lcom/google/protobuf/Descriptors$FileDescriptor;

    return-object v0
.end method

.method public static registerAllExtensions(Lcom/google/protobuf/ExtensionRegistry;)V
    .locals 0

    .prologue
    .line 10
    return-void
.end method
