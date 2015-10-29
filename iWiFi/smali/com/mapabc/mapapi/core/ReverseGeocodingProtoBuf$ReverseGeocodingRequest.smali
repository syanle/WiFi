.class public final Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$ReverseGeocodingRequest;
.super Lcom/google/protobuf/GeneratedMessage;
.source "ReverseGeocodingProtoBuf.java"

# interfaces
.implements Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$ReverseGeocodingRequestOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ReverseGeocodingRequest"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$ReverseGeocodingRequest$Builder;
    }
.end annotation


# static fields
.field public static final COMMON_FIELD_NUMBER:I = 0x1

.field public static final SPATIALXML_FIELD_NUMBER:I = 0x2

.field private static final defaultInstance:Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$ReverseGeocodingRequest;

.field private static final serialVersionUID:J


# instance fields
.field private bitField0_:I

.field private common_:Lcom/mapabc/mapapi/core/CommonProtoBuf$Common;

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I

.field private spatialXml_:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 546
    new-instance v0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$ReverseGeocodingRequest;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$ReverseGeocodingRequest;-><init>(Z)V

    sput-object v0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$ReverseGeocodingRequest;->defaultInstance:Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$ReverseGeocodingRequest;

    .line 547
    sget-object v0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$ReverseGeocodingRequest;->defaultInstance:Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$ReverseGeocodingRequest;

    invoke-direct {v0}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$ReverseGeocodingRequest;->initFields()V

    .line 548
    return-void
.end method

.method private constructor <init>(Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$ReverseGeocodingRequest$Builder;)V
    .locals 1

    .prologue
    const/4 v0, -0x1

    .line 28
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessage;-><init>(Lcom/google/protobuf/GeneratedMessage$Builder;)V

    .line 101
    iput-byte v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$ReverseGeocodingRequest;->memoizedIsInitialized:B

    .line 134
    iput v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$ReverseGeocodingRequest;->memoizedSerializedSize:I

    .line 29
    return-void
.end method

.method synthetic constructor <init>(Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$ReverseGeocodingRequest$Builder;Lcom/mapabc/mapapi/core/z;)V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0, p1}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$ReverseGeocodingRequest;-><init>(Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$ReverseGeocodingRequest$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 1

    .prologue
    const/4 v0, -0x1

    .line 30
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage;-><init>()V

    .line 101
    iput-byte v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$ReverseGeocodingRequest;->memoizedIsInitialized:B

    .line 134
    iput v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$ReverseGeocodingRequest;->memoizedSerializedSize:I

    .line 30
    return-void
.end method

.method static synthetic access$500()Z
    .locals 1

    .prologue
    .line 23
    sget-boolean v0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$ReverseGeocodingRequest;->alwaysUseFieldBuilders:Z

    return v0
.end method

.method static synthetic access$702(Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$ReverseGeocodingRequest;Lcom/mapabc/mapapi/core/CommonProtoBuf$Common;)Lcom/mapabc/mapapi/core/CommonProtoBuf$Common;
    .locals 0

    .prologue
    .line 23
    iput-object p1, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$ReverseGeocodingRequest;->common_:Lcom/mapabc/mapapi/core/CommonProtoBuf$Common;

    return-object p1
.end method

.method static synthetic access$802(Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$ReverseGeocodingRequest;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .prologue
    .line 23
    iput-object p1, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$ReverseGeocodingRequest;->spatialXml_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$902(Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$ReverseGeocodingRequest;I)I
    .locals 0

    .prologue
    .line 23
    iput p1, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$ReverseGeocodingRequest;->bitField0_:I

    return p1
.end method

.method public static getDefaultInstance()Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$ReverseGeocodingRequest;
    .locals 1

    .prologue
    .line 34
    sget-object v0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$ReverseGeocodingRequest;->defaultInstance:Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$ReverseGeocodingRequest;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 43
    # getter for: Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf;->internal_static_ReverseGeocodingRequest_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;
    invoke-static {}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf;->access$000()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method private getSpatialXmlBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .prologue
    .line 86
    iget-object v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$ReverseGeocodingRequest;->spatialXml_:Ljava/lang/Object;

    .line 87
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 88
    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 90
    iput-object v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$ReverseGeocodingRequest;->spatialXml_:Ljava/lang/Object;

    .line 93
    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    goto :goto_0
.end method

.method private initFields()V
    .locals 1

    .prologue
    .line 98
    invoke-static {}, Lcom/mapabc/mapapi/core/CommonProtoBuf$Common;->getDefaultInstance()Lcom/mapabc/mapapi/core/CommonProtoBuf$Common;

    move-result-object v0

    iput-object v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$ReverseGeocodingRequest;->common_:Lcom/mapabc/mapapi/core/CommonProtoBuf$Common;

    .line 99
    const-string v0, ""

    iput-object v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$ReverseGeocodingRequest;->spatialXml_:Ljava/lang/Object;

    .line 100
    return-void
.end method

.method public static newBuilder()Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$ReverseGeocodingRequest$Builder;
    .locals 1

    .prologue
    .line 227
    # invokes: Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$ReverseGeocodingRequest$Builder;->create()Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$ReverseGeocodingRequest$Builder;
    invoke-static {}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$ReverseGeocodingRequest$Builder;->access$300()Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$ReverseGeocodingRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$ReverseGeocodingRequest;)Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$ReverseGeocodingRequest$Builder;
    .locals 1

    .prologue
    .line 230
    invoke-static {}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$ReverseGeocodingRequest;->newBuilder()Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$ReverseGeocodingRequest$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$ReverseGeocodingRequest$Builder;->mergeFrom(Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$ReverseGeocodingRequest;)Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$ReverseGeocodingRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$ReverseGeocodingRequest;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 196
    invoke-static {}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$ReverseGeocodingRequest;->newBuilder()Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$ReverseGeocodingRequest$Builder;

    move-result-object v0

    .line 197
    invoke-virtual {v0, p0}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$ReverseGeocodingRequest$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 198
    # invokes: Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$ReverseGeocodingRequest$Builder;->buildParsed()Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$ReverseGeocodingRequest;
    invoke-static {v0}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$ReverseGeocodingRequest$Builder;->access$200(Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$ReverseGeocodingRequest$Builder;)Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$ReverseGeocodingRequest;

    move-result-object v0

    .line 200
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$ReverseGeocodingRequest;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 207
    invoke-static {}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$ReverseGeocodingRequest;->newBuilder()Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$ReverseGeocodingRequest$Builder;

    move-result-object v0

    .line 208
    invoke-virtual {v0, p0, p1}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$ReverseGeocodingRequest$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 209
    # invokes: Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$ReverseGeocodingRequest$Builder;->buildParsed()Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$ReverseGeocodingRequest;
    invoke-static {v0}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$ReverseGeocodingRequest$Builder;->access$200(Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$ReverseGeocodingRequest$Builder;)Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$ReverseGeocodingRequest;

    move-result-object v0

    .line 211
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$ReverseGeocodingRequest;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 163
    invoke-static {}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$ReverseGeocodingRequest;->newBuilder()Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$ReverseGeocodingRequest$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$ReverseGeocodingRequest$Builder;->mergeFrom(Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$ReverseGeocodingRequest$Builder;

    # invokes: Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$ReverseGeocodingRequest$Builder;->buildParsed()Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$ReverseGeocodingRequest;
    invoke-static {v0}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$ReverseGeocodingRequest$Builder;->access$200(Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$ReverseGeocodingRequest$Builder;)Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$ReverseGeocodingRequest;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$ReverseGeocodingRequest;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 169
    invoke-static {}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$ReverseGeocodingRequest;->newBuilder()Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$ReverseGeocodingRequest$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$ReverseGeocodingRequest$Builder;->mergeFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$ReverseGeocodingRequest$Builder;

    # invokes: Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$ReverseGeocodingRequest$Builder;->buildParsed()Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$ReverseGeocodingRequest;
    invoke-static {v0}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$ReverseGeocodingRequest$Builder;->access$200(Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$ReverseGeocodingRequest$Builder;)Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$ReverseGeocodingRequest;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$ReverseGeocodingRequest;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 217
    invoke-static {}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$ReverseGeocodingRequest;->newBuilder()Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$ReverseGeocodingRequest$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$ReverseGeocodingRequest$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$ReverseGeocodingRequest$Builder;

    # invokes: Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$ReverseGeocodingRequest$Builder;->buildParsed()Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$ReverseGeocodingRequest;
    invoke-static {v0}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$ReverseGeocodingRequest$Builder;->access$200(Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$ReverseGeocodingRequest$Builder;)Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$ReverseGeocodingRequest;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$ReverseGeocodingRequest;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 223
    invoke-static {}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$ReverseGeocodingRequest;->newBuilder()Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$ReverseGeocodingRequest$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$ReverseGeocodingRequest$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$ReverseGeocodingRequest$Builder;

    move-result-object v0

    # invokes: Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$ReverseGeocodingRequest$Builder;->buildParsed()Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$ReverseGeocodingRequest;
    invoke-static {v0}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$ReverseGeocodingRequest$Builder;->access$200(Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$ReverseGeocodingRequest$Builder;)Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$ReverseGeocodingRequest;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$ReverseGeocodingRequest;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 185
    invoke-static {}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$ReverseGeocodingRequest;->newBuilder()Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$ReverseGeocodingRequest$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$ReverseGeocodingRequest$Builder;->mergeFrom(Ljava/io/InputStream;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$ReverseGeocodingRequest$Builder;

    # invokes: Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$ReverseGeocodingRequest$Builder;->buildParsed()Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$ReverseGeocodingRequest;
    invoke-static {v0}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$ReverseGeocodingRequest$Builder;->access$200(Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$ReverseGeocodingRequest$Builder;)Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$ReverseGeocodingRequest;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$ReverseGeocodingRequest;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 191
    invoke-static {}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$ReverseGeocodingRequest;->newBuilder()Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$ReverseGeocodingRequest$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$ReverseGeocodingRequest$Builder;->mergeFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$ReverseGeocodingRequest$Builder;

    # invokes: Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$ReverseGeocodingRequest$Builder;->buildParsed()Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$ReverseGeocodingRequest;
    invoke-static {v0}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$ReverseGeocodingRequest$Builder;->access$200(Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$ReverseGeocodingRequest$Builder;)Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$ReverseGeocodingRequest;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$ReverseGeocodingRequest;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 174
    invoke-static {}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$ReverseGeocodingRequest;->newBuilder()Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$ReverseGeocodingRequest$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$ReverseGeocodingRequest$Builder;->mergeFrom([B)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$ReverseGeocodingRequest$Builder;

    # invokes: Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$ReverseGeocodingRequest$Builder;->buildParsed()Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$ReverseGeocodingRequest;
    invoke-static {v0}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$ReverseGeocodingRequest$Builder;->access$200(Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$ReverseGeocodingRequest$Builder;)Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$ReverseGeocodingRequest;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$ReverseGeocodingRequest;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 180
    invoke-static {}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$ReverseGeocodingRequest;->newBuilder()Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$ReverseGeocodingRequest$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$ReverseGeocodingRequest$Builder;->mergeFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$ReverseGeocodingRequest$Builder;

    # invokes: Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$ReverseGeocodingRequest$Builder;->buildParsed()Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$ReverseGeocodingRequest;
    invoke-static {v0}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$ReverseGeocodingRequest$Builder;->access$200(Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$ReverseGeocodingRequest$Builder;)Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$ReverseGeocodingRequest;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getCommon()Lcom/mapabc/mapapi/core/CommonProtoBuf$Common;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$ReverseGeocodingRequest;->common_:Lcom/mapabc/mapapi/core/CommonProtoBuf$Common;

    return-object v0
.end method

.method public getCommonOrBuilder()Lcom/mapabc/mapapi/core/CommonProtoBuf$CommonOrBuilder;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$ReverseGeocodingRequest;->common_:Lcom/mapabc/mapapi/core/CommonProtoBuf$Common;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 23
    invoke-virtual {p0}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$ReverseGeocodingRequest;->getDefaultInstanceForType()Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$ReverseGeocodingRequest;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 23
    invoke-virtual {p0}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$ReverseGeocodingRequest;->getDefaultInstanceForType()Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$ReverseGeocodingRequest;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$ReverseGeocodingRequest;
    .locals 1

    .prologue
    .line 38
    sget-object v0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$ReverseGeocodingRequest;->defaultInstance:Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$ReverseGeocodingRequest;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 4

    .prologue
    const/4 v3, 0x2

    const/4 v2, 0x1

    .line 136
    iget v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$ReverseGeocodingRequest;->memoizedSerializedSize:I

    .line 137
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 150
    :goto_0
    return v0

    .line 139
    :cond_0
    const/4 v0, 0x0

    .line 140
    iget v1, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$ReverseGeocodingRequest;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v2, :cond_1

    .line 141
    iget-object v1, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$ReverseGeocodingRequest;->common_:Lcom/mapabc/mapapi/core/CommonProtoBuf$Common;

    invoke-static {v2, v1}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v1

    add-int/2addr v0, v1

    .line 144
    :cond_1
    iget v1, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$ReverseGeocodingRequest;->bitField0_:I

    and-int/lit8 v1, v1, 0x2

    if-ne v1, v3, :cond_2

    .line 145
    invoke-direct {p0}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$ReverseGeocodingRequest;->getSpatialXmlBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v1

    add-int/2addr v0, v1

    .line 148
    :cond_2
    invoke-virtual {p0}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$ReverseGeocodingRequest;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protobuf/UnknownFieldSet;->getSerializedSize()I

    move-result v1

    add-int/2addr v0, v1

    .line 149
    iput v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$ReverseGeocodingRequest;->memoizedSerializedSize:I

    goto :goto_0
.end method

.method public getSpatialXml()Ljava/lang/String;
    .locals 2

    .prologue
    .line 72
    iget-object v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$ReverseGeocodingRequest;->spatialXml_:Ljava/lang/Object;

    .line 73
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 74
    check-cast v0, Ljava/lang/String;

    .line 82
    :goto_0
    return-object v0

    .line 76
    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 78
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 79
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 80
    iput-object v1, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$ReverseGeocodingRequest;->spatialXml_:Ljava/lang/Object;

    :cond_1
    move-object v0, v1

    .line 82
    goto :goto_0
.end method

.method public hasCommon()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 56
    iget v1, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$ReverseGeocodingRequest;->bitField0_:I

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
    .line 69
    iget v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$ReverseGeocodingRequest;->bitField0_:I

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
    .line 48
    # getter for: Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf;->internal_static_ReverseGeocodingRequest_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    invoke-static {}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf;->access$100()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 103
    iget-byte v2, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$ReverseGeocodingRequest;->memoizedIsInitialized:B

    .line 104
    const/4 v3, -0x1

    if-eq v2, v3, :cond_1

    if-ne v2, v0, :cond_0

    :goto_0
    move v1, v0

    .line 119
    :goto_1
    return v1

    :cond_0
    move v0, v1

    .line 104
    goto :goto_0

    .line 106
    :cond_1
    invoke-virtual {p0}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$ReverseGeocodingRequest;->hasCommon()Z

    move-result v2

    if-nez v2, :cond_2

    .line 107
    iput-byte v1, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$ReverseGeocodingRequest;->memoizedIsInitialized:B

    goto :goto_1

    .line 110
    :cond_2
    invoke-virtual {p0}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$ReverseGeocodingRequest;->hasSpatialXml()Z

    move-result v2

    if-nez v2, :cond_3

    .line 111
    iput-byte v1, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$ReverseGeocodingRequest;->memoizedIsInitialized:B

    goto :goto_1

    .line 114
    :cond_3
    invoke-virtual {p0}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$ReverseGeocodingRequest;->getCommon()Lcom/mapabc/mapapi/core/CommonProtoBuf$Common;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mapabc/mapapi/core/CommonProtoBuf$Common;->isInitialized()Z

    move-result v2

    if-nez v2, :cond_4

    .line 115
    iput-byte v1, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$ReverseGeocodingRequest;->memoizedIsInitialized:B

    goto :goto_1

    .line 118
    :cond_4
    iput-byte v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$ReverseGeocodingRequest;->memoizedIsInitialized:B

    move v1, v0

    .line 119
    goto :goto_1
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 23
    invoke-virtual {p0}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$ReverseGeocodingRequest;->newBuilderForType()Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$ReverseGeocodingRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic newBuilderForType(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 23
    invoke-virtual {p0, p1}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$ReverseGeocodingRequest;->newBuilderForType(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$ReverseGeocodingRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 23
    invoke-virtual {p0}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$ReverseGeocodingRequest;->newBuilderForType()Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$ReverseGeocodingRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$ReverseGeocodingRequest$Builder;
    .locals 1

    .prologue
    .line 228
    invoke-static {}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$ReverseGeocodingRequest;->newBuilder()Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$ReverseGeocodingRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected newBuilderForType(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$ReverseGeocodingRequest$Builder;
    .locals 2

    .prologue
    .line 237
    new-instance v0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$ReverseGeocodingRequest$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$ReverseGeocodingRequest$Builder;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;Lcom/mapabc/mapapi/core/z;)V

    .line 238
    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 23
    invoke-virtual {p0}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$ReverseGeocodingRequest;->toBuilder()Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$ReverseGeocodingRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 23
    invoke-virtual {p0}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$ReverseGeocodingRequest;->toBuilder()Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$ReverseGeocodingRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$ReverseGeocodingRequest$Builder;
    .locals 1

    .prologue
    .line 232
    invoke-static {p0}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$ReverseGeocodingRequest;->newBuilder(Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$ReverseGeocodingRequest;)Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$ReverseGeocodingRequest$Builder;

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
    .line 157
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

    .line 124
    invoke-virtual {p0}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$ReverseGeocodingRequest;->getSerializedSize()I

    .line 125
    iget v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$ReverseGeocodingRequest;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_0

    .line 126
    iget-object v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$ReverseGeocodingRequest;->common_:Lcom/mapabc/mapapi/core/CommonProtoBuf$Common;

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 128
    :cond_0
    iget v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$ReverseGeocodingRequest;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-ne v0, v2, :cond_1

    .line 129
    invoke-direct {p0}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$ReverseGeocodingRequest;->getSpatialXmlBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 131
    :cond_1
    invoke-virtual {p0}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$ReverseGeocodingRequest;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/UnknownFieldSet;->writeTo(Lcom/google/protobuf/CodedOutputStream;)V

    .line 132
    return-void
.end method
