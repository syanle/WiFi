.class public final Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeocodingRequest$Builder;
.super Lcom/google/protobuf/GeneratedMessage$Builder;
.source "GeocodingProtoBuf.java"

# interfaces
.implements Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeocodingRequestOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeocodingRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessage$Builder",
        "<",
        "Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeocodingRequest$Builder;",
        ">;",
        "Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeocodingRequestOrBuilder;"
    }
.end annotation


# instance fields
.field private address_:Ljava/lang/Object;

.field private bitField0_:I

.field private commonBuilder_:Lcom/google/protobuf/SingleFieldBuilder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/SingleFieldBuilder",
            "<",
            "Lcom/mapabc/mapapi/core/CommonProtoBuf$Common;",
            "Lcom/mapabc/mapapi/core/CommonProtoBuf$Common$Builder;",
            "Lcom/mapabc/mapapi/core/CommonProtoBuf$CommonOrBuilder;",
            ">;"
        }
    .end annotation
.end field

.field private common_:Lcom/mapabc/mapapi/core/CommonProtoBuf$Common;

.field private poiNumber_:Ljava/lang/Object;

.field private ver_:Ljava/lang/Object;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 342
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;-><init>()V

    .line 533
    invoke-static {}, Lcom/mapabc/mapapi/core/CommonProtoBuf$Common;->getDefaultInstance()Lcom/mapabc/mapapi/core/CommonProtoBuf$Common;

    move-result-object v0

    iput-object v0, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeocodingRequest$Builder;->common_:Lcom/mapabc/mapapi/core/CommonProtoBuf$Common;

    .line 623
    const-string v0, ""

    iput-object v0, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeocodingRequest$Builder;->address_:Ljava/lang/Object;

    .line 659
    const-string v0, ""

    iput-object v0, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeocodingRequest$Builder;->poiNumber_:Ljava/lang/Object;

    .line 695
    const-string v0, ""

    iput-object v0, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeocodingRequest$Builder;->ver_:Ljava/lang/Object;

    .line 343
    invoke-direct {p0}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeocodingRequest$Builder;->maybeForceBuilderInitialization()V

    .line 344
    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V
    .locals 1

    .prologue
    .line 347
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessage$Builder;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V

    .line 533
    invoke-static {}, Lcom/mapabc/mapapi/core/CommonProtoBuf$Common;->getDefaultInstance()Lcom/mapabc/mapapi/core/CommonProtoBuf$Common;

    move-result-object v0

    iput-object v0, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeocodingRequest$Builder;->common_:Lcom/mapabc/mapapi/core/CommonProtoBuf$Common;

    .line 623
    const-string v0, ""

    iput-object v0, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeocodingRequest$Builder;->address_:Ljava/lang/Object;

    .line 659
    const-string v0, ""

    iput-object v0, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeocodingRequest$Builder;->poiNumber_:Ljava/lang/Object;

    .line 695
    const-string v0, ""

    iput-object v0, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeocodingRequest$Builder;->ver_:Ljava/lang/Object;

    .line 348
    invoke-direct {p0}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeocodingRequest$Builder;->maybeForceBuilderInitialization()V

    .line 349
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;Lcom/mapabc/mapapi/geocoder/c;)V
    .locals 0

    .prologue
    .line 328
    invoke-direct {p0, p1}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeocodingRequest$Builder;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V

    return-void
.end method

.method static synthetic access$200(Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeocodingRequest$Builder;)Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeocodingRequest;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 328
    invoke-direct {p0}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeocodingRequest$Builder;->buildParsed()Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeocodingRequest;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300()Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeocodingRequest$Builder;
    .locals 1

    .prologue
    .line 328
    invoke-static {}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeocodingRequest$Builder;->create()Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeocodingRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method private buildParsed()Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeocodingRequest;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 399
    invoke-virtual {p0}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeocodingRequest$Builder;->buildPartial()Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeocodingRequest;

    move-result-object v0

    .line 400
    invoke-virtual {v0}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeocodingRequest;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_0

    .line 401
    invoke-static {v0}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeocodingRequest$Builder;->newUninitializedMessageException(Lcom/google/protobuf/Message;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/UninitializedMessageException;->asInvalidProtocolBufferException()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0

    .line 404
    :cond_0
    return-object v0
.end method

.method private static create()Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeocodingRequest$Builder;
    .locals 1

    .prologue
    .line 356
    new-instance v0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeocodingRequest$Builder;

    invoke-direct {v0}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeocodingRequest$Builder;-><init>()V

    return-object v0
.end method

.method private getCommonFieldBuilder()Lcom/google/protobuf/SingleFieldBuilder;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/SingleFieldBuilder",
            "<",
            "Lcom/mapabc/mapapi/core/CommonProtoBuf$Common;",
            "Lcom/mapabc/mapapi/core/CommonProtoBuf$Common$Builder;",
            "Lcom/mapabc/mapapi/core/CommonProtoBuf$CommonOrBuilder;",
            ">;"
        }
    .end annotation

    .prologue
    .line 611
    iget-object v0, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeocodingRequest$Builder;->commonBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_0

    .line 612
    new-instance v0, Lcom/google/protobuf/SingleFieldBuilder;

    iget-object v1, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeocodingRequest$Builder;->common_:Lcom/mapabc/mapapi/core/CommonProtoBuf$Common;

    invoke-virtual {p0}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeocodingRequest$Builder;->getParentForChildren()Lcom/google/protobuf/GeneratedMessage$BuilderParent;

    move-result-object v2

    invoke-virtual {p0}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeocodingRequest$Builder;->isClean()Z

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lcom/google/protobuf/SingleFieldBuilder;-><init>(Lcom/google/protobuf/GeneratedMessage;Lcom/google/protobuf/GeneratedMessage$BuilderParent;Z)V

    iput-object v0, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeocodingRequest$Builder;->commonBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    .line 617
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeocodingRequest$Builder;->common_:Lcom/mapabc/mapapi/core/CommonProtoBuf$Common;

    .line 619
    :cond_0
    iget-object v0, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeocodingRequest$Builder;->commonBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 333
    # getter for: Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf;->internal_static_GeocodingRequest_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;
    invoke-static {}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf;->access$000()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .locals 1

    .prologue
    .line 351
    # getter for: Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeocodingRequest;->alwaysUseFieldBuilders:Z
    invoke-static {}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeocodingRequest;->access$500()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 352
    invoke-direct {p0}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeocodingRequest$Builder;->getCommonFieldBuilder()Lcom/google/protobuf/SingleFieldBuilder;

    .line 354
    :cond_0
    return-void
.end method


# virtual methods
.method public bridge synthetic build()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 328
    invoke-virtual {p0}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeocodingRequest$Builder;->build()Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeocodingRequest;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 328
    invoke-virtual {p0}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeocodingRequest$Builder;->build()Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeocodingRequest;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeocodingRequest;
    .locals 2

    .prologue
    .line 390
    invoke-virtual {p0}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeocodingRequest$Builder;->buildPartial()Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeocodingRequest;

    move-result-object v0

    .line 391
    invoke-virtual {v0}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeocodingRequest;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_0

    .line 392
    invoke-static {v0}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeocodingRequest$Builder;->newUninitializedMessageException(Lcom/google/protobuf/Message;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0

    .line 394
    :cond_0
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 328
    invoke-virtual {p0}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeocodingRequest$Builder;->buildPartial()Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeocodingRequest;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 328
    invoke-virtual {p0}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeocodingRequest$Builder;->buildPartial()Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeocodingRequest;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeocodingRequest;
    .locals 5

    .prologue
    const/4 v0, 0x1

    .line 408
    new-instance v2, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeocodingRequest;

    const/4 v1, 0x0

    invoke-direct {v2, p0, v1}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeocodingRequest;-><init>(Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeocodingRequest$Builder;Lcom/mapabc/mapapi/geocoder/c;)V

    .line 409
    iget v3, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeocodingRequest$Builder;->bitField0_:I

    .line 410
    const/4 v1, 0x0

    .line 411
    and-int/lit8 v4, v3, 0x1

    if-ne v4, v0, :cond_0

    move v1, v0

    .line 414
    :cond_0
    iget-object v0, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeocodingRequest$Builder;->commonBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_4

    .line 415
    iget-object v0, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeocodingRequest$Builder;->common_:Lcom/mapabc/mapapi/core/CommonProtoBuf$Common;

    # setter for: Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeocodingRequest;->common_:Lcom/mapabc/mapapi/core/CommonProtoBuf$Common;
    invoke-static {v2, v0}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeocodingRequest;->access$702(Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeocodingRequest;Lcom/mapabc/mapapi/core/CommonProtoBuf$Common;)Lcom/mapabc/mapapi/core/CommonProtoBuf$Common;

    .line 419
    :goto_0
    and-int/lit8 v0, v3, 0x2

    const/4 v4, 0x2

    if-ne v0, v4, :cond_1

    .line 420
    or-int/lit8 v1, v1, 0x2

    .line 422
    :cond_1
    iget-object v0, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeocodingRequest$Builder;->address_:Ljava/lang/Object;

    # setter for: Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeocodingRequest;->address_:Ljava/lang/Object;
    invoke-static {v2, v0}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeocodingRequest;->access$802(Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeocodingRequest;Ljava/lang/Object;)Ljava/lang/Object;

    .line 423
    and-int/lit8 v0, v3, 0x4

    const/4 v4, 0x4

    if-ne v0, v4, :cond_2

    .line 424
    or-int/lit8 v1, v1, 0x4

    .line 426
    :cond_2
    iget-object v0, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeocodingRequest$Builder;->poiNumber_:Ljava/lang/Object;

    # setter for: Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeocodingRequest;->poiNumber_:Ljava/lang/Object;
    invoke-static {v2, v0}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeocodingRequest;->access$902(Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeocodingRequest;Ljava/lang/Object;)Ljava/lang/Object;

    .line 427
    and-int/lit8 v0, v3, 0x8

    const/16 v3, 0x8

    if-ne v0, v3, :cond_3

    .line 428
    or-int/lit8 v1, v1, 0x8

    .line 430
    :cond_3
    iget-object v0, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeocodingRequest$Builder;->ver_:Ljava/lang/Object;

    # setter for: Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeocodingRequest;->ver_:Ljava/lang/Object;
    invoke-static {v2, v0}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeocodingRequest;->access$1002(Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeocodingRequest;Ljava/lang/Object;)Ljava/lang/Object;

    .line 431
    # setter for: Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeocodingRequest;->bitField0_:I
    invoke-static {v2, v1}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeocodingRequest;->access$1102(Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeocodingRequest;I)I

    .line 432
    invoke-virtual {p0}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeocodingRequest$Builder;->onBuilt()V

    .line 433
    return-object v2

    .line 417
    :cond_4
    iget-object v0, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeocodingRequest$Builder;->commonBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilder;->build()Lcom/google/protobuf/GeneratedMessage;

    move-result-object v0

    check-cast v0, Lcom/mapabc/mapapi/core/CommonProtoBuf$Common;

    # setter for: Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeocodingRequest;->common_:Lcom/mapabc/mapapi/core/CommonProtoBuf$Common;
    invoke-static {v2, v0}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeocodingRequest;->access$702(Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeocodingRequest;Lcom/mapabc/mapapi/core/CommonProtoBuf$Common;)Lcom/mapabc/mapapi/core/CommonProtoBuf$Common;

    goto :goto_0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 328
    invoke-virtual {p0}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeocodingRequest$Builder;->clear()Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeocodingRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessage$Builder;
    .locals 1

    .prologue
    .line 328
    invoke-virtual {p0}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeocodingRequest$Builder;->clear()Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeocodingRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 328
    invoke-virtual {p0}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeocodingRequest$Builder;->clear()Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeocodingRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 328
    invoke-virtual {p0}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeocodingRequest$Builder;->clear()Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeocodingRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeocodingRequest$Builder;
    .locals 1

    .prologue
    .line 360
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->clear()Lcom/google/protobuf/GeneratedMessage$Builder;

    .line 361
    iget-object v0, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeocodingRequest$Builder;->commonBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_0

    .line 362
    invoke-static {}, Lcom/mapabc/mapapi/core/CommonProtoBuf$Common;->getDefaultInstance()Lcom/mapabc/mapapi/core/CommonProtoBuf$Common;

    move-result-object v0

    iput-object v0, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeocodingRequest$Builder;->common_:Lcom/mapabc/mapapi/core/CommonProtoBuf$Common;

    .line 366
    :goto_0
    iget v0, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeocodingRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeocodingRequest$Builder;->bitField0_:I

    .line 367
    const-string v0, ""

    iput-object v0, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeocodingRequest$Builder;->address_:Ljava/lang/Object;

    .line 368
    iget v0, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeocodingRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeocodingRequest$Builder;->bitField0_:I

    .line 369
    const-string v0, ""

    iput-object v0, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeocodingRequest$Builder;->poiNumber_:Ljava/lang/Object;

    .line 370
    iget v0, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeocodingRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeocodingRequest$Builder;->bitField0_:I

    .line 371
    const-string v0, ""

    iput-object v0, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeocodingRequest$Builder;->ver_:Ljava/lang/Object;

    .line 372
    iget v0, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeocodingRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeocodingRequest$Builder;->bitField0_:I

    .line 373
    return-object p0

    .line 364
    :cond_0
    iget-object v0, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeocodingRequest$Builder;->commonBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilder;->clear()Lcom/google/protobuf/SingleFieldBuilder;

    goto :goto_0
.end method

.method public clearAddress()Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeocodingRequest$Builder;
    .locals 1

    .prologue
    .line 647
    iget v0, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeocodingRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeocodingRequest$Builder;->bitField0_:I

    .line 648
    invoke-static {}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeocodingRequest;->getDefaultInstance()Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeocodingRequest;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeocodingRequest;->getAddress()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeocodingRequest$Builder;->address_:Ljava/lang/Object;

    .line 649
    invoke-virtual {p0}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeocodingRequest$Builder;->onChanged()V

    .line 650
    return-object p0
.end method

.method public clearCommon()Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeocodingRequest$Builder;
    .locals 1

    .prologue
    .line 587
    iget-object v0, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeocodingRequest$Builder;->commonBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_0

    .line 588
    invoke-static {}, Lcom/mapabc/mapapi/core/CommonProtoBuf$Common;->getDefaultInstance()Lcom/mapabc/mapapi/core/CommonProtoBuf$Common;

    move-result-object v0

    iput-object v0, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeocodingRequest$Builder;->common_:Lcom/mapabc/mapapi/core/CommonProtoBuf$Common;

    .line 589
    invoke-virtual {p0}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeocodingRequest$Builder;->onChanged()V

    .line 593
    :goto_0
    iget v0, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeocodingRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeocodingRequest$Builder;->bitField0_:I

    .line 594
    return-object p0

    .line 591
    :cond_0
    iget-object v0, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeocodingRequest$Builder;->commonBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilder;->clear()Lcom/google/protobuf/SingleFieldBuilder;

    goto :goto_0
.end method

.method public clearPoiNumber()Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeocodingRequest$Builder;
    .locals 1

    .prologue
    .line 683
    iget v0, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeocodingRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeocodingRequest$Builder;->bitField0_:I

    .line 684
    invoke-static {}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeocodingRequest;->getDefaultInstance()Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeocodingRequest;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeocodingRequest;->getPoiNumber()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeocodingRequest$Builder;->poiNumber_:Ljava/lang/Object;

    .line 685
    invoke-virtual {p0}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeocodingRequest$Builder;->onChanged()V

    .line 686
    return-object p0
.end method

.method public clearVer()Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeocodingRequest$Builder;
    .locals 1

    .prologue
    .line 719
    iget v0, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeocodingRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeocodingRequest$Builder;->bitField0_:I

    .line 720
    invoke-static {}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeocodingRequest;->getDefaultInstance()Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeocodingRequest;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeocodingRequest;->getVer()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeocodingRequest$Builder;->ver_:Ljava/lang/Object;

    .line 721
    invoke-virtual {p0}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeocodingRequest$Builder;->onChanged()V

    .line 722
    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 328
    invoke-virtual {p0}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeocodingRequest$Builder;->clone()Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeocodingRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .prologue
    .line 328
    invoke-virtual {p0}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeocodingRequest$Builder;->clone()Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeocodingRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessage$Builder;
    .locals 1

    .prologue
    .line 328
    invoke-virtual {p0}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeocodingRequest$Builder;->clone()Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeocodingRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 328
    invoke-virtual {p0}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeocodingRequest$Builder;->clone()Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeocodingRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 328
    invoke-virtual {p0}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeocodingRequest$Builder;->clone()Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeocodingRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeocodingRequest$Builder;
    .locals 2

    .prologue
    .line 377
    invoke-static {}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeocodingRequest$Builder;->create()Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeocodingRequest$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeocodingRequest$Builder;->buildPartial()Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeocodingRequest;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeocodingRequest$Builder;->mergeFrom(Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeocodingRequest;)Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeocodingRequest$Builder;

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
    .line 328
    invoke-virtual {p0}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeocodingRequest$Builder;->clone()Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeocodingRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getAddress()Ljava/lang/String;
    .locals 2

    .prologue
    .line 628
    iget-object v0, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeocodingRequest$Builder;->address_:Ljava/lang/Object;

    .line 629
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_0

    .line 630
    check-cast v0, Lcom/google/protobuf/ByteString;

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 631
    iput-object v0, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeocodingRequest$Builder;->address_:Ljava/lang/Object;

    .line 634
    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Ljava/lang/String;

    goto :goto_0
.end method

.method public getCommon()Lcom/mapabc/mapapi/core/CommonProtoBuf$Common;
    .locals 1

    .prologue
    .line 540
    iget-object v0, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeocodingRequest$Builder;->commonBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_0

    .line 541
    iget-object v0, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeocodingRequest$Builder;->common_:Lcom/mapabc/mapapi/core/CommonProtoBuf$Common;

    .line 543
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeocodingRequest$Builder;->commonBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilder;->getMessage()Lcom/google/protobuf/GeneratedMessage;

    move-result-object v0

    check-cast v0, Lcom/mapabc/mapapi/core/CommonProtoBuf$Common;

    goto :goto_0
.end method

.method public getCommonBuilder()Lcom/mapabc/mapapi/core/CommonProtoBuf$Common$Builder;
    .locals 1

    .prologue
    .line 597
    iget v0, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeocodingRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeocodingRequest$Builder;->bitField0_:I

    .line 598
    invoke-virtual {p0}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeocodingRequest$Builder;->onChanged()V

    .line 599
    invoke-direct {p0}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeocodingRequest$Builder;->getCommonFieldBuilder()Lcom/google/protobuf/SingleFieldBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilder;->getBuilder()Lcom/google/protobuf/GeneratedMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/mapabc/mapapi/core/CommonProtoBuf$Common$Builder;

    return-object v0
.end method

.method public getCommonOrBuilder()Lcom/mapabc/mapapi/core/CommonProtoBuf$CommonOrBuilder;
    .locals 1

    .prologue
    .line 602
    iget-object v0, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeocodingRequest$Builder;->commonBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-eqz v0, :cond_0

    .line 603
    iget-object v0, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeocodingRequest$Builder;->commonBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilder;->getMessageOrBuilder()Lcom/google/protobuf/MessageOrBuilder;

    move-result-object v0

    check-cast v0, Lcom/mapabc/mapapi/core/CommonProtoBuf$CommonOrBuilder;

    .line 605
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeocodingRequest$Builder;->common_:Lcom/mapabc/mapapi/core/CommonProtoBuf$Common;

    goto :goto_0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 328
    invoke-virtual {p0}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeocodingRequest$Builder;->getDefaultInstanceForType()Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeocodingRequest;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 328
    invoke-virtual {p0}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeocodingRequest$Builder;->getDefaultInstanceForType()Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeocodingRequest;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeocodingRequest;
    .locals 1

    .prologue
    .line 386
    invoke-static {}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeocodingRequest;->getDefaultInstance()Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeocodingRequest;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 382
    invoke-static {}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeocodingRequest;->getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public getPoiNumber()Ljava/lang/String;
    .locals 2

    .prologue
    .line 664
    iget-object v0, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeocodingRequest$Builder;->poiNumber_:Ljava/lang/Object;

    .line 665
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_0

    .line 666
    check-cast v0, Lcom/google/protobuf/ByteString;

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 667
    iput-object v0, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeocodingRequest$Builder;->poiNumber_:Ljava/lang/Object;

    .line 670
    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Ljava/lang/String;

    goto :goto_0
.end method

.method public getVer()Ljava/lang/String;
    .locals 2

    .prologue
    .line 700
    iget-object v0, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeocodingRequest$Builder;->ver_:Ljava/lang/Object;

    .line 701
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_0

    .line 702
    check-cast v0, Lcom/google/protobuf/ByteString;

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 703
    iput-object v0, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeocodingRequest$Builder;->ver_:Ljava/lang/Object;

    .line 706
    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Ljava/lang/String;

    goto :goto_0
.end method

.method public hasAddress()Z
    .locals 2

    .prologue
    .line 625
    iget v0, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeocodingRequest$Builder;->bitField0_:I

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

.method public hasCommon()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 537
    iget v1, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeocodingRequest$Builder;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasPoiNumber()Z
    .locals 2

    .prologue
    .line 661
    iget v0, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeocodingRequest$Builder;->bitField0_:I

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

.method public hasVer()Z
    .locals 2

    .prologue
    .line 697
    iget v0, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeocodingRequest$Builder;->bitField0_:I

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
    .line 338
    # getter for: Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf;->internal_static_GeocodingRequest_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    invoke-static {}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf;->access$100()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 464
    invoke-virtual {p0}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeocodingRequest$Builder;->hasCommon()Z

    move-result v1

    if-nez v1, :cond_1

    .line 476
    :cond_0
    :goto_0
    return v0

    .line 468
    :cond_1
    invoke-virtual {p0}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeocodingRequest$Builder;->hasAddress()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 472
    invoke-virtual {p0}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeocodingRequest$Builder;->getCommon()Lcom/mapabc/mapapi/core/CommonProtoBuf$Common;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mapabc/mapapi/core/CommonProtoBuf$Common;->isInitialized()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 476
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public mergeCommon(Lcom/mapabc/mapapi/core/CommonProtoBuf$Common;)Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeocodingRequest$Builder;
    .locals 2

    .prologue
    .line 571
    iget-object v0, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeocodingRequest$Builder;->commonBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_1

    .line 572
    iget v0, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeocodingRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeocodingRequest$Builder;->common_:Lcom/mapabc/mapapi/core/CommonProtoBuf$Common;

    invoke-static {}, Lcom/mapabc/mapapi/core/CommonProtoBuf$Common;->getDefaultInstance()Lcom/mapabc/mapapi/core/CommonProtoBuf$Common;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 574
    iget-object v0, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeocodingRequest$Builder;->common_:Lcom/mapabc/mapapi/core/CommonProtoBuf$Common;

    invoke-static {v0}, Lcom/mapabc/mapapi/core/CommonProtoBuf$Common;->newBuilder(Lcom/mapabc/mapapi/core/CommonProtoBuf$Common;)Lcom/mapabc/mapapi/core/CommonProtoBuf$Common$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/mapabc/mapapi/core/CommonProtoBuf$Common$Builder;->mergeFrom(Lcom/mapabc/mapapi/core/CommonProtoBuf$Common;)Lcom/mapabc/mapapi/core/CommonProtoBuf$Common$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mapabc/mapapi/core/CommonProtoBuf$Common$Builder;->buildPartial()Lcom/mapabc/mapapi/core/CommonProtoBuf$Common;

    move-result-object v0

    iput-object v0, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeocodingRequest$Builder;->common_:Lcom/mapabc/mapapi/core/CommonProtoBuf$Common;

    .line 579
    :goto_0
    invoke-virtual {p0}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeocodingRequest$Builder;->onChanged()V

    .line 583
    :goto_1
    iget v0, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeocodingRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeocodingRequest$Builder;->bitField0_:I

    .line 584
    return-object p0

    .line 577
    :cond_0
    iput-object p1, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeocodingRequest$Builder;->common_:Lcom/mapabc/mapapi/core/CommonProtoBuf$Common;

    goto :goto_0

    .line 581
    :cond_1
    iget-object v0, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeocodingRequest$Builder;->commonBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/SingleFieldBuilder;->mergeFrom(Lcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/SingleFieldBuilder;

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
    .line 328
    invoke-virtual {p0, p1, p2}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeocodingRequest$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeocodingRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 328
    invoke-virtual {p0, p1}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeocodingRequest$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeocodingRequest$Builder;

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
    .line 328
    invoke-virtual {p0, p1, p2}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeocodingRequest$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeocodingRequest$Builder;

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
    .line 328
    invoke-virtual {p0, p1, p2}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeocodingRequest$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeocodingRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 328
    invoke-virtual {p0, p1}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeocodingRequest$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeocodingRequest$Builder;

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
    .line 328
    invoke-virtual {p0, p1, p2}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeocodingRequest$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeocodingRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeocodingRequest$Builder;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 483
    invoke-virtual {p0}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeocodingRequest$Builder;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v0

    invoke-static {v0}, Lcom/google/protobuf/UnknownFieldSet;->newBuilder(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/UnknownFieldSet$Builder;

    move-result-object v0

    .line 487
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v1

    .line 488
    sparse-switch v1, :sswitch_data_0

    .line 494
    invoke-virtual {p0, p1, v0, p2, v1}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeocodingRequest$Builder;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/UnknownFieldSet$Builder;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 496
    invoke-virtual {v0}, Lcom/google/protobuf/UnknownFieldSet$Builder;->build()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeocodingRequest$Builder;->setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessage$Builder;

    .line 497
    invoke-virtual {p0}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeocodingRequest$Builder;->onChanged()V

    .line 498
    :goto_1
    return-object p0

    .line 490
    :sswitch_0
    invoke-virtual {v0}, Lcom/google/protobuf/UnknownFieldSet$Builder;->build()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeocodingRequest$Builder;->setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessage$Builder;

    .line 491
    invoke-virtual {p0}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeocodingRequest$Builder;->onChanged()V

    goto :goto_1

    .line 503
    :sswitch_1
    invoke-static {}, Lcom/mapabc/mapapi/core/CommonProtoBuf$Common;->newBuilder()Lcom/mapabc/mapapi/core/CommonProtoBuf$Common$Builder;

    move-result-object v1

    .line 504
    invoke-virtual {p0}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeocodingRequest$Builder;->hasCommon()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 505
    invoke-virtual {p0}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeocodingRequest$Builder;->getCommon()Lcom/mapabc/mapapi/core/CommonProtoBuf$Common;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/mapabc/mapapi/core/CommonProtoBuf$Common$Builder;->mergeFrom(Lcom/mapabc/mapapi/core/CommonProtoBuf$Common;)Lcom/mapabc/mapapi/core/CommonProtoBuf$Common$Builder;

    .line 507
    :cond_1
    invoke-virtual {p1, v1, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 508
    invoke-virtual {v1}, Lcom/mapabc/mapapi/core/CommonProtoBuf$Common$Builder;->buildPartial()Lcom/mapabc/mapapi/core/CommonProtoBuf$Common;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeocodingRequest$Builder;->setCommon(Lcom/mapabc/mapapi/core/CommonProtoBuf$Common;)Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeocodingRequest$Builder;

    goto :goto_0

    .line 512
    :sswitch_2
    iget v1, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeocodingRequest$Builder;->bitField0_:I

    or-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeocodingRequest$Builder;->bitField0_:I

    .line 513
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    iput-object v1, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeocodingRequest$Builder;->address_:Ljava/lang/Object;

    goto :goto_0

    .line 517
    :sswitch_3
    iget v1, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeocodingRequest$Builder;->bitField0_:I

    or-int/lit8 v1, v1, 0x4

    iput v1, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeocodingRequest$Builder;->bitField0_:I

    .line 518
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    iput-object v1, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeocodingRequest$Builder;->poiNumber_:Ljava/lang/Object;

    goto :goto_0

    .line 522
    :sswitch_4
    iget v1, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeocodingRequest$Builder;->bitField0_:I

    or-int/lit8 v1, v1, 0x8

    iput v1, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeocodingRequest$Builder;->bitField0_:I

    .line 523
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    iput-object v1, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeocodingRequest$Builder;->ver_:Ljava/lang/Object;

    goto :goto_0

    .line 488
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
        0x1a -> :sswitch_3
        0x22 -> :sswitch_4
    .end sparse-switch
.end method

.method public mergeFrom(Lcom/google/protobuf/Message;)Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeocodingRequest$Builder;
    .locals 1

    .prologue
    .line 437
    instance-of v0, p1, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeocodingRequest;

    if-eqz v0, :cond_0

    .line 438
    check-cast p1, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeocodingRequest;

    invoke-virtual {p0, p1}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeocodingRequest$Builder;->mergeFrom(Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeocodingRequest;)Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeocodingRequest$Builder;

    move-result-object p0

    .line 441
    :goto_0
    return-object p0

    .line 440
    :cond_0
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessage$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;

    goto :goto_0
.end method

.method public mergeFrom(Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeocodingRequest;)Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeocodingRequest$Builder;
    .locals 1

    .prologue
    .line 446
    invoke-static {}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeocodingRequest;->getDefaultInstance()Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeocodingRequest;

    move-result-object v0

    if-ne p1, v0, :cond_0

    .line 460
    :goto_0
    return-object p0

    .line 447
    :cond_0
    invoke-virtual {p1}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeocodingRequest;->hasCommon()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 448
    invoke-virtual {p1}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeocodingRequest;->getCommon()Lcom/mapabc/mapapi/core/CommonProtoBuf$Common;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeocodingRequest$Builder;->mergeCommon(Lcom/mapabc/mapapi/core/CommonProtoBuf$Common;)Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeocodingRequest$Builder;

    .line 450
    :cond_1
    invoke-virtual {p1}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeocodingRequest;->hasAddress()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 451
    invoke-virtual {p1}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeocodingRequest;->getAddress()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeocodingRequest$Builder;->setAddress(Ljava/lang/String;)Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeocodingRequest$Builder;

    .line 453
    :cond_2
    invoke-virtual {p1}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeocodingRequest;->hasPoiNumber()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 454
    invoke-virtual {p1}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeocodingRequest;->getPoiNumber()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeocodingRequest$Builder;->setPoiNumber(Ljava/lang/String;)Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeocodingRequest$Builder;

    .line 456
    :cond_3
    invoke-virtual {p1}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeocodingRequest;->hasVer()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 457
    invoke-virtual {p1}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeocodingRequest;->getVer()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeocodingRequest$Builder;->setVer(Ljava/lang/String;)Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeocodingRequest$Builder;

    .line 459
    :cond_4
    invoke-virtual {p1}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeocodingRequest;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeocodingRequest$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessage$Builder;

    goto :goto_0
.end method

.method public setAddress(Ljava/lang/String;)Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeocodingRequest$Builder;
    .locals 1

    .prologue
    .line 638
    if-nez p1, :cond_0

    .line 639
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 641
    :cond_0
    iget v0, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeocodingRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeocodingRequest$Builder;->bitField0_:I

    .line 642
    iput-object p1, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeocodingRequest$Builder;->address_:Ljava/lang/Object;

    .line 643
    invoke-virtual {p0}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeocodingRequest$Builder;->onChanged()V

    .line 644
    return-object p0
.end method

.method setAddress(Lcom/google/protobuf/ByteString;)V
    .locals 1

    .prologue
    .line 653
    iget v0, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeocodingRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeocodingRequest$Builder;->bitField0_:I

    .line 654
    iput-object p1, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeocodingRequest$Builder;->address_:Ljava/lang/Object;

    .line 655
    invoke-virtual {p0}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeocodingRequest$Builder;->onChanged()V

    .line 656
    return-void
.end method

.method public setCommon(Lcom/mapabc/mapapi/core/CommonProtoBuf$Common$Builder;)Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeocodingRequest$Builder;
    .locals 2

    .prologue
    .line 561
    iget-object v0, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeocodingRequest$Builder;->commonBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_0

    .line 562
    invoke-virtual {p1}, Lcom/mapabc/mapapi/core/CommonProtoBuf$Common$Builder;->build()Lcom/mapabc/mapapi/core/CommonProtoBuf$Common;

    move-result-object v0

    iput-object v0, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeocodingRequest$Builder;->common_:Lcom/mapabc/mapapi/core/CommonProtoBuf$Common;

    .line 563
    invoke-virtual {p0}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeocodingRequest$Builder;->onChanged()V

    .line 567
    :goto_0
    iget v0, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeocodingRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeocodingRequest$Builder;->bitField0_:I

    .line 568
    return-object p0

    .line 565
    :cond_0
    iget-object v0, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeocodingRequest$Builder;->commonBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    invoke-virtual {p1}, Lcom/mapabc/mapapi/core/CommonProtoBuf$Common$Builder;->build()Lcom/mapabc/mapapi/core/CommonProtoBuf$Common;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/protobuf/SingleFieldBuilder;->setMessage(Lcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/SingleFieldBuilder;

    goto :goto_0
.end method

.method public setCommon(Lcom/mapabc/mapapi/core/CommonProtoBuf$Common;)Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeocodingRequest$Builder;
    .locals 1

    .prologue
    .line 547
    iget-object v0, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeocodingRequest$Builder;->commonBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_1

    .line 548
    if-nez p1, :cond_0

    .line 549
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 551
    :cond_0
    iput-object p1, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeocodingRequest$Builder;->common_:Lcom/mapabc/mapapi/core/CommonProtoBuf$Common;

    .line 552
    invoke-virtual {p0}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeocodingRequest$Builder;->onChanged()V

    .line 556
    :goto_0
    iget v0, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeocodingRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeocodingRequest$Builder;->bitField0_:I

    .line 557
    return-object p0

    .line 554
    :cond_1
    iget-object v0, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeocodingRequest$Builder;->commonBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/SingleFieldBuilder;->setMessage(Lcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/SingleFieldBuilder;

    goto :goto_0
.end method

.method public setPoiNumber(Ljava/lang/String;)Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeocodingRequest$Builder;
    .locals 1

    .prologue
    .line 674
    if-nez p1, :cond_0

    .line 675
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 677
    :cond_0
    iget v0, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeocodingRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeocodingRequest$Builder;->bitField0_:I

    .line 678
    iput-object p1, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeocodingRequest$Builder;->poiNumber_:Ljava/lang/Object;

    .line 679
    invoke-virtual {p0}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeocodingRequest$Builder;->onChanged()V

    .line 680
    return-object p0
.end method

.method setPoiNumber(Lcom/google/protobuf/ByteString;)V
    .locals 1

    .prologue
    .line 689
    iget v0, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeocodingRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeocodingRequest$Builder;->bitField0_:I

    .line 690
    iput-object p1, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeocodingRequest$Builder;->poiNumber_:Ljava/lang/Object;

    .line 691
    invoke-virtual {p0}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeocodingRequest$Builder;->onChanged()V

    .line 692
    return-void
.end method

.method public setVer(Ljava/lang/String;)Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeocodingRequest$Builder;
    .locals 1

    .prologue
    .line 710
    if-nez p1, :cond_0

    .line 711
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 713
    :cond_0
    iget v0, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeocodingRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeocodingRequest$Builder;->bitField0_:I

    .line 714
    iput-object p1, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeocodingRequest$Builder;->ver_:Ljava/lang/Object;

    .line 715
    invoke-virtual {p0}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeocodingRequest$Builder;->onChanged()V

    .line 716
    return-object p0
.end method

.method setVer(Lcom/google/protobuf/ByteString;)V
    .locals 1

    .prologue
    .line 725
    iget v0, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeocodingRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeocodingRequest$Builder;->bitField0_:I

    .line 726
    iput-object p1, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeocodingRequest$Builder;->ver_:Ljava/lang/Object;

    .line 727
    invoke-virtual {p0}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeocodingRequest$Builder;->onChanged()V

    .line 728
    return-void
.end method
