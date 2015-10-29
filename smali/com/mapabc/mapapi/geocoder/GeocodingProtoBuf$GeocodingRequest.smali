.class public final Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeocodingRequest;
.super Lcom/google/protobuf/GeneratedMessage;
.source "GeocodingProtoBuf.java"

# interfaces
.implements Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeocodingRequestOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "GeocodingRequest"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeocodingRequest$Builder;
    }
.end annotation


# static fields
.field public static final ADDRESS_FIELD_NUMBER:I = 0x2

.field public static final COMMON_FIELD_NUMBER:I = 0x1

.field public static final POINUMBER_FIELD_NUMBER:I = 0x3

.field public static final VER_FIELD_NUMBER:I = 0x4

.field private static final defaultInstance:Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeocodingRequest;

.field private static final serialVersionUID:J


# instance fields
.field private address_:Ljava/lang/Object;

.field private bitField0_:I

.field private common_:Lcom/mapabc/mapapi/core/CommonProtoBuf$Common;

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I

.field private poiNumber_:Ljava/lang/Object;

.field private ver_:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 734
    new-instance v0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeocodingRequest;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeocodingRequest;-><init>(Z)V

    sput-object v0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeocodingRequest;->defaultInstance:Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeocodingRequest;

    .line 735
    sget-object v0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeocodingRequest;->defaultInstance:Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeocodingRequest;

    invoke-direct {v0}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeocodingRequest;->initFields()V

    .line 736
    return-void
.end method

.method private constructor <init>(Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeocodingRequest$Builder;)V
    .locals 1

    .prologue
    const/4 v0, -0x1

    .line 36
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessage;-><init>(Lcom/google/protobuf/GeneratedMessage$Builder;)V

    .line 175
    iput-byte v0, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeocodingRequest;->memoizedIsInitialized:B

    .line 214
    iput v0, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeocodingRequest;->memoizedSerializedSize:I

    .line 37
    return-void
.end method

.method synthetic constructor <init>(Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeocodingRequest$Builder;Lcom/mapabc/mapapi/geocoder/c;)V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0, p1}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeocodingRequest;-><init>(Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeocodingRequest$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 1

    .prologue
    const/4 v0, -0x1

    .line 38
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage;-><init>()V

    .line 175
    iput-byte v0, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeocodingRequest;->memoizedIsInitialized:B

    .line 214
    iput v0, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeocodingRequest;->memoizedSerializedSize:I

    .line 38
    return-void
.end method

.method static synthetic access$1002(Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeocodingRequest;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .prologue
    .line 31
    iput-object p1, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeocodingRequest;->ver_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$1102(Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeocodingRequest;I)I
    .locals 0

    .prologue
    .line 31
    iput p1, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeocodingRequest;->bitField0_:I

    return p1
.end method

.method static synthetic access$500()Z
    .locals 1

    .prologue
    .line 31
    sget-boolean v0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeocodingRequest;->alwaysUseFieldBuilders:Z

    return v0
.end method

.method static synthetic access$702(Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeocodingRequest;Lcom/mapabc/mapapi/core/CommonProtoBuf$Common;)Lcom/mapabc/mapapi/core/CommonProtoBuf$Common;
    .locals 0

    .prologue
    .line 31
    iput-object p1, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeocodingRequest;->common_:Lcom/mapabc/mapapi/core/CommonProtoBuf$Common;

    return-object p1
.end method

.method static synthetic access$802(Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeocodingRequest;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .prologue
    .line 31
    iput-object p1, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeocodingRequest;->address_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$902(Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeocodingRequest;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .prologue
    .line 31
    iput-object p1, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeocodingRequest;->poiNumber_:Ljava/lang/Object;

    return-object p1
.end method

.method private getAddressBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .prologue
    .line 94
    iget-object v0, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeocodingRequest;->address_:Ljava/lang/Object;

    .line 95
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 96
    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 98
    iput-object v0, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeocodingRequest;->address_:Ljava/lang/Object;

    .line 101
    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    goto :goto_0
.end method

.method public static getDefaultInstance()Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeocodingRequest;
    .locals 1

    .prologue
    .line 42
    sget-object v0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeocodingRequest;->defaultInstance:Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeocodingRequest;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 51
    # getter for: Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf;->internal_static_GeocodingRequest_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;
    invoke-static {}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf;->access$000()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method private getPoiNumberBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .prologue
    .line 126
    iget-object v0, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeocodingRequest;->poiNumber_:Ljava/lang/Object;

    .line 127
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 128
    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 130
    iput-object v0, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeocodingRequest;->poiNumber_:Ljava/lang/Object;

    .line 133
    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    goto :goto_0
.end method

.method private getVerBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .prologue
    .line 158
    iget-object v0, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeocodingRequest;->ver_:Ljava/lang/Object;

    .line 159
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 160
    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 162
    iput-object v0, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeocodingRequest;->ver_:Ljava/lang/Object;

    .line 165
    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    goto :goto_0
.end method

.method private initFields()V
    .locals 1

    .prologue
    .line 170
    invoke-static {}, Lcom/mapabc/mapapi/core/CommonProtoBuf$Common;->getDefaultInstance()Lcom/mapabc/mapapi/core/CommonProtoBuf$Common;

    move-result-object v0

    iput-object v0, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeocodingRequest;->common_:Lcom/mapabc/mapapi/core/CommonProtoBuf$Common;

    .line 171
    const-string v0, ""

    iput-object v0, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeocodingRequest;->address_:Ljava/lang/Object;

    .line 172
    const-string v0, ""

    iput-object v0, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeocodingRequest;->poiNumber_:Ljava/lang/Object;

    .line 173
    const-string v0, ""

    iput-object v0, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeocodingRequest;->ver_:Ljava/lang/Object;

    .line 174
    return-void
.end method

.method public static newBuilder()Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeocodingRequest$Builder;
    .locals 1

    .prologue
    .line 315
    # invokes: Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeocodingRequest$Builder;->create()Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeocodingRequest$Builder;
    invoke-static {}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeocodingRequest$Builder;->access$300()Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeocodingRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeocodingRequest;)Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeocodingRequest$Builder;
    .locals 1

    .prologue
    .line 318
    invoke-static {}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeocodingRequest;->newBuilder()Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeocodingRequest$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeocodingRequest$Builder;->mergeFrom(Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeocodingRequest;)Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeocodingRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeocodingRequest;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 284
    invoke-static {}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeocodingRequest;->newBuilder()Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeocodingRequest$Builder;

    move-result-object v0

    .line 285
    invoke-virtual {v0, p0}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeocodingRequest$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 286
    # invokes: Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeocodingRequest$Builder;->buildParsed()Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeocodingRequest;
    invoke-static {v0}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeocodingRequest$Builder;->access$200(Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeocodingRequest$Builder;)Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeocodingRequest;

    move-result-object v0

    .line 288
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeocodingRequest;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 295
    invoke-static {}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeocodingRequest;->newBuilder()Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeocodingRequest$Builder;

    move-result-object v0

    .line 296
    invoke-virtual {v0, p0, p1}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeocodingRequest$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 297
    # invokes: Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeocodingRequest$Builder;->buildParsed()Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeocodingRequest;
    invoke-static {v0}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeocodingRequest$Builder;->access$200(Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeocodingRequest$Builder;)Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeocodingRequest;

    move-result-object v0

    .line 299
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeocodingRequest;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 251
    invoke-static {}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeocodingRequest;->newBuilder()Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeocodingRequest$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeocodingRequest$Builder;->mergeFrom(Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeocodingRequest$Builder;

    # invokes: Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeocodingRequest$Builder;->buildParsed()Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeocodingRequest;
    invoke-static {v0}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeocodingRequest$Builder;->access$200(Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeocodingRequest$Builder;)Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeocodingRequest;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeocodingRequest;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 257
    invoke-static {}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeocodingRequest;->newBuilder()Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeocodingRequest$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeocodingRequest$Builder;->mergeFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeocodingRequest$Builder;

    # invokes: Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeocodingRequest$Builder;->buildParsed()Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeocodingRequest;
    invoke-static {v0}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeocodingRequest$Builder;->access$200(Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeocodingRequest$Builder;)Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeocodingRequest;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeocodingRequest;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 305
    invoke-static {}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeocodingRequest;->newBuilder()Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeocodingRequest$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeocodingRequest$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeocodingRequest$Builder;

    # invokes: Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeocodingRequest$Builder;->buildParsed()Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeocodingRequest;
    invoke-static {v0}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeocodingRequest$Builder;->access$200(Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeocodingRequest$Builder;)Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeocodingRequest;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeocodingRequest;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 311
    invoke-static {}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeocodingRequest;->newBuilder()Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeocodingRequest$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeocodingRequest$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeocodingRequest$Builder;

    move-result-object v0

    # invokes: Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeocodingRequest$Builder;->buildParsed()Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeocodingRequest;
    invoke-static {v0}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeocodingRequest$Builder;->access$200(Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeocodingRequest$Builder;)Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeocodingRequest;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeocodingRequest;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 273
    invoke-static {}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeocodingRequest;->newBuilder()Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeocodingRequest$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeocodingRequest$Builder;->mergeFrom(Ljava/io/InputStream;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeocodingRequest$Builder;

    # invokes: Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeocodingRequest$Builder;->buildParsed()Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeocodingRequest;
    invoke-static {v0}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeocodingRequest$Builder;->access$200(Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeocodingRequest$Builder;)Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeocodingRequest;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeocodingRequest;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 279
    invoke-static {}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeocodingRequest;->newBuilder()Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeocodingRequest$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeocodingRequest$Builder;->mergeFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeocodingRequest$Builder;

    # invokes: Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeocodingRequest$Builder;->buildParsed()Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeocodingRequest;
    invoke-static {v0}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeocodingRequest$Builder;->access$200(Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeocodingRequest$Builder;)Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeocodingRequest;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeocodingRequest;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 262
    invoke-static {}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeocodingRequest;->newBuilder()Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeocodingRequest$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeocodingRequest$Builder;->mergeFrom([B)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeocodingRequest$Builder;

    # invokes: Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeocodingRequest$Builder;->buildParsed()Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeocodingRequest;
    invoke-static {v0}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeocodingRequest$Builder;->access$200(Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeocodingRequest$Builder;)Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeocodingRequest;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeocodingRequest;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 268
    invoke-static {}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeocodingRequest;->newBuilder()Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeocodingRequest$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeocodingRequest$Builder;->mergeFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeocodingRequest$Builder;

    # invokes: Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeocodingRequest$Builder;->buildParsed()Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeocodingRequest;
    invoke-static {v0}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeocodingRequest$Builder;->access$200(Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeocodingRequest$Builder;)Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeocodingRequest;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getAddress()Ljava/lang/String;
    .locals 2

    .prologue
    .line 80
    iget-object v0, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeocodingRequest;->address_:Ljava/lang/Object;

    .line 81
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 82
    check-cast v0, Ljava/lang/String;

    .line 90
    :goto_0
    return-object v0

    .line 84
    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 86
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 87
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 88
    iput-object v1, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeocodingRequest;->address_:Ljava/lang/Object;

    :cond_1
    move-object v0, v1

    .line 90
    goto :goto_0
.end method

.method public getCommon()Lcom/mapabc/mapapi/core/CommonProtoBuf$Common;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeocodingRequest;->common_:Lcom/mapabc/mapapi/core/CommonProtoBuf$Common;

    return-object v0
.end method

.method public getCommonOrBuilder()Lcom/mapabc/mapapi/core/CommonProtoBuf$CommonOrBuilder;
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeocodingRequest;->common_:Lcom/mapabc/mapapi/core/CommonProtoBuf$Common;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 31
    invoke-virtual {p0}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeocodingRequest;->getDefaultInstanceForType()Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeocodingRequest;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 31
    invoke-virtual {p0}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeocodingRequest;->getDefaultInstanceForType()Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeocodingRequest;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeocodingRequest;
    .locals 1

    .prologue
    .line 46
    sget-object v0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeocodingRequest;->defaultInstance:Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeocodingRequest;

    return-object v0
.end method

.method public getPoiNumber()Ljava/lang/String;
    .locals 2

    .prologue
    .line 112
    iget-object v0, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeocodingRequest;->poiNumber_:Ljava/lang/Object;

    .line 113
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 114
    check-cast v0, Ljava/lang/String;

    .line 122
    :goto_0
    return-object v0

    .line 116
    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 118
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 119
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 120
    iput-object v1, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeocodingRequest;->poiNumber_:Ljava/lang/Object;

    :cond_1
    move-object v0, v1

    .line 122
    goto :goto_0
.end method

.method public getSerializedSize()I
    .locals 5

    .prologue
    const/4 v4, 0x4

    const/4 v3, 0x2

    const/4 v2, 0x1

    .line 216
    iget v0, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeocodingRequest;->memoizedSerializedSize:I

    .line 217
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 238
    :goto_0
    return v0

    .line 219
    :cond_0
    const/4 v0, 0x0

    .line 220
    iget v1, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeocodingRequest;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v2, :cond_1

    .line 221
    iget-object v1, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeocodingRequest;->common_:Lcom/mapabc/mapapi/core/CommonProtoBuf$Common;

    invoke-static {v2, v1}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v1

    add-int/2addr v0, v1

    .line 224
    :cond_1
    iget v1, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeocodingRequest;->bitField0_:I

    and-int/lit8 v1, v1, 0x2

    if-ne v1, v3, :cond_2

    .line 225
    invoke-direct {p0}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeocodingRequest;->getAddressBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v1

    add-int/2addr v0, v1

    .line 228
    :cond_2
    iget v1, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeocodingRequest;->bitField0_:I

    and-int/lit8 v1, v1, 0x4

    if-ne v1, v4, :cond_3

    .line 229
    const/4 v1, 0x3

    invoke-direct {p0}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeocodingRequest;->getPoiNumberBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v1

    add-int/2addr v0, v1

    .line 232
    :cond_3
    iget v1, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeocodingRequest;->bitField0_:I

    and-int/lit8 v1, v1, 0x8

    const/16 v2, 0x8

    if-ne v1, v2, :cond_4

    .line 233
    invoke-direct {p0}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeocodingRequest;->getVerBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-static {v4, v1}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v1

    add-int/2addr v0, v1

    .line 236
    :cond_4
    invoke-virtual {p0}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeocodingRequest;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protobuf/UnknownFieldSet;->getSerializedSize()I

    move-result v1

    add-int/2addr v0, v1

    .line 237
    iput v0, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeocodingRequest;->memoizedSerializedSize:I

    goto :goto_0
.end method

.method public getVer()Ljava/lang/String;
    .locals 2

    .prologue
    .line 144
    iget-object v0, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeocodingRequest;->ver_:Ljava/lang/Object;

    .line 145
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 146
    check-cast v0, Ljava/lang/String;

    .line 154
    :goto_0
    return-object v0

    .line 148
    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 150
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 151
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 152
    iput-object v1, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeocodingRequest;->ver_:Ljava/lang/Object;

    :cond_1
    move-object v0, v1

    .line 154
    goto :goto_0
.end method

.method public hasAddress()Z
    .locals 2

    .prologue
    .line 77
    iget v0, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeocodingRequest;->bitField0_:I

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

    .line 64
    iget v1, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeocodingRequest;->bitField0_:I

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
    .line 109
    iget v0, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeocodingRequest;->bitField0_:I

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
    .line 141
    iget v0, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeocodingRequest;->bitField0_:I

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
    .line 56
    # getter for: Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf;->internal_static_GeocodingRequest_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    invoke-static {}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf;->access$100()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 177
    iget-byte v2, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeocodingRequest;->memoizedIsInitialized:B

    .line 178
    const/4 v3, -0x1

    if-eq v2, v3, :cond_1

    if-ne v2, v0, :cond_0

    :goto_0
    move v1, v0

    .line 193
    :goto_1
    return v1

    :cond_0
    move v0, v1

    .line 178
    goto :goto_0

    .line 180
    :cond_1
    invoke-virtual {p0}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeocodingRequest;->hasCommon()Z

    move-result v2

    if-nez v2, :cond_2

    .line 181
    iput-byte v1, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeocodingRequest;->memoizedIsInitialized:B

    goto :goto_1

    .line 184
    :cond_2
    invoke-virtual {p0}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeocodingRequest;->hasAddress()Z

    move-result v2

    if-nez v2, :cond_3

    .line 185
    iput-byte v1, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeocodingRequest;->memoizedIsInitialized:B

    goto :goto_1

    .line 188
    :cond_3
    invoke-virtual {p0}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeocodingRequest;->getCommon()Lcom/mapabc/mapapi/core/CommonProtoBuf$Common;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mapabc/mapapi/core/CommonProtoBuf$Common;->isInitialized()Z

    move-result v2

    if-nez v2, :cond_4

    .line 189
    iput-byte v1, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeocodingRequest;->memoizedIsInitialized:B

    goto :goto_1

    .line 192
    :cond_4
    iput-byte v0, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeocodingRequest;->memoizedIsInitialized:B

    move v1, v0

    .line 193
    goto :goto_1
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 31
    invoke-virtual {p0}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeocodingRequest;->newBuilderForType()Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeocodingRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic newBuilderForType(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 31
    invoke-virtual {p0, p1}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeocodingRequest;->newBuilderForType(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeocodingRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 31
    invoke-virtual {p0}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeocodingRequest;->newBuilderForType()Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeocodingRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeocodingRequest$Builder;
    .locals 1

    .prologue
    .line 316
    invoke-static {}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeocodingRequest;->newBuilder()Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeocodingRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected newBuilderForType(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeocodingRequest$Builder;
    .locals 2

    .prologue
    .line 325
    new-instance v0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeocodingRequest$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeocodingRequest$Builder;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;Lcom/mapabc/mapapi/geocoder/c;)V

    .line 326
    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 31
    invoke-virtual {p0}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeocodingRequest;->toBuilder()Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeocodingRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 31
    invoke-virtual {p0}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeocodingRequest;->toBuilder()Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeocodingRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeocodingRequest$Builder;
    .locals 1

    .prologue
    .line 320
    invoke-static {p0}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeocodingRequest;->newBuilder(Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeocodingRequest;)Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeocodingRequest$Builder;

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
    .line 245
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessage;->writeReplace()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public writeTo(Lcom/google/protobuf/CodedOutputStream;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x4

    const/4 v2, 0x2

    const/4 v1, 0x1

    .line 198
    invoke-virtual {p0}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeocodingRequest;->getSerializedSize()I

    .line 199
    iget v0, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeocodingRequest;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_0

    .line 200
    iget-object v0, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeocodingRequest;->common_:Lcom/mapabc/mapapi/core/CommonProtoBuf$Common;

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 202
    :cond_0
    iget v0, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeocodingRequest;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-ne v0, v2, :cond_1

    .line 203
    invoke-direct {p0}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeocodingRequest;->getAddressBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 205
    :cond_1
    iget v0, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeocodingRequest;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-ne v0, v3, :cond_2

    .line 206
    const/4 v0, 0x3

    invoke-direct {p0}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeocodingRequest;->getPoiNumberBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 208
    :cond_2
    iget v0, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeocodingRequest;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    const/16 v1, 0x8

    if-ne v0, v1, :cond_3

    .line 209
    invoke-direct {p0}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeocodingRequest;->getVerBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p1, v3, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 211
    :cond_3
    invoke-virtual {p0}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeocodingRequest;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/UnknownFieldSet;->writeTo(Lcom/google/protobuf/CodedOutputStream;)V

    .line 212
    return-void
.end method
