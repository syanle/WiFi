.class final Lcom/mapabc/mapapi/core/v;
.super Ljava/lang/Object;
.source "RGCProtoBuf.java"

# interfaces
.implements Lcom/google/protobuf/Descriptors$FileDescriptor$InternalDescriptorAssigner;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mapabc/mapapi/core/RGCProtoBuf;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 2560
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public assignDescriptors(Lcom/google/protobuf/Descriptors$FileDescriptor;)Lcom/google/protobuf/ExtensionRegistry;
    .locals 9

    .prologue
    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 2563
    # setter for: Lcom/mapabc/mapapi/core/RGCProtoBuf;->descriptor:Lcom/google/protobuf/Descriptors$FileDescriptor;
    invoke-static {p1}, Lcom/mapabc/mapapi/core/RGCProtoBuf;->access$3902(Lcom/google/protobuf/Descriptors$FileDescriptor;)Lcom/google/protobuf/Descriptors$FileDescriptor;

    .line 2564
    invoke-static {}, Lcom/mapabc/mapapi/core/RGCProtoBuf;->getDescriptor()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->getMessageTypes()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$Descriptor;

    # setter for: Lcom/mapabc/mapapi/core/RGCProtoBuf;->internal_static_RGCRequest_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;
    invoke-static {v0}, Lcom/mapabc/mapapi/core/RGCProtoBuf;->access$002(Lcom/google/protobuf/Descriptors$Descriptor;)Lcom/google/protobuf/Descriptors$Descriptor;

    .line 2566
    new-instance v0, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    # getter for: Lcom/mapabc/mapapi/core/RGCProtoBuf;->internal_static_RGCRequest_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;
    invoke-static {}, Lcom/mapabc/mapapi/core/RGCProtoBuf;->access$000()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v1

    const/16 v2, 0xb

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "Common"

    aput-object v3, v2, v5

    const-string v3, "X1"

    aput-object v3, v2, v6

    const-string v3, "Y1"

    aput-object v3, v2, v7

    const-string v3, "X2"

    aput-object v3, v2, v8

    const/4 v3, 0x4

    const-string v4, "Y2"

    aput-object v4, v2, v3

    const/4 v3, 0x5

    const-string v4, "Coors"

    aput-object v4, v2, v3

    const/4 v3, 0x6

    const-string v4, "Cr"

    aput-object v4, v2, v3

    const/4 v3, 0x7

    const-string v4, "Flag"

    aput-object v4, v2, v3

    const/16 v3, 0x8

    const-string v4, "Type"

    aput-object v4, v2, v3

    const/16 v3, 0x9

    const-string v4, "Z"

    aput-object v4, v2, v3

    const/16 v3, 0xa

    const-string v4, "Ts"

    aput-object v4, v2, v3

    const-class v3, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCRequest;

    const-class v4, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCRequest$Builder;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;-><init>(Lcom/google/protobuf/Descriptors$Descriptor;[Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;)V

    # setter for: Lcom/mapabc/mapapi/core/RGCProtoBuf;->internal_static_RGCRequest_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    invoke-static {v0}, Lcom/mapabc/mapapi/core/RGCProtoBuf;->access$102(Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;)Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    .line 2572
    invoke-static {}, Lcom/mapabc/mapapi/core/RGCProtoBuf;->getDescriptor()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->getMessageTypes()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$Descriptor;

    # setter for: Lcom/mapabc/mapapi/core/RGCProtoBuf;->internal_static_RGCResponse_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;
    invoke-static {v0}, Lcom/mapabc/mapapi/core/RGCProtoBuf;->access$1902(Lcom/google/protobuf/Descriptors$Descriptor;)Lcom/google/protobuf/Descriptors$Descriptor;

    .line 2574
    new-instance v0, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    # getter for: Lcom/mapabc/mapapi/core/RGCProtoBuf;->internal_static_RGCResponse_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;
    invoke-static {}, Lcom/mapabc/mapapi/core/RGCProtoBuf;->access$1900()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v1

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "RgcItem"

    aput-object v3, v2, v5

    const-class v3, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCResponse;

    const-class v4, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCResponse$Builder;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;-><init>(Lcom/google/protobuf/Descriptors$Descriptor;[Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;)V

    # setter for: Lcom/mapabc/mapapi/core/RGCProtoBuf;->internal_static_RGCResponse_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    invoke-static {v0}, Lcom/mapabc/mapapi/core/RGCProtoBuf;->access$2002(Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;)Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    .line 2580
    invoke-static {}, Lcom/mapabc/mapapi/core/RGCProtoBuf;->getDescriptor()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->getMessageTypes()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$Descriptor;

    # setter for: Lcom/mapabc/mapapi/core/RGCProtoBuf;->internal_static_RGCItem_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;
    invoke-static {v0}, Lcom/mapabc/mapapi/core/RGCProtoBuf;->access$2802(Lcom/google/protobuf/Descriptors$Descriptor;)Lcom/google/protobuf/Descriptors$Descriptor;

    .line 2582
    new-instance v0, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    # getter for: Lcom/mapabc/mapapi/core/RGCProtoBuf;->internal_static_RGCItem_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;
    invoke-static {}, Lcom/mapabc/mapapi/core/RGCProtoBuf;->access$2800()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v1

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "X"

    aput-object v3, v2, v5

    const-string v3, "Y"

    aput-object v3, v2, v6

    const-string v3, "Gridcode"

    aput-object v3, v2, v7

    const-class v3, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCItem;

    const-class v4, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCItem$Builder;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;-><init>(Lcom/google/protobuf/Descriptors$Descriptor;[Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;)V

    # setter for: Lcom/mapabc/mapapi/core/RGCProtoBuf;->internal_static_RGCItem_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    invoke-static {v0}, Lcom/mapabc/mapapi/core/RGCProtoBuf;->access$2902(Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;)Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    .line 2588
    const/4 v0, 0x0

    return-object v0
.end method
