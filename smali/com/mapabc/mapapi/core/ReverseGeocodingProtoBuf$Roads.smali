.class public final Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Roads;
.super Lcom/google/protobuf/GeneratedMessage;
.source "ReverseGeocodingProtoBuf.java"

# interfaces
.implements Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$RoadsOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Roads"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Roads$Builder;
    }
.end annotation


# static fields
.field public static final ROAD_FIELD_NUMBER:I = 0x1

.field private static final defaultInstance:Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Roads;

.field private static final serialVersionUID:J


# instance fields
.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I

.field private road_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Road;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 4654
    new-instance v0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Roads;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Roads;-><init>(Z)V

    sput-object v0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Roads;->defaultInstance:Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Roads;

    .line 4655
    sget-object v0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Roads;->defaultInstance:Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Roads;

    invoke-direct {v0}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Roads;->initFields()V

    .line 4656
    return-void
.end method

.method private constructor <init>(Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Roads$Builder;)V
    .locals 1

    .prologue
    const/4 v0, -0x1

    .line 4116
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessage;-><init>(Lcom/google/protobuf/GeneratedMessage$Builder;)V

    .line 4163
    iput-byte v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Roads;->memoizedIsInitialized:B

    .line 4187
    iput v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Roads;->memoizedSerializedSize:I

    .line 4117
    return-void
.end method

.method synthetic constructor <init>(Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Roads$Builder;Lcom/mapabc/mapapi/core/z;)V
    .locals 0

    .prologue
    .line 4111
    invoke-direct {p0, p1}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Roads;-><init>(Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Roads$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 1

    .prologue
    const/4 v0, -0x1

    .line 4118
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage;-><init>()V

    .line 4163
    iput-byte v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Roads;->memoizedIsInitialized:B

    .line 4187
    iput v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Roads;->memoizedSerializedSize:I

    .line 4118
    return-void
.end method

.method static synthetic access$7200()Z
    .locals 1

    .prologue
    .line 4111
    sget-boolean v0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Roads;->alwaysUseFieldBuilders:Z

    return v0
.end method

.method static synthetic access$7400(Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Roads;)Ljava/util/List;
    .locals 1

    .prologue
    .line 4111
    iget-object v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Roads;->road_:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$7402(Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Roads;Ljava/util/List;)Ljava/util/List;
    .locals 0

    .prologue
    .line 4111
    iput-object p1, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Roads;->road_:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$7500()Z
    .locals 1

    .prologue
    .line 4111
    sget-boolean v0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Roads;->alwaysUseFieldBuilders:Z

    return v0
.end method

.method public static getDefaultInstance()Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Roads;
    .locals 1

    .prologue
    .line 4122
    sget-object v0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Roads;->defaultInstance:Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Roads;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 4131
    # getter for: Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf;->internal_static_Roads_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;
    invoke-static {}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf;->access$6700()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method private initFields()V
    .locals 1

    .prologue
    .line 4161
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Roads;->road_:Ljava/util/List;

    .line 4162
    return-void
.end method

.method public static newBuilder()Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Roads$Builder;
    .locals 1

    .prologue
    .line 4276
    # invokes: Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Roads$Builder;->create()Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Roads$Builder;
    invoke-static {}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Roads$Builder;->access$7000()Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Roads$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Roads;)Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Roads$Builder;
    .locals 1

    .prologue
    .line 4279
    invoke-static {}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Roads;->newBuilder()Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Roads$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Roads$Builder;->mergeFrom(Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Roads;)Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Roads$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Roads;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 4245
    invoke-static {}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Roads;->newBuilder()Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Roads$Builder;

    move-result-object v0

    .line 4246
    invoke-virtual {v0, p0}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Roads$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4247
    # invokes: Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Roads$Builder;->buildParsed()Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Roads;
    invoke-static {v0}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Roads$Builder;->access$6900(Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Roads$Builder;)Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Roads;

    move-result-object v0

    .line 4249
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Roads;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 4256
    invoke-static {}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Roads;->newBuilder()Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Roads$Builder;

    move-result-object v0

    .line 4257
    invoke-virtual {v0, p0, p1}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Roads$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4258
    # invokes: Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Roads$Builder;->buildParsed()Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Roads;
    invoke-static {v0}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Roads$Builder;->access$6900(Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Roads$Builder;)Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Roads;

    move-result-object v0

    .line 4260
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Roads;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 4212
    invoke-static {}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Roads;->newBuilder()Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Roads$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Roads$Builder;->mergeFrom(Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Roads$Builder;

    # invokes: Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Roads$Builder;->buildParsed()Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Roads;
    invoke-static {v0}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Roads$Builder;->access$6900(Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Roads$Builder;)Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Roads;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Roads;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 4218
    invoke-static {}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Roads;->newBuilder()Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Roads$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Roads$Builder;->mergeFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Roads$Builder;

    # invokes: Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Roads$Builder;->buildParsed()Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Roads;
    invoke-static {v0}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Roads$Builder;->access$6900(Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Roads$Builder;)Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Roads;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Roads;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 4266
    invoke-static {}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Roads;->newBuilder()Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Roads$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Roads$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Roads$Builder;

    # invokes: Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Roads$Builder;->buildParsed()Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Roads;
    invoke-static {v0}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Roads$Builder;->access$6900(Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Roads$Builder;)Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Roads;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Roads;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 4272
    invoke-static {}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Roads;->newBuilder()Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Roads$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Roads$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Roads$Builder;

    move-result-object v0

    # invokes: Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Roads$Builder;->buildParsed()Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Roads;
    invoke-static {v0}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Roads$Builder;->access$6900(Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Roads$Builder;)Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Roads;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Roads;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 4234
    invoke-static {}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Roads;->newBuilder()Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Roads$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Roads$Builder;->mergeFrom(Ljava/io/InputStream;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Roads$Builder;

    # invokes: Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Roads$Builder;->buildParsed()Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Roads;
    invoke-static {v0}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Roads$Builder;->access$6900(Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Roads$Builder;)Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Roads;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Roads;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 4240
    invoke-static {}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Roads;->newBuilder()Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Roads$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Roads$Builder;->mergeFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Roads$Builder;

    # invokes: Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Roads$Builder;->buildParsed()Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Roads;
    invoke-static {v0}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Roads$Builder;->access$6900(Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Roads$Builder;)Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Roads;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Roads;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 4223
    invoke-static {}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Roads;->newBuilder()Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Roads$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Roads$Builder;->mergeFrom([B)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Roads$Builder;

    # invokes: Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Roads$Builder;->buildParsed()Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Roads;
    invoke-static {v0}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Roads$Builder;->access$6900(Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Roads$Builder;)Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Roads;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Roads;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 4229
    invoke-static {}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Roads;->newBuilder()Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Roads$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Roads$Builder;->mergeFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Roads$Builder;

    # invokes: Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Roads$Builder;->buildParsed()Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Roads;
    invoke-static {v0}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Roads$Builder;->access$6900(Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Roads$Builder;)Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Roads;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 4111
    invoke-virtual {p0}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Roads;->getDefaultInstanceForType()Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Roads;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 4111
    invoke-virtual {p0}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Roads;->getDefaultInstanceForType()Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Roads;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Roads;
    .locals 1

    .prologue
    .line 4126
    sget-object v0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Roads;->defaultInstance:Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Roads;

    return-object v0
.end method

.method public getRoad(I)Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Road;
    .locals 1

    .prologue
    .line 4153
    iget-object v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Roads;->road_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Road;

    return-object v0
.end method

.method public getRoadCount()I
    .locals 1

    .prologue
    .line 4150
    iget-object v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Roads;->road_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getRoadList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Road;",
            ">;"
        }
    .end annotation

    .prologue
    .line 4143
    iget-object v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Roads;->road_:Ljava/util/List;

    return-object v0
.end method

.method public getRoadOrBuilder(I)Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$RoadOrBuilder;
    .locals 1

    .prologue
    .line 4157
    iget-object v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Roads;->road_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$RoadOrBuilder;

    return-object v0
.end method

.method public getRoadOrBuilderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<+",
            "Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$RoadOrBuilder;",
            ">;"
        }
    .end annotation

    .prologue
    .line 4147
    iget-object v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Roads;->road_:Ljava/util/List;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 4189
    iget v1, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Roads;->memoizedSerializedSize:I

    .line 4190
    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    move v0, v1

    .line 4199
    :goto_0
    return v0

    :cond_0
    move v1, v0

    move v2, v0

    .line 4193
    :goto_1
    iget-object v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Roads;->road_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    .line 4194
    const/4 v3, 0x1

    iget-object v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Roads;->road_:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/MessageLite;

    invoke-static {v3, v0}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v0

    add-int/2addr v2, v0

    .line 4193
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    .line 4197
    :cond_1
    invoke-virtual {p0}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Roads;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/UnknownFieldSet;->getSerializedSize()I

    move-result v0

    add-int/2addr v0, v2

    .line 4198
    iput v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Roads;->memoizedSerializedSize:I

    goto :goto_0
.end method

.method protected internalGetFieldAccessorTable()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 1

    .prologue
    .line 4136
    # getter for: Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf;->internal_static_Roads_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    invoke-static {}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf;->access$6800()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 4165
    iget-byte v2, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Roads;->memoizedIsInitialized:B

    .line 4166
    const/4 v3, -0x1

    if-eq v2, v3, :cond_1

    if-ne v2, v0, :cond_0

    .line 4175
    :goto_0
    return v0

    :cond_0
    move v0, v1

    .line 4166
    goto :goto_0

    :cond_1
    move v2, v1

    .line 4168
    :goto_1
    invoke-virtual {p0}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Roads;->getRoadCount()I

    move-result v3

    if-ge v2, v3, :cond_3

    .line 4169
    invoke-virtual {p0, v2}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Roads;->getRoad(I)Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Road;

    move-result-object v3

    invoke-virtual {v3}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Road;->isInitialized()Z

    move-result v3

    if-nez v3, :cond_2

    .line 4170
    iput-byte v1, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Roads;->memoizedIsInitialized:B

    move v0, v1

    .line 4171
    goto :goto_0

    .line 4168
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 4174
    :cond_3
    iput-byte v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Roads;->memoizedIsInitialized:B

    goto :goto_0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 4111
    invoke-virtual {p0}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Roads;->newBuilderForType()Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Roads$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic newBuilderForType(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 4111
    invoke-virtual {p0, p1}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Roads;->newBuilderForType(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Roads$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 4111
    invoke-virtual {p0}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Roads;->newBuilderForType()Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Roads$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Roads$Builder;
    .locals 1

    .prologue
    .line 4277
    invoke-static {}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Roads;->newBuilder()Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Roads$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected newBuilderForType(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Roads$Builder;
    .locals 2

    .prologue
    .line 4286
    new-instance v0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Roads$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Roads$Builder;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;Lcom/mapabc/mapapi/core/z;)V

    .line 4287
    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 4111
    invoke-virtual {p0}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Roads;->toBuilder()Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Roads$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 4111
    invoke-virtual {p0}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Roads;->toBuilder()Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Roads$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Roads$Builder;
    .locals 1

    .prologue
    .line 4281
    invoke-static {p0}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Roads;->newBuilder(Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Roads;)Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Roads$Builder;

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
    .line 4206
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
    .line 4180
    invoke-virtual {p0}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Roads;->getSerializedSize()I

    .line 4181
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Roads;->road_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 4182
    const/4 v2, 0x1

    iget-object v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Roads;->road_:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/MessageLite;

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 4181
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 4184
    :cond_0
    invoke-virtual {p0}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Roads;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/UnknownFieldSet;->writeTo(Lcom/google/protobuf/CodedOutputStream;)V

    .line 4185
    return-void
.end method
