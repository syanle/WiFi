.class public final Lcom/mapabc/mapapi/core/CommonProtoBuf$Spellcorrect$Builder;
.super Lcom/google/protobuf/GeneratedMessage$Builder;
.source "CommonProtoBuf.java"

# interfaces
.implements Lcom/mapabc/mapapi/core/CommonProtoBuf$SpellcorrectOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mapabc/mapapi/core/CommonProtoBuf$Spellcorrect;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessage$Builder",
        "<",
        "Lcom/mapabc/mapapi/core/CommonProtoBuf$Spellcorrect$Builder;",
        ">;",
        "Lcom/mapabc/mapapi/core/CommonProtoBuf$SpellcorrectOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private data_:Lcom/google/protobuf/LazyStringList;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 3273
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;-><init>()V

    .line 3404
    sget-object v0, Lcom/google/protobuf/LazyStringArrayList;->EMPTY:Lcom/google/protobuf/LazyStringList;

    iput-object v0, p0, Lcom/mapabc/mapapi/core/CommonProtoBuf$Spellcorrect$Builder;->data_:Lcom/google/protobuf/LazyStringList;

    .line 3274
    invoke-direct {p0}, Lcom/mapabc/mapapi/core/CommonProtoBuf$Spellcorrect$Builder;->maybeForceBuilderInitialization()V

    .line 3275
    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V
    .locals 1

    .prologue
    .line 3278
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessage$Builder;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V

    .line 3404
    sget-object v0, Lcom/google/protobuf/LazyStringArrayList;->EMPTY:Lcom/google/protobuf/LazyStringList;

    iput-object v0, p0, Lcom/mapabc/mapapi/core/CommonProtoBuf$Spellcorrect$Builder;->data_:Lcom/google/protobuf/LazyStringList;

    .line 3279
    invoke-direct {p0}, Lcom/mapabc/mapapi/core/CommonProtoBuf$Spellcorrect$Builder;->maybeForceBuilderInitialization()V

    .line 3280
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;Lcom/mapabc/mapapi/core/b;)V
    .locals 0

    .prologue
    .line 3259
    invoke-direct {p0, p1}, Lcom/mapabc/mapapi/core/CommonProtoBuf$Spellcorrect$Builder;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V

    return-void
.end method

.method static synthetic access$4400(Lcom/mapabc/mapapi/core/CommonProtoBuf$Spellcorrect$Builder;)Lcom/mapabc/mapapi/core/CommonProtoBuf$Spellcorrect;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 3259
    invoke-direct {p0}, Lcom/mapabc/mapapi/core/CommonProtoBuf$Spellcorrect$Builder;->buildParsed()Lcom/mapabc/mapapi/core/CommonProtoBuf$Spellcorrect;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$4500()Lcom/mapabc/mapapi/core/CommonProtoBuf$Spellcorrect$Builder;
    .locals 1

    .prologue
    .line 3259
    invoke-static {}, Lcom/mapabc/mapapi/core/CommonProtoBuf$Spellcorrect$Builder;->create()Lcom/mapabc/mapapi/core/CommonProtoBuf$Spellcorrect$Builder;

    move-result-object v0

    return-object v0
.end method

.method private buildParsed()Lcom/mapabc/mapapi/core/CommonProtoBuf$Spellcorrect;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 3319
    invoke-virtual {p0}, Lcom/mapabc/mapapi/core/CommonProtoBuf$Spellcorrect$Builder;->buildPartial()Lcom/mapabc/mapapi/core/CommonProtoBuf$Spellcorrect;

    move-result-object v0

    .line 3320
    invoke-virtual {v0}, Lcom/mapabc/mapapi/core/CommonProtoBuf$Spellcorrect;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_0

    .line 3321
    invoke-static {v0}, Lcom/mapabc/mapapi/core/CommonProtoBuf$Spellcorrect$Builder;->newUninitializedMessageException(Lcom/google/protobuf/Message;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/UninitializedMessageException;->asInvalidProtocolBufferException()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0

    .line 3324
    :cond_0
    return-object v0
.end method

.method private static create()Lcom/mapabc/mapapi/core/CommonProtoBuf$Spellcorrect$Builder;
    .locals 1

    .prologue
    .line 3286
    new-instance v0, Lcom/mapabc/mapapi/core/CommonProtoBuf$Spellcorrect$Builder;

    invoke-direct {v0}, Lcom/mapabc/mapapi/core/CommonProtoBuf$Spellcorrect$Builder;-><init>()V

    return-object v0
.end method

.method private ensureDataIsMutable()V
    .locals 2

    .prologue
    .line 3406
    iget v0, p0, Lcom/mapabc/mapapi/core/CommonProtoBuf$Spellcorrect$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 3407
    new-instance v0, Lcom/google/protobuf/LazyStringArrayList;

    iget-object v1, p0, Lcom/mapabc/mapapi/core/CommonProtoBuf$Spellcorrect$Builder;->data_:Lcom/google/protobuf/LazyStringList;

    invoke-direct {v0, v1}, Lcom/google/protobuf/LazyStringArrayList;-><init>(Ljava/util/List;)V

    iput-object v0, p0, Lcom/mapabc/mapapi/core/CommonProtoBuf$Spellcorrect$Builder;->data_:Lcom/google/protobuf/LazyStringList;

    .line 3408
    iget v0, p0, Lcom/mapabc/mapapi/core/CommonProtoBuf$Spellcorrect$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/mapabc/mapapi/core/CommonProtoBuf$Spellcorrect$Builder;->bitField0_:I

    .line 3410
    :cond_0
    return-void
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 3264
    # getter for: Lcom/mapabc/mapapi/core/CommonProtoBuf;->internal_static_Spellcorrect_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;
    invoke-static {}, Lcom/mapabc/mapapi/core/CommonProtoBuf;->access$4200()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .locals 1

    .prologue
    .line 3282
    # getter for: Lcom/mapabc/mapapi/core/CommonProtoBuf$Spellcorrect;->alwaysUseFieldBuilders:Z
    invoke-static {}, Lcom/mapabc/mapapi/core/CommonProtoBuf$Spellcorrect;->access$4700()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3284
    :cond_0
    return-void
.end method


# virtual methods
.method public addAllData(Ljava/lang/Iterable;)Lcom/mapabc/mapapi/core/CommonProtoBuf$Spellcorrect$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/mapabc/mapapi/core/CommonProtoBuf$Spellcorrect$Builder;"
        }
    .end annotation

    .prologue
    .line 3442
    invoke-direct {p0}, Lcom/mapabc/mapapi/core/CommonProtoBuf$Spellcorrect$Builder;->ensureDataIsMutable()V

    .line 3443
    iget-object v0, p0, Lcom/mapabc/mapapi/core/CommonProtoBuf$Spellcorrect$Builder;->data_:Lcom/google/protobuf/LazyStringList;

    invoke-static {p1, v0}, Lcom/google/protobuf/GeneratedMessage$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    .line 3444
    invoke-virtual {p0}, Lcom/mapabc/mapapi/core/CommonProtoBuf$Spellcorrect$Builder;->onChanged()V

    .line 3445
    return-object p0
.end method

.method public addData(Ljava/lang/String;)Lcom/mapabc/mapapi/core/CommonProtoBuf$Spellcorrect$Builder;
    .locals 1

    .prologue
    .line 3432
    if-nez p1, :cond_0

    .line 3433
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 3435
    :cond_0
    invoke-direct {p0}, Lcom/mapabc/mapapi/core/CommonProtoBuf$Spellcorrect$Builder;->ensureDataIsMutable()V

    .line 3436
    iget-object v0, p0, Lcom/mapabc/mapapi/core/CommonProtoBuf$Spellcorrect$Builder;->data_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/LazyStringList;->add(Ljava/lang/Object;)Z

    .line 3437
    invoke-virtual {p0}, Lcom/mapabc/mapapi/core/CommonProtoBuf$Spellcorrect$Builder;->onChanged()V

    .line 3438
    return-object p0
.end method

.method addData(Lcom/google/protobuf/ByteString;)V
    .locals 1

    .prologue
    .line 3454
    invoke-direct {p0}, Lcom/mapabc/mapapi/core/CommonProtoBuf$Spellcorrect$Builder;->ensureDataIsMutable()V

    .line 3455
    iget-object v0, p0, Lcom/mapabc/mapapi/core/CommonProtoBuf$Spellcorrect$Builder;->data_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/LazyStringList;->add(Lcom/google/protobuf/ByteString;)V

    .line 3456
    invoke-virtual {p0}, Lcom/mapabc/mapapi/core/CommonProtoBuf$Spellcorrect$Builder;->onChanged()V

    .line 3457
    return-void
.end method

.method public bridge synthetic build()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 3259
    invoke-virtual {p0}, Lcom/mapabc/mapapi/core/CommonProtoBuf$Spellcorrect$Builder;->build()Lcom/mapabc/mapapi/core/CommonProtoBuf$Spellcorrect;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 3259
    invoke-virtual {p0}, Lcom/mapabc/mapapi/core/CommonProtoBuf$Spellcorrect$Builder;->build()Lcom/mapabc/mapapi/core/CommonProtoBuf$Spellcorrect;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/mapabc/mapapi/core/CommonProtoBuf$Spellcorrect;
    .locals 2

    .prologue
    .line 3310
    invoke-virtual {p0}, Lcom/mapabc/mapapi/core/CommonProtoBuf$Spellcorrect$Builder;->buildPartial()Lcom/mapabc/mapapi/core/CommonProtoBuf$Spellcorrect;

    move-result-object v0

    .line 3311
    invoke-virtual {v0}, Lcom/mapabc/mapapi/core/CommonProtoBuf$Spellcorrect;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_0

    .line 3312
    invoke-static {v0}, Lcom/mapabc/mapapi/core/CommonProtoBuf$Spellcorrect$Builder;->newUninitializedMessageException(Lcom/google/protobuf/Message;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0

    .line 3314
    :cond_0
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 3259
    invoke-virtual {p0}, Lcom/mapabc/mapapi/core/CommonProtoBuf$Spellcorrect$Builder;->buildPartial()Lcom/mapabc/mapapi/core/CommonProtoBuf$Spellcorrect;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 3259
    invoke-virtual {p0}, Lcom/mapabc/mapapi/core/CommonProtoBuf$Spellcorrect$Builder;->buildPartial()Lcom/mapabc/mapapi/core/CommonProtoBuf$Spellcorrect;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/mapabc/mapapi/core/CommonProtoBuf$Spellcorrect;
    .locals 3

    .prologue
    .line 3328
    new-instance v0, Lcom/mapabc/mapapi/core/CommonProtoBuf$Spellcorrect;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/mapabc/mapapi/core/CommonProtoBuf$Spellcorrect;-><init>(Lcom/mapabc/mapapi/core/CommonProtoBuf$Spellcorrect$Builder;Lcom/mapabc/mapapi/core/b;)V

    .line 3329
    iget v1, p0, Lcom/mapabc/mapapi/core/CommonProtoBuf$Spellcorrect$Builder;->bitField0_:I

    .line 3330
    iget v1, p0, Lcom/mapabc/mapapi/core/CommonProtoBuf$Spellcorrect$Builder;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 3331
    new-instance v1, Lcom/google/protobuf/UnmodifiableLazyStringList;

    iget-object v2, p0, Lcom/mapabc/mapapi/core/CommonProtoBuf$Spellcorrect$Builder;->data_:Lcom/google/protobuf/LazyStringList;

    invoke-direct {v1, v2}, Lcom/google/protobuf/UnmodifiableLazyStringList;-><init>(Lcom/google/protobuf/LazyStringList;)V

    iput-object v1, p0, Lcom/mapabc/mapapi/core/CommonProtoBuf$Spellcorrect$Builder;->data_:Lcom/google/protobuf/LazyStringList;

    .line 3333
    iget v1, p0, Lcom/mapabc/mapapi/core/CommonProtoBuf$Spellcorrect$Builder;->bitField0_:I

    and-int/lit8 v1, v1, -0x2

    iput v1, p0, Lcom/mapabc/mapapi/core/CommonProtoBuf$Spellcorrect$Builder;->bitField0_:I

    .line 3335
    :cond_0
    iget-object v1, p0, Lcom/mapabc/mapapi/core/CommonProtoBuf$Spellcorrect$Builder;->data_:Lcom/google/protobuf/LazyStringList;

    # setter for: Lcom/mapabc/mapapi/core/CommonProtoBuf$Spellcorrect;->data_:Lcom/google/protobuf/LazyStringList;
    invoke-static {v0, v1}, Lcom/mapabc/mapapi/core/CommonProtoBuf$Spellcorrect;->access$4902(Lcom/mapabc/mapapi/core/CommonProtoBuf$Spellcorrect;Lcom/google/protobuf/LazyStringList;)Lcom/google/protobuf/LazyStringList;

    .line 3336
    invoke-virtual {p0}, Lcom/mapabc/mapapi/core/CommonProtoBuf$Spellcorrect$Builder;->onBuilt()V

    .line 3337
    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 3259
    invoke-virtual {p0}, Lcom/mapabc/mapapi/core/CommonProtoBuf$Spellcorrect$Builder;->clear()Lcom/mapabc/mapapi/core/CommonProtoBuf$Spellcorrect$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessage$Builder;
    .locals 1

    .prologue
    .line 3259
    invoke-virtual {p0}, Lcom/mapabc/mapapi/core/CommonProtoBuf$Spellcorrect$Builder;->clear()Lcom/mapabc/mapapi/core/CommonProtoBuf$Spellcorrect$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 3259
    invoke-virtual {p0}, Lcom/mapabc/mapapi/core/CommonProtoBuf$Spellcorrect$Builder;->clear()Lcom/mapabc/mapapi/core/CommonProtoBuf$Spellcorrect$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 3259
    invoke-virtual {p0}, Lcom/mapabc/mapapi/core/CommonProtoBuf$Spellcorrect$Builder;->clear()Lcom/mapabc/mapapi/core/CommonProtoBuf$Spellcorrect$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/mapabc/mapapi/core/CommonProtoBuf$Spellcorrect$Builder;
    .locals 1

    .prologue
    .line 3290
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->clear()Lcom/google/protobuf/GeneratedMessage$Builder;

    .line 3291
    sget-object v0, Lcom/google/protobuf/LazyStringArrayList;->EMPTY:Lcom/google/protobuf/LazyStringList;

    iput-object v0, p0, Lcom/mapabc/mapapi/core/CommonProtoBuf$Spellcorrect$Builder;->data_:Lcom/google/protobuf/LazyStringList;

    .line 3292
    iget v0, p0, Lcom/mapabc/mapapi/core/CommonProtoBuf$Spellcorrect$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/mapabc/mapapi/core/CommonProtoBuf$Spellcorrect$Builder;->bitField0_:I

    .line 3293
    return-object p0
.end method

.method public clearData()Lcom/mapabc/mapapi/core/CommonProtoBuf$Spellcorrect$Builder;
    .locals 1

    .prologue
    .line 3448
    sget-object v0, Lcom/google/protobuf/LazyStringArrayList;->EMPTY:Lcom/google/protobuf/LazyStringList;

    iput-object v0, p0, Lcom/mapabc/mapapi/core/CommonProtoBuf$Spellcorrect$Builder;->data_:Lcom/google/protobuf/LazyStringList;

    .line 3449
    iget v0, p0, Lcom/mapabc/mapapi/core/CommonProtoBuf$Spellcorrect$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/mapabc/mapapi/core/CommonProtoBuf$Spellcorrect$Builder;->bitField0_:I

    .line 3450
    invoke-virtual {p0}, Lcom/mapabc/mapapi/core/CommonProtoBuf$Spellcorrect$Builder;->onChanged()V

    .line 3451
    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 3259
    invoke-virtual {p0}, Lcom/mapabc/mapapi/core/CommonProtoBuf$Spellcorrect$Builder;->clone()Lcom/mapabc/mapapi/core/CommonProtoBuf$Spellcorrect$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .prologue
    .line 3259
    invoke-virtual {p0}, Lcom/mapabc/mapapi/core/CommonProtoBuf$Spellcorrect$Builder;->clone()Lcom/mapabc/mapapi/core/CommonProtoBuf$Spellcorrect$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessage$Builder;
    .locals 1

    .prologue
    .line 3259
    invoke-virtual {p0}, Lcom/mapabc/mapapi/core/CommonProtoBuf$Spellcorrect$Builder;->clone()Lcom/mapabc/mapapi/core/CommonProtoBuf$Spellcorrect$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 3259
    invoke-virtual {p0}, Lcom/mapabc/mapapi/core/CommonProtoBuf$Spellcorrect$Builder;->clone()Lcom/mapabc/mapapi/core/CommonProtoBuf$Spellcorrect$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 3259
    invoke-virtual {p0}, Lcom/mapabc/mapapi/core/CommonProtoBuf$Spellcorrect$Builder;->clone()Lcom/mapabc/mapapi/core/CommonProtoBuf$Spellcorrect$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/mapabc/mapapi/core/CommonProtoBuf$Spellcorrect$Builder;
    .locals 2

    .prologue
    .line 3297
    invoke-static {}, Lcom/mapabc/mapapi/core/CommonProtoBuf$Spellcorrect$Builder;->create()Lcom/mapabc/mapapi/core/CommonProtoBuf$Spellcorrect$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/mapabc/mapapi/core/CommonProtoBuf$Spellcorrect$Builder;->buildPartial()Lcom/mapabc/mapapi/core/CommonProtoBuf$Spellcorrect;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mapabc/mapapi/core/CommonProtoBuf$Spellcorrect$Builder;->mergeFrom(Lcom/mapabc/mapapi/core/CommonProtoBuf$Spellcorrect;)Lcom/mapabc/mapapi/core/CommonProtoBuf$Spellcorrect$Builder;

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
    .line 3259
    invoke-virtual {p0}, Lcom/mapabc/mapapi/core/CommonProtoBuf$Spellcorrect$Builder;->clone()Lcom/mapabc/mapapi/core/CommonProtoBuf$Spellcorrect$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getData(I)Ljava/lang/String;
    .locals 1

    .prologue
    .line 3419
    iget-object v0, p0, Lcom/mapabc/mapapi/core/CommonProtoBuf$Spellcorrect$Builder;->data_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/LazyStringList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getDataCount()I
    .locals 1

    .prologue
    .line 3416
    iget-object v0, p0, Lcom/mapabc/mapapi/core/CommonProtoBuf$Spellcorrect$Builder;->data_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0}, Lcom/google/protobuf/LazyStringList;->size()I

    move-result v0

    return v0
.end method

.method public getDataList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 3413
    iget-object v0, p0, Lcom/mapabc/mapapi/core/CommonProtoBuf$Spellcorrect$Builder;->data_:Lcom/google/protobuf/LazyStringList;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 3259
    invoke-virtual {p0}, Lcom/mapabc/mapapi/core/CommonProtoBuf$Spellcorrect$Builder;->getDefaultInstanceForType()Lcom/mapabc/mapapi/core/CommonProtoBuf$Spellcorrect;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 3259
    invoke-virtual {p0}, Lcom/mapabc/mapapi/core/CommonProtoBuf$Spellcorrect$Builder;->getDefaultInstanceForType()Lcom/mapabc/mapapi/core/CommonProtoBuf$Spellcorrect;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/mapabc/mapapi/core/CommonProtoBuf$Spellcorrect;
    .locals 1

    .prologue
    .line 3306
    invoke-static {}, Lcom/mapabc/mapapi/core/CommonProtoBuf$Spellcorrect;->getDefaultInstance()Lcom/mapabc/mapapi/core/CommonProtoBuf$Spellcorrect;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 3302
    invoke-static {}, Lcom/mapabc/mapapi/core/CommonProtoBuf$Spellcorrect;->getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method protected internalGetFieldAccessorTable()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 1

    .prologue
    .line 3269
    # getter for: Lcom/mapabc/mapapi/core/CommonProtoBuf;->internal_static_Spellcorrect_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    invoke-static {}, Lcom/mapabc/mapapi/core/CommonProtoBuf;->access$4300()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 1

    .prologue
    .line 3366
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
    .line 3259
    invoke-virtual {p0, p1, p2}, Lcom/mapabc/mapapi/core/CommonProtoBuf$Spellcorrect$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/mapabc/mapapi/core/CommonProtoBuf$Spellcorrect$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 3259
    invoke-virtual {p0, p1}, Lcom/mapabc/mapapi/core/CommonProtoBuf$Spellcorrect$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/mapabc/mapapi/core/CommonProtoBuf$Spellcorrect$Builder;

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
    .line 3259
    invoke-virtual {p0, p1, p2}, Lcom/mapabc/mapapi/core/CommonProtoBuf$Spellcorrect$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/mapabc/mapapi/core/CommonProtoBuf$Spellcorrect$Builder;

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
    .line 3259
    invoke-virtual {p0, p1, p2}, Lcom/mapabc/mapapi/core/CommonProtoBuf$Spellcorrect$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/mapabc/mapapi/core/CommonProtoBuf$Spellcorrect$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 3259
    invoke-virtual {p0, p1}, Lcom/mapabc/mapapi/core/CommonProtoBuf$Spellcorrect$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/mapabc/mapapi/core/CommonProtoBuf$Spellcorrect$Builder;

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
    .line 3259
    invoke-virtual {p0, p1, p2}, Lcom/mapabc/mapapi/core/CommonProtoBuf$Spellcorrect$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/mapabc/mapapi/core/CommonProtoBuf$Spellcorrect$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/mapabc/mapapi/core/CommonProtoBuf$Spellcorrect$Builder;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 3373
    invoke-virtual {p0}, Lcom/mapabc/mapapi/core/CommonProtoBuf$Spellcorrect$Builder;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v0

    invoke-static {v0}, Lcom/google/protobuf/UnknownFieldSet;->newBuilder(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/UnknownFieldSet$Builder;

    move-result-object v0

    .line 3377
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v1

    .line 3378
    sparse-switch v1, :sswitch_data_0

    .line 3384
    invoke-virtual {p0, p1, v0, p2, v1}, Lcom/mapabc/mapapi/core/CommonProtoBuf$Spellcorrect$Builder;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/UnknownFieldSet$Builder;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 3386
    invoke-virtual {v0}, Lcom/google/protobuf/UnknownFieldSet$Builder;->build()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mapabc/mapapi/core/CommonProtoBuf$Spellcorrect$Builder;->setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessage$Builder;

    .line 3387
    invoke-virtual {p0}, Lcom/mapabc/mapapi/core/CommonProtoBuf$Spellcorrect$Builder;->onChanged()V

    .line 3388
    :goto_1
    return-object p0

    .line 3380
    :sswitch_0
    invoke-virtual {v0}, Lcom/google/protobuf/UnknownFieldSet$Builder;->build()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mapabc/mapapi/core/CommonProtoBuf$Spellcorrect$Builder;->setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessage$Builder;

    .line 3381
    invoke-virtual {p0}, Lcom/mapabc/mapapi/core/CommonProtoBuf$Spellcorrect$Builder;->onChanged()V

    goto :goto_1

    .line 3393
    :sswitch_1
    invoke-direct {p0}, Lcom/mapabc/mapapi/core/CommonProtoBuf$Spellcorrect$Builder;->ensureDataIsMutable()V

    .line 3394
    iget-object v1, p0, Lcom/mapabc/mapapi/core/CommonProtoBuf$Spellcorrect$Builder;->data_:Lcom/google/protobuf/LazyStringList;

    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/google/protobuf/LazyStringList;->add(Lcom/google/protobuf/ByteString;)V

    goto :goto_0

    .line 3378
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
    .end sparse-switch
.end method

.method public mergeFrom(Lcom/google/protobuf/Message;)Lcom/mapabc/mapapi/core/CommonProtoBuf$Spellcorrect$Builder;
    .locals 1

    .prologue
    .line 3341
    instance-of v0, p1, Lcom/mapabc/mapapi/core/CommonProtoBuf$Spellcorrect;

    if-eqz v0, :cond_0

    .line 3342
    check-cast p1, Lcom/mapabc/mapapi/core/CommonProtoBuf$Spellcorrect;

    invoke-virtual {p0, p1}, Lcom/mapabc/mapapi/core/CommonProtoBuf$Spellcorrect$Builder;->mergeFrom(Lcom/mapabc/mapapi/core/CommonProtoBuf$Spellcorrect;)Lcom/mapabc/mapapi/core/CommonProtoBuf$Spellcorrect$Builder;

    move-result-object p0

    .line 3345
    :goto_0
    return-object p0

    .line 3344
    :cond_0
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessage$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;

    goto :goto_0
.end method

.method public mergeFrom(Lcom/mapabc/mapapi/core/CommonProtoBuf$Spellcorrect;)Lcom/mapabc/mapapi/core/CommonProtoBuf$Spellcorrect$Builder;
    .locals 2

    .prologue
    .line 3350
    invoke-static {}, Lcom/mapabc/mapapi/core/CommonProtoBuf$Spellcorrect;->getDefaultInstance()Lcom/mapabc/mapapi/core/CommonProtoBuf$Spellcorrect;

    move-result-object v0

    if-ne p1, v0, :cond_0

    .line 3362
    :goto_0
    return-object p0

    .line 3351
    :cond_0
    # getter for: Lcom/mapabc/mapapi/core/CommonProtoBuf$Spellcorrect;->data_:Lcom/google/protobuf/LazyStringList;
    invoke-static {p1}, Lcom/mapabc/mapapi/core/CommonProtoBuf$Spellcorrect;->access$4900(Lcom/mapabc/mapapi/core/CommonProtoBuf$Spellcorrect;)Lcom/google/protobuf/LazyStringList;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/protobuf/LazyStringList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 3352
    iget-object v0, p0, Lcom/mapabc/mapapi/core/CommonProtoBuf$Spellcorrect$Builder;->data_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0}, Lcom/google/protobuf/LazyStringList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3353
    # getter for: Lcom/mapabc/mapapi/core/CommonProtoBuf$Spellcorrect;->data_:Lcom/google/protobuf/LazyStringList;
    invoke-static {p1}, Lcom/mapabc/mapapi/core/CommonProtoBuf$Spellcorrect;->access$4900(Lcom/mapabc/mapapi/core/CommonProtoBuf$Spellcorrect;)Lcom/google/protobuf/LazyStringList;

    move-result-object v0

    iput-object v0, p0, Lcom/mapabc/mapapi/core/CommonProtoBuf$Spellcorrect$Builder;->data_:Lcom/google/protobuf/LazyStringList;

    .line 3354
    iget v0, p0, Lcom/mapabc/mapapi/core/CommonProtoBuf$Spellcorrect$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/mapabc/mapapi/core/CommonProtoBuf$Spellcorrect$Builder;->bitField0_:I

    .line 3359
    :goto_1
    invoke-virtual {p0}, Lcom/mapabc/mapapi/core/CommonProtoBuf$Spellcorrect$Builder;->onChanged()V

    .line 3361
    :cond_1
    invoke-virtual {p1}, Lcom/mapabc/mapapi/core/CommonProtoBuf$Spellcorrect;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mapabc/mapapi/core/CommonProtoBuf$Spellcorrect$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessage$Builder;

    goto :goto_0

    .line 3356
    :cond_2
    invoke-direct {p0}, Lcom/mapabc/mapapi/core/CommonProtoBuf$Spellcorrect$Builder;->ensureDataIsMutable()V

    .line 3357
    iget-object v0, p0, Lcom/mapabc/mapapi/core/CommonProtoBuf$Spellcorrect$Builder;->data_:Lcom/google/protobuf/LazyStringList;

    # getter for: Lcom/mapabc/mapapi/core/CommonProtoBuf$Spellcorrect;->data_:Lcom/google/protobuf/LazyStringList;
    invoke-static {p1}, Lcom/mapabc/mapapi/core/CommonProtoBuf$Spellcorrect;->access$4900(Lcom/mapabc/mapapi/core/CommonProtoBuf$Spellcorrect;)Lcom/google/protobuf/LazyStringList;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/protobuf/LazyStringList;->addAll(Ljava/util/Collection;)Z

    goto :goto_1
.end method

.method public setData(ILjava/lang/String;)Lcom/mapabc/mapapi/core/CommonProtoBuf$Spellcorrect$Builder;
    .locals 1

    .prologue
    .line 3423
    if-nez p2, :cond_0

    .line 3424
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 3426
    :cond_0
    invoke-direct {p0}, Lcom/mapabc/mapapi/core/CommonProtoBuf$Spellcorrect$Builder;->ensureDataIsMutable()V

    .line 3427
    iget-object v0, p0, Lcom/mapabc/mapapi/core/CommonProtoBuf$Spellcorrect$Builder;->data_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0, p1, p2}, Lcom/google/protobuf/LazyStringList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 3428
    invoke-virtual {p0}, Lcom/mapabc/mapapi/core/CommonProtoBuf$Spellcorrect$Builder;->onChanged()V

    .line 3429
    return-object p0
.end method
