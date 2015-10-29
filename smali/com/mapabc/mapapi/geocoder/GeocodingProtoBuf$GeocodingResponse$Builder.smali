.class public final Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeocodingResponse$Builder;
.super Lcom/google/protobuf/GeneratedMessage$Builder;
.source "GeocodingProtoBuf.java"

# interfaces
.implements Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeocodingResponseOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeocodingResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessage$Builder",
        "<",
        "Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeocodingResponse$Builder;",
        ">;",
        "Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeocodingResponseOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private count_:I

.field private geocodingBuilder_:Lcom/google/protobuf/SingleFieldBuilder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/SingleFieldBuilder",
            "<",
            "Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$Geocoding;",
            "Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$Geocoding$Builder;",
            "Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeocodingOrBuilder;",
            ">;"
        }
    .end annotation
.end field

.field private geocoding_:Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$Geocoding;

.field private spellcorrectBuilder_:Lcom/google/protobuf/SingleFieldBuilder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/SingleFieldBuilder",
            "<",
            "Lcom/mapabc/mapapi/core/CommonProtoBuf$Spellcorrect;",
            "Lcom/mapabc/mapapi/core/CommonProtoBuf$Spellcorrect$Builder;",
            "Lcom/mapabc/mapapi/core/CommonProtoBuf$SpellcorrectOrBuilder;",
            ">;"
        }
    .end annotation
.end field

.field private spellcorrect_:Lcom/mapabc/mapapi/core/CommonProtoBuf$Spellcorrect;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 982
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;-><init>()V

    .line 1187
    invoke-static {}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$Geocoding;->getDefaultInstance()Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$Geocoding;

    move-result-object v0

    iput-object v0, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeocodingResponse$Builder;->geocoding_:Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$Geocoding;

    .line 1277
    invoke-static {}, Lcom/mapabc/mapapi/core/CommonProtoBuf$Spellcorrect;->getDefaultInstance()Lcom/mapabc/mapapi/core/CommonProtoBuf$Spellcorrect;

    move-result-object v0

    iput-object v0, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeocodingResponse$Builder;->spellcorrect_:Lcom/mapabc/mapapi/core/CommonProtoBuf$Spellcorrect;

    .line 983
    invoke-direct {p0}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeocodingResponse$Builder;->maybeForceBuilderInitialization()V

    .line 984
    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V
    .locals 1

    .prologue
    .line 987
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessage$Builder;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V

    .line 1187
    invoke-static {}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$Geocoding;->getDefaultInstance()Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$Geocoding;

    move-result-object v0

    iput-object v0, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeocodingResponse$Builder;->geocoding_:Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$Geocoding;

    .line 1277
    invoke-static {}, Lcom/mapabc/mapapi/core/CommonProtoBuf$Spellcorrect;->getDefaultInstance()Lcom/mapabc/mapapi/core/CommonProtoBuf$Spellcorrect;

    move-result-object v0

    iput-object v0, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeocodingResponse$Builder;->spellcorrect_:Lcom/mapabc/mapapi/core/CommonProtoBuf$Spellcorrect;

    .line 988
    invoke-direct {p0}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeocodingResponse$Builder;->maybeForceBuilderInitialization()V

    .line 989
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;Lcom/mapabc/mapapi/geocoder/c;)V
    .locals 0

    .prologue
    .line 968
    invoke-direct {p0, p1}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeocodingResponse$Builder;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V

    return-void
.end method

.method static synthetic access$1400(Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeocodingResponse$Builder;)Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeocodingResponse;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 968
    invoke-direct {p0}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeocodingResponse$Builder;->buildParsed()Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeocodingResponse;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1500()Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeocodingResponse$Builder;
    .locals 1

    .prologue
    .line 968
    invoke-static {}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeocodingResponse$Builder;->create()Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeocodingResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method private buildParsed()Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeocodingResponse;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 1042
    invoke-virtual {p0}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeocodingResponse$Builder;->buildPartial()Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeocodingResponse;

    move-result-object v0

    .line 1043
    invoke-virtual {v0}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeocodingResponse;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1044
    invoke-static {v0}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeocodingResponse$Builder;->newUninitializedMessageException(Lcom/google/protobuf/Message;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/UninitializedMessageException;->asInvalidProtocolBufferException()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0

    .line 1047
    :cond_0
    return-object v0
.end method

.method private static create()Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeocodingResponse$Builder;
    .locals 1

    .prologue
    .line 997
    new-instance v0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeocodingResponse$Builder;

    invoke-direct {v0}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeocodingResponse$Builder;-><init>()V

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 973
    # getter for: Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf;->internal_static_GeocodingResponse_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;
    invoke-static {}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf;->access$1200()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method private getGeocodingFieldBuilder()Lcom/google/protobuf/SingleFieldBuilder;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/SingleFieldBuilder",
            "<",
            "Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$Geocoding;",
            "Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$Geocoding$Builder;",
            "Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeocodingOrBuilder;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1265
    iget-object v0, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeocodingResponse$Builder;->geocodingBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_0

    .line 1266
    new-instance v0, Lcom/google/protobuf/SingleFieldBuilder;

    iget-object v1, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeocodingResponse$Builder;->geocoding_:Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$Geocoding;

    invoke-virtual {p0}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeocodingResponse$Builder;->getParentForChildren()Lcom/google/protobuf/GeneratedMessage$BuilderParent;

    move-result-object v2

    invoke-virtual {p0}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeocodingResponse$Builder;->isClean()Z

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lcom/google/protobuf/SingleFieldBuilder;-><init>(Lcom/google/protobuf/GeneratedMessage;Lcom/google/protobuf/GeneratedMessage$BuilderParent;Z)V

    iput-object v0, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeocodingResponse$Builder;->geocodingBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    .line 1271
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeocodingResponse$Builder;->geocoding_:Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$Geocoding;

    .line 1273
    :cond_0
    iget-object v0, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeocodingResponse$Builder;->geocodingBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    return-object v0
.end method

.method private getSpellcorrectFieldBuilder()Lcom/google/protobuf/SingleFieldBuilder;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/SingleFieldBuilder",
            "<",
            "Lcom/mapabc/mapapi/core/CommonProtoBuf$Spellcorrect;",
            "Lcom/mapabc/mapapi/core/CommonProtoBuf$Spellcorrect$Builder;",
            "Lcom/mapabc/mapapi/core/CommonProtoBuf$SpellcorrectOrBuilder;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1355
    iget-object v0, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeocodingResponse$Builder;->spellcorrectBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_0

    .line 1356
    new-instance v0, Lcom/google/protobuf/SingleFieldBuilder;

    iget-object v1, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeocodingResponse$Builder;->spellcorrect_:Lcom/mapabc/mapapi/core/CommonProtoBuf$Spellcorrect;

    invoke-virtual {p0}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeocodingResponse$Builder;->getParentForChildren()Lcom/google/protobuf/GeneratedMessage$BuilderParent;

    move-result-object v2

    invoke-virtual {p0}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeocodingResponse$Builder;->isClean()Z

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lcom/google/protobuf/SingleFieldBuilder;-><init>(Lcom/google/protobuf/GeneratedMessage;Lcom/google/protobuf/GeneratedMessage$BuilderParent;Z)V

    iput-object v0, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeocodingResponse$Builder;->spellcorrectBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    .line 1361
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeocodingResponse$Builder;->spellcorrect_:Lcom/mapabc/mapapi/core/CommonProtoBuf$Spellcorrect;

    .line 1363
    :cond_0
    iget-object v0, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeocodingResponse$Builder;->spellcorrectBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .locals 1

    .prologue
    .line 991
    # getter for: Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeocodingResponse;->alwaysUseFieldBuilders:Z
    invoke-static {}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeocodingResponse;->access$1700()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 992
    invoke-direct {p0}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeocodingResponse$Builder;->getGeocodingFieldBuilder()Lcom/google/protobuf/SingleFieldBuilder;

    .line 993
    invoke-direct {p0}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeocodingResponse$Builder;->getSpellcorrectFieldBuilder()Lcom/google/protobuf/SingleFieldBuilder;

    .line 995
    :cond_0
    return-void
.end method


# virtual methods
.method public bridge synthetic build()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 968
    invoke-virtual {p0}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeocodingResponse$Builder;->build()Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeocodingResponse;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 968
    invoke-virtual {p0}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeocodingResponse$Builder;->build()Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeocodingResponse;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeocodingResponse;
    .locals 2

    .prologue
    .line 1033
    invoke-virtual {p0}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeocodingResponse$Builder;->buildPartial()Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeocodingResponse;

    move-result-object v0

    .line 1034
    invoke-virtual {v0}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeocodingResponse;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1035
    invoke-static {v0}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeocodingResponse$Builder;->newUninitializedMessageException(Lcom/google/protobuf/Message;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0

    .line 1037
    :cond_0
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 968
    invoke-virtual {p0}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeocodingResponse$Builder;->buildPartial()Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeocodingResponse;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 968
    invoke-virtual {p0}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeocodingResponse$Builder;->buildPartial()Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeocodingResponse;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeocodingResponse;
    .locals 5

    .prologue
    const/4 v0, 0x1

    .line 1051
    new-instance v2, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeocodingResponse;

    const/4 v1, 0x0

    invoke-direct {v2, p0, v1}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeocodingResponse;-><init>(Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeocodingResponse$Builder;Lcom/mapabc/mapapi/geocoder/c;)V

    .line 1052
    iget v3, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeocodingResponse$Builder;->bitField0_:I

    .line 1053
    const/4 v1, 0x0

    .line 1054
    and-int/lit8 v4, v3, 0x1

    if-ne v4, v0, :cond_4

    .line 1057
    :goto_0
    iget v1, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeocodingResponse$Builder;->count_:I

    # setter for: Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeocodingResponse;->count_:I
    invoke-static {v2, v1}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeocodingResponse;->access$1902(Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeocodingResponse;I)I

    .line 1058
    and-int/lit8 v1, v3, 0x2

    const/4 v4, 0x2

    if-ne v1, v4, :cond_3

    .line 1059
    or-int/lit8 v0, v0, 0x2

    move v1, v0

    .line 1061
    :goto_1
    iget-object v0, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeocodingResponse$Builder;->geocodingBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_1

    .line 1062
    iget-object v0, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeocodingResponse$Builder;->geocoding_:Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$Geocoding;

    # setter for: Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeocodingResponse;->geocoding_:Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$Geocoding;
    invoke-static {v2, v0}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeocodingResponse;->access$2002(Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeocodingResponse;Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$Geocoding;)Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$Geocoding;

    .line 1066
    :goto_2
    and-int/lit8 v0, v3, 0x4

    const/4 v3, 0x4

    if-ne v0, v3, :cond_0

    .line 1067
    or-int/lit8 v1, v1, 0x4

    .line 1069
    :cond_0
    iget-object v0, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeocodingResponse$Builder;->spellcorrectBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_2

    .line 1070
    iget-object v0, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeocodingResponse$Builder;->spellcorrect_:Lcom/mapabc/mapapi/core/CommonProtoBuf$Spellcorrect;

    # setter for: Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeocodingResponse;->spellcorrect_:Lcom/mapabc/mapapi/core/CommonProtoBuf$Spellcorrect;
    invoke-static {v2, v0}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeocodingResponse;->access$2102(Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeocodingResponse;Lcom/mapabc/mapapi/core/CommonProtoBuf$Spellcorrect;)Lcom/mapabc/mapapi/core/CommonProtoBuf$Spellcorrect;

    .line 1074
    :goto_3
    # setter for: Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeocodingResponse;->bitField0_:I
    invoke-static {v2, v1}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeocodingResponse;->access$2202(Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeocodingResponse;I)I

    .line 1075
    invoke-virtual {p0}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeocodingResponse$Builder;->onBuilt()V

    .line 1076
    return-object v2

    .line 1064
    :cond_1
    iget-object v0, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeocodingResponse$Builder;->geocodingBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilder;->build()Lcom/google/protobuf/GeneratedMessage;

    move-result-object v0

    check-cast v0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$Geocoding;

    # setter for: Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeocodingResponse;->geocoding_:Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$Geocoding;
    invoke-static {v2, v0}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeocodingResponse;->access$2002(Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeocodingResponse;Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$Geocoding;)Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$Geocoding;

    goto :goto_2

    .line 1072
    :cond_2
    iget-object v0, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeocodingResponse$Builder;->spellcorrectBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilder;->build()Lcom/google/protobuf/GeneratedMessage;

    move-result-object v0

    check-cast v0, Lcom/mapabc/mapapi/core/CommonProtoBuf$Spellcorrect;

    # setter for: Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeocodingResponse;->spellcorrect_:Lcom/mapabc/mapapi/core/CommonProtoBuf$Spellcorrect;
    invoke-static {v2, v0}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeocodingResponse;->access$2102(Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeocodingResponse;Lcom/mapabc/mapapi/core/CommonProtoBuf$Spellcorrect;)Lcom/mapabc/mapapi/core/CommonProtoBuf$Spellcorrect;

    goto :goto_3

    :cond_3
    move v1, v0

    goto :goto_1

    :cond_4
    move v0, v1

    goto :goto_0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 968
    invoke-virtual {p0}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeocodingResponse$Builder;->clear()Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeocodingResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessage$Builder;
    .locals 1

    .prologue
    .line 968
    invoke-virtual {p0}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeocodingResponse$Builder;->clear()Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeocodingResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 968
    invoke-virtual {p0}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeocodingResponse$Builder;->clear()Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeocodingResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 968
    invoke-virtual {p0}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeocodingResponse$Builder;->clear()Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeocodingResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeocodingResponse$Builder;
    .locals 1

    .prologue
    .line 1001
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->clear()Lcom/google/protobuf/GeneratedMessage$Builder;

    .line 1002
    const/4 v0, 0x0

    iput v0, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeocodingResponse$Builder;->count_:I

    .line 1003
    iget v0, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeocodingResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeocodingResponse$Builder;->bitField0_:I

    .line 1004
    iget-object v0, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeocodingResponse$Builder;->geocodingBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_0

    .line 1005
    invoke-static {}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$Geocoding;->getDefaultInstance()Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$Geocoding;

    move-result-object v0

    iput-object v0, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeocodingResponse$Builder;->geocoding_:Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$Geocoding;

    .line 1009
    :goto_0
    iget v0, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeocodingResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeocodingResponse$Builder;->bitField0_:I

    .line 1010
    iget-object v0, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeocodingResponse$Builder;->spellcorrectBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_1

    .line 1011
    invoke-static {}, Lcom/mapabc/mapapi/core/CommonProtoBuf$Spellcorrect;->getDefaultInstance()Lcom/mapabc/mapapi/core/CommonProtoBuf$Spellcorrect;

    move-result-object v0

    iput-object v0, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeocodingResponse$Builder;->spellcorrect_:Lcom/mapabc/mapapi/core/CommonProtoBuf$Spellcorrect;

    .line 1015
    :goto_1
    iget v0, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeocodingResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeocodingResponse$Builder;->bitField0_:I

    .line 1016
    return-object p0

    .line 1007
    :cond_0
    iget-object v0, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeocodingResponse$Builder;->geocodingBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilder;->clear()Lcom/google/protobuf/SingleFieldBuilder;

    goto :goto_0

    .line 1013
    :cond_1
    iget-object v0, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeocodingResponse$Builder;->spellcorrectBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilder;->clear()Lcom/google/protobuf/SingleFieldBuilder;

    goto :goto_1
.end method

.method public clearCount()Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeocodingResponse$Builder;
    .locals 1

    .prologue
    .line 1180
    iget v0, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeocodingResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeocodingResponse$Builder;->bitField0_:I

    .line 1181
    const/4 v0, 0x0

    iput v0, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeocodingResponse$Builder;->count_:I

    .line 1182
    invoke-virtual {p0}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeocodingResponse$Builder;->onChanged()V

    .line 1183
    return-object p0
.end method

.method public clearGeocoding()Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeocodingResponse$Builder;
    .locals 1

    .prologue
    .line 1241
    iget-object v0, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeocodingResponse$Builder;->geocodingBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_0

    .line 1242
    invoke-static {}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$Geocoding;->getDefaultInstance()Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$Geocoding;

    move-result-object v0

    iput-object v0, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeocodingResponse$Builder;->geocoding_:Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$Geocoding;

    .line 1243
    invoke-virtual {p0}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeocodingResponse$Builder;->onChanged()V

    .line 1247
    :goto_0
    iget v0, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeocodingResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeocodingResponse$Builder;->bitField0_:I

    .line 1248
    return-object p0

    .line 1245
    :cond_0
    iget-object v0, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeocodingResponse$Builder;->geocodingBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilder;->clear()Lcom/google/protobuf/SingleFieldBuilder;

    goto :goto_0
.end method

.method public clearSpellcorrect()Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeocodingResponse$Builder;
    .locals 1

    .prologue
    .line 1331
    iget-object v0, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeocodingResponse$Builder;->spellcorrectBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_0

    .line 1332
    invoke-static {}, Lcom/mapabc/mapapi/core/CommonProtoBuf$Spellcorrect;->getDefaultInstance()Lcom/mapabc/mapapi/core/CommonProtoBuf$Spellcorrect;

    move-result-object v0

    iput-object v0, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeocodingResponse$Builder;->spellcorrect_:Lcom/mapabc/mapapi/core/CommonProtoBuf$Spellcorrect;

    .line 1333
    invoke-virtual {p0}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeocodingResponse$Builder;->onChanged()V

    .line 1337
    :goto_0
    iget v0, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeocodingResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeocodingResponse$Builder;->bitField0_:I

    .line 1338
    return-object p0

    .line 1335
    :cond_0
    iget-object v0, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeocodingResponse$Builder;->spellcorrectBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilder;->clear()Lcom/google/protobuf/SingleFieldBuilder;

    goto :goto_0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 968
    invoke-virtual {p0}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeocodingResponse$Builder;->clone()Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeocodingResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .prologue
    .line 968
    invoke-virtual {p0}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeocodingResponse$Builder;->clone()Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeocodingResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessage$Builder;
    .locals 1

    .prologue
    .line 968
    invoke-virtual {p0}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeocodingResponse$Builder;->clone()Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeocodingResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 968
    invoke-virtual {p0}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeocodingResponse$Builder;->clone()Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeocodingResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 968
    invoke-virtual {p0}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeocodingResponse$Builder;->clone()Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeocodingResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeocodingResponse$Builder;
    .locals 2

    .prologue
    .line 1020
    invoke-static {}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeocodingResponse$Builder;->create()Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeocodingResponse$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeocodingResponse$Builder;->buildPartial()Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeocodingResponse;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeocodingResponse$Builder;->mergeFrom(Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeocodingResponse;)Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeocodingResponse$Builder;

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
    .line 968
    invoke-virtual {p0}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeocodingResponse$Builder;->clone()Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeocodingResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 1171
    iget v0, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeocodingResponse$Builder;->count_:I

    return v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 968
    invoke-virtual {p0}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeocodingResponse$Builder;->getDefaultInstanceForType()Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeocodingResponse;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 968
    invoke-virtual {p0}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeocodingResponse$Builder;->getDefaultInstanceForType()Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeocodingResponse;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeocodingResponse;
    .locals 1

    .prologue
    .line 1029
    invoke-static {}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeocodingResponse;->getDefaultInstance()Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeocodingResponse;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 1025
    invoke-static {}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeocodingResponse;->getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public getGeocoding()Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$Geocoding;
    .locals 1

    .prologue
    .line 1194
    iget-object v0, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeocodingResponse$Builder;->geocodingBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_0

    .line 1195
    iget-object v0, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeocodingResponse$Builder;->geocoding_:Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$Geocoding;

    .line 1197
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeocodingResponse$Builder;->geocodingBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilder;->getMessage()Lcom/google/protobuf/GeneratedMessage;

    move-result-object v0

    check-cast v0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$Geocoding;

    goto :goto_0
.end method

.method public getGeocodingBuilder()Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$Geocoding$Builder;
    .locals 1

    .prologue
    .line 1251
    iget v0, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeocodingResponse$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeocodingResponse$Builder;->bitField0_:I

    .line 1252
    invoke-virtual {p0}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeocodingResponse$Builder;->onChanged()V

    .line 1253
    invoke-direct {p0}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeocodingResponse$Builder;->getGeocodingFieldBuilder()Lcom/google/protobuf/SingleFieldBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilder;->getBuilder()Lcom/google/protobuf/GeneratedMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$Geocoding$Builder;

    return-object v0
.end method

.method public getGeocodingOrBuilder()Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeocodingOrBuilder;
    .locals 1

    .prologue
    .line 1256
    iget-object v0, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeocodingResponse$Builder;->geocodingBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-eqz v0, :cond_0

    .line 1257
    iget-object v0, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeocodingResponse$Builder;->geocodingBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilder;->getMessageOrBuilder()Lcom/google/protobuf/MessageOrBuilder;

    move-result-object v0

    check-cast v0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeocodingOrBuilder;

    .line 1259
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeocodingResponse$Builder;->geocoding_:Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$Geocoding;

    goto :goto_0
.end method

.method public getSpellcorrect()Lcom/mapabc/mapapi/core/CommonProtoBuf$Spellcorrect;
    .locals 1

    .prologue
    .line 1284
    iget-object v0, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeocodingResponse$Builder;->spellcorrectBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_0

    .line 1285
    iget-object v0, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeocodingResponse$Builder;->spellcorrect_:Lcom/mapabc/mapapi/core/CommonProtoBuf$Spellcorrect;

    .line 1287
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeocodingResponse$Builder;->spellcorrectBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilder;->getMessage()Lcom/google/protobuf/GeneratedMessage;

    move-result-object v0

    check-cast v0, Lcom/mapabc/mapapi/core/CommonProtoBuf$Spellcorrect;

    goto :goto_0
.end method

.method public getSpellcorrectBuilder()Lcom/mapabc/mapapi/core/CommonProtoBuf$Spellcorrect$Builder;
    .locals 1

    .prologue
    .line 1341
    iget v0, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeocodingResponse$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeocodingResponse$Builder;->bitField0_:I

    .line 1342
    invoke-virtual {p0}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeocodingResponse$Builder;->onChanged()V

    .line 1343
    invoke-direct {p0}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeocodingResponse$Builder;->getSpellcorrectFieldBuilder()Lcom/google/protobuf/SingleFieldBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilder;->getBuilder()Lcom/google/protobuf/GeneratedMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/mapabc/mapapi/core/CommonProtoBuf$Spellcorrect$Builder;

    return-object v0
.end method

.method public getSpellcorrectOrBuilder()Lcom/mapabc/mapapi/core/CommonProtoBuf$SpellcorrectOrBuilder;
    .locals 1

    .prologue
    .line 1346
    iget-object v0, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeocodingResponse$Builder;->spellcorrectBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-eqz v0, :cond_0

    .line 1347
    iget-object v0, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeocodingResponse$Builder;->spellcorrectBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilder;->getMessageOrBuilder()Lcom/google/protobuf/MessageOrBuilder;

    move-result-object v0

    check-cast v0, Lcom/mapabc/mapapi/core/CommonProtoBuf$SpellcorrectOrBuilder;

    .line 1349
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeocodingResponse$Builder;->spellcorrect_:Lcom/mapabc/mapapi/core/CommonProtoBuf$Spellcorrect;

    goto :goto_0
.end method

.method public hasCount()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 1168
    iget v1, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeocodingResponse$Builder;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasGeocoding()Z
    .locals 2

    .prologue
    .line 1191
    iget v0, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeocodingResponse$Builder;->bitField0_:I

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

.method public hasSpellcorrect()Z
    .locals 2

    .prologue
    .line 1281
    iget v0, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeocodingResponse$Builder;->bitField0_:I

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
    .line 978
    # getter for: Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf;->internal_static_GeocodingResponse_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    invoke-static {}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf;->access$1300()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 1

    .prologue
    .line 1104
    invoke-virtual {p0}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeocodingResponse$Builder;->hasGeocoding()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1105
    invoke-virtual {p0}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeocodingResponse$Builder;->getGeocoding()Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$Geocoding;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$Geocoding;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1107
    const/4 v0, 0x0

    .line 1110
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
    .line 968
    invoke-virtual {p0, p1, p2}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeocodingResponse$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeocodingResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 968
    invoke-virtual {p0, p1}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeocodingResponse$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeocodingResponse$Builder;

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
    .line 968
    invoke-virtual {p0, p1, p2}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeocodingResponse$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeocodingResponse$Builder;

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
    .line 968
    invoke-virtual {p0, p1, p2}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeocodingResponse$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeocodingResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 968
    invoke-virtual {p0, p1}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeocodingResponse$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeocodingResponse$Builder;

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
    .line 968
    invoke-virtual {p0, p1, p2}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeocodingResponse$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeocodingResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeocodingResponse$Builder;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1117
    invoke-virtual {p0}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeocodingResponse$Builder;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v0

    invoke-static {v0}, Lcom/google/protobuf/UnknownFieldSet;->newBuilder(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/UnknownFieldSet$Builder;

    move-result-object v0

    .line 1121
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v1

    .line 1122
    sparse-switch v1, :sswitch_data_0

    .line 1128
    invoke-virtual {p0, p1, v0, p2, v1}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeocodingResponse$Builder;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/UnknownFieldSet$Builder;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1130
    invoke-virtual {v0}, Lcom/google/protobuf/UnknownFieldSet$Builder;->build()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeocodingResponse$Builder;->setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessage$Builder;

    .line 1131
    invoke-virtual {p0}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeocodingResponse$Builder;->onChanged()V

    .line 1132
    :goto_1
    return-object p0

    .line 1124
    :sswitch_0
    invoke-virtual {v0}, Lcom/google/protobuf/UnknownFieldSet$Builder;->build()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeocodingResponse$Builder;->setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessage$Builder;

    .line 1125
    invoke-virtual {p0}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeocodingResponse$Builder;->onChanged()V

    goto :goto_1

    .line 1137
    :sswitch_1
    iget v1, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeocodingResponse$Builder;->bitField0_:I

    or-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeocodingResponse$Builder;->bitField0_:I

    .line 1138
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v1

    iput v1, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeocodingResponse$Builder;->count_:I

    goto :goto_0

    .line 1142
    :sswitch_2
    invoke-static {}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$Geocoding;->newBuilder()Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$Geocoding$Builder;

    move-result-object v1

    .line 1143
    invoke-virtual {p0}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeocodingResponse$Builder;->hasGeocoding()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1144
    invoke-virtual {p0}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeocodingResponse$Builder;->getGeocoding()Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$Geocoding;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$Geocoding$Builder;->mergeFrom(Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$Geocoding;)Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$Geocoding$Builder;

    .line 1146
    :cond_1
    invoke-virtual {p1, v1, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 1147
    invoke-virtual {v1}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$Geocoding$Builder;->buildPartial()Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$Geocoding;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeocodingResponse$Builder;->setGeocoding(Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$Geocoding;)Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeocodingResponse$Builder;

    goto :goto_0

    .line 1151
    :sswitch_3
    invoke-static {}, Lcom/mapabc/mapapi/core/CommonProtoBuf$Spellcorrect;->newBuilder()Lcom/mapabc/mapapi/core/CommonProtoBuf$Spellcorrect$Builder;

    move-result-object v1

    .line 1152
    invoke-virtual {p0}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeocodingResponse$Builder;->hasSpellcorrect()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1153
    invoke-virtual {p0}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeocodingResponse$Builder;->getSpellcorrect()Lcom/mapabc/mapapi/core/CommonProtoBuf$Spellcorrect;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/mapabc/mapapi/core/CommonProtoBuf$Spellcorrect$Builder;->mergeFrom(Lcom/mapabc/mapapi/core/CommonProtoBuf$Spellcorrect;)Lcom/mapabc/mapapi/core/CommonProtoBuf$Spellcorrect$Builder;

    .line 1155
    :cond_2
    invoke-virtual {p1, v1, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 1156
    invoke-virtual {v1}, Lcom/mapabc/mapapi/core/CommonProtoBuf$Spellcorrect$Builder;->buildPartial()Lcom/mapabc/mapapi/core/CommonProtoBuf$Spellcorrect;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeocodingResponse$Builder;->setSpellcorrect(Lcom/mapabc/mapapi/core/CommonProtoBuf$Spellcorrect;)Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeocodingResponse$Builder;

    goto :goto_0

    .line 1122
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x12 -> :sswitch_2
        0x1a -> :sswitch_3
    .end sparse-switch
.end method

.method public mergeFrom(Lcom/google/protobuf/Message;)Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeocodingResponse$Builder;
    .locals 1

    .prologue
    .line 1080
    instance-of v0, p1, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeocodingResponse;

    if-eqz v0, :cond_0

    .line 1081
    check-cast p1, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeocodingResponse;

    invoke-virtual {p0, p1}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeocodingResponse$Builder;->mergeFrom(Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeocodingResponse;)Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeocodingResponse$Builder;

    move-result-object p0

    .line 1084
    :goto_0
    return-object p0

    .line 1083
    :cond_0
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessage$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;

    goto :goto_0
.end method

.method public mergeFrom(Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeocodingResponse;)Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeocodingResponse$Builder;
    .locals 1

    .prologue
    .line 1089
    invoke-static {}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeocodingResponse;->getDefaultInstance()Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeocodingResponse;

    move-result-object v0

    if-ne p1, v0, :cond_0

    .line 1100
    :goto_0
    return-object p0

    .line 1090
    :cond_0
    invoke-virtual {p1}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeocodingResponse;->hasCount()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1091
    invoke-virtual {p1}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeocodingResponse;->getCount()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeocodingResponse$Builder;->setCount(I)Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeocodingResponse$Builder;

    .line 1093
    :cond_1
    invoke-virtual {p1}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeocodingResponse;->hasGeocoding()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1094
    invoke-virtual {p1}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeocodingResponse;->getGeocoding()Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$Geocoding;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeocodingResponse$Builder;->mergeGeocoding(Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$Geocoding;)Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeocodingResponse$Builder;

    .line 1096
    :cond_2
    invoke-virtual {p1}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeocodingResponse;->hasSpellcorrect()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1097
    invoke-virtual {p1}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeocodingResponse;->getSpellcorrect()Lcom/mapabc/mapapi/core/CommonProtoBuf$Spellcorrect;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeocodingResponse$Builder;->mergeSpellcorrect(Lcom/mapabc/mapapi/core/CommonProtoBuf$Spellcorrect;)Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeocodingResponse$Builder;

    .line 1099
    :cond_3
    invoke-virtual {p1}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeocodingResponse;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeocodingResponse$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessage$Builder;

    goto :goto_0
.end method

.method public mergeGeocoding(Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$Geocoding;)Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeocodingResponse$Builder;
    .locals 2

    .prologue
    .line 1225
    iget-object v0, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeocodingResponse$Builder;->geocodingBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_1

    .line 1226
    iget v0, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeocodingResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeocodingResponse$Builder;->geocoding_:Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$Geocoding;

    invoke-static {}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$Geocoding;->getDefaultInstance()Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$Geocoding;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 1228
    iget-object v0, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeocodingResponse$Builder;->geocoding_:Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$Geocoding;

    invoke-static {v0}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$Geocoding;->newBuilder(Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$Geocoding;)Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$Geocoding$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$Geocoding$Builder;->mergeFrom(Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$Geocoding;)Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$Geocoding$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$Geocoding$Builder;->buildPartial()Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$Geocoding;

    move-result-object v0

    iput-object v0, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeocodingResponse$Builder;->geocoding_:Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$Geocoding;

    .line 1233
    :goto_0
    invoke-virtual {p0}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeocodingResponse$Builder;->onChanged()V

    .line 1237
    :goto_1
    iget v0, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeocodingResponse$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeocodingResponse$Builder;->bitField0_:I

    .line 1238
    return-object p0

    .line 1231
    :cond_0
    iput-object p1, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeocodingResponse$Builder;->geocoding_:Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$Geocoding;

    goto :goto_0

    .line 1235
    :cond_1
    iget-object v0, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeocodingResponse$Builder;->geocodingBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/SingleFieldBuilder;->mergeFrom(Lcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/SingleFieldBuilder;

    goto :goto_1
.end method

.method public mergeSpellcorrect(Lcom/mapabc/mapapi/core/CommonProtoBuf$Spellcorrect;)Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeocodingResponse$Builder;
    .locals 2

    .prologue
    .line 1315
    iget-object v0, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeocodingResponse$Builder;->spellcorrectBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_1

    .line 1316
    iget v0, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeocodingResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeocodingResponse$Builder;->spellcorrect_:Lcom/mapabc/mapapi/core/CommonProtoBuf$Spellcorrect;

    invoke-static {}, Lcom/mapabc/mapapi/core/CommonProtoBuf$Spellcorrect;->getDefaultInstance()Lcom/mapabc/mapapi/core/CommonProtoBuf$Spellcorrect;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 1318
    iget-object v0, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeocodingResponse$Builder;->spellcorrect_:Lcom/mapabc/mapapi/core/CommonProtoBuf$Spellcorrect;

    invoke-static {v0}, Lcom/mapabc/mapapi/core/CommonProtoBuf$Spellcorrect;->newBuilder(Lcom/mapabc/mapapi/core/CommonProtoBuf$Spellcorrect;)Lcom/mapabc/mapapi/core/CommonProtoBuf$Spellcorrect$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/mapabc/mapapi/core/CommonProtoBuf$Spellcorrect$Builder;->mergeFrom(Lcom/mapabc/mapapi/core/CommonProtoBuf$Spellcorrect;)Lcom/mapabc/mapapi/core/CommonProtoBuf$Spellcorrect$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mapabc/mapapi/core/CommonProtoBuf$Spellcorrect$Builder;->buildPartial()Lcom/mapabc/mapapi/core/CommonProtoBuf$Spellcorrect;

    move-result-object v0

    iput-object v0, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeocodingResponse$Builder;->spellcorrect_:Lcom/mapabc/mapapi/core/CommonProtoBuf$Spellcorrect;

    .line 1323
    :goto_0
    invoke-virtual {p0}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeocodingResponse$Builder;->onChanged()V

    .line 1327
    :goto_1
    iget v0, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeocodingResponse$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeocodingResponse$Builder;->bitField0_:I

    .line 1328
    return-object p0

    .line 1321
    :cond_0
    iput-object p1, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeocodingResponse$Builder;->spellcorrect_:Lcom/mapabc/mapapi/core/CommonProtoBuf$Spellcorrect;

    goto :goto_0

    .line 1325
    :cond_1
    iget-object v0, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeocodingResponse$Builder;->spellcorrectBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/SingleFieldBuilder;->mergeFrom(Lcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/SingleFieldBuilder;

    goto :goto_1
.end method

.method public setCount(I)Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeocodingResponse$Builder;
    .locals 1

    .prologue
    .line 1174
    iget v0, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeocodingResponse$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeocodingResponse$Builder;->bitField0_:I

    .line 1175
    iput p1, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeocodingResponse$Builder;->count_:I

    .line 1176
    invoke-virtual {p0}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeocodingResponse$Builder;->onChanged()V

    .line 1177
    return-object p0
.end method

.method public setGeocoding(Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$Geocoding$Builder;)Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeocodingResponse$Builder;
    .locals 2

    .prologue
    .line 1215
    iget-object v0, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeocodingResponse$Builder;->geocodingBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_0

    .line 1216
    invoke-virtual {p1}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$Geocoding$Builder;->build()Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$Geocoding;

    move-result-object v0

    iput-object v0, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeocodingResponse$Builder;->geocoding_:Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$Geocoding;

    .line 1217
    invoke-virtual {p0}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeocodingResponse$Builder;->onChanged()V

    .line 1221
    :goto_0
    iget v0, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeocodingResponse$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeocodingResponse$Builder;->bitField0_:I

    .line 1222
    return-object p0

    .line 1219
    :cond_0
    iget-object v0, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeocodingResponse$Builder;->geocodingBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    invoke-virtual {p1}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$Geocoding$Builder;->build()Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$Geocoding;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/protobuf/SingleFieldBuilder;->setMessage(Lcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/SingleFieldBuilder;

    goto :goto_0
.end method

.method public setGeocoding(Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$Geocoding;)Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeocodingResponse$Builder;
    .locals 1

    .prologue
    .line 1201
    iget-object v0, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeocodingResponse$Builder;->geocodingBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_1

    .line 1202
    if-nez p1, :cond_0

    .line 1203
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1205
    :cond_0
    iput-object p1, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeocodingResponse$Builder;->geocoding_:Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$Geocoding;

    .line 1206
    invoke-virtual {p0}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeocodingResponse$Builder;->onChanged()V

    .line 1210
    :goto_0
    iget v0, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeocodingResponse$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeocodingResponse$Builder;->bitField0_:I

    .line 1211
    return-object p0

    .line 1208
    :cond_1
    iget-object v0, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeocodingResponse$Builder;->geocodingBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/SingleFieldBuilder;->setMessage(Lcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/SingleFieldBuilder;

    goto :goto_0
.end method

.method public setSpellcorrect(Lcom/mapabc/mapapi/core/CommonProtoBuf$Spellcorrect$Builder;)Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeocodingResponse$Builder;
    .locals 2

    .prologue
    .line 1305
    iget-object v0, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeocodingResponse$Builder;->spellcorrectBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_0

    .line 1306
    invoke-virtual {p1}, Lcom/mapabc/mapapi/core/CommonProtoBuf$Spellcorrect$Builder;->build()Lcom/mapabc/mapapi/core/CommonProtoBuf$Spellcorrect;

    move-result-object v0

    iput-object v0, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeocodingResponse$Builder;->spellcorrect_:Lcom/mapabc/mapapi/core/CommonProtoBuf$Spellcorrect;

    .line 1307
    invoke-virtual {p0}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeocodingResponse$Builder;->onChanged()V

    .line 1311
    :goto_0
    iget v0, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeocodingResponse$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeocodingResponse$Builder;->bitField0_:I

    .line 1312
    return-object p0

    .line 1309
    :cond_0
    iget-object v0, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeocodingResponse$Builder;->spellcorrectBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    invoke-virtual {p1}, Lcom/mapabc/mapapi/core/CommonProtoBuf$Spellcorrect$Builder;->build()Lcom/mapabc/mapapi/core/CommonProtoBuf$Spellcorrect;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/protobuf/SingleFieldBuilder;->setMessage(Lcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/SingleFieldBuilder;

    goto :goto_0
.end method

.method public setSpellcorrect(Lcom/mapabc/mapapi/core/CommonProtoBuf$Spellcorrect;)Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeocodingResponse$Builder;
    .locals 1

    .prologue
    .line 1291
    iget-object v0, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeocodingResponse$Builder;->spellcorrectBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_1

    .line 1292
    if-nez p1, :cond_0

    .line 1293
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1295
    :cond_0
    iput-object p1, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeocodingResponse$Builder;->spellcorrect_:Lcom/mapabc/mapapi/core/CommonProtoBuf$Spellcorrect;

    .line 1296
    invoke-virtual {p0}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeocodingResponse$Builder;->onChanged()V

    .line 1300
    :goto_0
    iget v0, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeocodingResponse$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeocodingResponse$Builder;->bitField0_:I

    .line 1301
    return-object p0

    .line 1298
    :cond_1
    iget-object v0, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeocodingResponse$Builder;->spellcorrectBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/SingleFieldBuilder;->setMessage(Lcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/SingleFieldBuilder;

    goto :goto_0
.end method
