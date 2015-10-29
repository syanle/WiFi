.class public final Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$SubPOI$Builder;
.super Lcom/google/protobuf/GeneratedMessage$Builder;
.source "GeocodingProtoBuf.java"

# interfaces
.implements Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$SubPOIOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$SubPOI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessage$Builder",
        "<",
        "Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$SubPOI$Builder;",
        ">;",
        "Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$SubPOIOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private ename_:Ljava/lang/Object;

.field private name_:Ljava/lang/Object;

.field private x_:Ljava/lang/Object;

.field private y_:Ljava/lang/Object;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 5070
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;-><init>()V

    .line 5236
    const-string v0, ""

    iput-object v0, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$SubPOI$Builder;->name_:Ljava/lang/Object;

    .line 5272
    const-string v0, ""

    iput-object v0, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$SubPOI$Builder;->ename_:Ljava/lang/Object;

    .line 5308
    const-string v0, ""

    iput-object v0, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$SubPOI$Builder;->x_:Ljava/lang/Object;

    .line 5344
    const-string v0, ""

    iput-object v0, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$SubPOI$Builder;->y_:Ljava/lang/Object;

    .line 5071
    invoke-direct {p0}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$SubPOI$Builder;->maybeForceBuilderInitialization()V

    .line 5072
    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V
    .locals 1

    .prologue
    .line 5075
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessage$Builder;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V

    .line 5236
    const-string v0, ""

    iput-object v0, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$SubPOI$Builder;->name_:Ljava/lang/Object;

    .line 5272
    const-string v0, ""

    iput-object v0, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$SubPOI$Builder;->ename_:Ljava/lang/Object;

    .line 5308
    const-string v0, ""

    iput-object v0, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$SubPOI$Builder;->x_:Ljava/lang/Object;

    .line 5344
    const-string v0, ""

    iput-object v0, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$SubPOI$Builder;->y_:Ljava/lang/Object;

    .line 5076
    invoke-direct {p0}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$SubPOI$Builder;->maybeForceBuilderInitialization()V

    .line 5077
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;Lcom/mapabc/mapapi/geocoder/c;)V
    .locals 0

    .prologue
    .line 5056
    invoke-direct {p0, p1}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$SubPOI$Builder;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V

    return-void
.end method

.method static synthetic access$7100(Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$SubPOI$Builder;)Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$SubPOI;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 5056
    invoke-direct {p0}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$SubPOI$Builder;->buildParsed()Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$SubPOI;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$7200()Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$SubPOI$Builder;
    .locals 1

    .prologue
    .line 5056
    invoke-static {}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$SubPOI$Builder;->create()Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$SubPOI$Builder;

    move-result-object v0

    return-object v0
.end method

.method private buildParsed()Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$SubPOI;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 5122
    invoke-virtual {p0}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$SubPOI$Builder;->buildPartial()Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$SubPOI;

    move-result-object v0

    .line 5123
    invoke-virtual {v0}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$SubPOI;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_0

    .line 5124
    invoke-static {v0}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$SubPOI$Builder;->newUninitializedMessageException(Lcom/google/protobuf/Message;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/UninitializedMessageException;->asInvalidProtocolBufferException()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0

    .line 5127
    :cond_0
    return-object v0
.end method

.method private static create()Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$SubPOI$Builder;
    .locals 1

    .prologue
    .line 5083
    new-instance v0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$SubPOI$Builder;

    invoke-direct {v0}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$SubPOI$Builder;-><init>()V

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 5061
    # getter for: Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf;->internal_static_SubPOI_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;
    invoke-static {}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf;->access$6900()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .locals 1

    .prologue
    .line 5079
    # getter for: Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$SubPOI;->alwaysUseFieldBuilders:Z
    invoke-static {}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$SubPOI;->access$7400()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5081
    :cond_0
    return-void
.end method


# virtual methods
.method public bridge synthetic build()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 5056
    invoke-virtual {p0}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$SubPOI$Builder;->build()Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$SubPOI;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 5056
    invoke-virtual {p0}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$SubPOI$Builder;->build()Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$SubPOI;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$SubPOI;
    .locals 2

    .prologue
    .line 5113
    invoke-virtual {p0}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$SubPOI$Builder;->buildPartial()Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$SubPOI;

    move-result-object v0

    .line 5114
    invoke-virtual {v0}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$SubPOI;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_0

    .line 5115
    invoke-static {v0}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$SubPOI$Builder;->newUninitializedMessageException(Lcom/google/protobuf/Message;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0

    .line 5117
    :cond_0
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 5056
    invoke-virtual {p0}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$SubPOI$Builder;->buildPartial()Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$SubPOI;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 5056
    invoke-virtual {p0}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$SubPOI$Builder;->buildPartial()Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$SubPOI;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$SubPOI;
    .locals 5

    .prologue
    const/4 v0, 0x1

    .line 5131
    new-instance v2, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$SubPOI;

    const/4 v1, 0x0

    invoke-direct {v2, p0, v1}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$SubPOI;-><init>(Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$SubPOI$Builder;Lcom/mapabc/mapapi/geocoder/c;)V

    .line 5132
    iget v3, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$SubPOI$Builder;->bitField0_:I

    .line 5133
    const/4 v1, 0x0

    .line 5134
    and-int/lit8 v4, v3, 0x1

    if-ne v4, v0, :cond_3

    .line 5137
    :goto_0
    iget-object v1, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$SubPOI$Builder;->name_:Ljava/lang/Object;

    # setter for: Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$SubPOI;->name_:Ljava/lang/Object;
    invoke-static {v2, v1}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$SubPOI;->access$7602(Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$SubPOI;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5138
    and-int/lit8 v1, v3, 0x2

    const/4 v4, 0x2

    if-ne v1, v4, :cond_0

    .line 5139
    or-int/lit8 v0, v0, 0x2

    .line 5141
    :cond_0
    iget-object v1, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$SubPOI$Builder;->ename_:Ljava/lang/Object;

    # setter for: Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$SubPOI;->ename_:Ljava/lang/Object;
    invoke-static {v2, v1}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$SubPOI;->access$7702(Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$SubPOI;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5142
    and-int/lit8 v1, v3, 0x4

    const/4 v4, 0x4

    if-ne v1, v4, :cond_1

    .line 5143
    or-int/lit8 v0, v0, 0x4

    .line 5145
    :cond_1
    iget-object v1, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$SubPOI$Builder;->x_:Ljava/lang/Object;

    # setter for: Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$SubPOI;->x_:Ljava/lang/Object;
    invoke-static {v2, v1}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$SubPOI;->access$7802(Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$SubPOI;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5146
    and-int/lit8 v1, v3, 0x8

    const/16 v3, 0x8

    if-ne v1, v3, :cond_2

    .line 5147
    or-int/lit8 v0, v0, 0x8

    .line 5149
    :cond_2
    iget-object v1, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$SubPOI$Builder;->y_:Ljava/lang/Object;

    # setter for: Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$SubPOI;->y_:Ljava/lang/Object;
    invoke-static {v2, v1}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$SubPOI;->access$7902(Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$SubPOI;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5150
    # setter for: Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$SubPOI;->bitField0_:I
    invoke-static {v2, v0}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$SubPOI;->access$8002(Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$SubPOI;I)I

    .line 5151
    invoke-virtual {p0}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$SubPOI$Builder;->onBuilt()V

    .line 5152
    return-object v2

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 5056
    invoke-virtual {p0}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$SubPOI$Builder;->clear()Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$SubPOI$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessage$Builder;
    .locals 1

    .prologue
    .line 5056
    invoke-virtual {p0}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$SubPOI$Builder;->clear()Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$SubPOI$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 5056
    invoke-virtual {p0}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$SubPOI$Builder;->clear()Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$SubPOI$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 5056
    invoke-virtual {p0}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$SubPOI$Builder;->clear()Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$SubPOI$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$SubPOI$Builder;
    .locals 1

    .prologue
    .line 5087
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->clear()Lcom/google/protobuf/GeneratedMessage$Builder;

    .line 5088
    const-string v0, ""

    iput-object v0, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$SubPOI$Builder;->name_:Ljava/lang/Object;

    .line 5089
    iget v0, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$SubPOI$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$SubPOI$Builder;->bitField0_:I

    .line 5090
    const-string v0, ""

    iput-object v0, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$SubPOI$Builder;->ename_:Ljava/lang/Object;

    .line 5091
    iget v0, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$SubPOI$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$SubPOI$Builder;->bitField0_:I

    .line 5092
    const-string v0, ""

    iput-object v0, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$SubPOI$Builder;->x_:Ljava/lang/Object;

    .line 5093
    iget v0, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$SubPOI$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$SubPOI$Builder;->bitField0_:I

    .line 5094
    const-string v0, ""

    iput-object v0, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$SubPOI$Builder;->y_:Ljava/lang/Object;

    .line 5095
    iget v0, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$SubPOI$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$SubPOI$Builder;->bitField0_:I

    .line 5096
    return-object p0
.end method

.method public clearEname()Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$SubPOI$Builder;
    .locals 1

    .prologue
    .line 5296
    iget v0, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$SubPOI$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$SubPOI$Builder;->bitField0_:I

    .line 5297
    invoke-static {}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$SubPOI;->getDefaultInstance()Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$SubPOI;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$SubPOI;->getEname()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$SubPOI$Builder;->ename_:Ljava/lang/Object;

    .line 5298
    invoke-virtual {p0}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$SubPOI$Builder;->onChanged()V

    .line 5299
    return-object p0
.end method

.method public clearName()Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$SubPOI$Builder;
    .locals 1

    .prologue
    .line 5260
    iget v0, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$SubPOI$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$SubPOI$Builder;->bitField0_:I

    .line 5261
    invoke-static {}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$SubPOI;->getDefaultInstance()Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$SubPOI;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$SubPOI;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$SubPOI$Builder;->name_:Ljava/lang/Object;

    .line 5262
    invoke-virtual {p0}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$SubPOI$Builder;->onChanged()V

    .line 5263
    return-object p0
.end method

.method public clearX()Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$SubPOI$Builder;
    .locals 1

    .prologue
    .line 5332
    iget v0, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$SubPOI$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$SubPOI$Builder;->bitField0_:I

    .line 5333
    invoke-static {}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$SubPOI;->getDefaultInstance()Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$SubPOI;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$SubPOI;->getX()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$SubPOI$Builder;->x_:Ljava/lang/Object;

    .line 5334
    invoke-virtual {p0}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$SubPOI$Builder;->onChanged()V

    .line 5335
    return-object p0
.end method

.method public clearY()Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$SubPOI$Builder;
    .locals 1

    .prologue
    .line 5368
    iget v0, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$SubPOI$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$SubPOI$Builder;->bitField0_:I

    .line 5369
    invoke-static {}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$SubPOI;->getDefaultInstance()Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$SubPOI;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$SubPOI;->getY()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$SubPOI$Builder;->y_:Ljava/lang/Object;

    .line 5370
    invoke-virtual {p0}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$SubPOI$Builder;->onChanged()V

    .line 5371
    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 5056
    invoke-virtual {p0}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$SubPOI$Builder;->clone()Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$SubPOI$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .prologue
    .line 5056
    invoke-virtual {p0}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$SubPOI$Builder;->clone()Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$SubPOI$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessage$Builder;
    .locals 1

    .prologue
    .line 5056
    invoke-virtual {p0}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$SubPOI$Builder;->clone()Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$SubPOI$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 5056
    invoke-virtual {p0}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$SubPOI$Builder;->clone()Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$SubPOI$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 5056
    invoke-virtual {p0}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$SubPOI$Builder;->clone()Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$SubPOI$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$SubPOI$Builder;
    .locals 2

    .prologue
    .line 5100
    invoke-static {}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$SubPOI$Builder;->create()Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$SubPOI$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$SubPOI$Builder;->buildPartial()Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$SubPOI;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$SubPOI$Builder;->mergeFrom(Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$SubPOI;)Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$SubPOI$Builder;

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
    .line 5056
    invoke-virtual {p0}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$SubPOI$Builder;->clone()Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$SubPOI$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 5056
    invoke-virtual {p0}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$SubPOI$Builder;->getDefaultInstanceForType()Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$SubPOI;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 5056
    invoke-virtual {p0}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$SubPOI$Builder;->getDefaultInstanceForType()Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$SubPOI;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$SubPOI;
    .locals 1

    .prologue
    .line 5109
    invoke-static {}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$SubPOI;->getDefaultInstance()Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$SubPOI;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 5105
    invoke-static {}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$SubPOI;->getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public getEname()Ljava/lang/String;
    .locals 2

    .prologue
    .line 5277
    iget-object v0, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$SubPOI$Builder;->ename_:Ljava/lang/Object;

    .line 5278
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_0

    .line 5279
    check-cast v0, Lcom/google/protobuf/ByteString;

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 5280
    iput-object v0, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$SubPOI$Builder;->ename_:Ljava/lang/Object;

    .line 5283
    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Ljava/lang/String;

    goto :goto_0
.end method

.method public getName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 5241
    iget-object v0, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$SubPOI$Builder;->name_:Ljava/lang/Object;

    .line 5242
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_0

    .line 5243
    check-cast v0, Lcom/google/protobuf/ByteString;

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 5244
    iput-object v0, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$SubPOI$Builder;->name_:Ljava/lang/Object;

    .line 5247
    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Ljava/lang/String;

    goto :goto_0
.end method

.method public getX()Ljava/lang/String;
    .locals 2

    .prologue
    .line 5313
    iget-object v0, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$SubPOI$Builder;->x_:Ljava/lang/Object;

    .line 5314
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_0

    .line 5315
    check-cast v0, Lcom/google/protobuf/ByteString;

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 5316
    iput-object v0, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$SubPOI$Builder;->x_:Ljava/lang/Object;

    .line 5319
    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Ljava/lang/String;

    goto :goto_0
.end method

.method public getY()Ljava/lang/String;
    .locals 2

    .prologue
    .line 5349
    iget-object v0, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$SubPOI$Builder;->y_:Ljava/lang/Object;

    .line 5350
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_0

    .line 5351
    check-cast v0, Lcom/google/protobuf/ByteString;

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 5352
    iput-object v0, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$SubPOI$Builder;->y_:Ljava/lang/Object;

    .line 5355
    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Ljava/lang/String;

    goto :goto_0
.end method

.method public hasEname()Z
    .locals 2

    .prologue
    .line 5274
    iget v0, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$SubPOI$Builder;->bitField0_:I

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

.method public hasName()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 5238
    iget v1, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$SubPOI$Builder;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasX()Z
    .locals 2

    .prologue
    .line 5310
    iget v0, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$SubPOI$Builder;->bitField0_:I

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

.method public hasY()Z
    .locals 2

    .prologue
    .line 5346
    iget v0, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$SubPOI$Builder;->bitField0_:I

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
    .line 5066
    # getter for: Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf;->internal_static_SubPOI_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    invoke-static {}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf;->access$7000()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 1

    .prologue
    .line 5183
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
    .line 5056
    invoke-virtual {p0, p1, p2}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$SubPOI$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$SubPOI$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 5056
    invoke-virtual {p0, p1}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$SubPOI$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$SubPOI$Builder;

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
    .line 5056
    invoke-virtual {p0, p1, p2}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$SubPOI$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$SubPOI$Builder;

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
    .line 5056
    invoke-virtual {p0, p1, p2}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$SubPOI$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$SubPOI$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 5056
    invoke-virtual {p0, p1}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$SubPOI$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$SubPOI$Builder;

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
    .line 5056
    invoke-virtual {p0, p1, p2}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$SubPOI$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$SubPOI$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$SubPOI$Builder;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 5190
    invoke-virtual {p0}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$SubPOI$Builder;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v0

    invoke-static {v0}, Lcom/google/protobuf/UnknownFieldSet;->newBuilder(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/UnknownFieldSet$Builder;

    move-result-object v0

    .line 5194
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v1

    .line 5195
    sparse-switch v1, :sswitch_data_0

    .line 5201
    invoke-virtual {p0, p1, v0, p2, v1}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$SubPOI$Builder;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/UnknownFieldSet$Builder;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 5203
    invoke-virtual {v0}, Lcom/google/protobuf/UnknownFieldSet$Builder;->build()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$SubPOI$Builder;->setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessage$Builder;

    .line 5204
    invoke-virtual {p0}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$SubPOI$Builder;->onChanged()V

    .line 5205
    :goto_1
    return-object p0

    .line 5197
    :sswitch_0
    invoke-virtual {v0}, Lcom/google/protobuf/UnknownFieldSet$Builder;->build()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$SubPOI$Builder;->setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessage$Builder;

    .line 5198
    invoke-virtual {p0}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$SubPOI$Builder;->onChanged()V

    goto :goto_1

    .line 5210
    :sswitch_1
    iget v1, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$SubPOI$Builder;->bitField0_:I

    or-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$SubPOI$Builder;->bitField0_:I

    .line 5211
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    iput-object v1, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$SubPOI$Builder;->name_:Ljava/lang/Object;

    goto :goto_0

    .line 5215
    :sswitch_2
    iget v1, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$SubPOI$Builder;->bitField0_:I

    or-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$SubPOI$Builder;->bitField0_:I

    .line 5216
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    iput-object v1, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$SubPOI$Builder;->ename_:Ljava/lang/Object;

    goto :goto_0

    .line 5220
    :sswitch_3
    iget v1, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$SubPOI$Builder;->bitField0_:I

    or-int/lit8 v1, v1, 0x4

    iput v1, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$SubPOI$Builder;->bitField0_:I

    .line 5221
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    iput-object v1, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$SubPOI$Builder;->x_:Ljava/lang/Object;

    goto :goto_0

    .line 5225
    :sswitch_4
    iget v1, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$SubPOI$Builder;->bitField0_:I

    or-int/lit8 v1, v1, 0x8

    iput v1, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$SubPOI$Builder;->bitField0_:I

    .line 5226
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    iput-object v1, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$SubPOI$Builder;->y_:Ljava/lang/Object;

    goto :goto_0

    .line 5195
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

.method public mergeFrom(Lcom/google/protobuf/Message;)Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$SubPOI$Builder;
    .locals 1

    .prologue
    .line 5156
    instance-of v0, p1, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$SubPOI;

    if-eqz v0, :cond_0

    .line 5157
    check-cast p1, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$SubPOI;

    invoke-virtual {p0, p1}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$SubPOI$Builder;->mergeFrom(Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$SubPOI;)Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$SubPOI$Builder;

    move-result-object p0

    .line 5160
    :goto_0
    return-object p0

    .line 5159
    :cond_0
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessage$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;

    goto :goto_0
.end method

.method public mergeFrom(Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$SubPOI;)Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$SubPOI$Builder;
    .locals 1

    .prologue
    .line 5165
    invoke-static {}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$SubPOI;->getDefaultInstance()Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$SubPOI;

    move-result-object v0

    if-ne p1, v0, :cond_0

    .line 5179
    :goto_0
    return-object p0

    .line 5166
    :cond_0
    invoke-virtual {p1}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$SubPOI;->hasName()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5167
    invoke-virtual {p1}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$SubPOI;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$SubPOI$Builder;->setName(Ljava/lang/String;)Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$SubPOI$Builder;

    .line 5169
    :cond_1
    invoke-virtual {p1}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$SubPOI;->hasEname()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 5170
    invoke-virtual {p1}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$SubPOI;->getEname()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$SubPOI$Builder;->setEname(Ljava/lang/String;)Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$SubPOI$Builder;

    .line 5172
    :cond_2
    invoke-virtual {p1}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$SubPOI;->hasX()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 5173
    invoke-virtual {p1}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$SubPOI;->getX()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$SubPOI$Builder;->setX(Ljava/lang/String;)Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$SubPOI$Builder;

    .line 5175
    :cond_3
    invoke-virtual {p1}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$SubPOI;->hasY()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 5176
    invoke-virtual {p1}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$SubPOI;->getY()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$SubPOI$Builder;->setY(Ljava/lang/String;)Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$SubPOI$Builder;

    .line 5178
    :cond_4
    invoke-virtual {p1}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$SubPOI;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$SubPOI$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessage$Builder;

    goto :goto_0
.end method

.method public setEname(Ljava/lang/String;)Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$SubPOI$Builder;
    .locals 1

    .prologue
    .line 5287
    if-nez p1, :cond_0

    .line 5288
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 5290
    :cond_0
    iget v0, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$SubPOI$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$SubPOI$Builder;->bitField0_:I

    .line 5291
    iput-object p1, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$SubPOI$Builder;->ename_:Ljava/lang/Object;

    .line 5292
    invoke-virtual {p0}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$SubPOI$Builder;->onChanged()V

    .line 5293
    return-object p0
.end method

.method setEname(Lcom/google/protobuf/ByteString;)V
    .locals 1

    .prologue
    .line 5302
    iget v0, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$SubPOI$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$SubPOI$Builder;->bitField0_:I

    .line 5303
    iput-object p1, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$SubPOI$Builder;->ename_:Ljava/lang/Object;

    .line 5304
    invoke-virtual {p0}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$SubPOI$Builder;->onChanged()V

    .line 5305
    return-void
.end method

.method public setName(Ljava/lang/String;)Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$SubPOI$Builder;
    .locals 1

    .prologue
    .line 5251
    if-nez p1, :cond_0

    .line 5252
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 5254
    :cond_0
    iget v0, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$SubPOI$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$SubPOI$Builder;->bitField0_:I

    .line 5255
    iput-object p1, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$SubPOI$Builder;->name_:Ljava/lang/Object;

    .line 5256
    invoke-virtual {p0}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$SubPOI$Builder;->onChanged()V

    .line 5257
    return-object p0
.end method

.method setName(Lcom/google/protobuf/ByteString;)V
    .locals 1

    .prologue
    .line 5266
    iget v0, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$SubPOI$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$SubPOI$Builder;->bitField0_:I

    .line 5267
    iput-object p1, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$SubPOI$Builder;->name_:Ljava/lang/Object;

    .line 5268
    invoke-virtual {p0}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$SubPOI$Builder;->onChanged()V

    .line 5269
    return-void
.end method

.method public setX(Ljava/lang/String;)Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$SubPOI$Builder;
    .locals 1

    .prologue
    .line 5323
    if-nez p1, :cond_0

    .line 5324
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 5326
    :cond_0
    iget v0, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$SubPOI$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$SubPOI$Builder;->bitField0_:I

    .line 5327
    iput-object p1, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$SubPOI$Builder;->x_:Ljava/lang/Object;

    .line 5328
    invoke-virtual {p0}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$SubPOI$Builder;->onChanged()V

    .line 5329
    return-object p0
.end method

.method setX(Lcom/google/protobuf/ByteString;)V
    .locals 1

    .prologue
    .line 5338
    iget v0, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$SubPOI$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$SubPOI$Builder;->bitField0_:I

    .line 5339
    iput-object p1, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$SubPOI$Builder;->x_:Ljava/lang/Object;

    .line 5340
    invoke-virtual {p0}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$SubPOI$Builder;->onChanged()V

    .line 5341
    return-void
.end method

.method public setY(Ljava/lang/String;)Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$SubPOI$Builder;
    .locals 1

    .prologue
    .line 5359
    if-nez p1, :cond_0

    .line 5360
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 5362
    :cond_0
    iget v0, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$SubPOI$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$SubPOI$Builder;->bitField0_:I

    .line 5363
    iput-object p1, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$SubPOI$Builder;->y_:Ljava/lang/Object;

    .line 5364
    invoke-virtual {p0}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$SubPOI$Builder;->onChanged()V

    .line 5365
    return-object p0
.end method

.method setY(Lcom/google/protobuf/ByteString;)V
    .locals 1

    .prologue
    .line 5374
    iget v0, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$SubPOI$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$SubPOI$Builder;->bitField0_:I

    .line 5375
    iput-object p1, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$SubPOI$Builder;->y_:Ljava/lang/Object;

    .line 5376
    invoke-virtual {p0}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$SubPOI$Builder;->onChanged()V

    .line 5377
    return-void
.end method
