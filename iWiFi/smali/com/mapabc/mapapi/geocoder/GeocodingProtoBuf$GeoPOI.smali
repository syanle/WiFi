.class public final Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI;
.super Lcom/google/protobuf/GeneratedMessage;
.source "GeocodingProtoBuf.java"

# interfaces
.implements Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOIOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "GeoPOI"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI$Builder;
    }
.end annotation


# static fields
.field public static final ADDRESS_FIELD_NUMBER:I = 0x5

.field public static final CITY_FIELD_NUMBER:I = 0x7

.field public static final DISTRICT_FIELD_NUMBER:I = 0x9

.field public static final EADDRESS_FIELD_NUMBER:I = 0x12

.field public static final ECITY_FIELD_NUMBER:I = 0x10

.field public static final EDISTRICT_FIELD_NUMBER:I = 0x11

.field public static final ENAME_FIELD_NUMBER:I = 0x8

.field public static final EPROVINCE_FIELD_NUMBER:I = 0xf

.field public static final INUM_FIELD_NUMBER:I = 0xc

.field public static final LEVEL_FIELD_NUMBER:I = 0x2

.field public static final NAME_FIELD_NUMBER:I = 0x1

.field public static final NUM_FIELD_NUMBER:I = 0xb

.field public static final PROVINCE_FIELD_NUMBER:I = 0x6

.field public static final PROX_FIELD_NUMBER:I = 0xd

.field public static final RANGE_FIELD_NUMBER:I = 0xa

.field public static final ROADPTS_FIELD_NUMBER:I = 0x13

.field public static final SCORE_FIELD_NUMBER:I = 0xe

.field public static final SUBPOIS_FIELD_NUMBER:I = 0x14

.field public static final X_FIELD_NUMBER:I = 0x3

.field public static final Y_FIELD_NUMBER:I = 0x4

.field private static final defaultInstance:Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI;

.field private static final serialVersionUID:J


# instance fields
.field private address_:Ljava/lang/Object;

.field private bitField0_:I

.field private city_:Ljava/lang/Object;

.field private district_:Ljava/lang/Object;

.field private eaddress_:Ljava/lang/Object;

.field private ecity_:Ljava/lang/Object;

.field private edistrict_:Ljava/lang/Object;

.field private ename_:Ljava/lang/Object;

.field private eprovince_:Ljava/lang/Object;

.field private inum_:Ljava/lang/Object;

.field private level_:Ljava/lang/Object;

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I

.field private name_:Ljava/lang/Object;

.field private num_:Ljava/lang/Object;

.field private province_:Ljava/lang/Object;

.field private prox_:Ljava/lang/Object;

.field private range_:Ljava/lang/Object;

.field private roadpts_:Ljava/lang/Object;

.field private score_:Ljava/lang/Object;

.field private subpois_:Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$SubPOIS;

.field private x_:Ljava/lang/Object;

.field private y_:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 4175
    new-instance v0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI;-><init>(Z)V

    sput-object v0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI;->defaultInstance:Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI;

    .line 4176
    sget-object v0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI;->defaultInstance:Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI;

    invoke-direct {v0}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI;->initFields()V

    .line 4177
    return-void
.end method

.method private constructor <init>(Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI$Builder;)V
    .locals 1

    .prologue
    const/4 v0, -0x1

    .line 2029
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessage;-><init>(Lcom/google/protobuf/GeneratedMessage$Builder;)V

    .line 2696
    iput-byte v0, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI;->memoizedIsInitialized:B

    .line 2787
    iput v0, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI;->memoizedSerializedSize:I

    .line 2030
    return-void
.end method

.method synthetic constructor <init>(Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI$Builder;Lcom/mapabc/mapapi/geocoder/c;)V
    .locals 0

    .prologue
    .line 2024
    invoke-direct {p0, p1}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI;-><init>(Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 1

    .prologue
    const/4 v0, -0x1

    .line 2031
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage;-><init>()V

    .line 2696
    iput-byte v0, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI;->memoizedIsInitialized:B

    .line 2787
    iput v0, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI;->memoizedSerializedSize:I

    .line 2031
    return-void
.end method

.method static synthetic access$3700()Z
    .locals 1

    .prologue
    .line 2024
    sget-boolean v0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI;->alwaysUseFieldBuilders:Z

    return v0
.end method

.method static synthetic access$3902(Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .prologue
    .line 2024
    iput-object p1, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI;->name_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$4002(Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .prologue
    .line 2024
    iput-object p1, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI;->level_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$4102(Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .prologue
    .line 2024
    iput-object p1, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI;->x_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$4202(Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .prologue
    .line 2024
    iput-object p1, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI;->y_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$4302(Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .prologue
    .line 2024
    iput-object p1, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI;->address_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$4402(Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .prologue
    .line 2024
    iput-object p1, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI;->province_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$4502(Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .prologue
    .line 2024
    iput-object p1, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI;->city_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$4602(Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .prologue
    .line 2024
    iput-object p1, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI;->ename_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$4702(Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .prologue
    .line 2024
    iput-object p1, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI;->district_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$4802(Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .prologue
    .line 2024
    iput-object p1, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI;->range_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$4902(Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .prologue
    .line 2024
    iput-object p1, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI;->num_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$5002(Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .prologue
    .line 2024
    iput-object p1, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI;->inum_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$5102(Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .prologue
    .line 2024
    iput-object p1, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI;->prox_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$5202(Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .prologue
    .line 2024
    iput-object p1, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI;->score_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$5302(Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .prologue
    .line 2024
    iput-object p1, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI;->eprovince_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$5402(Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .prologue
    .line 2024
    iput-object p1, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI;->ecity_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$5502(Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .prologue
    .line 2024
    iput-object p1, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI;->edistrict_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$5602(Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .prologue
    .line 2024
    iput-object p1, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI;->eaddress_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$5702(Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .prologue
    .line 2024
    iput-object p1, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI;->roadpts_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$5802(Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI;Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$SubPOIS;)Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$SubPOIS;
    .locals 0

    .prologue
    .line 2024
    iput-object p1, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI;->subpois_:Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$SubPOIS;

    return-object p1
.end method

.method static synthetic access$5902(Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI;I)I
    .locals 0

    .prologue
    .line 2024
    iput p1, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI;->bitField0_:I

    return p1
.end method

.method private getAddressBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .prologue
    .line 2202
    iget-object v0, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI;->address_:Ljava/lang/Object;

    .line 2203
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 2204
    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 2206
    iput-object v0, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI;->address_:Ljava/lang/Object;

    .line 2209
    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    goto :goto_0
.end method

.method private getCityBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .prologue
    .line 2266
    iget-object v0, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI;->city_:Ljava/lang/Object;

    .line 2267
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 2268
    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 2270
    iput-object v0, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI;->city_:Ljava/lang/Object;

    .line 2273
    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    goto :goto_0
.end method

.method public static getDefaultInstance()Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI;
    .locals 1

    .prologue
    .line 2035
    sget-object v0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI;->defaultInstance:Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 2044
    # getter for: Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf;->internal_static_GeoPOI_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;
    invoke-static {}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf;->access$3200()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method private getDistrictBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .prologue
    .line 2330
    iget-object v0, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI;->district_:Ljava/lang/Object;

    .line 2331
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 2332
    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 2334
    iput-object v0, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI;->district_:Ljava/lang/Object;

    .line 2337
    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    goto :goto_0
.end method

.method private getEaddressBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .prologue
    .line 2618
    iget-object v0, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI;->eaddress_:Ljava/lang/Object;

    .line 2619
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 2620
    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 2622
    iput-object v0, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI;->eaddress_:Ljava/lang/Object;

    .line 2625
    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    goto :goto_0
.end method

.method private getEcityBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .prologue
    .line 2554
    iget-object v0, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI;->ecity_:Ljava/lang/Object;

    .line 2555
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 2556
    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 2558
    iput-object v0, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI;->ecity_:Ljava/lang/Object;

    .line 2561
    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    goto :goto_0
.end method

.method private getEdistrictBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .prologue
    .line 2586
    iget-object v0, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI;->edistrict_:Ljava/lang/Object;

    .line 2587
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 2588
    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 2590
    iput-object v0, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI;->edistrict_:Ljava/lang/Object;

    .line 2593
    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    goto :goto_0
.end method

.method private getEnameBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .prologue
    .line 2298
    iget-object v0, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI;->ename_:Ljava/lang/Object;

    .line 2299
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 2300
    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 2302
    iput-object v0, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI;->ename_:Ljava/lang/Object;

    .line 2305
    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    goto :goto_0
.end method

.method private getEprovinceBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .prologue
    .line 2522
    iget-object v0, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI;->eprovince_:Ljava/lang/Object;

    .line 2523
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 2524
    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 2526
    iput-object v0, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI;->eprovince_:Ljava/lang/Object;

    .line 2529
    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    goto :goto_0
.end method

.method private getInumBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .prologue
    .line 2426
    iget-object v0, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI;->inum_:Ljava/lang/Object;

    .line 2427
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 2428
    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 2430
    iput-object v0, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI;->inum_:Ljava/lang/Object;

    .line 2433
    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    goto :goto_0
.end method

.method private getLevelBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .prologue
    .line 2106
    iget-object v0, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI;->level_:Ljava/lang/Object;

    .line 2107
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 2108
    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 2110
    iput-object v0, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI;->level_:Ljava/lang/Object;

    .line 2113
    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    goto :goto_0
.end method

.method private getNameBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .prologue
    .line 2074
    iget-object v0, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI;->name_:Ljava/lang/Object;

    .line 2075
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 2076
    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 2078
    iput-object v0, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI;->name_:Ljava/lang/Object;

    .line 2081
    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    goto :goto_0
.end method

.method private getNumBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .prologue
    .line 2394
    iget-object v0, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI;->num_:Ljava/lang/Object;

    .line 2395
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 2396
    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 2398
    iput-object v0, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI;->num_:Ljava/lang/Object;

    .line 2401
    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    goto :goto_0
.end method

.method private getProvinceBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .prologue
    .line 2234
    iget-object v0, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI;->province_:Ljava/lang/Object;

    .line 2235
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 2236
    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 2238
    iput-object v0, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI;->province_:Ljava/lang/Object;

    .line 2241
    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    goto :goto_0
.end method

.method private getProxBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .prologue
    .line 2458
    iget-object v0, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI;->prox_:Ljava/lang/Object;

    .line 2459
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 2460
    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 2462
    iput-object v0, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI;->prox_:Ljava/lang/Object;

    .line 2465
    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    goto :goto_0
.end method

.method private getRangeBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .prologue
    .line 2362
    iget-object v0, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI;->range_:Ljava/lang/Object;

    .line 2363
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 2364
    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 2366
    iput-object v0, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI;->range_:Ljava/lang/Object;

    .line 2369
    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    goto :goto_0
.end method

.method private getRoadptsBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .prologue
    .line 2650
    iget-object v0, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI;->roadpts_:Ljava/lang/Object;

    .line 2651
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 2652
    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 2654
    iput-object v0, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI;->roadpts_:Ljava/lang/Object;

    .line 2657
    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    goto :goto_0
.end method

.method private getScoreBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .prologue
    .line 2490
    iget-object v0, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI;->score_:Ljava/lang/Object;

    .line 2491
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 2492
    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 2494
    iput-object v0, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI;->score_:Ljava/lang/Object;

    .line 2497
    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    goto :goto_0
.end method

.method private getXBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .prologue
    .line 2138
    iget-object v0, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI;->x_:Ljava/lang/Object;

    .line 2139
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 2140
    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 2142
    iput-object v0, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI;->x_:Ljava/lang/Object;

    .line 2145
    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    goto :goto_0
.end method

.method private getYBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .prologue
    .line 2170
    iget-object v0, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI;->y_:Ljava/lang/Object;

    .line 2171
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 2172
    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 2174
    iput-object v0, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI;->y_:Ljava/lang/Object;

    .line 2177
    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    goto :goto_0
.end method

.method private initFields()V
    .locals 1

    .prologue
    .line 2675
    const-string v0, ""

    iput-object v0, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI;->name_:Ljava/lang/Object;

    .line 2676
    const-string v0, ""

    iput-object v0, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI;->level_:Ljava/lang/Object;

    .line 2677
    const-string v0, ""

    iput-object v0, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI;->x_:Ljava/lang/Object;

    .line 2678
    const-string v0, ""

    iput-object v0, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI;->y_:Ljava/lang/Object;

    .line 2679
    const-string v0, ""

    iput-object v0, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI;->address_:Ljava/lang/Object;

    .line 2680
    const-string v0, ""

    iput-object v0, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI;->province_:Ljava/lang/Object;

    .line 2681
    const-string v0, ""

    iput-object v0, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI;->city_:Ljava/lang/Object;

    .line 2682
    const-string v0, ""

    iput-object v0, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI;->ename_:Ljava/lang/Object;

    .line 2683
    const-string v0, ""

    iput-object v0, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI;->district_:Ljava/lang/Object;

    .line 2684
    const-string v0, ""

    iput-object v0, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI;->range_:Ljava/lang/Object;

    .line 2685
    const-string v0, ""

    iput-object v0, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI;->num_:Ljava/lang/Object;

    .line 2686
    const-string v0, ""

    iput-object v0, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI;->inum_:Ljava/lang/Object;

    .line 2687
    const-string v0, ""

    iput-object v0, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI;->prox_:Ljava/lang/Object;

    .line 2688
    const-string v0, ""

    iput-object v0, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI;->score_:Ljava/lang/Object;

    .line 2689
    const-string v0, ""

    iput-object v0, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI;->eprovince_:Ljava/lang/Object;

    .line 2690
    const-string v0, ""

    iput-object v0, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI;->ecity_:Ljava/lang/Object;

    .line 2691
    const-string v0, ""

    iput-object v0, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI;->edistrict_:Ljava/lang/Object;

    .line 2692
    const-string v0, ""

    iput-object v0, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI;->eaddress_:Ljava/lang/Object;

    .line 2693
    const-string v0, ""

    iput-object v0, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI;->roadpts_:Ljava/lang/Object;

    .line 2694
    invoke-static {}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$SubPOIS;->getDefaultInstance()Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$SubPOIS;

    move-result-object v0

    iput-object v0, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI;->subpois_:Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$SubPOIS;

    .line 2695
    return-void
.end method

.method public static newBuilder()Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI$Builder;
    .locals 1

    .prologue
    .line 2952
    # invokes: Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI$Builder;->create()Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI$Builder;
    invoke-static {}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI$Builder;->access$3500()Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI;)Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI$Builder;
    .locals 1

    .prologue
    .line 2955
    invoke-static {}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI;->newBuilder()Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI$Builder;->mergeFrom(Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI;)Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2921
    invoke-static {}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI;->newBuilder()Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI$Builder;

    move-result-object v0

    .line 2922
    invoke-virtual {v0, p0}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2923
    # invokes: Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI$Builder;->buildParsed()Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI;
    invoke-static {v0}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI$Builder;->access$3400(Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI$Builder;)Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI;

    move-result-object v0

    .line 2925
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2932
    invoke-static {}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI;->newBuilder()Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI$Builder;

    move-result-object v0

    .line 2933
    invoke-virtual {v0, p0, p1}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2934
    # invokes: Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI$Builder;->buildParsed()Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI;
    invoke-static {v0}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI$Builder;->access$3400(Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI$Builder;)Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI;

    move-result-object v0

    .line 2936
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 2888
    invoke-static {}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI;->newBuilder()Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI$Builder;->mergeFrom(Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI$Builder;

    # invokes: Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI$Builder;->buildParsed()Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI;
    invoke-static {v0}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI$Builder;->access$3400(Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI$Builder;)Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 2894
    invoke-static {}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI;->newBuilder()Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI$Builder;->mergeFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI$Builder;

    # invokes: Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI$Builder;->buildParsed()Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI;
    invoke-static {v0}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI$Builder;->access$3400(Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI$Builder;)Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2942
    invoke-static {}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI;->newBuilder()Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI$Builder;

    # invokes: Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI$Builder;->buildParsed()Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI;
    invoke-static {v0}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI$Builder;->access$3400(Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI$Builder;)Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2948
    invoke-static {}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI;->newBuilder()Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI$Builder;

    move-result-object v0

    # invokes: Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI$Builder;->buildParsed()Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI;
    invoke-static {v0}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI$Builder;->access$3400(Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI$Builder;)Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2910
    invoke-static {}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI;->newBuilder()Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI$Builder;->mergeFrom(Ljava/io/InputStream;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI$Builder;

    # invokes: Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI$Builder;->buildParsed()Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI;
    invoke-static {v0}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI$Builder;->access$3400(Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI$Builder;)Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2916
    invoke-static {}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI;->newBuilder()Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI$Builder;->mergeFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI$Builder;

    # invokes: Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI$Builder;->buildParsed()Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI;
    invoke-static {v0}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI$Builder;->access$3400(Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI$Builder;)Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 2899
    invoke-static {}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI;->newBuilder()Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI$Builder;->mergeFrom([B)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI$Builder;

    # invokes: Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI$Builder;->buildParsed()Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI;
    invoke-static {v0}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI$Builder;->access$3400(Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI$Builder;)Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 2905
    invoke-static {}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI;->newBuilder()Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI$Builder;->mergeFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI$Builder;

    # invokes: Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI$Builder;->buildParsed()Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI;
    invoke-static {v0}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI$Builder;->access$3400(Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI$Builder;)Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getAddress()Ljava/lang/String;
    .locals 2

    .prologue
    .line 2188
    iget-object v0, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI;->address_:Ljava/lang/Object;

    .line 2189
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 2190
    check-cast v0, Ljava/lang/String;

    .line 2198
    :goto_0
    return-object v0

    .line 2192
    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 2194
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 2195
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2196
    iput-object v1, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI;->address_:Ljava/lang/Object;

    :cond_1
    move-object v0, v1

    .line 2198
    goto :goto_0
.end method

.method public getCity()Ljava/lang/String;
    .locals 2

    .prologue
    .line 2252
    iget-object v0, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI;->city_:Ljava/lang/Object;

    .line 2253
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 2254
    check-cast v0, Ljava/lang/String;

    .line 2262
    :goto_0
    return-object v0

    .line 2256
    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 2258
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 2259
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2260
    iput-object v1, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI;->city_:Ljava/lang/Object;

    :cond_1
    move-object v0, v1

    .line 2262
    goto :goto_0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 2024
    invoke-virtual {p0}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI;->getDefaultInstanceForType()Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 2024
    invoke-virtual {p0}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI;->getDefaultInstanceForType()Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI;
    .locals 1

    .prologue
    .line 2039
    sget-object v0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI;->defaultInstance:Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI;

    return-object v0
.end method

.method public getDistrict()Ljava/lang/String;
    .locals 2

    .prologue
    .line 2316
    iget-object v0, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI;->district_:Ljava/lang/Object;

    .line 2317
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 2318
    check-cast v0, Ljava/lang/String;

    .line 2326
    :goto_0
    return-object v0

    .line 2320
    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 2322
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 2323
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2324
    iput-object v1, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI;->district_:Ljava/lang/Object;

    :cond_1
    move-object v0, v1

    .line 2326
    goto :goto_0
.end method

.method public getEaddress()Ljava/lang/String;
    .locals 2

    .prologue
    .line 2604
    iget-object v0, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI;->eaddress_:Ljava/lang/Object;

    .line 2605
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 2606
    check-cast v0, Ljava/lang/String;

    .line 2614
    :goto_0
    return-object v0

    .line 2608
    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 2610
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 2611
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2612
    iput-object v1, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI;->eaddress_:Ljava/lang/Object;

    :cond_1
    move-object v0, v1

    .line 2614
    goto :goto_0
.end method

.method public getEcity()Ljava/lang/String;
    .locals 2

    .prologue
    .line 2540
    iget-object v0, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI;->ecity_:Ljava/lang/Object;

    .line 2541
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 2542
    check-cast v0, Ljava/lang/String;

    .line 2550
    :goto_0
    return-object v0

    .line 2544
    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 2546
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 2547
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2548
    iput-object v1, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI;->ecity_:Ljava/lang/Object;

    :cond_1
    move-object v0, v1

    .line 2550
    goto :goto_0
.end method

.method public getEdistrict()Ljava/lang/String;
    .locals 2

    .prologue
    .line 2572
    iget-object v0, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI;->edistrict_:Ljava/lang/Object;

    .line 2573
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 2574
    check-cast v0, Ljava/lang/String;

    .line 2582
    :goto_0
    return-object v0

    .line 2576
    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 2578
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 2579
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2580
    iput-object v1, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI;->edistrict_:Ljava/lang/Object;

    :cond_1
    move-object v0, v1

    .line 2582
    goto :goto_0
.end method

.method public getEname()Ljava/lang/String;
    .locals 2

    .prologue
    .line 2284
    iget-object v0, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI;->ename_:Ljava/lang/Object;

    .line 2285
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 2286
    check-cast v0, Ljava/lang/String;

    .line 2294
    :goto_0
    return-object v0

    .line 2288
    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 2290
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 2291
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2292
    iput-object v1, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI;->ename_:Ljava/lang/Object;

    :cond_1
    move-object v0, v1

    .line 2294
    goto :goto_0
.end method

.method public getEprovince()Ljava/lang/String;
    .locals 2

    .prologue
    .line 2508
    iget-object v0, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI;->eprovince_:Ljava/lang/Object;

    .line 2509
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 2510
    check-cast v0, Ljava/lang/String;

    .line 2518
    :goto_0
    return-object v0

    .line 2512
    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 2514
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 2515
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2516
    iput-object v1, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI;->eprovince_:Ljava/lang/Object;

    :cond_1
    move-object v0, v1

    .line 2518
    goto :goto_0
.end method

.method public getInum()Ljava/lang/String;
    .locals 2

    .prologue
    .line 2412
    iget-object v0, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI;->inum_:Ljava/lang/Object;

    .line 2413
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 2414
    check-cast v0, Ljava/lang/String;

    .line 2422
    :goto_0
    return-object v0

    .line 2416
    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 2418
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 2419
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2420
    iput-object v1, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI;->inum_:Ljava/lang/Object;

    :cond_1
    move-object v0, v1

    .line 2422
    goto :goto_0
.end method

.method public getLevel()Ljava/lang/String;
    .locals 2

    .prologue
    .line 2092
    iget-object v0, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI;->level_:Ljava/lang/Object;

    .line 2093
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 2094
    check-cast v0, Ljava/lang/String;

    .line 2102
    :goto_0
    return-object v0

    .line 2096
    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 2098
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 2099
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2100
    iput-object v1, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI;->level_:Ljava/lang/Object;

    :cond_1
    move-object v0, v1

    .line 2102
    goto :goto_0
.end method

.method public getName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 2060
    iget-object v0, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI;->name_:Ljava/lang/Object;

    .line 2061
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 2062
    check-cast v0, Ljava/lang/String;

    .line 2070
    :goto_0
    return-object v0

    .line 2064
    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 2066
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 2067
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2068
    iput-object v1, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI;->name_:Ljava/lang/Object;

    :cond_1
    move-object v0, v1

    .line 2070
    goto :goto_0
.end method

.method public getNum()Ljava/lang/String;
    .locals 2

    .prologue
    .line 2380
    iget-object v0, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI;->num_:Ljava/lang/Object;

    .line 2381
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 2382
    check-cast v0, Ljava/lang/String;

    .line 2390
    :goto_0
    return-object v0

    .line 2384
    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 2386
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 2387
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2388
    iput-object v1, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI;->num_:Ljava/lang/Object;

    :cond_1
    move-object v0, v1

    .line 2390
    goto :goto_0
.end method

.method public getProvince()Ljava/lang/String;
    .locals 2

    .prologue
    .line 2220
    iget-object v0, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI;->province_:Ljava/lang/Object;

    .line 2221
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 2222
    check-cast v0, Ljava/lang/String;

    .line 2230
    :goto_0
    return-object v0

    .line 2224
    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 2226
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 2227
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2228
    iput-object v1, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI;->province_:Ljava/lang/Object;

    :cond_1
    move-object v0, v1

    .line 2230
    goto :goto_0
.end method

.method public getProx()Ljava/lang/String;
    .locals 2

    .prologue
    .line 2444
    iget-object v0, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI;->prox_:Ljava/lang/Object;

    .line 2445
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 2446
    check-cast v0, Ljava/lang/String;

    .line 2454
    :goto_0
    return-object v0

    .line 2448
    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 2450
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 2451
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2452
    iput-object v1, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI;->prox_:Ljava/lang/Object;

    :cond_1
    move-object v0, v1

    .line 2454
    goto :goto_0
.end method

.method public getRange()Ljava/lang/String;
    .locals 2

    .prologue
    .line 2348
    iget-object v0, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI;->range_:Ljava/lang/Object;

    .line 2349
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 2350
    check-cast v0, Ljava/lang/String;

    .line 2358
    :goto_0
    return-object v0

    .line 2352
    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 2354
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 2355
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2356
    iput-object v1, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI;->range_:Ljava/lang/Object;

    :cond_1
    move-object v0, v1

    .line 2358
    goto :goto_0
.end method

.method public getRoadpts()Ljava/lang/String;
    .locals 2

    .prologue
    .line 2636
    iget-object v0, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI;->roadpts_:Ljava/lang/Object;

    .line 2637
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 2638
    check-cast v0, Ljava/lang/String;

    .line 2646
    :goto_0
    return-object v0

    .line 2640
    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 2642
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 2643
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2644
    iput-object v1, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI;->roadpts_:Ljava/lang/Object;

    :cond_1
    move-object v0, v1

    .line 2646
    goto :goto_0
.end method

.method public getScore()Ljava/lang/String;
    .locals 2

    .prologue
    .line 2476
    iget-object v0, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI;->score_:Ljava/lang/Object;

    .line 2477
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 2478
    check-cast v0, Ljava/lang/String;

    .line 2486
    :goto_0
    return-object v0

    .line 2480
    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 2482
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 2483
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2484
    iput-object v1, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI;->score_:Ljava/lang/Object;

    :cond_1
    move-object v0, v1

    .line 2486
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

    .line 2789
    iget v0, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI;->memoizedSerializedSize:I

    .line 2790
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 2875
    :goto_0
    return v0

    .line 2792
    :cond_0
    const/4 v0, 0x0

    .line 2793
    iget v1, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v2, :cond_1

    .line 2794
    invoke-direct {p0}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI;->getNameBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v1

    add-int/2addr v0, v1

    .line 2797
    :cond_1
    iget v1, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI;->bitField0_:I

    and-int/lit8 v1, v1, 0x2

    if-ne v1, v3, :cond_2

    .line 2798
    invoke-direct {p0}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI;->getLevelBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v1

    add-int/2addr v0, v1

    .line 2801
    :cond_2
    iget v1, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI;->bitField0_:I

    and-int/lit8 v1, v1, 0x4

    if-ne v1, v4, :cond_3

    .line 2802
    const/4 v1, 0x3

    invoke-direct {p0}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI;->getXBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v1

    add-int/2addr v0, v1

    .line 2805
    :cond_3
    iget v1, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI;->bitField0_:I

    and-int/lit8 v1, v1, 0x8

    if-ne v1, v5, :cond_4

    .line 2806
    invoke-direct {p0}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI;->getYBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-static {v4, v1}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v1

    add-int/2addr v0, v1

    .line 2809
    :cond_4
    iget v1, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI;->bitField0_:I

    and-int/lit8 v1, v1, 0x10

    if-ne v1, v6, :cond_5

    .line 2810
    const/4 v1, 0x5

    invoke-direct {p0}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI;->getAddressBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v1

    add-int/2addr v0, v1

    .line 2813
    :cond_5
    iget v1, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI;->bitField0_:I

    and-int/lit8 v1, v1, 0x20

    const/16 v2, 0x20

    if-ne v1, v2, :cond_6

    .line 2814
    const/4 v1, 0x6

    invoke-direct {p0}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI;->getProvinceBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v1

    add-int/2addr v0, v1

    .line 2817
    :cond_6
    iget v1, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI;->bitField0_:I

    and-int/lit8 v1, v1, 0x40

    const/16 v2, 0x40

    if-ne v1, v2, :cond_7

    .line 2818
    const/4 v1, 0x7

    invoke-direct {p0}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI;->getCityBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v1

    add-int/2addr v0, v1

    .line 2821
    :cond_7
    iget v1, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI;->bitField0_:I

    and-int/lit16 v1, v1, 0x80

    const/16 v2, 0x80

    if-ne v1, v2, :cond_8

    .line 2822
    invoke-direct {p0}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI;->getEnameBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-static {v5, v1}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v1

    add-int/2addr v0, v1

    .line 2825
    :cond_8
    iget v1, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI;->bitField0_:I

    and-int/lit16 v1, v1, 0x100

    const/16 v2, 0x100

    if-ne v1, v2, :cond_9

    .line 2826
    const/16 v1, 0x9

    invoke-direct {p0}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI;->getDistrictBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v1

    add-int/2addr v0, v1

    .line 2829
    :cond_9
    iget v1, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI;->bitField0_:I

    and-int/lit16 v1, v1, 0x200

    const/16 v2, 0x200

    if-ne v1, v2, :cond_a

    .line 2830
    const/16 v1, 0xa

    invoke-direct {p0}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI;->getRangeBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v1

    add-int/2addr v0, v1

    .line 2833
    :cond_a
    iget v1, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI;->bitField0_:I

    and-int/lit16 v1, v1, 0x400

    const/16 v2, 0x400

    if-ne v1, v2, :cond_b

    .line 2834
    const/16 v1, 0xb

    invoke-direct {p0}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI;->getNumBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v1

    add-int/2addr v0, v1

    .line 2837
    :cond_b
    iget v1, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI;->bitField0_:I

    and-int/lit16 v1, v1, 0x800

    const/16 v2, 0x800

    if-ne v1, v2, :cond_c

    .line 2838
    const/16 v1, 0xc

    invoke-direct {p0}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI;->getInumBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v1

    add-int/2addr v0, v1

    .line 2841
    :cond_c
    iget v1, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI;->bitField0_:I

    and-int/lit16 v1, v1, 0x1000

    const/16 v2, 0x1000

    if-ne v1, v2, :cond_d

    .line 2842
    const/16 v1, 0xd

    invoke-direct {p0}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI;->getProxBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v1

    add-int/2addr v0, v1

    .line 2845
    :cond_d
    iget v1, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI;->bitField0_:I

    and-int/lit16 v1, v1, 0x2000

    const/16 v2, 0x2000

    if-ne v1, v2, :cond_e

    .line 2846
    const/16 v1, 0xe

    invoke-direct {p0}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI;->getScoreBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v1

    add-int/2addr v0, v1

    .line 2849
    :cond_e
    iget v1, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI;->bitField0_:I

    and-int/lit16 v1, v1, 0x4000

    const/16 v2, 0x4000

    if-ne v1, v2, :cond_f

    .line 2850
    const/16 v1, 0xf

    invoke-direct {p0}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI;->getEprovinceBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v1

    add-int/2addr v0, v1

    .line 2853
    :cond_f
    iget v1, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI;->bitField0_:I

    const v2, 0x8000

    and-int/2addr v1, v2

    const v2, 0x8000

    if-ne v1, v2, :cond_10

    .line 2854
    invoke-direct {p0}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI;->getEcityBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-static {v6, v1}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v1

    add-int/2addr v0, v1

    .line 2857
    :cond_10
    iget v1, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI;->bitField0_:I

    const/high16 v2, 0x10000

    and-int/2addr v1, v2

    const/high16 v2, 0x10000

    if-ne v1, v2, :cond_11

    .line 2858
    const/16 v1, 0x11

    invoke-direct {p0}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI;->getEdistrictBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v1

    add-int/2addr v0, v1

    .line 2861
    :cond_11
    iget v1, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI;->bitField0_:I

    const/high16 v2, 0x20000

    and-int/2addr v1, v2

    const/high16 v2, 0x20000

    if-ne v1, v2, :cond_12

    .line 2862
    const/16 v1, 0x12

    invoke-direct {p0}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI;->getEaddressBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v1

    add-int/2addr v0, v1

    .line 2865
    :cond_12
    iget v1, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI;->bitField0_:I

    const/high16 v2, 0x40000

    and-int/2addr v1, v2

    const/high16 v2, 0x40000

    if-ne v1, v2, :cond_13

    .line 2866
    const/16 v1, 0x13

    invoke-direct {p0}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI;->getRoadptsBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v1

    add-int/2addr v0, v1

    .line 2869
    :cond_13
    iget v1, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI;->bitField0_:I

    const/high16 v2, 0x80000

    and-int/2addr v1, v2

    const/high16 v2, 0x80000

    if-ne v1, v2, :cond_14

    .line 2870
    const/16 v1, 0x14

    iget-object v2, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI;->subpois_:Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$SubPOIS;

    invoke-static {v1, v2}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v1

    add-int/2addr v0, v1

    .line 2873
    :cond_14
    invoke-virtual {p0}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protobuf/UnknownFieldSet;->getSerializedSize()I

    move-result v1

    add-int/2addr v0, v1

    .line 2874
    iput v0, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI;->memoizedSerializedSize:I

    goto/16 :goto_0
.end method

.method public getSubpois()Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$SubPOIS;
    .locals 1

    .prologue
    .line 2668
    iget-object v0, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI;->subpois_:Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$SubPOIS;

    return-object v0
.end method

.method public getSubpoisOrBuilder()Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$SubPOISOrBuilder;
    .locals 1

    .prologue
    .line 2671
    iget-object v0, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI;->subpois_:Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$SubPOIS;

    return-object v0
.end method

.method public getX()Ljava/lang/String;
    .locals 2

    .prologue
    .line 2124
    iget-object v0, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI;->x_:Ljava/lang/Object;

    .line 2125
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 2126
    check-cast v0, Ljava/lang/String;

    .line 2134
    :goto_0
    return-object v0

    .line 2128
    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 2130
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 2131
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2132
    iput-object v1, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI;->x_:Ljava/lang/Object;

    :cond_1
    move-object v0, v1

    .line 2134
    goto :goto_0
.end method

.method public getY()Ljava/lang/String;
    .locals 2

    .prologue
    .line 2156
    iget-object v0, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI;->y_:Ljava/lang/Object;

    .line 2157
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 2158
    check-cast v0, Ljava/lang/String;

    .line 2166
    :goto_0
    return-object v0

    .line 2160
    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 2162
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 2163
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2164
    iput-object v1, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI;->y_:Ljava/lang/Object;

    :cond_1
    move-object v0, v1

    .line 2166
    goto :goto_0
.end method

.method public hasAddress()Z
    .locals 2

    .prologue
    .line 2185
    iget v0, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI;->bitField0_:I

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

.method public hasCity()Z
    .locals 2

    .prologue
    .line 2249
    iget v0, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI;->bitField0_:I

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

.method public hasDistrict()Z
    .locals 2

    .prologue
    .line 2313
    iget v0, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI;->bitField0_:I

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

.method public hasEaddress()Z
    .locals 2

    .prologue
    const/high16 v1, 0x20000

    .line 2601
    iget v0, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI;->bitField0_:I

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasEcity()Z
    .locals 2

    .prologue
    const v1, 0x8000

    .line 2537
    iget v0, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI;->bitField0_:I

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasEdistrict()Z
    .locals 2

    .prologue
    const/high16 v1, 0x10000

    .line 2569
    iget v0, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI;->bitField0_:I

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasEname()Z
    .locals 2

    .prologue
    .line 2281
    iget v0, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI;->bitField0_:I

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

.method public hasEprovince()Z
    .locals 2

    .prologue
    .line 2505
    iget v0, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI;->bitField0_:I

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

.method public hasInum()Z
    .locals 2

    .prologue
    .line 2409
    iget v0, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI;->bitField0_:I

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

.method public hasLevel()Z
    .locals 2

    .prologue
    .line 2089
    iget v0, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI;->bitField0_:I

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

.method public hasName()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 2057
    iget v1, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasNum()Z
    .locals 2

    .prologue
    .line 2377
    iget v0, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI;->bitField0_:I

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

.method public hasProvince()Z
    .locals 2

    .prologue
    .line 2217
    iget v0, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI;->bitField0_:I

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

.method public hasProx()Z
    .locals 2

    .prologue
    .line 2441
    iget v0, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI;->bitField0_:I

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

.method public hasRange()Z
    .locals 2

    .prologue
    .line 2345
    iget v0, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI;->bitField0_:I

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

.method public hasRoadpts()Z
    .locals 2

    .prologue
    const/high16 v1, 0x40000

    .line 2633
    iget v0, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI;->bitField0_:I

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasScore()Z
    .locals 2

    .prologue
    .line 2473
    iget v0, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI;->bitField0_:I

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

.method public hasSubpois()Z
    .locals 2

    .prologue
    const/high16 v1, 0x80000

    .line 2665
    iget v0, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI;->bitField0_:I

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
    .line 2121
    iget v0, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI;->bitField0_:I

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

.method public hasY()Z
    .locals 2

    .prologue
    .line 2153
    iget v0, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI;->bitField0_:I

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
    .line 2049
    # getter for: Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf;->internal_static_GeoPOI_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    invoke-static {}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf;->access$3300()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 2698
    iget-byte v2, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI;->memoizedIsInitialized:B

    .line 2699
    const/4 v3, -0x1

    if-eq v2, v3, :cond_1

    if-ne v2, v0, :cond_0

    :goto_0
    move v1, v0

    .line 2718
    :goto_1
    return v1

    :cond_0
    move v0, v1

    .line 2699
    goto :goto_0

    .line 2701
    :cond_1
    invoke-virtual {p0}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI;->hasName()Z

    move-result v2

    if-nez v2, :cond_2

    .line 2702
    iput-byte v1, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI;->memoizedIsInitialized:B

    goto :goto_1

    .line 2705
    :cond_2
    invoke-virtual {p0}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI;->hasLevel()Z

    move-result v2

    if-nez v2, :cond_3

    .line 2706
    iput-byte v1, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI;->memoizedIsInitialized:B

    goto :goto_1

    .line 2709
    :cond_3
    invoke-virtual {p0}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI;->hasX()Z

    move-result v2

    if-nez v2, :cond_4

    .line 2710
    iput-byte v1, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI;->memoizedIsInitialized:B

    goto :goto_1

    .line 2713
    :cond_4
    invoke-virtual {p0}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI;->hasY()Z

    move-result v2

    if-nez v2, :cond_5

    .line 2714
    iput-byte v1, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI;->memoizedIsInitialized:B

    goto :goto_1

    .line 2717
    :cond_5
    iput-byte v0, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI;->memoizedIsInitialized:B

    move v1, v0

    .line 2718
    goto :goto_1
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 2024
    invoke-virtual {p0}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI;->newBuilderForType()Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic newBuilderForType(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 2024
    invoke-virtual {p0, p1}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI;->newBuilderForType(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 2024
    invoke-virtual {p0}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI;->newBuilderForType()Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI$Builder;
    .locals 1

    .prologue
    .line 2953
    invoke-static {}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI;->newBuilder()Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected newBuilderForType(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI$Builder;
    .locals 2

    .prologue
    .line 2962
    new-instance v0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI$Builder;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;Lcom/mapabc/mapapi/geocoder/c;)V

    .line 2963
    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 2024
    invoke-virtual {p0}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI;->toBuilder()Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 2024
    invoke-virtual {p0}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI;->toBuilder()Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI$Builder;
    .locals 1

    .prologue
    .line 2957
    invoke-static {p0}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI;->newBuilder(Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI;)Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI$Builder;

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
    .line 2882
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

    .line 2723
    invoke-virtual {p0}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI;->getSerializedSize()I

    .line 2724
    iget v0, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_0

    .line 2725
    invoke-direct {p0}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI;->getNameBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 2727
    :cond_0
    iget v0, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-ne v0, v2, :cond_1

    .line 2728
    invoke-direct {p0}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI;->getLevelBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 2730
    :cond_1
    iget v0, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-ne v0, v3, :cond_2

    .line 2731
    const/4 v0, 0x3

    invoke-direct {p0}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI;->getXBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 2733
    :cond_2
    iget v0, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    if-ne v0, v4, :cond_3

    .line 2734
    invoke-direct {p0}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI;->getYBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p1, v3, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 2736
    :cond_3
    iget v0, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI;->bitField0_:I

    and-int/lit8 v0, v0, 0x10

    if-ne v0, v5, :cond_4

    .line 2737
    const/4 v0, 0x5

    invoke-direct {p0}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI;->getAddressBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 2739
    :cond_4
    iget v0, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI;->bitField0_:I

    and-int/lit8 v0, v0, 0x20

    const/16 v1, 0x20

    if-ne v0, v1, :cond_5

    .line 2740
    const/4 v0, 0x6

    invoke-direct {p0}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI;->getProvinceBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 2742
    :cond_5
    iget v0, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI;->bitField0_:I

    and-int/lit8 v0, v0, 0x40

    const/16 v1, 0x40

    if-ne v0, v1, :cond_6

    .line 2743
    const/4 v0, 0x7

    invoke-direct {p0}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI;->getCityBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 2745
    :cond_6
    iget v0, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI;->bitField0_:I

    and-int/lit16 v0, v0, 0x80

    const/16 v1, 0x80

    if-ne v0, v1, :cond_7

    .line 2746
    invoke-direct {p0}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI;->getEnameBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p1, v4, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 2748
    :cond_7
    iget v0, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI;->bitField0_:I

    and-int/lit16 v0, v0, 0x100

    const/16 v1, 0x100

    if-ne v0, v1, :cond_8

    .line 2749
    const/16 v0, 0x9

    invoke-direct {p0}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI;->getDistrictBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 2751
    :cond_8
    iget v0, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI;->bitField0_:I

    and-int/lit16 v0, v0, 0x200

    const/16 v1, 0x200

    if-ne v0, v1, :cond_9

    .line 2752
    const/16 v0, 0xa

    invoke-direct {p0}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI;->getRangeBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 2754
    :cond_9
    iget v0, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI;->bitField0_:I

    and-int/lit16 v0, v0, 0x400

    const/16 v1, 0x400

    if-ne v0, v1, :cond_a

    .line 2755
    const/16 v0, 0xb

    invoke-direct {p0}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI;->getNumBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 2757
    :cond_a
    iget v0, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI;->bitField0_:I

    and-int/lit16 v0, v0, 0x800

    const/16 v1, 0x800

    if-ne v0, v1, :cond_b

    .line 2758
    const/16 v0, 0xc

    invoke-direct {p0}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI;->getInumBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 2760
    :cond_b
    iget v0, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI;->bitField0_:I

    and-int/lit16 v0, v0, 0x1000

    const/16 v1, 0x1000

    if-ne v0, v1, :cond_c

    .line 2761
    const/16 v0, 0xd

    invoke-direct {p0}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI;->getProxBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 2763
    :cond_c
    iget v0, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI;->bitField0_:I

    and-int/lit16 v0, v0, 0x2000

    const/16 v1, 0x2000

    if-ne v0, v1, :cond_d

    .line 2764
    const/16 v0, 0xe

    invoke-direct {p0}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI;->getScoreBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 2766
    :cond_d
    iget v0, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI;->bitField0_:I

    and-int/lit16 v0, v0, 0x4000

    const/16 v1, 0x4000

    if-ne v0, v1, :cond_e

    .line 2767
    const/16 v0, 0xf

    invoke-direct {p0}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI;->getEprovinceBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 2769
    :cond_e
    iget v0, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI;->bitField0_:I

    const v1, 0x8000

    and-int/2addr v0, v1

    const v1, 0x8000

    if-ne v0, v1, :cond_f

    .line 2770
    invoke-direct {p0}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI;->getEcityBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p1, v5, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 2772
    :cond_f
    iget v0, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI;->bitField0_:I

    const/high16 v1, 0x10000

    and-int/2addr v0, v1

    const/high16 v1, 0x10000

    if-ne v0, v1, :cond_10

    .line 2773
    const/16 v0, 0x11

    invoke-direct {p0}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI;->getEdistrictBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 2775
    :cond_10
    iget v0, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI;->bitField0_:I

    const/high16 v1, 0x20000

    and-int/2addr v0, v1

    const/high16 v1, 0x20000

    if-ne v0, v1, :cond_11

    .line 2776
    const/16 v0, 0x12

    invoke-direct {p0}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI;->getEaddressBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 2778
    :cond_11
    iget v0, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI;->bitField0_:I

    const/high16 v1, 0x40000

    and-int/2addr v0, v1

    const/high16 v1, 0x40000

    if-ne v0, v1, :cond_12

    .line 2779
    const/16 v0, 0x13

    invoke-direct {p0}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI;->getRoadptsBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 2781
    :cond_12
    iget v0, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI;->bitField0_:I

    const/high16 v1, 0x80000

    and-int/2addr v0, v1

    const/high16 v1, 0x80000

    if-ne v0, v1, :cond_13

    .line 2782
    const/16 v0, 0x14

    iget-object v1, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI;->subpois_:Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$SubPOIS;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 2784
    :cond_13
    invoke-virtual {p0}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/UnknownFieldSet;->writeTo(Lcom/google/protobuf/CodedOutputStream;)V

    .line 2785
    return-void
.end method
