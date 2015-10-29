.class public final Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$SubPOIS$Builder;
.super Lcom/google/protobuf/GeneratedMessage$Builder;
.source "GeocodingProtoBuf.java"

# interfaces
.implements Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$SubPOISOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$SubPOIS;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessage$Builder",
        "<",
        "Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$SubPOIS$Builder;",
        ">;",
        "Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$SubPOISOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private subpoiBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/RepeatedFieldBuilder",
            "<",
            "Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$SubPOI;",
            "Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$SubPOI$Builder;",
            "Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$SubPOIOrBuilder;",
            ">;"
        }
    .end annotation
.end field

.field private subpoi_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$SubPOI;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 4381
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;-><init>()V

    .line 4537
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$SubPOIS$Builder;->subpoi_:Ljava/util/List;

    .line 4382
    invoke-direct {p0}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$SubPOIS$Builder;->maybeForceBuilderInitialization()V

    .line 4383
    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V
    .locals 1

    .prologue
    .line 4386
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessage$Builder;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V

    .line 4537
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$SubPOIS$Builder;->subpoi_:Ljava/util/List;

    .line 4387
    invoke-direct {p0}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$SubPOIS$Builder;->maybeForceBuilderInitialization()V

    .line 4388
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;Lcom/mapabc/mapapi/geocoder/c;)V
    .locals 0

    .prologue
    .line 4367
    invoke-direct {p0, p1}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$SubPOIS$Builder;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V

    return-void
.end method

.method static synthetic access$6200(Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$SubPOIS$Builder;)Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$SubPOIS;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 4367
    invoke-direct {p0}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$SubPOIS$Builder;->buildParsed()Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$SubPOIS;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$6300()Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$SubPOIS$Builder;
    .locals 1

    .prologue
    .line 4367
    invoke-static {}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$SubPOIS$Builder;->create()Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$SubPOIS$Builder;

    move-result-object v0

    return-object v0
.end method

.method private buildParsed()Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$SubPOIS;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 4432
    invoke-virtual {p0}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$SubPOIS$Builder;->buildPartial()Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$SubPOIS;

    move-result-object v0

    .line 4433
    invoke-virtual {v0}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$SubPOIS;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_0

    .line 4434
    invoke-static {v0}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$SubPOIS$Builder;->newUninitializedMessageException(Lcom/google/protobuf/Message;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/UninitializedMessageException;->asInvalidProtocolBufferException()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0

    .line 4437
    :cond_0
    return-object v0
.end method

.method private static create()Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$SubPOIS$Builder;
    .locals 1

    .prologue
    .line 4395
    new-instance v0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$SubPOIS$Builder;

    invoke-direct {v0}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$SubPOIS$Builder;-><init>()V

    return-object v0
.end method

.method private ensureSubpoiIsMutable()V
    .locals 2

    .prologue
    .line 4540
    iget v0, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$SubPOIS$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 4541
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$SubPOIS$Builder;->subpoi_:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$SubPOIS$Builder;->subpoi_:Ljava/util/List;

    .line 4542
    iget v0, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$SubPOIS$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$SubPOIS$Builder;->bitField0_:I

    .line 4544
    :cond_0
    return-void
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 4372
    # getter for: Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf;->internal_static_SubPOIS_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;
    invoke-static {}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf;->access$6000()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method private getSubpoiFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilder;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/RepeatedFieldBuilder",
            "<",
            "Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$SubPOI;",
            "Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$SubPOI$Builder;",
            "Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$SubPOIOrBuilder;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v0, 0x1

    .line 4710
    iget-object v1, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$SubPOIS$Builder;->subpoiBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v1, :cond_0

    .line 4711
    new-instance v1, Lcom/google/protobuf/RepeatedFieldBuilder;

    iget-object v2, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$SubPOIS$Builder;->subpoi_:Ljava/util/List;

    iget v3, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$SubPOIS$Builder;->bitField0_:I

    and-int/lit8 v3, v3, 0x1

    if-ne v3, v0, :cond_1

    :goto_0
    invoke-virtual {p0}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$SubPOIS$Builder;->getParentForChildren()Lcom/google/protobuf/GeneratedMessage$BuilderParent;

    move-result-object v3

    invoke-virtual {p0}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$SubPOIS$Builder;->isClean()Z

    move-result v4

    invoke-direct {v1, v2, v0, v3, v4}, Lcom/google/protobuf/RepeatedFieldBuilder;-><init>(Ljava/util/List;ZLcom/google/protobuf/GeneratedMessage$BuilderParent;Z)V

    iput-object v1, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$SubPOIS$Builder;->subpoiBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    .line 4717
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$SubPOIS$Builder;->subpoi_:Ljava/util/List;

    .line 4719
    :cond_0
    iget-object v0, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$SubPOIS$Builder;->subpoiBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    return-object v0

    .line 4711
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private maybeForceBuilderInitialization()V
    .locals 1

    .prologue
    .line 4390
    # getter for: Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$SubPOIS;->alwaysUseFieldBuilders:Z
    invoke-static {}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$SubPOIS;->access$6500()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4391
    invoke-direct {p0}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$SubPOIS$Builder;->getSubpoiFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilder;

    .line 4393
    :cond_0
    return-void
.end method


# virtual methods
.method public addAllSubpoi(Ljava/lang/Iterable;)Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$SubPOIS$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<+",
            "Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$SubPOI;",
            ">;)",
            "Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$SubPOIS$Builder;"
        }
    .end annotation

    .prologue
    .line 4646
    iget-object v0, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$SubPOIS$Builder;->subpoiBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 4647
    invoke-direct {p0}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$SubPOIS$Builder;->ensureSubpoiIsMutable()V

    .line 4648
    iget-object v0, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$SubPOIS$Builder;->subpoi_:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/google/protobuf/GeneratedMessage$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    .line 4649
    invoke-virtual {p0}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$SubPOIS$Builder;->onChanged()V

    .line 4653
    :goto_0
    return-object p0

    .line 4651
    :cond_0
    iget-object v0, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$SubPOIS$Builder;->subpoiBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilder;->addAllMessages(Ljava/lang/Iterable;)Lcom/google/protobuf/RepeatedFieldBuilder;

    goto :goto_0
.end method

.method public addSubpoi(ILcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$SubPOI$Builder;)Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$SubPOIS$Builder;
    .locals 2

    .prologue
    .line 4635
    iget-object v0, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$SubPOIS$Builder;->subpoiBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 4636
    invoke-direct {p0}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$SubPOIS$Builder;->ensureSubpoiIsMutable()V

    .line 4637
    iget-object v0, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$SubPOIS$Builder;->subpoi_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$SubPOI$Builder;->build()Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$SubPOI;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 4638
    invoke-virtual {p0}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$SubPOIS$Builder;->onChanged()V

    .line 4642
    :goto_0
    return-object p0

    .line 4640
    :cond_0
    iget-object v0, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$SubPOIS$Builder;->subpoiBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {p2}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$SubPOI$Builder;->build()Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$SubPOI;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/google/protobuf/RepeatedFieldBuilder;->addMessage(ILcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/RepeatedFieldBuilder;

    goto :goto_0
.end method

.method public addSubpoi(ILcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$SubPOI;)Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$SubPOIS$Builder;
    .locals 1

    .prologue
    .line 4610
    iget-object v0, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$SubPOIS$Builder;->subpoiBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_1

    .line 4611
    if-nez p2, :cond_0

    .line 4612
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 4614
    :cond_0
    invoke-direct {p0}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$SubPOIS$Builder;->ensureSubpoiIsMutable()V

    .line 4615
    iget-object v0, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$SubPOIS$Builder;->subpoi_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 4616
    invoke-virtual {p0}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$SubPOIS$Builder;->onChanged()V

    .line 4620
    :goto_0
    return-object p0

    .line 4618
    :cond_1
    iget-object v0, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$SubPOIS$Builder;->subpoiBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0, p1, p2}, Lcom/google/protobuf/RepeatedFieldBuilder;->addMessage(ILcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/RepeatedFieldBuilder;

    goto :goto_0
.end method

.method public addSubpoi(Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$SubPOI$Builder;)Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$SubPOIS$Builder;
    .locals 2

    .prologue
    .line 4624
    iget-object v0, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$SubPOIS$Builder;->subpoiBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 4625
    invoke-direct {p0}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$SubPOIS$Builder;->ensureSubpoiIsMutable()V

    .line 4626
    iget-object v0, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$SubPOIS$Builder;->subpoi_:Ljava/util/List;

    invoke-virtual {p1}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$SubPOI$Builder;->build()Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$SubPOI;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4627
    invoke-virtual {p0}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$SubPOIS$Builder;->onChanged()V

    .line 4631
    :goto_0
    return-object p0

    .line 4629
    :cond_0
    iget-object v0, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$SubPOIS$Builder;->subpoiBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {p1}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$SubPOI$Builder;->build()Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$SubPOI;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/protobuf/RepeatedFieldBuilder;->addMessage(Lcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/RepeatedFieldBuilder;

    goto :goto_0
.end method

.method public addSubpoi(Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$SubPOI;)Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$SubPOIS$Builder;
    .locals 1

    .prologue
    .line 4596
    iget-object v0, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$SubPOIS$Builder;->subpoiBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_1

    .line 4597
    if-nez p1, :cond_0

    .line 4598
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 4600
    :cond_0
    invoke-direct {p0}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$SubPOIS$Builder;->ensureSubpoiIsMutable()V

    .line 4601
    iget-object v0, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$SubPOIS$Builder;->subpoi_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4602
    invoke-virtual {p0}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$SubPOIS$Builder;->onChanged()V

    .line 4606
    :goto_0
    return-object p0

    .line 4604
    :cond_1
    iget-object v0, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$SubPOIS$Builder;->subpoiBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilder;->addMessage(Lcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/RepeatedFieldBuilder;

    goto :goto_0
.end method

.method public addSubpoiBuilder()Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$SubPOI$Builder;
    .locals 2

    .prologue
    .line 4695
    invoke-direct {p0}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$SubPOIS$Builder;->getSubpoiFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilder;

    move-result-object v0

    invoke-static {}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$SubPOI;->getDefaultInstance()Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$SubPOI;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/protobuf/RepeatedFieldBuilder;->addBuilder(Lcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/GeneratedMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$SubPOI$Builder;

    return-object v0
.end method

.method public addSubpoiBuilder(I)Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$SubPOI$Builder;
    .locals 2

    .prologue
    .line 4700
    invoke-direct {p0}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$SubPOIS$Builder;->getSubpoiFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilder;

    move-result-object v0

    invoke-static {}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$SubPOI;->getDefaultInstance()Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$SubPOI;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/google/protobuf/RepeatedFieldBuilder;->addBuilder(ILcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/GeneratedMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$SubPOI$Builder;

    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 4367
    invoke-virtual {p0}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$SubPOIS$Builder;->build()Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$SubPOIS;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 4367
    invoke-virtual {p0}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$SubPOIS$Builder;->build()Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$SubPOIS;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$SubPOIS;
    .locals 2

    .prologue
    .line 4423
    invoke-virtual {p0}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$SubPOIS$Builder;->buildPartial()Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$SubPOIS;

    move-result-object v0

    .line 4424
    invoke-virtual {v0}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$SubPOIS;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_0

    .line 4425
    invoke-static {v0}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$SubPOIS$Builder;->newUninitializedMessageException(Lcom/google/protobuf/Message;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0

    .line 4427
    :cond_0
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 4367
    invoke-virtual {p0}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$SubPOIS$Builder;->buildPartial()Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$SubPOIS;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 4367
    invoke-virtual {p0}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$SubPOIS$Builder;->buildPartial()Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$SubPOIS;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$SubPOIS;
    .locals 3

    .prologue
    .line 4441
    new-instance v0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$SubPOIS;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$SubPOIS;-><init>(Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$SubPOIS$Builder;Lcom/mapabc/mapapi/geocoder/c;)V

    .line 4442
    iget v1, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$SubPOIS$Builder;->bitField0_:I

    .line 4443
    iget-object v1, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$SubPOIS$Builder;->subpoiBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v1, :cond_1

    .line 4444
    iget v1, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$SubPOIS$Builder;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 4445
    iget-object v1, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$SubPOIS$Builder;->subpoi_:Ljava/util/List;

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$SubPOIS$Builder;->subpoi_:Ljava/util/List;

    .line 4446
    iget v1, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$SubPOIS$Builder;->bitField0_:I

    and-int/lit8 v1, v1, -0x2

    iput v1, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$SubPOIS$Builder;->bitField0_:I

    .line 4448
    :cond_0
    iget-object v1, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$SubPOIS$Builder;->subpoi_:Ljava/util/List;

    # setter for: Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$SubPOIS;->subpoi_:Ljava/util/List;
    invoke-static {v0, v1}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$SubPOIS;->access$6702(Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$SubPOIS;Ljava/util/List;)Ljava/util/List;

    .line 4452
    :goto_0
    invoke-virtual {p0}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$SubPOIS$Builder;->onBuilt()V

    .line 4453
    return-object v0

    .line 4450
    :cond_1
    iget-object v1, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$SubPOIS$Builder;->subpoiBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v1}, Lcom/google/protobuf/RepeatedFieldBuilder;->build()Ljava/util/List;

    move-result-object v1

    # setter for: Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$SubPOIS;->subpoi_:Ljava/util/List;
    invoke-static {v0, v1}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$SubPOIS;->access$6702(Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$SubPOIS;Ljava/util/List;)Ljava/util/List;

    goto :goto_0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 4367
    invoke-virtual {p0}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$SubPOIS$Builder;->clear()Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$SubPOIS$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessage$Builder;
    .locals 1

    .prologue
    .line 4367
    invoke-virtual {p0}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$SubPOIS$Builder;->clear()Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$SubPOIS$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 4367
    invoke-virtual {p0}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$SubPOIS$Builder;->clear()Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$SubPOIS$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 4367
    invoke-virtual {p0}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$SubPOIS$Builder;->clear()Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$SubPOIS$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$SubPOIS$Builder;
    .locals 1

    .prologue
    .line 4399
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->clear()Lcom/google/protobuf/GeneratedMessage$Builder;

    .line 4400
    iget-object v0, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$SubPOIS$Builder;->subpoiBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 4401
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$SubPOIS$Builder;->subpoi_:Ljava/util/List;

    .line 4402
    iget v0, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$SubPOIS$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$SubPOIS$Builder;->bitField0_:I

    .line 4406
    :goto_0
    return-object p0

    .line 4404
    :cond_0
    iget-object v0, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$SubPOIS$Builder;->subpoiBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilder;->clear()V

    goto :goto_0
.end method

.method public clearSubpoi()Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$SubPOIS$Builder;
    .locals 1

    .prologue
    .line 4656
    iget-object v0, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$SubPOIS$Builder;->subpoiBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 4657
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$SubPOIS$Builder;->subpoi_:Ljava/util/List;

    .line 4658
    iget v0, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$SubPOIS$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$SubPOIS$Builder;->bitField0_:I

    .line 4659
    invoke-virtual {p0}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$SubPOIS$Builder;->onChanged()V

    .line 4663
    :goto_0
    return-object p0

    .line 4661
    :cond_0
    iget-object v0, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$SubPOIS$Builder;->subpoiBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilder;->clear()V

    goto :goto_0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 4367
    invoke-virtual {p0}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$SubPOIS$Builder;->clone()Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$SubPOIS$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .prologue
    .line 4367
    invoke-virtual {p0}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$SubPOIS$Builder;->clone()Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$SubPOIS$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessage$Builder;
    .locals 1

    .prologue
    .line 4367
    invoke-virtual {p0}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$SubPOIS$Builder;->clone()Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$SubPOIS$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 4367
    invoke-virtual {p0}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$SubPOIS$Builder;->clone()Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$SubPOIS$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 4367
    invoke-virtual {p0}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$SubPOIS$Builder;->clone()Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$SubPOIS$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$SubPOIS$Builder;
    .locals 2

    .prologue
    .line 4410
    invoke-static {}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$SubPOIS$Builder;->create()Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$SubPOIS$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$SubPOIS$Builder;->buildPartial()Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$SubPOIS;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$SubPOIS$Builder;->mergeFrom(Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$SubPOIS;)Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$SubPOIS$Builder;

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
    .line 4367
    invoke-virtual {p0}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$SubPOIS$Builder;->clone()Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$SubPOIS$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 4367
    invoke-virtual {p0}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$SubPOIS$Builder;->getDefaultInstanceForType()Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$SubPOIS;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 4367
    invoke-virtual {p0}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$SubPOIS$Builder;->getDefaultInstanceForType()Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$SubPOIS;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$SubPOIS;
    .locals 1

    .prologue
    .line 4419
    invoke-static {}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$SubPOIS;->getDefaultInstance()Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$SubPOIS;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 4415
    invoke-static {}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$SubPOIS;->getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public getSubpoi(I)Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$SubPOI;
    .locals 1

    .prologue
    .line 4564
    iget-object v0, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$SubPOIS$Builder;->subpoiBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 4565
    iget-object v0, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$SubPOIS$Builder;->subpoi_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$SubPOI;

    .line 4567
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$SubPOIS$Builder;->subpoiBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilder;->getMessage(I)Lcom/google/protobuf/GeneratedMessage;

    move-result-object v0

    check-cast v0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$SubPOI;

    goto :goto_0
.end method

.method public getSubpoiBuilder(I)Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$SubPOI$Builder;
    .locals 1

    .prologue
    .line 4677
    invoke-direct {p0}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$SubPOIS$Builder;->getSubpoiFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilder;->getBuilder(I)Lcom/google/protobuf/GeneratedMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$SubPOI$Builder;

    return-object v0
.end method

.method public getSubpoiBuilderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$SubPOI$Builder;",
            ">;"
        }
    .end annotation

    .prologue
    .line 4705
    invoke-direct {p0}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$SubPOIS$Builder;->getSubpoiFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilder;->getBuilderList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getSubpoiCount()I
    .locals 1

    .prologue
    .line 4557
    iget-object v0, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$SubPOIS$Builder;->subpoiBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 4558
    iget-object v0, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$SubPOIS$Builder;->subpoi_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 4560
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$SubPOIS$Builder;->subpoiBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilder;->getCount()I

    move-result v0

    goto :goto_0
.end method

.method public getSubpoiList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$SubPOI;",
            ">;"
        }
    .end annotation

    .prologue
    .line 4550
    iget-object v0, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$SubPOIS$Builder;->subpoiBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 4551
    iget-object v0, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$SubPOIS$Builder;->subpoi_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 4553
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$SubPOIS$Builder;->subpoiBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilder;->getMessageList()Ljava/util/List;

    move-result-object v0

    goto :goto_0
.end method

.method public getSubpoiOrBuilder(I)Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$SubPOIOrBuilder;
    .locals 1

    .prologue
    .line 4681
    iget-object v0, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$SubPOIS$Builder;->subpoiBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 4682
    iget-object v0, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$SubPOIS$Builder;->subpoi_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$SubPOIOrBuilder;

    .line 4683
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$SubPOIS$Builder;->subpoiBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilder;->getMessageOrBuilder(I)Lcom/google/protobuf/MessageOrBuilder;

    move-result-object v0

    check-cast v0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$SubPOIOrBuilder;

    goto :goto_0
.end method

.method public getSubpoiOrBuilderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<+",
            "Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$SubPOIOrBuilder;",
            ">;"
        }
    .end annotation

    .prologue
    .line 4688
    iget-object v0, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$SubPOIS$Builder;->subpoiBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-eqz v0, :cond_0

    .line 4689
    iget-object v0, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$SubPOIS$Builder;->subpoiBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilder;->getMessageOrBuilderList()Ljava/util/List;

    move-result-object v0

    .line 4691
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$SubPOIS$Builder;->subpoi_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    goto :goto_0
.end method

.method protected internalGetFieldAccessorTable()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 1

    .prologue
    .line 4377
    # getter for: Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf;->internal_static_SubPOIS_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    invoke-static {}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf;->access$6100()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 1

    .prologue
    .line 4498
    const/4 v0, 0x1

    return v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 4367
    invoke-virtual {p0, p1, p2}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$SubPOIS$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$SubPOIS$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 4367
    invoke-virtual {p0, p1}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$SubPOIS$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$SubPOIS$Builder;

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
    .line 4367
    invoke-virtual {p0, p1, p2}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$SubPOIS$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$SubPOIS$Builder;

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
    .line 4367
    invoke-virtual {p0, p1, p2}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$SubPOIS$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$SubPOIS$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 4367
    invoke-virtual {p0, p1}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$SubPOIS$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$SubPOIS$Builder;

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
    .line 4367
    invoke-virtual {p0, p1, p2}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$SubPOIS$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$SubPOIS$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$SubPOIS$Builder;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 4505
    invoke-virtual {p0}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$SubPOIS$Builder;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v0

    invoke-static {v0}, Lcom/google/protobuf/UnknownFieldSet;->newBuilder(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/UnknownFieldSet$Builder;

    move-result-object v0

    .line 4509
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v1

    .line 4510
    sparse-switch v1, :sswitch_data_0

    .line 4516
    invoke-virtual {p0, p1, v0, p2, v1}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$SubPOIS$Builder;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/UnknownFieldSet$Builder;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 4518
    invoke-virtual {v0}, Lcom/google/protobuf/UnknownFieldSet$Builder;->build()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$SubPOIS$Builder;->setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessage$Builder;

    .line 4519
    invoke-virtual {p0}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$SubPOIS$Builder;->onChanged()V

    .line 4520
    :goto_1
    return-object p0

    .line 4512
    :sswitch_0
    invoke-virtual {v0}, Lcom/google/protobuf/UnknownFieldSet$Builder;->build()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$SubPOIS$Builder;->setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessage$Builder;

    .line 4513
    invoke-virtual {p0}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$SubPOIS$Builder;->onChanged()V

    goto :goto_1

    .line 4525
    :sswitch_1
    invoke-static {}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$SubPOI;->newBuilder()Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$SubPOI$Builder;

    move-result-object v1

    .line 4526
    invoke-virtual {p1, v1, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 4527
    invoke-virtual {v1}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$SubPOI$Builder;->buildPartial()Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$SubPOI;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$SubPOIS$Builder;->addSubpoi(Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$SubPOI;)Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$SubPOIS$Builder;

    goto :goto_0

    .line 4510
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
    .end sparse-switch
.end method

.method public mergeFrom(Lcom/google/protobuf/Message;)Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$SubPOIS$Builder;
    .locals 1

    .prologue
    .line 4457
    instance-of v0, p1, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$SubPOIS;

    if-eqz v0, :cond_0

    .line 4458
    check-cast p1, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$SubPOIS;

    invoke-virtual {p0, p1}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$SubPOIS$Builder;->mergeFrom(Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$SubPOIS;)Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$SubPOIS$Builder;

    move-result-object p0

    .line 4461
    :goto_0
    return-object p0

    .line 4460
    :cond_0
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessage$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;

    goto :goto_0
.end method

.method public mergeFrom(Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$SubPOIS;)Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$SubPOIS$Builder;
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 4466
    invoke-static {}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$SubPOIS;->getDefaultInstance()Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$SubPOIS;

    move-result-object v1

    if-ne p1, v1, :cond_0

    .line 4494
    :goto_0
    return-object p0

    .line 4467
    :cond_0
    iget-object v1, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$SubPOIS$Builder;->subpoiBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v1, :cond_3

    .line 4468
    # getter for: Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$SubPOIS;->subpoi_:Ljava/util/List;
    invoke-static {p1}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$SubPOIS;->access$6700(Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$SubPOIS;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 4469
    iget-object v0, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$SubPOIS$Builder;->subpoi_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 4470
    # getter for: Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$SubPOIS;->subpoi_:Ljava/util/List;
    invoke-static {p1}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$SubPOIS;->access$6700(Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$SubPOIS;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$SubPOIS$Builder;->subpoi_:Ljava/util/List;

    .line 4471
    iget v0, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$SubPOIS$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$SubPOIS$Builder;->bitField0_:I

    .line 4476
    :goto_1
    invoke-virtual {p0}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$SubPOIS$Builder;->onChanged()V

    .line 4493
    :cond_1
    :goto_2
    invoke-virtual {p1}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$SubPOIS;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$SubPOIS$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessage$Builder;

    goto :goto_0

    .line 4473
    :cond_2
    invoke-direct {p0}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$SubPOIS$Builder;->ensureSubpoiIsMutable()V

    .line 4474
    iget-object v0, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$SubPOIS$Builder;->subpoi_:Ljava/util/List;

    # getter for: Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$SubPOIS;->subpoi_:Ljava/util/List;
    invoke-static {p1}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$SubPOIS;->access$6700(Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$SubPOIS;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_1

    .line 4479
    :cond_3
    # getter for: Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$SubPOIS;->subpoi_:Ljava/util/List;
    invoke-static {p1}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$SubPOIS;->access$6700(Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$SubPOIS;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 4480
    iget-object v1, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$SubPOIS$Builder;->subpoiBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v1}, Lcom/google/protobuf/RepeatedFieldBuilder;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 4481
    iget-object v1, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$SubPOIS$Builder;->subpoiBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v1}, Lcom/google/protobuf/RepeatedFieldBuilder;->dispose()V

    .line 4482
    iput-object v0, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$SubPOIS$Builder;->subpoiBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    .line 4483
    # getter for: Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$SubPOIS;->subpoi_:Ljava/util/List;
    invoke-static {p1}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$SubPOIS;->access$6700(Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$SubPOIS;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$SubPOIS$Builder;->subpoi_:Ljava/util/List;

    .line 4484
    iget v1, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$SubPOIS$Builder;->bitField0_:I

    and-int/lit8 v1, v1, -0x2

    iput v1, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$SubPOIS$Builder;->bitField0_:I

    .line 4485
    # getter for: Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$SubPOIS;->alwaysUseFieldBuilders:Z
    invoke-static {}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$SubPOIS;->access$6800()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-direct {p0}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$SubPOIS$Builder;->getSubpoiFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilder;

    move-result-object v0

    :cond_4
    iput-object v0, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$SubPOIS$Builder;->subpoiBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    goto :goto_2

    .line 4489
    :cond_5
    iget-object v0, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$SubPOIS$Builder;->subpoiBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    # getter for: Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$SubPOIS;->subpoi_:Ljava/util/List;
    invoke-static {p1}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$SubPOIS;->access$6700(Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$SubPOIS;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/protobuf/RepeatedFieldBuilder;->addAllMessages(Ljava/lang/Iterable;)Lcom/google/protobuf/RepeatedFieldBuilder;

    goto :goto_2
.end method

.method public removeSubpoi(I)Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$SubPOIS$Builder;
    .locals 1

    .prologue
    .line 4666
    iget-object v0, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$SubPOIS$Builder;->subpoiBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 4667
    invoke-direct {p0}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$SubPOIS$Builder;->ensureSubpoiIsMutable()V

    .line 4668
    iget-object v0, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$SubPOIS$Builder;->subpoi_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 4669
    invoke-virtual {p0}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$SubPOIS$Builder;->onChanged()V

    .line 4673
    :goto_0
    return-object p0

    .line 4671
    :cond_0
    iget-object v0, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$SubPOIS$Builder;->subpoiBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilder;->remove(I)V

    goto :goto_0
.end method

.method public setSubpoi(ILcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$SubPOI$Builder;)Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$SubPOIS$Builder;
    .locals 2

    .prologue
    .line 4586
    iget-object v0, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$SubPOIS$Builder;->subpoiBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 4587
    invoke-direct {p0}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$SubPOIS$Builder;->ensureSubpoiIsMutable()V

    .line 4588
    iget-object v0, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$SubPOIS$Builder;->subpoi_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$SubPOI$Builder;->build()Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$SubPOI;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 4589
    invoke-virtual {p0}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$SubPOIS$Builder;->onChanged()V

    .line 4593
    :goto_0
    return-object p0

    .line 4591
    :cond_0
    iget-object v0, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$SubPOIS$Builder;->subpoiBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {p2}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$SubPOI$Builder;->build()Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$SubPOI;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/google/protobuf/RepeatedFieldBuilder;->setMessage(ILcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/RepeatedFieldBuilder;

    goto :goto_0
.end method

.method public setSubpoi(ILcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$SubPOI;)Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$SubPOIS$Builder;
    .locals 1

    .prologue
    .line 4572
    iget-object v0, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$SubPOIS$Builder;->subpoiBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_1

    .line 4573
    if-nez p2, :cond_0

    .line 4574
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 4576
    :cond_0
    invoke-direct {p0}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$SubPOIS$Builder;->ensureSubpoiIsMutable()V

    .line 4577
    iget-object v0, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$SubPOIS$Builder;->subpoi_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 4578
    invoke-virtual {p0}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$SubPOIS$Builder;->onChanged()V

    .line 4582
    :goto_0
    return-object p0

    .line 4580
    :cond_1
    iget-object v0, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$SubPOIS$Builder;->subpoiBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0, p1, p2}, Lcom/google/protobuf/RepeatedFieldBuilder;->setMessage(ILcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/RepeatedFieldBuilder;

    goto :goto_0
.end method
