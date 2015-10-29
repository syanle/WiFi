.class public final Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Province;
.super Lcom/google/protobuf/GeneratedMessage;
.source "ReverseGeocodingProtoBuf.java"

# interfaces
.implements Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$ProvinceOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Province"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Province$Builder;
    }
.end annotation


# static fields
.field public static final CODE_FIELD_NUMBER:I = 0x2

.field public static final NAME_FIELD_NUMBER:I = 0x1

.field private static final defaultInstance:Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Province;

.field private static final serialVersionUID:J


# instance fields
.field private bitField0_:I

.field private code_:Ljava/lang/Object;

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I

.field private name_:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 2777
    new-instance v0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Province;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Province;-><init>(Z)V

    sput-object v0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Province;->defaultInstance:Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Province;

    .line 2778
    sget-object v0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Province;->defaultInstance:Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Province;

    invoke-direct {v0}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Province;->initFields()V

    .line 2779
    return-void
.end method

.method private constructor <init>(Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Province$Builder;)V
    .locals 1

    .prologue
    const/4 v0, -0x1

    .line 2331
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessage;-><init>(Lcom/google/protobuf/GeneratedMessage$Builder;)V

    .line 2423
    iput-byte v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Province;->memoizedIsInitialized:B

    .line 2444
    iput v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Province;->memoizedSerializedSize:I

    .line 2332
    return-void
.end method

.method synthetic constructor <init>(Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Province$Builder;Lcom/mapabc/mapapi/core/z;)V
    .locals 0

    .prologue
    .line 2326
    invoke-direct {p0, p1}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Province;-><init>(Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Province$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 1

    .prologue
    const/4 v0, -0x1

    .line 2333
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage;-><init>()V

    .line 2423
    iput-byte v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Province;->memoizedIsInitialized:B

    .line 2444
    iput v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Province;->memoizedSerializedSize:I

    .line 2333
    return-void
.end method

.method static synthetic access$3800()Z
    .locals 1

    .prologue
    .line 2326
    sget-boolean v0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Province;->alwaysUseFieldBuilders:Z

    return v0
.end method

.method static synthetic access$4002(Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Province;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .prologue
    .line 2326
    iput-object p1, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Province;->name_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$4102(Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Province;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .prologue
    .line 2326
    iput-object p1, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Province;->code_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$4202(Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Province;I)I
    .locals 0

    .prologue
    .line 2326
    iput p1, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Province;->bitField0_:I

    return p1
.end method

.method private getCodeBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .prologue
    .line 2408
    iget-object v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Province;->code_:Ljava/lang/Object;

    .line 2409
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 2410
    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 2412
    iput-object v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Province;->code_:Ljava/lang/Object;

    .line 2415
    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    goto :goto_0
.end method

.method public static getDefaultInstance()Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Province;
    .locals 1

    .prologue
    .line 2337
    sget-object v0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Province;->defaultInstance:Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Province;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 2346
    # getter for: Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf;->internal_static_Province_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;
    invoke-static {}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf;->access$3300()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method private getNameBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .prologue
    .line 2376
    iget-object v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Province;->name_:Ljava/lang/Object;

    .line 2377
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 2378
    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 2380
    iput-object v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Province;->name_:Ljava/lang/Object;

    .line 2383
    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    goto :goto_0
.end method

.method private initFields()V
    .locals 1

    .prologue
    .line 2420
    const-string v0, ""

    iput-object v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Province;->name_:Ljava/lang/Object;

    .line 2421
    const-string v0, ""

    iput-object v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Province;->code_:Ljava/lang/Object;

    .line 2422
    return-void
.end method

.method public static newBuilder()Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Province$Builder;
    .locals 1

    .prologue
    .line 2537
    # invokes: Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Province$Builder;->create()Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Province$Builder;
    invoke-static {}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Province$Builder;->access$3600()Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Province$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Province;)Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Province$Builder;
    .locals 1

    .prologue
    .line 2540
    invoke-static {}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Province;->newBuilder()Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Province$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Province$Builder;->mergeFrom(Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Province;)Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Province$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Province;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2506
    invoke-static {}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Province;->newBuilder()Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Province$Builder;

    move-result-object v0

    .line 2507
    invoke-virtual {v0, p0}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Province$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2508
    # invokes: Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Province$Builder;->buildParsed()Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Province;
    invoke-static {v0}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Province$Builder;->access$3500(Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Province$Builder;)Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Province;

    move-result-object v0

    .line 2510
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Province;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2517
    invoke-static {}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Province;->newBuilder()Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Province$Builder;

    move-result-object v0

    .line 2518
    invoke-virtual {v0, p0, p1}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Province$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2519
    # invokes: Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Province$Builder;->buildParsed()Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Province;
    invoke-static {v0}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Province$Builder;->access$3500(Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Province$Builder;)Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Province;

    move-result-object v0

    .line 2521
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Province;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 2473
    invoke-static {}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Province;->newBuilder()Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Province$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Province$Builder;->mergeFrom(Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Province$Builder;

    # invokes: Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Province$Builder;->buildParsed()Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Province;
    invoke-static {v0}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Province$Builder;->access$3500(Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Province$Builder;)Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Province;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Province;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 2479
    invoke-static {}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Province;->newBuilder()Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Province$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Province$Builder;->mergeFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Province$Builder;

    # invokes: Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Province$Builder;->buildParsed()Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Province;
    invoke-static {v0}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Province$Builder;->access$3500(Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Province$Builder;)Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Province;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Province;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2527
    invoke-static {}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Province;->newBuilder()Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Province$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Province$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Province$Builder;

    # invokes: Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Province$Builder;->buildParsed()Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Province;
    invoke-static {v0}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Province$Builder;->access$3500(Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Province$Builder;)Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Province;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Province;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2533
    invoke-static {}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Province;->newBuilder()Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Province$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Province$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Province$Builder;

    move-result-object v0

    # invokes: Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Province$Builder;->buildParsed()Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Province;
    invoke-static {v0}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Province$Builder;->access$3500(Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Province$Builder;)Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Province;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Province;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2495
    invoke-static {}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Province;->newBuilder()Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Province$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Province$Builder;->mergeFrom(Ljava/io/InputStream;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Province$Builder;

    # invokes: Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Province$Builder;->buildParsed()Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Province;
    invoke-static {v0}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Province$Builder;->access$3500(Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Province$Builder;)Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Province;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Province;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2501
    invoke-static {}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Province;->newBuilder()Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Province$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Province$Builder;->mergeFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Province$Builder;

    # invokes: Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Province$Builder;->buildParsed()Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Province;
    invoke-static {v0}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Province$Builder;->access$3500(Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Province$Builder;)Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Province;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Province;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 2484
    invoke-static {}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Province;->newBuilder()Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Province$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Province$Builder;->mergeFrom([B)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Province$Builder;

    # invokes: Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Province$Builder;->buildParsed()Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Province;
    invoke-static {v0}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Province$Builder;->access$3500(Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Province$Builder;)Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Province;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Province;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 2490
    invoke-static {}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Province;->newBuilder()Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Province$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Province$Builder;->mergeFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Province$Builder;

    # invokes: Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Province$Builder;->buildParsed()Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Province;
    invoke-static {v0}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Province$Builder;->access$3500(Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Province$Builder;)Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Province;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getCode()Ljava/lang/String;
    .locals 2

    .prologue
    .line 2394
    iget-object v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Province;->code_:Ljava/lang/Object;

    .line 2395
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 2396
    check-cast v0, Ljava/lang/String;

    .line 2404
    :goto_0
    return-object v0

    .line 2398
    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 2400
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 2401
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2402
    iput-object v1, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Province;->code_:Ljava/lang/Object;

    :cond_1
    move-object v0, v1

    .line 2404
    goto :goto_0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 2326
    invoke-virtual {p0}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Province;->getDefaultInstanceForType()Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Province;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 2326
    invoke-virtual {p0}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Province;->getDefaultInstanceForType()Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Province;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Province;
    .locals 1

    .prologue
    .line 2341
    sget-object v0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Province;->defaultInstance:Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Province;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 2362
    iget-object v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Province;->name_:Ljava/lang/Object;

    .line 2363
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 2364
    check-cast v0, Ljava/lang/String;

    .line 2372
    :goto_0
    return-object v0

    .line 2366
    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 2368
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 2369
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2370
    iput-object v1, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Province;->name_:Ljava/lang/Object;

    :cond_1
    move-object v0, v1

    .line 2372
    goto :goto_0
.end method

.method public getSerializedSize()I
    .locals 4

    .prologue
    const/4 v3, 0x2

    const/4 v2, 0x1

    .line 2446
    iget v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Province;->memoizedSerializedSize:I

    .line 2447
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 2460
    :goto_0
    return v0

    .line 2449
    :cond_0
    const/4 v0, 0x0

    .line 2450
    iget v1, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Province;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v2, :cond_1

    .line 2451
    invoke-direct {p0}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Province;->getNameBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v1

    add-int/2addr v0, v1

    .line 2454
    :cond_1
    iget v1, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Province;->bitField0_:I

    and-int/lit8 v1, v1, 0x2

    if-ne v1, v3, :cond_2

    .line 2455
    invoke-direct {p0}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Province;->getCodeBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v1

    add-int/2addr v0, v1

    .line 2458
    :cond_2
    invoke-virtual {p0}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Province;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protobuf/UnknownFieldSet;->getSerializedSize()I

    move-result v1

    add-int/2addr v0, v1

    .line 2459
    iput v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Province;->memoizedSerializedSize:I

    goto :goto_0
.end method

.method public hasCode()Z
    .locals 2

    .prologue
    .line 2391
    iget v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Province;->bitField0_:I

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

    .line 2359
    iget v1, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Province;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected internalGetFieldAccessorTable()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 1

    .prologue
    .line 2351
    # getter for: Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf;->internal_static_Province_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    invoke-static {}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf;->access$3400()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 2425
    iget-byte v1, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Province;->memoizedIsInitialized:B

    .line 2426
    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    if-ne v1, v0, :cond_0

    .line 2429
    :goto_0
    return v0

    .line 2426
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 2428
    :cond_1
    iput-byte v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Province;->memoizedIsInitialized:B

    goto :goto_0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 2326
    invoke-virtual {p0}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Province;->newBuilderForType()Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Province$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic newBuilderForType(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 2326
    invoke-virtual {p0, p1}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Province;->newBuilderForType(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Province$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 2326
    invoke-virtual {p0}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Province;->newBuilderForType()Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Province$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Province$Builder;
    .locals 1

    .prologue
    .line 2538
    invoke-static {}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Province;->newBuilder()Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Province$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected newBuilderForType(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Province$Builder;
    .locals 2

    .prologue
    .line 2547
    new-instance v0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Province$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Province$Builder;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;Lcom/mapabc/mapapi/core/z;)V

    .line 2548
    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 2326
    invoke-virtual {p0}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Province;->toBuilder()Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Province$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 2326
    invoke-virtual {p0}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Province;->toBuilder()Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Province$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Province$Builder;
    .locals 1

    .prologue
    .line 2542
    invoke-static {p0}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Province;->newBuilder(Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Province;)Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Province$Builder;

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
    .line 2467
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

    .line 2434
    invoke-virtual {p0}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Province;->getSerializedSize()I

    .line 2435
    iget v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Province;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_0

    .line 2436
    invoke-direct {p0}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Province;->getNameBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 2438
    :cond_0
    iget v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Province;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-ne v0, v2, :cond_1

    .line 2439
    invoke-direct {p0}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Province;->getCodeBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 2441
    :cond_1
    invoke-virtual {p0}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Province;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/UnknownFieldSet;->writeTo(Lcom/google/protobuf/CodedOutputStream;)V

    .line 2442
    return-void
.end method
