.class public final Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCItem$Builder;
.super Lcom/google/protobuf/GeneratedMessage$Builder;
.source "RGCProtoBuf.java"

# interfaces
.implements Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCItemOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessage$Builder",
        "<",
        "Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCItem$Builder;",
        ">;",
        "Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCItemOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private gridcode_:Ljava/lang/Object;

.field private x_:Ljava/lang/Object;

.field private y_:Ljava/lang/Object;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 2251
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;-><init>()V

    .line 2407
    const-string v0, ""

    iput-object v0, p0, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCItem$Builder;->x_:Ljava/lang/Object;

    .line 2443
    const-string v0, ""

    iput-object v0, p0, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCItem$Builder;->y_:Ljava/lang/Object;

    .line 2479
    const-string v0, ""

    iput-object v0, p0, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCItem$Builder;->gridcode_:Ljava/lang/Object;

    .line 2252
    invoke-direct {p0}, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCItem$Builder;->maybeForceBuilderInitialization()V

    .line 2253
    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V
    .locals 1

    .prologue
    .line 2256
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessage$Builder;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V

    .line 2407
    const-string v0, ""

    iput-object v0, p0, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCItem$Builder;->x_:Ljava/lang/Object;

    .line 2443
    const-string v0, ""

    iput-object v0, p0, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCItem$Builder;->y_:Ljava/lang/Object;

    .line 2479
    const-string v0, ""

    iput-object v0, p0, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCItem$Builder;->gridcode_:Ljava/lang/Object;

    .line 2257
    invoke-direct {p0}, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCItem$Builder;->maybeForceBuilderInitialization()V

    .line 2258
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;Lcom/mapabc/mapapi/core/v;)V
    .locals 0

    .prologue
    .line 2237
    invoke-direct {p0, p1}, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCItem$Builder;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V

    return-void
.end method

.method static synthetic access$3000(Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCItem$Builder;)Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCItem;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 2237
    invoke-direct {p0}, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCItem$Builder;->buildParsed()Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCItem;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$3100()Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCItem$Builder;
    .locals 1

    .prologue
    .line 2237
    invoke-static {}, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCItem$Builder;->create()Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCItem$Builder;

    move-result-object v0

    return-object v0
.end method

.method private buildParsed()Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCItem;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 2301
    invoke-virtual {p0}, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCItem$Builder;->buildPartial()Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCItem;

    move-result-object v0

    .line 2302
    invoke-virtual {v0}, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCItem;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_0

    .line 2303
    invoke-static {v0}, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCItem$Builder;->newUninitializedMessageException(Lcom/google/protobuf/Message;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/UninitializedMessageException;->asInvalidProtocolBufferException()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0

    .line 2306
    :cond_0
    return-object v0
.end method

.method private static create()Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCItem$Builder;
    .locals 1

    .prologue
    .line 2264
    new-instance v0, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCItem$Builder;

    invoke-direct {v0}, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCItem$Builder;-><init>()V

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 2242
    # getter for: Lcom/mapabc/mapapi/core/RGCProtoBuf;->internal_static_RGCItem_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;
    invoke-static {}, Lcom/mapabc/mapapi/core/RGCProtoBuf;->access$2800()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .locals 1

    .prologue
    .line 2260
    # getter for: Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCItem;->alwaysUseFieldBuilders:Z
    invoke-static {}, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCItem;->access$3300()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2262
    :cond_0
    return-void
.end method


# virtual methods
.method public bridge synthetic build()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 2237
    invoke-virtual {p0}, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCItem$Builder;->build()Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCItem;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 2237
    invoke-virtual {p0}, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCItem$Builder;->build()Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCItem;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCItem;
    .locals 2

    .prologue
    .line 2292
    invoke-virtual {p0}, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCItem$Builder;->buildPartial()Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCItem;

    move-result-object v0

    .line 2293
    invoke-virtual {v0}, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCItem;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_0

    .line 2294
    invoke-static {v0}, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCItem$Builder;->newUninitializedMessageException(Lcom/google/protobuf/Message;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0

    .line 2296
    :cond_0
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 2237
    invoke-virtual {p0}, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCItem$Builder;->buildPartial()Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCItem;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 2237
    invoke-virtual {p0}, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCItem$Builder;->buildPartial()Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCItem;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCItem;
    .locals 5

    .prologue
    const/4 v0, 0x1

    .line 2310
    new-instance v2, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCItem;

    const/4 v1, 0x0

    invoke-direct {v2, p0, v1}, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCItem;-><init>(Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCItem$Builder;Lcom/mapabc/mapapi/core/v;)V

    .line 2311
    iget v3, p0, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCItem$Builder;->bitField0_:I

    .line 2312
    const/4 v1, 0x0

    .line 2313
    and-int/lit8 v4, v3, 0x1

    if-ne v4, v0, :cond_2

    .line 2316
    :goto_0
    iget-object v1, p0, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCItem$Builder;->x_:Ljava/lang/Object;

    # setter for: Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCItem;->x_:Ljava/lang/Object;
    invoke-static {v2, v1}, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCItem;->access$3502(Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCItem;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2317
    and-int/lit8 v1, v3, 0x2

    const/4 v4, 0x2

    if-ne v1, v4, :cond_0

    .line 2318
    or-int/lit8 v0, v0, 0x2

    .line 2320
    :cond_0
    iget-object v1, p0, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCItem$Builder;->y_:Ljava/lang/Object;

    # setter for: Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCItem;->y_:Ljava/lang/Object;
    invoke-static {v2, v1}, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCItem;->access$3602(Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCItem;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2321
    and-int/lit8 v1, v3, 0x4

    const/4 v3, 0x4

    if-ne v1, v3, :cond_1

    .line 2322
    or-int/lit8 v0, v0, 0x4

    .line 2324
    :cond_1
    iget-object v1, p0, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCItem$Builder;->gridcode_:Ljava/lang/Object;

    # setter for: Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCItem;->gridcode_:Ljava/lang/Object;
    invoke-static {v2, v1}, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCItem;->access$3702(Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCItem;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2325
    # setter for: Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCItem;->bitField0_:I
    invoke-static {v2, v0}, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCItem;->access$3802(Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCItem;I)I

    .line 2326
    invoke-virtual {p0}, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCItem$Builder;->onBuilt()V

    .line 2327
    return-object v2

    :cond_2
    move v0, v1

    goto :goto_0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 2237
    invoke-virtual {p0}, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCItem$Builder;->clear()Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCItem$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessage$Builder;
    .locals 1

    .prologue
    .line 2237
    invoke-virtual {p0}, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCItem$Builder;->clear()Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCItem$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 2237
    invoke-virtual {p0}, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCItem$Builder;->clear()Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCItem$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 2237
    invoke-virtual {p0}, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCItem$Builder;->clear()Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCItem$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCItem$Builder;
    .locals 1

    .prologue
    .line 2268
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->clear()Lcom/google/protobuf/GeneratedMessage$Builder;

    .line 2269
    const-string v0, ""

    iput-object v0, p0, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCItem$Builder;->x_:Ljava/lang/Object;

    .line 2270
    iget v0, p0, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCItem$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCItem$Builder;->bitField0_:I

    .line 2271
    const-string v0, ""

    iput-object v0, p0, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCItem$Builder;->y_:Ljava/lang/Object;

    .line 2272
    iget v0, p0, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCItem$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCItem$Builder;->bitField0_:I

    .line 2273
    const-string v0, ""

    iput-object v0, p0, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCItem$Builder;->gridcode_:Ljava/lang/Object;

    .line 2274
    iget v0, p0, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCItem$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCItem$Builder;->bitField0_:I

    .line 2275
    return-object p0
.end method

.method public clearGridcode()Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCItem$Builder;
    .locals 1

    .prologue
    .line 2503
    iget v0, p0, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCItem$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCItem$Builder;->bitField0_:I

    .line 2504
    invoke-static {}, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCItem;->getDefaultInstance()Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCItem;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCItem;->getGridcode()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCItem$Builder;->gridcode_:Ljava/lang/Object;

    .line 2505
    invoke-virtual {p0}, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCItem$Builder;->onChanged()V

    .line 2506
    return-object p0
.end method

.method public clearX()Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCItem$Builder;
    .locals 1

    .prologue
    .line 2431
    iget v0, p0, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCItem$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCItem$Builder;->bitField0_:I

    .line 2432
    invoke-static {}, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCItem;->getDefaultInstance()Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCItem;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCItem;->getX()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCItem$Builder;->x_:Ljava/lang/Object;

    .line 2433
    invoke-virtual {p0}, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCItem$Builder;->onChanged()V

    .line 2434
    return-object p0
.end method

.method public clearY()Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCItem$Builder;
    .locals 1

    .prologue
    .line 2467
    iget v0, p0, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCItem$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCItem$Builder;->bitField0_:I

    .line 2468
    invoke-static {}, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCItem;->getDefaultInstance()Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCItem;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCItem;->getY()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCItem$Builder;->y_:Ljava/lang/Object;

    .line 2469
    invoke-virtual {p0}, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCItem$Builder;->onChanged()V

    .line 2470
    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 2237
    invoke-virtual {p0}, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCItem$Builder;->clone()Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCItem$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .prologue
    .line 2237
    invoke-virtual {p0}, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCItem$Builder;->clone()Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCItem$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessage$Builder;
    .locals 1

    .prologue
    .line 2237
    invoke-virtual {p0}, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCItem$Builder;->clone()Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCItem$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 2237
    invoke-virtual {p0}, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCItem$Builder;->clone()Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCItem$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 2237
    invoke-virtual {p0}, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCItem$Builder;->clone()Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCItem$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCItem$Builder;
    .locals 2

    .prologue
    .line 2279
    invoke-static {}, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCItem$Builder;->create()Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCItem$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCItem$Builder;->buildPartial()Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCItem;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCItem$Builder;->mergeFrom(Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCItem;)Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCItem$Builder;

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
    .line 2237
    invoke-virtual {p0}, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCItem$Builder;->clone()Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCItem$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 2237
    invoke-virtual {p0}, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCItem$Builder;->getDefaultInstanceForType()Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCItem;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 2237
    invoke-virtual {p0}, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCItem$Builder;->getDefaultInstanceForType()Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCItem;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCItem;
    .locals 1

    .prologue
    .line 2288
    invoke-static {}, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCItem;->getDefaultInstance()Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCItem;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 2284
    invoke-static {}, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCItem;->getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public getGridcode()Ljava/lang/String;
    .locals 2

    .prologue
    .line 2484
    iget-object v0, p0, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCItem$Builder;->gridcode_:Ljava/lang/Object;

    .line 2485
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_0

    .line 2486
    check-cast v0, Lcom/google/protobuf/ByteString;

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 2487
    iput-object v0, p0, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCItem$Builder;->gridcode_:Ljava/lang/Object;

    .line 2490
    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Ljava/lang/String;

    goto :goto_0
.end method

.method public getX()Ljava/lang/String;
    .locals 2

    .prologue
    .line 2412
    iget-object v0, p0, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCItem$Builder;->x_:Ljava/lang/Object;

    .line 2413
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_0

    .line 2414
    check-cast v0, Lcom/google/protobuf/ByteString;

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 2415
    iput-object v0, p0, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCItem$Builder;->x_:Ljava/lang/Object;

    .line 2418
    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Ljava/lang/String;

    goto :goto_0
.end method

.method public getY()Ljava/lang/String;
    .locals 2

    .prologue
    .line 2448
    iget-object v0, p0, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCItem$Builder;->y_:Ljava/lang/Object;

    .line 2449
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_0

    .line 2450
    check-cast v0, Lcom/google/protobuf/ByteString;

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 2451
    iput-object v0, p0, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCItem$Builder;->y_:Ljava/lang/Object;

    .line 2454
    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Ljava/lang/String;

    goto :goto_0
.end method

.method public hasGridcode()Z
    .locals 2

    .prologue
    .line 2481
    iget v0, p0, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCItem$Builder;->bitField0_:I

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

.method public hasX()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 2409
    iget v1, p0, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCItem$Builder;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasY()Z
    .locals 2

    .prologue
    .line 2445
    iget v0, p0, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCItem$Builder;->bitField0_:I

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

.method protected internalGetFieldAccessorTable()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 1

    .prologue
    .line 2247
    # getter for: Lcom/mapabc/mapapi/core/RGCProtoBuf;->internal_static_RGCItem_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    invoke-static {}, Lcom/mapabc/mapapi/core/RGCProtoBuf;->access$2900()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 1

    .prologue
    .line 2355
    invoke-virtual {p0}, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCItem$Builder;->hasGridcode()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2357
    const/4 v0, 0x0

    .line 2359
    :goto_0
    return v0

    :cond_0
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
    .line 2237
    invoke-virtual {p0, p1, p2}, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCItem$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCItem$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 2237
    invoke-virtual {p0, p1}, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCItem$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCItem$Builder;

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
    .line 2237
    invoke-virtual {p0, p1, p2}, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCItem$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCItem$Builder;

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
    .line 2237
    invoke-virtual {p0, p1, p2}, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCItem$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCItem$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 2237
    invoke-virtual {p0, p1}, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCItem$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCItem$Builder;

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
    .line 2237
    invoke-virtual {p0, p1, p2}, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCItem$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCItem$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCItem$Builder;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2366
    invoke-virtual {p0}, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCItem$Builder;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v0

    invoke-static {v0}, Lcom/google/protobuf/UnknownFieldSet;->newBuilder(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/UnknownFieldSet$Builder;

    move-result-object v0

    .line 2370
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v1

    .line 2371
    sparse-switch v1, :sswitch_data_0

    .line 2377
    invoke-virtual {p0, p1, v0, p2, v1}, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCItem$Builder;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/UnknownFieldSet$Builder;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 2379
    invoke-virtual {v0}, Lcom/google/protobuf/UnknownFieldSet$Builder;->build()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCItem$Builder;->setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessage$Builder;

    .line 2380
    invoke-virtual {p0}, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCItem$Builder;->onChanged()V

    .line 2381
    :goto_1
    return-object p0

    .line 2373
    :sswitch_0
    invoke-virtual {v0}, Lcom/google/protobuf/UnknownFieldSet$Builder;->build()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCItem$Builder;->setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessage$Builder;

    .line 2374
    invoke-virtual {p0}, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCItem$Builder;->onChanged()V

    goto :goto_1

    .line 2386
    :sswitch_1
    iget v1, p0, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCItem$Builder;->bitField0_:I

    or-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCItem$Builder;->bitField0_:I

    .line 2387
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    iput-object v1, p0, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCItem$Builder;->x_:Ljava/lang/Object;

    goto :goto_0

    .line 2391
    :sswitch_2
    iget v1, p0, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCItem$Builder;->bitField0_:I

    or-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCItem$Builder;->bitField0_:I

    .line 2392
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    iput-object v1, p0, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCItem$Builder;->y_:Ljava/lang/Object;

    goto :goto_0

    .line 2396
    :sswitch_3
    iget v1, p0, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCItem$Builder;->bitField0_:I

    or-int/lit8 v1, v1, 0x4

    iput v1, p0, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCItem$Builder;->bitField0_:I

    .line 2397
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    iput-object v1, p0, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCItem$Builder;->gridcode_:Ljava/lang/Object;

    goto :goto_0

    .line 2371
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
        0x1a -> :sswitch_3
    .end sparse-switch
.end method

.method public mergeFrom(Lcom/google/protobuf/Message;)Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCItem$Builder;
    .locals 1

    .prologue
    .line 2331
    instance-of v0, p1, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCItem;

    if-eqz v0, :cond_0

    .line 2332
    check-cast p1, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCItem;

    invoke-virtual {p0, p1}, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCItem$Builder;->mergeFrom(Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCItem;)Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCItem$Builder;

    move-result-object p0

    .line 2335
    :goto_0
    return-object p0

    .line 2334
    :cond_0
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessage$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;

    goto :goto_0
.end method

.method public mergeFrom(Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCItem;)Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCItem$Builder;
    .locals 1

    .prologue
    .line 2340
    invoke-static {}, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCItem;->getDefaultInstance()Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCItem;

    move-result-object v0

    if-ne p1, v0, :cond_0

    .line 2351
    :goto_0
    return-object p0

    .line 2341
    :cond_0
    invoke-virtual {p1}, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCItem;->hasX()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2342
    invoke-virtual {p1}, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCItem;->getX()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCItem$Builder;->setX(Ljava/lang/String;)Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCItem$Builder;

    .line 2344
    :cond_1
    invoke-virtual {p1}, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCItem;->hasY()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2345
    invoke-virtual {p1}, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCItem;->getY()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCItem$Builder;->setY(Ljava/lang/String;)Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCItem$Builder;

    .line 2347
    :cond_2
    invoke-virtual {p1}, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCItem;->hasGridcode()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2348
    invoke-virtual {p1}, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCItem;->getGridcode()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCItem$Builder;->setGridcode(Ljava/lang/String;)Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCItem$Builder;

    .line 2350
    :cond_3
    invoke-virtual {p1}, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCItem;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCItem$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessage$Builder;

    goto :goto_0
.end method

.method public setGridcode(Ljava/lang/String;)Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCItem$Builder;
    .locals 1

    .prologue
    .line 2494
    if-nez p1, :cond_0

    .line 2495
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2497
    :cond_0
    iget v0, p0, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCItem$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCItem$Builder;->bitField0_:I

    .line 2498
    iput-object p1, p0, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCItem$Builder;->gridcode_:Ljava/lang/Object;

    .line 2499
    invoke-virtual {p0}, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCItem$Builder;->onChanged()V

    .line 2500
    return-object p0
.end method

.method setGridcode(Lcom/google/protobuf/ByteString;)V
    .locals 1

    .prologue
    .line 2509
    iget v0, p0, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCItem$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCItem$Builder;->bitField0_:I

    .line 2510
    iput-object p1, p0, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCItem$Builder;->gridcode_:Ljava/lang/Object;

    .line 2511
    invoke-virtual {p0}, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCItem$Builder;->onChanged()V

    .line 2512
    return-void
.end method

.method public setX(Ljava/lang/String;)Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCItem$Builder;
    .locals 1

    .prologue
    .line 2422
    if-nez p1, :cond_0

    .line 2423
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2425
    :cond_0
    iget v0, p0, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCItem$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCItem$Builder;->bitField0_:I

    .line 2426
    iput-object p1, p0, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCItem$Builder;->x_:Ljava/lang/Object;

    .line 2427
    invoke-virtual {p0}, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCItem$Builder;->onChanged()V

    .line 2428
    return-object p0
.end method

.method setX(Lcom/google/protobuf/ByteString;)V
    .locals 1

    .prologue
    .line 2437
    iget v0, p0, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCItem$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCItem$Builder;->bitField0_:I

    .line 2438
    iput-object p1, p0, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCItem$Builder;->x_:Ljava/lang/Object;

    .line 2439
    invoke-virtual {p0}, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCItem$Builder;->onChanged()V

    .line 2440
    return-void
.end method

.method public setY(Ljava/lang/String;)Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCItem$Builder;
    .locals 1

    .prologue
    .line 2458
    if-nez p1, :cond_0

    .line 2459
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2461
    :cond_0
    iget v0, p0, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCItem$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCItem$Builder;->bitField0_:I

    .line 2462
    iput-object p1, p0, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCItem$Builder;->y_:Ljava/lang/Object;

    .line 2463
    invoke-virtual {p0}, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCItem$Builder;->onChanged()V

    .line 2464
    return-object p0
.end method

.method setY(Lcom/google/protobuf/ByteString;)V
    .locals 1

    .prologue
    .line 2473
    iget v0, p0, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCItem$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCItem$Builder;->bitField0_:I

    .line 2474
    iput-object p1, p0, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCItem$Builder;->y_:Ljava/lang/Object;

    .line 2475
    invoke-virtual {p0}, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCItem$Builder;->onChanged()V

    .line 2476
    return-void
.end method
