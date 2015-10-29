.class public final Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Road$Builder;
.super Lcom/google/protobuf/GeneratedMessage$Builder;
.source "ReverseGeocodingProtoBuf.java"

# interfaces
.implements Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$RoadOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Road;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessage$Builder",
        "<",
        "Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Road$Builder;",
        ">;",
        "Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$RoadOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private direction_:Ljava/lang/Object;

.field private distance_:Ljava/lang/Object;

.field private ename_:Ljava/lang/Object;

.field private id_:Ljava/lang/Object;

.field private level_:Ljava/lang/Object;

.field private name_:Ljava/lang/Object;

.field private width_:Ljava/lang/Object;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 5158
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;-><init>()V

    .line 5394
    const-string v0, ""

    iput-object v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Road$Builder;->id_:Ljava/lang/Object;

    .line 5430
    const-string v0, ""

    iput-object v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Road$Builder;->name_:Ljava/lang/Object;

    .line 5466
    const-string v0, ""

    iput-object v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Road$Builder;->ename_:Ljava/lang/Object;

    .line 5502
    const-string v0, ""

    iput-object v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Road$Builder;->width_:Ljava/lang/Object;

    .line 5538
    const-string v0, ""

    iput-object v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Road$Builder;->level_:Ljava/lang/Object;

    .line 5574
    const-string v0, ""

    iput-object v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Road$Builder;->distance_:Ljava/lang/Object;

    .line 5610
    const-string v0, ""

    iput-object v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Road$Builder;->direction_:Ljava/lang/Object;

    .line 5159
    invoke-direct {p0}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Road$Builder;->maybeForceBuilderInitialization()V

    .line 5160
    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V
    .locals 1

    .prologue
    .line 5163
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessage$Builder;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V

    .line 5394
    const-string v0, ""

    iput-object v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Road$Builder;->id_:Ljava/lang/Object;

    .line 5430
    const-string v0, ""

    iput-object v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Road$Builder;->name_:Ljava/lang/Object;

    .line 5466
    const-string v0, ""

    iput-object v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Road$Builder;->ename_:Ljava/lang/Object;

    .line 5502
    const-string v0, ""

    iput-object v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Road$Builder;->width_:Ljava/lang/Object;

    .line 5538
    const-string v0, ""

    iput-object v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Road$Builder;->level_:Ljava/lang/Object;

    .line 5574
    const-string v0, ""

    iput-object v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Road$Builder;->distance_:Ljava/lang/Object;

    .line 5610
    const-string v0, ""

    iput-object v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Road$Builder;->direction_:Ljava/lang/Object;

    .line 5164
    invoke-direct {p0}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Road$Builder;->maybeForceBuilderInitialization()V

    .line 5165
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;Lcom/mapabc/mapapi/core/z;)V
    .locals 0

    .prologue
    .line 5144
    invoke-direct {p0, p1}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Road$Builder;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V

    return-void
.end method

.method static synthetic access$7800(Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Road$Builder;)Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Road;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 5144
    invoke-direct {p0}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Road$Builder;->buildParsed()Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Road;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$7900()Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Road$Builder;
    .locals 1

    .prologue
    .line 5144
    invoke-static {}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Road$Builder;->create()Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Road$Builder;

    move-result-object v0

    return-object v0
.end method

.method private buildParsed()Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Road;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 5216
    invoke-virtual {p0}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Road$Builder;->buildPartial()Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Road;

    move-result-object v0

    .line 5217
    invoke-virtual {v0}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Road;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_0

    .line 5218
    invoke-static {v0}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Road$Builder;->newUninitializedMessageException(Lcom/google/protobuf/Message;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/UninitializedMessageException;->asInvalidProtocolBufferException()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0

    .line 5221
    :cond_0
    return-object v0
.end method

.method private static create()Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Road$Builder;
    .locals 1

    .prologue
    .line 5171
    new-instance v0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Road$Builder;

    invoke-direct {v0}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Road$Builder;-><init>()V

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 5149
    # getter for: Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf;->internal_static_Road_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;
    invoke-static {}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf;->access$7600()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .locals 1

    .prologue
    .line 5167
    # getter for: Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Road;->alwaysUseFieldBuilders:Z
    invoke-static {}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Road;->access$8100()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5169
    :cond_0
    return-void
.end method


# virtual methods
.method public bridge synthetic build()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 5144
    invoke-virtual {p0}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Road$Builder;->build()Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Road;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 5144
    invoke-virtual {p0}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Road$Builder;->build()Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Road;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Road;
    .locals 2

    .prologue
    .line 5207
    invoke-virtual {p0}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Road$Builder;->buildPartial()Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Road;

    move-result-object v0

    .line 5208
    invoke-virtual {v0}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Road;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_0

    .line 5209
    invoke-static {v0}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Road$Builder;->newUninitializedMessageException(Lcom/google/protobuf/Message;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0

    .line 5211
    :cond_0
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 5144
    invoke-virtual {p0}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Road$Builder;->buildPartial()Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Road;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 5144
    invoke-virtual {p0}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Road$Builder;->buildPartial()Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Road;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Road;
    .locals 5

    .prologue
    const/4 v0, 0x1

    .line 5225
    new-instance v2, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Road;

    const/4 v1, 0x0

    invoke-direct {v2, p0, v1}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Road;-><init>(Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Road$Builder;Lcom/mapabc/mapapi/core/z;)V

    .line 5226
    iget v3, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Road$Builder;->bitField0_:I

    .line 5227
    const/4 v1, 0x0

    .line 5228
    and-int/lit8 v4, v3, 0x1

    if-ne v4, v0, :cond_6

    .line 5231
    :goto_0
    iget-object v1, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Road$Builder;->id_:Ljava/lang/Object;

    # setter for: Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Road;->id_:Ljava/lang/Object;
    invoke-static {v2, v1}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Road;->access$8302(Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Road;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5232
    and-int/lit8 v1, v3, 0x2

    const/4 v4, 0x2

    if-ne v1, v4, :cond_0

    .line 5233
    or-int/lit8 v0, v0, 0x2

    .line 5235
    :cond_0
    iget-object v1, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Road$Builder;->name_:Ljava/lang/Object;

    # setter for: Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Road;->name_:Ljava/lang/Object;
    invoke-static {v2, v1}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Road;->access$8402(Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Road;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5236
    and-int/lit8 v1, v3, 0x4

    const/4 v4, 0x4

    if-ne v1, v4, :cond_1

    .line 5237
    or-int/lit8 v0, v0, 0x4

    .line 5239
    :cond_1
    iget-object v1, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Road$Builder;->ename_:Ljava/lang/Object;

    # setter for: Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Road;->ename_:Ljava/lang/Object;
    invoke-static {v2, v1}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Road;->access$8502(Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Road;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5240
    and-int/lit8 v1, v3, 0x8

    const/16 v4, 0x8

    if-ne v1, v4, :cond_2

    .line 5241
    or-int/lit8 v0, v0, 0x8

    .line 5243
    :cond_2
    iget-object v1, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Road$Builder;->width_:Ljava/lang/Object;

    # setter for: Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Road;->width_:Ljava/lang/Object;
    invoke-static {v2, v1}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Road;->access$8602(Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Road;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5244
    and-int/lit8 v1, v3, 0x10

    const/16 v4, 0x10

    if-ne v1, v4, :cond_3

    .line 5245
    or-int/lit8 v0, v0, 0x10

    .line 5247
    :cond_3
    iget-object v1, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Road$Builder;->level_:Ljava/lang/Object;

    # setter for: Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Road;->level_:Ljava/lang/Object;
    invoke-static {v2, v1}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Road;->access$8702(Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Road;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5248
    and-int/lit8 v1, v3, 0x20

    const/16 v4, 0x20

    if-ne v1, v4, :cond_4

    .line 5249
    or-int/lit8 v0, v0, 0x20

    .line 5251
    :cond_4
    iget-object v1, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Road$Builder;->distance_:Ljava/lang/Object;

    # setter for: Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Road;->distance_:Ljava/lang/Object;
    invoke-static {v2, v1}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Road;->access$8802(Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Road;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5252
    and-int/lit8 v1, v3, 0x40

    const/16 v3, 0x40

    if-ne v1, v3, :cond_5

    .line 5253
    or-int/lit8 v0, v0, 0x40

    .line 5255
    :cond_5
    iget-object v1, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Road$Builder;->direction_:Ljava/lang/Object;

    # setter for: Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Road;->direction_:Ljava/lang/Object;
    invoke-static {v2, v1}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Road;->access$8902(Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Road;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5256
    # setter for: Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Road;->bitField0_:I
    invoke-static {v2, v0}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Road;->access$9002(Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Road;I)I

    .line 5257
    invoke-virtual {p0}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Road$Builder;->onBuilt()V

    .line 5258
    return-object v2

    :cond_6
    move v0, v1

    goto :goto_0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 5144
    invoke-virtual {p0}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Road$Builder;->clear()Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Road$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessage$Builder;
    .locals 1

    .prologue
    .line 5144
    invoke-virtual {p0}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Road$Builder;->clear()Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Road$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 5144
    invoke-virtual {p0}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Road$Builder;->clear()Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Road$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 5144
    invoke-virtual {p0}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Road$Builder;->clear()Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Road$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Road$Builder;
    .locals 1

    .prologue
    .line 5175
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->clear()Lcom/google/protobuf/GeneratedMessage$Builder;

    .line 5176
    const-string v0, ""

    iput-object v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Road$Builder;->id_:Ljava/lang/Object;

    .line 5177
    iget v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Road$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Road$Builder;->bitField0_:I

    .line 5178
    const-string v0, ""

    iput-object v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Road$Builder;->name_:Ljava/lang/Object;

    .line 5179
    iget v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Road$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Road$Builder;->bitField0_:I

    .line 5180
    const-string v0, ""

    iput-object v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Road$Builder;->ename_:Ljava/lang/Object;

    .line 5181
    iget v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Road$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Road$Builder;->bitField0_:I

    .line 5182
    const-string v0, ""

    iput-object v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Road$Builder;->width_:Ljava/lang/Object;

    .line 5183
    iget v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Road$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Road$Builder;->bitField0_:I

    .line 5184
    const-string v0, ""

    iput-object v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Road$Builder;->level_:Ljava/lang/Object;

    .line 5185
    iget v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Road$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Road$Builder;->bitField0_:I

    .line 5186
    const-string v0, ""

    iput-object v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Road$Builder;->distance_:Ljava/lang/Object;

    .line 5187
    iget v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Road$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Road$Builder;->bitField0_:I

    .line 5188
    const-string v0, ""

    iput-object v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Road$Builder;->direction_:Ljava/lang/Object;

    .line 5189
    iget v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Road$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x41

    iput v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Road$Builder;->bitField0_:I

    .line 5190
    return-object p0
.end method

.method public clearDirection()Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Road$Builder;
    .locals 1

    .prologue
    .line 5634
    iget v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Road$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x41

    iput v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Road$Builder;->bitField0_:I

    .line 5635
    invoke-static {}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Road;->getDefaultInstance()Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Road;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Road;->getDirection()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Road$Builder;->direction_:Ljava/lang/Object;

    .line 5636
    invoke-virtual {p0}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Road$Builder;->onChanged()V

    .line 5637
    return-object p0
.end method

.method public clearDistance()Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Road$Builder;
    .locals 1

    .prologue
    .line 5598
    iget v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Road$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Road$Builder;->bitField0_:I

    .line 5599
    invoke-static {}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Road;->getDefaultInstance()Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Road;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Road;->getDistance()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Road$Builder;->distance_:Ljava/lang/Object;

    .line 5600
    invoke-virtual {p0}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Road$Builder;->onChanged()V

    .line 5601
    return-object p0
.end method

.method public clearEname()Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Road$Builder;
    .locals 1

    .prologue
    .line 5490
    iget v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Road$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Road$Builder;->bitField0_:I

    .line 5491
    invoke-static {}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Road;->getDefaultInstance()Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Road;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Road;->getEname()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Road$Builder;->ename_:Ljava/lang/Object;

    .line 5492
    invoke-virtual {p0}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Road$Builder;->onChanged()V

    .line 5493
    return-object p0
.end method

.method public clearId()Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Road$Builder;
    .locals 1

    .prologue
    .line 5418
    iget v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Road$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Road$Builder;->bitField0_:I

    .line 5419
    invoke-static {}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Road;->getDefaultInstance()Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Road;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Road;->getId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Road$Builder;->id_:Ljava/lang/Object;

    .line 5420
    invoke-virtual {p0}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Road$Builder;->onChanged()V

    .line 5421
    return-object p0
.end method

.method public clearLevel()Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Road$Builder;
    .locals 1

    .prologue
    .line 5562
    iget v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Road$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Road$Builder;->bitField0_:I

    .line 5563
    invoke-static {}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Road;->getDefaultInstance()Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Road;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Road;->getLevel()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Road$Builder;->level_:Ljava/lang/Object;

    .line 5564
    invoke-virtual {p0}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Road$Builder;->onChanged()V

    .line 5565
    return-object p0
.end method

.method public clearName()Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Road$Builder;
    .locals 1

    .prologue
    .line 5454
    iget v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Road$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Road$Builder;->bitField0_:I

    .line 5455
    invoke-static {}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Road;->getDefaultInstance()Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Road;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Road;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Road$Builder;->name_:Ljava/lang/Object;

    .line 5456
    invoke-virtual {p0}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Road$Builder;->onChanged()V

    .line 5457
    return-object p0
.end method

.method public clearWidth()Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Road$Builder;
    .locals 1

    .prologue
    .line 5526
    iget v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Road$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Road$Builder;->bitField0_:I

    .line 5527
    invoke-static {}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Road;->getDefaultInstance()Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Road;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Road;->getWidth()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Road$Builder;->width_:Ljava/lang/Object;

    .line 5528
    invoke-virtual {p0}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Road$Builder;->onChanged()V

    .line 5529
    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 5144
    invoke-virtual {p0}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Road$Builder;->clone()Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Road$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .prologue
    .line 5144
    invoke-virtual {p0}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Road$Builder;->clone()Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Road$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessage$Builder;
    .locals 1

    .prologue
    .line 5144
    invoke-virtual {p0}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Road$Builder;->clone()Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Road$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 5144
    invoke-virtual {p0}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Road$Builder;->clone()Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Road$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 5144
    invoke-virtual {p0}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Road$Builder;->clone()Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Road$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Road$Builder;
    .locals 2

    .prologue
    .line 5194
    invoke-static {}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Road$Builder;->create()Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Road$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Road$Builder;->buildPartial()Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Road;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Road$Builder;->mergeFrom(Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Road;)Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Road$Builder;

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
    .line 5144
    invoke-virtual {p0}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Road$Builder;->clone()Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Road$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 5144
    invoke-virtual {p0}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Road$Builder;->getDefaultInstanceForType()Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Road;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 5144
    invoke-virtual {p0}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Road$Builder;->getDefaultInstanceForType()Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Road;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Road;
    .locals 1

    .prologue
    .line 5203
    invoke-static {}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Road;->getDefaultInstance()Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Road;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 5199
    invoke-static {}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Road;->getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public getDirection()Ljava/lang/String;
    .locals 2

    .prologue
    .line 5615
    iget-object v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Road$Builder;->direction_:Ljava/lang/Object;

    .line 5616
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_0

    .line 5617
    check-cast v0, Lcom/google/protobuf/ByteString;

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 5618
    iput-object v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Road$Builder;->direction_:Ljava/lang/Object;

    .line 5621
    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Ljava/lang/String;

    goto :goto_0
.end method

.method public getDistance()Ljava/lang/String;
    .locals 2

    .prologue
    .line 5579
    iget-object v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Road$Builder;->distance_:Ljava/lang/Object;

    .line 5580
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_0

    .line 5581
    check-cast v0, Lcom/google/protobuf/ByteString;

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 5582
    iput-object v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Road$Builder;->distance_:Ljava/lang/Object;

    .line 5585
    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Ljava/lang/String;

    goto :goto_0
.end method

.method public getEname()Ljava/lang/String;
    .locals 2

    .prologue
    .line 5471
    iget-object v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Road$Builder;->ename_:Ljava/lang/Object;

    .line 5472
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_0

    .line 5473
    check-cast v0, Lcom/google/protobuf/ByteString;

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 5474
    iput-object v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Road$Builder;->ename_:Ljava/lang/Object;

    .line 5477
    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Ljava/lang/String;

    goto :goto_0
.end method

.method public getId()Ljava/lang/String;
    .locals 2

    .prologue
    .line 5399
    iget-object v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Road$Builder;->id_:Ljava/lang/Object;

    .line 5400
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_0

    .line 5401
    check-cast v0, Lcom/google/protobuf/ByteString;

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 5402
    iput-object v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Road$Builder;->id_:Ljava/lang/Object;

    .line 5405
    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Ljava/lang/String;

    goto :goto_0
.end method

.method public getLevel()Ljava/lang/String;
    .locals 2

    .prologue
    .line 5543
    iget-object v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Road$Builder;->level_:Ljava/lang/Object;

    .line 5544
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_0

    .line 5545
    check-cast v0, Lcom/google/protobuf/ByteString;

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 5546
    iput-object v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Road$Builder;->level_:Ljava/lang/Object;

    .line 5549
    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Ljava/lang/String;

    goto :goto_0
.end method

.method public getName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 5435
    iget-object v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Road$Builder;->name_:Ljava/lang/Object;

    .line 5436
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_0

    .line 5437
    check-cast v0, Lcom/google/protobuf/ByteString;

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 5438
    iput-object v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Road$Builder;->name_:Ljava/lang/Object;

    .line 5441
    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Ljava/lang/String;

    goto :goto_0
.end method

.method public getWidth()Ljava/lang/String;
    .locals 2

    .prologue
    .line 5507
    iget-object v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Road$Builder;->width_:Ljava/lang/Object;

    .line 5508
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_0

    .line 5509
    check-cast v0, Lcom/google/protobuf/ByteString;

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 5510
    iput-object v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Road$Builder;->width_:Ljava/lang/Object;

    .line 5513
    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Ljava/lang/String;

    goto :goto_0
.end method

.method public hasDirection()Z
    .locals 2

    .prologue
    .line 5612
    iget v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Road$Builder;->bitField0_:I

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

.method public hasDistance()Z
    .locals 2

    .prologue
    .line 5576
    iget v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Road$Builder;->bitField0_:I

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

.method public hasEname()Z
    .locals 2

    .prologue
    .line 5468
    iget v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Road$Builder;->bitField0_:I

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

.method public hasId()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 5396
    iget v1, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Road$Builder;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasLevel()Z
    .locals 2

    .prologue
    .line 5540
    iget v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Road$Builder;->bitField0_:I

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

.method public hasName()Z
    .locals 2

    .prologue
    .line 5432
    iget v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Road$Builder;->bitField0_:I

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

.method public hasWidth()Z
    .locals 2

    .prologue
    .line 5504
    iget v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Road$Builder;->bitField0_:I

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
    .line 5154
    # getter for: Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf;->internal_static_Road_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    invoke-static {}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf;->access$7700()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 5298
    invoke-virtual {p0}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Road$Builder;->hasId()Z

    move-result v1

    if-nez v1, :cond_1

    .line 5326
    :cond_0
    :goto_0
    return v0

    .line 5302
    :cond_1
    invoke-virtual {p0}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Road$Builder;->hasName()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 5306
    invoke-virtual {p0}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Road$Builder;->hasEname()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 5310
    invoke-virtual {p0}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Road$Builder;->hasWidth()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 5314
    invoke-virtual {p0}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Road$Builder;->hasLevel()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 5318
    invoke-virtual {p0}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Road$Builder;->hasDistance()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 5322
    invoke-virtual {p0}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Road$Builder;->hasDirection()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 5326
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 5144
    invoke-virtual {p0, p1, p2}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Road$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Road$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 5144
    invoke-virtual {p0, p1}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Road$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Road$Builder;

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
    .line 5144
    invoke-virtual {p0, p1, p2}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Road$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Road$Builder;

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
    .line 5144
    invoke-virtual {p0, p1, p2}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Road$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Road$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 5144
    invoke-virtual {p0, p1}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Road$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Road$Builder;

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
    .line 5144
    invoke-virtual {p0, p1, p2}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Road$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Road$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Road$Builder;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 5333
    invoke-virtual {p0}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Road$Builder;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v0

    invoke-static {v0}, Lcom/google/protobuf/UnknownFieldSet;->newBuilder(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/UnknownFieldSet$Builder;

    move-result-object v0

    .line 5337
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v1

    .line 5338
    sparse-switch v1, :sswitch_data_0

    .line 5344
    invoke-virtual {p0, p1, v0, p2, v1}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Road$Builder;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/UnknownFieldSet$Builder;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 5346
    invoke-virtual {v0}, Lcom/google/protobuf/UnknownFieldSet$Builder;->build()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Road$Builder;->setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessage$Builder;

    .line 5347
    invoke-virtual {p0}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Road$Builder;->onChanged()V

    .line 5348
    :goto_1
    return-object p0

    .line 5340
    :sswitch_0
    invoke-virtual {v0}, Lcom/google/protobuf/UnknownFieldSet$Builder;->build()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Road$Builder;->setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessage$Builder;

    .line 5341
    invoke-virtual {p0}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Road$Builder;->onChanged()V

    goto :goto_1

    .line 5353
    :sswitch_1
    iget v1, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Road$Builder;->bitField0_:I

    or-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Road$Builder;->bitField0_:I

    .line 5354
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    iput-object v1, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Road$Builder;->id_:Ljava/lang/Object;

    goto :goto_0

    .line 5358
    :sswitch_2
    iget v1, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Road$Builder;->bitField0_:I

    or-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Road$Builder;->bitField0_:I

    .line 5359
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    iput-object v1, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Road$Builder;->name_:Ljava/lang/Object;

    goto :goto_0

    .line 5363
    :sswitch_3
    iget v1, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Road$Builder;->bitField0_:I

    or-int/lit8 v1, v1, 0x4

    iput v1, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Road$Builder;->bitField0_:I

    .line 5364
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    iput-object v1, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Road$Builder;->ename_:Ljava/lang/Object;

    goto :goto_0

    .line 5368
    :sswitch_4
    iget v1, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Road$Builder;->bitField0_:I

    or-int/lit8 v1, v1, 0x8

    iput v1, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Road$Builder;->bitField0_:I

    .line 5369
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    iput-object v1, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Road$Builder;->width_:Ljava/lang/Object;

    goto :goto_0

    .line 5373
    :sswitch_5
    iget v1, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Road$Builder;->bitField0_:I

    or-int/lit8 v1, v1, 0x10

    iput v1, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Road$Builder;->bitField0_:I

    .line 5374
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    iput-object v1, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Road$Builder;->level_:Ljava/lang/Object;

    goto :goto_0

    .line 5378
    :sswitch_6
    iget v1, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Road$Builder;->bitField0_:I

    or-int/lit8 v1, v1, 0x20

    iput v1, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Road$Builder;->bitField0_:I

    .line 5379
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    iput-object v1, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Road$Builder;->distance_:Ljava/lang/Object;

    goto :goto_0

    .line 5383
    :sswitch_7
    iget v1, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Road$Builder;->bitField0_:I

    or-int/lit8 v1, v1, 0x40

    iput v1, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Road$Builder;->bitField0_:I

    .line 5384
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    iput-object v1, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Road$Builder;->direction_:Ljava/lang/Object;

    goto :goto_0

    .line 5338
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
        0x1a -> :sswitch_3
        0x22 -> :sswitch_4
        0x2a -> :sswitch_5
        0x32 -> :sswitch_6
        0x3a -> :sswitch_7
    .end sparse-switch
.end method

.method public mergeFrom(Lcom/google/protobuf/Message;)Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Road$Builder;
    .locals 1

    .prologue
    .line 5262
    instance-of v0, p1, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Road;

    if-eqz v0, :cond_0

    .line 5263
    check-cast p1, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Road;

    invoke-virtual {p0, p1}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Road$Builder;->mergeFrom(Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Road;)Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Road$Builder;

    move-result-object p0

    .line 5266
    :goto_0
    return-object p0

    .line 5265
    :cond_0
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessage$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;

    goto :goto_0
.end method

.method public mergeFrom(Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Road;)Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Road$Builder;
    .locals 1

    .prologue
    .line 5271
    invoke-static {}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Road;->getDefaultInstance()Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Road;

    move-result-object v0

    if-ne p1, v0, :cond_0

    .line 5294
    :goto_0
    return-object p0

    .line 5272
    :cond_0
    invoke-virtual {p1}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Road;->hasId()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5273
    invoke-virtual {p1}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Road;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Road$Builder;->setId(Ljava/lang/String;)Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Road$Builder;

    .line 5275
    :cond_1
    invoke-virtual {p1}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Road;->hasName()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 5276
    invoke-virtual {p1}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Road;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Road$Builder;->setName(Ljava/lang/String;)Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Road$Builder;

    .line 5278
    :cond_2
    invoke-virtual {p1}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Road;->hasEname()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 5279
    invoke-virtual {p1}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Road;->getEname()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Road$Builder;->setEname(Ljava/lang/String;)Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Road$Builder;

    .line 5281
    :cond_3
    invoke-virtual {p1}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Road;->hasWidth()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 5282
    invoke-virtual {p1}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Road;->getWidth()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Road$Builder;->setWidth(Ljava/lang/String;)Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Road$Builder;

    .line 5284
    :cond_4
    invoke-virtual {p1}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Road;->hasLevel()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 5285
    invoke-virtual {p1}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Road;->getLevel()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Road$Builder;->setLevel(Ljava/lang/String;)Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Road$Builder;

    .line 5287
    :cond_5
    invoke-virtual {p1}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Road;->hasDistance()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 5288
    invoke-virtual {p1}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Road;->getDistance()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Road$Builder;->setDistance(Ljava/lang/String;)Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Road$Builder;

    .line 5290
    :cond_6
    invoke-virtual {p1}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Road;->hasDirection()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 5291
    invoke-virtual {p1}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Road;->getDirection()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Road$Builder;->setDirection(Ljava/lang/String;)Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Road$Builder;

    .line 5293
    :cond_7
    invoke-virtual {p1}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Road;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Road$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessage$Builder;

    goto :goto_0
.end method

.method public setDirection(Ljava/lang/String;)Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Road$Builder;
    .locals 1

    .prologue
    .line 5625
    if-nez p1, :cond_0

    .line 5626
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 5628
    :cond_0
    iget v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Road$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Road$Builder;->bitField0_:I

    .line 5629
    iput-object p1, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Road$Builder;->direction_:Ljava/lang/Object;

    .line 5630
    invoke-virtual {p0}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Road$Builder;->onChanged()V

    .line 5631
    return-object p0
.end method

.method setDirection(Lcom/google/protobuf/ByteString;)V
    .locals 1

    .prologue
    .line 5640
    iget v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Road$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Road$Builder;->bitField0_:I

    .line 5641
    iput-object p1, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Road$Builder;->direction_:Ljava/lang/Object;

    .line 5642
    invoke-virtual {p0}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Road$Builder;->onChanged()V

    .line 5643
    return-void
.end method

.method public setDistance(Ljava/lang/String;)Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Road$Builder;
    .locals 1

    .prologue
    .line 5589
    if-nez p1, :cond_0

    .line 5590
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 5592
    :cond_0
    iget v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Road$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Road$Builder;->bitField0_:I

    .line 5593
    iput-object p1, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Road$Builder;->distance_:Ljava/lang/Object;

    .line 5594
    invoke-virtual {p0}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Road$Builder;->onChanged()V

    .line 5595
    return-object p0
.end method

.method setDistance(Lcom/google/protobuf/ByteString;)V
    .locals 1

    .prologue
    .line 5604
    iget v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Road$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Road$Builder;->bitField0_:I

    .line 5605
    iput-object p1, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Road$Builder;->distance_:Ljava/lang/Object;

    .line 5606
    invoke-virtual {p0}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Road$Builder;->onChanged()V

    .line 5607
    return-void
.end method

.method public setEname(Ljava/lang/String;)Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Road$Builder;
    .locals 1

    .prologue
    .line 5481
    if-nez p1, :cond_0

    .line 5482
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 5484
    :cond_0
    iget v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Road$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Road$Builder;->bitField0_:I

    .line 5485
    iput-object p1, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Road$Builder;->ename_:Ljava/lang/Object;

    .line 5486
    invoke-virtual {p0}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Road$Builder;->onChanged()V

    .line 5487
    return-object p0
.end method

.method setEname(Lcom/google/protobuf/ByteString;)V
    .locals 1

    .prologue
    .line 5496
    iget v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Road$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Road$Builder;->bitField0_:I

    .line 5497
    iput-object p1, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Road$Builder;->ename_:Ljava/lang/Object;

    .line 5498
    invoke-virtual {p0}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Road$Builder;->onChanged()V

    .line 5499
    return-void
.end method

.method public setId(Ljava/lang/String;)Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Road$Builder;
    .locals 1

    .prologue
    .line 5409
    if-nez p1, :cond_0

    .line 5410
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 5412
    :cond_0
    iget v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Road$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Road$Builder;->bitField0_:I

    .line 5413
    iput-object p1, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Road$Builder;->id_:Ljava/lang/Object;

    .line 5414
    invoke-virtual {p0}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Road$Builder;->onChanged()V

    .line 5415
    return-object p0
.end method

.method setId(Lcom/google/protobuf/ByteString;)V
    .locals 1

    .prologue
    .line 5424
    iget v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Road$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Road$Builder;->bitField0_:I

    .line 5425
    iput-object p1, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Road$Builder;->id_:Ljava/lang/Object;

    .line 5426
    invoke-virtual {p0}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Road$Builder;->onChanged()V

    .line 5427
    return-void
.end method

.method public setLevel(Ljava/lang/String;)Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Road$Builder;
    .locals 1

    .prologue
    .line 5553
    if-nez p1, :cond_0

    .line 5554
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 5556
    :cond_0
    iget v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Road$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Road$Builder;->bitField0_:I

    .line 5557
    iput-object p1, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Road$Builder;->level_:Ljava/lang/Object;

    .line 5558
    invoke-virtual {p0}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Road$Builder;->onChanged()V

    .line 5559
    return-object p0
.end method

.method setLevel(Lcom/google/protobuf/ByteString;)V
    .locals 1

    .prologue
    .line 5568
    iget v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Road$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Road$Builder;->bitField0_:I

    .line 5569
    iput-object p1, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Road$Builder;->level_:Ljava/lang/Object;

    .line 5570
    invoke-virtual {p0}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Road$Builder;->onChanged()V

    .line 5571
    return-void
.end method

.method public setName(Ljava/lang/String;)Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Road$Builder;
    .locals 1

    .prologue
    .line 5445
    if-nez p1, :cond_0

    .line 5446
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 5448
    :cond_0
    iget v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Road$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Road$Builder;->bitField0_:I

    .line 5449
    iput-object p1, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Road$Builder;->name_:Ljava/lang/Object;

    .line 5450
    invoke-virtual {p0}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Road$Builder;->onChanged()V

    .line 5451
    return-object p0
.end method

.method setName(Lcom/google/protobuf/ByteString;)V
    .locals 1

    .prologue
    .line 5460
    iget v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Road$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Road$Builder;->bitField0_:I

    .line 5461
    iput-object p1, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Road$Builder;->name_:Ljava/lang/Object;

    .line 5462
    invoke-virtual {p0}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Road$Builder;->onChanged()V

    .line 5463
    return-void
.end method

.method public setWidth(Ljava/lang/String;)Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Road$Builder;
    .locals 1

    .prologue
    .line 5517
    if-nez p1, :cond_0

    .line 5518
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 5520
    :cond_0
    iget v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Road$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Road$Builder;->bitField0_:I

    .line 5521
    iput-object p1, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Road$Builder;->width_:Ljava/lang/Object;

    .line 5522
    invoke-virtual {p0}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Road$Builder;->onChanged()V

    .line 5523
    return-object p0
.end method

.method setWidth(Lcom/google/protobuf/ByteString;)V
    .locals 1

    .prologue
    .line 5532
    iget v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Road$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Road$Builder;->bitField0_:I

    .line 5533
    iput-object p1, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Road$Builder;->width_:Ljava/lang/Object;

    .line 5534
    invoke-virtual {p0}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Road$Builder;->onChanged()V

    .line 5535
    return-void
.end method
