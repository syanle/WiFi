.class public final Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Roads$Builder;
.super Lcom/google/protobuf/GeneratedMessage$Builder;
.source "ReverseGeocodingProtoBuf.java"

# interfaces
.implements Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$RoadsOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Roads;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessage$Builder",
        "<",
        "Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Roads$Builder;",
        ">;",
        "Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$RoadsOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private roadBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/RepeatedFieldBuilder",
            "<",
            "Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Road;",
            "Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Road$Builder;",
            "Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$RoadOrBuilder;",
            ">;"
        }
    .end annotation
.end field

.field private road_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Road;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 4303
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;-><init>()V

    .line 4465
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Roads$Builder;->road_:Ljava/util/List;

    .line 4304
    invoke-direct {p0}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Roads$Builder;->maybeForceBuilderInitialization()V

    .line 4305
    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V
    .locals 1

    .prologue
    .line 4308
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessage$Builder;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V

    .line 4465
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Roads$Builder;->road_:Ljava/util/List;

    .line 4309
    invoke-direct {p0}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Roads$Builder;->maybeForceBuilderInitialization()V

    .line 4310
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;Lcom/mapabc/mapapi/core/z;)V
    .locals 0

    .prologue
    .line 4289
    invoke-direct {p0, p1}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Roads$Builder;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V

    return-void
.end method

.method static synthetic access$6900(Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Roads$Builder;)Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Roads;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 4289
    invoke-direct {p0}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Roads$Builder;->buildParsed()Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Roads;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$7000()Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Roads$Builder;
    .locals 1

    .prologue
    .line 4289
    invoke-static {}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Roads$Builder;->create()Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Roads$Builder;

    move-result-object v0

    return-object v0
.end method

.method private buildParsed()Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Roads;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 4354
    invoke-virtual {p0}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Roads$Builder;->buildPartial()Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Roads;

    move-result-object v0

    .line 4355
    invoke-virtual {v0}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Roads;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_0

    .line 4356
    invoke-static {v0}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Roads$Builder;->newUninitializedMessageException(Lcom/google/protobuf/Message;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/UninitializedMessageException;->asInvalidProtocolBufferException()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0

    .line 4359
    :cond_0
    return-object v0
.end method

.method private static create()Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Roads$Builder;
    .locals 1

    .prologue
    .line 4317
    new-instance v0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Roads$Builder;

    invoke-direct {v0}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Roads$Builder;-><init>()V

    return-object v0
.end method

.method private ensureRoadIsMutable()V
    .locals 2

    .prologue
    .line 4468
    iget v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Roads$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 4469
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Roads$Builder;->road_:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Roads$Builder;->road_:Ljava/util/List;

    .line 4470
    iget v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Roads$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Roads$Builder;->bitField0_:I

    .line 4472
    :cond_0
    return-void
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 4294
    # getter for: Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf;->internal_static_Roads_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;
    invoke-static {}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf;->access$6700()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method private getRoadFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilder;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/RepeatedFieldBuilder",
            "<",
            "Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Road;",
            "Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Road$Builder;",
            "Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$RoadOrBuilder;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v0, 0x1

    .line 4638
    iget-object v1, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Roads$Builder;->roadBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v1, :cond_0

    .line 4639
    new-instance v1, Lcom/google/protobuf/RepeatedFieldBuilder;

    iget-object v2, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Roads$Builder;->road_:Ljava/util/List;

    iget v3, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Roads$Builder;->bitField0_:I

    and-int/lit8 v3, v3, 0x1

    if-ne v3, v0, :cond_1

    :goto_0
    invoke-virtual {p0}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Roads$Builder;->getParentForChildren()Lcom/google/protobuf/GeneratedMessage$BuilderParent;

    move-result-object v3

    invoke-virtual {p0}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Roads$Builder;->isClean()Z

    move-result v4

    invoke-direct {v1, v2, v0, v3, v4}, Lcom/google/protobuf/RepeatedFieldBuilder;-><init>(Ljava/util/List;ZLcom/google/protobuf/GeneratedMessage$BuilderParent;Z)V

    iput-object v1, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Roads$Builder;->roadBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    .line 4645
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Roads$Builder;->road_:Ljava/util/List;

    .line 4647
    :cond_0
    iget-object v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Roads$Builder;->roadBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    return-object v0

    .line 4639
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private maybeForceBuilderInitialization()V
    .locals 1

    .prologue
    .line 4312
    # getter for: Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Roads;->alwaysUseFieldBuilders:Z
    invoke-static {}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Roads;->access$7200()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4313
    invoke-direct {p0}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Roads$Builder;->getRoadFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilder;

    .line 4315
    :cond_0
    return-void
.end method


# virtual methods
.method public addAllRoad(Ljava/lang/Iterable;)Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Roads$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<+",
            "Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Road;",
            ">;)",
            "Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Roads$Builder;"
        }
    .end annotation

    .prologue
    .line 4574
    iget-object v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Roads$Builder;->roadBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 4575
    invoke-direct {p0}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Roads$Builder;->ensureRoadIsMutable()V

    .line 4576
    iget-object v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Roads$Builder;->road_:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/google/protobuf/GeneratedMessage$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    .line 4577
    invoke-virtual {p0}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Roads$Builder;->onChanged()V

    .line 4581
    :goto_0
    return-object p0

    .line 4579
    :cond_0
    iget-object v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Roads$Builder;->roadBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilder;->addAllMessages(Ljava/lang/Iterable;)Lcom/google/protobuf/RepeatedFieldBuilder;

    goto :goto_0
.end method

.method public addRoad(ILcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Road$Builder;)Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Roads$Builder;
    .locals 2

    .prologue
    .line 4563
    iget-object v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Roads$Builder;->roadBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 4564
    invoke-direct {p0}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Roads$Builder;->ensureRoadIsMutable()V

    .line 4565
    iget-object v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Roads$Builder;->road_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Road$Builder;->build()Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Road;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 4566
    invoke-virtual {p0}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Roads$Builder;->onChanged()V

    .line 4570
    :goto_0
    return-object p0

    .line 4568
    :cond_0
    iget-object v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Roads$Builder;->roadBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {p2}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Road$Builder;->build()Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Road;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/google/protobuf/RepeatedFieldBuilder;->addMessage(ILcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/RepeatedFieldBuilder;

    goto :goto_0
.end method

.method public addRoad(ILcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Road;)Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Roads$Builder;
    .locals 1

    .prologue
    .line 4538
    iget-object v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Roads$Builder;->roadBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_1

    .line 4539
    if-nez p2, :cond_0

    .line 4540
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 4542
    :cond_0
    invoke-direct {p0}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Roads$Builder;->ensureRoadIsMutable()V

    .line 4543
    iget-object v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Roads$Builder;->road_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 4544
    invoke-virtual {p0}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Roads$Builder;->onChanged()V

    .line 4548
    :goto_0
    return-object p0

    .line 4546
    :cond_1
    iget-object v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Roads$Builder;->roadBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0, p1, p2}, Lcom/google/protobuf/RepeatedFieldBuilder;->addMessage(ILcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/RepeatedFieldBuilder;

    goto :goto_0
.end method

.method public addRoad(Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Road$Builder;)Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Roads$Builder;
    .locals 2

    .prologue
    .line 4552
    iget-object v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Roads$Builder;->roadBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 4553
    invoke-direct {p0}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Roads$Builder;->ensureRoadIsMutable()V

    .line 4554
    iget-object v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Roads$Builder;->road_:Ljava/util/List;

    invoke-virtual {p1}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Road$Builder;->build()Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Road;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4555
    invoke-virtual {p0}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Roads$Builder;->onChanged()V

    .line 4559
    :goto_0
    return-object p0

    .line 4557
    :cond_0
    iget-object v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Roads$Builder;->roadBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {p1}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Road$Builder;->build()Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Road;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/protobuf/RepeatedFieldBuilder;->addMessage(Lcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/RepeatedFieldBuilder;

    goto :goto_0
.end method

.method public addRoad(Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Road;)Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Roads$Builder;
    .locals 1

    .prologue
    .line 4524
    iget-object v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Roads$Builder;->roadBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_1

    .line 4525
    if-nez p1, :cond_0

    .line 4526
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 4528
    :cond_0
    invoke-direct {p0}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Roads$Builder;->ensureRoadIsMutable()V

    .line 4529
    iget-object v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Roads$Builder;->road_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4530
    invoke-virtual {p0}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Roads$Builder;->onChanged()V

    .line 4534
    :goto_0
    return-object p0

    .line 4532
    :cond_1
    iget-object v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Roads$Builder;->roadBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilder;->addMessage(Lcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/RepeatedFieldBuilder;

    goto :goto_0
.end method

.method public addRoadBuilder()Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Road$Builder;
    .locals 2

    .prologue
    .line 4623
    invoke-direct {p0}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Roads$Builder;->getRoadFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilder;

    move-result-object v0

    invoke-static {}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Road;->getDefaultInstance()Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Road;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/protobuf/RepeatedFieldBuilder;->addBuilder(Lcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/GeneratedMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Road$Builder;

    return-object v0
.end method

.method public addRoadBuilder(I)Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Road$Builder;
    .locals 2

    .prologue
    .line 4628
    invoke-direct {p0}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Roads$Builder;->getRoadFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilder;

    move-result-object v0

    invoke-static {}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Road;->getDefaultInstance()Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Road;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/google/protobuf/RepeatedFieldBuilder;->addBuilder(ILcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/GeneratedMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Road$Builder;

    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 4289
    invoke-virtual {p0}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Roads$Builder;->build()Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Roads;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 4289
    invoke-virtual {p0}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Roads$Builder;->build()Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Roads;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Roads;
    .locals 2

    .prologue
    .line 4345
    invoke-virtual {p0}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Roads$Builder;->buildPartial()Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Roads;

    move-result-object v0

    .line 4346
    invoke-virtual {v0}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Roads;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_0

    .line 4347
    invoke-static {v0}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Roads$Builder;->newUninitializedMessageException(Lcom/google/protobuf/Message;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0

    .line 4349
    :cond_0
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 4289
    invoke-virtual {p0}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Roads$Builder;->buildPartial()Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Roads;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 4289
    invoke-virtual {p0}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Roads$Builder;->buildPartial()Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Roads;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Roads;
    .locals 3

    .prologue
    .line 4363
    new-instance v0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Roads;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Roads;-><init>(Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Roads$Builder;Lcom/mapabc/mapapi/core/z;)V

    .line 4364
    iget v1, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Roads$Builder;->bitField0_:I

    .line 4365
    iget-object v1, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Roads$Builder;->roadBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v1, :cond_1

    .line 4366
    iget v1, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Roads$Builder;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 4367
    iget-object v1, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Roads$Builder;->road_:Ljava/util/List;

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Roads$Builder;->road_:Ljava/util/List;

    .line 4368
    iget v1, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Roads$Builder;->bitField0_:I

    and-int/lit8 v1, v1, -0x2

    iput v1, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Roads$Builder;->bitField0_:I

    .line 4370
    :cond_0
    iget-object v1, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Roads$Builder;->road_:Ljava/util/List;

    # setter for: Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Roads;->road_:Ljava/util/List;
    invoke-static {v0, v1}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Roads;->access$7402(Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Roads;Ljava/util/List;)Ljava/util/List;

    .line 4374
    :goto_0
    invoke-virtual {p0}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Roads$Builder;->onBuilt()V

    .line 4375
    return-object v0

    .line 4372
    :cond_1
    iget-object v1, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Roads$Builder;->roadBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v1}, Lcom/google/protobuf/RepeatedFieldBuilder;->build()Ljava/util/List;

    move-result-object v1

    # setter for: Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Roads;->road_:Ljava/util/List;
    invoke-static {v0, v1}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Roads;->access$7402(Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Roads;Ljava/util/List;)Ljava/util/List;

    goto :goto_0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 4289
    invoke-virtual {p0}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Roads$Builder;->clear()Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Roads$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessage$Builder;
    .locals 1

    .prologue
    .line 4289
    invoke-virtual {p0}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Roads$Builder;->clear()Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Roads$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 4289
    invoke-virtual {p0}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Roads$Builder;->clear()Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Roads$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 4289
    invoke-virtual {p0}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Roads$Builder;->clear()Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Roads$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Roads$Builder;
    .locals 1

    .prologue
    .line 4321
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->clear()Lcom/google/protobuf/GeneratedMessage$Builder;

    .line 4322
    iget-object v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Roads$Builder;->roadBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 4323
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Roads$Builder;->road_:Ljava/util/List;

    .line 4324
    iget v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Roads$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Roads$Builder;->bitField0_:I

    .line 4328
    :goto_0
    return-object p0

    .line 4326
    :cond_0
    iget-object v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Roads$Builder;->roadBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilder;->clear()V

    goto :goto_0
.end method

.method public clearRoad()Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Roads$Builder;
    .locals 1

    .prologue
    .line 4584
    iget-object v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Roads$Builder;->roadBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 4585
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Roads$Builder;->road_:Ljava/util/List;

    .line 4586
    iget v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Roads$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Roads$Builder;->bitField0_:I

    .line 4587
    invoke-virtual {p0}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Roads$Builder;->onChanged()V

    .line 4591
    :goto_0
    return-object p0

    .line 4589
    :cond_0
    iget-object v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Roads$Builder;->roadBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilder;->clear()V

    goto :goto_0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 4289
    invoke-virtual {p0}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Roads$Builder;->clone()Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Roads$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .prologue
    .line 4289
    invoke-virtual {p0}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Roads$Builder;->clone()Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Roads$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessage$Builder;
    .locals 1

    .prologue
    .line 4289
    invoke-virtual {p0}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Roads$Builder;->clone()Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Roads$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 4289
    invoke-virtual {p0}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Roads$Builder;->clone()Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Roads$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 4289
    invoke-virtual {p0}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Roads$Builder;->clone()Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Roads$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Roads$Builder;
    .locals 2

    .prologue
    .line 4332
    invoke-static {}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Roads$Builder;->create()Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Roads$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Roads$Builder;->buildPartial()Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Roads;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Roads$Builder;->mergeFrom(Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Roads;)Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Roads$Builder;

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
    .line 4289
    invoke-virtual {p0}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Roads$Builder;->clone()Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Roads$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 4289
    invoke-virtual {p0}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Roads$Builder;->getDefaultInstanceForType()Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Roads;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 4289
    invoke-virtual {p0}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Roads$Builder;->getDefaultInstanceForType()Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Roads;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Roads;
    .locals 1

    .prologue
    .line 4341
    invoke-static {}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Roads;->getDefaultInstance()Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Roads;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 4337
    invoke-static {}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Roads;->getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public getRoad(I)Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Road;
    .locals 1

    .prologue
    .line 4492
    iget-object v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Roads$Builder;->roadBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 4493
    iget-object v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Roads$Builder;->road_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Road;

    .line 4495
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Roads$Builder;->roadBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilder;->getMessage(I)Lcom/google/protobuf/GeneratedMessage;

    move-result-object v0

    check-cast v0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Road;

    goto :goto_0
.end method

.method public getRoadBuilder(I)Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Road$Builder;
    .locals 1

    .prologue
    .line 4605
    invoke-direct {p0}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Roads$Builder;->getRoadFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilder;->getBuilder(I)Lcom/google/protobuf/GeneratedMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Road$Builder;

    return-object v0
.end method

.method public getRoadBuilderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Road$Builder;",
            ">;"
        }
    .end annotation

    .prologue
    .line 4633
    invoke-direct {p0}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Roads$Builder;->getRoadFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilder;->getBuilderList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getRoadCount()I
    .locals 1

    .prologue
    .line 4485
    iget-object v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Roads$Builder;->roadBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 4486
    iget-object v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Roads$Builder;->road_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 4488
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Roads$Builder;->roadBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilder;->getCount()I

    move-result v0

    goto :goto_0
.end method

.method public getRoadList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Road;",
            ">;"
        }
    .end annotation

    .prologue
    .line 4478
    iget-object v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Roads$Builder;->roadBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 4479
    iget-object v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Roads$Builder;->road_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 4481
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Roads$Builder;->roadBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilder;->getMessageList()Ljava/util/List;

    move-result-object v0

    goto :goto_0
.end method

.method public getRoadOrBuilder(I)Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$RoadOrBuilder;
    .locals 1

    .prologue
    .line 4609
    iget-object v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Roads$Builder;->roadBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 4610
    iget-object v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Roads$Builder;->road_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$RoadOrBuilder;

    .line 4611
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Roads$Builder;->roadBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilder;->getMessageOrBuilder(I)Lcom/google/protobuf/MessageOrBuilder;

    move-result-object v0

    check-cast v0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$RoadOrBuilder;

    goto :goto_0
.end method

.method public getRoadOrBuilderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<+",
            "Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$RoadOrBuilder;",
            ">;"
        }
    .end annotation

    .prologue
    .line 4616
    iget-object v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Roads$Builder;->roadBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-eqz v0, :cond_0

    .line 4617
    iget-object v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Roads$Builder;->roadBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilder;->getMessageOrBuilderList()Ljava/util/List;

    move-result-object v0

    .line 4619
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Roads$Builder;->road_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    goto :goto_0
.end method

.method protected internalGetFieldAccessorTable()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 1

    .prologue
    .line 4299
    # getter for: Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf;->internal_static_Roads_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    invoke-static {}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf;->access$6800()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 4420
    move v0, v1

    :goto_0
    invoke-virtual {p0}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Roads$Builder;->getRoadCount()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 4421
    invoke-virtual {p0, v0}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Roads$Builder;->getRoad(I)Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Road;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Road;->isInitialized()Z

    move-result v2

    if-nez v2, :cond_0

    .line 4426
    :goto_1
    return v1

    .line 4420
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 4426
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
    .line 4289
    invoke-virtual {p0, p1, p2}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Roads$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Roads$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 4289
    invoke-virtual {p0, p1}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Roads$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Roads$Builder;

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
    .line 4289
    invoke-virtual {p0, p1, p2}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Roads$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Roads$Builder;

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
    .line 4289
    invoke-virtual {p0, p1, p2}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Roads$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Roads$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 4289
    invoke-virtual {p0, p1}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Roads$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Roads$Builder;

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
    .line 4289
    invoke-virtual {p0, p1, p2}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Roads$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Roads$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Roads$Builder;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 4433
    invoke-virtual {p0}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Roads$Builder;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v0

    invoke-static {v0}, Lcom/google/protobuf/UnknownFieldSet;->newBuilder(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/UnknownFieldSet$Builder;

    move-result-object v0

    .line 4437
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v1

    .line 4438
    sparse-switch v1, :sswitch_data_0

    .line 4444
    invoke-virtual {p0, p1, v0, p2, v1}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Roads$Builder;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/UnknownFieldSet$Builder;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 4446
    invoke-virtual {v0}, Lcom/google/protobuf/UnknownFieldSet$Builder;->build()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Roads$Builder;->setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessage$Builder;

    .line 4447
    invoke-virtual {p0}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Roads$Builder;->onChanged()V

    .line 4448
    :goto_1
    return-object p0

    .line 4440
    :sswitch_0
    invoke-virtual {v0}, Lcom/google/protobuf/UnknownFieldSet$Builder;->build()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Roads$Builder;->setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessage$Builder;

    .line 4441
    invoke-virtual {p0}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Roads$Builder;->onChanged()V

    goto :goto_1

    .line 4453
    :sswitch_1
    invoke-static {}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Road;->newBuilder()Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Road$Builder;

    move-result-object v1

    .line 4454
    invoke-virtual {p1, v1, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 4455
    invoke-virtual {v1}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Road$Builder;->buildPartial()Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Road;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Roads$Builder;->addRoad(Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Road;)Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Roads$Builder;

    goto :goto_0

    .line 4438
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
    .end sparse-switch
.end method

.method public mergeFrom(Lcom/google/protobuf/Message;)Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Roads$Builder;
    .locals 1

    .prologue
    .line 4379
    instance-of v0, p1, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Roads;

    if-eqz v0, :cond_0

    .line 4380
    check-cast p1, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Roads;

    invoke-virtual {p0, p1}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Roads$Builder;->mergeFrom(Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Roads;)Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Roads$Builder;

    move-result-object p0

    .line 4383
    :goto_0
    return-object p0

    .line 4382
    :cond_0
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessage$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;

    goto :goto_0
.end method

.method public mergeFrom(Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Roads;)Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Roads$Builder;
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 4388
    invoke-static {}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Roads;->getDefaultInstance()Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Roads;

    move-result-object v1

    if-ne p1, v1, :cond_0

    .line 4416
    :goto_0
    return-object p0

    .line 4389
    :cond_0
    iget-object v1, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Roads$Builder;->roadBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v1, :cond_3

    .line 4390
    # getter for: Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Roads;->road_:Ljava/util/List;
    invoke-static {p1}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Roads;->access$7400(Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Roads;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 4391
    iget-object v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Roads$Builder;->road_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 4392
    # getter for: Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Roads;->road_:Ljava/util/List;
    invoke-static {p1}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Roads;->access$7400(Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Roads;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Roads$Builder;->road_:Ljava/util/List;

    .line 4393
    iget v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Roads$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Roads$Builder;->bitField0_:I

    .line 4398
    :goto_1
    invoke-virtual {p0}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Roads$Builder;->onChanged()V

    .line 4415
    :cond_1
    :goto_2
    invoke-virtual {p1}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Roads;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Roads$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessage$Builder;

    goto :goto_0

    .line 4395
    :cond_2
    invoke-direct {p0}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Roads$Builder;->ensureRoadIsMutable()V

    .line 4396
    iget-object v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Roads$Builder;->road_:Ljava/util/List;

    # getter for: Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Roads;->road_:Ljava/util/List;
    invoke-static {p1}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Roads;->access$7400(Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Roads;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_1

    .line 4401
    :cond_3
    # getter for: Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Roads;->road_:Ljava/util/List;
    invoke-static {p1}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Roads;->access$7400(Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Roads;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 4402
    iget-object v1, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Roads$Builder;->roadBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v1}, Lcom/google/protobuf/RepeatedFieldBuilder;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 4403
    iget-object v1, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Roads$Builder;->roadBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v1}, Lcom/google/protobuf/RepeatedFieldBuilder;->dispose()V

    .line 4404
    iput-object v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Roads$Builder;->roadBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    .line 4405
    # getter for: Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Roads;->road_:Ljava/util/List;
    invoke-static {p1}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Roads;->access$7400(Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Roads;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Roads$Builder;->road_:Ljava/util/List;

    .line 4406
    iget v1, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Roads$Builder;->bitField0_:I

    and-int/lit8 v1, v1, -0x2

    iput v1, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Roads$Builder;->bitField0_:I

    .line 4407
    # getter for: Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Roads;->alwaysUseFieldBuilders:Z
    invoke-static {}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Roads;->access$7500()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-direct {p0}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Roads$Builder;->getRoadFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilder;

    move-result-object v0

    :cond_4
    iput-object v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Roads$Builder;->roadBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    goto :goto_2

    .line 4411
    :cond_5
    iget-object v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Roads$Builder;->roadBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    # getter for: Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Roads;->road_:Ljava/util/List;
    invoke-static {p1}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Roads;->access$7400(Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Roads;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/protobuf/RepeatedFieldBuilder;->addAllMessages(Ljava/lang/Iterable;)Lcom/google/protobuf/RepeatedFieldBuilder;

    goto :goto_2
.end method

.method public removeRoad(I)Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Roads$Builder;
    .locals 1

    .prologue
    .line 4594
    iget-object v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Roads$Builder;->roadBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 4595
    invoke-direct {p0}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Roads$Builder;->ensureRoadIsMutable()V

    .line 4596
    iget-object v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Roads$Builder;->road_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 4597
    invoke-virtual {p0}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Roads$Builder;->onChanged()V

    .line 4601
    :goto_0
    return-object p0

    .line 4599
    :cond_0
    iget-object v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Roads$Builder;->roadBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilder;->remove(I)V

    goto :goto_0
.end method

.method public setRoad(ILcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Road$Builder;)Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Roads$Builder;
    .locals 2

    .prologue
    .line 4514
    iget-object v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Roads$Builder;->roadBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 4515
    invoke-direct {p0}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Roads$Builder;->ensureRoadIsMutable()V

    .line 4516
    iget-object v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Roads$Builder;->road_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Road$Builder;->build()Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Road;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 4517
    invoke-virtual {p0}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Roads$Builder;->onChanged()V

    .line 4521
    :goto_0
    return-object p0

    .line 4519
    :cond_0
    iget-object v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Roads$Builder;->roadBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {p2}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Road$Builder;->build()Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Road;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/google/protobuf/RepeatedFieldBuilder;->setMessage(ILcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/RepeatedFieldBuilder;

    goto :goto_0
.end method

.method public setRoad(ILcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Road;)Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Roads$Builder;
    .locals 1

    .prologue
    .line 4500
    iget-object v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Roads$Builder;->roadBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_1

    .line 4501
    if-nez p2, :cond_0

    .line 4502
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 4504
    :cond_0
    invoke-direct {p0}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Roads$Builder;->ensureRoadIsMutable()V

    .line 4505
    iget-object v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Roads$Builder;->road_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 4506
    invoke-virtual {p0}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Roads$Builder;->onChanged()V

    .line 4510
    :goto_0
    return-object p0

    .line 4508
    :cond_1
    iget-object v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Roads$Builder;->roadBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0, p1, p2}, Lcom/google/protobuf/RepeatedFieldBuilder;->setMessage(ILcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/RepeatedFieldBuilder;

    goto :goto_0
.end method
