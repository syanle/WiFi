.class public final Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeocodingResponse;
.super Lcom/google/protobuf/GeneratedMessage;
.source "GeocodingProtoBuf.java"

# interfaces
.implements Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeocodingResponseOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "GeocodingResponse"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeocodingResponse$Builder;
    }
.end annotation


# static fields
.field public static final COUNT_FIELD_NUMBER:I = 0x1

.field public static final GEOCODING_FIELD_NUMBER:I = 0x2

.field public static final SPELLCORRECT_FIELD_NUMBER:I = 0x3

.field private static final defaultInstance:Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeocodingResponse;

.field private static final serialVersionUID:J


# instance fields
.field private bitField0_:I

.field private count_:I

.field private geocoding_:Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$Geocoding;

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I

.field private spellcorrect_:Lcom/mapabc/mapapi/core/CommonProtoBuf$Spellcorrect;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 1370
    new-instance v0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeocodingResponse;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeocodingResponse;-><init>(Z)V

    sput-object v0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeocodingResponse;->defaultInstance:Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeocodingResponse;

    .line 1371
    sget-object v0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeocodingResponse;->defaultInstance:Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeocodingResponse;

    invoke-direct {v0}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeocodingResponse;->initFields()V

    .line 1372
    return-void
.end method

.method private constructor <init>(Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeocodingResponse$Builder;)V
    .locals 1

    .prologue
    const/4 v0, -0x1

    .line 763
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessage;-><init>(Lcom/google/protobuf/GeneratedMessage$Builder;)V

    .line 828
    iput-byte v0, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeocodingResponse;->memoizedIsInitialized:B

    .line 858
    iput v0, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeocodingResponse;->memoizedSerializedSize:I

    .line 764
    return-void
.end method

.method synthetic constructor <init>(Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeocodingResponse$Builder;Lcom/mapabc/mapapi/geocoder/c;)V
    .locals 0

    .prologue
    .line 758
    invoke-direct {p0, p1}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeocodingResponse;-><init>(Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeocodingResponse$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 1

    .prologue
    const/4 v0, -0x1

    .line 765
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage;-><init>()V

    .line 828
    iput-byte v0, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeocodingResponse;->memoizedIsInitialized:B

    .line 858
    iput v0, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeocodingResponse;->memoizedSerializedSize:I

    .line 765
    return-void
.end method

.method static synthetic access$1700()Z
    .locals 1

    .prologue
    .line 758
    sget-boolean v0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeocodingResponse;->alwaysUseFieldBuilders:Z

    return v0
.end method

.method static synthetic access$1902(Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeocodingResponse;I)I
    .locals 0

    .prologue
    .line 758
    iput p1, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeocodingResponse;->count_:I

    return p1
.end method

.method static synthetic access$2002(Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeocodingResponse;Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$Geocoding;)Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$Geocoding;
    .locals 0

    .prologue
    .line 758
    iput-object p1, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeocodingResponse;->geocoding_:Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$Geocoding;

    return-object p1
.end method

.method static synthetic access$2102(Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeocodingResponse;Lcom/mapabc/mapapi/core/CommonProtoBuf$Spellcorrect;)Lcom/mapabc/mapapi/core/CommonProtoBuf$Spellcorrect;
    .locals 0

    .prologue
    .line 758
    iput-object p1, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeocodingResponse;->spellcorrect_:Lcom/mapabc/mapapi/core/CommonProtoBuf$Spellcorrect;

    return-object p1
.end method

.method static synthetic access$2202(Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeocodingResponse;I)I
    .locals 0

    .prologue
    .line 758
    iput p1, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeocodingResponse;->bitField0_:I

    return p1
.end method

.method public static getDefaultInstance()Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeocodingResponse;
    .locals 1

    .prologue
    .line 769
    sget-object v0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeocodingResponse;->defaultInstance:Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeocodingResponse;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 778
    # getter for: Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf;->internal_static_GeocodingResponse_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;
    invoke-static {}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf;->access$1200()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method private initFields()V
    .locals 1

    .prologue
    .line 824
    const/4 v0, 0x0

    iput v0, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeocodingResponse;->count_:I

    .line 825
    invoke-static {}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$Geocoding;->getDefaultInstance()Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$Geocoding;

    move-result-object v0

    iput-object v0, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeocodingResponse;->geocoding_:Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$Geocoding;

    .line 826
    invoke-static {}, Lcom/mapabc/mapapi/core/CommonProtoBuf$Spellcorrect;->getDefaultInstance()Lcom/mapabc/mapapi/core/CommonProtoBuf$Spellcorrect;

    move-result-object v0

    iput-object v0, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeocodingResponse;->spellcorrect_:Lcom/mapabc/mapapi/core/CommonProtoBuf$Spellcorrect;

    .line 827
    return-void
.end method

.method public static newBuilder()Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeocodingResponse$Builder;
    .locals 1

    .prologue
    .line 955
    # invokes: Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeocodingResponse$Builder;->create()Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeocodingResponse$Builder;
    invoke-static {}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeocodingResponse$Builder;->access$1500()Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeocodingResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeocodingResponse;)Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeocodingResponse$Builder;
    .locals 1

    .prologue
    .line 958
    invoke-static {}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeocodingResponse;->newBuilder()Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeocodingResponse$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeocodingResponse$Builder;->mergeFrom(Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeocodingResponse;)Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeocodingResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeocodingResponse;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 924
    invoke-static {}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeocodingResponse;->newBuilder()Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeocodingResponse$Builder;

    move-result-object v0

    .line 925
    invoke-virtual {v0, p0}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeocodingResponse$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 926
    # invokes: Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeocodingResponse$Builder;->buildParsed()Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeocodingResponse;
    invoke-static {v0}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeocodingResponse$Builder;->access$1400(Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeocodingResponse$Builder;)Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeocodingResponse;

    move-result-object v0

    .line 928
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeocodingResponse;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 935
    invoke-static {}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeocodingResponse;->newBuilder()Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeocodingResponse$Builder;

    move-result-object v0

    .line 936
    invoke-virtual {v0, p0, p1}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeocodingResponse$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 937
    # invokes: Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeocodingResponse$Builder;->buildParsed()Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeocodingResponse;
    invoke-static {v0}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeocodingResponse$Builder;->access$1400(Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeocodingResponse$Builder;)Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeocodingResponse;

    move-result-object v0

    .line 939
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeocodingResponse;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 891
    invoke-static {}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeocodingResponse;->newBuilder()Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeocodingResponse$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeocodingResponse$Builder;->mergeFrom(Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeocodingResponse$Builder;

    # invokes: Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeocodingResponse$Builder;->buildParsed()Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeocodingResponse;
    invoke-static {v0}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeocodingResponse$Builder;->access$1400(Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeocodingResponse$Builder;)Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeocodingResponse;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeocodingResponse;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 897
    invoke-static {}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeocodingResponse;->newBuilder()Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeocodingResponse$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeocodingResponse$Builder;->mergeFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeocodingResponse$Builder;

    # invokes: Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeocodingResponse$Builder;->buildParsed()Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeocodingResponse;
    invoke-static {v0}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeocodingResponse$Builder;->access$1400(Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeocodingResponse$Builder;)Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeocodingResponse;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeocodingResponse;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 945
    invoke-static {}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeocodingResponse;->newBuilder()Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeocodingResponse$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeocodingResponse$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeocodingResponse$Builder;

    # invokes: Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeocodingResponse$Builder;->buildParsed()Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeocodingResponse;
    invoke-static {v0}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeocodingResponse$Builder;->access$1400(Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeocodingResponse$Builder;)Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeocodingResponse;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeocodingResponse;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 951
    invoke-static {}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeocodingResponse;->newBuilder()Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeocodingResponse$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeocodingResponse$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeocodingResponse$Builder;

    move-result-object v0

    # invokes: Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeocodingResponse$Builder;->buildParsed()Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeocodingResponse;
    invoke-static {v0}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeocodingResponse$Builder;->access$1400(Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeocodingResponse$Builder;)Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeocodingResponse;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeocodingResponse;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 913
    invoke-static {}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeocodingResponse;->newBuilder()Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeocodingResponse$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeocodingResponse$Builder;->mergeFrom(Ljava/io/InputStream;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeocodingResponse$Builder;

    # invokes: Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeocodingResponse$Builder;->buildParsed()Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeocodingResponse;
    invoke-static {v0}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeocodingResponse$Builder;->access$1400(Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeocodingResponse$Builder;)Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeocodingResponse;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeocodingResponse;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 919
    invoke-static {}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeocodingResponse;->newBuilder()Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeocodingResponse$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeocodingResponse$Builder;->mergeFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeocodingResponse$Builder;

    # invokes: Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeocodingResponse$Builder;->buildParsed()Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeocodingResponse;
    invoke-static {v0}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeocodingResponse$Builder;->access$1400(Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeocodingResponse$Builder;)Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeocodingResponse;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeocodingResponse;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 902
    invoke-static {}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeocodingResponse;->newBuilder()Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeocodingResponse$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeocodingResponse$Builder;->mergeFrom([B)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeocodingResponse$Builder;

    # invokes: Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeocodingResponse$Builder;->buildParsed()Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeocodingResponse;
    invoke-static {v0}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeocodingResponse$Builder;->access$1400(Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeocodingResponse$Builder;)Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeocodingResponse;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeocodingResponse;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 908
    invoke-static {}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeocodingResponse;->newBuilder()Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeocodingResponse$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeocodingResponse$Builder;->mergeFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeocodingResponse$Builder;

    # invokes: Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeocodingResponse$Builder;->buildParsed()Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeocodingResponse;
    invoke-static {v0}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeocodingResponse$Builder;->access$1400(Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeocodingResponse$Builder;)Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeocodingResponse;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 794
    iget v0, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeocodingResponse;->count_:I

    return v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 758
    invoke-virtual {p0}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeocodingResponse;->getDefaultInstanceForType()Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeocodingResponse;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 758
    invoke-virtual {p0}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeocodingResponse;->getDefaultInstanceForType()Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeocodingResponse;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeocodingResponse;
    .locals 1

    .prologue
    .line 773
    sget-object v0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeocodingResponse;->defaultInstance:Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeocodingResponse;

    return-object v0
.end method

.method public getGeocoding()Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$Geocoding;
    .locals 1

    .prologue
    .line 804
    iget-object v0, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeocodingResponse;->geocoding_:Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$Geocoding;

    return-object v0
.end method

.method public getGeocodingOrBuilder()Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeocodingOrBuilder;
    .locals 1

    .prologue
    .line 807
    iget-object v0, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeocodingResponse;->geocoding_:Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$Geocoding;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 4

    .prologue
    const/4 v3, 0x2

    const/4 v2, 0x1

    .line 860
    iget v0, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeocodingResponse;->memoizedSerializedSize:I

    .line 861
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 878
    :goto_0
    return v0

    .line 863
    :cond_0
    const/4 v0, 0x0

    .line 864
    iget v1, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeocodingResponse;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v2, :cond_1

    .line 865
    iget v1, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeocodingResponse;->count_:I

    invoke-static {v2, v1}, Lcom/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 868
    :cond_1
    iget v1, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeocodingResponse;->bitField0_:I

    and-int/lit8 v1, v1, 0x2

    if-ne v1, v3, :cond_2

    .line 869
    iget-object v1, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeocodingResponse;->geocoding_:Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$Geocoding;

    invoke-static {v3, v1}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v1

    add-int/2addr v0, v1

    .line 872
    :cond_2
    iget v1, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeocodingResponse;->bitField0_:I

    and-int/lit8 v1, v1, 0x4

    const/4 v2, 0x4

    if-ne v1, v2, :cond_3

    .line 873
    const/4 v1, 0x3

    iget-object v2, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeocodingResponse;->spellcorrect_:Lcom/mapabc/mapapi/core/CommonProtoBuf$Spellcorrect;

    invoke-static {v1, v2}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v1

    add-int/2addr v0, v1

    .line 876
    :cond_3
    invoke-virtual {p0}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeocodingResponse;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protobuf/UnknownFieldSet;->getSerializedSize()I

    move-result v1

    add-int/2addr v0, v1

    .line 877
    iput v0, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeocodingResponse;->memoizedSerializedSize:I

    goto :goto_0
.end method

.method public getSpellcorrect()Lcom/mapabc/mapapi/core/CommonProtoBuf$Spellcorrect;
    .locals 1

    .prologue
    .line 817
    iget-object v0, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeocodingResponse;->spellcorrect_:Lcom/mapabc/mapapi/core/CommonProtoBuf$Spellcorrect;

    return-object v0
.end method

.method public getSpellcorrectOrBuilder()Lcom/mapabc/mapapi/core/CommonProtoBuf$SpellcorrectOrBuilder;
    .locals 1

    .prologue
    .line 820
    iget-object v0, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeocodingResponse;->spellcorrect_:Lcom/mapabc/mapapi/core/CommonProtoBuf$Spellcorrect;

    return-object v0
.end method

.method public hasCount()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 791
    iget v1, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeocodingResponse;->bitField0_:I

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
    .line 801
    iget v0, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeocodingResponse;->bitField0_:I

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
    .line 814
    iget v0, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeocodingResponse;->bitField0_:I

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
    .line 783
    # getter for: Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf;->internal_static_GeocodingResponse_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    invoke-static {}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf;->access$1300()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 830
    iget-byte v2, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeocodingResponse;->memoizedIsInitialized:B

    .line 831
    const/4 v3, -0x1

    if-eq v2, v3, :cond_1

    if-ne v2, v0, :cond_0

    .line 840
    :goto_0
    return v0

    :cond_0
    move v0, v1

    .line 831
    goto :goto_0

    .line 833
    :cond_1
    invoke-virtual {p0}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeocodingResponse;->hasGeocoding()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 834
    invoke-virtual {p0}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeocodingResponse;->getGeocoding()Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$Geocoding;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$Geocoding;->isInitialized()Z

    move-result v2

    if-nez v2, :cond_2

    .line 835
    iput-byte v1, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeocodingResponse;->memoizedIsInitialized:B

    move v0, v1

    .line 836
    goto :goto_0

    .line 839
    :cond_2
    iput-byte v0, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeocodingResponse;->memoizedIsInitialized:B

    goto :goto_0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 758
    invoke-virtual {p0}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeocodingResponse;->newBuilderForType()Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeocodingResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic newBuilderForType(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 758
    invoke-virtual {p0, p1}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeocodingResponse;->newBuilderForType(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeocodingResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 758
    invoke-virtual {p0}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeocodingResponse;->newBuilderForType()Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeocodingResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeocodingResponse$Builder;
    .locals 1

    .prologue
    .line 956
    invoke-static {}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeocodingResponse;->newBuilder()Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeocodingResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected newBuilderForType(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeocodingResponse$Builder;
    .locals 2

    .prologue
    .line 965
    new-instance v0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeocodingResponse$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeocodingResponse$Builder;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;Lcom/mapabc/mapapi/geocoder/c;)V

    .line 966
    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 758
    invoke-virtual {p0}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeocodingResponse;->toBuilder()Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeocodingResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 758
    invoke-virtual {p0}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeocodingResponse;->toBuilder()Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeocodingResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeocodingResponse$Builder;
    .locals 1

    .prologue
    .line 960
    invoke-static {p0}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeocodingResponse;->newBuilder(Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeocodingResponse;)Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeocodingResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected writeReplace()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/ObjectStreamException;
        }
    .end annotation

    .prologue
    .line 885
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessage;->writeReplace()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public writeTo(Lcom/google/protobuf/CodedOutputStream;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x2

    const/4 v1, 0x1

    .line 845
    invoke-virtual {p0}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeocodingResponse;->getSerializedSize()I

    .line 846
    iget v0, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeocodingResponse;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_0

    .line 847
    iget v0, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeocodingResponse;->count_:I

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 849
    :cond_0
    iget v0, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeocodingResponse;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-ne v0, v2, :cond_1

    .line 850
    iget-object v0, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeocodingResponse;->geocoding_:Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$Geocoding;

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 852
    :cond_1
    iget v0, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeocodingResponse;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    const/4 v1, 0x4

    if-ne v0, v1, :cond_2

    .line 853
    const/4 v0, 0x3

    iget-object v1, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeocodingResponse;->spellcorrect_:Lcom/mapabc/mapapi/core/CommonProtoBuf$Spellcorrect;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 855
    :cond_2
    invoke-virtual {p0}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeocodingResponse;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/UnknownFieldSet;->writeTo(Lcom/google/protobuf/CodedOutputStream;)V

    .line 856
    return-void
.end method
