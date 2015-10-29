.class final Lcom/mapabc/mapapi/geocoder/c;
.super Ljava/lang/Object;
.source "GeocodingProtoBuf.java"

# interfaces
.implements Lcom/google/protobuf/Descriptors$FileDescriptor$InternalDescriptorAssigner;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 5450
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public assignDescriptors(Lcom/google/protobuf/Descriptors$FileDescriptor;)Lcom/google/protobuf/ExtensionRegistry;
    .locals 10

    .prologue
    const/4 v9, 0x4

    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 5453
    # setter for: Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf;->descriptor:Lcom/google/protobuf/Descriptors$FileDescriptor;
    invoke-static {p1}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf;->access$8102(Lcom/google/protobuf/Descriptors$FileDescriptor;)Lcom/google/protobuf/Descriptors$FileDescriptor;

    .line 5454
    invoke-static {}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf;->getDescriptor()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->getMessageTypes()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$Descriptor;

    # setter for: Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf;->internal_static_GeocodingRequest_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;
    invoke-static {v0}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf;->access$002(Lcom/google/protobuf/Descriptors$Descriptor;)Lcom/google/protobuf/Descriptors$Descriptor;

    .line 5456
    new-instance v0, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    # getter for: Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf;->internal_static_GeocodingRequest_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;
    invoke-static {}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf;->access$000()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v1

    new-array v2, v9, [Ljava/lang/String;

    const-string v3, "Common"

    aput-object v3, v2, v5

    const-string v3, "Address"

    aput-object v3, v2, v6

    const-string v3, "PoiNumber"

    aput-object v3, v2, v7

    const-string v3, "Ver"

    aput-object v3, v2, v8

    const-class v3, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeocodingRequest;

    const-class v4, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeocodingRequest$Builder;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;-><init>(Lcom/google/protobuf/Descriptors$Descriptor;[Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;)V

    # setter for: Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf;->internal_static_GeocodingRequest_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    invoke-static {v0}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf;->access$102(Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;)Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    .line 5462
    invoke-static {}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf;->getDescriptor()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->getMessageTypes()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$Descriptor;

    # setter for: Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf;->internal_static_GeocodingResponse_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;
    invoke-static {v0}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf;->access$1202(Lcom/google/protobuf/Descriptors$Descriptor;)Lcom/google/protobuf/Descriptors$Descriptor;

    .line 5464
    new-instance v0, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    # getter for: Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf;->internal_static_GeocodingResponse_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;
    invoke-static {}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf;->access$1200()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v1

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "Count"

    aput-object v3, v2, v5

    const-string v3, "Geocoding"

    aput-object v3, v2, v6

    const-string v3, "Spellcorrect"

    aput-object v3, v2, v7

    const-class v3, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeocodingResponse;

    const-class v4, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeocodingResponse$Builder;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;-><init>(Lcom/google/protobuf/Descriptors$Descriptor;[Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;)V

    # setter for: Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf;->internal_static_GeocodingResponse_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    invoke-static {v0}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf;->access$1302(Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;)Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    .line 5470
    invoke-static {}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf;->getDescriptor()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->getMessageTypes()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$Descriptor;

    # setter for: Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf;->internal_static_Geocoding_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;
    invoke-static {v0}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf;->access$2302(Lcom/google/protobuf/Descriptors$Descriptor;)Lcom/google/protobuf/Descriptors$Descriptor;

    .line 5472
    new-instance v0, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    # getter for: Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf;->internal_static_Geocoding_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;
    invoke-static {}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf;->access$2300()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v1

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "Poi"

    aput-object v3, v2, v5

    const-class v3, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$Geocoding;

    const-class v4, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$Geocoding$Builder;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;-><init>(Lcom/google/protobuf/Descriptors$Descriptor;[Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;)V

    # setter for: Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf;->internal_static_Geocoding_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    invoke-static {v0}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf;->access$2402(Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;)Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    .line 5478
    invoke-static {}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf;->getDescriptor()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->getMessageTypes()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$Descriptor;

    # setter for: Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf;->internal_static_GeoPOI_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;
    invoke-static {v0}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf;->access$3202(Lcom/google/protobuf/Descriptors$Descriptor;)Lcom/google/protobuf/Descriptors$Descriptor;

    .line 5480
    new-instance v0, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    # getter for: Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf;->internal_static_GeoPOI_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;
    invoke-static {}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf;->access$3200()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v1

    const/16 v2, 0x14

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "Name"

    aput-object v3, v2, v5

    const-string v3, "Level"

    aput-object v3, v2, v6

    const-string v3, "X"

    aput-object v3, v2, v7

    const-string v3, "Y"

    aput-object v3, v2, v8

    const-string v3, "Address"

    aput-object v3, v2, v9

    const/4 v3, 0x5

    const-string v4, "Province"

    aput-object v4, v2, v3

    const/4 v3, 0x6

    const-string v4, "City"

    aput-object v4, v2, v3

    const/4 v3, 0x7

    const-string v4, "Ename"

    aput-object v4, v2, v3

    const/16 v3, 0x8

    const-string v4, "District"

    aput-object v4, v2, v3

    const/16 v3, 0x9

    const-string v4, "Range"

    aput-object v4, v2, v3

    const/16 v3, 0xa

    const-string v4, "Num"

    aput-object v4, v2, v3

    const/16 v3, 0xb

    const-string v4, "Inum"

    aput-object v4, v2, v3

    const/16 v3, 0xc

    const-string v4, "Prox"

    aput-object v4, v2, v3

    const/16 v3, 0xd

    const-string v4, "Score"

    aput-object v4, v2, v3

    const/16 v3, 0xe

    const-string v4, "Eprovince"

    aput-object v4, v2, v3

    const/16 v3, 0xf

    const-string v4, "Ecity"

    aput-object v4, v2, v3

    const/16 v3, 0x10

    const-string v4, "Edistrict"

    aput-object v4, v2, v3

    const/16 v3, 0x11

    const-string v4, "Eaddress"

    aput-object v4, v2, v3

    const/16 v3, 0x12

    const-string v4, "Roadpts"

    aput-object v4, v2, v3

    const/16 v3, 0x13

    const-string v4, "Subpois"

    aput-object v4, v2, v3

    const-class v3, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI;

    const-class v4, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI$Builder;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;-><init>(Lcom/google/protobuf/Descriptors$Descriptor;[Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;)V

    # setter for: Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf;->internal_static_GeoPOI_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    invoke-static {v0}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf;->access$3302(Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;)Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    .line 5486
    invoke-static {}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf;->getDescriptor()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->getMessageTypes()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$Descriptor;

    # setter for: Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf;->internal_static_SubPOIS_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;
    invoke-static {v0}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf;->access$6002(Lcom/google/protobuf/Descriptors$Descriptor;)Lcom/google/protobuf/Descriptors$Descriptor;

    .line 5488
    new-instance v0, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    # getter for: Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf;->internal_static_SubPOIS_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;
    invoke-static {}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf;->access$6000()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v1

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "Subpoi"

    aput-object v3, v2, v5

    const-class v3, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$SubPOIS;

    const-class v4, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$SubPOIS$Builder;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;-><init>(Lcom/google/protobuf/Descriptors$Descriptor;[Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;)V

    # setter for: Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf;->internal_static_SubPOIS_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    invoke-static {v0}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf;->access$6102(Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;)Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    .line 5494
    invoke-static {}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf;->getDescriptor()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->getMessageTypes()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x5

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$Descriptor;

    # setter for: Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf;->internal_static_SubPOI_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;
    invoke-static {v0}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf;->access$6902(Lcom/google/protobuf/Descriptors$Descriptor;)Lcom/google/protobuf/Descriptors$Descriptor;

    .line 5496
    new-instance v0, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    # getter for: Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf;->internal_static_SubPOI_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;
    invoke-static {}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf;->access$6900()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v1

    new-array v2, v9, [Ljava/lang/String;

    const-string v3, "Name"

    aput-object v3, v2, v5

    const-string v3, "Ename"

    aput-object v3, v2, v6

    const-string v3, "X"

    aput-object v3, v2, v7

    const-string v3, "Y"

    aput-object v3, v2, v8

    const-class v3, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$SubPOI;

    const-class v4, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$SubPOI$Builder;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;-><init>(Lcom/google/protobuf/Descriptors$Descriptor;[Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;)V

    # setter for: Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf;->internal_static_SubPOI_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    invoke-static {v0}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf;->access$7002(Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;)Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    .line 5502
    const/4 v0, 0x0

    return-object v0
.end method
