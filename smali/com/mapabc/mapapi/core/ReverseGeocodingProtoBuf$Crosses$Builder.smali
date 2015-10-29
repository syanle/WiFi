.class public final Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Crosses$Builder;
.super Lcom/google/protobuf/GeneratedMessage$Builder;
.source "ReverseGeocodingProtoBuf.java"

# interfaces
.implements Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$CrossesOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Crosses;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessage$Builder",
        "<",
        "Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Crosses$Builder;",
        ">;",
        "Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$CrossesOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private crossBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/RepeatedFieldBuilder",
            "<",
            "Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Cross;",
            "Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Cross$Builder;",
            "Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$CrossOrBuilder;",
            ">;"
        }
    .end annotation
.end field

.field private cross_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Cross;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 6424
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;-><init>()V

    .line 6586
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Crosses$Builder;->cross_:Ljava/util/List;

    .line 6425
    invoke-direct {p0}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Crosses$Builder;->maybeForceBuilderInitialization()V

    .line 6426
    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V
    .locals 1

    .prologue
    .line 6429
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessage$Builder;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V

    .line 6586
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Crosses$Builder;->cross_:Ljava/util/List;

    .line 6430
    invoke-direct {p0}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Crosses$Builder;->maybeForceBuilderInitialization()V

    .line 6431
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;Lcom/mapabc/mapapi/core/z;)V
    .locals 0

    .prologue
    .line 6410
    invoke-direct {p0, p1}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Crosses$Builder;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V

    return-void
.end method

.method static synthetic access$10200(Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Crosses$Builder;)Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Crosses;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 6410
    invoke-direct {p0}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Crosses$Builder;->buildParsed()Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Crosses;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$10300()Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Crosses$Builder;
    .locals 1

    .prologue
    .line 6410
    invoke-static {}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Crosses$Builder;->create()Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Crosses$Builder;

    move-result-object v0

    return-object v0
.end method

.method private buildParsed()Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Crosses;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 6475
    invoke-virtual {p0}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Crosses$Builder;->buildPartial()Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Crosses;

    move-result-object v0

    .line 6476
    invoke-virtual {v0}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Crosses;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_0

    .line 6477
    invoke-static {v0}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Crosses$Builder;->newUninitializedMessageException(Lcom/google/protobuf/Message;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/UninitializedMessageException;->asInvalidProtocolBufferException()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0

    .line 6480
    :cond_0
    return-object v0
.end method

.method private static create()Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Crosses$Builder;
    .locals 1

    .prologue
    .line 6438
    new-instance v0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Crosses$Builder;

    invoke-direct {v0}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Crosses$Builder;-><init>()V

    return-object v0
.end method

.method private ensureCrossIsMutable()V
    .locals 2

    .prologue
    .line 6589
    iget v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Crosses$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 6590
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Crosses$Builder;->cross_:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Crosses$Builder;->cross_:Ljava/util/List;

    .line 6591
    iget v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Crosses$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Crosses$Builder;->bitField0_:I

    .line 6593
    :cond_0
    return-void
.end method

.method private getCrossFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilder;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/RepeatedFieldBuilder",
            "<",
            "Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Cross;",
            "Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Cross$Builder;",
            "Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$CrossOrBuilder;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v0, 0x1

    .line 6759
    iget-object v1, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Crosses$Builder;->crossBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v1, :cond_0

    .line 6760
    new-instance v1, Lcom/google/protobuf/RepeatedFieldBuilder;

    iget-object v2, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Crosses$Builder;->cross_:Ljava/util/List;

    iget v3, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Crosses$Builder;->bitField0_:I

    and-int/lit8 v3, v3, 0x1

    if-ne v3, v0, :cond_1

    :goto_0
    invoke-virtual {p0}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Crosses$Builder;->getParentForChildren()Lcom/google/protobuf/GeneratedMessage$BuilderParent;

    move-result-object v3

    invoke-virtual {p0}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Crosses$Builder;->isClean()Z

    move-result v4

    invoke-direct {v1, v2, v0, v3, v4}, Lcom/google/protobuf/RepeatedFieldBuilder;-><init>(Ljava/util/List;ZLcom/google/protobuf/GeneratedMessage$BuilderParent;Z)V

    iput-object v1, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Crosses$Builder;->crossBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    .line 6766
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Crosses$Builder;->cross_:Ljava/util/List;

    .line 6768
    :cond_0
    iget-object v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Crosses$Builder;->crossBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    return-object v0

    .line 6760
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 6415
    # getter for: Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf;->internal_static_Crosses_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;
    invoke-static {}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf;->access$10000()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .locals 1

    .prologue
    .line 6433
    # getter for: Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Crosses;->alwaysUseFieldBuilders:Z
    invoke-static {}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Crosses;->access$10500()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6434
    invoke-direct {p0}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Crosses$Builder;->getCrossFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilder;

    .line 6436
    :cond_0
    return-void
.end method


# virtual methods
.method public addAllCross(Ljava/lang/Iterable;)Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Crosses$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<+",
            "Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Cross;",
            ">;)",
            "Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Crosses$Builder;"
        }
    .end annotation

    .prologue
    .line 6695
    iget-object v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Crosses$Builder;->crossBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 6696
    invoke-direct {p0}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Crosses$Builder;->ensureCrossIsMutable()V

    .line 6697
    iget-object v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Crosses$Builder;->cross_:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/google/protobuf/GeneratedMessage$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    .line 6698
    invoke-virtual {p0}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Crosses$Builder;->onChanged()V

    .line 6702
    :goto_0
    return-object p0

    .line 6700
    :cond_0
    iget-object v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Crosses$Builder;->crossBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilder;->addAllMessages(Ljava/lang/Iterable;)Lcom/google/protobuf/RepeatedFieldBuilder;

    goto :goto_0
.end method

.method public addCross(ILcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Cross$Builder;)Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Crosses$Builder;
    .locals 2

    .prologue
    .line 6684
    iget-object v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Crosses$Builder;->crossBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 6685
    invoke-direct {p0}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Crosses$Builder;->ensureCrossIsMutable()V

    .line 6686
    iget-object v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Crosses$Builder;->cross_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Cross$Builder;->build()Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Cross;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 6687
    invoke-virtual {p0}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Crosses$Builder;->onChanged()V

    .line 6691
    :goto_0
    return-object p0

    .line 6689
    :cond_0
    iget-object v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Crosses$Builder;->crossBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {p2}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Cross$Builder;->build()Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Cross;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/google/protobuf/RepeatedFieldBuilder;->addMessage(ILcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/RepeatedFieldBuilder;

    goto :goto_0
.end method

.method public addCross(ILcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Cross;)Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Crosses$Builder;
    .locals 1

    .prologue
    .line 6659
    iget-object v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Crosses$Builder;->crossBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_1

    .line 6660
    if-nez p2, :cond_0

    .line 6661
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 6663
    :cond_0
    invoke-direct {p0}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Crosses$Builder;->ensureCrossIsMutable()V

    .line 6664
    iget-object v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Crosses$Builder;->cross_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 6665
    invoke-virtual {p0}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Crosses$Builder;->onChanged()V

    .line 6669
    :goto_0
    return-object p0

    .line 6667
    :cond_1
    iget-object v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Crosses$Builder;->crossBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0, p1, p2}, Lcom/google/protobuf/RepeatedFieldBuilder;->addMessage(ILcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/RepeatedFieldBuilder;

    goto :goto_0
.end method

.method public addCross(Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Cross$Builder;)Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Crosses$Builder;
    .locals 2

    .prologue
    .line 6673
    iget-object v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Crosses$Builder;->crossBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 6674
    invoke-direct {p0}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Crosses$Builder;->ensureCrossIsMutable()V

    .line 6675
    iget-object v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Crosses$Builder;->cross_:Ljava/util/List;

    invoke-virtual {p1}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Cross$Builder;->build()Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Cross;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 6676
    invoke-virtual {p0}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Crosses$Builder;->onChanged()V

    .line 6680
    :goto_0
    return-object p0

    .line 6678
    :cond_0
    iget-object v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Crosses$Builder;->crossBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {p1}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Cross$Builder;->build()Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Cross;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/protobuf/RepeatedFieldBuilder;->addMessage(Lcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/RepeatedFieldBuilder;

    goto :goto_0
.end method

.method public addCross(Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Cross;)Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Crosses$Builder;
    .locals 1

    .prologue
    .line 6645
    iget-object v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Crosses$Builder;->crossBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_1

    .line 6646
    if-nez p1, :cond_0

    .line 6647
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 6649
    :cond_0
    invoke-direct {p0}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Crosses$Builder;->ensureCrossIsMutable()V

    .line 6650
    iget-object v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Crosses$Builder;->cross_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 6651
    invoke-virtual {p0}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Crosses$Builder;->onChanged()V

    .line 6655
    :goto_0
    return-object p0

    .line 6653
    :cond_1
    iget-object v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Crosses$Builder;->crossBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilder;->addMessage(Lcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/RepeatedFieldBuilder;

    goto :goto_0
.end method

.method public addCrossBuilder()Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Cross$Builder;
    .locals 2

    .prologue
    .line 6744
    invoke-direct {p0}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Crosses$Builder;->getCrossFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilder;

    move-result-object v0

    invoke-static {}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Cross;->getDefaultInstance()Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Cross;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/protobuf/RepeatedFieldBuilder;->addBuilder(Lcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/GeneratedMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Cross$Builder;

    return-object v0
.end method

.method public addCrossBuilder(I)Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Cross$Builder;
    .locals 2

    .prologue
    .line 6749
    invoke-direct {p0}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Crosses$Builder;->getCrossFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilder;

    move-result-object v0

    invoke-static {}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Cross;->getDefaultInstance()Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Cross;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/google/protobuf/RepeatedFieldBuilder;->addBuilder(ILcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/GeneratedMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Cross$Builder;

    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 6410
    invoke-virtual {p0}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Crosses$Builder;->build()Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Crosses;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 6410
    invoke-virtual {p0}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Crosses$Builder;->build()Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Crosses;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Crosses;
    .locals 2

    .prologue
    .line 6466
    invoke-virtual {p0}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Crosses$Builder;->buildPartial()Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Crosses;

    move-result-object v0

    .line 6467
    invoke-virtual {v0}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Crosses;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_0

    .line 6468
    invoke-static {v0}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Crosses$Builder;->newUninitializedMessageException(Lcom/google/protobuf/Message;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0

    .line 6470
    :cond_0
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 6410
    invoke-virtual {p0}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Crosses$Builder;->buildPartial()Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Crosses;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 6410
    invoke-virtual {p0}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Crosses$Builder;->buildPartial()Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Crosses;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Crosses;
    .locals 3

    .prologue
    .line 6484
    new-instance v0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Crosses;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Crosses;-><init>(Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Crosses$Builder;Lcom/mapabc/mapapi/core/z;)V

    .line 6485
    iget v1, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Crosses$Builder;->bitField0_:I

    .line 6486
    iget-object v1, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Crosses$Builder;->crossBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v1, :cond_1

    .line 6487
    iget v1, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Crosses$Builder;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 6488
    iget-object v1, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Crosses$Builder;->cross_:Ljava/util/List;

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Crosses$Builder;->cross_:Ljava/util/List;

    .line 6489
    iget v1, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Crosses$Builder;->bitField0_:I

    and-int/lit8 v1, v1, -0x2

    iput v1, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Crosses$Builder;->bitField0_:I

    .line 6491
    :cond_0
    iget-object v1, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Crosses$Builder;->cross_:Ljava/util/List;

    # setter for: Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Crosses;->cross_:Ljava/util/List;
    invoke-static {v0, v1}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Crosses;->access$10702(Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Crosses;Ljava/util/List;)Ljava/util/List;

    .line 6495
    :goto_0
    invoke-virtual {p0}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Crosses$Builder;->onBuilt()V

    .line 6496
    return-object v0

    .line 6493
    :cond_1
    iget-object v1, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Crosses$Builder;->crossBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v1}, Lcom/google/protobuf/RepeatedFieldBuilder;->build()Ljava/util/List;

    move-result-object v1

    # setter for: Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Crosses;->cross_:Ljava/util/List;
    invoke-static {v0, v1}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Crosses;->access$10702(Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Crosses;Ljava/util/List;)Ljava/util/List;

    goto :goto_0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 6410
    invoke-virtual {p0}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Crosses$Builder;->clear()Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Crosses$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessage$Builder;
    .locals 1

    .prologue
    .line 6410
    invoke-virtual {p0}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Crosses$Builder;->clear()Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Crosses$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 6410
    invoke-virtual {p0}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Crosses$Builder;->clear()Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Crosses$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 6410
    invoke-virtual {p0}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Crosses$Builder;->clear()Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Crosses$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Crosses$Builder;
    .locals 1

    .prologue
    .line 6442
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->clear()Lcom/google/protobuf/GeneratedMessage$Builder;

    .line 6443
    iget-object v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Crosses$Builder;->crossBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 6444
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Crosses$Builder;->cross_:Ljava/util/List;

    .line 6445
    iget v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Crosses$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Crosses$Builder;->bitField0_:I

    .line 6449
    :goto_0
    return-object p0

    .line 6447
    :cond_0
    iget-object v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Crosses$Builder;->crossBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilder;->clear()V

    goto :goto_0
.end method

.method public clearCross()Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Crosses$Builder;
    .locals 1

    .prologue
    .line 6705
    iget-object v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Crosses$Builder;->crossBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 6706
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Crosses$Builder;->cross_:Ljava/util/List;

    .line 6707
    iget v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Crosses$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Crosses$Builder;->bitField0_:I

    .line 6708
    invoke-virtual {p0}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Crosses$Builder;->onChanged()V

    .line 6712
    :goto_0
    return-object p0

    .line 6710
    :cond_0
    iget-object v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Crosses$Builder;->crossBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilder;->clear()V

    goto :goto_0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 6410
    invoke-virtual {p0}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Crosses$Builder;->clone()Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Crosses$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .prologue
    .line 6410
    invoke-virtual {p0}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Crosses$Builder;->clone()Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Crosses$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessage$Builder;
    .locals 1

    .prologue
    .line 6410
    invoke-virtual {p0}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Crosses$Builder;->clone()Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Crosses$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 6410
    invoke-virtual {p0}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Crosses$Builder;->clone()Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Crosses$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 6410
    invoke-virtual {p0}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Crosses$Builder;->clone()Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Crosses$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Crosses$Builder;
    .locals 2

    .prologue
    .line 6453
    invoke-static {}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Crosses$Builder;->create()Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Crosses$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Crosses$Builder;->buildPartial()Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Crosses;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Crosses$Builder;->mergeFrom(Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Crosses;)Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Crosses$Builder;

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
    .line 6410
    invoke-virtual {p0}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Crosses$Builder;->clone()Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Crosses$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getCross(I)Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Cross;
    .locals 1

    .prologue
    .line 6613
    iget-object v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Crosses$Builder;->crossBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 6614
    iget-object v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Crosses$Builder;->cross_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Cross;

    .line 6616
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Crosses$Builder;->crossBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilder;->getMessage(I)Lcom/google/protobuf/GeneratedMessage;

    move-result-object v0

    check-cast v0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Cross;

    goto :goto_0
.end method

.method public getCrossBuilder(I)Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Cross$Builder;
    .locals 1

    .prologue
    .line 6726
    invoke-direct {p0}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Crosses$Builder;->getCrossFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilder;->getBuilder(I)Lcom/google/protobuf/GeneratedMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Cross$Builder;

    return-object v0
.end method

.method public getCrossBuilderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Cross$Builder;",
            ">;"
        }
    .end annotation

    .prologue
    .line 6754
    invoke-direct {p0}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Crosses$Builder;->getCrossFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilder;->getBuilderList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getCrossCount()I
    .locals 1

    .prologue
    .line 6606
    iget-object v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Crosses$Builder;->crossBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 6607
    iget-object v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Crosses$Builder;->cross_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 6609
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Crosses$Builder;->crossBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilder;->getCount()I

    move-result v0

    goto :goto_0
.end method

.method public getCrossList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Cross;",
            ">;"
        }
    .end annotation

    .prologue
    .line 6599
    iget-object v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Crosses$Builder;->crossBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 6600
    iget-object v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Crosses$Builder;->cross_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 6602
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Crosses$Builder;->crossBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilder;->getMessageList()Ljava/util/List;

    move-result-object v0

    goto :goto_0
.end method

.method public getCrossOrBuilder(I)Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$CrossOrBuilder;
    .locals 1

    .prologue
    .line 6730
    iget-object v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Crosses$Builder;->crossBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 6731
    iget-object v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Crosses$Builder;->cross_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$CrossOrBuilder;

    .line 6732
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Crosses$Builder;->crossBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilder;->getMessageOrBuilder(I)Lcom/google/protobuf/MessageOrBuilder;

    move-result-object v0

    check-cast v0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$CrossOrBuilder;

    goto :goto_0
.end method

.method public getCrossOrBuilderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<+",
            "Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$CrossOrBuilder;",
            ">;"
        }
    .end annotation

    .prologue
    .line 6737
    iget-object v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Crosses$Builder;->crossBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-eqz v0, :cond_0

    .line 6738
    iget-object v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Crosses$Builder;->crossBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilder;->getMessageOrBuilderList()Ljava/util/List;

    move-result-object v0

    .line 6740
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Crosses$Builder;->cross_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    goto :goto_0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 6410
    invoke-virtual {p0}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Crosses$Builder;->getDefaultInstanceForType()Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Crosses;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 6410
    invoke-virtual {p0}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Crosses$Builder;->getDefaultInstanceForType()Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Crosses;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Crosses;
    .locals 1

    .prologue
    .line 6462
    invoke-static {}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Crosses;->getDefaultInstance()Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Crosses;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 6458
    invoke-static {}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Crosses;->getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method protected internalGetFieldAccessorTable()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 1

    .prologue
    .line 6420
    # getter for: Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf;->internal_static_Crosses_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    invoke-static {}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf;->access$10100()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 6541
    move v0, v1

    :goto_0
    invoke-virtual {p0}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Crosses$Builder;->getCrossCount()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 6542
    invoke-virtual {p0, v0}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Crosses$Builder;->getCross(I)Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Cross;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Cross;->isInitialized()Z

    move-result v2

    if-nez v2, :cond_0

    .line 6547
    :goto_1
    return v1

    .line 6541
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 6547
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
    .line 6410
    invoke-virtual {p0, p1, p2}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Crosses$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Crosses$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 6410
    invoke-virtual {p0, p1}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Crosses$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Crosses$Builder;

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
    .line 6410
    invoke-virtual {p0, p1, p2}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Crosses$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Crosses$Builder;

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
    .line 6410
    invoke-virtual {p0, p1, p2}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Crosses$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Crosses$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 6410
    invoke-virtual {p0, p1}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Crosses$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Crosses$Builder;

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
    .line 6410
    invoke-virtual {p0, p1, p2}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Crosses$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Crosses$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Crosses$Builder;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 6554
    invoke-virtual {p0}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Crosses$Builder;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v0

    invoke-static {v0}, Lcom/google/protobuf/UnknownFieldSet;->newBuilder(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/UnknownFieldSet$Builder;

    move-result-object v0

    .line 6558
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v1

    .line 6559
    sparse-switch v1, :sswitch_data_0

    .line 6565
    invoke-virtual {p0, p1, v0, p2, v1}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Crosses$Builder;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/UnknownFieldSet$Builder;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 6567
    invoke-virtual {v0}, Lcom/google/protobuf/UnknownFieldSet$Builder;->build()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Crosses$Builder;->setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessage$Builder;

    .line 6568
    invoke-virtual {p0}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Crosses$Builder;->onChanged()V

    .line 6569
    :goto_1
    return-object p0

    .line 6561
    :sswitch_0
    invoke-virtual {v0}, Lcom/google/protobuf/UnknownFieldSet$Builder;->build()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Crosses$Builder;->setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessage$Builder;

    .line 6562
    invoke-virtual {p0}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Crosses$Builder;->onChanged()V

    goto :goto_1

    .line 6574
    :sswitch_1
    invoke-static {}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Cross;->newBuilder()Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Cross$Builder;

    move-result-object v1

    .line 6575
    invoke-virtual {p1, v1, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 6576
    invoke-virtual {v1}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Cross$Builder;->buildPartial()Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Cross;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Crosses$Builder;->addCross(Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Cross;)Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Crosses$Builder;

    goto :goto_0

    .line 6559
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
    .end sparse-switch
.end method

.method public mergeFrom(Lcom/google/protobuf/Message;)Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Crosses$Builder;
    .locals 1

    .prologue
    .line 6500
    instance-of v0, p1, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Crosses;

    if-eqz v0, :cond_0

    .line 6501
    check-cast p1, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Crosses;

    invoke-virtual {p0, p1}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Crosses$Builder;->mergeFrom(Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Crosses;)Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Crosses$Builder;

    move-result-object p0

    .line 6504
    :goto_0
    return-object p0

    .line 6503
    :cond_0
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessage$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;

    goto :goto_0
.end method

.method public mergeFrom(Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Crosses;)Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Crosses$Builder;
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 6509
    invoke-static {}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Crosses;->getDefaultInstance()Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Crosses;

    move-result-object v1

    if-ne p1, v1, :cond_0

    .line 6537
    :goto_0
    return-object p0

    .line 6510
    :cond_0
    iget-object v1, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Crosses$Builder;->crossBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v1, :cond_3

    .line 6511
    # getter for: Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Crosses;->cross_:Ljava/util/List;
    invoke-static {p1}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Crosses;->access$10700(Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Crosses;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 6512
    iget-object v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Crosses$Builder;->cross_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 6513
    # getter for: Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Crosses;->cross_:Ljava/util/List;
    invoke-static {p1}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Crosses;->access$10700(Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Crosses;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Crosses$Builder;->cross_:Ljava/util/List;

    .line 6514
    iget v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Crosses$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Crosses$Builder;->bitField0_:I

    .line 6519
    :goto_1
    invoke-virtual {p0}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Crosses$Builder;->onChanged()V

    .line 6536
    :cond_1
    :goto_2
    invoke-virtual {p1}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Crosses;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Crosses$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessage$Builder;

    goto :goto_0

    .line 6516
    :cond_2
    invoke-direct {p0}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Crosses$Builder;->ensureCrossIsMutable()V

    .line 6517
    iget-object v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Crosses$Builder;->cross_:Ljava/util/List;

    # getter for: Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Crosses;->cross_:Ljava/util/List;
    invoke-static {p1}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Crosses;->access$10700(Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Crosses;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_1

    .line 6522
    :cond_3
    # getter for: Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Crosses;->cross_:Ljava/util/List;
    invoke-static {p1}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Crosses;->access$10700(Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Crosses;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 6523
    iget-object v1, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Crosses$Builder;->crossBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v1}, Lcom/google/protobuf/RepeatedFieldBuilder;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 6524
    iget-object v1, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Crosses$Builder;->crossBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v1}, Lcom/google/protobuf/RepeatedFieldBuilder;->dispose()V

    .line 6525
    iput-object v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Crosses$Builder;->crossBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    .line 6526
    # getter for: Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Crosses;->cross_:Ljava/util/List;
    invoke-static {p1}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Crosses;->access$10700(Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Crosses;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Crosses$Builder;->cross_:Ljava/util/List;

    .line 6527
    iget v1, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Crosses$Builder;->bitField0_:I

    and-int/lit8 v1, v1, -0x2

    iput v1, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Crosses$Builder;->bitField0_:I

    .line 6528
    # getter for: Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Crosses;->alwaysUseFieldBuilders:Z
    invoke-static {}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Crosses;->access$10800()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-direct {p0}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Crosses$Builder;->getCrossFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilder;

    move-result-object v0

    :cond_4
    iput-object v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Crosses$Builder;->crossBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    goto :goto_2

    .line 6532
    :cond_5
    iget-object v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Crosses$Builder;->crossBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    # getter for: Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Crosses;->cross_:Ljava/util/List;
    invoke-static {p1}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Crosses;->access$10700(Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Crosses;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/protobuf/RepeatedFieldBuilder;->addAllMessages(Ljava/lang/Iterable;)Lcom/google/protobuf/RepeatedFieldBuilder;

    goto :goto_2
.end method

.method public removeCross(I)Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Crosses$Builder;
    .locals 1

    .prologue
    .line 6715
    iget-object v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Crosses$Builder;->crossBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 6716
    invoke-direct {p0}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Crosses$Builder;->ensureCrossIsMutable()V

    .line 6717
    iget-object v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Crosses$Builder;->cross_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 6718
    invoke-virtual {p0}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Crosses$Builder;->onChanged()V

    .line 6722
    :goto_0
    return-object p0

    .line 6720
    :cond_0
    iget-object v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Crosses$Builder;->crossBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilder;->remove(I)V

    goto :goto_0
.end method

.method public setCross(ILcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Cross$Builder;)Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Crosses$Builder;
    .locals 2

    .prologue
    .line 6635
    iget-object v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Crosses$Builder;->crossBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 6636
    invoke-direct {p0}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Crosses$Builder;->ensureCrossIsMutable()V

    .line 6637
    iget-object v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Crosses$Builder;->cross_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Cross$Builder;->build()Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Cross;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 6638
    invoke-virtual {p0}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Crosses$Builder;->onChanged()V

    .line 6642
    :goto_0
    return-object p0

    .line 6640
    :cond_0
    iget-object v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Crosses$Builder;->crossBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {p2}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Cross$Builder;->build()Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Cross;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/google/protobuf/RepeatedFieldBuilder;->setMessage(ILcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/RepeatedFieldBuilder;

    goto :goto_0
.end method

.method public setCross(ILcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Cross;)Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Crosses$Builder;
    .locals 1

    .prologue
    .line 6621
    iget-object v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Crosses$Builder;->crossBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_1

    .line 6622
    if-nez p2, :cond_0

    .line 6623
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 6625
    :cond_0
    invoke-direct {p0}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Crosses$Builder;->ensureCrossIsMutable()V

    .line 6626
    iget-object v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Crosses$Builder;->cross_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 6627
    invoke-virtual {p0}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Crosses$Builder;->onChanged()V

    .line 6631
    :goto_0
    return-object p0

    .line 6629
    :cond_1
    iget-object v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Crosses$Builder;->crossBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0, p1, p2}, Lcom/google/protobuf/RepeatedFieldBuilder;->setMessage(ILcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/RepeatedFieldBuilder;

    goto :goto_0
.end method
