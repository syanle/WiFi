.class public final Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$City$Builder;
.super Lcom/google/protobuf/GeneratedMessage$Builder;
.source "ReverseGeocodingProtoBuf.java"

# interfaces
.implements Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$CityOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$City;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessage$Builder",
        "<",
        "Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$City$Builder;",
        ">;",
        "Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$CityOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private code_:Ljava/lang/Object;

.field private name_:Ljava/lang/Object;

.field private tel_:Ljava/lang/Object;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 3077
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;-><init>()V

    .line 3229
    const-string v0, ""

    iput-object v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$City$Builder;->name_:Ljava/lang/Object;

    .line 3265
    const-string v0, ""

    iput-object v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$City$Builder;->code_:Ljava/lang/Object;

    .line 3301
    const-string v0, ""

    iput-object v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$City$Builder;->tel_:Ljava/lang/Object;

    .line 3078
    invoke-direct {p0}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$City$Builder;->maybeForceBuilderInitialization()V

    .line 3079
    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V
    .locals 1

    .prologue
    .line 3082
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessage$Builder;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V

    .line 3229
    const-string v0, ""

    iput-object v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$City$Builder;->name_:Ljava/lang/Object;

    .line 3265
    const-string v0, ""

    iput-object v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$City$Builder;->code_:Ljava/lang/Object;

    .line 3301
    const-string v0, ""

    iput-object v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$City$Builder;->tel_:Ljava/lang/Object;

    .line 3083
    invoke-direct {p0}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$City$Builder;->maybeForceBuilderInitialization()V

    .line 3084
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;Lcom/mapabc/mapapi/core/z;)V
    .locals 0

    .prologue
    .line 3063
    invoke-direct {p0, p1}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$City$Builder;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V

    return-void
.end method

.method static synthetic access$4500(Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$City$Builder;)Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$City;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 3063
    invoke-direct {p0}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$City$Builder;->buildParsed()Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$City;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$4600()Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$City$Builder;
    .locals 1

    .prologue
    .line 3063
    invoke-static {}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$City$Builder;->create()Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$City$Builder;

    move-result-object v0

    return-object v0
.end method

.method private buildParsed()Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$City;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 3127
    invoke-virtual {p0}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$City$Builder;->buildPartial()Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$City;

    move-result-object v0

    .line 3128
    invoke-virtual {v0}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$City;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_0

    .line 3129
    invoke-static {v0}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$City$Builder;->newUninitializedMessageException(Lcom/google/protobuf/Message;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/UninitializedMessageException;->asInvalidProtocolBufferException()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0

    .line 3132
    :cond_0
    return-object v0
.end method

.method private static create()Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$City$Builder;
    .locals 1

    .prologue
    .line 3090
    new-instance v0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$City$Builder;

    invoke-direct {v0}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$City$Builder;-><init>()V

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 3068
    # getter for: Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf;->internal_static_City_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;
    invoke-static {}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf;->access$4300()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .locals 1

    .prologue
    .line 3086
    # getter for: Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$City;->alwaysUseFieldBuilders:Z
    invoke-static {}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$City;->access$4800()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3088
    :cond_0
    return-void
.end method


# virtual methods
.method public bridge synthetic build()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 3063
    invoke-virtual {p0}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$City$Builder;->build()Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$City;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 3063
    invoke-virtual {p0}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$City$Builder;->build()Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$City;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$City;
    .locals 2

    .prologue
    .line 3118
    invoke-virtual {p0}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$City$Builder;->buildPartial()Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$City;

    move-result-object v0

    .line 3119
    invoke-virtual {v0}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$City;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_0

    .line 3120
    invoke-static {v0}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$City$Builder;->newUninitializedMessageException(Lcom/google/protobuf/Message;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0

    .line 3122
    :cond_0
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 3063
    invoke-virtual {p0}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$City$Builder;->buildPartial()Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$City;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 3063
    invoke-virtual {p0}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$City$Builder;->buildPartial()Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$City;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$City;
    .locals 5

    .prologue
    const/4 v0, 0x1

    .line 3136
    new-instance v2, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$City;

    const/4 v1, 0x0

    invoke-direct {v2, p0, v1}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$City;-><init>(Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$City$Builder;Lcom/mapabc/mapapi/core/z;)V

    .line 3137
    iget v3, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$City$Builder;->bitField0_:I

    .line 3138
    const/4 v1, 0x0

    .line 3139
    and-int/lit8 v4, v3, 0x1

    if-ne v4, v0, :cond_2

    .line 3142
    :goto_0
    iget-object v1, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$City$Builder;->name_:Ljava/lang/Object;

    # setter for: Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$City;->name_:Ljava/lang/Object;
    invoke-static {v2, v1}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$City;->access$5002(Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$City;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3143
    and-int/lit8 v1, v3, 0x2

    const/4 v4, 0x2

    if-ne v1, v4, :cond_0

    .line 3144
    or-int/lit8 v0, v0, 0x2

    .line 3146
    :cond_0
    iget-object v1, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$City$Builder;->code_:Ljava/lang/Object;

    # setter for: Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$City;->code_:Ljava/lang/Object;
    invoke-static {v2, v1}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$City;->access$5102(Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$City;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3147
    and-int/lit8 v1, v3, 0x4

    const/4 v3, 0x4

    if-ne v1, v3, :cond_1

    .line 3148
    or-int/lit8 v0, v0, 0x4

    .line 3150
    :cond_1
    iget-object v1, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$City$Builder;->tel_:Ljava/lang/Object;

    # setter for: Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$City;->tel_:Ljava/lang/Object;
    invoke-static {v2, v1}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$City;->access$5202(Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$City;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3151
    # setter for: Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$City;->bitField0_:I
    invoke-static {v2, v0}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$City;->access$5302(Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$City;I)I

    .line 3152
    invoke-virtual {p0}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$City$Builder;->onBuilt()V

    .line 3153
    return-object v2

    :cond_2
    move v0, v1

    goto :goto_0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 3063
    invoke-virtual {p0}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$City$Builder;->clear()Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$City$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessage$Builder;
    .locals 1

    .prologue
    .line 3063
    invoke-virtual {p0}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$City$Builder;->clear()Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$City$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 3063
    invoke-virtual {p0}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$City$Builder;->clear()Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$City$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 3063
    invoke-virtual {p0}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$City$Builder;->clear()Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$City$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$City$Builder;
    .locals 1

    .prologue
    .line 3094
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->clear()Lcom/google/protobuf/GeneratedMessage$Builder;

    .line 3095
    const-string v0, ""

    iput-object v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$City$Builder;->name_:Ljava/lang/Object;

    .line 3096
    iget v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$City$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$City$Builder;->bitField0_:I

    .line 3097
    const-string v0, ""

    iput-object v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$City$Builder;->code_:Ljava/lang/Object;

    .line 3098
    iget v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$City$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$City$Builder;->bitField0_:I

    .line 3099
    const-string v0, ""

    iput-object v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$City$Builder;->tel_:Ljava/lang/Object;

    .line 3100
    iget v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$City$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$City$Builder;->bitField0_:I

    .line 3101
    return-object p0
.end method

.method public clearCode()Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$City$Builder;
    .locals 1

    .prologue
    .line 3289
    iget v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$City$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$City$Builder;->bitField0_:I

    .line 3290
    invoke-static {}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$City;->getDefaultInstance()Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$City;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$City;->getCode()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$City$Builder;->code_:Ljava/lang/Object;

    .line 3291
    invoke-virtual {p0}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$City$Builder;->onChanged()V

    .line 3292
    return-object p0
.end method

.method public clearName()Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$City$Builder;
    .locals 1

    .prologue
    .line 3253
    iget v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$City$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$City$Builder;->bitField0_:I

    .line 3254
    invoke-static {}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$City;->getDefaultInstance()Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$City;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$City;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$City$Builder;->name_:Ljava/lang/Object;

    .line 3255
    invoke-virtual {p0}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$City$Builder;->onChanged()V

    .line 3256
    return-object p0
.end method

.method public clearTel()Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$City$Builder;
    .locals 1

    .prologue
    .line 3325
    iget v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$City$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$City$Builder;->bitField0_:I

    .line 3326
    invoke-static {}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$City;->getDefaultInstance()Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$City;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$City;->getTel()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$City$Builder;->tel_:Ljava/lang/Object;

    .line 3327
    invoke-virtual {p0}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$City$Builder;->onChanged()V

    .line 3328
    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 3063
    invoke-virtual {p0}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$City$Builder;->clone()Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$City$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .prologue
    .line 3063
    invoke-virtual {p0}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$City$Builder;->clone()Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$City$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessage$Builder;
    .locals 1

    .prologue
    .line 3063
    invoke-virtual {p0}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$City$Builder;->clone()Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$City$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 3063
    invoke-virtual {p0}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$City$Builder;->clone()Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$City$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 3063
    invoke-virtual {p0}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$City$Builder;->clone()Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$City$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$City$Builder;
    .locals 2

    .prologue
    .line 3105
    invoke-static {}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$City$Builder;->create()Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$City$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$City$Builder;->buildPartial()Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$City;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$City$Builder;->mergeFrom(Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$City;)Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$City$Builder;

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
    .line 3063
    invoke-virtual {p0}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$City$Builder;->clone()Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$City$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getCode()Ljava/lang/String;
    .locals 2

    .prologue
    .line 3270
    iget-object v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$City$Builder;->code_:Ljava/lang/Object;

    .line 3271
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_0

    .line 3272
    check-cast v0, Lcom/google/protobuf/ByteString;

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 3273
    iput-object v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$City$Builder;->code_:Ljava/lang/Object;

    .line 3276
    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Ljava/lang/String;

    goto :goto_0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 3063
    invoke-virtual {p0}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$City$Builder;->getDefaultInstanceForType()Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$City;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 3063
    invoke-virtual {p0}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$City$Builder;->getDefaultInstanceForType()Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$City;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$City;
    .locals 1

    .prologue
    .line 3114
    invoke-static {}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$City;->getDefaultInstance()Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$City;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 3110
    invoke-static {}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$City;->getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 3234
    iget-object v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$City$Builder;->name_:Ljava/lang/Object;

    .line 3235
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_0

    .line 3236
    check-cast v0, Lcom/google/protobuf/ByteString;

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 3237
    iput-object v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$City$Builder;->name_:Ljava/lang/Object;

    .line 3240
    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Ljava/lang/String;

    goto :goto_0
.end method

.method public getTel()Ljava/lang/String;
    .locals 2

    .prologue
    .line 3306
    iget-object v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$City$Builder;->tel_:Ljava/lang/Object;

    .line 3307
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_0

    .line 3308
    check-cast v0, Lcom/google/protobuf/ByteString;

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 3309
    iput-object v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$City$Builder;->tel_:Ljava/lang/Object;

    .line 3312
    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Ljava/lang/String;

    goto :goto_0
.end method

.method public hasCode()Z
    .locals 2

    .prologue
    .line 3267
    iget v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$City$Builder;->bitField0_:I

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

    .line 3231
    iget v1, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$City$Builder;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasTel()Z
    .locals 2

    .prologue
    .line 3303
    iget v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$City$Builder;->bitField0_:I

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
    .line 3073
    # getter for: Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf;->internal_static_City_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    invoke-static {}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf;->access$4400()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 1

    .prologue
    .line 3181
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
    .line 3063
    invoke-virtual {p0, p1, p2}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$City$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$City$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 3063
    invoke-virtual {p0, p1}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$City$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$City$Builder;

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
    .line 3063
    invoke-virtual {p0, p1, p2}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$City$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$City$Builder;

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
    .line 3063
    invoke-virtual {p0, p1, p2}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$City$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$City$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 3063
    invoke-virtual {p0, p1}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$City$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$City$Builder;

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
    .line 3063
    invoke-virtual {p0, p1, p2}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$City$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$City$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$City$Builder;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 3188
    invoke-virtual {p0}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$City$Builder;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v0

    invoke-static {v0}, Lcom/google/protobuf/UnknownFieldSet;->newBuilder(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/UnknownFieldSet$Builder;

    move-result-object v0

    .line 3192
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v1

    .line 3193
    sparse-switch v1, :sswitch_data_0

    .line 3199
    invoke-virtual {p0, p1, v0, p2, v1}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$City$Builder;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/UnknownFieldSet$Builder;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 3201
    invoke-virtual {v0}, Lcom/google/protobuf/UnknownFieldSet$Builder;->build()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$City$Builder;->setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessage$Builder;

    .line 3202
    invoke-virtual {p0}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$City$Builder;->onChanged()V

    .line 3203
    :goto_1
    return-object p0

    .line 3195
    :sswitch_0
    invoke-virtual {v0}, Lcom/google/protobuf/UnknownFieldSet$Builder;->build()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$City$Builder;->setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessage$Builder;

    .line 3196
    invoke-virtual {p0}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$City$Builder;->onChanged()V

    goto :goto_1

    .line 3208
    :sswitch_1
    iget v1, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$City$Builder;->bitField0_:I

    or-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$City$Builder;->bitField0_:I

    .line 3209
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    iput-object v1, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$City$Builder;->name_:Ljava/lang/Object;

    goto :goto_0

    .line 3213
    :sswitch_2
    iget v1, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$City$Builder;->bitField0_:I

    or-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$City$Builder;->bitField0_:I

    .line 3214
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    iput-object v1, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$City$Builder;->code_:Ljava/lang/Object;

    goto :goto_0

    .line 3218
    :sswitch_3
    iget v1, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$City$Builder;->bitField0_:I

    or-int/lit8 v1, v1, 0x4

    iput v1, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$City$Builder;->bitField0_:I

    .line 3219
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    iput-object v1, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$City$Builder;->tel_:Ljava/lang/Object;

    goto :goto_0

    .line 3193
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
        0x1a -> :sswitch_3
    .end sparse-switch
.end method

.method public mergeFrom(Lcom/google/protobuf/Message;)Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$City$Builder;
    .locals 1

    .prologue
    .line 3157
    instance-of v0, p1, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$City;

    if-eqz v0, :cond_0

    .line 3158
    check-cast p1, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$City;

    invoke-virtual {p0, p1}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$City$Builder;->mergeFrom(Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$City;)Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$City$Builder;

    move-result-object p0

    .line 3161
    :goto_0
    return-object p0

    .line 3160
    :cond_0
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessage$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;

    goto :goto_0
.end method

.method public mergeFrom(Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$City;)Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$City$Builder;
    .locals 1

    .prologue
    .line 3166
    invoke-static {}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$City;->getDefaultInstance()Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$City;

    move-result-object v0

    if-ne p1, v0, :cond_0

    .line 3177
    :goto_0
    return-object p0

    .line 3167
    :cond_0
    invoke-virtual {p1}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$City;->hasName()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3168
    invoke-virtual {p1}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$City;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$City$Builder;->setName(Ljava/lang/String;)Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$City$Builder;

    .line 3170
    :cond_1
    invoke-virtual {p1}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$City;->hasCode()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3171
    invoke-virtual {p1}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$City;->getCode()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$City$Builder;->setCode(Ljava/lang/String;)Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$City$Builder;

    .line 3173
    :cond_2
    invoke-virtual {p1}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$City;->hasTel()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 3174
    invoke-virtual {p1}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$City;->getTel()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$City$Builder;->setTel(Ljava/lang/String;)Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$City$Builder;

    .line 3176
    :cond_3
    invoke-virtual {p1}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$City;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$City$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessage$Builder;

    goto :goto_0
.end method

.method public setCode(Ljava/lang/String;)Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$City$Builder;
    .locals 1

    .prologue
    .line 3280
    if-nez p1, :cond_0

    .line 3281
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 3283
    :cond_0
    iget v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$City$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$City$Builder;->bitField0_:I

    .line 3284
    iput-object p1, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$City$Builder;->code_:Ljava/lang/Object;

    .line 3285
    invoke-virtual {p0}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$City$Builder;->onChanged()V

    .line 3286
    return-object p0
.end method

.method setCode(Lcom/google/protobuf/ByteString;)V
    .locals 1

    .prologue
    .line 3295
    iget v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$City$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$City$Builder;->bitField0_:I

    .line 3296
    iput-object p1, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$City$Builder;->code_:Ljava/lang/Object;

    .line 3297
    invoke-virtual {p0}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$City$Builder;->onChanged()V

    .line 3298
    return-void
.end method

.method public setName(Ljava/lang/String;)Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$City$Builder;
    .locals 1

    .prologue
    .line 3244
    if-nez p1, :cond_0

    .line 3245
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 3247
    :cond_0
    iget v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$City$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$City$Builder;->bitField0_:I

    .line 3248
    iput-object p1, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$City$Builder;->name_:Ljava/lang/Object;

    .line 3249
    invoke-virtual {p0}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$City$Builder;->onChanged()V

    .line 3250
    return-object p0
.end method

.method setName(Lcom/google/protobuf/ByteString;)V
    .locals 1

    .prologue
    .line 3259
    iget v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$City$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$City$Builder;->bitField0_:I

    .line 3260
    iput-object p1, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$City$Builder;->name_:Ljava/lang/Object;

    .line 3261
    invoke-virtual {p0}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$City$Builder;->onChanged()V

    .line 3262
    return-void
.end method

.method public setTel(Ljava/lang/String;)Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$City$Builder;
    .locals 1

    .prologue
    .line 3316
    if-nez p1, :cond_0

    .line 3317
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 3319
    :cond_0
    iget v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$City$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$City$Builder;->bitField0_:I

    .line 3320
    iput-object p1, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$City$Builder;->tel_:Ljava/lang/Object;

    .line 3321
    invoke-virtual {p0}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$City$Builder;->onChanged()V

    .line 3322
    return-object p0
.end method

.method setTel(Lcom/google/protobuf/ByteString;)V
    .locals 1

    .prologue
    .line 3331
    iget v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$City$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$City$Builder;->bitField0_:I

    .line 3332
    iput-object p1, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$City$Builder;->tel_:Ljava/lang/Object;

    .line 3333
    invoke-virtual {p0}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$City$Builder;->onChanged()V

    .line 3334
    return-void
.end method
