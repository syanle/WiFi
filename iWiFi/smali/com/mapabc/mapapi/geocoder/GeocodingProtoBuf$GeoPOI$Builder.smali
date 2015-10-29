.class public final Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI$Builder;
.super Lcom/google/protobuf/GeneratedMessage$Builder;
.source "GeocodingProtoBuf.java"

# interfaces
.implements Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOIOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessage$Builder",
        "<",
        "Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI$Builder;",
        ">;",
        "Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOIOrBuilder;"
    }
.end annotation


# instance fields
.field private address_:Ljava/lang/Object;

.field private bitField0_:I

.field private city_:Ljava/lang/Object;

.field private district_:Ljava/lang/Object;

.field private eaddress_:Ljava/lang/Object;

.field private ecity_:Ljava/lang/Object;

.field private edistrict_:Ljava/lang/Object;

.field private ename_:Ljava/lang/Object;

.field private eprovince_:Ljava/lang/Object;

.field private inum_:Ljava/lang/Object;

.field private level_:Ljava/lang/Object;

.field private name_:Ljava/lang/Object;

.field private num_:Ljava/lang/Object;

.field private province_:Ljava/lang/Object;

.field private prox_:Ljava/lang/Object;

.field private range_:Ljava/lang/Object;

.field private roadpts_:Ljava/lang/Object;

.field private score_:Ljava/lang/Object;

.field private subpoisBuilder_:Lcom/google/protobuf/SingleFieldBuilder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/SingleFieldBuilder",
            "<",
            "Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$SubPOIS;",
            "Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$SubPOIS$Builder;",
            "Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$SubPOISOrBuilder;",
            ">;"
        }
    .end annotation
.end field

.field private subpois_:Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$SubPOIS;

.field private x_:Ljava/lang/Object;

.field private y_:Ljava/lang/Object;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 2979
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;-><init>()V

    .line 3398
    const-string v0, ""

    iput-object v0, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI$Builder;->name_:Ljava/lang/Object;

    .line 3434
    const-string v0, ""

    iput-object v0, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI$Builder;->level_:Ljava/lang/Object;

    .line 3470
    const-string v0, ""

    iput-object v0, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI$Builder;->x_:Ljava/lang/Object;

    .line 3506
    const-string v0, ""

    iput-object v0, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI$Builder;->y_:Ljava/lang/Object;

    .line 3542
    const-string v0, ""

    iput-object v0, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI$Builder;->address_:Ljava/lang/Object;

    .line 3578
    const-string v0, ""

    iput-object v0, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI$Builder;->province_:Ljava/lang/Object;

    .line 3614
    const-string v0, ""

    iput-object v0, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI$Builder;->city_:Ljava/lang/Object;

    .line 3650
    const-string v0, ""

    iput-object v0, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI$Builder;->ename_:Ljava/lang/Object;

    .line 3686
    const-string v0, ""

    iput-object v0, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI$Builder;->district_:Ljava/lang/Object;

    .line 3722
    const-string v0, ""

    iput-object v0, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI$Builder;->range_:Ljava/lang/Object;

    .line 3758
    const-string v0, ""

    iput-object v0, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI$Builder;->num_:Ljava/lang/Object;

    .line 3794
    const-string v0, ""

    iput-object v0, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI$Builder;->inum_:Ljava/lang/Object;

    .line 3830
    const-string v0, ""

    iput-object v0, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI$Builder;->prox_:Ljava/lang/Object;

    .line 3866
    const-string v0, ""

    iput-object v0, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI$Builder;->score_:Ljava/lang/Object;

    .line 3902
    const-string v0, ""

    iput-object v0, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI$Builder;->eprovince_:Ljava/lang/Object;

    .line 3938
    const-string v0, ""

    iput-object v0, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI$Builder;->ecity_:Ljava/lang/Object;

    .line 3974
    const-string v0, ""

    iput-object v0, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI$Builder;->edistrict_:Ljava/lang/Object;

    .line 4010
    const-string v0, ""

    iput-object v0, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI$Builder;->eaddress_:Ljava/lang/Object;

    .line 4046
    const-string v0, ""

    iput-object v0, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI$Builder;->roadpts_:Ljava/lang/Object;

    .line 4082
    invoke-static {}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$SubPOIS;->getDefaultInstance()Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$SubPOIS;

    move-result-object v0

    iput-object v0, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI$Builder;->subpois_:Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$SubPOIS;

    .line 2980
    invoke-direct {p0}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI$Builder;->maybeForceBuilderInitialization()V

    .line 2981
    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V
    .locals 1

    .prologue
    .line 2984
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessage$Builder;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V

    .line 3398
    const-string v0, ""

    iput-object v0, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI$Builder;->name_:Ljava/lang/Object;

    .line 3434
    const-string v0, ""

    iput-object v0, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI$Builder;->level_:Ljava/lang/Object;

    .line 3470
    const-string v0, ""

    iput-object v0, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI$Builder;->x_:Ljava/lang/Object;

    .line 3506
    const-string v0, ""

    iput-object v0, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI$Builder;->y_:Ljava/lang/Object;

    .line 3542
    const-string v0, ""

    iput-object v0, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI$Builder;->address_:Ljava/lang/Object;

    .line 3578
    const-string v0, ""

    iput-object v0, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI$Builder;->province_:Ljava/lang/Object;

    .line 3614
    const-string v0, ""

    iput-object v0, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI$Builder;->city_:Ljava/lang/Object;

    .line 3650
    const-string v0, ""

    iput-object v0, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI$Builder;->ename_:Ljava/lang/Object;

    .line 3686
    const-string v0, ""

    iput-object v0, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI$Builder;->district_:Ljava/lang/Object;

    .line 3722
    const-string v0, ""

    iput-object v0, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI$Builder;->range_:Ljava/lang/Object;

    .line 3758
    const-string v0, ""

    iput-object v0, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI$Builder;->num_:Ljava/lang/Object;

    .line 3794
    const-string v0, ""

    iput-object v0, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI$Builder;->inum_:Ljava/lang/Object;

    .line 3830
    const-string v0, ""

    iput-object v0, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI$Builder;->prox_:Ljava/lang/Object;

    .line 3866
    const-string v0, ""

    iput-object v0, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI$Builder;->score_:Ljava/lang/Object;

    .line 3902
    const-string v0, ""

    iput-object v0, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI$Builder;->eprovince_:Ljava/lang/Object;

    .line 3938
    const-string v0, ""

    iput-object v0, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI$Builder;->ecity_:Ljava/lang/Object;

    .line 3974
    const-string v0, ""

    iput-object v0, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI$Builder;->edistrict_:Ljava/lang/Object;

    .line 4010
    const-string v0, ""

    iput-object v0, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI$Builder;->eaddress_:Ljava/lang/Object;

    .line 4046
    const-string v0, ""

    iput-object v0, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI$Builder;->roadpts_:Ljava/lang/Object;

    .line 4082
    invoke-static {}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$SubPOIS;->getDefaultInstance()Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$SubPOIS;

    move-result-object v0

    iput-object v0, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI$Builder;->subpois_:Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$SubPOIS;

    .line 2985
    invoke-direct {p0}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI$Builder;->maybeForceBuilderInitialization()V

    .line 2986
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;Lcom/mapabc/mapapi/geocoder/c;)V
    .locals 0

    .prologue
    .line 2965
    invoke-direct {p0, p1}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI$Builder;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V

    return-void
.end method

.method static synthetic access$3400(Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI$Builder;)Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 2965
    invoke-direct {p0}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI$Builder;->buildParsed()Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$3500()Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI$Builder;
    .locals 1

    .prologue
    .line 2965
    invoke-static {}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI$Builder;->create()Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI$Builder;

    move-result-object v0

    return-object v0
.end method

.method private buildParsed()Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 3068
    invoke-virtual {p0}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI$Builder;->buildPartial()Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI;

    move-result-object v0

    .line 3069
    invoke-virtual {v0}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_0

    .line 3070
    invoke-static {v0}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI$Builder;->newUninitializedMessageException(Lcom/google/protobuf/Message;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/UninitializedMessageException;->asInvalidProtocolBufferException()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0

    .line 3073
    :cond_0
    return-object v0
.end method

.method private static create()Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI$Builder;
    .locals 1

    .prologue
    .line 2993
    new-instance v0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI$Builder;

    invoke-direct {v0}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI$Builder;-><init>()V

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 2970
    # getter for: Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf;->internal_static_GeoPOI_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;
    invoke-static {}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf;->access$3200()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method private getSubpoisFieldBuilder()Lcom/google/protobuf/SingleFieldBuilder;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/SingleFieldBuilder",
            "<",
            "Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$SubPOIS;",
            "Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$SubPOIS$Builder;",
            "Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$SubPOISOrBuilder;",
            ">;"
        }
    .end annotation

    .prologue
    .line 4160
    iget-object v0, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI$Builder;->subpoisBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_0

    .line 4161
    new-instance v0, Lcom/google/protobuf/SingleFieldBuilder;

    iget-object v1, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI$Builder;->subpois_:Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$SubPOIS;

    invoke-virtual {p0}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI$Builder;->getParentForChildren()Lcom/google/protobuf/GeneratedMessage$BuilderParent;

    move-result-object v2

    invoke-virtual {p0}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI$Builder;->isClean()Z

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lcom/google/protobuf/SingleFieldBuilder;-><init>(Lcom/google/protobuf/GeneratedMessage;Lcom/google/protobuf/GeneratedMessage$BuilderParent;Z)V

    iput-object v0, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI$Builder;->subpoisBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    .line 4166
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI$Builder;->subpois_:Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$SubPOIS;

    .line 4168
    :cond_0
    iget-object v0, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI$Builder;->subpoisBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .locals 1

    .prologue
    .line 2988
    # getter for: Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI;->alwaysUseFieldBuilders:Z
    invoke-static {}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI;->access$3700()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2989
    invoke-direct {p0}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI$Builder;->getSubpoisFieldBuilder()Lcom/google/protobuf/SingleFieldBuilder;

    .line 2991
    :cond_0
    return-void
.end method


# virtual methods
.method public bridge synthetic build()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 2965
    invoke-virtual {p0}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI$Builder;->build()Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 2965
    invoke-virtual {p0}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI$Builder;->build()Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI;
    .locals 2

    .prologue
    .line 3059
    invoke-virtual {p0}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI$Builder;->buildPartial()Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI;

    move-result-object v0

    .line 3060
    invoke-virtual {v0}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_0

    .line 3061
    invoke-static {v0}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI$Builder;->newUninitializedMessageException(Lcom/google/protobuf/Message;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0

    .line 3063
    :cond_0
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 2965
    invoke-virtual {p0}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI$Builder;->buildPartial()Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 2965
    invoke-virtual {p0}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI$Builder;->buildPartial()Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI;
    .locals 10

    .prologue
    const/high16 v9, 0x80000

    const/high16 v8, 0x40000

    const/high16 v7, 0x20000

    const/high16 v6, 0x10000

    const v5, 0x8000

    .line 3077
    new-instance v2, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI;

    const/4 v0, 0x0

    invoke-direct {v2, p0, v0}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI;-><init>(Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI$Builder;Lcom/mapabc/mapapi/geocoder/c;)V

    .line 3078
    iget v1, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI$Builder;->bitField0_:I

    .line 3079
    const/4 v0, 0x0

    .line 3080
    and-int/lit8 v3, v1, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 3081
    const/4 v0, 0x1

    .line 3083
    :cond_0
    iget-object v3, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI$Builder;->name_:Ljava/lang/Object;

    # setter for: Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI;->name_:Ljava/lang/Object;
    invoke-static {v2, v3}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI;->access$3902(Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3084
    and-int/lit8 v3, v1, 0x2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1

    .line 3085
    or-int/lit8 v0, v0, 0x2

    .line 3087
    :cond_1
    iget-object v3, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI$Builder;->level_:Ljava/lang/Object;

    # setter for: Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI;->level_:Ljava/lang/Object;
    invoke-static {v2, v3}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI;->access$4002(Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3088
    and-int/lit8 v3, v1, 0x4

    const/4 v4, 0x4

    if-ne v3, v4, :cond_2

    .line 3089
    or-int/lit8 v0, v0, 0x4

    .line 3091
    :cond_2
    iget-object v3, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI$Builder;->x_:Ljava/lang/Object;

    # setter for: Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI;->x_:Ljava/lang/Object;
    invoke-static {v2, v3}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI;->access$4102(Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3092
    and-int/lit8 v3, v1, 0x8

    const/16 v4, 0x8

    if-ne v3, v4, :cond_3

    .line 3093
    or-int/lit8 v0, v0, 0x8

    .line 3095
    :cond_3
    iget-object v3, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI$Builder;->y_:Ljava/lang/Object;

    # setter for: Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI;->y_:Ljava/lang/Object;
    invoke-static {v2, v3}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI;->access$4202(Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3096
    and-int/lit8 v3, v1, 0x10

    const/16 v4, 0x10

    if-ne v3, v4, :cond_4

    .line 3097
    or-int/lit8 v0, v0, 0x10

    .line 3099
    :cond_4
    iget-object v3, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI$Builder;->address_:Ljava/lang/Object;

    # setter for: Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI;->address_:Ljava/lang/Object;
    invoke-static {v2, v3}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI;->access$4302(Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3100
    and-int/lit8 v3, v1, 0x20

    const/16 v4, 0x20

    if-ne v3, v4, :cond_5

    .line 3101
    or-int/lit8 v0, v0, 0x20

    .line 3103
    :cond_5
    iget-object v3, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI$Builder;->province_:Ljava/lang/Object;

    # setter for: Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI;->province_:Ljava/lang/Object;
    invoke-static {v2, v3}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI;->access$4402(Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3104
    and-int/lit8 v3, v1, 0x40

    const/16 v4, 0x40

    if-ne v3, v4, :cond_6

    .line 3105
    or-int/lit8 v0, v0, 0x40

    .line 3107
    :cond_6
    iget-object v3, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI$Builder;->city_:Ljava/lang/Object;

    # setter for: Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI;->city_:Ljava/lang/Object;
    invoke-static {v2, v3}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI;->access$4502(Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3108
    and-int/lit16 v3, v1, 0x80

    const/16 v4, 0x80

    if-ne v3, v4, :cond_7

    .line 3109
    or-int/lit16 v0, v0, 0x80

    .line 3111
    :cond_7
    iget-object v3, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI$Builder;->ename_:Ljava/lang/Object;

    # setter for: Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI;->ename_:Ljava/lang/Object;
    invoke-static {v2, v3}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI;->access$4602(Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3112
    and-int/lit16 v3, v1, 0x100

    const/16 v4, 0x100

    if-ne v3, v4, :cond_8

    .line 3113
    or-int/lit16 v0, v0, 0x100

    .line 3115
    :cond_8
    iget-object v3, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI$Builder;->district_:Ljava/lang/Object;

    # setter for: Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI;->district_:Ljava/lang/Object;
    invoke-static {v2, v3}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI;->access$4702(Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3116
    and-int/lit16 v3, v1, 0x200

    const/16 v4, 0x200

    if-ne v3, v4, :cond_9

    .line 3117
    or-int/lit16 v0, v0, 0x200

    .line 3119
    :cond_9
    iget-object v3, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI$Builder;->range_:Ljava/lang/Object;

    # setter for: Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI;->range_:Ljava/lang/Object;
    invoke-static {v2, v3}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI;->access$4802(Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3120
    and-int/lit16 v3, v1, 0x400

    const/16 v4, 0x400

    if-ne v3, v4, :cond_a

    .line 3121
    or-int/lit16 v0, v0, 0x400

    .line 3123
    :cond_a
    iget-object v3, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI$Builder;->num_:Ljava/lang/Object;

    # setter for: Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI;->num_:Ljava/lang/Object;
    invoke-static {v2, v3}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI;->access$4902(Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3124
    and-int/lit16 v3, v1, 0x800

    const/16 v4, 0x800

    if-ne v3, v4, :cond_b

    .line 3125
    or-int/lit16 v0, v0, 0x800

    .line 3127
    :cond_b
    iget-object v3, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI$Builder;->inum_:Ljava/lang/Object;

    # setter for: Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI;->inum_:Ljava/lang/Object;
    invoke-static {v2, v3}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI;->access$5002(Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3128
    and-int/lit16 v3, v1, 0x1000

    const/16 v4, 0x1000

    if-ne v3, v4, :cond_c

    .line 3129
    or-int/lit16 v0, v0, 0x1000

    .line 3131
    :cond_c
    iget-object v3, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI$Builder;->prox_:Ljava/lang/Object;

    # setter for: Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI;->prox_:Ljava/lang/Object;
    invoke-static {v2, v3}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI;->access$5102(Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3132
    and-int/lit16 v3, v1, 0x2000

    const/16 v4, 0x2000

    if-ne v3, v4, :cond_d

    .line 3133
    or-int/lit16 v0, v0, 0x2000

    .line 3135
    :cond_d
    iget-object v3, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI$Builder;->score_:Ljava/lang/Object;

    # setter for: Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI;->score_:Ljava/lang/Object;
    invoke-static {v2, v3}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI;->access$5202(Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3136
    and-int/lit16 v3, v1, 0x4000

    const/16 v4, 0x4000

    if-ne v3, v4, :cond_e

    .line 3137
    or-int/lit16 v0, v0, 0x4000

    .line 3139
    :cond_e
    iget-object v3, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI$Builder;->eprovince_:Ljava/lang/Object;

    # setter for: Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI;->eprovince_:Ljava/lang/Object;
    invoke-static {v2, v3}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI;->access$5302(Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3140
    and-int v3, v1, v5

    if-ne v3, v5, :cond_f

    .line 3141
    or-int/2addr v0, v5

    .line 3143
    :cond_f
    iget-object v3, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI$Builder;->ecity_:Ljava/lang/Object;

    # setter for: Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI;->ecity_:Ljava/lang/Object;
    invoke-static {v2, v3}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI;->access$5402(Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3144
    and-int v3, v1, v6

    if-ne v3, v6, :cond_10

    .line 3145
    or-int/2addr v0, v6

    .line 3147
    :cond_10
    iget-object v3, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI$Builder;->edistrict_:Ljava/lang/Object;

    # setter for: Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI;->edistrict_:Ljava/lang/Object;
    invoke-static {v2, v3}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI;->access$5502(Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3148
    and-int v3, v1, v7

    if-ne v3, v7, :cond_11

    .line 3149
    or-int/2addr v0, v7

    .line 3151
    :cond_11
    iget-object v3, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI$Builder;->eaddress_:Ljava/lang/Object;

    # setter for: Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI;->eaddress_:Ljava/lang/Object;
    invoke-static {v2, v3}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI;->access$5602(Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3152
    and-int v3, v1, v8

    if-ne v3, v8, :cond_12

    .line 3153
    or-int/2addr v0, v8

    .line 3155
    :cond_12
    iget-object v3, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI$Builder;->roadpts_:Ljava/lang/Object;

    # setter for: Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI;->roadpts_:Ljava/lang/Object;
    invoke-static {v2, v3}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI;->access$5702(Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3156
    and-int/2addr v1, v9

    if-ne v1, v9, :cond_14

    .line 3157
    or-int/2addr v0, v9

    move v1, v0

    .line 3159
    :goto_0
    iget-object v0, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI$Builder;->subpoisBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_13

    .line 3160
    iget-object v0, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI$Builder;->subpois_:Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$SubPOIS;

    # setter for: Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI;->subpois_:Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$SubPOIS;
    invoke-static {v2, v0}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI;->access$5802(Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI;Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$SubPOIS;)Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$SubPOIS;

    .line 3164
    :goto_1
    # setter for: Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI;->bitField0_:I
    invoke-static {v2, v1}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI;->access$5902(Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI;I)I

    .line 3165
    invoke-virtual {p0}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI$Builder;->onBuilt()V

    .line 3166
    return-object v2

    .line 3162
    :cond_13
    iget-object v0, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI$Builder;->subpoisBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilder;->build()Lcom/google/protobuf/GeneratedMessage;

    move-result-object v0

    check-cast v0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$SubPOIS;

    # setter for: Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI;->subpois_:Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$SubPOIS;
    invoke-static {v2, v0}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI;->access$5802(Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI;Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$SubPOIS;)Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$SubPOIS;

    goto :goto_1

    :cond_14
    move v1, v0

    goto :goto_0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 2965
    invoke-virtual {p0}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI$Builder;->clear()Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessage$Builder;
    .locals 1

    .prologue
    .line 2965
    invoke-virtual {p0}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI$Builder;->clear()Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 2965
    invoke-virtual {p0}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI$Builder;->clear()Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 2965
    invoke-virtual {p0}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI$Builder;->clear()Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI$Builder;
    .locals 2

    .prologue
    .line 2997
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->clear()Lcom/google/protobuf/GeneratedMessage$Builder;

    .line 2998
    const-string v0, ""

    iput-object v0, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI$Builder;->name_:Ljava/lang/Object;

    .line 2999
    iget v0, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI$Builder;->bitField0_:I

    .line 3000
    const-string v0, ""

    iput-object v0, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI$Builder;->level_:Ljava/lang/Object;

    .line 3001
    iget v0, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI$Builder;->bitField0_:I

    .line 3002
    const-string v0, ""

    iput-object v0, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI$Builder;->x_:Ljava/lang/Object;

    .line 3003
    iget v0, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI$Builder;->bitField0_:I

    .line 3004
    const-string v0, ""

    iput-object v0, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI$Builder;->y_:Ljava/lang/Object;

    .line 3005
    iget v0, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI$Builder;->bitField0_:I

    .line 3006
    const-string v0, ""

    iput-object v0, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI$Builder;->address_:Ljava/lang/Object;

    .line 3007
    iget v0, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI$Builder;->bitField0_:I

    .line 3008
    const-string v0, ""

    iput-object v0, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI$Builder;->province_:Ljava/lang/Object;

    .line 3009
    iget v0, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI$Builder;->bitField0_:I

    .line 3010
    const-string v0, ""

    iput-object v0, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI$Builder;->city_:Ljava/lang/Object;

    .line 3011
    iget v0, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x41

    iput v0, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI$Builder;->bitField0_:I

    .line 3012
    const-string v0, ""

    iput-object v0, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI$Builder;->ename_:Ljava/lang/Object;

    .line 3013
    iget v0, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x81

    iput v0, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI$Builder;->bitField0_:I

    .line 3014
    const-string v0, ""

    iput-object v0, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI$Builder;->district_:Ljava/lang/Object;

    .line 3015
    iget v0, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x101

    iput v0, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI$Builder;->bitField0_:I

    .line 3016
    const-string v0, ""

    iput-object v0, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI$Builder;->range_:Ljava/lang/Object;

    .line 3017
    iget v0, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x201

    iput v0, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI$Builder;->bitField0_:I

    .line 3018
    const-string v0, ""

    iput-object v0, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI$Builder;->num_:Ljava/lang/Object;

    .line 3019
    iget v0, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x401

    iput v0, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI$Builder;->bitField0_:I

    .line 3020
    const-string v0, ""

    iput-object v0, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI$Builder;->inum_:Ljava/lang/Object;

    .line 3021
    iget v0, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x801

    iput v0, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI$Builder;->bitField0_:I

    .line 3022
    const-string v0, ""

    iput-object v0, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI$Builder;->prox_:Ljava/lang/Object;

    .line 3023
    iget v0, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x1001

    iput v0, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI$Builder;->bitField0_:I

    .line 3024
    const-string v0, ""

    iput-object v0, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI$Builder;->score_:Ljava/lang/Object;

    .line 3025
    iget v0, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x2001

    iput v0, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI$Builder;->bitField0_:I

    .line 3026
    const-string v0, ""

    iput-object v0, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI$Builder;->eprovince_:Ljava/lang/Object;

    .line 3027
    iget v0, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x4001

    iput v0, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI$Builder;->bitField0_:I

    .line 3028
    const-string v0, ""

    iput-object v0, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI$Builder;->ecity_:Ljava/lang/Object;

    .line 3029
    iget v0, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI$Builder;->bitField0_:I

    const v1, -0x8001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI$Builder;->bitField0_:I

    .line 3030
    const-string v0, ""

    iput-object v0, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI$Builder;->edistrict_:Ljava/lang/Object;

    .line 3031
    iget v0, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI$Builder;->bitField0_:I

    const v1, -0x10001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI$Builder;->bitField0_:I

    .line 3032
    const-string v0, ""

    iput-object v0, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI$Builder;->eaddress_:Ljava/lang/Object;

    .line 3033
    iget v0, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI$Builder;->bitField0_:I

    const v1, -0x20001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI$Builder;->bitField0_:I

    .line 3034
    const-string v0, ""

    iput-object v0, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI$Builder;->roadpts_:Ljava/lang/Object;

    .line 3035
    iget v0, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI$Builder;->bitField0_:I

    const v1, -0x40001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI$Builder;->bitField0_:I

    .line 3036
    iget-object v0, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI$Builder;->subpoisBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_0

    .line 3037
    invoke-static {}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$SubPOIS;->getDefaultInstance()Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$SubPOIS;

    move-result-object v0

    iput-object v0, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI$Builder;->subpois_:Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$SubPOIS;

    .line 3041
    :goto_0
    iget v0, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI$Builder;->bitField0_:I

    const v1, -0x80001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI$Builder;->bitField0_:I

    .line 3042
    return-object p0

    .line 3039
    :cond_0
    iget-object v0, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI$Builder;->subpoisBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilder;->clear()Lcom/google/protobuf/SingleFieldBuilder;

    goto :goto_0
.end method

.method public clearAddress()Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI$Builder;
    .locals 1

    .prologue
    .line 3566
    iget v0, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI$Builder;->bitField0_:I

    .line 3567
    invoke-static {}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI;->getDefaultInstance()Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI;->getAddress()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI$Builder;->address_:Ljava/lang/Object;

    .line 3568
    invoke-virtual {p0}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI$Builder;->onChanged()V

    .line 3569
    return-object p0
.end method

.method public clearCity()Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI$Builder;
    .locals 1

    .prologue
    .line 3638
    iget v0, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x41

    iput v0, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI$Builder;->bitField0_:I

    .line 3639
    invoke-static {}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI;->getDefaultInstance()Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI;->getCity()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI$Builder;->city_:Ljava/lang/Object;

    .line 3640
    invoke-virtual {p0}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI$Builder;->onChanged()V

    .line 3641
    return-object p0
.end method

.method public clearDistrict()Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI$Builder;
    .locals 1

    .prologue
    .line 3710
    iget v0, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x101

    iput v0, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI$Builder;->bitField0_:I

    .line 3711
    invoke-static {}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI;->getDefaultInstance()Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI;->getDistrict()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI$Builder;->district_:Ljava/lang/Object;

    .line 3712
    invoke-virtual {p0}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI$Builder;->onChanged()V

    .line 3713
    return-object p0
.end method

.method public clearEaddress()Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI$Builder;
    .locals 2

    .prologue
    .line 4034
    iget v0, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI$Builder;->bitField0_:I

    const v1, -0x20001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI$Builder;->bitField0_:I

    .line 4035
    invoke-static {}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI;->getDefaultInstance()Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI;->getEaddress()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI$Builder;->eaddress_:Ljava/lang/Object;

    .line 4036
    invoke-virtual {p0}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI$Builder;->onChanged()V

    .line 4037
    return-object p0
.end method

.method public clearEcity()Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI$Builder;
    .locals 2

    .prologue
    .line 3962
    iget v0, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI$Builder;->bitField0_:I

    const v1, -0x8001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI$Builder;->bitField0_:I

    .line 3963
    invoke-static {}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI;->getDefaultInstance()Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI;->getEcity()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI$Builder;->ecity_:Ljava/lang/Object;

    .line 3964
    invoke-virtual {p0}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI$Builder;->onChanged()V

    .line 3965
    return-object p0
.end method

.method public clearEdistrict()Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI$Builder;
    .locals 2

    .prologue
    .line 3998
    iget v0, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI$Builder;->bitField0_:I

    const v1, -0x10001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI$Builder;->bitField0_:I

    .line 3999
    invoke-static {}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI;->getDefaultInstance()Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI;->getEdistrict()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI$Builder;->edistrict_:Ljava/lang/Object;

    .line 4000
    invoke-virtual {p0}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI$Builder;->onChanged()V

    .line 4001
    return-object p0
.end method

.method public clearEname()Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI$Builder;
    .locals 1

    .prologue
    .line 3674
    iget v0, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x81

    iput v0, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI$Builder;->bitField0_:I

    .line 3675
    invoke-static {}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI;->getDefaultInstance()Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI;->getEname()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI$Builder;->ename_:Ljava/lang/Object;

    .line 3676
    invoke-virtual {p0}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI$Builder;->onChanged()V

    .line 3677
    return-object p0
.end method

.method public clearEprovince()Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI$Builder;
    .locals 1

    .prologue
    .line 3926
    iget v0, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x4001

    iput v0, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI$Builder;->bitField0_:I

    .line 3927
    invoke-static {}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI;->getDefaultInstance()Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI;->getEprovince()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI$Builder;->eprovince_:Ljava/lang/Object;

    .line 3928
    invoke-virtual {p0}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI$Builder;->onChanged()V

    .line 3929
    return-object p0
.end method

.method public clearInum()Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI$Builder;
    .locals 1

    .prologue
    .line 3818
    iget v0, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x801

    iput v0, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI$Builder;->bitField0_:I

    .line 3819
    invoke-static {}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI;->getDefaultInstance()Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI;->getInum()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI$Builder;->inum_:Ljava/lang/Object;

    .line 3820
    invoke-virtual {p0}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI$Builder;->onChanged()V

    .line 3821
    return-object p0
.end method

.method public clearLevel()Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI$Builder;
    .locals 1

    .prologue
    .line 3458
    iget v0, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI$Builder;->bitField0_:I

    .line 3459
    invoke-static {}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI;->getDefaultInstance()Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI;->getLevel()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI$Builder;->level_:Ljava/lang/Object;

    .line 3460
    invoke-virtual {p0}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI$Builder;->onChanged()V

    .line 3461
    return-object p0
.end method

.method public clearName()Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI$Builder;
    .locals 1

    .prologue
    .line 3422
    iget v0, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI$Builder;->bitField0_:I

    .line 3423
    invoke-static {}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI;->getDefaultInstance()Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI$Builder;->name_:Ljava/lang/Object;

    .line 3424
    invoke-virtual {p0}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI$Builder;->onChanged()V

    .line 3425
    return-object p0
.end method

.method public clearNum()Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI$Builder;
    .locals 1

    .prologue
    .line 3782
    iget v0, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x401

    iput v0, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI$Builder;->bitField0_:I

    .line 3783
    invoke-static {}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI;->getDefaultInstance()Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI;->getNum()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI$Builder;->num_:Ljava/lang/Object;

    .line 3784
    invoke-virtual {p0}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI$Builder;->onChanged()V

    .line 3785
    return-object p0
.end method

.method public clearProvince()Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI$Builder;
    .locals 1

    .prologue
    .line 3602
    iget v0, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI$Builder;->bitField0_:I

    .line 3603
    invoke-static {}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI;->getDefaultInstance()Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI;->getProvince()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI$Builder;->province_:Ljava/lang/Object;

    .line 3604
    invoke-virtual {p0}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI$Builder;->onChanged()V

    .line 3605
    return-object p0
.end method

.method public clearProx()Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI$Builder;
    .locals 1

    .prologue
    .line 3854
    iget v0, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x1001

    iput v0, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI$Builder;->bitField0_:I

    .line 3855
    invoke-static {}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI;->getDefaultInstance()Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI;->getProx()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI$Builder;->prox_:Ljava/lang/Object;

    .line 3856
    invoke-virtual {p0}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI$Builder;->onChanged()V

    .line 3857
    return-object p0
.end method

.method public clearRange()Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI$Builder;
    .locals 1

    .prologue
    .line 3746
    iget v0, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x201

    iput v0, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI$Builder;->bitField0_:I

    .line 3747
    invoke-static {}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI;->getDefaultInstance()Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI;->getRange()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI$Builder;->range_:Ljava/lang/Object;

    .line 3748
    invoke-virtual {p0}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI$Builder;->onChanged()V

    .line 3749
    return-object p0
.end method

.method public clearRoadpts()Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI$Builder;
    .locals 2

    .prologue
    .line 4070
    iget v0, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI$Builder;->bitField0_:I

    const v1, -0x40001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI$Builder;->bitField0_:I

    .line 4071
    invoke-static {}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI;->getDefaultInstance()Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI;->getRoadpts()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI$Builder;->roadpts_:Ljava/lang/Object;

    .line 4072
    invoke-virtual {p0}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI$Builder;->onChanged()V

    .line 4073
    return-object p0
.end method

.method public clearScore()Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI$Builder;
    .locals 1

    .prologue
    .line 3890
    iget v0, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x2001

    iput v0, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI$Builder;->bitField0_:I

    .line 3891
    invoke-static {}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI;->getDefaultInstance()Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI;->getScore()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI$Builder;->score_:Ljava/lang/Object;

    .line 3892
    invoke-virtual {p0}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI$Builder;->onChanged()V

    .line 3893
    return-object p0
.end method

.method public clearSubpois()Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI$Builder;
    .locals 2

    .prologue
    .line 4136
    iget-object v0, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI$Builder;->subpoisBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_0

    .line 4137
    invoke-static {}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$SubPOIS;->getDefaultInstance()Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$SubPOIS;

    move-result-object v0

    iput-object v0, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI$Builder;->subpois_:Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$SubPOIS;

    .line 4138
    invoke-virtual {p0}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI$Builder;->onChanged()V

    .line 4142
    :goto_0
    iget v0, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI$Builder;->bitField0_:I

    const v1, -0x80001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI$Builder;->bitField0_:I

    .line 4143
    return-object p0

    .line 4140
    :cond_0
    iget-object v0, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI$Builder;->subpoisBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilder;->clear()Lcom/google/protobuf/SingleFieldBuilder;

    goto :goto_0
.end method

.method public clearX()Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI$Builder;
    .locals 1

    .prologue
    .line 3494
    iget v0, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI$Builder;->bitField0_:I

    .line 3495
    invoke-static {}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI;->getDefaultInstance()Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI;->getX()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI$Builder;->x_:Ljava/lang/Object;

    .line 3496
    invoke-virtual {p0}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI$Builder;->onChanged()V

    .line 3497
    return-object p0
.end method

.method public clearY()Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI$Builder;
    .locals 1

    .prologue
    .line 3530
    iget v0, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI$Builder;->bitField0_:I

    .line 3531
    invoke-static {}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI;->getDefaultInstance()Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI;->getY()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI$Builder;->y_:Ljava/lang/Object;

    .line 3532
    invoke-virtual {p0}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI$Builder;->onChanged()V

    .line 3533
    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 2965
    invoke-virtual {p0}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI$Builder;->clone()Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .prologue
    .line 2965
    invoke-virtual {p0}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI$Builder;->clone()Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessage$Builder;
    .locals 1

    .prologue
    .line 2965
    invoke-virtual {p0}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI$Builder;->clone()Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 2965
    invoke-virtual {p0}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI$Builder;->clone()Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 2965
    invoke-virtual {p0}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI$Builder;->clone()Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI$Builder;
    .locals 2

    .prologue
    .line 3046
    invoke-static {}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI$Builder;->create()Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI$Builder;->buildPartial()Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI$Builder;->mergeFrom(Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI;)Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI$Builder;

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
    .line 2965
    invoke-virtual {p0}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI$Builder;->clone()Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getAddress()Ljava/lang/String;
    .locals 2

    .prologue
    .line 3547
    iget-object v0, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI$Builder;->address_:Ljava/lang/Object;

    .line 3548
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_0

    .line 3549
    check-cast v0, Lcom/google/protobuf/ByteString;

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 3550
    iput-object v0, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI$Builder;->address_:Ljava/lang/Object;

    .line 3553
    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Ljava/lang/String;

    goto :goto_0
.end method

.method public getCity()Ljava/lang/String;
    .locals 2

    .prologue
    .line 3619
    iget-object v0, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI$Builder;->city_:Ljava/lang/Object;

    .line 3620
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_0

    .line 3621
    check-cast v0, Lcom/google/protobuf/ByteString;

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 3622
    iput-object v0, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI$Builder;->city_:Ljava/lang/Object;

    .line 3625
    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Ljava/lang/String;

    goto :goto_0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 2965
    invoke-virtual {p0}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI$Builder;->getDefaultInstanceForType()Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 2965
    invoke-virtual {p0}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI$Builder;->getDefaultInstanceForType()Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI;
    .locals 1

    .prologue
    .line 3055
    invoke-static {}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI;->getDefaultInstance()Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 3051
    invoke-static {}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI;->getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public getDistrict()Ljava/lang/String;
    .locals 2

    .prologue
    .line 3691
    iget-object v0, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI$Builder;->district_:Ljava/lang/Object;

    .line 3692
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_0

    .line 3693
    check-cast v0, Lcom/google/protobuf/ByteString;

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 3694
    iput-object v0, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI$Builder;->district_:Ljava/lang/Object;

    .line 3697
    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Ljava/lang/String;

    goto :goto_0
.end method

.method public getEaddress()Ljava/lang/String;
    .locals 2

    .prologue
    .line 4015
    iget-object v0, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI$Builder;->eaddress_:Ljava/lang/Object;

    .line 4016
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_0

    .line 4017
    check-cast v0, Lcom/google/protobuf/ByteString;

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 4018
    iput-object v0, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI$Builder;->eaddress_:Ljava/lang/Object;

    .line 4021
    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Ljava/lang/String;

    goto :goto_0
.end method

.method public getEcity()Ljava/lang/String;
    .locals 2

    .prologue
    .line 3943
    iget-object v0, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI$Builder;->ecity_:Ljava/lang/Object;

    .line 3944
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_0

    .line 3945
    check-cast v0, Lcom/google/protobuf/ByteString;

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 3946
    iput-object v0, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI$Builder;->ecity_:Ljava/lang/Object;

    .line 3949
    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Ljava/lang/String;

    goto :goto_0
.end method

.method public getEdistrict()Ljava/lang/String;
    .locals 2

    .prologue
    .line 3979
    iget-object v0, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI$Builder;->edistrict_:Ljava/lang/Object;

    .line 3980
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_0

    .line 3981
    check-cast v0, Lcom/google/protobuf/ByteString;

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 3982
    iput-object v0, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI$Builder;->edistrict_:Ljava/lang/Object;

    .line 3985
    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Ljava/lang/String;

    goto :goto_0
.end method

.method public getEname()Ljava/lang/String;
    .locals 2

    .prologue
    .line 3655
    iget-object v0, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI$Builder;->ename_:Ljava/lang/Object;

    .line 3656
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_0

    .line 3657
    check-cast v0, Lcom/google/protobuf/ByteString;

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 3658
    iput-object v0, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI$Builder;->ename_:Ljava/lang/Object;

    .line 3661
    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Ljava/lang/String;

    goto :goto_0
.end method

.method public getEprovince()Ljava/lang/String;
    .locals 2

    .prologue
    .line 3907
    iget-object v0, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI$Builder;->eprovince_:Ljava/lang/Object;

    .line 3908
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_0

    .line 3909
    check-cast v0, Lcom/google/protobuf/ByteString;

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 3910
    iput-object v0, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI$Builder;->eprovince_:Ljava/lang/Object;

    .line 3913
    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Ljava/lang/String;

    goto :goto_0
.end method

.method public getInum()Ljava/lang/String;
    .locals 2

    .prologue
    .line 3799
    iget-object v0, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI$Builder;->inum_:Ljava/lang/Object;

    .line 3800
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_0

    .line 3801
    check-cast v0, Lcom/google/protobuf/ByteString;

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 3802
    iput-object v0, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI$Builder;->inum_:Ljava/lang/Object;

    .line 3805
    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Ljava/lang/String;

    goto :goto_0
.end method

.method public getLevel()Ljava/lang/String;
    .locals 2

    .prologue
    .line 3439
    iget-object v0, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI$Builder;->level_:Ljava/lang/Object;

    .line 3440
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_0

    .line 3441
    check-cast v0, Lcom/google/protobuf/ByteString;

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 3442
    iput-object v0, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI$Builder;->level_:Ljava/lang/Object;

    .line 3445
    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Ljava/lang/String;

    goto :goto_0
.end method

.method public getName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 3403
    iget-object v0, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI$Builder;->name_:Ljava/lang/Object;

    .line 3404
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_0

    .line 3405
    check-cast v0, Lcom/google/protobuf/ByteString;

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 3406
    iput-object v0, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI$Builder;->name_:Ljava/lang/Object;

    .line 3409
    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Ljava/lang/String;

    goto :goto_0
.end method

.method public getNum()Ljava/lang/String;
    .locals 2

    .prologue
    .line 3763
    iget-object v0, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI$Builder;->num_:Ljava/lang/Object;

    .line 3764
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_0

    .line 3765
    check-cast v0, Lcom/google/protobuf/ByteString;

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 3766
    iput-object v0, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI$Builder;->num_:Ljava/lang/Object;

    .line 3769
    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Ljava/lang/String;

    goto :goto_0
.end method

.method public getProvince()Ljava/lang/String;
    .locals 2

    .prologue
    .line 3583
    iget-object v0, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI$Builder;->province_:Ljava/lang/Object;

    .line 3584
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_0

    .line 3585
    check-cast v0, Lcom/google/protobuf/ByteString;

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 3586
    iput-object v0, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI$Builder;->province_:Ljava/lang/Object;

    .line 3589
    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Ljava/lang/String;

    goto :goto_0
.end method

.method public getProx()Ljava/lang/String;
    .locals 2

    .prologue
    .line 3835
    iget-object v0, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI$Builder;->prox_:Ljava/lang/Object;

    .line 3836
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_0

    .line 3837
    check-cast v0, Lcom/google/protobuf/ByteString;

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 3838
    iput-object v0, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI$Builder;->prox_:Ljava/lang/Object;

    .line 3841
    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Ljava/lang/String;

    goto :goto_0
.end method

.method public getRange()Ljava/lang/String;
    .locals 2

    .prologue
    .line 3727
    iget-object v0, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI$Builder;->range_:Ljava/lang/Object;

    .line 3728
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_0

    .line 3729
    check-cast v0, Lcom/google/protobuf/ByteString;

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 3730
    iput-object v0, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI$Builder;->range_:Ljava/lang/Object;

    .line 3733
    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Ljava/lang/String;

    goto :goto_0
.end method

.method public getRoadpts()Ljava/lang/String;
    .locals 2

    .prologue
    .line 4051
    iget-object v0, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI$Builder;->roadpts_:Ljava/lang/Object;

    .line 4052
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_0

    .line 4053
    check-cast v0, Lcom/google/protobuf/ByteString;

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 4054
    iput-object v0, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI$Builder;->roadpts_:Ljava/lang/Object;

    .line 4057
    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Ljava/lang/String;

    goto :goto_0
.end method

.method public getScore()Ljava/lang/String;
    .locals 2

    .prologue
    .line 3871
    iget-object v0, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI$Builder;->score_:Ljava/lang/Object;

    .line 3872
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_0

    .line 3873
    check-cast v0, Lcom/google/protobuf/ByteString;

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 3874
    iput-object v0, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI$Builder;->score_:Ljava/lang/Object;

    .line 3877
    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Ljava/lang/String;

    goto :goto_0
.end method

.method public getSubpois()Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$SubPOIS;
    .locals 1

    .prologue
    .line 4089
    iget-object v0, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI$Builder;->subpoisBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_0

    .line 4090
    iget-object v0, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI$Builder;->subpois_:Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$SubPOIS;

    .line 4092
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI$Builder;->subpoisBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilder;->getMessage()Lcom/google/protobuf/GeneratedMessage;

    move-result-object v0

    check-cast v0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$SubPOIS;

    goto :goto_0
.end method

.method public getSubpoisBuilder()Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$SubPOIS$Builder;
    .locals 2

    .prologue
    .line 4146
    iget v0, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI$Builder;->bitField0_:I

    const/high16 v1, 0x80000

    or-int/2addr v0, v1

    iput v0, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI$Builder;->bitField0_:I

    .line 4147
    invoke-virtual {p0}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI$Builder;->onChanged()V

    .line 4148
    invoke-direct {p0}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI$Builder;->getSubpoisFieldBuilder()Lcom/google/protobuf/SingleFieldBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilder;->getBuilder()Lcom/google/protobuf/GeneratedMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$SubPOIS$Builder;

    return-object v0
.end method

.method public getSubpoisOrBuilder()Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$SubPOISOrBuilder;
    .locals 1

    .prologue
    .line 4151
    iget-object v0, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI$Builder;->subpoisBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-eqz v0, :cond_0

    .line 4152
    iget-object v0, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI$Builder;->subpoisBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilder;->getMessageOrBuilder()Lcom/google/protobuf/MessageOrBuilder;

    move-result-object v0

    check-cast v0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$SubPOISOrBuilder;

    .line 4154
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI$Builder;->subpois_:Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$SubPOIS;

    goto :goto_0
.end method

.method public getX()Ljava/lang/String;
    .locals 2

    .prologue
    .line 3475
    iget-object v0, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI$Builder;->x_:Ljava/lang/Object;

    .line 3476
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_0

    .line 3477
    check-cast v0, Lcom/google/protobuf/ByteString;

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 3478
    iput-object v0, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI$Builder;->x_:Ljava/lang/Object;

    .line 3481
    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Ljava/lang/String;

    goto :goto_0
.end method

.method public getY()Ljava/lang/String;
    .locals 2

    .prologue
    .line 3511
    iget-object v0, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI$Builder;->y_:Ljava/lang/Object;

    .line 3512
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_0

    .line 3513
    check-cast v0, Lcom/google/protobuf/ByteString;

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 3514
    iput-object v0, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI$Builder;->y_:Ljava/lang/Object;

    .line 3517
    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Ljava/lang/String;

    goto :goto_0
.end method

.method public hasAddress()Z
    .locals 2

    .prologue
    .line 3544
    iget v0, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI$Builder;->bitField0_:I

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

.method public hasCity()Z
    .locals 2

    .prologue
    .line 3616
    iget v0, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI$Builder;->bitField0_:I

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

.method public hasDistrict()Z
    .locals 2

    .prologue
    .line 3688
    iget v0, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI$Builder;->bitField0_:I

    and-int/lit16 v0, v0, 0x100

    const/16 v1, 0x100

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasEaddress()Z
    .locals 2

    .prologue
    const/high16 v1, 0x20000

    .line 4012
    iget v0, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI$Builder;->bitField0_:I

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasEcity()Z
    .locals 2

    .prologue
    const v1, 0x8000

    .line 3940
    iget v0, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI$Builder;->bitField0_:I

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasEdistrict()Z
    .locals 2

    .prologue
    const/high16 v1, 0x10000

    .line 3976
    iget v0, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI$Builder;->bitField0_:I

    and-int/2addr v0, v1

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
    .line 3652
    iget v0, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI$Builder;->bitField0_:I

    and-int/lit16 v0, v0, 0x80

    const/16 v1, 0x80

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasEprovince()Z
    .locals 2

    .prologue
    .line 3904
    iget v0, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI$Builder;->bitField0_:I

    and-int/lit16 v0, v0, 0x4000

    const/16 v1, 0x4000

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasInum()Z
    .locals 2

    .prologue
    .line 3796
    iget v0, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI$Builder;->bitField0_:I

    and-int/lit16 v0, v0, 0x800

    const/16 v1, 0x800

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasLevel()Z
    .locals 2

    .prologue
    .line 3436
    iget v0, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI$Builder;->bitField0_:I

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

    .line 3400
    iget v1, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI$Builder;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasNum()Z
    .locals 2

    .prologue
    .line 3760
    iget v0, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI$Builder;->bitField0_:I

    and-int/lit16 v0, v0, 0x400

    const/16 v1, 0x400

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasProvince()Z
    .locals 2

    .prologue
    .line 3580
    iget v0, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI$Builder;->bitField0_:I

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

.method public hasProx()Z
    .locals 2

    .prologue
    .line 3832
    iget v0, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI$Builder;->bitField0_:I

    and-int/lit16 v0, v0, 0x1000

    const/16 v1, 0x1000

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasRange()Z
    .locals 2

    .prologue
    .line 3724
    iget v0, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI$Builder;->bitField0_:I

    and-int/lit16 v0, v0, 0x200

    const/16 v1, 0x200

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasRoadpts()Z
    .locals 2

    .prologue
    const/high16 v1, 0x40000

    .line 4048
    iget v0, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI$Builder;->bitField0_:I

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasScore()Z
    .locals 2

    .prologue
    .line 3868
    iget v0, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI$Builder;->bitField0_:I

    and-int/lit16 v0, v0, 0x2000

    const/16 v1, 0x2000

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasSubpois()Z
    .locals 2

    .prologue
    const/high16 v1, 0x80000

    .line 4086
    iget v0, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI$Builder;->bitField0_:I

    and-int/2addr v0, v1

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
    .line 3472
    iget v0, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI$Builder;->bitField0_:I

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
    .line 3508
    iget v0, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI$Builder;->bitField0_:I

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
    .line 2975
    # getter for: Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf;->internal_static_GeoPOI_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    invoke-static {}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf;->access$3300()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 3245
    invoke-virtual {p0}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI$Builder;->hasName()Z

    move-result v1

    if-nez v1, :cond_1

    .line 3261
    :cond_0
    :goto_0
    return v0

    .line 3249
    :cond_1
    invoke-virtual {p0}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI$Builder;->hasLevel()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3253
    invoke-virtual {p0}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI$Builder;->hasX()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3257
    invoke-virtual {p0}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI$Builder;->hasY()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3261
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
    .line 2965
    invoke-virtual {p0, p1, p2}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 2965
    invoke-virtual {p0, p1}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI$Builder;

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
    .line 2965
    invoke-virtual {p0, p1, p2}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI$Builder;

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
    .line 2965
    invoke-virtual {p0, p1, p2}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 2965
    invoke-virtual {p0, p1}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI$Builder;

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
    .line 2965
    invoke-virtual {p0, p1, p2}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI$Builder;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 3268
    invoke-virtual {p0}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI$Builder;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v0

    invoke-static {v0}, Lcom/google/protobuf/UnknownFieldSet;->newBuilder(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/UnknownFieldSet$Builder;

    move-result-object v0

    .line 3272
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v1

    .line 3273
    sparse-switch v1, :sswitch_data_0

    .line 3279
    invoke-virtual {p0, p1, v0, p2, v1}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI$Builder;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/UnknownFieldSet$Builder;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 3281
    invoke-virtual {v0}, Lcom/google/protobuf/UnknownFieldSet$Builder;->build()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI$Builder;->setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessage$Builder;

    .line 3282
    invoke-virtual {p0}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI$Builder;->onChanged()V

    .line 3283
    :goto_1
    return-object p0

    .line 3275
    :sswitch_0
    invoke-virtual {v0}, Lcom/google/protobuf/UnknownFieldSet$Builder;->build()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI$Builder;->setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessage$Builder;

    .line 3276
    invoke-virtual {p0}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI$Builder;->onChanged()V

    goto :goto_1

    .line 3288
    :sswitch_1
    iget v1, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI$Builder;->bitField0_:I

    or-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI$Builder;->bitField0_:I

    .line 3289
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    iput-object v1, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI$Builder;->name_:Ljava/lang/Object;

    goto :goto_0

    .line 3293
    :sswitch_2
    iget v1, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI$Builder;->bitField0_:I

    or-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI$Builder;->bitField0_:I

    .line 3294
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    iput-object v1, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI$Builder;->level_:Ljava/lang/Object;

    goto :goto_0

    .line 3298
    :sswitch_3
    iget v1, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI$Builder;->bitField0_:I

    or-int/lit8 v1, v1, 0x4

    iput v1, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI$Builder;->bitField0_:I

    .line 3299
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    iput-object v1, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI$Builder;->x_:Ljava/lang/Object;

    goto :goto_0

    .line 3303
    :sswitch_4
    iget v1, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI$Builder;->bitField0_:I

    or-int/lit8 v1, v1, 0x8

    iput v1, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI$Builder;->bitField0_:I

    .line 3304
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    iput-object v1, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI$Builder;->y_:Ljava/lang/Object;

    goto :goto_0

    .line 3308
    :sswitch_5
    iget v1, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI$Builder;->bitField0_:I

    or-int/lit8 v1, v1, 0x10

    iput v1, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI$Builder;->bitField0_:I

    .line 3309
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    iput-object v1, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI$Builder;->address_:Ljava/lang/Object;

    goto :goto_0

    .line 3313
    :sswitch_6
    iget v1, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI$Builder;->bitField0_:I

    or-int/lit8 v1, v1, 0x20

    iput v1, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI$Builder;->bitField0_:I

    .line 3314
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    iput-object v1, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI$Builder;->province_:Ljava/lang/Object;

    goto :goto_0

    .line 3318
    :sswitch_7
    iget v1, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI$Builder;->bitField0_:I

    or-int/lit8 v1, v1, 0x40

    iput v1, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI$Builder;->bitField0_:I

    .line 3319
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    iput-object v1, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI$Builder;->city_:Ljava/lang/Object;

    goto :goto_0

    .line 3323
    :sswitch_8
    iget v1, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI$Builder;->bitField0_:I

    or-int/lit16 v1, v1, 0x80

    iput v1, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI$Builder;->bitField0_:I

    .line 3324
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    iput-object v1, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI$Builder;->ename_:Ljava/lang/Object;

    goto/16 :goto_0

    .line 3328
    :sswitch_9
    iget v1, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI$Builder;->bitField0_:I

    or-int/lit16 v1, v1, 0x100

    iput v1, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI$Builder;->bitField0_:I

    .line 3329
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    iput-object v1, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI$Builder;->district_:Ljava/lang/Object;

    goto/16 :goto_0

    .line 3333
    :sswitch_a
    iget v1, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI$Builder;->bitField0_:I

    or-int/lit16 v1, v1, 0x200

    iput v1, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI$Builder;->bitField0_:I

    .line 3334
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    iput-object v1, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI$Builder;->range_:Ljava/lang/Object;

    goto/16 :goto_0

    .line 3338
    :sswitch_b
    iget v1, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI$Builder;->bitField0_:I

    or-int/lit16 v1, v1, 0x400

    iput v1, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI$Builder;->bitField0_:I

    .line 3339
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    iput-object v1, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI$Builder;->num_:Ljava/lang/Object;

    goto/16 :goto_0

    .line 3343
    :sswitch_c
    iget v1, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI$Builder;->bitField0_:I

    or-int/lit16 v1, v1, 0x800

    iput v1, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI$Builder;->bitField0_:I

    .line 3344
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    iput-object v1, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI$Builder;->inum_:Ljava/lang/Object;

    goto/16 :goto_0

    .line 3348
    :sswitch_d
    iget v1, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI$Builder;->bitField0_:I

    or-int/lit16 v1, v1, 0x1000

    iput v1, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI$Builder;->bitField0_:I

    .line 3349
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    iput-object v1, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI$Builder;->prox_:Ljava/lang/Object;

    goto/16 :goto_0

    .line 3353
    :sswitch_e
    iget v1, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI$Builder;->bitField0_:I

    or-int/lit16 v1, v1, 0x2000

    iput v1, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI$Builder;->bitField0_:I

    .line 3354
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    iput-object v1, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI$Builder;->score_:Ljava/lang/Object;

    goto/16 :goto_0

    .line 3358
    :sswitch_f
    iget v1, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI$Builder;->bitField0_:I

    or-int/lit16 v1, v1, 0x4000

    iput v1, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI$Builder;->bitField0_:I

    .line 3359
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    iput-object v1, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI$Builder;->eprovince_:Ljava/lang/Object;

    goto/16 :goto_0

    .line 3363
    :sswitch_10
    iget v1, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI$Builder;->bitField0_:I

    const v2, 0x8000

    or-int/2addr v1, v2

    iput v1, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI$Builder;->bitField0_:I

    .line 3364
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    iput-object v1, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI$Builder;->ecity_:Ljava/lang/Object;

    goto/16 :goto_0

    .line 3368
    :sswitch_11
    iget v1, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI$Builder;->bitField0_:I

    const/high16 v2, 0x10000

    or-int/2addr v1, v2

    iput v1, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI$Builder;->bitField0_:I

    .line 3369
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    iput-object v1, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI$Builder;->edistrict_:Ljava/lang/Object;

    goto/16 :goto_0

    .line 3373
    :sswitch_12
    iget v1, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI$Builder;->bitField0_:I

    const/high16 v2, 0x20000

    or-int/2addr v1, v2

    iput v1, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI$Builder;->bitField0_:I

    .line 3374
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    iput-object v1, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI$Builder;->eaddress_:Ljava/lang/Object;

    goto/16 :goto_0

    .line 3378
    :sswitch_13
    iget v1, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI$Builder;->bitField0_:I

    const/high16 v2, 0x40000

    or-int/2addr v1, v2

    iput v1, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI$Builder;->bitField0_:I

    .line 3379
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    iput-object v1, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI$Builder;->roadpts_:Ljava/lang/Object;

    goto/16 :goto_0

    .line 3383
    :sswitch_14
    invoke-static {}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$SubPOIS;->newBuilder()Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$SubPOIS$Builder;

    move-result-object v1

    .line 3384
    invoke-virtual {p0}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI$Builder;->hasSubpois()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 3385
    invoke-virtual {p0}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI$Builder;->getSubpois()Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$SubPOIS;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$SubPOIS$Builder;->mergeFrom(Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$SubPOIS;)Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$SubPOIS$Builder;

    .line 3387
    :cond_1
    invoke-virtual {p1, v1, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 3388
    invoke-virtual {v1}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$SubPOIS$Builder;->buildPartial()Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$SubPOIS;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI$Builder;->setSubpois(Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$SubPOIS;)Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI$Builder;

    goto/16 :goto_0

    .line 3273
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
        0x42 -> :sswitch_8
        0x4a -> :sswitch_9
        0x52 -> :sswitch_a
        0x5a -> :sswitch_b
        0x62 -> :sswitch_c
        0x6a -> :sswitch_d
        0x72 -> :sswitch_e
        0x7a -> :sswitch_f
        0x82 -> :sswitch_10
        0x8a -> :sswitch_11
        0x92 -> :sswitch_12
        0x9a -> :sswitch_13
        0xa2 -> :sswitch_14
    .end sparse-switch
.end method

.method public mergeFrom(Lcom/google/protobuf/Message;)Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI$Builder;
    .locals 1

    .prologue
    .line 3170
    instance-of v0, p1, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI;

    if-eqz v0, :cond_0

    .line 3171
    check-cast p1, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI;

    invoke-virtual {p0, p1}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI$Builder;->mergeFrom(Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI;)Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI$Builder;

    move-result-object p0

    .line 3174
    :goto_0
    return-object p0

    .line 3173
    :cond_0
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessage$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;

    goto :goto_0
.end method

.method public mergeFrom(Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI;)Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI$Builder;
    .locals 1

    .prologue
    .line 3179
    invoke-static {}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI;->getDefaultInstance()Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI;

    move-result-object v0

    if-ne p1, v0, :cond_0

    .line 3241
    :goto_0
    return-object p0

    .line 3180
    :cond_0
    invoke-virtual {p1}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI;->hasName()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3181
    invoke-virtual {p1}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI$Builder;->setName(Ljava/lang/String;)Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI$Builder;

    .line 3183
    :cond_1
    invoke-virtual {p1}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI;->hasLevel()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3184
    invoke-virtual {p1}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI;->getLevel()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI$Builder;->setLevel(Ljava/lang/String;)Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI$Builder;

    .line 3186
    :cond_2
    invoke-virtual {p1}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI;->hasX()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 3187
    invoke-virtual {p1}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI;->getX()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI$Builder;->setX(Ljava/lang/String;)Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI$Builder;

    .line 3189
    :cond_3
    invoke-virtual {p1}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI;->hasY()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 3190
    invoke-virtual {p1}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI;->getY()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI$Builder;->setY(Ljava/lang/String;)Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI$Builder;

    .line 3192
    :cond_4
    invoke-virtual {p1}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI;->hasAddress()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 3193
    invoke-virtual {p1}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI;->getAddress()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI$Builder;->setAddress(Ljava/lang/String;)Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI$Builder;

    .line 3195
    :cond_5
    invoke-virtual {p1}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI;->hasProvince()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 3196
    invoke-virtual {p1}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI;->getProvince()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI$Builder;->setProvince(Ljava/lang/String;)Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI$Builder;

    .line 3198
    :cond_6
    invoke-virtual {p1}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI;->hasCity()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 3199
    invoke-virtual {p1}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI;->getCity()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI$Builder;->setCity(Ljava/lang/String;)Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI$Builder;

    .line 3201
    :cond_7
    invoke-virtual {p1}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI;->hasEname()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 3202
    invoke-virtual {p1}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI;->getEname()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI$Builder;->setEname(Ljava/lang/String;)Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI$Builder;

    .line 3204
    :cond_8
    invoke-virtual {p1}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI;->hasDistrict()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 3205
    invoke-virtual {p1}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI;->getDistrict()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI$Builder;->setDistrict(Ljava/lang/String;)Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI$Builder;

    .line 3207
    :cond_9
    invoke-virtual {p1}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI;->hasRange()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 3208
    invoke-virtual {p1}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI;->getRange()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI$Builder;->setRange(Ljava/lang/String;)Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI$Builder;

    .line 3210
    :cond_a
    invoke-virtual {p1}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI;->hasNum()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 3211
    invoke-virtual {p1}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI;->getNum()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI$Builder;->setNum(Ljava/lang/String;)Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI$Builder;

    .line 3213
    :cond_b
    invoke-virtual {p1}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI;->hasInum()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 3214
    invoke-virtual {p1}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI;->getInum()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI$Builder;->setInum(Ljava/lang/String;)Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI$Builder;

    .line 3216
    :cond_c
    invoke-virtual {p1}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI;->hasProx()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 3217
    invoke-virtual {p1}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI;->getProx()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI$Builder;->setProx(Ljava/lang/String;)Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI$Builder;

    .line 3219
    :cond_d
    invoke-virtual {p1}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI;->hasScore()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 3220
    invoke-virtual {p1}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI;->getScore()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI$Builder;->setScore(Ljava/lang/String;)Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI$Builder;

    .line 3222
    :cond_e
    invoke-virtual {p1}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI;->hasEprovince()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 3223
    invoke-virtual {p1}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI;->getEprovince()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI$Builder;->setEprovince(Ljava/lang/String;)Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI$Builder;

    .line 3225
    :cond_f
    invoke-virtual {p1}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI;->hasEcity()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 3226
    invoke-virtual {p1}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI;->getEcity()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI$Builder;->setEcity(Ljava/lang/String;)Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI$Builder;

    .line 3228
    :cond_10
    invoke-virtual {p1}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI;->hasEdistrict()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 3229
    invoke-virtual {p1}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI;->getEdistrict()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI$Builder;->setEdistrict(Ljava/lang/String;)Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI$Builder;

    .line 3231
    :cond_11
    invoke-virtual {p1}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI;->hasEaddress()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 3232
    invoke-virtual {p1}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI;->getEaddress()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI$Builder;->setEaddress(Ljava/lang/String;)Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI$Builder;

    .line 3234
    :cond_12
    invoke-virtual {p1}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI;->hasRoadpts()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 3235
    invoke-virtual {p1}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI;->getRoadpts()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI$Builder;->setRoadpts(Ljava/lang/String;)Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI$Builder;

    .line 3237
    :cond_13
    invoke-virtual {p1}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI;->hasSubpois()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 3238
    invoke-virtual {p1}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI;->getSubpois()Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$SubPOIS;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI$Builder;->mergeSubpois(Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$SubPOIS;)Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI$Builder;

    .line 3240
    :cond_14
    invoke-virtual {p1}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessage$Builder;

    goto/16 :goto_0
.end method

.method public mergeSubpois(Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$SubPOIS;)Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI$Builder;
    .locals 3

    .prologue
    const/high16 v2, 0x80000

    .line 4120
    iget-object v0, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI$Builder;->subpoisBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_1

    .line 4121
    iget v0, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI$Builder;->bitField0_:I

    and-int/2addr v0, v2

    if-ne v0, v2, :cond_0

    iget-object v0, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI$Builder;->subpois_:Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$SubPOIS;

    invoke-static {}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$SubPOIS;->getDefaultInstance()Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$SubPOIS;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 4123
    iget-object v0, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI$Builder;->subpois_:Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$SubPOIS;

    invoke-static {v0}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$SubPOIS;->newBuilder(Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$SubPOIS;)Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$SubPOIS$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$SubPOIS$Builder;->mergeFrom(Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$SubPOIS;)Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$SubPOIS$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$SubPOIS$Builder;->buildPartial()Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$SubPOIS;

    move-result-object v0

    iput-object v0, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI$Builder;->subpois_:Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$SubPOIS;

    .line 4128
    :goto_0
    invoke-virtual {p0}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI$Builder;->onChanged()V

    .line 4132
    :goto_1
    iget v0, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI$Builder;->bitField0_:I

    or-int/2addr v0, v2

    iput v0, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI$Builder;->bitField0_:I

    .line 4133
    return-object p0

    .line 4126
    :cond_0
    iput-object p1, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI$Builder;->subpois_:Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$SubPOIS;

    goto :goto_0

    .line 4130
    :cond_1
    iget-object v0, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI$Builder;->subpoisBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/SingleFieldBuilder;->mergeFrom(Lcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/SingleFieldBuilder;

    goto :goto_1
.end method

.method public setAddress(Ljava/lang/String;)Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI$Builder;
    .locals 1

    .prologue
    .line 3557
    if-nez p1, :cond_0

    .line 3558
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 3560
    :cond_0
    iget v0, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI$Builder;->bitField0_:I

    .line 3561
    iput-object p1, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI$Builder;->address_:Ljava/lang/Object;

    .line 3562
    invoke-virtual {p0}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI$Builder;->onChanged()V

    .line 3563
    return-object p0
.end method

.method setAddress(Lcom/google/protobuf/ByteString;)V
    .locals 1

    .prologue
    .line 3572
    iget v0, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI$Builder;->bitField0_:I

    .line 3573
    iput-object p1, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI$Builder;->address_:Ljava/lang/Object;

    .line 3574
    invoke-virtual {p0}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI$Builder;->onChanged()V

    .line 3575
    return-void
.end method

.method public setCity(Ljava/lang/String;)Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI$Builder;
    .locals 1

    .prologue
    .line 3629
    if-nez p1, :cond_0

    .line 3630
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 3632
    :cond_0
    iget v0, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI$Builder;->bitField0_:I

    .line 3633
    iput-object p1, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI$Builder;->city_:Ljava/lang/Object;

    .line 3634
    invoke-virtual {p0}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI$Builder;->onChanged()V

    .line 3635
    return-object p0
.end method

.method setCity(Lcom/google/protobuf/ByteString;)V
    .locals 1

    .prologue
    .line 3644
    iget v0, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI$Builder;->bitField0_:I

    .line 3645
    iput-object p1, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI$Builder;->city_:Ljava/lang/Object;

    .line 3646
    invoke-virtual {p0}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI$Builder;->onChanged()V

    .line 3647
    return-void
.end method

.method public setDistrict(Ljava/lang/String;)Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI$Builder;
    .locals 1

    .prologue
    .line 3701
    if-nez p1, :cond_0

    .line 3702
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 3704
    :cond_0
    iget v0, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x100

    iput v0, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI$Builder;->bitField0_:I

    .line 3705
    iput-object p1, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI$Builder;->district_:Ljava/lang/Object;

    .line 3706
    invoke-virtual {p0}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI$Builder;->onChanged()V

    .line 3707
    return-object p0
.end method

.method setDistrict(Lcom/google/protobuf/ByteString;)V
    .locals 1

    .prologue
    .line 3716
    iget v0, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x100

    iput v0, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI$Builder;->bitField0_:I

    .line 3717
    iput-object p1, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI$Builder;->district_:Ljava/lang/Object;

    .line 3718
    invoke-virtual {p0}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI$Builder;->onChanged()V

    .line 3719
    return-void
.end method

.method public setEaddress(Ljava/lang/String;)Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI$Builder;
    .locals 2

    .prologue
    .line 4025
    if-nez p1, :cond_0

    .line 4026
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 4028
    :cond_0
    iget v0, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI$Builder;->bitField0_:I

    const/high16 v1, 0x20000

    or-int/2addr v0, v1

    iput v0, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI$Builder;->bitField0_:I

    .line 4029
    iput-object p1, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI$Builder;->eaddress_:Ljava/lang/Object;

    .line 4030
    invoke-virtual {p0}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI$Builder;->onChanged()V

    .line 4031
    return-object p0
.end method

.method setEaddress(Lcom/google/protobuf/ByteString;)V
    .locals 2

    .prologue
    .line 4040
    iget v0, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI$Builder;->bitField0_:I

    const/high16 v1, 0x20000

    or-int/2addr v0, v1

    iput v0, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI$Builder;->bitField0_:I

    .line 4041
    iput-object p1, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI$Builder;->eaddress_:Ljava/lang/Object;

    .line 4042
    invoke-virtual {p0}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI$Builder;->onChanged()V

    .line 4043
    return-void
.end method

.method public setEcity(Ljava/lang/String;)Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI$Builder;
    .locals 2

    .prologue
    .line 3953
    if-nez p1, :cond_0

    .line 3954
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 3956
    :cond_0
    iget v0, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI$Builder;->bitField0_:I

    const v1, 0x8000

    or-int/2addr v0, v1

    iput v0, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI$Builder;->bitField0_:I

    .line 3957
    iput-object p1, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI$Builder;->ecity_:Ljava/lang/Object;

    .line 3958
    invoke-virtual {p0}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI$Builder;->onChanged()V

    .line 3959
    return-object p0
.end method

.method setEcity(Lcom/google/protobuf/ByteString;)V
    .locals 2

    .prologue
    .line 3968
    iget v0, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI$Builder;->bitField0_:I

    const v1, 0x8000

    or-int/2addr v0, v1

    iput v0, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI$Builder;->bitField0_:I

    .line 3969
    iput-object p1, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI$Builder;->ecity_:Ljava/lang/Object;

    .line 3970
    invoke-virtual {p0}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI$Builder;->onChanged()V

    .line 3971
    return-void
.end method

.method public setEdistrict(Ljava/lang/String;)Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI$Builder;
    .locals 2

    .prologue
    .line 3989
    if-nez p1, :cond_0

    .line 3990
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 3992
    :cond_0
    iget v0, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI$Builder;->bitField0_:I

    const/high16 v1, 0x10000

    or-int/2addr v0, v1

    iput v0, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI$Builder;->bitField0_:I

    .line 3993
    iput-object p1, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI$Builder;->edistrict_:Ljava/lang/Object;

    .line 3994
    invoke-virtual {p0}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI$Builder;->onChanged()V

    .line 3995
    return-object p0
.end method

.method setEdistrict(Lcom/google/protobuf/ByteString;)V
    .locals 2

    .prologue
    .line 4004
    iget v0, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI$Builder;->bitField0_:I

    const/high16 v1, 0x10000

    or-int/2addr v0, v1

    iput v0, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI$Builder;->bitField0_:I

    .line 4005
    iput-object p1, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI$Builder;->edistrict_:Ljava/lang/Object;

    .line 4006
    invoke-virtual {p0}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI$Builder;->onChanged()V

    .line 4007
    return-void
.end method

.method public setEname(Ljava/lang/String;)Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI$Builder;
    .locals 1

    .prologue
    .line 3665
    if-nez p1, :cond_0

    .line 3666
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 3668
    :cond_0
    iget v0, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x80

    iput v0, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI$Builder;->bitField0_:I

    .line 3669
    iput-object p1, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI$Builder;->ename_:Ljava/lang/Object;

    .line 3670
    invoke-virtual {p0}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI$Builder;->onChanged()V

    .line 3671
    return-object p0
.end method

.method setEname(Lcom/google/protobuf/ByteString;)V
    .locals 1

    .prologue
    .line 3680
    iget v0, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x80

    iput v0, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI$Builder;->bitField0_:I

    .line 3681
    iput-object p1, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI$Builder;->ename_:Ljava/lang/Object;

    .line 3682
    invoke-virtual {p0}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI$Builder;->onChanged()V

    .line 3683
    return-void
.end method

.method public setEprovince(Ljava/lang/String;)Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI$Builder;
    .locals 1

    .prologue
    .line 3917
    if-nez p1, :cond_0

    .line 3918
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 3920
    :cond_0
    iget v0, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x4000

    iput v0, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI$Builder;->bitField0_:I

    .line 3921
    iput-object p1, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI$Builder;->eprovince_:Ljava/lang/Object;

    .line 3922
    invoke-virtual {p0}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI$Builder;->onChanged()V

    .line 3923
    return-object p0
.end method

.method setEprovince(Lcom/google/protobuf/ByteString;)V
    .locals 1

    .prologue
    .line 3932
    iget v0, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x4000

    iput v0, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI$Builder;->bitField0_:I

    .line 3933
    iput-object p1, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI$Builder;->eprovince_:Ljava/lang/Object;

    .line 3934
    invoke-virtual {p0}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI$Builder;->onChanged()V

    .line 3935
    return-void
.end method

.method public setInum(Ljava/lang/String;)Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI$Builder;
    .locals 1

    .prologue
    .line 3809
    if-nez p1, :cond_0

    .line 3810
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 3812
    :cond_0
    iget v0, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x800

    iput v0, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI$Builder;->bitField0_:I

    .line 3813
    iput-object p1, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI$Builder;->inum_:Ljava/lang/Object;

    .line 3814
    invoke-virtual {p0}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI$Builder;->onChanged()V

    .line 3815
    return-object p0
.end method

.method setInum(Lcom/google/protobuf/ByteString;)V
    .locals 1

    .prologue
    .line 3824
    iget v0, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x800

    iput v0, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI$Builder;->bitField0_:I

    .line 3825
    iput-object p1, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI$Builder;->inum_:Ljava/lang/Object;

    .line 3826
    invoke-virtual {p0}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI$Builder;->onChanged()V

    .line 3827
    return-void
.end method

.method public setLevel(Ljava/lang/String;)Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI$Builder;
    .locals 1

    .prologue
    .line 3449
    if-nez p1, :cond_0

    .line 3450
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 3452
    :cond_0
    iget v0, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI$Builder;->bitField0_:I

    .line 3453
    iput-object p1, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI$Builder;->level_:Ljava/lang/Object;

    .line 3454
    invoke-virtual {p0}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI$Builder;->onChanged()V

    .line 3455
    return-object p0
.end method

.method setLevel(Lcom/google/protobuf/ByteString;)V
    .locals 1

    .prologue
    .line 3464
    iget v0, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI$Builder;->bitField0_:I

    .line 3465
    iput-object p1, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI$Builder;->level_:Ljava/lang/Object;

    .line 3466
    invoke-virtual {p0}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI$Builder;->onChanged()V

    .line 3467
    return-void
.end method

.method public setName(Ljava/lang/String;)Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI$Builder;
    .locals 1

    .prologue
    .line 3413
    if-nez p1, :cond_0

    .line 3414
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 3416
    :cond_0
    iget v0, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI$Builder;->bitField0_:I

    .line 3417
    iput-object p1, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI$Builder;->name_:Ljava/lang/Object;

    .line 3418
    invoke-virtual {p0}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI$Builder;->onChanged()V

    .line 3419
    return-object p0
.end method

.method setName(Lcom/google/protobuf/ByteString;)V
    .locals 1

    .prologue
    .line 3428
    iget v0, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI$Builder;->bitField0_:I

    .line 3429
    iput-object p1, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI$Builder;->name_:Ljava/lang/Object;

    .line 3430
    invoke-virtual {p0}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI$Builder;->onChanged()V

    .line 3431
    return-void
.end method

.method public setNum(Ljava/lang/String;)Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI$Builder;
    .locals 1

    .prologue
    .line 3773
    if-nez p1, :cond_0

    .line 3774
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 3776
    :cond_0
    iget v0, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x400

    iput v0, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI$Builder;->bitField0_:I

    .line 3777
    iput-object p1, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI$Builder;->num_:Ljava/lang/Object;

    .line 3778
    invoke-virtual {p0}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI$Builder;->onChanged()V

    .line 3779
    return-object p0
.end method

.method setNum(Lcom/google/protobuf/ByteString;)V
    .locals 1

    .prologue
    .line 3788
    iget v0, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x400

    iput v0, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI$Builder;->bitField0_:I

    .line 3789
    iput-object p1, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI$Builder;->num_:Ljava/lang/Object;

    .line 3790
    invoke-virtual {p0}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI$Builder;->onChanged()V

    .line 3791
    return-void
.end method

.method public setProvince(Ljava/lang/String;)Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI$Builder;
    .locals 1

    .prologue
    .line 3593
    if-nez p1, :cond_0

    .line 3594
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 3596
    :cond_0
    iget v0, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI$Builder;->bitField0_:I

    .line 3597
    iput-object p1, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI$Builder;->province_:Ljava/lang/Object;

    .line 3598
    invoke-virtual {p0}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI$Builder;->onChanged()V

    .line 3599
    return-object p0
.end method

.method setProvince(Lcom/google/protobuf/ByteString;)V
    .locals 1

    .prologue
    .line 3608
    iget v0, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI$Builder;->bitField0_:I

    .line 3609
    iput-object p1, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI$Builder;->province_:Ljava/lang/Object;

    .line 3610
    invoke-virtual {p0}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI$Builder;->onChanged()V

    .line 3611
    return-void
.end method

.method public setProx(Ljava/lang/String;)Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI$Builder;
    .locals 1

    .prologue
    .line 3845
    if-nez p1, :cond_0

    .line 3846
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 3848
    :cond_0
    iget v0, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x1000

    iput v0, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI$Builder;->bitField0_:I

    .line 3849
    iput-object p1, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI$Builder;->prox_:Ljava/lang/Object;

    .line 3850
    invoke-virtual {p0}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI$Builder;->onChanged()V

    .line 3851
    return-object p0
.end method

.method setProx(Lcom/google/protobuf/ByteString;)V
    .locals 1

    .prologue
    .line 3860
    iget v0, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x1000

    iput v0, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI$Builder;->bitField0_:I

    .line 3861
    iput-object p1, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI$Builder;->prox_:Ljava/lang/Object;

    .line 3862
    invoke-virtual {p0}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI$Builder;->onChanged()V

    .line 3863
    return-void
.end method

.method public setRange(Ljava/lang/String;)Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI$Builder;
    .locals 1

    .prologue
    .line 3737
    if-nez p1, :cond_0

    .line 3738
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 3740
    :cond_0
    iget v0, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x200

    iput v0, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI$Builder;->bitField0_:I

    .line 3741
    iput-object p1, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI$Builder;->range_:Ljava/lang/Object;

    .line 3742
    invoke-virtual {p0}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI$Builder;->onChanged()V

    .line 3743
    return-object p0
.end method

.method setRange(Lcom/google/protobuf/ByteString;)V
    .locals 1

    .prologue
    .line 3752
    iget v0, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x200

    iput v0, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI$Builder;->bitField0_:I

    .line 3753
    iput-object p1, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI$Builder;->range_:Ljava/lang/Object;

    .line 3754
    invoke-virtual {p0}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI$Builder;->onChanged()V

    .line 3755
    return-void
.end method

.method public setRoadpts(Ljava/lang/String;)Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI$Builder;
    .locals 2

    .prologue
    .line 4061
    if-nez p1, :cond_0

    .line 4062
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 4064
    :cond_0
    iget v0, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI$Builder;->bitField0_:I

    const/high16 v1, 0x40000

    or-int/2addr v0, v1

    iput v0, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI$Builder;->bitField0_:I

    .line 4065
    iput-object p1, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI$Builder;->roadpts_:Ljava/lang/Object;

    .line 4066
    invoke-virtual {p0}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI$Builder;->onChanged()V

    .line 4067
    return-object p0
.end method

.method setRoadpts(Lcom/google/protobuf/ByteString;)V
    .locals 2

    .prologue
    .line 4076
    iget v0, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI$Builder;->bitField0_:I

    const/high16 v1, 0x40000

    or-int/2addr v0, v1

    iput v0, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI$Builder;->bitField0_:I

    .line 4077
    iput-object p1, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI$Builder;->roadpts_:Ljava/lang/Object;

    .line 4078
    invoke-virtual {p0}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI$Builder;->onChanged()V

    .line 4079
    return-void
.end method

.method public setScore(Ljava/lang/String;)Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI$Builder;
    .locals 1

    .prologue
    .line 3881
    if-nez p1, :cond_0

    .line 3882
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 3884
    :cond_0
    iget v0, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x2000

    iput v0, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI$Builder;->bitField0_:I

    .line 3885
    iput-object p1, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI$Builder;->score_:Ljava/lang/Object;

    .line 3886
    invoke-virtual {p0}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI$Builder;->onChanged()V

    .line 3887
    return-object p0
.end method

.method setScore(Lcom/google/protobuf/ByteString;)V
    .locals 1

    .prologue
    .line 3896
    iget v0, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x2000

    iput v0, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI$Builder;->bitField0_:I

    .line 3897
    iput-object p1, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI$Builder;->score_:Ljava/lang/Object;

    .line 3898
    invoke-virtual {p0}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI$Builder;->onChanged()V

    .line 3899
    return-void
.end method

.method public setSubpois(Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$SubPOIS$Builder;)Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI$Builder;
    .locals 2

    .prologue
    .line 4110
    iget-object v0, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI$Builder;->subpoisBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_0

    .line 4111
    invoke-virtual {p1}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$SubPOIS$Builder;->build()Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$SubPOIS;

    move-result-object v0

    iput-object v0, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI$Builder;->subpois_:Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$SubPOIS;

    .line 4112
    invoke-virtual {p0}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI$Builder;->onChanged()V

    .line 4116
    :goto_0
    iget v0, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI$Builder;->bitField0_:I

    const/high16 v1, 0x80000

    or-int/2addr v0, v1

    iput v0, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI$Builder;->bitField0_:I

    .line 4117
    return-object p0

    .line 4114
    :cond_0
    iget-object v0, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI$Builder;->subpoisBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    invoke-virtual {p1}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$SubPOIS$Builder;->build()Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$SubPOIS;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/protobuf/SingleFieldBuilder;->setMessage(Lcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/SingleFieldBuilder;

    goto :goto_0
.end method

.method public setSubpois(Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$SubPOIS;)Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI$Builder;
    .locals 2

    .prologue
    .line 4096
    iget-object v0, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI$Builder;->subpoisBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_1

    .line 4097
    if-nez p1, :cond_0

    .line 4098
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 4100
    :cond_0
    iput-object p1, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI$Builder;->subpois_:Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$SubPOIS;

    .line 4101
    invoke-virtual {p0}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI$Builder;->onChanged()V

    .line 4105
    :goto_0
    iget v0, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI$Builder;->bitField0_:I

    const/high16 v1, 0x80000

    or-int/2addr v0, v1

    iput v0, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI$Builder;->bitField0_:I

    .line 4106
    return-object p0

    .line 4103
    :cond_1
    iget-object v0, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI$Builder;->subpoisBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/SingleFieldBuilder;->setMessage(Lcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/SingleFieldBuilder;

    goto :goto_0
.end method

.method public setX(Ljava/lang/String;)Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI$Builder;
    .locals 1

    .prologue
    .line 3485
    if-nez p1, :cond_0

    .line 3486
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 3488
    :cond_0
    iget v0, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI$Builder;->bitField0_:I

    .line 3489
    iput-object p1, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI$Builder;->x_:Ljava/lang/Object;

    .line 3490
    invoke-virtual {p0}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI$Builder;->onChanged()V

    .line 3491
    return-object p0
.end method

.method setX(Lcom/google/protobuf/ByteString;)V
    .locals 1

    .prologue
    .line 3500
    iget v0, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI$Builder;->bitField0_:I

    .line 3501
    iput-object p1, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI$Builder;->x_:Ljava/lang/Object;

    .line 3502
    invoke-virtual {p0}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI$Builder;->onChanged()V

    .line 3503
    return-void
.end method

.method public setY(Ljava/lang/String;)Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI$Builder;
    .locals 1

    .prologue
    .line 3521
    if-nez p1, :cond_0

    .line 3522
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 3524
    :cond_0
    iget v0, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI$Builder;->bitField0_:I

    .line 3525
    iput-object p1, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI$Builder;->y_:Ljava/lang/Object;

    .line 3526
    invoke-virtual {p0}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI$Builder;->onChanged()V

    .line 3527
    return-object p0
.end method

.method setY(Lcom/google/protobuf/ByteString;)V
    .locals 1

    .prologue
    .line 3536
    iget v0, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI$Builder;->bitField0_:I

    .line 3537
    iput-object p1, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI$Builder;->y_:Ljava/lang/Object;

    .line 3538
    invoke-virtual {p0}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI$Builder;->onChanged()V

    .line 3539
    return-void
.end method
