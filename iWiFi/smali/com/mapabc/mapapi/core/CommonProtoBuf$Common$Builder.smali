.class public final Lcom/mapabc/mapapi/core/CommonProtoBuf$Common$Builder;
.super Lcom/google/protobuf/GeneratedMessage$Builder;
.source "CommonProtoBuf.java"

# interfaces
.implements Lcom/mapabc/mapapi/core/CommonProtoBuf$CommonOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mapabc/mapapi/core/CommonProtoBuf$Common;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessage$Builder",
        "<",
        "Lcom/mapabc/mapapi/core/CommonProtoBuf$Common$Builder;",
        ">;",
        "Lcom/mapabc/mapapi/core/CommonProtoBuf$CommonOrBuilder;"
    }
.end annotation


# instance fields
.field private aK_:Ljava/lang/Object;

.field private bitField0_:I

.field private config_:Ljava/lang/Object;

.field private enc_:Ljava/lang/Object;

.field private resType_:Ljava/lang/Object;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 356
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;-><init>()V

    .line 530
    const-string v0, ""

    iput-object v0, p0, Lcom/mapabc/mapapi/core/CommonProtoBuf$Common$Builder;->config_:Ljava/lang/Object;

    .line 566
    const-string v0, ""

    iput-object v0, p0, Lcom/mapabc/mapapi/core/CommonProtoBuf$Common$Builder;->aK_:Ljava/lang/Object;

    .line 602
    const-string v0, ""

    iput-object v0, p0, Lcom/mapabc/mapapi/core/CommonProtoBuf$Common$Builder;->resType_:Ljava/lang/Object;

    .line 638
    const-string v0, ""

    iput-object v0, p0, Lcom/mapabc/mapapi/core/CommonProtoBuf$Common$Builder;->enc_:Ljava/lang/Object;

    .line 357
    invoke-direct {p0}, Lcom/mapabc/mapapi/core/CommonProtoBuf$Common$Builder;->maybeForceBuilderInitialization()V

    .line 358
    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V
    .locals 1

    .prologue
    .line 361
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessage$Builder;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V

    .line 530
    const-string v0, ""

    iput-object v0, p0, Lcom/mapabc/mapapi/core/CommonProtoBuf$Common$Builder;->config_:Ljava/lang/Object;

    .line 566
    const-string v0, ""

    iput-object v0, p0, Lcom/mapabc/mapapi/core/CommonProtoBuf$Common$Builder;->aK_:Ljava/lang/Object;

    .line 602
    const-string v0, ""

    iput-object v0, p0, Lcom/mapabc/mapapi/core/CommonProtoBuf$Common$Builder;->resType_:Ljava/lang/Object;

    .line 638
    const-string v0, ""

    iput-object v0, p0, Lcom/mapabc/mapapi/core/CommonProtoBuf$Common$Builder;->enc_:Ljava/lang/Object;

    .line 362
    invoke-direct {p0}, Lcom/mapabc/mapapi/core/CommonProtoBuf$Common$Builder;->maybeForceBuilderInitialization()V

    .line 363
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;Lcom/mapabc/mapapi/core/b;)V
    .locals 0

    .prologue
    .line 342
    invoke-direct {p0, p1}, Lcom/mapabc/mapapi/core/CommonProtoBuf$Common$Builder;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V

    return-void
.end method

.method static synthetic access$200(Lcom/mapabc/mapapi/core/CommonProtoBuf$Common$Builder;)Lcom/mapabc/mapapi/core/CommonProtoBuf$Common;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 342
    invoke-direct {p0}, Lcom/mapabc/mapapi/core/CommonProtoBuf$Common$Builder;->buildParsed()Lcom/mapabc/mapapi/core/CommonProtoBuf$Common;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300()Lcom/mapabc/mapapi/core/CommonProtoBuf$Common$Builder;
    .locals 1

    .prologue
    .line 342
    invoke-static {}, Lcom/mapabc/mapapi/core/CommonProtoBuf$Common$Builder;->create()Lcom/mapabc/mapapi/core/CommonProtoBuf$Common$Builder;

    move-result-object v0

    return-object v0
.end method

.method private buildParsed()Lcom/mapabc/mapapi/core/CommonProtoBuf$Common;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 408
    invoke-virtual {p0}, Lcom/mapabc/mapapi/core/CommonProtoBuf$Common$Builder;->buildPartial()Lcom/mapabc/mapapi/core/CommonProtoBuf$Common;

    move-result-object v0

    .line 409
    invoke-virtual {v0}, Lcom/mapabc/mapapi/core/CommonProtoBuf$Common;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_0

    .line 410
    invoke-static {v0}, Lcom/mapabc/mapapi/core/CommonProtoBuf$Common$Builder;->newUninitializedMessageException(Lcom/google/protobuf/Message;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/UninitializedMessageException;->asInvalidProtocolBufferException()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0

    .line 413
    :cond_0
    return-object v0
.end method

.method private static create()Lcom/mapabc/mapapi/core/CommonProtoBuf$Common$Builder;
    .locals 1

    .prologue
    .line 369
    new-instance v0, Lcom/mapabc/mapapi/core/CommonProtoBuf$Common$Builder;

    invoke-direct {v0}, Lcom/mapabc/mapapi/core/CommonProtoBuf$Common$Builder;-><init>()V

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 347
    # getter for: Lcom/mapabc/mapapi/core/CommonProtoBuf;->internal_static_Common_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;
    invoke-static {}, Lcom/mapabc/mapapi/core/CommonProtoBuf;->access$000()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .locals 1

    .prologue
    .line 365
    # getter for: Lcom/mapabc/mapapi/core/CommonProtoBuf$Common;->alwaysUseFieldBuilders:Z
    invoke-static {}, Lcom/mapabc/mapapi/core/CommonProtoBuf$Common;->access$500()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 367
    :cond_0
    return-void
.end method


# virtual methods
.method public bridge synthetic build()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 342
    invoke-virtual {p0}, Lcom/mapabc/mapapi/core/CommonProtoBuf$Common$Builder;->build()Lcom/mapabc/mapapi/core/CommonProtoBuf$Common;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 342
    invoke-virtual {p0}, Lcom/mapabc/mapapi/core/CommonProtoBuf$Common$Builder;->build()Lcom/mapabc/mapapi/core/CommonProtoBuf$Common;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/mapabc/mapapi/core/CommonProtoBuf$Common;
    .locals 2

    .prologue
    .line 399
    invoke-virtual {p0}, Lcom/mapabc/mapapi/core/CommonProtoBuf$Common$Builder;->buildPartial()Lcom/mapabc/mapapi/core/CommonProtoBuf$Common;

    move-result-object v0

    .line 400
    invoke-virtual {v0}, Lcom/mapabc/mapapi/core/CommonProtoBuf$Common;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_0

    .line 401
    invoke-static {v0}, Lcom/mapabc/mapapi/core/CommonProtoBuf$Common$Builder;->newUninitializedMessageException(Lcom/google/protobuf/Message;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0

    .line 403
    :cond_0
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 342
    invoke-virtual {p0}, Lcom/mapabc/mapapi/core/CommonProtoBuf$Common$Builder;->buildPartial()Lcom/mapabc/mapapi/core/CommonProtoBuf$Common;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 342
    invoke-virtual {p0}, Lcom/mapabc/mapapi/core/CommonProtoBuf$Common$Builder;->buildPartial()Lcom/mapabc/mapapi/core/CommonProtoBuf$Common;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/mapabc/mapapi/core/CommonProtoBuf$Common;
    .locals 5

    .prologue
    const/4 v0, 0x1

    .line 417
    new-instance v2, Lcom/mapabc/mapapi/core/CommonProtoBuf$Common;

    const/4 v1, 0x0

    invoke-direct {v2, p0, v1}, Lcom/mapabc/mapapi/core/CommonProtoBuf$Common;-><init>(Lcom/mapabc/mapapi/core/CommonProtoBuf$Common$Builder;Lcom/mapabc/mapapi/core/b;)V

    .line 418
    iget v3, p0, Lcom/mapabc/mapapi/core/CommonProtoBuf$Common$Builder;->bitField0_:I

    .line 419
    const/4 v1, 0x0

    .line 420
    and-int/lit8 v4, v3, 0x1

    if-ne v4, v0, :cond_3

    .line 423
    :goto_0
    iget-object v1, p0, Lcom/mapabc/mapapi/core/CommonProtoBuf$Common$Builder;->config_:Ljava/lang/Object;

    # setter for: Lcom/mapabc/mapapi/core/CommonProtoBuf$Common;->config_:Ljava/lang/Object;
    invoke-static {v2, v1}, Lcom/mapabc/mapapi/core/CommonProtoBuf$Common;->access$702(Lcom/mapabc/mapapi/core/CommonProtoBuf$Common;Ljava/lang/Object;)Ljava/lang/Object;

    .line 424
    and-int/lit8 v1, v3, 0x2

    const/4 v4, 0x2

    if-ne v1, v4, :cond_0

    .line 425
    or-int/lit8 v0, v0, 0x2

    .line 427
    :cond_0
    iget-object v1, p0, Lcom/mapabc/mapapi/core/CommonProtoBuf$Common$Builder;->aK_:Ljava/lang/Object;

    # setter for: Lcom/mapabc/mapapi/core/CommonProtoBuf$Common;->aK_:Ljava/lang/Object;
    invoke-static {v2, v1}, Lcom/mapabc/mapapi/core/CommonProtoBuf$Common;->access$802(Lcom/mapabc/mapapi/core/CommonProtoBuf$Common;Ljava/lang/Object;)Ljava/lang/Object;

    .line 428
    and-int/lit8 v1, v3, 0x4

    const/4 v4, 0x4

    if-ne v1, v4, :cond_1

    .line 429
    or-int/lit8 v0, v0, 0x4

    .line 431
    :cond_1
    iget-object v1, p0, Lcom/mapabc/mapapi/core/CommonProtoBuf$Common$Builder;->resType_:Ljava/lang/Object;

    # setter for: Lcom/mapabc/mapapi/core/CommonProtoBuf$Common;->resType_:Ljava/lang/Object;
    invoke-static {v2, v1}, Lcom/mapabc/mapapi/core/CommonProtoBuf$Common;->access$902(Lcom/mapabc/mapapi/core/CommonProtoBuf$Common;Ljava/lang/Object;)Ljava/lang/Object;

    .line 432
    and-int/lit8 v1, v3, 0x8

    const/16 v3, 0x8

    if-ne v1, v3, :cond_2

    .line 433
    or-int/lit8 v0, v0, 0x8

    .line 435
    :cond_2
    iget-object v1, p0, Lcom/mapabc/mapapi/core/CommonProtoBuf$Common$Builder;->enc_:Ljava/lang/Object;

    # setter for: Lcom/mapabc/mapapi/core/CommonProtoBuf$Common;->enc_:Ljava/lang/Object;
    invoke-static {v2, v1}, Lcom/mapabc/mapapi/core/CommonProtoBuf$Common;->access$1002(Lcom/mapabc/mapapi/core/CommonProtoBuf$Common;Ljava/lang/Object;)Ljava/lang/Object;

    .line 436
    # setter for: Lcom/mapabc/mapapi/core/CommonProtoBuf$Common;->bitField0_:I
    invoke-static {v2, v0}, Lcom/mapabc/mapapi/core/CommonProtoBuf$Common;->access$1102(Lcom/mapabc/mapapi/core/CommonProtoBuf$Common;I)I

    .line 437
    invoke-virtual {p0}, Lcom/mapabc/mapapi/core/CommonProtoBuf$Common$Builder;->onBuilt()V

    .line 438
    return-object v2

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 342
    invoke-virtual {p0}, Lcom/mapabc/mapapi/core/CommonProtoBuf$Common$Builder;->clear()Lcom/mapabc/mapapi/core/CommonProtoBuf$Common$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessage$Builder;
    .locals 1

    .prologue
    .line 342
    invoke-virtual {p0}, Lcom/mapabc/mapapi/core/CommonProtoBuf$Common$Builder;->clear()Lcom/mapabc/mapapi/core/CommonProtoBuf$Common$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 342
    invoke-virtual {p0}, Lcom/mapabc/mapapi/core/CommonProtoBuf$Common$Builder;->clear()Lcom/mapabc/mapapi/core/CommonProtoBuf$Common$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 342
    invoke-virtual {p0}, Lcom/mapabc/mapapi/core/CommonProtoBuf$Common$Builder;->clear()Lcom/mapabc/mapapi/core/CommonProtoBuf$Common$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/mapabc/mapapi/core/CommonProtoBuf$Common$Builder;
    .locals 1

    .prologue
    .line 373
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->clear()Lcom/google/protobuf/GeneratedMessage$Builder;

    .line 374
    const-string v0, ""

    iput-object v0, p0, Lcom/mapabc/mapapi/core/CommonProtoBuf$Common$Builder;->config_:Ljava/lang/Object;

    .line 375
    iget v0, p0, Lcom/mapabc/mapapi/core/CommonProtoBuf$Common$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/mapabc/mapapi/core/CommonProtoBuf$Common$Builder;->bitField0_:I

    .line 376
    const-string v0, ""

    iput-object v0, p0, Lcom/mapabc/mapapi/core/CommonProtoBuf$Common$Builder;->aK_:Ljava/lang/Object;

    .line 377
    iget v0, p0, Lcom/mapabc/mapapi/core/CommonProtoBuf$Common$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/mapabc/mapapi/core/CommonProtoBuf$Common$Builder;->bitField0_:I

    .line 378
    const-string v0, ""

    iput-object v0, p0, Lcom/mapabc/mapapi/core/CommonProtoBuf$Common$Builder;->resType_:Ljava/lang/Object;

    .line 379
    iget v0, p0, Lcom/mapabc/mapapi/core/CommonProtoBuf$Common$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/mapabc/mapapi/core/CommonProtoBuf$Common$Builder;->bitField0_:I

    .line 380
    const-string v0, ""

    iput-object v0, p0, Lcom/mapabc/mapapi/core/CommonProtoBuf$Common$Builder;->enc_:Ljava/lang/Object;

    .line 381
    iget v0, p0, Lcom/mapabc/mapapi/core/CommonProtoBuf$Common$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/mapabc/mapapi/core/CommonProtoBuf$Common$Builder;->bitField0_:I

    .line 382
    return-object p0
.end method

.method public clearAK()Lcom/mapabc/mapapi/core/CommonProtoBuf$Common$Builder;
    .locals 1

    .prologue
    .line 590
    iget v0, p0, Lcom/mapabc/mapapi/core/CommonProtoBuf$Common$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/mapabc/mapapi/core/CommonProtoBuf$Common$Builder;->bitField0_:I

    .line 591
    invoke-static {}, Lcom/mapabc/mapapi/core/CommonProtoBuf$Common;->getDefaultInstance()Lcom/mapabc/mapapi/core/CommonProtoBuf$Common;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mapabc/mapapi/core/CommonProtoBuf$Common;->getAK()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mapabc/mapapi/core/CommonProtoBuf$Common$Builder;->aK_:Ljava/lang/Object;

    .line 592
    invoke-virtual {p0}, Lcom/mapabc/mapapi/core/CommonProtoBuf$Common$Builder;->onChanged()V

    .line 593
    return-object p0
.end method

.method public clearConfig()Lcom/mapabc/mapapi/core/CommonProtoBuf$Common$Builder;
    .locals 1

    .prologue
    .line 554
    iget v0, p0, Lcom/mapabc/mapapi/core/CommonProtoBuf$Common$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/mapabc/mapapi/core/CommonProtoBuf$Common$Builder;->bitField0_:I

    .line 555
    invoke-static {}, Lcom/mapabc/mapapi/core/CommonProtoBuf$Common;->getDefaultInstance()Lcom/mapabc/mapapi/core/CommonProtoBuf$Common;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mapabc/mapapi/core/CommonProtoBuf$Common;->getConfig()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mapabc/mapapi/core/CommonProtoBuf$Common$Builder;->config_:Ljava/lang/Object;

    .line 556
    invoke-virtual {p0}, Lcom/mapabc/mapapi/core/CommonProtoBuf$Common$Builder;->onChanged()V

    .line 557
    return-object p0
.end method

.method public clearEnc()Lcom/mapabc/mapapi/core/CommonProtoBuf$Common$Builder;
    .locals 1

    .prologue
    .line 662
    iget v0, p0, Lcom/mapabc/mapapi/core/CommonProtoBuf$Common$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/mapabc/mapapi/core/CommonProtoBuf$Common$Builder;->bitField0_:I

    .line 663
    invoke-static {}, Lcom/mapabc/mapapi/core/CommonProtoBuf$Common;->getDefaultInstance()Lcom/mapabc/mapapi/core/CommonProtoBuf$Common;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mapabc/mapapi/core/CommonProtoBuf$Common;->getEnc()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mapabc/mapapi/core/CommonProtoBuf$Common$Builder;->enc_:Ljava/lang/Object;

    .line 664
    invoke-virtual {p0}, Lcom/mapabc/mapapi/core/CommonProtoBuf$Common$Builder;->onChanged()V

    .line 665
    return-object p0
.end method

.method public clearResType()Lcom/mapabc/mapapi/core/CommonProtoBuf$Common$Builder;
    .locals 1

    .prologue
    .line 626
    iget v0, p0, Lcom/mapabc/mapapi/core/CommonProtoBuf$Common$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/mapabc/mapapi/core/CommonProtoBuf$Common$Builder;->bitField0_:I

    .line 627
    invoke-static {}, Lcom/mapabc/mapapi/core/CommonProtoBuf$Common;->getDefaultInstance()Lcom/mapabc/mapapi/core/CommonProtoBuf$Common;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mapabc/mapapi/core/CommonProtoBuf$Common;->getResType()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mapabc/mapapi/core/CommonProtoBuf$Common$Builder;->resType_:Ljava/lang/Object;

    .line 628
    invoke-virtual {p0}, Lcom/mapabc/mapapi/core/CommonProtoBuf$Common$Builder;->onChanged()V

    .line 629
    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 342
    invoke-virtual {p0}, Lcom/mapabc/mapapi/core/CommonProtoBuf$Common$Builder;->clone()Lcom/mapabc/mapapi/core/CommonProtoBuf$Common$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .prologue
    .line 342
    invoke-virtual {p0}, Lcom/mapabc/mapapi/core/CommonProtoBuf$Common$Builder;->clone()Lcom/mapabc/mapapi/core/CommonProtoBuf$Common$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessage$Builder;
    .locals 1

    .prologue
    .line 342
    invoke-virtual {p0}, Lcom/mapabc/mapapi/core/CommonProtoBuf$Common$Builder;->clone()Lcom/mapabc/mapapi/core/CommonProtoBuf$Common$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 342
    invoke-virtual {p0}, Lcom/mapabc/mapapi/core/CommonProtoBuf$Common$Builder;->clone()Lcom/mapabc/mapapi/core/CommonProtoBuf$Common$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 342
    invoke-virtual {p0}, Lcom/mapabc/mapapi/core/CommonProtoBuf$Common$Builder;->clone()Lcom/mapabc/mapapi/core/CommonProtoBuf$Common$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/mapabc/mapapi/core/CommonProtoBuf$Common$Builder;
    .locals 2

    .prologue
    .line 386
    invoke-static {}, Lcom/mapabc/mapapi/core/CommonProtoBuf$Common$Builder;->create()Lcom/mapabc/mapapi/core/CommonProtoBuf$Common$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/mapabc/mapapi/core/CommonProtoBuf$Common$Builder;->buildPartial()Lcom/mapabc/mapapi/core/CommonProtoBuf$Common;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mapabc/mapapi/core/CommonProtoBuf$Common$Builder;->mergeFrom(Lcom/mapabc/mapapi/core/CommonProtoBuf$Common;)Lcom/mapabc/mapapi/core/CommonProtoBuf$Common$Builder;

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
    .line 342
    invoke-virtual {p0}, Lcom/mapabc/mapapi/core/CommonProtoBuf$Common$Builder;->clone()Lcom/mapabc/mapapi/core/CommonProtoBuf$Common$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getAK()Ljava/lang/String;
    .locals 2

    .prologue
    .line 571
    iget-object v0, p0, Lcom/mapabc/mapapi/core/CommonProtoBuf$Common$Builder;->aK_:Ljava/lang/Object;

    .line 572
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_0

    .line 573
    check-cast v0, Lcom/google/protobuf/ByteString;

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 574
    iput-object v0, p0, Lcom/mapabc/mapapi/core/CommonProtoBuf$Common$Builder;->aK_:Ljava/lang/Object;

    .line 577
    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Ljava/lang/String;

    goto :goto_0
.end method

.method public getConfig()Ljava/lang/String;
    .locals 2

    .prologue
    .line 535
    iget-object v0, p0, Lcom/mapabc/mapapi/core/CommonProtoBuf$Common$Builder;->config_:Ljava/lang/Object;

    .line 536
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_0

    .line 537
    check-cast v0, Lcom/google/protobuf/ByteString;

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 538
    iput-object v0, p0, Lcom/mapabc/mapapi/core/CommonProtoBuf$Common$Builder;->config_:Ljava/lang/Object;

    .line 541
    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Ljava/lang/String;

    goto :goto_0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 342
    invoke-virtual {p0}, Lcom/mapabc/mapapi/core/CommonProtoBuf$Common$Builder;->getDefaultInstanceForType()Lcom/mapabc/mapapi/core/CommonProtoBuf$Common;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 342
    invoke-virtual {p0}, Lcom/mapabc/mapapi/core/CommonProtoBuf$Common$Builder;->getDefaultInstanceForType()Lcom/mapabc/mapapi/core/CommonProtoBuf$Common;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/mapabc/mapapi/core/CommonProtoBuf$Common;
    .locals 1

    .prologue
    .line 395
    invoke-static {}, Lcom/mapabc/mapapi/core/CommonProtoBuf$Common;->getDefaultInstance()Lcom/mapabc/mapapi/core/CommonProtoBuf$Common;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 391
    invoke-static {}, Lcom/mapabc/mapapi/core/CommonProtoBuf$Common;->getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public getEnc()Ljava/lang/String;
    .locals 2

    .prologue
    .line 643
    iget-object v0, p0, Lcom/mapabc/mapapi/core/CommonProtoBuf$Common$Builder;->enc_:Ljava/lang/Object;

    .line 644
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_0

    .line 645
    check-cast v0, Lcom/google/protobuf/ByteString;

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 646
    iput-object v0, p0, Lcom/mapabc/mapapi/core/CommonProtoBuf$Common$Builder;->enc_:Ljava/lang/Object;

    .line 649
    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Ljava/lang/String;

    goto :goto_0
.end method

.method public getResType()Ljava/lang/String;
    .locals 2

    .prologue
    .line 607
    iget-object v0, p0, Lcom/mapabc/mapapi/core/CommonProtoBuf$Common$Builder;->resType_:Ljava/lang/Object;

    .line 608
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_0

    .line 609
    check-cast v0, Lcom/google/protobuf/ByteString;

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 610
    iput-object v0, p0, Lcom/mapabc/mapapi/core/CommonProtoBuf$Common$Builder;->resType_:Ljava/lang/Object;

    .line 613
    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Ljava/lang/String;

    goto :goto_0
.end method

.method public hasAK()Z
    .locals 2

    .prologue
    .line 568
    iget v0, p0, Lcom/mapabc/mapapi/core/CommonProtoBuf$Common$Builder;->bitField0_:I

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

.method public hasConfig()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 532
    iget v1, p0, Lcom/mapabc/mapapi/core/CommonProtoBuf$Common$Builder;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasEnc()Z
    .locals 2

    .prologue
    .line 640
    iget v0, p0, Lcom/mapabc/mapapi/core/CommonProtoBuf$Common$Builder;->bitField0_:I

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

.method public hasResType()Z
    .locals 2

    .prologue
    .line 604
    iget v0, p0, Lcom/mapabc/mapapi/core/CommonProtoBuf$Common$Builder;->bitField0_:I

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

.method protected internalGetFieldAccessorTable()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 1

    .prologue
    .line 352
    # getter for: Lcom/mapabc/mapapi/core/CommonProtoBuf;->internal_static_Common_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    invoke-static {}, Lcom/mapabc/mapapi/core/CommonProtoBuf;->access$100()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 469
    invoke-virtual {p0}, Lcom/mapabc/mapapi/core/CommonProtoBuf$Common$Builder;->hasConfig()Z

    move-result v1

    if-nez v1, :cond_1

    .line 477
    :cond_0
    :goto_0
    return v0

    .line 473
    :cond_1
    invoke-virtual {p0}, Lcom/mapabc/mapapi/core/CommonProtoBuf$Common$Builder;->hasAK()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 477
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
    .line 342
    invoke-virtual {p0, p1, p2}, Lcom/mapabc/mapapi/core/CommonProtoBuf$Common$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/mapabc/mapapi/core/CommonProtoBuf$Common$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 342
    invoke-virtual {p0, p1}, Lcom/mapabc/mapapi/core/CommonProtoBuf$Common$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/mapabc/mapapi/core/CommonProtoBuf$Common$Builder;

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
    .line 342
    invoke-virtual {p0, p1, p2}, Lcom/mapabc/mapapi/core/CommonProtoBuf$Common$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/mapabc/mapapi/core/CommonProtoBuf$Common$Builder;

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
    .line 342
    invoke-virtual {p0, p1, p2}, Lcom/mapabc/mapapi/core/CommonProtoBuf$Common$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/mapabc/mapapi/core/CommonProtoBuf$Common$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 342
    invoke-virtual {p0, p1}, Lcom/mapabc/mapapi/core/CommonProtoBuf$Common$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/mapabc/mapapi/core/CommonProtoBuf$Common$Builder;

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
    .line 342
    invoke-virtual {p0, p1, p2}, Lcom/mapabc/mapapi/core/CommonProtoBuf$Common$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/mapabc/mapapi/core/CommonProtoBuf$Common$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/mapabc/mapapi/core/CommonProtoBuf$Common$Builder;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 484
    invoke-virtual {p0}, Lcom/mapabc/mapapi/core/CommonProtoBuf$Common$Builder;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v0

    invoke-static {v0}, Lcom/google/protobuf/UnknownFieldSet;->newBuilder(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/UnknownFieldSet$Builder;

    move-result-object v0

    .line 488
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v1

    .line 489
    sparse-switch v1, :sswitch_data_0

    .line 495
    invoke-virtual {p0, p1, v0, p2, v1}, Lcom/mapabc/mapapi/core/CommonProtoBuf$Common$Builder;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/UnknownFieldSet$Builder;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 497
    invoke-virtual {v0}, Lcom/google/protobuf/UnknownFieldSet$Builder;->build()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mapabc/mapapi/core/CommonProtoBuf$Common$Builder;->setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessage$Builder;

    .line 498
    invoke-virtual {p0}, Lcom/mapabc/mapapi/core/CommonProtoBuf$Common$Builder;->onChanged()V

    .line 499
    :goto_1
    return-object p0

    .line 491
    :sswitch_0
    invoke-virtual {v0}, Lcom/google/protobuf/UnknownFieldSet$Builder;->build()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mapabc/mapapi/core/CommonProtoBuf$Common$Builder;->setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessage$Builder;

    .line 492
    invoke-virtual {p0}, Lcom/mapabc/mapapi/core/CommonProtoBuf$Common$Builder;->onChanged()V

    goto :goto_1

    .line 504
    :sswitch_1
    iget v1, p0, Lcom/mapabc/mapapi/core/CommonProtoBuf$Common$Builder;->bitField0_:I

    or-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/mapabc/mapapi/core/CommonProtoBuf$Common$Builder;->bitField0_:I

    .line 505
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    iput-object v1, p0, Lcom/mapabc/mapapi/core/CommonProtoBuf$Common$Builder;->config_:Ljava/lang/Object;

    goto :goto_0

    .line 509
    :sswitch_2
    iget v1, p0, Lcom/mapabc/mapapi/core/CommonProtoBuf$Common$Builder;->bitField0_:I

    or-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/mapabc/mapapi/core/CommonProtoBuf$Common$Builder;->bitField0_:I

    .line 510
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    iput-object v1, p0, Lcom/mapabc/mapapi/core/CommonProtoBuf$Common$Builder;->aK_:Ljava/lang/Object;

    goto :goto_0

    .line 514
    :sswitch_3
    iget v1, p0, Lcom/mapabc/mapapi/core/CommonProtoBuf$Common$Builder;->bitField0_:I

    or-int/lit8 v1, v1, 0x4

    iput v1, p0, Lcom/mapabc/mapapi/core/CommonProtoBuf$Common$Builder;->bitField0_:I

    .line 515
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    iput-object v1, p0, Lcom/mapabc/mapapi/core/CommonProtoBuf$Common$Builder;->resType_:Ljava/lang/Object;

    goto :goto_0

    .line 519
    :sswitch_4
    iget v1, p0, Lcom/mapabc/mapapi/core/CommonProtoBuf$Common$Builder;->bitField0_:I

    or-int/lit8 v1, v1, 0x8

    iput v1, p0, Lcom/mapabc/mapapi/core/CommonProtoBuf$Common$Builder;->bitField0_:I

    .line 520
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    iput-object v1, p0, Lcom/mapabc/mapapi/core/CommonProtoBuf$Common$Builder;->enc_:Ljava/lang/Object;

    goto :goto_0

    .line 489
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
        0x1a -> :sswitch_3
        0x22 -> :sswitch_4
    .end sparse-switch
.end method

.method public mergeFrom(Lcom/google/protobuf/Message;)Lcom/mapabc/mapapi/core/CommonProtoBuf$Common$Builder;
    .locals 1

    .prologue
    .line 442
    instance-of v0, p1, Lcom/mapabc/mapapi/core/CommonProtoBuf$Common;

    if-eqz v0, :cond_0

    .line 443
    check-cast p1, Lcom/mapabc/mapapi/core/CommonProtoBuf$Common;

    invoke-virtual {p0, p1}, Lcom/mapabc/mapapi/core/CommonProtoBuf$Common$Builder;->mergeFrom(Lcom/mapabc/mapapi/core/CommonProtoBuf$Common;)Lcom/mapabc/mapapi/core/CommonProtoBuf$Common$Builder;

    move-result-object p0

    .line 446
    :goto_0
    return-object p0

    .line 445
    :cond_0
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessage$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;

    goto :goto_0
.end method

.method public mergeFrom(Lcom/mapabc/mapapi/core/CommonProtoBuf$Common;)Lcom/mapabc/mapapi/core/CommonProtoBuf$Common$Builder;
    .locals 1

    .prologue
    .line 451
    invoke-static {}, Lcom/mapabc/mapapi/core/CommonProtoBuf$Common;->getDefaultInstance()Lcom/mapabc/mapapi/core/CommonProtoBuf$Common;

    move-result-object v0

    if-ne p1, v0, :cond_0

    .line 465
    :goto_0
    return-object p0

    .line 452
    :cond_0
    invoke-virtual {p1}, Lcom/mapabc/mapapi/core/CommonProtoBuf$Common;->hasConfig()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 453
    invoke-virtual {p1}, Lcom/mapabc/mapapi/core/CommonProtoBuf$Common;->getConfig()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mapabc/mapapi/core/CommonProtoBuf$Common$Builder;->setConfig(Ljava/lang/String;)Lcom/mapabc/mapapi/core/CommonProtoBuf$Common$Builder;

    .line 455
    :cond_1
    invoke-virtual {p1}, Lcom/mapabc/mapapi/core/CommonProtoBuf$Common;->hasAK()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 456
    invoke-virtual {p1}, Lcom/mapabc/mapapi/core/CommonProtoBuf$Common;->getAK()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mapabc/mapapi/core/CommonProtoBuf$Common$Builder;->setAK(Ljava/lang/String;)Lcom/mapabc/mapapi/core/CommonProtoBuf$Common$Builder;

    .line 458
    :cond_2
    invoke-virtual {p1}, Lcom/mapabc/mapapi/core/CommonProtoBuf$Common;->hasResType()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 459
    invoke-virtual {p1}, Lcom/mapabc/mapapi/core/CommonProtoBuf$Common;->getResType()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mapabc/mapapi/core/CommonProtoBuf$Common$Builder;->setResType(Ljava/lang/String;)Lcom/mapabc/mapapi/core/CommonProtoBuf$Common$Builder;

    .line 461
    :cond_3
    invoke-virtual {p1}, Lcom/mapabc/mapapi/core/CommonProtoBuf$Common;->hasEnc()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 462
    invoke-virtual {p1}, Lcom/mapabc/mapapi/core/CommonProtoBuf$Common;->getEnc()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mapabc/mapapi/core/CommonProtoBuf$Common$Builder;->setEnc(Ljava/lang/String;)Lcom/mapabc/mapapi/core/CommonProtoBuf$Common$Builder;

    .line 464
    :cond_4
    invoke-virtual {p1}, Lcom/mapabc/mapapi/core/CommonProtoBuf$Common;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mapabc/mapapi/core/CommonProtoBuf$Common$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessage$Builder;

    goto :goto_0
.end method

.method public setAK(Ljava/lang/String;)Lcom/mapabc/mapapi/core/CommonProtoBuf$Common$Builder;
    .locals 1

    .prologue
    .line 581
    if-nez p1, :cond_0

    .line 582
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 584
    :cond_0
    iget v0, p0, Lcom/mapabc/mapapi/core/CommonProtoBuf$Common$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/mapabc/mapapi/core/CommonProtoBuf$Common$Builder;->bitField0_:I

    .line 585
    iput-object p1, p0, Lcom/mapabc/mapapi/core/CommonProtoBuf$Common$Builder;->aK_:Ljava/lang/Object;

    .line 586
    invoke-virtual {p0}, Lcom/mapabc/mapapi/core/CommonProtoBuf$Common$Builder;->onChanged()V

    .line 587
    return-object p0
.end method

.method setAK(Lcom/google/protobuf/ByteString;)V
    .locals 1

    .prologue
    .line 596
    iget v0, p0, Lcom/mapabc/mapapi/core/CommonProtoBuf$Common$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/mapabc/mapapi/core/CommonProtoBuf$Common$Builder;->bitField0_:I

    .line 597
    iput-object p1, p0, Lcom/mapabc/mapapi/core/CommonProtoBuf$Common$Builder;->aK_:Ljava/lang/Object;

    .line 598
    invoke-virtual {p0}, Lcom/mapabc/mapapi/core/CommonProtoBuf$Common$Builder;->onChanged()V

    .line 599
    return-void
.end method

.method public setConfig(Ljava/lang/String;)Lcom/mapabc/mapapi/core/CommonProtoBuf$Common$Builder;
    .locals 1

    .prologue
    .line 545
    if-nez p1, :cond_0

    .line 546
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 548
    :cond_0
    iget v0, p0, Lcom/mapabc/mapapi/core/CommonProtoBuf$Common$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/mapabc/mapapi/core/CommonProtoBuf$Common$Builder;->bitField0_:I

    .line 549
    iput-object p1, p0, Lcom/mapabc/mapapi/core/CommonProtoBuf$Common$Builder;->config_:Ljava/lang/Object;

    .line 550
    invoke-virtual {p0}, Lcom/mapabc/mapapi/core/CommonProtoBuf$Common$Builder;->onChanged()V

    .line 551
    return-object p0
.end method

.method setConfig(Lcom/google/protobuf/ByteString;)V
    .locals 1

    .prologue
    .line 560
    iget v0, p0, Lcom/mapabc/mapapi/core/CommonProtoBuf$Common$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/mapabc/mapapi/core/CommonProtoBuf$Common$Builder;->bitField0_:I

    .line 561
    iput-object p1, p0, Lcom/mapabc/mapapi/core/CommonProtoBuf$Common$Builder;->config_:Ljava/lang/Object;

    .line 562
    invoke-virtual {p0}, Lcom/mapabc/mapapi/core/CommonProtoBuf$Common$Builder;->onChanged()V

    .line 563
    return-void
.end method

.method public setEnc(Ljava/lang/String;)Lcom/mapabc/mapapi/core/CommonProtoBuf$Common$Builder;
    .locals 1

    .prologue
    .line 653
    if-nez p1, :cond_0

    .line 654
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 656
    :cond_0
    iget v0, p0, Lcom/mapabc/mapapi/core/CommonProtoBuf$Common$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/mapabc/mapapi/core/CommonProtoBuf$Common$Builder;->bitField0_:I

    .line 657
    iput-object p1, p0, Lcom/mapabc/mapapi/core/CommonProtoBuf$Common$Builder;->enc_:Ljava/lang/Object;

    .line 658
    invoke-virtual {p0}, Lcom/mapabc/mapapi/core/CommonProtoBuf$Common$Builder;->onChanged()V

    .line 659
    return-object p0
.end method

.method setEnc(Lcom/google/protobuf/ByteString;)V
    .locals 1

    .prologue
    .line 668
    iget v0, p0, Lcom/mapabc/mapapi/core/CommonProtoBuf$Common$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/mapabc/mapapi/core/CommonProtoBuf$Common$Builder;->bitField0_:I

    .line 669
    iput-object p1, p0, Lcom/mapabc/mapapi/core/CommonProtoBuf$Common$Builder;->enc_:Ljava/lang/Object;

    .line 670
    invoke-virtual {p0}, Lcom/mapabc/mapapi/core/CommonProtoBuf$Common$Builder;->onChanged()V

    .line 671
    return-void
.end method

.method public setResType(Ljava/lang/String;)Lcom/mapabc/mapapi/core/CommonProtoBuf$Common$Builder;
    .locals 1

    .prologue
    .line 617
    if-nez p1, :cond_0

    .line 618
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 620
    :cond_0
    iget v0, p0, Lcom/mapabc/mapapi/core/CommonProtoBuf$Common$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/mapabc/mapapi/core/CommonProtoBuf$Common$Builder;->bitField0_:I

    .line 621
    iput-object p1, p0, Lcom/mapabc/mapapi/core/CommonProtoBuf$Common$Builder;->resType_:Ljava/lang/Object;

    .line 622
    invoke-virtual {p0}, Lcom/mapabc/mapapi/core/CommonProtoBuf$Common$Builder;->onChanged()V

    .line 623
    return-object p0
.end method

.method setResType(Lcom/google/protobuf/ByteString;)V
    .locals 1

    .prologue
    .line 632
    iget v0, p0, Lcom/mapabc/mapapi/core/CommonProtoBuf$Common$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/mapabc/mapapi/core/CommonProtoBuf$Common$Builder;->bitField0_:I

    .line 633
    iput-object p1, p0, Lcom/mapabc/mapapi/core/CommonProtoBuf$Common$Builder;->resType_:Ljava/lang/Object;

    .line 634
    invoke-virtual {p0}, Lcom/mapabc/mapapi/core/CommonProtoBuf$Common$Builder;->onChanged()V

    .line 635
    return-void
.end method
