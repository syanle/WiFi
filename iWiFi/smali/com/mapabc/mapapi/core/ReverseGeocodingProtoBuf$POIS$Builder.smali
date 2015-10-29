.class public final Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$POIS$Builder;
.super Lcom/google/protobuf/GeneratedMessage$Builder;
.source "ReverseGeocodingProtoBuf.java"

# interfaces
.implements Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$POISOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$POIS;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessage$Builder",
        "<",
        "Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$POIS$Builder;",
        ">;",
        "Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$POISOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private poiBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/RepeatedFieldBuilder",
            "<",
            "Lcom/mapabc/mapapi/core/CommonProtoBuf$POI;",
            "Lcom/mapabc/mapapi/core/CommonProtoBuf$POI$Builder;",
            "Lcom/mapabc/mapapi/core/CommonProtoBuf$POIOrBuilder;",
            ">;"
        }
    .end annotation
.end field

.field private poi_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/mapabc/mapapi/core/CommonProtoBuf$POI;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 5861
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;-><init>()V

    .line 6023
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$POIS$Builder;->poi_:Ljava/util/List;

    .line 5862
    invoke-direct {p0}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$POIS$Builder;->maybeForceBuilderInitialization()V

    .line 5863
    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V
    .locals 1

    .prologue
    .line 5866
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessage$Builder;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V

    .line 6023
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$POIS$Builder;->poi_:Ljava/util/List;

    .line 5867
    invoke-direct {p0}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$POIS$Builder;->maybeForceBuilderInitialization()V

    .line 5868
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;Lcom/mapabc/mapapi/core/z;)V
    .locals 0

    .prologue
    .line 5847
    invoke-direct {p0, p1}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$POIS$Builder;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V

    return-void
.end method

.method static synthetic access$9300(Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$POIS$Builder;)Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$POIS;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 5847
    invoke-direct {p0}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$POIS$Builder;->buildParsed()Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$POIS;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$9400()Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$POIS$Builder;
    .locals 1

    .prologue
    .line 5847
    invoke-static {}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$POIS$Builder;->create()Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$POIS$Builder;

    move-result-object v0

    return-object v0
.end method

.method private buildParsed()Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$POIS;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 5912
    invoke-virtual {p0}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$POIS$Builder;->buildPartial()Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$POIS;

    move-result-object v0

    .line 5913
    invoke-virtual {v0}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$POIS;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_0

    .line 5914
    invoke-static {v0}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$POIS$Builder;->newUninitializedMessageException(Lcom/google/protobuf/Message;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/UninitializedMessageException;->asInvalidProtocolBufferException()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0

    .line 5917
    :cond_0
    return-object v0
.end method

.method private static create()Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$POIS$Builder;
    .locals 1

    .prologue
    .line 5875
    new-instance v0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$POIS$Builder;

    invoke-direct {v0}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$POIS$Builder;-><init>()V

    return-object v0
.end method

.method private ensurePoiIsMutable()V
    .locals 2

    .prologue
    .line 6026
    iget v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$POIS$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 6027
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$POIS$Builder;->poi_:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$POIS$Builder;->poi_:Ljava/util/List;

    .line 6028
    iget v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$POIS$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$POIS$Builder;->bitField0_:I

    .line 6030
    :cond_0
    return-void
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 5852
    # getter for: Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf;->internal_static_POIS_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;
    invoke-static {}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf;->access$9100()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method private getPoiFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilder;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/RepeatedFieldBuilder",
            "<",
            "Lcom/mapabc/mapapi/core/CommonProtoBuf$POI;",
            "Lcom/mapabc/mapapi/core/CommonProtoBuf$POI$Builder;",
            "Lcom/mapabc/mapapi/core/CommonProtoBuf$POIOrBuilder;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v0, 0x1

    .line 6196
    iget-object v1, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$POIS$Builder;->poiBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v1, :cond_0

    .line 6197
    new-instance v1, Lcom/google/protobuf/RepeatedFieldBuilder;

    iget-object v2, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$POIS$Builder;->poi_:Ljava/util/List;

    iget v3, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$POIS$Builder;->bitField0_:I

    and-int/lit8 v3, v3, 0x1

    if-ne v3, v0, :cond_1

    :goto_0
    invoke-virtual {p0}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$POIS$Builder;->getParentForChildren()Lcom/google/protobuf/GeneratedMessage$BuilderParent;

    move-result-object v3

    invoke-virtual {p0}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$POIS$Builder;->isClean()Z

    move-result v4

    invoke-direct {v1, v2, v0, v3, v4}, Lcom/google/protobuf/RepeatedFieldBuilder;-><init>(Ljava/util/List;ZLcom/google/protobuf/GeneratedMessage$BuilderParent;Z)V

    iput-object v1, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$POIS$Builder;->poiBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    .line 6203
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$POIS$Builder;->poi_:Ljava/util/List;

    .line 6205
    :cond_0
    iget-object v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$POIS$Builder;->poiBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    return-object v0

    .line 6197
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private maybeForceBuilderInitialization()V
    .locals 1

    .prologue
    .line 5870
    # getter for: Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$POIS;->alwaysUseFieldBuilders:Z
    invoke-static {}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$POIS;->access$9600()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5871
    invoke-direct {p0}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$POIS$Builder;->getPoiFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilder;

    .line 5873
    :cond_0
    return-void
.end method


# virtual methods
.method public addAllPoi(Ljava/lang/Iterable;)Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$POIS$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<+",
            "Lcom/mapabc/mapapi/core/CommonProtoBuf$POI;",
            ">;)",
            "Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$POIS$Builder;"
        }
    .end annotation

    .prologue
    .line 6132
    iget-object v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$POIS$Builder;->poiBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 6133
    invoke-direct {p0}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$POIS$Builder;->ensurePoiIsMutable()V

    .line 6134
    iget-object v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$POIS$Builder;->poi_:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/google/protobuf/GeneratedMessage$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    .line 6135
    invoke-virtual {p0}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$POIS$Builder;->onChanged()V

    .line 6139
    :goto_0
    return-object p0

    .line 6137
    :cond_0
    iget-object v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$POIS$Builder;->poiBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilder;->addAllMessages(Ljava/lang/Iterable;)Lcom/google/protobuf/RepeatedFieldBuilder;

    goto :goto_0
.end method

.method public addPoi(ILcom/mapabc/mapapi/core/CommonProtoBuf$POI$Builder;)Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$POIS$Builder;
    .locals 2

    .prologue
    .line 6121
    iget-object v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$POIS$Builder;->poiBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 6122
    invoke-direct {p0}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$POIS$Builder;->ensurePoiIsMutable()V

    .line 6123
    iget-object v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$POIS$Builder;->poi_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI$Builder;->build()Lcom/mapabc/mapapi/core/CommonProtoBuf$POI;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 6124
    invoke-virtual {p0}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$POIS$Builder;->onChanged()V

    .line 6128
    :goto_0
    return-object p0

    .line 6126
    :cond_0
    iget-object v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$POIS$Builder;->poiBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {p2}, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI$Builder;->build()Lcom/mapabc/mapapi/core/CommonProtoBuf$POI;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/google/protobuf/RepeatedFieldBuilder;->addMessage(ILcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/RepeatedFieldBuilder;

    goto :goto_0
.end method

.method public addPoi(ILcom/mapabc/mapapi/core/CommonProtoBuf$POI;)Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$POIS$Builder;
    .locals 1

    .prologue
    .line 6096
    iget-object v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$POIS$Builder;->poiBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_1

    .line 6097
    if-nez p2, :cond_0

    .line 6098
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 6100
    :cond_0
    invoke-direct {p0}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$POIS$Builder;->ensurePoiIsMutable()V

    .line 6101
    iget-object v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$POIS$Builder;->poi_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 6102
    invoke-virtual {p0}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$POIS$Builder;->onChanged()V

    .line 6106
    :goto_0
    return-object p0

    .line 6104
    :cond_1
    iget-object v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$POIS$Builder;->poiBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0, p1, p2}, Lcom/google/protobuf/RepeatedFieldBuilder;->addMessage(ILcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/RepeatedFieldBuilder;

    goto :goto_0
.end method

.method public addPoi(Lcom/mapabc/mapapi/core/CommonProtoBuf$POI$Builder;)Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$POIS$Builder;
    .locals 2

    .prologue
    .line 6110
    iget-object v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$POIS$Builder;->poiBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 6111
    invoke-direct {p0}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$POIS$Builder;->ensurePoiIsMutable()V

    .line 6112
    iget-object v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$POIS$Builder;->poi_:Ljava/util/List;

    invoke-virtual {p1}, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI$Builder;->build()Lcom/mapabc/mapapi/core/CommonProtoBuf$POI;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 6113
    invoke-virtual {p0}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$POIS$Builder;->onChanged()V

    .line 6117
    :goto_0
    return-object p0

    .line 6115
    :cond_0
    iget-object v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$POIS$Builder;->poiBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {p1}, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI$Builder;->build()Lcom/mapabc/mapapi/core/CommonProtoBuf$POI;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/protobuf/RepeatedFieldBuilder;->addMessage(Lcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/RepeatedFieldBuilder;

    goto :goto_0
.end method

.method public addPoi(Lcom/mapabc/mapapi/core/CommonProtoBuf$POI;)Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$POIS$Builder;
    .locals 1

    .prologue
    .line 6082
    iget-object v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$POIS$Builder;->poiBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_1

    .line 6083
    if-nez p1, :cond_0

    .line 6084
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 6086
    :cond_0
    invoke-direct {p0}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$POIS$Builder;->ensurePoiIsMutable()V

    .line 6087
    iget-object v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$POIS$Builder;->poi_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 6088
    invoke-virtual {p0}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$POIS$Builder;->onChanged()V

    .line 6092
    :goto_0
    return-object p0

    .line 6090
    :cond_1
    iget-object v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$POIS$Builder;->poiBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilder;->addMessage(Lcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/RepeatedFieldBuilder;

    goto :goto_0
.end method

.method public addPoiBuilder()Lcom/mapabc/mapapi/core/CommonProtoBuf$POI$Builder;
    .locals 2

    .prologue
    .line 6181
    invoke-direct {p0}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$POIS$Builder;->getPoiFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilder;

    move-result-object v0

    invoke-static {}, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI;->getDefaultInstance()Lcom/mapabc/mapapi/core/CommonProtoBuf$POI;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/protobuf/RepeatedFieldBuilder;->addBuilder(Lcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/GeneratedMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI$Builder;

    return-object v0
.end method

.method public addPoiBuilder(I)Lcom/mapabc/mapapi/core/CommonProtoBuf$POI$Builder;
    .locals 2

    .prologue
    .line 6186
    invoke-direct {p0}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$POIS$Builder;->getPoiFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilder;

    move-result-object v0

    invoke-static {}, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI;->getDefaultInstance()Lcom/mapabc/mapapi/core/CommonProtoBuf$POI;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/google/protobuf/RepeatedFieldBuilder;->addBuilder(ILcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/GeneratedMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI$Builder;

    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 5847
    invoke-virtual {p0}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$POIS$Builder;->build()Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$POIS;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 5847
    invoke-virtual {p0}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$POIS$Builder;->build()Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$POIS;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$POIS;
    .locals 2

    .prologue
    .line 5903
    invoke-virtual {p0}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$POIS$Builder;->buildPartial()Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$POIS;

    move-result-object v0

    .line 5904
    invoke-virtual {v0}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$POIS;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_0

    .line 5905
    invoke-static {v0}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$POIS$Builder;->newUninitializedMessageException(Lcom/google/protobuf/Message;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0

    .line 5907
    :cond_0
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 5847
    invoke-virtual {p0}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$POIS$Builder;->buildPartial()Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$POIS;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 5847
    invoke-virtual {p0}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$POIS$Builder;->buildPartial()Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$POIS;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$POIS;
    .locals 3

    .prologue
    .line 5921
    new-instance v0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$POIS;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$POIS;-><init>(Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$POIS$Builder;Lcom/mapabc/mapapi/core/z;)V

    .line 5922
    iget v1, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$POIS$Builder;->bitField0_:I

    .line 5923
    iget-object v1, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$POIS$Builder;->poiBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v1, :cond_1

    .line 5924
    iget v1, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$POIS$Builder;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 5925
    iget-object v1, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$POIS$Builder;->poi_:Ljava/util/List;

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$POIS$Builder;->poi_:Ljava/util/List;

    .line 5926
    iget v1, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$POIS$Builder;->bitField0_:I

    and-int/lit8 v1, v1, -0x2

    iput v1, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$POIS$Builder;->bitField0_:I

    .line 5928
    :cond_0
    iget-object v1, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$POIS$Builder;->poi_:Ljava/util/List;

    # setter for: Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$POIS;->poi_:Ljava/util/List;
    invoke-static {v0, v1}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$POIS;->access$9802(Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$POIS;Ljava/util/List;)Ljava/util/List;

    .line 5932
    :goto_0
    invoke-virtual {p0}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$POIS$Builder;->onBuilt()V

    .line 5933
    return-object v0

    .line 5930
    :cond_1
    iget-object v1, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$POIS$Builder;->poiBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v1}, Lcom/google/protobuf/RepeatedFieldBuilder;->build()Ljava/util/List;

    move-result-object v1

    # setter for: Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$POIS;->poi_:Ljava/util/List;
    invoke-static {v0, v1}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$POIS;->access$9802(Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$POIS;Ljava/util/List;)Ljava/util/List;

    goto :goto_0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 5847
    invoke-virtual {p0}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$POIS$Builder;->clear()Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$POIS$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessage$Builder;
    .locals 1

    .prologue
    .line 5847
    invoke-virtual {p0}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$POIS$Builder;->clear()Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$POIS$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 5847
    invoke-virtual {p0}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$POIS$Builder;->clear()Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$POIS$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 5847
    invoke-virtual {p0}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$POIS$Builder;->clear()Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$POIS$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$POIS$Builder;
    .locals 1

    .prologue
    .line 5879
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->clear()Lcom/google/protobuf/GeneratedMessage$Builder;

    .line 5880
    iget-object v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$POIS$Builder;->poiBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 5881
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$POIS$Builder;->poi_:Ljava/util/List;

    .line 5882
    iget v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$POIS$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$POIS$Builder;->bitField0_:I

    .line 5886
    :goto_0
    return-object p0

    .line 5884
    :cond_0
    iget-object v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$POIS$Builder;->poiBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilder;->clear()V

    goto :goto_0
.end method

.method public clearPoi()Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$POIS$Builder;
    .locals 1

    .prologue
    .line 6142
    iget-object v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$POIS$Builder;->poiBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 6143
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$POIS$Builder;->poi_:Ljava/util/List;

    .line 6144
    iget v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$POIS$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$POIS$Builder;->bitField0_:I

    .line 6145
    invoke-virtual {p0}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$POIS$Builder;->onChanged()V

    .line 6149
    :goto_0
    return-object p0

    .line 6147
    :cond_0
    iget-object v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$POIS$Builder;->poiBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilder;->clear()V

    goto :goto_0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 5847
    invoke-virtual {p0}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$POIS$Builder;->clone()Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$POIS$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .prologue
    .line 5847
    invoke-virtual {p0}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$POIS$Builder;->clone()Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$POIS$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessage$Builder;
    .locals 1

    .prologue
    .line 5847
    invoke-virtual {p0}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$POIS$Builder;->clone()Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$POIS$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 5847
    invoke-virtual {p0}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$POIS$Builder;->clone()Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$POIS$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 5847
    invoke-virtual {p0}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$POIS$Builder;->clone()Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$POIS$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$POIS$Builder;
    .locals 2

    .prologue
    .line 5890
    invoke-static {}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$POIS$Builder;->create()Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$POIS$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$POIS$Builder;->buildPartial()Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$POIS;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$POIS$Builder;->mergeFrom(Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$POIS;)Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$POIS$Builder;

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
    .line 5847
    invoke-virtual {p0}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$POIS$Builder;->clone()Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$POIS$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 5847
    invoke-virtual {p0}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$POIS$Builder;->getDefaultInstanceForType()Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$POIS;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 5847
    invoke-virtual {p0}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$POIS$Builder;->getDefaultInstanceForType()Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$POIS;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$POIS;
    .locals 1

    .prologue
    .line 5899
    invoke-static {}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$POIS;->getDefaultInstance()Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$POIS;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 5895
    invoke-static {}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$POIS;->getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public getPoi(I)Lcom/mapabc/mapapi/core/CommonProtoBuf$POI;
    .locals 1

    .prologue
    .line 6050
    iget-object v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$POIS$Builder;->poiBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 6051
    iget-object v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$POIS$Builder;->poi_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI;

    .line 6053
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$POIS$Builder;->poiBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilder;->getMessage(I)Lcom/google/protobuf/GeneratedMessage;

    move-result-object v0

    check-cast v0, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI;

    goto :goto_0
.end method

.method public getPoiBuilder(I)Lcom/mapabc/mapapi/core/CommonProtoBuf$POI$Builder;
    .locals 1

    .prologue
    .line 6163
    invoke-direct {p0}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$POIS$Builder;->getPoiFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilder;->getBuilder(I)Lcom/google/protobuf/GeneratedMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI$Builder;

    return-object v0
.end method

.method public getPoiBuilderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/mapabc/mapapi/core/CommonProtoBuf$POI$Builder;",
            ">;"
        }
    .end annotation

    .prologue
    .line 6191
    invoke-direct {p0}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$POIS$Builder;->getPoiFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilder;->getBuilderList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getPoiCount()I
    .locals 1

    .prologue
    .line 6043
    iget-object v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$POIS$Builder;->poiBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 6044
    iget-object v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$POIS$Builder;->poi_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 6046
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$POIS$Builder;->poiBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilder;->getCount()I

    move-result v0

    goto :goto_0
.end method

.method public getPoiList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/mapabc/mapapi/core/CommonProtoBuf$POI;",
            ">;"
        }
    .end annotation

    .prologue
    .line 6036
    iget-object v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$POIS$Builder;->poiBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 6037
    iget-object v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$POIS$Builder;->poi_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 6039
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$POIS$Builder;->poiBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilder;->getMessageList()Ljava/util/List;

    move-result-object v0

    goto :goto_0
.end method

.method public getPoiOrBuilder(I)Lcom/mapabc/mapapi/core/CommonProtoBuf$POIOrBuilder;
    .locals 1

    .prologue
    .line 6167
    iget-object v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$POIS$Builder;->poiBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 6168
    iget-object v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$POIS$Builder;->poi_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mapabc/mapapi/core/CommonProtoBuf$POIOrBuilder;

    .line 6169
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$POIS$Builder;->poiBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilder;->getMessageOrBuilder(I)Lcom/google/protobuf/MessageOrBuilder;

    move-result-object v0

    check-cast v0, Lcom/mapabc/mapapi/core/CommonProtoBuf$POIOrBuilder;

    goto :goto_0
.end method

.method public getPoiOrBuilderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<+",
            "Lcom/mapabc/mapapi/core/CommonProtoBuf$POIOrBuilder;",
            ">;"
        }
    .end annotation

    .prologue
    .line 6174
    iget-object v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$POIS$Builder;->poiBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-eqz v0, :cond_0

    .line 6175
    iget-object v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$POIS$Builder;->poiBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilder;->getMessageOrBuilderList()Ljava/util/List;

    move-result-object v0

    .line 6177
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$POIS$Builder;->poi_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    goto :goto_0
.end method

.method protected internalGetFieldAccessorTable()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 1

    .prologue
    .line 5857
    # getter for: Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf;->internal_static_POIS_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    invoke-static {}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf;->access$9200()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 5978
    move v0, v1

    :goto_0
    invoke-virtual {p0}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$POIS$Builder;->getPoiCount()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 5979
    invoke-virtual {p0, v0}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$POIS$Builder;->getPoi(I)Lcom/mapabc/mapapi/core/CommonProtoBuf$POI;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI;->isInitialized()Z

    move-result v2

    if-nez v2, :cond_0

    .line 5984
    :goto_1
    return v1

    .line 5978
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 5984
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
    .line 5847
    invoke-virtual {p0, p1, p2}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$POIS$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$POIS$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 5847
    invoke-virtual {p0, p1}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$POIS$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$POIS$Builder;

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
    .line 5847
    invoke-virtual {p0, p1, p2}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$POIS$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$POIS$Builder;

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
    .line 5847
    invoke-virtual {p0, p1, p2}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$POIS$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$POIS$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 5847
    invoke-virtual {p0, p1}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$POIS$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$POIS$Builder;

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
    .line 5847
    invoke-virtual {p0, p1, p2}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$POIS$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$POIS$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$POIS$Builder;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 5991
    invoke-virtual {p0}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$POIS$Builder;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v0

    invoke-static {v0}, Lcom/google/protobuf/UnknownFieldSet;->newBuilder(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/UnknownFieldSet$Builder;

    move-result-object v0

    .line 5995
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v1

    .line 5996
    sparse-switch v1, :sswitch_data_0

    .line 6002
    invoke-virtual {p0, p1, v0, p2, v1}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$POIS$Builder;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/UnknownFieldSet$Builder;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 6004
    invoke-virtual {v0}, Lcom/google/protobuf/UnknownFieldSet$Builder;->build()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$POIS$Builder;->setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessage$Builder;

    .line 6005
    invoke-virtual {p0}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$POIS$Builder;->onChanged()V

    .line 6006
    :goto_1
    return-object p0

    .line 5998
    :sswitch_0
    invoke-virtual {v0}, Lcom/google/protobuf/UnknownFieldSet$Builder;->build()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$POIS$Builder;->setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessage$Builder;

    .line 5999
    invoke-virtual {p0}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$POIS$Builder;->onChanged()V

    goto :goto_1

    .line 6011
    :sswitch_1
    invoke-static {}, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI;->newBuilder()Lcom/mapabc/mapapi/core/CommonProtoBuf$POI$Builder;

    move-result-object v1

    .line 6012
    invoke-virtual {p1, v1, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 6013
    invoke-virtual {v1}, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI$Builder;->buildPartial()Lcom/mapabc/mapapi/core/CommonProtoBuf$POI;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$POIS$Builder;->addPoi(Lcom/mapabc/mapapi/core/CommonProtoBuf$POI;)Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$POIS$Builder;

    goto :goto_0

    .line 5996
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
    .end sparse-switch
.end method

.method public mergeFrom(Lcom/google/protobuf/Message;)Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$POIS$Builder;
    .locals 1

    .prologue
    .line 5937
    instance-of v0, p1, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$POIS;

    if-eqz v0, :cond_0

    .line 5938
    check-cast p1, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$POIS;

    invoke-virtual {p0, p1}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$POIS$Builder;->mergeFrom(Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$POIS;)Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$POIS$Builder;

    move-result-object p0

    .line 5941
    :goto_0
    return-object p0

    .line 5940
    :cond_0
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessage$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;

    goto :goto_0
.end method

.method public mergeFrom(Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$POIS;)Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$POIS$Builder;
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 5946
    invoke-static {}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$POIS;->getDefaultInstance()Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$POIS;

    move-result-object v1

    if-ne p1, v1, :cond_0

    .line 5974
    :goto_0
    return-object p0

    .line 5947
    :cond_0
    iget-object v1, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$POIS$Builder;->poiBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v1, :cond_3

    .line 5948
    # getter for: Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$POIS;->poi_:Ljava/util/List;
    invoke-static {p1}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$POIS;->access$9800(Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$POIS;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 5949
    iget-object v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$POIS$Builder;->poi_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 5950
    # getter for: Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$POIS;->poi_:Ljava/util/List;
    invoke-static {p1}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$POIS;->access$9800(Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$POIS;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$POIS$Builder;->poi_:Ljava/util/List;

    .line 5951
    iget v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$POIS$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$POIS$Builder;->bitField0_:I

    .line 5956
    :goto_1
    invoke-virtual {p0}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$POIS$Builder;->onChanged()V

    .line 5973
    :cond_1
    :goto_2
    invoke-virtual {p1}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$POIS;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$POIS$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessage$Builder;

    goto :goto_0

    .line 5953
    :cond_2
    invoke-direct {p0}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$POIS$Builder;->ensurePoiIsMutable()V

    .line 5954
    iget-object v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$POIS$Builder;->poi_:Ljava/util/List;

    # getter for: Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$POIS;->poi_:Ljava/util/List;
    invoke-static {p1}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$POIS;->access$9800(Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$POIS;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_1

    .line 5959
    :cond_3
    # getter for: Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$POIS;->poi_:Ljava/util/List;
    invoke-static {p1}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$POIS;->access$9800(Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$POIS;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 5960
    iget-object v1, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$POIS$Builder;->poiBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v1}, Lcom/google/protobuf/RepeatedFieldBuilder;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 5961
    iget-object v1, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$POIS$Builder;->poiBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v1}, Lcom/google/protobuf/RepeatedFieldBuilder;->dispose()V

    .line 5962
    iput-object v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$POIS$Builder;->poiBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    .line 5963
    # getter for: Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$POIS;->poi_:Ljava/util/List;
    invoke-static {p1}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$POIS;->access$9800(Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$POIS;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$POIS$Builder;->poi_:Ljava/util/List;

    .line 5964
    iget v1, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$POIS$Builder;->bitField0_:I

    and-int/lit8 v1, v1, -0x2

    iput v1, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$POIS$Builder;->bitField0_:I

    .line 5965
    # getter for: Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$POIS;->alwaysUseFieldBuilders:Z
    invoke-static {}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$POIS;->access$9900()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-direct {p0}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$POIS$Builder;->getPoiFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilder;

    move-result-object v0

    :cond_4
    iput-object v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$POIS$Builder;->poiBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    goto :goto_2

    .line 5969
    :cond_5
    iget-object v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$POIS$Builder;->poiBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    # getter for: Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$POIS;->poi_:Ljava/util/List;
    invoke-static {p1}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$POIS;->access$9800(Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$POIS;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/protobuf/RepeatedFieldBuilder;->addAllMessages(Ljava/lang/Iterable;)Lcom/google/protobuf/RepeatedFieldBuilder;

    goto :goto_2
.end method

.method public removePoi(I)Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$POIS$Builder;
    .locals 1

    .prologue
    .line 6152
    iget-object v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$POIS$Builder;->poiBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 6153
    invoke-direct {p0}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$POIS$Builder;->ensurePoiIsMutable()V

    .line 6154
    iget-object v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$POIS$Builder;->poi_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 6155
    invoke-virtual {p0}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$POIS$Builder;->onChanged()V

    .line 6159
    :goto_0
    return-object p0

    .line 6157
    :cond_0
    iget-object v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$POIS$Builder;->poiBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilder;->remove(I)V

    goto :goto_0
.end method

.method public setPoi(ILcom/mapabc/mapapi/core/CommonProtoBuf$POI$Builder;)Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$POIS$Builder;
    .locals 2

    .prologue
    .line 6072
    iget-object v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$POIS$Builder;->poiBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 6073
    invoke-direct {p0}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$POIS$Builder;->ensurePoiIsMutable()V

    .line 6074
    iget-object v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$POIS$Builder;->poi_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI$Builder;->build()Lcom/mapabc/mapapi/core/CommonProtoBuf$POI;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 6075
    invoke-virtual {p0}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$POIS$Builder;->onChanged()V

    .line 6079
    :goto_0
    return-object p0

    .line 6077
    :cond_0
    iget-object v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$POIS$Builder;->poiBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {p2}, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI$Builder;->build()Lcom/mapabc/mapapi/core/CommonProtoBuf$POI;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/google/protobuf/RepeatedFieldBuilder;->setMessage(ILcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/RepeatedFieldBuilder;

    goto :goto_0
.end method

.method public setPoi(ILcom/mapabc/mapapi/core/CommonProtoBuf$POI;)Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$POIS$Builder;
    .locals 1

    .prologue
    .line 6058
    iget-object v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$POIS$Builder;->poiBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_1

    .line 6059
    if-nez p2, :cond_0

    .line 6060
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 6062
    :cond_0
    invoke-direct {p0}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$POIS$Builder;->ensurePoiIsMutable()V

    .line 6063
    iget-object v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$POIS$Builder;->poi_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 6064
    invoke-virtual {p0}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$POIS$Builder;->onChanged()V

    .line 6068
    :goto_0
    return-object p0

    .line 6066
    :cond_1
    iget-object v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$POIS$Builder;->poiBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0, p1, p2}, Lcom/google/protobuf/RepeatedFieldBuilder;->setMessage(ILcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/RepeatedFieldBuilder;

    goto :goto_0
.end method
