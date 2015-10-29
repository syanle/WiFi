.class public final Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$ReverseGeocodingResponse$Builder;
.super Lcom/google/protobuf/GeneratedMessage$Builder;
.source "ReverseGeocodingProtoBuf.java"

# interfaces
.implements Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$ReverseGeocodingResponseOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$ReverseGeocodingResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessage$Builder",
        "<",
        "Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$ReverseGeocodingResponse$Builder;",
        ">;",
        "Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$ReverseGeocodingResponseOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private spatialBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/RepeatedFieldBuilder",
            "<",
            "Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Spatial;",
            "Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Spatial$Builder;",
            "Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$SpatialOrBuilder;",
            ">;"
        }
    .end annotation
.end field

.field private spatial_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Spatial;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 758
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;-><init>()V

    .line 920
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$ReverseGeocodingResponse$Builder;->spatial_:Ljava/util/List;

    .line 759
    invoke-direct {p0}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$ReverseGeocodingResponse$Builder;->maybeForceBuilderInitialization()V

    .line 760
    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V
    .locals 1

    .prologue
    .line 763
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessage$Builder;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V

    .line 920
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$ReverseGeocodingResponse$Builder;->spatial_:Ljava/util/List;

    .line 764
    invoke-direct {p0}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$ReverseGeocodingResponse$Builder;->maybeForceBuilderInitialization()V

    .line 765
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;Lcom/mapabc/mapapi/core/z;)V
    .locals 0

    .prologue
    .line 744
    invoke-direct {p0, p1}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$ReverseGeocodingResponse$Builder;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V

    return-void
.end method

.method static synthetic access$1200(Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$ReverseGeocodingResponse$Builder;)Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$ReverseGeocodingResponse;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 744
    invoke-direct {p0}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$ReverseGeocodingResponse$Builder;->buildParsed()Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$ReverseGeocodingResponse;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1300()Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$ReverseGeocodingResponse$Builder;
    .locals 1

    .prologue
    .line 744
    invoke-static {}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$ReverseGeocodingResponse$Builder;->create()Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$ReverseGeocodingResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method private buildParsed()Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$ReverseGeocodingResponse;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 809
    invoke-virtual {p0}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$ReverseGeocodingResponse$Builder;->buildPartial()Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$ReverseGeocodingResponse;

    move-result-object v0

    .line 810
    invoke-virtual {v0}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$ReverseGeocodingResponse;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_0

    .line 811
    invoke-static {v0}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$ReverseGeocodingResponse$Builder;->newUninitializedMessageException(Lcom/google/protobuf/Message;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/UninitializedMessageException;->asInvalidProtocolBufferException()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0

    .line 814
    :cond_0
    return-object v0
.end method

.method private static create()Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$ReverseGeocodingResponse$Builder;
    .locals 1

    .prologue
    .line 772
    new-instance v0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$ReverseGeocodingResponse$Builder;

    invoke-direct {v0}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$ReverseGeocodingResponse$Builder;-><init>()V

    return-object v0
.end method

.method private ensureSpatialIsMutable()V
    .locals 2

    .prologue
    .line 923
    iget v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$ReverseGeocodingResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 924
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$ReverseGeocodingResponse$Builder;->spatial_:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$ReverseGeocodingResponse$Builder;->spatial_:Ljava/util/List;

    .line 925
    iget v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$ReverseGeocodingResponse$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$ReverseGeocodingResponse$Builder;->bitField0_:I

    .line 927
    :cond_0
    return-void
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 749
    # getter for: Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf;->internal_static_ReverseGeocodingResponse_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;
    invoke-static {}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf;->access$1000()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method private getSpatialFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilder;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/RepeatedFieldBuilder",
            "<",
            "Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Spatial;",
            "Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Spatial$Builder;",
            "Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$SpatialOrBuilder;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v0, 0x1

    .line 1093
    iget-object v1, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$ReverseGeocodingResponse$Builder;->spatialBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v1, :cond_0

    .line 1094
    new-instance v1, Lcom/google/protobuf/RepeatedFieldBuilder;

    iget-object v2, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$ReverseGeocodingResponse$Builder;->spatial_:Ljava/util/List;

    iget v3, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$ReverseGeocodingResponse$Builder;->bitField0_:I

    and-int/lit8 v3, v3, 0x1

    if-ne v3, v0, :cond_1

    :goto_0
    invoke-virtual {p0}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$ReverseGeocodingResponse$Builder;->getParentForChildren()Lcom/google/protobuf/GeneratedMessage$BuilderParent;

    move-result-object v3

    invoke-virtual {p0}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$ReverseGeocodingResponse$Builder;->isClean()Z

    move-result v4

    invoke-direct {v1, v2, v0, v3, v4}, Lcom/google/protobuf/RepeatedFieldBuilder;-><init>(Ljava/util/List;ZLcom/google/protobuf/GeneratedMessage$BuilderParent;Z)V

    iput-object v1, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$ReverseGeocodingResponse$Builder;->spatialBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    .line 1100
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$ReverseGeocodingResponse$Builder;->spatial_:Ljava/util/List;

    .line 1102
    :cond_0
    iget-object v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$ReverseGeocodingResponse$Builder;->spatialBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    return-object v0

    .line 1094
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private maybeForceBuilderInitialization()V
    .locals 1

    .prologue
    .line 767
    # getter for: Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$ReverseGeocodingResponse;->alwaysUseFieldBuilders:Z
    invoke-static {}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$ReverseGeocodingResponse;->access$1500()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 768
    invoke-direct {p0}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$ReverseGeocodingResponse$Builder;->getSpatialFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilder;

    .line 770
    :cond_0
    return-void
.end method


# virtual methods
.method public addAllSpatial(Ljava/lang/Iterable;)Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$ReverseGeocodingResponse$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<+",
            "Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Spatial;",
            ">;)",
            "Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$ReverseGeocodingResponse$Builder;"
        }
    .end annotation

    .prologue
    .line 1029
    iget-object v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$ReverseGeocodingResponse$Builder;->spatialBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 1030
    invoke-direct {p0}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$ReverseGeocodingResponse$Builder;->ensureSpatialIsMutable()V

    .line 1031
    iget-object v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$ReverseGeocodingResponse$Builder;->spatial_:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/google/protobuf/GeneratedMessage$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    .line 1032
    invoke-virtual {p0}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$ReverseGeocodingResponse$Builder;->onChanged()V

    .line 1036
    :goto_0
    return-object p0

    .line 1034
    :cond_0
    iget-object v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$ReverseGeocodingResponse$Builder;->spatialBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilder;->addAllMessages(Ljava/lang/Iterable;)Lcom/google/protobuf/RepeatedFieldBuilder;

    goto :goto_0
.end method

.method public addSpatial(ILcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Spatial$Builder;)Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$ReverseGeocodingResponse$Builder;
    .locals 2

    .prologue
    .line 1018
    iget-object v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$ReverseGeocodingResponse$Builder;->spatialBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 1019
    invoke-direct {p0}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$ReverseGeocodingResponse$Builder;->ensureSpatialIsMutable()V

    .line 1020
    iget-object v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$ReverseGeocodingResponse$Builder;->spatial_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Spatial$Builder;->build()Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Spatial;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 1021
    invoke-virtual {p0}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$ReverseGeocodingResponse$Builder;->onChanged()V

    .line 1025
    :goto_0
    return-object p0

    .line 1023
    :cond_0
    iget-object v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$ReverseGeocodingResponse$Builder;->spatialBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {p2}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Spatial$Builder;->build()Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Spatial;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/google/protobuf/RepeatedFieldBuilder;->addMessage(ILcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/RepeatedFieldBuilder;

    goto :goto_0
.end method

.method public addSpatial(ILcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Spatial;)Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$ReverseGeocodingResponse$Builder;
    .locals 1

    .prologue
    .line 993
    iget-object v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$ReverseGeocodingResponse$Builder;->spatialBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_1

    .line 994
    if-nez p2, :cond_0

    .line 995
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 997
    :cond_0
    invoke-direct {p0}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$ReverseGeocodingResponse$Builder;->ensureSpatialIsMutable()V

    .line 998
    iget-object v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$ReverseGeocodingResponse$Builder;->spatial_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 999
    invoke-virtual {p0}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$ReverseGeocodingResponse$Builder;->onChanged()V

    .line 1003
    :goto_0
    return-object p0

    .line 1001
    :cond_1
    iget-object v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$ReverseGeocodingResponse$Builder;->spatialBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0, p1, p2}, Lcom/google/protobuf/RepeatedFieldBuilder;->addMessage(ILcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/RepeatedFieldBuilder;

    goto :goto_0
.end method

.method public addSpatial(Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Spatial$Builder;)Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$ReverseGeocodingResponse$Builder;
    .locals 2

    .prologue
    .line 1007
    iget-object v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$ReverseGeocodingResponse$Builder;->spatialBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 1008
    invoke-direct {p0}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$ReverseGeocodingResponse$Builder;->ensureSpatialIsMutable()V

    .line 1009
    iget-object v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$ReverseGeocodingResponse$Builder;->spatial_:Ljava/util/List;

    invoke-virtual {p1}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Spatial$Builder;->build()Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Spatial;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1010
    invoke-virtual {p0}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$ReverseGeocodingResponse$Builder;->onChanged()V

    .line 1014
    :goto_0
    return-object p0

    .line 1012
    :cond_0
    iget-object v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$ReverseGeocodingResponse$Builder;->spatialBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {p1}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Spatial$Builder;->build()Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Spatial;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/protobuf/RepeatedFieldBuilder;->addMessage(Lcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/RepeatedFieldBuilder;

    goto :goto_0
.end method

.method public addSpatial(Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Spatial;)Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$ReverseGeocodingResponse$Builder;
    .locals 1

    .prologue
    .line 979
    iget-object v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$ReverseGeocodingResponse$Builder;->spatialBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_1

    .line 980
    if-nez p1, :cond_0

    .line 981
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 983
    :cond_0
    invoke-direct {p0}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$ReverseGeocodingResponse$Builder;->ensureSpatialIsMutable()V

    .line 984
    iget-object v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$ReverseGeocodingResponse$Builder;->spatial_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 985
    invoke-virtual {p0}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$ReverseGeocodingResponse$Builder;->onChanged()V

    .line 989
    :goto_0
    return-object p0

    .line 987
    :cond_1
    iget-object v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$ReverseGeocodingResponse$Builder;->spatialBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilder;->addMessage(Lcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/RepeatedFieldBuilder;

    goto :goto_0
.end method

.method public addSpatialBuilder()Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Spatial$Builder;
    .locals 2

    .prologue
    .line 1078
    invoke-direct {p0}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$ReverseGeocodingResponse$Builder;->getSpatialFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilder;

    move-result-object v0

    invoke-static {}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Spatial;->getDefaultInstance()Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Spatial;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/protobuf/RepeatedFieldBuilder;->addBuilder(Lcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/GeneratedMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Spatial$Builder;

    return-object v0
.end method

.method public addSpatialBuilder(I)Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Spatial$Builder;
    .locals 2

    .prologue
    .line 1083
    invoke-direct {p0}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$ReverseGeocodingResponse$Builder;->getSpatialFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilder;

    move-result-object v0

    invoke-static {}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Spatial;->getDefaultInstance()Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Spatial;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/google/protobuf/RepeatedFieldBuilder;->addBuilder(ILcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/GeneratedMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Spatial$Builder;

    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 744
    invoke-virtual {p0}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$ReverseGeocodingResponse$Builder;->build()Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$ReverseGeocodingResponse;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 744
    invoke-virtual {p0}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$ReverseGeocodingResponse$Builder;->build()Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$ReverseGeocodingResponse;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$ReverseGeocodingResponse;
    .locals 2

    .prologue
    .line 800
    invoke-virtual {p0}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$ReverseGeocodingResponse$Builder;->buildPartial()Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$ReverseGeocodingResponse;

    move-result-object v0

    .line 801
    invoke-virtual {v0}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$ReverseGeocodingResponse;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_0

    .line 802
    invoke-static {v0}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$ReverseGeocodingResponse$Builder;->newUninitializedMessageException(Lcom/google/protobuf/Message;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0

    .line 804
    :cond_0
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 744
    invoke-virtual {p0}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$ReverseGeocodingResponse$Builder;->buildPartial()Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$ReverseGeocodingResponse;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 744
    invoke-virtual {p0}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$ReverseGeocodingResponse$Builder;->buildPartial()Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$ReverseGeocodingResponse;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$ReverseGeocodingResponse;
    .locals 3

    .prologue
    .line 818
    new-instance v0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$ReverseGeocodingResponse;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$ReverseGeocodingResponse;-><init>(Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$ReverseGeocodingResponse$Builder;Lcom/mapabc/mapapi/core/z;)V

    .line 819
    iget v1, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$ReverseGeocodingResponse$Builder;->bitField0_:I

    .line 820
    iget-object v1, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$ReverseGeocodingResponse$Builder;->spatialBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v1, :cond_1

    .line 821
    iget v1, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$ReverseGeocodingResponse$Builder;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 822
    iget-object v1, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$ReverseGeocodingResponse$Builder;->spatial_:Ljava/util/List;

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$ReverseGeocodingResponse$Builder;->spatial_:Ljava/util/List;

    .line 823
    iget v1, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$ReverseGeocodingResponse$Builder;->bitField0_:I

    and-int/lit8 v1, v1, -0x2

    iput v1, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$ReverseGeocodingResponse$Builder;->bitField0_:I

    .line 825
    :cond_0
    iget-object v1, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$ReverseGeocodingResponse$Builder;->spatial_:Ljava/util/List;

    # setter for: Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$ReverseGeocodingResponse;->spatial_:Ljava/util/List;
    invoke-static {v0, v1}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$ReverseGeocodingResponse;->access$1702(Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$ReverseGeocodingResponse;Ljava/util/List;)Ljava/util/List;

    .line 829
    :goto_0
    invoke-virtual {p0}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$ReverseGeocodingResponse$Builder;->onBuilt()V

    .line 830
    return-object v0

    .line 827
    :cond_1
    iget-object v1, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$ReverseGeocodingResponse$Builder;->spatialBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v1}, Lcom/google/protobuf/RepeatedFieldBuilder;->build()Ljava/util/List;

    move-result-object v1

    # setter for: Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$ReverseGeocodingResponse;->spatial_:Ljava/util/List;
    invoke-static {v0, v1}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$ReverseGeocodingResponse;->access$1702(Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$ReverseGeocodingResponse;Ljava/util/List;)Ljava/util/List;

    goto :goto_0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 744
    invoke-virtual {p0}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$ReverseGeocodingResponse$Builder;->clear()Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$ReverseGeocodingResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessage$Builder;
    .locals 1

    .prologue
    .line 744
    invoke-virtual {p0}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$ReverseGeocodingResponse$Builder;->clear()Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$ReverseGeocodingResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 744
    invoke-virtual {p0}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$ReverseGeocodingResponse$Builder;->clear()Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$ReverseGeocodingResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 744
    invoke-virtual {p0}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$ReverseGeocodingResponse$Builder;->clear()Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$ReverseGeocodingResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$ReverseGeocodingResponse$Builder;
    .locals 1

    .prologue
    .line 776
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->clear()Lcom/google/protobuf/GeneratedMessage$Builder;

    .line 777
    iget-object v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$ReverseGeocodingResponse$Builder;->spatialBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 778
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$ReverseGeocodingResponse$Builder;->spatial_:Ljava/util/List;

    .line 779
    iget v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$ReverseGeocodingResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$ReverseGeocodingResponse$Builder;->bitField0_:I

    .line 783
    :goto_0
    return-object p0

    .line 781
    :cond_0
    iget-object v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$ReverseGeocodingResponse$Builder;->spatialBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilder;->clear()V

    goto :goto_0
.end method

.method public clearSpatial()Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$ReverseGeocodingResponse$Builder;
    .locals 1

    .prologue
    .line 1039
    iget-object v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$ReverseGeocodingResponse$Builder;->spatialBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 1040
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$ReverseGeocodingResponse$Builder;->spatial_:Ljava/util/List;

    .line 1041
    iget v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$ReverseGeocodingResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$ReverseGeocodingResponse$Builder;->bitField0_:I

    .line 1042
    invoke-virtual {p0}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$ReverseGeocodingResponse$Builder;->onChanged()V

    .line 1046
    :goto_0
    return-object p0

    .line 1044
    :cond_0
    iget-object v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$ReverseGeocodingResponse$Builder;->spatialBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilder;->clear()V

    goto :goto_0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 744
    invoke-virtual {p0}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$ReverseGeocodingResponse$Builder;->clone()Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$ReverseGeocodingResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .prologue
    .line 744
    invoke-virtual {p0}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$ReverseGeocodingResponse$Builder;->clone()Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$ReverseGeocodingResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessage$Builder;
    .locals 1

    .prologue
    .line 744
    invoke-virtual {p0}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$ReverseGeocodingResponse$Builder;->clone()Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$ReverseGeocodingResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 744
    invoke-virtual {p0}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$ReverseGeocodingResponse$Builder;->clone()Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$ReverseGeocodingResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 744
    invoke-virtual {p0}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$ReverseGeocodingResponse$Builder;->clone()Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$ReverseGeocodingResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$ReverseGeocodingResponse$Builder;
    .locals 2

    .prologue
    .line 787
    invoke-static {}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$ReverseGeocodingResponse$Builder;->create()Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$ReverseGeocodingResponse$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$ReverseGeocodingResponse$Builder;->buildPartial()Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$ReverseGeocodingResponse;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$ReverseGeocodingResponse$Builder;->mergeFrom(Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$ReverseGeocodingResponse;)Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$ReverseGeocodingResponse$Builder;

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
    .line 744
    invoke-virtual {p0}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$ReverseGeocodingResponse$Builder;->clone()Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$ReverseGeocodingResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 744
    invoke-virtual {p0}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$ReverseGeocodingResponse$Builder;->getDefaultInstanceForType()Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$ReverseGeocodingResponse;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 744
    invoke-virtual {p0}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$ReverseGeocodingResponse$Builder;->getDefaultInstanceForType()Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$ReverseGeocodingResponse;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$ReverseGeocodingResponse;
    .locals 1

    .prologue
    .line 796
    invoke-static {}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$ReverseGeocodingResponse;->getDefaultInstance()Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$ReverseGeocodingResponse;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 792
    invoke-static {}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$ReverseGeocodingResponse;->getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public getSpatial(I)Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Spatial;
    .locals 1

    .prologue
    .line 947
    iget-object v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$ReverseGeocodingResponse$Builder;->spatialBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 948
    iget-object v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$ReverseGeocodingResponse$Builder;->spatial_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Spatial;

    .line 950
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$ReverseGeocodingResponse$Builder;->spatialBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilder;->getMessage(I)Lcom/google/protobuf/GeneratedMessage;

    move-result-object v0

    check-cast v0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Spatial;

    goto :goto_0
.end method

.method public getSpatialBuilder(I)Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Spatial$Builder;
    .locals 1

    .prologue
    .line 1060
    invoke-direct {p0}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$ReverseGeocodingResponse$Builder;->getSpatialFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilder;->getBuilder(I)Lcom/google/protobuf/GeneratedMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Spatial$Builder;

    return-object v0
.end method

.method public getSpatialBuilderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Spatial$Builder;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1088
    invoke-direct {p0}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$ReverseGeocodingResponse$Builder;->getSpatialFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilder;->getBuilderList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getSpatialCount()I
    .locals 1

    .prologue
    .line 940
    iget-object v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$ReverseGeocodingResponse$Builder;->spatialBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 941
    iget-object v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$ReverseGeocodingResponse$Builder;->spatial_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 943
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$ReverseGeocodingResponse$Builder;->spatialBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilder;->getCount()I

    move-result v0

    goto :goto_0
.end method

.method public getSpatialList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Spatial;",
            ">;"
        }
    .end annotation

    .prologue
    .line 933
    iget-object v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$ReverseGeocodingResponse$Builder;->spatialBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 934
    iget-object v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$ReverseGeocodingResponse$Builder;->spatial_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 936
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$ReverseGeocodingResponse$Builder;->spatialBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilder;->getMessageList()Ljava/util/List;

    move-result-object v0

    goto :goto_0
.end method

.method public getSpatialOrBuilder(I)Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$SpatialOrBuilder;
    .locals 1

    .prologue
    .line 1064
    iget-object v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$ReverseGeocodingResponse$Builder;->spatialBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 1065
    iget-object v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$ReverseGeocodingResponse$Builder;->spatial_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$SpatialOrBuilder;

    .line 1066
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$ReverseGeocodingResponse$Builder;->spatialBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilder;->getMessageOrBuilder(I)Lcom/google/protobuf/MessageOrBuilder;

    move-result-object v0

    check-cast v0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$SpatialOrBuilder;

    goto :goto_0
.end method

.method public getSpatialOrBuilderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<+",
            "Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$SpatialOrBuilder;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1071
    iget-object v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$ReverseGeocodingResponse$Builder;->spatialBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-eqz v0, :cond_0

    .line 1072
    iget-object v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$ReverseGeocodingResponse$Builder;->spatialBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilder;->getMessageOrBuilderList()Ljava/util/List;

    move-result-object v0

    .line 1074
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$ReverseGeocodingResponse$Builder;->spatial_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    goto :goto_0
.end method

.method protected internalGetFieldAccessorTable()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 1

    .prologue
    .line 754
    # getter for: Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf;->internal_static_ReverseGeocodingResponse_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    invoke-static {}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf;->access$1100()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 875
    move v0, v1

    :goto_0
    invoke-virtual {p0}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$ReverseGeocodingResponse$Builder;->getSpatialCount()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 876
    invoke-virtual {p0, v0}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$ReverseGeocodingResponse$Builder;->getSpatial(I)Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Spatial;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Spatial;->isInitialized()Z

    move-result v2

    if-nez v2, :cond_0

    .line 881
    :goto_1
    return v1

    .line 875
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 881
    :cond_1
    const/4 v1, 0x1

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
    .line 744
    invoke-virtual {p0, p1, p2}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$ReverseGeocodingResponse$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$ReverseGeocodingResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 744
    invoke-virtual {p0, p1}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$ReverseGeocodingResponse$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$ReverseGeocodingResponse$Builder;

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
    .line 744
    invoke-virtual {p0, p1, p2}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$ReverseGeocodingResponse$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$ReverseGeocodingResponse$Builder;

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
    .line 744
    invoke-virtual {p0, p1, p2}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$ReverseGeocodingResponse$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$ReverseGeocodingResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 744
    invoke-virtual {p0, p1}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$ReverseGeocodingResponse$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$ReverseGeocodingResponse$Builder;

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
    .line 744
    invoke-virtual {p0, p1, p2}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$ReverseGeocodingResponse$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$ReverseGeocodingResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$ReverseGeocodingResponse$Builder;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 888
    invoke-virtual {p0}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$ReverseGeocodingResponse$Builder;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v0

    invoke-static {v0}, Lcom/google/protobuf/UnknownFieldSet;->newBuilder(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/UnknownFieldSet$Builder;

    move-result-object v0

    .line 892
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v1

    .line 893
    sparse-switch v1, :sswitch_data_0

    .line 899
    invoke-virtual {p0, p1, v0, p2, v1}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$ReverseGeocodingResponse$Builder;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/UnknownFieldSet$Builder;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 901
    invoke-virtual {v0}, Lcom/google/protobuf/UnknownFieldSet$Builder;->build()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$ReverseGeocodingResponse$Builder;->setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessage$Builder;

    .line 902
    invoke-virtual {p0}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$ReverseGeocodingResponse$Builder;->onChanged()V

    .line 903
    :goto_1
    return-object p0

    .line 895
    :sswitch_0
    invoke-virtual {v0}, Lcom/google/protobuf/UnknownFieldSet$Builder;->build()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$ReverseGeocodingResponse$Builder;->setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessage$Builder;

    .line 896
    invoke-virtual {p0}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$ReverseGeocodingResponse$Builder;->onChanged()V

    goto :goto_1

    .line 908
    :sswitch_1
    invoke-static {}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Spatial;->newBuilder()Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Spatial$Builder;

    move-result-object v1

    .line 909
    invoke-virtual {p1, v1, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 910
    invoke-virtual {v1}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Spatial$Builder;->buildPartial()Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Spatial;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$ReverseGeocodingResponse$Builder;->addSpatial(Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Spatial;)Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$ReverseGeocodingResponse$Builder;

    goto :goto_0

    .line 893
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
    .end sparse-switch
.end method

.method public mergeFrom(Lcom/google/protobuf/Message;)Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$ReverseGeocodingResponse$Builder;
    .locals 1

    .prologue
    .line 834
    instance-of v0, p1, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$ReverseGeocodingResponse;

    if-eqz v0, :cond_0

    .line 835
    check-cast p1, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$ReverseGeocodingResponse;

    invoke-virtual {p0, p1}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$ReverseGeocodingResponse$Builder;->mergeFrom(Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$ReverseGeocodingResponse;)Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$ReverseGeocodingResponse$Builder;

    move-result-object p0

    .line 838
    :goto_0
    return-object p0

    .line 837
    :cond_0
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessage$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;

    goto :goto_0
.end method

.method public mergeFrom(Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$ReverseGeocodingResponse;)Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$ReverseGeocodingResponse$Builder;
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 843
    invoke-static {}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$ReverseGeocodingResponse;->getDefaultInstance()Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$ReverseGeocodingResponse;

    move-result-object v1

    if-ne p1, v1, :cond_0

    .line 871
    :goto_0
    return-object p0

    .line 844
    :cond_0
    iget-object v1, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$ReverseGeocodingResponse$Builder;->spatialBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v1, :cond_3

    .line 845
    # getter for: Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$ReverseGeocodingResponse;->spatial_:Ljava/util/List;
    invoke-static {p1}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$ReverseGeocodingResponse;->access$1700(Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$ReverseGeocodingResponse;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 846
    iget-object v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$ReverseGeocodingResponse$Builder;->spatial_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 847
    # getter for: Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$ReverseGeocodingResponse;->spatial_:Ljava/util/List;
    invoke-static {p1}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$ReverseGeocodingResponse;->access$1700(Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$ReverseGeocodingResponse;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$ReverseGeocodingResponse$Builder;->spatial_:Ljava/util/List;

    .line 848
    iget v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$ReverseGeocodingResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$ReverseGeocodingResponse$Builder;->bitField0_:I

    .line 853
    :goto_1
    invoke-virtual {p0}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$ReverseGeocodingResponse$Builder;->onChanged()V

    .line 870
    :cond_1
    :goto_2
    invoke-virtual {p1}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$ReverseGeocodingResponse;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$ReverseGeocodingResponse$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessage$Builder;

    goto :goto_0

    .line 850
    :cond_2
    invoke-direct {p0}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$ReverseGeocodingResponse$Builder;->ensureSpatialIsMutable()V

    .line 851
    iget-object v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$ReverseGeocodingResponse$Builder;->spatial_:Ljava/util/List;

    # getter for: Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$ReverseGeocodingResponse;->spatial_:Ljava/util/List;
    invoke-static {p1}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$ReverseGeocodingResponse;->access$1700(Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$ReverseGeocodingResponse;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_1

    .line 856
    :cond_3
    # getter for: Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$ReverseGeocodingResponse;->spatial_:Ljava/util/List;
    invoke-static {p1}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$ReverseGeocodingResponse;->access$1700(Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$ReverseGeocodingResponse;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 857
    iget-object v1, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$ReverseGeocodingResponse$Builder;->spatialBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v1}, Lcom/google/protobuf/RepeatedFieldBuilder;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 858
    iget-object v1, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$ReverseGeocodingResponse$Builder;->spatialBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v1}, Lcom/google/protobuf/RepeatedFieldBuilder;->dispose()V

    .line 859
    iput-object v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$ReverseGeocodingResponse$Builder;->spatialBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    .line 860
    # getter for: Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$ReverseGeocodingResponse;->spatial_:Ljava/util/List;
    invoke-static {p1}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$ReverseGeocodingResponse;->access$1700(Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$ReverseGeocodingResponse;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$ReverseGeocodingResponse$Builder;->spatial_:Ljava/util/List;

    .line 861
    iget v1, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$ReverseGeocodingResponse$Builder;->bitField0_:I

    and-int/lit8 v1, v1, -0x2

    iput v1, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$ReverseGeocodingResponse$Builder;->bitField0_:I

    .line 862
    # getter for: Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$ReverseGeocodingResponse;->alwaysUseFieldBuilders:Z
    invoke-static {}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$ReverseGeocodingResponse;->access$1800()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-direct {p0}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$ReverseGeocodingResponse$Builder;->getSpatialFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilder;

    move-result-object v0

    :cond_4
    iput-object v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$ReverseGeocodingResponse$Builder;->spatialBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    goto :goto_2

    .line 866
    :cond_5
    iget-object v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$ReverseGeocodingResponse$Builder;->spatialBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    # getter for: Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$ReverseGeocodingResponse;->spatial_:Ljava/util/List;
    invoke-static {p1}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$ReverseGeocodingResponse;->access$1700(Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$ReverseGeocodingResponse;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/protobuf/RepeatedFieldBuilder;->addAllMessages(Ljava/lang/Iterable;)Lcom/google/protobuf/RepeatedFieldBuilder;

    goto :goto_2
.end method

.method public removeSpatial(I)Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$ReverseGeocodingResponse$Builder;
    .locals 1

    .prologue
    .line 1049
    iget-object v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$ReverseGeocodingResponse$Builder;->spatialBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 1050
    invoke-direct {p0}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$ReverseGeocodingResponse$Builder;->ensureSpatialIsMutable()V

    .line 1051
    iget-object v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$ReverseGeocodingResponse$Builder;->spatial_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 1052
    invoke-virtual {p0}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$ReverseGeocodingResponse$Builder;->onChanged()V

    .line 1056
    :goto_0
    return-object p0

    .line 1054
    :cond_0
    iget-object v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$ReverseGeocodingResponse$Builder;->spatialBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilder;->remove(I)V

    goto :goto_0
.end method

.method public setSpatial(ILcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Spatial$Builder;)Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$ReverseGeocodingResponse$Builder;
    .locals 2

    .prologue
    .line 969
    iget-object v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$ReverseGeocodingResponse$Builder;->spatialBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 970
    invoke-direct {p0}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$ReverseGeocodingResponse$Builder;->ensureSpatialIsMutable()V

    .line 971
    iget-object v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$ReverseGeocodingResponse$Builder;->spatial_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Spatial$Builder;->build()Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Spatial;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 972
    invoke-virtual {p0}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$ReverseGeocodingResponse$Builder;->onChanged()V

    .line 976
    :goto_0
    return-object p0

    .line 974
    :cond_0
    iget-object v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$ReverseGeocodingResponse$Builder;->spatialBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {p2}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Spatial$Builder;->build()Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Spatial;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/google/protobuf/RepeatedFieldBuilder;->setMessage(ILcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/RepeatedFieldBuilder;

    goto :goto_0
.end method

.method public setSpatial(ILcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Spatial;)Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$ReverseGeocodingResponse$Builder;
    .locals 1

    .prologue
    .line 955
    iget-object v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$ReverseGeocodingResponse$Builder;->spatialBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_1

    .line 956
    if-nez p2, :cond_0

    .line 957
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 959
    :cond_0
    invoke-direct {p0}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$ReverseGeocodingResponse$Builder;->ensureSpatialIsMutable()V

    .line 960
    iget-object v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$ReverseGeocodingResponse$Builder;->spatial_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 961
    invoke-virtual {p0}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$ReverseGeocodingResponse$Builder;->onChanged()V

    .line 965
    :goto_0
    return-object p0

    .line 963
    :cond_1
    iget-object v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$ReverseGeocodingResponse$Builder;->spatialBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0, p1, p2}, Lcom/google/protobuf/RepeatedFieldBuilder;->setMessage(ILcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/RepeatedFieldBuilder;

    goto :goto_0
.end method
