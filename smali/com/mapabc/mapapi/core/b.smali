.class final Lcom/mapabc/mapapi/core/b;
.super Ljava/lang/Object;
.source "CommonProtoBuf.java"

# interfaces
.implements Lcom/google/protobuf/Descriptors$FileDescriptor$InternalDescriptorAssigner;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mapabc/mapapi/core/CommonProtoBuf;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 3509
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

    .line 3512
    # setter for: Lcom/mapabc/mapapi/core/CommonProtoBuf;->descriptor:Lcom/google/protobuf/Descriptors$FileDescriptor;
    invoke-static {p1}, Lcom/mapabc/mapapi/core/CommonProtoBuf;->access$5002(Lcom/google/protobuf/Descriptors$FileDescriptor;)Lcom/google/protobuf/Descriptors$FileDescriptor;

    .line 3513
    invoke-static {}, Lcom/mapabc/mapapi/core/CommonProtoBuf;->getDescriptor()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->getMessageTypes()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$Descriptor;

    # setter for: Lcom/mapabc/mapapi/core/CommonProtoBuf;->internal_static_Common_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;
    invoke-static {v0}, Lcom/mapabc/mapapi/core/CommonProtoBuf;->access$002(Lcom/google/protobuf/Descriptors$Descriptor;)Lcom/google/protobuf/Descriptors$Descriptor;

    .line 3515
    new-instance v0, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    # getter for: Lcom/mapabc/mapapi/core/CommonProtoBuf;->internal_static_Common_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;
    invoke-static {}, Lcom/mapabc/mapapi/core/CommonProtoBuf;->access$000()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v1

    new-array v2, v9, [Ljava/lang/String;

    const-string v3, "Config"

    aput-object v3, v2, v5

    const-string v3, "AK"

    aput-object v3, v2, v6

    const-string v3, "ResType"

    aput-object v3, v2, v7

    const-string v3, "Enc"

    aput-object v3, v2, v8

    const-class v3, Lcom/mapabc/mapapi/core/CommonProtoBuf$Common;

    const-class v4, Lcom/mapabc/mapapi/core/CommonProtoBuf$Common$Builder;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;-><init>(Lcom/google/protobuf/Descriptors$Descriptor;[Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;)V

    # setter for: Lcom/mapabc/mapapi/core/CommonProtoBuf;->internal_static_Common_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    invoke-static {v0}, Lcom/mapabc/mapapi/core/CommonProtoBuf;->access$102(Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;)Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    .line 3521
    invoke-static {}, Lcom/mapabc/mapapi/core/CommonProtoBuf;->getDescriptor()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->getMessageTypes()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$Descriptor;

    # setter for: Lcom/mapabc/mapapi/core/CommonProtoBuf;->internal_static_POI_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;
    invoke-static {v0}, Lcom/mapabc/mapapi/core/CommonProtoBuf;->access$1202(Lcom/google/protobuf/Descriptors$Descriptor;)Lcom/google/protobuf/Descriptors$Descriptor;

    .line 3523
    new-instance v0, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    # getter for: Lcom/mapabc/mapapi/core/CommonProtoBuf;->internal_static_POI_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;
    invoke-static {}, Lcom/mapabc/mapapi/core/CommonProtoBuf;->access$1200()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v1

    const/16 v2, 0x16

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "Pguid"

    aput-object v3, v2, v5

    const-string v3, "Name"

    aput-object v3, v2, v6

    const-string v3, "Type"

    aput-object v3, v2, v7

    const-string v3, "X"

    aput-object v3, v2, v8

    const-string v3, "Y"

    aput-object v3, v2, v9

    const/4 v3, 0x5

    const-string v4, "Srctype"

    aput-object v4, v2, v3

    const/4 v3, 0x6

    const-string v4, "Address"

    aput-object v4, v2, v3

    const/4 v3, 0x7

    const-string v4, "Timestamp"

    aput-object v4, v2, v3

    const/16 v3, 0x8

    const-string v4, "Match"

    aput-object v4, v2, v3

    const/16 v3, 0x9

    const-string v4, "Code"

    aput-object v4, v2, v3

    const/16 v3, 0xa

    const-string v4, "Newtype"

    aput-object v4, v2, v3

    const/16 v3, 0xb

    const-string v4, "Citycode"

    aput-object v4, v2, v3

    const/16 v3, 0xc

    const-string v4, "Typecode"

    aput-object v4, v2, v3

    const/16 v3, 0xd

    const-string v4, "Gridcode"

    aput-object v4, v2, v3

    const/16 v3, 0xe

    const-string v4, "Buscode"

    aput-object v4, v2, v3

    const/16 v3, 0xf

    const-string v4, "Url"

    aput-object v4, v2, v3

    const/16 v3, 0x10

    const-string v4, "Xml"

    aput-object v4, v2, v3

    const/16 v3, 0x11

    const-string v4, "Imageid"

    aput-object v4, v2, v3

    const/16 v3, 0x12

    const-string v4, "Tel"

    aput-object v4, v2, v3

    const/16 v3, 0x13

    const-string v4, "Linkid"

    aput-object v4, v2, v3

    const/16 v3, 0x14

    const-string v4, "Distance"

    aput-object v4, v2, v3

    const/16 v3, 0x15

    const-string v4, "Drivedistance"

    aput-object v4, v2, v3

    const-class v3, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI;

    const-class v4, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI$Builder;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;-><init>(Lcom/google/protobuf/Descriptors$Descriptor;[Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;)V

    # setter for: Lcom/mapabc/mapapi/core/CommonProtoBuf;->internal_static_POI_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    invoke-static {v0}, Lcom/mapabc/mapapi/core/CommonProtoBuf;->access$1302(Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;)Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    .line 3529
    invoke-static {}, Lcom/mapabc/mapapi/core/CommonProtoBuf;->getDescriptor()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->getMessageTypes()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$Descriptor;

    # setter for: Lcom/mapabc/mapapi/core/CommonProtoBuf;->internal_static_Spellcorrect_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;
    invoke-static {v0}, Lcom/mapabc/mapapi/core/CommonProtoBuf;->access$4202(Lcom/google/protobuf/Descriptors$Descriptor;)Lcom/google/protobuf/Descriptors$Descriptor;

    .line 3531
    new-instance v0, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    # getter for: Lcom/mapabc/mapapi/core/CommonProtoBuf;->internal_static_Spellcorrect_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;
    invoke-static {}, Lcom/mapabc/mapapi/core/CommonProtoBuf;->access$4200()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v1

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "Data"

    aput-object v3, v2, v5

    const-class v3, Lcom/mapabc/mapapi/core/CommonProtoBuf$Spellcorrect;

    const-class v4, Lcom/mapabc/mapapi/core/CommonProtoBuf$Spellcorrect$Builder;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;-><init>(Lcom/google/protobuf/Descriptors$Descriptor;[Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;)V

    # setter for: Lcom/mapabc/mapapi/core/CommonProtoBuf;->internal_static_Spellcorrect_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    invoke-static {v0}, Lcom/mapabc/mapapi/core/CommonProtoBuf;->access$4302(Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;)Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    .line 3537
    const/4 v0, 0x0

    return-object v0
.end method
