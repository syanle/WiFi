.class public final Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$ReverseGeocodingRequest$Builder;
.super Lcom/google/protobuf/GeneratedMessage$Builder;
.source "ReverseGeocodingProtoBuf.java"

# interfaces
.implements Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$ReverseGeocodingRequestOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$ReverseGeocodingRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessage$Builder",
        "<",
        "Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$ReverseGeocodingRequest$Builder;",
        ">;",
        "Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$ReverseGeocodingRequestOrBuilder;"
    }
.end annotation


# instance fields
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

.field private spatialXml_:Ljava/lang/Object;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 254
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;-><init>()V

    .line 417
    invoke-static {}, Lcom/mapabc/mapapi/core/CommonProtoBuf$Common;->getDefaultInstance()Lcom/mapabc/mapapi/core/CommonProtoBuf$Common;

    move-result-object v0

    iput-object v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$ReverseGeocodingRequest$Builder;->common_:Lcom/mapabc/mapapi/core/CommonProtoBuf$Common;

    .line 507
    const-string v0, ""

    iput-object v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$ReverseGeocodingRequest$Builder;->spatialXml_:Ljava/lang/Object;

    .line 255
    invoke-direct {p0}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$ReverseGeocodingRequest$Builder;->maybeForceBuilderInitialization()V

    .line 256
    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V
    .locals 1

    .prologue
    .line 259
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessage$Builder;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V

    .line 417
    invoke-static {}, Lcom/mapabc/mapapi/core/CommonProtoBuf$Common;->getDefaultInstance()Lcom/mapabc/mapapi/core/CommonProtoBuf$Common;

    move-result-object v0

    iput-object v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$ReverseGeocodingRequest$Builder;->common_:Lcom/mapabc/mapapi/core/CommonProtoBuf$Common;

    .line 507
    const-string v0, ""

    iput-object v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$ReverseGeocodingRequest$Builder;->spatialXml_:Ljava/lang/Object;

    .line 260
    invoke-direct {p0}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$ReverseGeocodingRequest$Builder;->maybeForceBuilderInitialization()V

    .line 261
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;Lcom/mapabc/mapapi/core/z;)V
    .locals 0

    .prologue
    .line 240
    invoke-direct {p0, p1}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$ReverseGeocodingRequest$Builder;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V

    return-void
.end method

.method static synthetic access$200(Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$ReverseGeocodingRequest$Builder;)Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$ReverseGeocodingRequest;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 240
    invoke-direct {p0}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$ReverseGeocodingRequest$Builder;->buildParsed()Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$ReverseGeocodingRequest;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300()Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$ReverseGeocodingRequest$Builder;
    .locals 1

    .prologue
    .line 240
    invoke-static {}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$ReverseGeocodingRequest$Builder;->create()Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$ReverseGeocodingRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method private buildParsed()Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$ReverseGeocodingRequest;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 307
    invoke-virtual {p0}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$ReverseGeocodingRequest$Builder;->buildPartial()Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$ReverseGeocodingRequest;

    move-result-object v0

    .line 308
    invoke-virtual {v0}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$ReverseGeocodingRequest;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_0

    .line 309
    invoke-static {v0}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$ReverseGeocodingRequest$Builder;->newUninitializedMessageException(Lcom/google/protobuf/Message;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/UninitializedMessageException;->asInvalidProtocolBufferException()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0

    .line 312
    :cond_0
    return-object v0
.end method

.method private static create()Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$ReverseGeocodingRequest$Builder;
    .locals 1

    .prologue
    .line 268
    new-instance v0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$ReverseGeocodingRequest$Builder;

    invoke-direct {v0}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$ReverseGeocodingRequest$Builder;-><init>()V

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
    .line 495
    iget-object v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$ReverseGeocodingRequest$Builder;->commonBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_0

    .line 496
    new-instance v0, Lcom/google/protobuf/SingleFieldBuilder;

    iget-object v1, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$ReverseGeocodingRequest$Builder;->common_:Lcom/mapabc/mapapi/core/CommonProtoBuf$Common;

    invoke-virtual {p0}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$ReverseGeocodingRequest$Builder;->getParentForChildren()Lcom/google/protobuf/GeneratedMessage$BuilderParent;

    move-result-object v2

    invoke-virtual {p0}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$ReverseGeocodingRequest$Builder;->isClean()Z

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lcom/google/protobuf/SingleFieldBuilder;-><init>(Lcom/google/protobuf/GeneratedMessage;Lcom/google/protobuf/GeneratedMessage$BuilderParent;Z)V

    iput-object v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$ReverseGeocodingRequest$Builder;->commonBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    .line 501
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$ReverseGeocodingRequest$Builder;->common_:Lcom/mapabc/mapapi/core/CommonProtoBuf$Common;

    .line 503
    :cond_0
    iget-object v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$ReverseGeocodingRequest$Builder;->commonBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 245
    # getter for: Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf;->internal_static_ReverseGeocodingRequest_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;
    invoke-static {}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf;->access$000()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .locals 1

    .prologue
    .line 263
    # getter for: Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$ReverseGeocodingRequest;->alwaysUseFieldBuilders:Z
    invoke-static {}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$ReverseGeocodingRequest;->access$500()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 264
    invoke-direct {p0}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$ReverseGeocodingRequest$Builder;->getCommonFieldBuilder()Lcom/google/protobuf/SingleFieldBuilder;

    .line 266
    :cond_0
    return-void
.end method


# virtual methods
.method public bridge synthetic build()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 240
    invoke-virtual {p0}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$ReverseGeocodingRequest$Builder;->build()Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$ReverseGeocodingRequest;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 240
    invoke-virtual {p0}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$ReverseGeocodingRequest$Builder;->build()Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$ReverseGeocodingRequest;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$ReverseGeocodingRequest;
    .locals 2

    .prologue
    .line 298
    invoke-virtual {p0}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$ReverseGeocodingRequest$Builder;->buildPartial()Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$ReverseGeocodingRequest;

    move-result-object v0

    .line 299
    invoke-virtual {v0}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$ReverseGeocodingRequest;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_0

    .line 300
    invoke-static {v0}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$ReverseGeocodingRequest$Builder;->newUninitializedMessageException(Lcom/google/protobuf/Message;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0

    .line 302
    :cond_0
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 240
    invoke-virtual {p0}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$ReverseGeocodingRequest$Builder;->buildPartial()Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$ReverseGeocodingRequest;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 240
    invoke-virtual {p0}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$ReverseGeocodingRequest$Builder;->buildPartial()Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$ReverseGeocodingRequest;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$ReverseGeocodingRequest;
    .locals 5

    .prologue
    const/4 v0, 0x1

    .line 316
    new-instance v2, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$ReverseGeocodingRequest;

    const/4 v1, 0x0

    invoke-direct {v2, p0, v1}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$ReverseGeocodingRequest;-><init>(Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$ReverseGeocodingRequest$Builder;Lcom/mapabc/mapapi/core/z;)V

    .line 317
    iget v3, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$ReverseGeocodingRequest$Builder;->bitField0_:I

    .line 318
    const/4 v1, 0x0

    .line 319
    and-int/lit8 v4, v3, 0x1

    if-ne v4, v0, :cond_0

    move v1, v0

    .line 322
    :cond_0
    iget-object v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$ReverseGeocodingRequest$Builder;->commonBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_2

    .line 323
    iget-object v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$ReverseGeocodingRequest$Builder;->common_:Lcom/mapabc/mapapi/core/CommonProtoBuf$Common;

    # setter for: Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$ReverseGeocodingRequest;->common_:Lcom/mapabc/mapapi/core/CommonProtoBuf$Common;
    invoke-static {v2, v0}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$ReverseGeocodingRequest;->access$702(Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$ReverseGeocodingRequest;Lcom/mapabc/mapapi/core/CommonProtoBuf$Common;)Lcom/mapabc/mapapi/core/CommonProtoBuf$Common;

    .line 327
    :goto_0
    and-int/lit8 v0, v3, 0x2

    const/4 v3, 0x2

    if-ne v0, v3, :cond_1

    .line 328
    or-int/lit8 v1, v1, 0x2

    .line 330
    :cond_1
    iget-object v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$ReverseGeocodingRequest$Builder;->spatialXml_:Ljava/lang/Object;

    # setter for: Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$ReverseGeocodingRequest;->spatialXml_:Ljava/lang/Object;
    invoke-static {v2, v0}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$ReverseGeocodingRequest;->access$802(Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$ReverseGeocodingRequest;Ljava/lang/Object;)Ljava/lang/Object;

    .line 331
    # setter for: Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$ReverseGeocodingRequest;->bitField0_:I
    invoke-static {v2, v1}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$ReverseGeocodingRequest;->access$902(Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$ReverseGeocodingRequest;I)I

    .line 332
    invoke-virtual {p0}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$ReverseGeocodingRequest$Builder;->onBuilt()V

    .line 333
    return-object v2

    .line 325
    :cond_2
    iget-object v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$ReverseGeocodingRequest$Builder;->commonBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilder;->build()Lcom/google/protobuf/GeneratedMessage;

    move-result-object v0

    check-cast v0, Lcom/mapabc/mapapi/core/CommonProtoBuf$Common;

    # setter for: Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$ReverseGeocodingRequest;->common_:Lcom/mapabc/mapapi/core/CommonProtoBuf$Common;
    invoke-static {v2, v0}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$ReverseGeocodingRequest;->access$702(Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$ReverseGeocodingRequest;Lcom/mapabc/mapapi/core/CommonProtoBuf$Common;)Lcom/mapabc/mapapi/core/CommonProtoBuf$Common;

    goto :goto_0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 240
    invoke-virtual {p0}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$ReverseGeocodingRequest$Builder;->clear()Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$ReverseGeocodingRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessage$Builder;
    .locals 1

    .prologue
    .line 240
    invoke-virtual {p0}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$ReverseGeocodingRequest$Builder;->clear()Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$ReverseGeocodingRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 240
    invoke-virtual {p0}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$ReverseGeocodingRequest$Builder;->clear()Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$ReverseGeocodingRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 240
    invoke-virtual {p0}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$ReverseGeocodingRequest$Builder;->clear()Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$ReverseGeocodingRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$ReverseGeocodingRequest$Builder;
    .locals 1

    .prologue
    .line 272
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->clear()Lcom/google/protobuf/GeneratedMessage$Builder;

    .line 273
    iget-object v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$ReverseGeocodingRequest$Builder;->commonBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_0

    .line 274
    invoke-static {}, Lcom/mapabc/mapapi/core/CommonProtoBuf$Common;->getDefaultInstance()Lcom/mapabc/mapapi/core/CommonProtoBuf$Common;

    move-result-object v0

    iput-object v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$ReverseGeocodingRequest$Builder;->common_:Lcom/mapabc/mapapi/core/CommonProtoBuf$Common;

    .line 278
    :goto_0
    iget v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$ReverseGeocodingRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$ReverseGeocodingRequest$Builder;->bitField0_:I

    .line 279
    const-string v0, ""

    iput-object v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$ReverseGeocodingRequest$Builder;->spatialXml_:Ljava/lang/Object;

    .line 280
    iget v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$ReverseGeocodingRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$ReverseGeocodingRequest$Builder;->bitField0_:I

    .line 281
    return-object p0

    .line 276
    :cond_0
    iget-object v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$ReverseGeocodingRequest$Builder;->commonBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilder;->clear()Lcom/google/protobuf/SingleFieldBuilder;

    goto :goto_0
.end method

.method public clearCommon()Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$ReverseGeocodingRequest$Builder;
    .locals 1

    .prologue
    .line 471
    iget-object v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$ReverseGeocodingRequest$Builder;->commonBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_0

    .line 472
    invoke-static {}, Lcom/mapabc/mapapi/core/CommonProtoBuf$Common;->getDefaultInstance()Lcom/mapabc/mapapi/core/CommonProtoBuf$Common;

    move-result-object v0

    iput-object v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$ReverseGeocodingRequest$Builder;->common_:Lcom/mapabc/mapapi/core/CommonProtoBuf$Common;

    .line 473
    invoke-virtual {p0}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$ReverseGeocodingRequest$Builder;->onChanged()V

    .line 477
    :goto_0
    iget v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$ReverseGeocodingRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$ReverseGeocodingRequest$Builder;->bitField0_:I

    .line 478
    return-object p0

    .line 475
    :cond_0
    iget-object v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$ReverseGeocodingRequest$Builder;->commonBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilder;->clear()Lcom/google/protobuf/SingleFieldBuilder;

    goto :goto_0
.end method

.method public clearSpatialXml()Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$ReverseGeocodingRequest$Builder;
    .locals 1

    .prologue
    .line 531
    iget v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$ReverseGeocodingRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$ReverseGeocodingRequest$Builder;->bitField0_:I

    .line 532
    invoke-static {}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$ReverseGeocodingRequest;->getDefaultInstance()Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$ReverseGeocodingRequest;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$ReverseGeocodingRequest;->getSpatialXml()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$ReverseGeocodingRequest$Builder;->spatialXml_:Ljava/lang/Object;

    .line 533
    invoke-virtual {p0}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$ReverseGeocodingRequest$Builder;->onChanged()V

    .line 534
    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 240
    invoke-virtual {p0}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$ReverseGeocodingRequest$Builder;->clone()Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$ReverseGeocodingRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .prologue
    .line 240
    invoke-virtual {p0}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$ReverseGeocodingRequest$Builder;->clone()Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$ReverseGeocodingRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessage$Builder;
    .locals 1

    .prologue
    .line 240
    invoke-virtual {p0}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$ReverseGeocodingRequest$Builder;->clone()Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$ReverseGeocodingRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 240
    invoke-virtual {p0}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$ReverseGeocodingRequest$Builder;->clone()Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$ReverseGeocodingRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 240
    invoke-virtual {p0}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$ReverseGeocodingRequest$Builder;->clone()Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$ReverseGeocodingRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$ReverseGeocodingRequest$Builder;
    .locals 2

    .prologue
    .line 285
    invoke-static {}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$ReverseGeocodingRequest$Builder;->create()Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$ReverseGeocodingRequest$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$ReverseGeocodingRequest$Builder;->buildPartial()Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$ReverseGeocodingRequest;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$ReverseGeocodingRequest$Builder;->mergeFrom(Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$ReverseGeocodingRequest;)Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$ReverseGeocodingRequest$Builder;

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
    .line 240
    invoke-virtual {p0}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$ReverseGeocodingRequest$Builder;->clone()Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$ReverseGeocodingRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getCommon()Lcom/mapabc/mapapi/core/CommonProtoBuf$Common;
    .locals 1

    .prologue
    .line 424
    iget-object v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$ReverseGeocodingRequest$Builder;->commonBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_0

    .line 425
    iget-object v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$ReverseGeocodingRequest$Builder;->common_:Lcom/mapabc/mapapi/core/CommonProtoBuf$Common;

    .line 427
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$ReverseGeocodingRequest$Builder;->commonBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilder;->getMessage()Lcom/google/protobuf/GeneratedMessage;

    move-result-object v0

    check-cast v0, Lcom/mapabc/mapapi/core/CommonProtoBuf$Common;

    goto :goto_0
.end method

.method public getCommonBuilder()Lcom/mapabc/mapapi/core/CommonProtoBuf$Common$Builder;
    .locals 1

    .prologue
    .line 481
    iget v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$ReverseGeocodingRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$ReverseGeocodingRequest$Builder;->bitField0_:I

    .line 482
    invoke-virtual {p0}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$ReverseGeocodingRequest$Builder;->onChanged()V

    .line 483
    invoke-direct {p0}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$ReverseGeocodingRequest$Builder;->getCommonFieldBuilder()Lcom/google/protobuf/SingleFieldBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilder;->getBuilder()Lcom/google/protobuf/GeneratedMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/mapabc/mapapi/core/CommonProtoBuf$Common$Builder;

    return-object v0
.end method

.method public getCommonOrBuilder()Lcom/mapabc/mapapi/core/CommonProtoBuf$CommonOrBuilder;
    .locals 1

    .prologue
    .line 486
    iget-object v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$ReverseGeocodingRequest$Builder;->commonBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-eqz v0, :cond_0

    .line 487
    iget-object v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$ReverseGeocodingRequest$Builder;->commonBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilder;->getMessageOrBuilder()Lcom/google/protobuf/MessageOrBuilder;

    move-result-object v0

    check-cast v0, Lcom/mapabc/mapapi/core/CommonProtoBuf$CommonOrBuilder;

    .line 489
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$ReverseGeocodingRequest$Builder;->common_:Lcom/mapabc/mapapi/core/CommonProtoBuf$Common;

    goto :goto_0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 240
    invoke-virtual {p0}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$ReverseGeocodingRequest$Builder;->getDefaultInstanceForType()Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$ReverseGeocodingRequest;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 240
    invoke-virtual {p0}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$ReverseGeocodingRequest$Builder;->getDefaultInstanceForType()Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$ReverseGeocodingRequest;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$ReverseGeocodingRequest;
    .locals 1

    .prologue
    .line 294
    invoke-static {}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$ReverseGeocodingRequest;->getDefaultInstance()Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$ReverseGeocodingRequest;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 290
    invoke-static {}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$ReverseGeocodingRequest;->getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public getSpatialXml()Ljava/lang/String;
    .locals 2

    .prologue
    .line 512
    iget-object v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$ReverseGeocodingRequest$Builder;->spatialXml_:Ljava/lang/Object;

    .line 513
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_0

    .line 514
    check-cast v0, Lcom/google/protobuf/ByteString;

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 515
    iput-object v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$ReverseGeocodingRequest$Builder;->spatialXml_:Ljava/lang/Object;

    .line 518
    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Ljava/lang/String;

    goto :goto_0
.end method

.method public hasCommon()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 421
    iget v1, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$ReverseGeocodingRequest$Builder;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasSpatialXml()Z
    .locals 2

    .prologue
    .line 509
    iget v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$ReverseGeocodingRequest$Builder;->bitField0_:I

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
    .line 250
    # getter for: Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf;->internal_static_ReverseGeocodingRequest_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    invoke-static {}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf;->access$100()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 358
    invoke-virtual {p0}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$ReverseGeocodingRequest$Builder;->hasCommon()Z

    move-result v1

    if-nez v1, :cond_1

    .line 370
    :cond_0
    :goto_0
    return v0

    .line 362
    :cond_1
    invoke-virtual {p0}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$ReverseGeocodingRequest$Builder;->hasSpatialXml()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 366
    invoke-virtual {p0}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$ReverseGeocodingRequest$Builder;->getCommon()Lcom/mapabc/mapapi/core/CommonProtoBuf$Common;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mapabc/mapapi/core/CommonProtoBuf$Common;->isInitialized()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 370
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public mergeCommon(Lcom/mapabc/mapapi/core/CommonProtoBuf$Common;)Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$ReverseGeocodingRequest$Builder;
    .locals 2

    .prologue
    .line 455
    iget-object v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$ReverseGeocodingRequest$Builder;->commonBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_1

    .line 456
    iget v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$ReverseGeocodingRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$ReverseGeocodingRequest$Builder;->common_:Lcom/mapabc/mapapi/core/CommonProtoBuf$Common;

    invoke-static {}, Lcom/mapabc/mapapi/core/CommonProtoBuf$Common;->getDefaultInstance()Lcom/mapabc/mapapi/core/CommonProtoBuf$Common;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 458
    iget-object v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$ReverseGeocodingRequest$Builder;->common_:Lcom/mapabc/mapapi/core/CommonProtoBuf$Common;

    invoke-static {v0}, Lcom/mapabc/mapapi/core/CommonProtoBuf$Common;->newBuilder(Lcom/mapabc/mapapi/core/CommonProtoBuf$Common;)Lcom/mapabc/mapapi/core/CommonProtoBuf$Common$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/mapabc/mapapi/core/CommonProtoBuf$Common$Builder;->mergeFrom(Lcom/mapabc/mapapi/core/CommonProtoBuf$Common;)Lcom/mapabc/mapapi/core/CommonProtoBuf$Common$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mapabc/mapapi/core/CommonProtoBuf$Common$Builder;->buildPartial()Lcom/mapabc/mapapi/core/CommonProtoBuf$Common;

    move-result-object v0

    iput-object v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$ReverseGeocodingRequest$Builder;->common_:Lcom/mapabc/mapapi/core/CommonProtoBuf$Common;

    .line 463
    :goto_0
    invoke-virtual {p0}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$ReverseGeocodingRequest$Builder;->onChanged()V

    .line 467
    :goto_1
    iget v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$ReverseGeocodingRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$ReverseGeocodingRequest$Builder;->bitField0_:I

    .line 468
    return-object p0

    .line 461
    :cond_0
    iput-object p1, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$ReverseGeocodingRequest$Builder;->common_:Lcom/mapabc/mapapi/core/CommonProtoBuf$Common;

    goto :goto_0

    .line 465
    :cond_1
    iget-object v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$ReverseGeocodingRequest$Builder;->commonBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

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
    .line 240
    invoke-virtual {p0, p1, p2}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$ReverseGeocodingRequest$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$ReverseGeocodingRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 240
    invoke-virtual {p0, p1}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$ReverseGeocodingRequest$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$ReverseGeocodingRequest$Builder;

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
    .line 240
    invoke-virtual {p0, p1, p2}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$ReverseGeocodingRequest$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$ReverseGeocodingRequest$Builder;

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
    .line 240
    invoke-virtual {p0, p1, p2}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$ReverseGeocodingRequest$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$ReverseGeocodingRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 240
    invoke-virtual {p0, p1}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$ReverseGeocodingRequest$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$ReverseGeocodingRequest$Builder;

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
    .line 240
    invoke-virtual {p0, p1, p2}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$ReverseGeocodingRequest$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$ReverseGeocodingRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$ReverseGeocodingRequest$Builder;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 377
    invoke-virtual {p0}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$ReverseGeocodingRequest$Builder;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v0

    invoke-static {v0}, Lcom/google/protobuf/UnknownFieldSet;->newBuilder(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/UnknownFieldSet$Builder;

    move-result-object v0

    .line 381
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v1

    .line 382
    sparse-switch v1, :sswitch_data_0

    .line 388
    invoke-virtual {p0, p1, v0, p2, v1}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$ReverseGeocodingRequest$Builder;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/UnknownFieldSet$Builder;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 390
    invoke-virtual {v0}, Lcom/google/protobuf/UnknownFieldSet$Builder;->build()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$ReverseGeocodingRequest$Builder;->setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessage$Builder;

    .line 391
    invoke-virtual {p0}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$ReverseGeocodingRequest$Builder;->onChanged()V

    .line 392
    :goto_1
    return-object p0

    .line 384
    :sswitch_0
    invoke-virtual {v0}, Lcom/google/protobuf/UnknownFieldSet$Builder;->build()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$ReverseGeocodingRequest$Builder;->setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessage$Builder;

    .line 385
    invoke-virtual {p0}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$ReverseGeocodingRequest$Builder;->onChanged()V

    goto :goto_1

    .line 397
    :sswitch_1
    invoke-static {}, Lcom/mapabc/mapapi/core/CommonProtoBuf$Common;->newBuilder()Lcom/mapabc/mapapi/core/CommonProtoBuf$Common$Builder;

    move-result-object v1

    .line 398
    invoke-virtual {p0}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$ReverseGeocodingRequest$Builder;->hasCommon()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 399
    invoke-virtual {p0}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$ReverseGeocodingRequest$Builder;->getCommon()Lcom/mapabc/mapapi/core/CommonProtoBuf$Common;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/mapabc/mapapi/core/CommonProtoBuf$Common$Builder;->mergeFrom(Lcom/mapabc/mapapi/core/CommonProtoBuf$Common;)Lcom/mapabc/mapapi/core/CommonProtoBuf$Common$Builder;

    .line 401
    :cond_1
    invoke-virtual {p1, v1, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 402
    invoke-virtual {v1}, Lcom/mapabc/mapapi/core/CommonProtoBuf$Common$Builder;->buildPartial()Lcom/mapabc/mapapi/core/CommonProtoBuf$Common;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$ReverseGeocodingRequest$Builder;->setCommon(Lcom/mapabc/mapapi/core/CommonProtoBuf$Common;)Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$ReverseGeocodingRequest$Builder;

    goto :goto_0

    .line 406
    :sswitch_2
    iget v1, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$ReverseGeocodingRequest$Builder;->bitField0_:I

    or-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$ReverseGeocodingRequest$Builder;->bitField0_:I

    .line 407
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    iput-object v1, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$ReverseGeocodingRequest$Builder;->spatialXml_:Ljava/lang/Object;

    goto :goto_0

    .line 382
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
    .end sparse-switch
.end method

.method public mergeFrom(Lcom/google/protobuf/Message;)Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$ReverseGeocodingRequest$Builder;
    .locals 1

    .prologue
    .line 337
    instance-of v0, p1, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$ReverseGeocodingRequest;

    if-eqz v0, :cond_0

    .line 338
    check-cast p1, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$ReverseGeocodingRequest;

    invoke-virtual {p0, p1}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$ReverseGeocodingRequest$Builder;->mergeFrom(Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$ReverseGeocodingRequest;)Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$ReverseGeocodingRequest$Builder;

    move-result-object p0

    .line 341
    :goto_0
    return-object p0

    .line 340
    :cond_0
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessage$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;

    goto :goto_0
.end method

.method public mergeFrom(Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$ReverseGeocodingRequest;)Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$ReverseGeocodingRequest$Builder;
    .locals 1

    .prologue
    .line 346
    invoke-static {}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$ReverseGeocodingRequest;->getDefaultInstance()Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$ReverseGeocodingRequest;

    move-result-object v0

    if-ne p1, v0, :cond_0

    .line 354
    :goto_0
    return-object p0

    .line 347
    :cond_0
    invoke-virtual {p1}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$ReverseGeocodingRequest;->hasCommon()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 348
    invoke-virtual {p1}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$ReverseGeocodingRequest;->getCommon()Lcom/mapabc/mapapi/core/CommonProtoBuf$Common;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$ReverseGeocodingRequest$Builder;->mergeCommon(Lcom/mapabc/mapapi/core/CommonProtoBuf$Common;)Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$ReverseGeocodingRequest$Builder;

    .line 350
    :cond_1
    invoke-virtual {p1}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$ReverseGeocodingRequest;->hasSpatialXml()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 351
    invoke-virtual {p1}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$ReverseGeocodingRequest;->getSpatialXml()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$ReverseGeocodingRequest$Builder;->setSpatialXml(Ljava/lang/String;)Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$ReverseGeocodingRequest$Builder;

    .line 353
    :cond_2
    invoke-virtual {p1}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$ReverseGeocodingRequest;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$ReverseGeocodingRequest$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessage$Builder;

    goto :goto_0
.end method

.method public setCommon(Lcom/mapabc/mapapi/core/CommonProtoBuf$Common$Builder;)Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$ReverseGeocodingRequest$Builder;
    .locals 2

    .prologue
    .line 445
    iget-object v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$ReverseGeocodingRequest$Builder;->commonBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_0

    .line 446
    invoke-virtual {p1}, Lcom/mapabc/mapapi/core/CommonProtoBuf$Common$Builder;->build()Lcom/mapabc/mapapi/core/CommonProtoBuf$Common;

    move-result-object v0

    iput-object v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$ReverseGeocodingRequest$Builder;->common_:Lcom/mapabc/mapapi/core/CommonProtoBuf$Common;

    .line 447
    invoke-virtual {p0}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$ReverseGeocodingRequest$Builder;->onChanged()V

    .line 451
    :goto_0
    iget v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$ReverseGeocodingRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$ReverseGeocodingRequest$Builder;->bitField0_:I

    .line 452
    return-object p0

    .line 449
    :cond_0
    iget-object v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$ReverseGeocodingRequest$Builder;->commonBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    invoke-virtual {p1}, Lcom/mapabc/mapapi/core/CommonProtoBuf$Common$Builder;->build()Lcom/mapabc/mapapi/core/CommonProtoBuf$Common;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/protobuf/SingleFieldBuilder;->setMessage(Lcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/SingleFieldBuilder;

    goto :goto_0
.end method

.method public setCommon(Lcom/mapabc/mapapi/core/CommonProtoBuf$Common;)Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$ReverseGeocodingRequest$Builder;
    .locals 1

    .prologue
    .line 431
    iget-object v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$ReverseGeocodingRequest$Builder;->commonBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_1

    .line 432
    if-nez p1, :cond_0

    .line 433
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 435
    :cond_0
    iput-object p1, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$ReverseGeocodingRequest$Builder;->common_:Lcom/mapabc/mapapi/core/CommonProtoBuf$Common;

    .line 436
    invoke-virtual {p0}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$ReverseGeocodingRequest$Builder;->onChanged()V

    .line 440
    :goto_0
    iget v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$ReverseGeocodingRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$ReverseGeocodingRequest$Builder;->bitField0_:I

    .line 441
    return-object p0

    .line 438
    :cond_1
    iget-object v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$ReverseGeocodingRequest$Builder;->commonBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/SingleFieldBuilder;->setMessage(Lcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/SingleFieldBuilder;

    goto :goto_0
.end method

.method public setSpatialXml(Ljava/lang/String;)Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$ReverseGeocodingRequest$Builder;
    .locals 1

    .prologue
    .line 522
    if-nez p1, :cond_0

    .line 523
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 525
    :cond_0
    iget v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$ReverseGeocodingRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$ReverseGeocodingRequest$Builder;->bitField0_:I

    .line 526
    iput-object p1, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$ReverseGeocodingRequest$Builder;->spatialXml_:Ljava/lang/Object;

    .line 527
    invoke-virtual {p0}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$ReverseGeocodingRequest$Builder;->onChanged()V

    .line 528
    return-object p0
.end method

.method setSpatialXml(Lcom/google/protobuf/ByteString;)V
    .locals 1

    .prologue
    .line 537
    iget v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$ReverseGeocodingRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$ReverseGeocodingRequest$Builder;->bitField0_:I

    .line 538
    iput-object p1, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$ReverseGeocodingRequest$Builder;->spatialXml_:Ljava/lang/Object;

    .line 539
    invoke-virtual {p0}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$ReverseGeocodingRequest$Builder;->onChanged()V

    .line 540
    return-void
.end method
