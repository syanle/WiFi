.class public final Lcom/mapabc/mapapi/core/CommonProtoBuf$POI;
.super Lcom/google/protobuf/GeneratedMessage;
.source "CommonProtoBuf.java"

# interfaces
.implements Lcom/mapabc/mapapi/core/CommonProtoBuf$POIOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mapabc/mapapi/core/CommonProtoBuf;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "POI"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mapabc/mapapi/core/CommonProtoBuf$POI$Builder;
    }
.end annotation


# static fields
.field public static final ADDRESS_FIELD_NUMBER:I = 0x7

.field public static final BUSCODE_FIELD_NUMBER:I = 0xf

.field public static final CITYCODE_FIELD_NUMBER:I = 0xc

.field public static final CODE_FIELD_NUMBER:I = 0xa

.field public static final DISTANCE_FIELD_NUMBER:I = 0x15

.field public static final DRIVEDISTANCE_FIELD_NUMBER:I = 0x16

.field public static final GRIDCODE_FIELD_NUMBER:I = 0xe

.field public static final IMAGEID_FIELD_NUMBER:I = 0x12

.field public static final LINKID_FIELD_NUMBER:I = 0x14

.field public static final MATCH_FIELD_NUMBER:I = 0x9

.field public static final NAME_FIELD_NUMBER:I = 0x2

.field public static final NEWTYPE_FIELD_NUMBER:I = 0xb

.field public static final PGUID_FIELD_NUMBER:I = 0x1

.field public static final SRCTYPE_FIELD_NUMBER:I = 0x6

.field public static final TEL_FIELD_NUMBER:I = 0x13

.field public static final TIMESTAMP_FIELD_NUMBER:I = 0x8

.field public static final TYPECODE_FIELD_NUMBER:I = 0xd

.field public static final TYPE_FIELD_NUMBER:I = 0x3

.field public static final URL_FIELD_NUMBER:I = 0x10

.field public static final XML_FIELD_NUMBER:I = 0x11

.field public static final X_FIELD_NUMBER:I = 0x4

.field public static final Y_FIELD_NUMBER:I = 0x5

.field private static final defaultInstance:Lcom/mapabc/mapapi/core/CommonProtoBuf$POI;

.field private static final serialVersionUID:J


# instance fields
.field private address_:Ljava/lang/Object;

.field private bitField0_:I

.field private buscode_:Ljava/lang/Object;

.field private citycode_:Ljava/lang/Object;

.field private code_:Ljava/lang/Object;

.field private distance_:Ljava/lang/Object;

.field private drivedistance_:Ljava/lang/Object;

.field private gridcode_:Ljava/lang/Object;

.field private imageid_:Ljava/lang/Object;

.field private linkid_:Ljava/lang/Object;

.field private match_:Ljava/lang/Object;

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I

.field private name_:Ljava/lang/Object;

.field private newtype_:Ljava/lang/Object;

.field private pguid_:Ljava/lang/Object;

.field private srctype_:Ljava/lang/Object;

.field private tel_:Ljava/lang/Object;

.field private timestamp_:Ljava/lang/Object;

.field private type_:Ljava/lang/Object;

.field private typecode_:Ljava/lang/Object;

.field private url_:Ljava/lang/Object;

.field private x_:Ljava/lang/Object;

.field private xml_:Ljava/lang/Object;

.field private y_:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 3074
    new-instance v0, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI;-><init>(Z)V

    sput-object v0, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI;->defaultInstance:Lcom/mapabc/mapapi/core/CommonProtoBuf$POI;

    .line 3075
    sget-object v0, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI;->defaultInstance:Lcom/mapabc/mapapi/core/CommonProtoBuf$POI;

    invoke-direct {v0}, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI;->initFields()V

    .line 3076
    return-void
.end method

.method private constructor <init>(Lcom/mapabc/mapapi/core/CommonProtoBuf$POI$Builder;)V
    .locals 1

    .prologue
    const/4 v0, -0x1

    .line 780
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessage;-><init>(Lcom/google/protobuf/GeneratedMessage$Builder;)V

    .line 1532
    iput-byte v0, p0, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI;->memoizedIsInitialized:B

    .line 1637
    iput v0, p0, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI;->memoizedSerializedSize:I

    .line 781
    return-void
.end method

.method synthetic constructor <init>(Lcom/mapabc/mapapi/core/CommonProtoBuf$POI$Builder;Lcom/mapabc/mapapi/core/b;)V
    .locals 0

    .prologue
    .line 775
    invoke-direct {p0, p1}, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI;-><init>(Lcom/mapabc/mapapi/core/CommonProtoBuf$POI$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 1

    .prologue
    const/4 v0, -0x1

    .line 782
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage;-><init>()V

    .line 1532
    iput-byte v0, p0, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI;->memoizedIsInitialized:B

    .line 1637
    iput v0, p0, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI;->memoizedSerializedSize:I

    .line 782
    return-void
.end method

.method static synthetic access$1700()Z
    .locals 1

    .prologue
    .line 775
    sget-boolean v0, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI;->alwaysUseFieldBuilders:Z

    return v0
.end method

.method static synthetic access$1902(Lcom/mapabc/mapapi/core/CommonProtoBuf$POI;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .prologue
    .line 775
    iput-object p1, p0, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI;->pguid_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$2002(Lcom/mapabc/mapapi/core/CommonProtoBuf$POI;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .prologue
    .line 775
    iput-object p1, p0, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI;->name_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$2102(Lcom/mapabc/mapapi/core/CommonProtoBuf$POI;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .prologue
    .line 775
    iput-object p1, p0, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI;->type_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$2202(Lcom/mapabc/mapapi/core/CommonProtoBuf$POI;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .prologue
    .line 775
    iput-object p1, p0, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI;->x_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$2302(Lcom/mapabc/mapapi/core/CommonProtoBuf$POI;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .prologue
    .line 775
    iput-object p1, p0, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI;->y_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$2402(Lcom/mapabc/mapapi/core/CommonProtoBuf$POI;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .prologue
    .line 775
    iput-object p1, p0, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI;->srctype_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$2502(Lcom/mapabc/mapapi/core/CommonProtoBuf$POI;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .prologue
    .line 775
    iput-object p1, p0, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI;->address_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$2602(Lcom/mapabc/mapapi/core/CommonProtoBuf$POI;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .prologue
    .line 775
    iput-object p1, p0, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI;->timestamp_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$2702(Lcom/mapabc/mapapi/core/CommonProtoBuf$POI;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .prologue
    .line 775
    iput-object p1, p0, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI;->match_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$2802(Lcom/mapabc/mapapi/core/CommonProtoBuf$POI;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .prologue
    .line 775
    iput-object p1, p0, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI;->code_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$2902(Lcom/mapabc/mapapi/core/CommonProtoBuf$POI;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .prologue
    .line 775
    iput-object p1, p0, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI;->newtype_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$3002(Lcom/mapabc/mapapi/core/CommonProtoBuf$POI;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .prologue
    .line 775
    iput-object p1, p0, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI;->citycode_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$3102(Lcom/mapabc/mapapi/core/CommonProtoBuf$POI;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .prologue
    .line 775
    iput-object p1, p0, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI;->typecode_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$3202(Lcom/mapabc/mapapi/core/CommonProtoBuf$POI;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .prologue
    .line 775
    iput-object p1, p0, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI;->gridcode_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$3302(Lcom/mapabc/mapapi/core/CommonProtoBuf$POI;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .prologue
    .line 775
    iput-object p1, p0, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI;->buscode_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$3402(Lcom/mapabc/mapapi/core/CommonProtoBuf$POI;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .prologue
    .line 775
    iput-object p1, p0, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI;->url_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$3502(Lcom/mapabc/mapapi/core/CommonProtoBuf$POI;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .prologue
    .line 775
    iput-object p1, p0, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI;->xml_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$3602(Lcom/mapabc/mapapi/core/CommonProtoBuf$POI;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .prologue
    .line 775
    iput-object p1, p0, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI;->imageid_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$3702(Lcom/mapabc/mapapi/core/CommonProtoBuf$POI;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .prologue
    .line 775
    iput-object p1, p0, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI;->tel_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$3802(Lcom/mapabc/mapapi/core/CommonProtoBuf$POI;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .prologue
    .line 775
    iput-object p1, p0, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI;->linkid_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$3902(Lcom/mapabc/mapapi/core/CommonProtoBuf$POI;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .prologue
    .line 775
    iput-object p1, p0, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI;->distance_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$4002(Lcom/mapabc/mapapi/core/CommonProtoBuf$POI;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .prologue
    .line 775
    iput-object p1, p0, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI;->drivedistance_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$4102(Lcom/mapabc/mapapi/core/CommonProtoBuf$POI;I)I
    .locals 0

    .prologue
    .line 775
    iput p1, p0, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI;->bitField0_:I

    return p1
.end method

.method private getAddressBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .prologue
    .line 1017
    iget-object v0, p0, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI;->address_:Ljava/lang/Object;

    .line 1018
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 1019
    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 1021
    iput-object v0, p0, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI;->address_:Ljava/lang/Object;

    .line 1024
    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    goto :goto_0
.end method

.method private getBuscodeBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .prologue
    .line 1273
    iget-object v0, p0, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI;->buscode_:Ljava/lang/Object;

    .line 1274
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 1275
    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 1277
    iput-object v0, p0, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI;->buscode_:Ljava/lang/Object;

    .line 1280
    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    goto :goto_0
.end method

.method private getCitycodeBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .prologue
    .line 1177
    iget-object v0, p0, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI;->citycode_:Ljava/lang/Object;

    .line 1178
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 1179
    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 1181
    iput-object v0, p0, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI;->citycode_:Ljava/lang/Object;

    .line 1184
    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    goto :goto_0
.end method

.method private getCodeBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .prologue
    .line 1113
    iget-object v0, p0, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI;->code_:Ljava/lang/Object;

    .line 1114
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 1115
    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 1117
    iput-object v0, p0, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI;->code_:Ljava/lang/Object;

    .line 1120
    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    goto :goto_0
.end method

.method public static getDefaultInstance()Lcom/mapabc/mapapi/core/CommonProtoBuf$POI;
    .locals 1

    .prologue
    .line 786
    sget-object v0, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI;->defaultInstance:Lcom/mapabc/mapapi/core/CommonProtoBuf$POI;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 795
    # getter for: Lcom/mapabc/mapapi/core/CommonProtoBuf;->internal_static_POI_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;
    invoke-static {}, Lcom/mapabc/mapapi/core/CommonProtoBuf;->access$1200()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method private getDistanceBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .prologue
    .line 1465
    iget-object v0, p0, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI;->distance_:Ljava/lang/Object;

    .line 1466
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 1467
    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 1469
    iput-object v0, p0, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI;->distance_:Ljava/lang/Object;

    .line 1472
    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    goto :goto_0
.end method

.method private getDrivedistanceBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .prologue
    .line 1497
    iget-object v0, p0, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI;->drivedistance_:Ljava/lang/Object;

    .line 1498
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 1499
    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 1501
    iput-object v0, p0, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI;->drivedistance_:Ljava/lang/Object;

    .line 1504
    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    goto :goto_0
.end method

.method private getGridcodeBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .prologue
    .line 1241
    iget-object v0, p0, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI;->gridcode_:Ljava/lang/Object;

    .line 1242
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 1243
    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 1245
    iput-object v0, p0, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI;->gridcode_:Ljava/lang/Object;

    .line 1248
    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    goto :goto_0
.end method

.method private getImageidBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .prologue
    .line 1369
    iget-object v0, p0, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI;->imageid_:Ljava/lang/Object;

    .line 1370
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 1371
    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 1373
    iput-object v0, p0, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI;->imageid_:Ljava/lang/Object;

    .line 1376
    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    goto :goto_0
.end method

.method private getLinkidBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .prologue
    .line 1433
    iget-object v0, p0, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI;->linkid_:Ljava/lang/Object;

    .line 1434
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 1435
    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 1437
    iput-object v0, p0, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI;->linkid_:Ljava/lang/Object;

    .line 1440
    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    goto :goto_0
.end method

.method private getMatchBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .prologue
    .line 1081
    iget-object v0, p0, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI;->match_:Ljava/lang/Object;

    .line 1082
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 1083
    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 1085
    iput-object v0, p0, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI;->match_:Ljava/lang/Object;

    .line 1088
    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    goto :goto_0
.end method

.method private getNameBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .prologue
    .line 857
    iget-object v0, p0, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI;->name_:Ljava/lang/Object;

    .line 858
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 859
    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 861
    iput-object v0, p0, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI;->name_:Ljava/lang/Object;

    .line 864
    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    goto :goto_0
.end method

.method private getNewtypeBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .prologue
    .line 1145
    iget-object v0, p0, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI;->newtype_:Ljava/lang/Object;

    .line 1146
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 1147
    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 1149
    iput-object v0, p0, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI;->newtype_:Ljava/lang/Object;

    .line 1152
    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    goto :goto_0
.end method

.method private getPguidBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .prologue
    .line 825
    iget-object v0, p0, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI;->pguid_:Ljava/lang/Object;

    .line 826
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 827
    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 829
    iput-object v0, p0, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI;->pguid_:Ljava/lang/Object;

    .line 832
    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    goto :goto_0
.end method

.method private getSrctypeBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .prologue
    .line 985
    iget-object v0, p0, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI;->srctype_:Ljava/lang/Object;

    .line 986
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 987
    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 989
    iput-object v0, p0, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI;->srctype_:Ljava/lang/Object;

    .line 992
    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    goto :goto_0
.end method

.method private getTelBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .prologue
    .line 1401
    iget-object v0, p0, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI;->tel_:Ljava/lang/Object;

    .line 1402
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 1403
    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 1405
    iput-object v0, p0, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI;->tel_:Ljava/lang/Object;

    .line 1408
    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    goto :goto_0
.end method

.method private getTimestampBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .prologue
    .line 1049
    iget-object v0, p0, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI;->timestamp_:Ljava/lang/Object;

    .line 1050
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 1051
    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 1053
    iput-object v0, p0, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI;->timestamp_:Ljava/lang/Object;

    .line 1056
    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    goto :goto_0
.end method

.method private getTypeBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .prologue
    .line 889
    iget-object v0, p0, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI;->type_:Ljava/lang/Object;

    .line 890
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 891
    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 893
    iput-object v0, p0, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI;->type_:Ljava/lang/Object;

    .line 896
    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    goto :goto_0
.end method

.method private getTypecodeBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .prologue
    .line 1209
    iget-object v0, p0, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI;->typecode_:Ljava/lang/Object;

    .line 1210
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 1211
    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 1213
    iput-object v0, p0, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI;->typecode_:Ljava/lang/Object;

    .line 1216
    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    goto :goto_0
.end method

.method private getUrlBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .prologue
    .line 1305
    iget-object v0, p0, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI;->url_:Ljava/lang/Object;

    .line 1306
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 1307
    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 1309
    iput-object v0, p0, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI;->url_:Ljava/lang/Object;

    .line 1312
    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    goto :goto_0
.end method

.method private getXBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .prologue
    .line 921
    iget-object v0, p0, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI;->x_:Ljava/lang/Object;

    .line 922
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 923
    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 925
    iput-object v0, p0, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI;->x_:Ljava/lang/Object;

    .line 928
    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    goto :goto_0
.end method

.method private getXmlBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .prologue
    .line 1337
    iget-object v0, p0, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI;->xml_:Ljava/lang/Object;

    .line 1338
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 1339
    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 1341
    iput-object v0, p0, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI;->xml_:Ljava/lang/Object;

    .line 1344
    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    goto :goto_0
.end method

.method private getYBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .prologue
    .line 953
    iget-object v0, p0, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI;->y_:Ljava/lang/Object;

    .line 954
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 955
    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 957
    iput-object v0, p0, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI;->y_:Ljava/lang/Object;

    .line 960
    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    goto :goto_0
.end method

.method private initFields()V
    .locals 1

    .prologue
    .line 1509
    const-string v0, ""

    iput-object v0, p0, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI;->pguid_:Ljava/lang/Object;

    .line 1510
    const-string v0, ""

    iput-object v0, p0, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI;->name_:Ljava/lang/Object;

    .line 1511
    const-string v0, ""

    iput-object v0, p0, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI;->type_:Ljava/lang/Object;

    .line 1512
    const-string v0, ""

    iput-object v0, p0, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI;->x_:Ljava/lang/Object;

    .line 1513
    const-string v0, ""

    iput-object v0, p0, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI;->y_:Ljava/lang/Object;

    .line 1514
    const-string v0, ""

    iput-object v0, p0, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI;->srctype_:Ljava/lang/Object;

    .line 1515
    const-string v0, ""

    iput-object v0, p0, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI;->address_:Ljava/lang/Object;

    .line 1516
    const-string v0, ""

    iput-object v0, p0, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI;->timestamp_:Ljava/lang/Object;

    .line 1517
    const-string v0, ""

    iput-object v0, p0, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI;->match_:Ljava/lang/Object;

    .line 1518
    const-string v0, ""

    iput-object v0, p0, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI;->code_:Ljava/lang/Object;

    .line 1519
    const-string v0, ""

    iput-object v0, p0, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI;->newtype_:Ljava/lang/Object;

    .line 1520
    const-string v0, ""

    iput-object v0, p0, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI;->citycode_:Ljava/lang/Object;

    .line 1521
    const-string v0, ""

    iput-object v0, p0, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI;->typecode_:Ljava/lang/Object;

    .line 1522
    const-string v0, ""

    iput-object v0, p0, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI;->gridcode_:Ljava/lang/Object;

    .line 1523
    const-string v0, ""

    iput-object v0, p0, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI;->buscode_:Ljava/lang/Object;

    .line 1524
    const-string v0, ""

    iput-object v0, p0, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI;->url_:Ljava/lang/Object;

    .line 1525
    const-string v0, ""

    iput-object v0, p0, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI;->xml_:Ljava/lang/Object;

    .line 1526
    const-string v0, ""

    iput-object v0, p0, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI;->imageid_:Ljava/lang/Object;

    .line 1527
    const-string v0, ""

    iput-object v0, p0, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI;->tel_:Ljava/lang/Object;

    .line 1528
    const-string v0, ""

    iput-object v0, p0, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI;->linkid_:Ljava/lang/Object;

    .line 1529
    const-string v0, ""

    iput-object v0, p0, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI;->distance_:Ljava/lang/Object;

    .line 1530
    const-string v0, ""

    iput-object v0, p0, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI;->drivedistance_:Ljava/lang/Object;

    .line 1531
    return-void
.end method

.method public static newBuilder()Lcom/mapabc/mapapi/core/CommonProtoBuf$POI$Builder;
    .locals 1

    .prologue
    .line 1810
    # invokes: Lcom/mapabc/mapapi/core/CommonProtoBuf$POI$Builder;->create()Lcom/mapabc/mapapi/core/CommonProtoBuf$POI$Builder;
    invoke-static {}, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI$Builder;->access$1500()Lcom/mapabc/mapapi/core/CommonProtoBuf$POI$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/mapabc/mapapi/core/CommonProtoBuf$POI;)Lcom/mapabc/mapapi/core/CommonProtoBuf$POI$Builder;
    .locals 1

    .prologue
    .line 1813
    invoke-static {}, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI;->newBuilder()Lcom/mapabc/mapapi/core/CommonProtoBuf$POI$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI$Builder;->mergeFrom(Lcom/mapabc/mapapi/core/CommonProtoBuf$POI;)Lcom/mapabc/mapapi/core/CommonProtoBuf$POI$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/mapabc/mapapi/core/CommonProtoBuf$POI;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1779
    invoke-static {}, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI;->newBuilder()Lcom/mapabc/mapapi/core/CommonProtoBuf$POI$Builder;

    move-result-object v0

    .line 1780
    invoke-virtual {v0, p0}, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1781
    # invokes: Lcom/mapabc/mapapi/core/CommonProtoBuf$POI$Builder;->buildParsed()Lcom/mapabc/mapapi/core/CommonProtoBuf$POI;
    invoke-static {v0}, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI$Builder;->access$1400(Lcom/mapabc/mapapi/core/CommonProtoBuf$POI$Builder;)Lcom/mapabc/mapapi/core/CommonProtoBuf$POI;

    move-result-object v0

    .line 1783
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/mapabc/mapapi/core/CommonProtoBuf$POI;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1790
    invoke-static {}, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI;->newBuilder()Lcom/mapabc/mapapi/core/CommonProtoBuf$POI$Builder;

    move-result-object v0

    .line 1791
    invoke-virtual {v0, p0, p1}, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1792
    # invokes: Lcom/mapabc/mapapi/core/CommonProtoBuf$POI$Builder;->buildParsed()Lcom/mapabc/mapapi/core/CommonProtoBuf$POI;
    invoke-static {v0}, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI$Builder;->access$1400(Lcom/mapabc/mapapi/core/CommonProtoBuf$POI$Builder;)Lcom/mapabc/mapapi/core/CommonProtoBuf$POI;

    move-result-object v0

    .line 1794
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/mapabc/mapapi/core/CommonProtoBuf$POI;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 1746
    invoke-static {}, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI;->newBuilder()Lcom/mapabc/mapapi/core/CommonProtoBuf$POI$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI$Builder;->mergeFrom(Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI$Builder;

    # invokes: Lcom/mapabc/mapapi/core/CommonProtoBuf$POI$Builder;->buildParsed()Lcom/mapabc/mapapi/core/CommonProtoBuf$POI;
    invoke-static {v0}, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI$Builder;->access$1400(Lcom/mapabc/mapapi/core/CommonProtoBuf$POI$Builder;)Lcom/mapabc/mapapi/core/CommonProtoBuf$POI;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/mapabc/mapapi/core/CommonProtoBuf$POI;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 1752
    invoke-static {}, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI;->newBuilder()Lcom/mapabc/mapapi/core/CommonProtoBuf$POI$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI$Builder;->mergeFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI$Builder;

    # invokes: Lcom/mapabc/mapapi/core/CommonProtoBuf$POI$Builder;->buildParsed()Lcom/mapabc/mapapi/core/CommonProtoBuf$POI;
    invoke-static {v0}, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI$Builder;->access$1400(Lcom/mapabc/mapapi/core/CommonProtoBuf$POI$Builder;)Lcom/mapabc/mapapi/core/CommonProtoBuf$POI;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/mapabc/mapapi/core/CommonProtoBuf$POI;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1800
    invoke-static {}, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI;->newBuilder()Lcom/mapabc/mapapi/core/CommonProtoBuf$POI$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI$Builder;

    # invokes: Lcom/mapabc/mapapi/core/CommonProtoBuf$POI$Builder;->buildParsed()Lcom/mapabc/mapapi/core/CommonProtoBuf$POI;
    invoke-static {v0}, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI$Builder;->access$1400(Lcom/mapabc/mapapi/core/CommonProtoBuf$POI$Builder;)Lcom/mapabc/mapapi/core/CommonProtoBuf$POI;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/mapabc/mapapi/core/CommonProtoBuf$POI;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1806
    invoke-static {}, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI;->newBuilder()Lcom/mapabc/mapapi/core/CommonProtoBuf$POI$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/mapabc/mapapi/core/CommonProtoBuf$POI$Builder;

    move-result-object v0

    # invokes: Lcom/mapabc/mapapi/core/CommonProtoBuf$POI$Builder;->buildParsed()Lcom/mapabc/mapapi/core/CommonProtoBuf$POI;
    invoke-static {v0}, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI$Builder;->access$1400(Lcom/mapabc/mapapi/core/CommonProtoBuf$POI$Builder;)Lcom/mapabc/mapapi/core/CommonProtoBuf$POI;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/mapabc/mapapi/core/CommonProtoBuf$POI;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1768
    invoke-static {}, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI;->newBuilder()Lcom/mapabc/mapapi/core/CommonProtoBuf$POI$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI$Builder;->mergeFrom(Ljava/io/InputStream;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI$Builder;

    # invokes: Lcom/mapabc/mapapi/core/CommonProtoBuf$POI$Builder;->buildParsed()Lcom/mapabc/mapapi/core/CommonProtoBuf$POI;
    invoke-static {v0}, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI$Builder;->access$1400(Lcom/mapabc/mapapi/core/CommonProtoBuf$POI$Builder;)Lcom/mapabc/mapapi/core/CommonProtoBuf$POI;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/mapabc/mapapi/core/CommonProtoBuf$POI;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1774
    invoke-static {}, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI;->newBuilder()Lcom/mapabc/mapapi/core/CommonProtoBuf$POI$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI$Builder;->mergeFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI$Builder;

    # invokes: Lcom/mapabc/mapapi/core/CommonProtoBuf$POI$Builder;->buildParsed()Lcom/mapabc/mapapi/core/CommonProtoBuf$POI;
    invoke-static {v0}, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI$Builder;->access$1400(Lcom/mapabc/mapapi/core/CommonProtoBuf$POI$Builder;)Lcom/mapabc/mapapi/core/CommonProtoBuf$POI;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/mapabc/mapapi/core/CommonProtoBuf$POI;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 1757
    invoke-static {}, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI;->newBuilder()Lcom/mapabc/mapapi/core/CommonProtoBuf$POI$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI$Builder;->mergeFrom([B)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI$Builder;

    # invokes: Lcom/mapabc/mapapi/core/CommonProtoBuf$POI$Builder;->buildParsed()Lcom/mapabc/mapapi/core/CommonProtoBuf$POI;
    invoke-static {v0}, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI$Builder;->access$1400(Lcom/mapabc/mapapi/core/CommonProtoBuf$POI$Builder;)Lcom/mapabc/mapapi/core/CommonProtoBuf$POI;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/mapabc/mapapi/core/CommonProtoBuf$POI;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 1763
    invoke-static {}, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI;->newBuilder()Lcom/mapabc/mapapi/core/CommonProtoBuf$POI$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI$Builder;->mergeFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI$Builder;

    # invokes: Lcom/mapabc/mapapi/core/CommonProtoBuf$POI$Builder;->buildParsed()Lcom/mapabc/mapapi/core/CommonProtoBuf$POI;
    invoke-static {v0}, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI$Builder;->access$1400(Lcom/mapabc/mapapi/core/CommonProtoBuf$POI$Builder;)Lcom/mapabc/mapapi/core/CommonProtoBuf$POI;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getAddress()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1003
    iget-object v0, p0, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI;->address_:Ljava/lang/Object;

    .line 1004
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 1005
    check-cast v0, Ljava/lang/String;

    .line 1013
    :goto_0
    return-object v0

    .line 1007
    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 1009
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 1010
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1011
    iput-object v1, p0, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI;->address_:Ljava/lang/Object;

    :cond_1
    move-object v0, v1

    .line 1013
    goto :goto_0
.end method

.method public getBuscode()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1259
    iget-object v0, p0, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI;->buscode_:Ljava/lang/Object;

    .line 1260
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 1261
    check-cast v0, Ljava/lang/String;

    .line 1269
    :goto_0
    return-object v0

    .line 1263
    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 1265
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 1266
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1267
    iput-object v1, p0, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI;->buscode_:Ljava/lang/Object;

    :cond_1
    move-object v0, v1

    .line 1269
    goto :goto_0
.end method

.method public getCitycode()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1163
    iget-object v0, p0, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI;->citycode_:Ljava/lang/Object;

    .line 1164
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 1165
    check-cast v0, Ljava/lang/String;

    .line 1173
    :goto_0
    return-object v0

    .line 1167
    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 1169
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 1170
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1171
    iput-object v1, p0, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI;->citycode_:Ljava/lang/Object;

    :cond_1
    move-object v0, v1

    .line 1173
    goto :goto_0
.end method

.method public getCode()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1099
    iget-object v0, p0, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI;->code_:Ljava/lang/Object;

    .line 1100
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 1101
    check-cast v0, Ljava/lang/String;

    .line 1109
    :goto_0
    return-object v0

    .line 1103
    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 1105
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 1106
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1107
    iput-object v1, p0, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI;->code_:Ljava/lang/Object;

    :cond_1
    move-object v0, v1

    .line 1109
    goto :goto_0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 775
    invoke-virtual {p0}, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI;->getDefaultInstanceForType()Lcom/mapabc/mapapi/core/CommonProtoBuf$POI;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 775
    invoke-virtual {p0}, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI;->getDefaultInstanceForType()Lcom/mapabc/mapapi/core/CommonProtoBuf$POI;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/mapabc/mapapi/core/CommonProtoBuf$POI;
    .locals 1

    .prologue
    .line 790
    sget-object v0, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI;->defaultInstance:Lcom/mapabc/mapapi/core/CommonProtoBuf$POI;

    return-object v0
.end method

.method public getDistance()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1451
    iget-object v0, p0, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI;->distance_:Ljava/lang/Object;

    .line 1452
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 1453
    check-cast v0, Ljava/lang/String;

    .line 1461
    :goto_0
    return-object v0

    .line 1455
    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 1457
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 1458
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1459
    iput-object v1, p0, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI;->distance_:Ljava/lang/Object;

    :cond_1
    move-object v0, v1

    .line 1461
    goto :goto_0
.end method

.method public getDrivedistance()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1483
    iget-object v0, p0, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI;->drivedistance_:Ljava/lang/Object;

    .line 1484
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 1485
    check-cast v0, Ljava/lang/String;

    .line 1493
    :goto_0
    return-object v0

    .line 1487
    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 1489
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 1490
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1491
    iput-object v1, p0, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI;->drivedistance_:Ljava/lang/Object;

    :cond_1
    move-object v0, v1

    .line 1493
    goto :goto_0
.end method

.method public getGridcode()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1227
    iget-object v0, p0, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI;->gridcode_:Ljava/lang/Object;

    .line 1228
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 1229
    check-cast v0, Ljava/lang/String;

    .line 1237
    :goto_0
    return-object v0

    .line 1231
    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 1233
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 1234
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1235
    iput-object v1, p0, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI;->gridcode_:Ljava/lang/Object;

    :cond_1
    move-object v0, v1

    .line 1237
    goto :goto_0
.end method

.method public getImageid()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1355
    iget-object v0, p0, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI;->imageid_:Ljava/lang/Object;

    .line 1356
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 1357
    check-cast v0, Ljava/lang/String;

    .line 1365
    :goto_0
    return-object v0

    .line 1359
    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 1361
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 1362
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1363
    iput-object v1, p0, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI;->imageid_:Ljava/lang/Object;

    :cond_1
    move-object v0, v1

    .line 1365
    goto :goto_0
.end method

.method public getLinkid()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1419
    iget-object v0, p0, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI;->linkid_:Ljava/lang/Object;

    .line 1420
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 1421
    check-cast v0, Ljava/lang/String;

    .line 1429
    :goto_0
    return-object v0

    .line 1423
    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 1425
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 1426
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1427
    iput-object v1, p0, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI;->linkid_:Ljava/lang/Object;

    :cond_1
    move-object v0, v1

    .line 1429
    goto :goto_0
.end method

.method public getMatch()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1067
    iget-object v0, p0, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI;->match_:Ljava/lang/Object;

    .line 1068
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 1069
    check-cast v0, Ljava/lang/String;

    .line 1077
    :goto_0
    return-object v0

    .line 1071
    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 1073
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 1074
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1075
    iput-object v1, p0, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI;->match_:Ljava/lang/Object;

    :cond_1
    move-object v0, v1

    .line 1077
    goto :goto_0
.end method

.method public getName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 843
    iget-object v0, p0, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI;->name_:Ljava/lang/Object;

    .line 844
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 845
    check-cast v0, Ljava/lang/String;

    .line 853
    :goto_0
    return-object v0

    .line 847
    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 849
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 850
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 851
    iput-object v1, p0, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI;->name_:Ljava/lang/Object;

    :cond_1
    move-object v0, v1

    .line 853
    goto :goto_0
.end method

.method public getNewtype()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1131
    iget-object v0, p0, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI;->newtype_:Ljava/lang/Object;

    .line 1132
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 1133
    check-cast v0, Ljava/lang/String;

    .line 1141
    :goto_0
    return-object v0

    .line 1135
    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 1137
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 1138
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1139
    iput-object v1, p0, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI;->newtype_:Ljava/lang/Object;

    :cond_1
    move-object v0, v1

    .line 1141
    goto :goto_0
.end method

.method public getPguid()Ljava/lang/String;
    .locals 2

    .prologue
    .line 811
    iget-object v0, p0, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI;->pguid_:Ljava/lang/Object;

    .line 812
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 813
    check-cast v0, Ljava/lang/String;

    .line 821
    :goto_0
    return-object v0

    .line 815
    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 817
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 818
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 819
    iput-object v1, p0, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI;->pguid_:Ljava/lang/Object;

    :cond_1
    move-object v0, v1

    .line 821
    goto :goto_0
.end method

.method public getSerializedSize()I
    .locals 7

    .prologue
    const/16 v6, 0x10

    const/16 v5, 0x8

    const/4 v4, 0x4

    const/4 v3, 0x2

    const/4 v2, 0x1

    .line 1639
    iget v0, p0, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI;->memoizedSerializedSize:I

    .line 1640
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 1733
    :goto_0
    return v0

    .line 1642
    :cond_0
    const/4 v0, 0x0

    .line 1643
    iget v1, p0, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v2, :cond_1

    .line 1644
    invoke-direct {p0}, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI;->getPguidBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1647
    :cond_1
    iget v1, p0, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI;->bitField0_:I

    and-int/lit8 v1, v1, 0x2

    if-ne v1, v3, :cond_2

    .line 1648
    invoke-direct {p0}, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI;->getNameBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1651
    :cond_2
    iget v1, p0, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI;->bitField0_:I

    and-int/lit8 v1, v1, 0x4

    if-ne v1, v4, :cond_3

    .line 1652
    const/4 v1, 0x3

    invoke-direct {p0}, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI;->getTypeBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1655
    :cond_3
    iget v1, p0, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI;->bitField0_:I

    and-int/lit8 v1, v1, 0x8

    if-ne v1, v5, :cond_4

    .line 1656
    invoke-direct {p0}, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI;->getXBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-static {v4, v1}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1659
    :cond_4
    iget v1, p0, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI;->bitField0_:I

    and-int/lit8 v1, v1, 0x10

    if-ne v1, v6, :cond_5

    .line 1660
    const/4 v1, 0x5

    invoke-direct {p0}, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI;->getYBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1663
    :cond_5
    iget v1, p0, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI;->bitField0_:I

    and-int/lit8 v1, v1, 0x20

    const/16 v2, 0x20

    if-ne v1, v2, :cond_6

    .line 1664
    const/4 v1, 0x6

    invoke-direct {p0}, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI;->getSrctypeBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1667
    :cond_6
    iget v1, p0, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI;->bitField0_:I

    and-int/lit8 v1, v1, 0x40

    const/16 v2, 0x40

    if-ne v1, v2, :cond_7

    .line 1668
    const/4 v1, 0x7

    invoke-direct {p0}, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI;->getAddressBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1671
    :cond_7
    iget v1, p0, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI;->bitField0_:I

    and-int/lit16 v1, v1, 0x80

    const/16 v2, 0x80

    if-ne v1, v2, :cond_8

    .line 1672
    invoke-direct {p0}, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI;->getTimestampBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-static {v5, v1}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1675
    :cond_8
    iget v1, p0, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI;->bitField0_:I

    and-int/lit16 v1, v1, 0x100

    const/16 v2, 0x100

    if-ne v1, v2, :cond_9

    .line 1676
    const/16 v1, 0x9

    invoke-direct {p0}, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI;->getMatchBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1679
    :cond_9
    iget v1, p0, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI;->bitField0_:I

    and-int/lit16 v1, v1, 0x200

    const/16 v2, 0x200

    if-ne v1, v2, :cond_a

    .line 1680
    const/16 v1, 0xa

    invoke-direct {p0}, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI;->getCodeBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1683
    :cond_a
    iget v1, p0, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI;->bitField0_:I

    and-int/lit16 v1, v1, 0x400

    const/16 v2, 0x400

    if-ne v1, v2, :cond_b

    .line 1684
    const/16 v1, 0xb

    invoke-direct {p0}, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI;->getNewtypeBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1687
    :cond_b
    iget v1, p0, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI;->bitField0_:I

    and-int/lit16 v1, v1, 0x800

    const/16 v2, 0x800

    if-ne v1, v2, :cond_c

    .line 1688
    const/16 v1, 0xc

    invoke-direct {p0}, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI;->getCitycodeBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1691
    :cond_c
    iget v1, p0, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI;->bitField0_:I

    and-int/lit16 v1, v1, 0x1000

    const/16 v2, 0x1000

    if-ne v1, v2, :cond_d

    .line 1692
    const/16 v1, 0xd

    invoke-direct {p0}, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI;->getTypecodeBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1695
    :cond_d
    iget v1, p0, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI;->bitField0_:I

    and-int/lit16 v1, v1, 0x2000

    const/16 v2, 0x2000

    if-ne v1, v2, :cond_e

    .line 1696
    const/16 v1, 0xe

    invoke-direct {p0}, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI;->getGridcodeBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1699
    :cond_e
    iget v1, p0, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI;->bitField0_:I

    and-int/lit16 v1, v1, 0x4000

    const/16 v2, 0x4000

    if-ne v1, v2, :cond_f

    .line 1700
    const/16 v1, 0xf

    invoke-direct {p0}, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI;->getBuscodeBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1703
    :cond_f
    iget v1, p0, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI;->bitField0_:I

    const v2, 0x8000

    and-int/2addr v1, v2

    const v2, 0x8000

    if-ne v1, v2, :cond_10

    .line 1704
    invoke-direct {p0}, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI;->getUrlBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-static {v6, v1}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1707
    :cond_10
    iget v1, p0, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI;->bitField0_:I

    const/high16 v2, 0x10000

    and-int/2addr v1, v2

    const/high16 v2, 0x10000

    if-ne v1, v2, :cond_11

    .line 1708
    const/16 v1, 0x11

    invoke-direct {p0}, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI;->getXmlBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1711
    :cond_11
    iget v1, p0, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI;->bitField0_:I

    const/high16 v2, 0x20000

    and-int/2addr v1, v2

    const/high16 v2, 0x20000

    if-ne v1, v2, :cond_12

    .line 1712
    const/16 v1, 0x12

    invoke-direct {p0}, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI;->getImageidBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1715
    :cond_12
    iget v1, p0, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI;->bitField0_:I

    const/high16 v2, 0x40000

    and-int/2addr v1, v2

    const/high16 v2, 0x40000

    if-ne v1, v2, :cond_13

    .line 1716
    const/16 v1, 0x13

    invoke-direct {p0}, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI;->getTelBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1719
    :cond_13
    iget v1, p0, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI;->bitField0_:I

    const/high16 v2, 0x80000

    and-int/2addr v1, v2

    const/high16 v2, 0x80000

    if-ne v1, v2, :cond_14

    .line 1720
    const/16 v1, 0x14

    invoke-direct {p0}, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI;->getLinkidBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1723
    :cond_14
    iget v1, p0, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI;->bitField0_:I

    const/high16 v2, 0x100000

    and-int/2addr v1, v2

    const/high16 v2, 0x100000

    if-ne v1, v2, :cond_15

    .line 1724
    const/16 v1, 0x15

    invoke-direct {p0}, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI;->getDistanceBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1727
    :cond_15
    iget v1, p0, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI;->bitField0_:I

    const/high16 v2, 0x200000

    and-int/2addr v1, v2

    const/high16 v2, 0x200000

    if-ne v1, v2, :cond_16

    .line 1728
    const/16 v1, 0x16

    invoke-direct {p0}, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI;->getDrivedistanceBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1731
    :cond_16
    invoke-virtual {p0}, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protobuf/UnknownFieldSet;->getSerializedSize()I

    move-result v1

    add-int/2addr v0, v1

    .line 1732
    iput v0, p0, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI;->memoizedSerializedSize:I

    goto/16 :goto_0
.end method

.method public getSrctype()Ljava/lang/String;
    .locals 2

    .prologue
    .line 971
    iget-object v0, p0, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI;->srctype_:Ljava/lang/Object;

    .line 972
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 973
    check-cast v0, Ljava/lang/String;

    .line 981
    :goto_0
    return-object v0

    .line 975
    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 977
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 978
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 979
    iput-object v1, p0, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI;->srctype_:Ljava/lang/Object;

    :cond_1
    move-object v0, v1

    .line 981
    goto :goto_0
.end method

.method public getTel()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1387
    iget-object v0, p0, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI;->tel_:Ljava/lang/Object;

    .line 1388
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 1389
    check-cast v0, Ljava/lang/String;

    .line 1397
    :goto_0
    return-object v0

    .line 1391
    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 1393
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 1394
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1395
    iput-object v1, p0, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI;->tel_:Ljava/lang/Object;

    :cond_1
    move-object v0, v1

    .line 1397
    goto :goto_0
.end method

.method public getTimestamp()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1035
    iget-object v0, p0, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI;->timestamp_:Ljava/lang/Object;

    .line 1036
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 1037
    check-cast v0, Ljava/lang/String;

    .line 1045
    :goto_0
    return-object v0

    .line 1039
    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 1041
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 1042
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1043
    iput-object v1, p0, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI;->timestamp_:Ljava/lang/Object;

    :cond_1
    move-object v0, v1

    .line 1045
    goto :goto_0
.end method

.method public getType()Ljava/lang/String;
    .locals 2

    .prologue
    .line 875
    iget-object v0, p0, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI;->type_:Ljava/lang/Object;

    .line 876
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 877
    check-cast v0, Ljava/lang/String;

    .line 885
    :goto_0
    return-object v0

    .line 879
    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 881
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 882
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 883
    iput-object v1, p0, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI;->type_:Ljava/lang/Object;

    :cond_1
    move-object v0, v1

    .line 885
    goto :goto_0
.end method

.method public getTypecode()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1195
    iget-object v0, p0, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI;->typecode_:Ljava/lang/Object;

    .line 1196
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 1197
    check-cast v0, Ljava/lang/String;

    .line 1205
    :goto_0
    return-object v0

    .line 1199
    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 1201
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 1202
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1203
    iput-object v1, p0, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI;->typecode_:Ljava/lang/Object;

    :cond_1
    move-object v0, v1

    .line 1205
    goto :goto_0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1291
    iget-object v0, p0, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI;->url_:Ljava/lang/Object;

    .line 1292
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 1293
    check-cast v0, Ljava/lang/String;

    .line 1301
    :goto_0
    return-object v0

    .line 1295
    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 1297
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 1298
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1299
    iput-object v1, p0, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI;->url_:Ljava/lang/Object;

    :cond_1
    move-object v0, v1

    .line 1301
    goto :goto_0
.end method

.method public getX()Ljava/lang/String;
    .locals 2

    .prologue
    .line 907
    iget-object v0, p0, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI;->x_:Ljava/lang/Object;

    .line 908
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 909
    check-cast v0, Ljava/lang/String;

    .line 917
    :goto_0
    return-object v0

    .line 911
    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 913
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 914
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 915
    iput-object v1, p0, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI;->x_:Ljava/lang/Object;

    :cond_1
    move-object v0, v1

    .line 917
    goto :goto_0
.end method

.method public getXml()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1323
    iget-object v0, p0, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI;->xml_:Ljava/lang/Object;

    .line 1324
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 1325
    check-cast v0, Ljava/lang/String;

    .line 1333
    :goto_0
    return-object v0

    .line 1327
    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 1329
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 1330
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1331
    iput-object v1, p0, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI;->xml_:Ljava/lang/Object;

    :cond_1
    move-object v0, v1

    .line 1333
    goto :goto_0
.end method

.method public getY()Ljava/lang/String;
    .locals 2

    .prologue
    .line 939
    iget-object v0, p0, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI;->y_:Ljava/lang/Object;

    .line 940
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 941
    check-cast v0, Ljava/lang/String;

    .line 949
    :goto_0
    return-object v0

    .line 943
    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 945
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 946
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 947
    iput-object v1, p0, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI;->y_:Ljava/lang/Object;

    :cond_1
    move-object v0, v1

    .line 949
    goto :goto_0
.end method

.method public hasAddress()Z
    .locals 2

    .prologue
    .line 1000
    iget v0, p0, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI;->bitField0_:I

    and-int/lit8 v0, v0, 0x40

    const/16 v1, 0x40

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasBuscode()Z
    .locals 2

    .prologue
    .line 1256
    iget v0, p0, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI;->bitField0_:I

    and-int/lit16 v0, v0, 0x4000

    const/16 v1, 0x4000

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasCitycode()Z
    .locals 2

    .prologue
    .line 1160
    iget v0, p0, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI;->bitField0_:I

    and-int/lit16 v0, v0, 0x800

    const/16 v1, 0x800

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasCode()Z
    .locals 2

    .prologue
    .line 1096
    iget v0, p0, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI;->bitField0_:I

    and-int/lit16 v0, v0, 0x200

    const/16 v1, 0x200

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasDistance()Z
    .locals 2

    .prologue
    const/high16 v1, 0x100000

    .line 1448
    iget v0, p0, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI;->bitField0_:I

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasDrivedistance()Z
    .locals 2

    .prologue
    const/high16 v1, 0x200000

    .line 1480
    iget v0, p0, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI;->bitField0_:I

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasGridcode()Z
    .locals 2

    .prologue
    .line 1224
    iget v0, p0, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI;->bitField0_:I

    and-int/lit16 v0, v0, 0x2000

    const/16 v1, 0x2000

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasImageid()Z
    .locals 2

    .prologue
    const/high16 v1, 0x20000

    .line 1352
    iget v0, p0, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI;->bitField0_:I

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasLinkid()Z
    .locals 2

    .prologue
    const/high16 v1, 0x80000

    .line 1416
    iget v0, p0, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI;->bitField0_:I

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasMatch()Z
    .locals 2

    .prologue
    .line 1064
    iget v0, p0, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI;->bitField0_:I

    and-int/lit16 v0, v0, 0x100

    const/16 v1, 0x100

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasName()Z
    .locals 2

    .prologue
    .line 840
    iget v0, p0, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI;->bitField0_:I

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

.method public hasNewtype()Z
    .locals 2

    .prologue
    .line 1128
    iget v0, p0, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI;->bitField0_:I

    and-int/lit16 v0, v0, 0x400

    const/16 v1, 0x400

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasPguid()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 808
    iget v1, p0, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasSrctype()Z
    .locals 2

    .prologue
    .line 968
    iget v0, p0, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI;->bitField0_:I

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

.method public hasTel()Z
    .locals 2

    .prologue
    const/high16 v1, 0x40000

    .line 1384
    iget v0, p0, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI;->bitField0_:I

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasTimestamp()Z
    .locals 2

    .prologue
    .line 1032
    iget v0, p0, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI;->bitField0_:I

    and-int/lit16 v0, v0, 0x80

    const/16 v1, 0x80

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasType()Z
    .locals 2

    .prologue
    .line 872
    iget v0, p0, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI;->bitField0_:I

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

.method public hasTypecode()Z
    .locals 2

    .prologue
    .line 1192
    iget v0, p0, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI;->bitField0_:I

    and-int/lit16 v0, v0, 0x1000

    const/16 v1, 0x1000

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasUrl()Z
    .locals 2

    .prologue
    const v1, 0x8000

    .line 1288
    iget v0, p0, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI;->bitField0_:I

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasX()Z
    .locals 2

    .prologue
    .line 904
    iget v0, p0, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI;->bitField0_:I

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

.method public hasXml()Z
    .locals 2

    .prologue
    const/high16 v1, 0x10000

    .line 1320
    iget v0, p0, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI;->bitField0_:I

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasY()Z
    .locals 2

    .prologue
    .line 936
    iget v0, p0, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI;->bitField0_:I

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

.method protected internalGetFieldAccessorTable()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 1

    .prologue
    .line 800
    # getter for: Lcom/mapabc/mapapi/core/CommonProtoBuf;->internal_static_POI_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    invoke-static {}, Lcom/mapabc/mapapi/core/CommonProtoBuf;->access$1300()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1534
    iget-byte v2, p0, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI;->memoizedIsInitialized:B

    .line 1535
    const/4 v3, -0x1

    if-eq v2, v3, :cond_1

    if-ne v2, v0, :cond_0

    :goto_0
    move v1, v0

    .line 1562
    :goto_1
    return v1

    :cond_0
    move v0, v1

    .line 1535
    goto :goto_0

    .line 1537
    :cond_1
    invoke-virtual {p0}, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI;->hasPguid()Z

    move-result v2

    if-nez v2, :cond_2

    .line 1538
    iput-byte v1, p0, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI;->memoizedIsInitialized:B

    goto :goto_1

    .line 1541
    :cond_2
    invoke-virtual {p0}, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI;->hasName()Z

    move-result v2

    if-nez v2, :cond_3

    .line 1542
    iput-byte v1, p0, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI;->memoizedIsInitialized:B

    goto :goto_1

    .line 1545
    :cond_3
    invoke-virtual {p0}, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI;->hasType()Z

    move-result v2

    if-nez v2, :cond_4

    .line 1546
    iput-byte v1, p0, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI;->memoizedIsInitialized:B

    goto :goto_1

    .line 1549
    :cond_4
    invoke-virtual {p0}, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI;->hasX()Z

    move-result v2

    if-nez v2, :cond_5

    .line 1550
    iput-byte v1, p0, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI;->memoizedIsInitialized:B

    goto :goto_1

    .line 1553
    :cond_5
    invoke-virtual {p0}, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI;->hasY()Z

    move-result v2

    if-nez v2, :cond_6

    .line 1554
    iput-byte v1, p0, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI;->memoizedIsInitialized:B

    goto :goto_1

    .line 1557
    :cond_6
    invoke-virtual {p0}, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI;->hasSrctype()Z

    move-result v2

    if-nez v2, :cond_7

    .line 1558
    iput-byte v1, p0, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI;->memoizedIsInitialized:B

    goto :goto_1

    .line 1561
    :cond_7
    iput-byte v0, p0, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI;->memoizedIsInitialized:B

    move v1, v0

    .line 1562
    goto :goto_1
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 775
    invoke-virtual {p0}, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI;->newBuilderForType()Lcom/mapabc/mapapi/core/CommonProtoBuf$POI$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic newBuilderForType(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 775
    invoke-virtual {p0, p1}, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI;->newBuilderForType(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)Lcom/mapabc/mapapi/core/CommonProtoBuf$POI$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 775
    invoke-virtual {p0}, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI;->newBuilderForType()Lcom/mapabc/mapapi/core/CommonProtoBuf$POI$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lcom/mapabc/mapapi/core/CommonProtoBuf$POI$Builder;
    .locals 1

    .prologue
    .line 1811
    invoke-static {}, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI;->newBuilder()Lcom/mapabc/mapapi/core/CommonProtoBuf$POI$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected newBuilderForType(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)Lcom/mapabc/mapapi/core/CommonProtoBuf$POI$Builder;
    .locals 2

    .prologue
    .line 1820
    new-instance v0, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI$Builder;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;Lcom/mapabc/mapapi/core/b;)V

    .line 1821
    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 775
    invoke-virtual {p0}, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI;->toBuilder()Lcom/mapabc/mapapi/core/CommonProtoBuf$POI$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 775
    invoke-virtual {p0}, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI;->toBuilder()Lcom/mapabc/mapapi/core/CommonProtoBuf$POI$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/mapabc/mapapi/core/CommonProtoBuf$POI$Builder;
    .locals 1

    .prologue
    .line 1815
    invoke-static {p0}, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI;->newBuilder(Lcom/mapabc/mapapi/core/CommonProtoBuf$POI;)Lcom/mapabc/mapapi/core/CommonProtoBuf$POI$Builder;

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
    .line 1740
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessage;->writeReplace()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public writeTo(Lcom/google/protobuf/CodedOutputStream;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v5, 0x10

    const/16 v4, 0x8

    const/4 v3, 0x4

    const/4 v2, 0x2

    const/4 v1, 0x1

    .line 1567
    invoke-virtual {p0}, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI;->getSerializedSize()I

    .line 1568
    iget v0, p0, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_0

    .line 1569
    invoke-direct {p0}, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI;->getPguidBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 1571
    :cond_0
    iget v0, p0, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-ne v0, v2, :cond_1

    .line 1572
    invoke-direct {p0}, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI;->getNameBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 1574
    :cond_1
    iget v0, p0, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-ne v0, v3, :cond_2

    .line 1575
    const/4 v0, 0x3

    invoke-direct {p0}, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI;->getTypeBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 1577
    :cond_2
    iget v0, p0, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    if-ne v0, v4, :cond_3

    .line 1578
    invoke-direct {p0}, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI;->getXBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p1, v3, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 1580
    :cond_3
    iget v0, p0, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI;->bitField0_:I

    and-int/lit8 v0, v0, 0x10

    if-ne v0, v5, :cond_4

    .line 1581
    const/4 v0, 0x5

    invoke-direct {p0}, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI;->getYBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 1583
    :cond_4
    iget v0, p0, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI;->bitField0_:I

    and-int/lit8 v0, v0, 0x20

    const/16 v1, 0x20

    if-ne v0, v1, :cond_5

    .line 1584
    const/4 v0, 0x6

    invoke-direct {p0}, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI;->getSrctypeBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 1586
    :cond_5
    iget v0, p0, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI;->bitField0_:I

    and-int/lit8 v0, v0, 0x40

    const/16 v1, 0x40

    if-ne v0, v1, :cond_6

    .line 1587
    const/4 v0, 0x7

    invoke-direct {p0}, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI;->getAddressBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 1589
    :cond_6
    iget v0, p0, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI;->bitField0_:I

    and-int/lit16 v0, v0, 0x80

    const/16 v1, 0x80

    if-ne v0, v1, :cond_7

    .line 1590
    invoke-direct {p0}, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI;->getTimestampBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p1, v4, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 1592
    :cond_7
    iget v0, p0, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI;->bitField0_:I

    and-int/lit16 v0, v0, 0x100

    const/16 v1, 0x100

    if-ne v0, v1, :cond_8

    .line 1593
    const/16 v0, 0x9

    invoke-direct {p0}, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI;->getMatchBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 1595
    :cond_8
    iget v0, p0, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI;->bitField0_:I

    and-int/lit16 v0, v0, 0x200

    const/16 v1, 0x200

    if-ne v0, v1, :cond_9

    .line 1596
    const/16 v0, 0xa

    invoke-direct {p0}, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI;->getCodeBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 1598
    :cond_9
    iget v0, p0, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI;->bitField0_:I

    and-int/lit16 v0, v0, 0x400

    const/16 v1, 0x400

    if-ne v0, v1, :cond_a

    .line 1599
    const/16 v0, 0xb

    invoke-direct {p0}, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI;->getNewtypeBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 1601
    :cond_a
    iget v0, p0, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI;->bitField0_:I

    and-int/lit16 v0, v0, 0x800

    const/16 v1, 0x800

    if-ne v0, v1, :cond_b

    .line 1602
    const/16 v0, 0xc

    invoke-direct {p0}, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI;->getCitycodeBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 1604
    :cond_b
    iget v0, p0, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI;->bitField0_:I

    and-int/lit16 v0, v0, 0x1000

    const/16 v1, 0x1000

    if-ne v0, v1, :cond_c

    .line 1605
    const/16 v0, 0xd

    invoke-direct {p0}, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI;->getTypecodeBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 1607
    :cond_c
    iget v0, p0, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI;->bitField0_:I

    and-int/lit16 v0, v0, 0x2000

    const/16 v1, 0x2000

    if-ne v0, v1, :cond_d

    .line 1608
    const/16 v0, 0xe

    invoke-direct {p0}, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI;->getGridcodeBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 1610
    :cond_d
    iget v0, p0, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI;->bitField0_:I

    and-int/lit16 v0, v0, 0x4000

    const/16 v1, 0x4000

    if-ne v0, v1, :cond_e

    .line 1611
    const/16 v0, 0xf

    invoke-direct {p0}, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI;->getBuscodeBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 1613
    :cond_e
    iget v0, p0, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI;->bitField0_:I

    const v1, 0x8000

    and-int/2addr v0, v1

    const v1, 0x8000

    if-ne v0, v1, :cond_f

    .line 1614
    invoke-direct {p0}, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI;->getUrlBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p1, v5, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 1616
    :cond_f
    iget v0, p0, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI;->bitField0_:I

    const/high16 v1, 0x10000

    and-int/2addr v0, v1

    const/high16 v1, 0x10000

    if-ne v0, v1, :cond_10

    .line 1617
    const/16 v0, 0x11

    invoke-direct {p0}, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI;->getXmlBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 1619
    :cond_10
    iget v0, p0, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI;->bitField0_:I

    const/high16 v1, 0x20000

    and-int/2addr v0, v1

    const/high16 v1, 0x20000

    if-ne v0, v1, :cond_11

    .line 1620
    const/16 v0, 0x12

    invoke-direct {p0}, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI;->getImageidBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 1622
    :cond_11
    iget v0, p0, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI;->bitField0_:I

    const/high16 v1, 0x40000

    and-int/2addr v0, v1

    const/high16 v1, 0x40000

    if-ne v0, v1, :cond_12

    .line 1623
    const/16 v0, 0x13

    invoke-direct {p0}, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI;->getTelBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 1625
    :cond_12
    iget v0, p0, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI;->bitField0_:I

    const/high16 v1, 0x80000

    and-int/2addr v0, v1

    const/high16 v1, 0x80000

    if-ne v0, v1, :cond_13

    .line 1626
    const/16 v0, 0x14

    invoke-direct {p0}, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI;->getLinkidBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 1628
    :cond_13
    iget v0, p0, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI;->bitField0_:I

    const/high16 v1, 0x100000

    and-int/2addr v0, v1

    const/high16 v1, 0x100000

    if-ne v0, v1, :cond_14

    .line 1629
    const/16 v0, 0x15

    invoke-direct {p0}, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI;->getDistanceBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 1631
    :cond_14
    iget v0, p0, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI;->bitField0_:I

    const/high16 v1, 0x200000

    and-int/2addr v0, v1

    const/high16 v1, 0x200000

    if-ne v0, v1, :cond_15

    .line 1632
    const/16 v0, 0x16

    invoke-direct {p0}, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI;->getDrivedistanceBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 1634
    :cond_15
    invoke-virtual {p0}, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/UnknownFieldSet;->writeTo(Lcom/google/protobuf/CodedOutputStream;)V

    .line 1635
    return-void
.end method
