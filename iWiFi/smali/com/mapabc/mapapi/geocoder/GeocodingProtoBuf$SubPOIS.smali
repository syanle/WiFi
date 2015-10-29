.class public final Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$SubPOIS;
.super Lcom/google/protobuf/GeneratedMessage;
.source "GeocodingProtoBuf.java"

# interfaces
.implements Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$SubPOISOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SubPOIS"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$SubPOIS$Builder;
    }
.end annotation


# static fields
.field public static final SUBPOI_FIELD_NUMBER:I = 0x1

.field private static final defaultInstance:Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$SubPOIS;

.field private static final serialVersionUID:J


# instance fields
.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I

.field private subpoi_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$SubPOI;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 4726
    new-instance v0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$SubPOIS;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$SubPOIS;-><init>(Z)V

    sput-object v0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$SubPOIS;->defaultInstance:Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$SubPOIS;

    .line 4727
    sget-object v0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$SubPOIS;->defaultInstance:Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$SubPOIS;

    invoke-direct {v0}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$SubPOIS;->initFields()V

    .line 4728
    return-void
.end method

.method private constructor <init>(Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$SubPOIS$Builder;)V
    .locals 1

    .prologue
    const/4 v0, -0x1

    .line 4200
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessage;-><init>(Lcom/google/protobuf/GeneratedMessage$Builder;)V

    .line 4247
    iput-byte v0, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$SubPOIS;->memoizedIsInitialized:B

    .line 4265
    iput v0, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$SubPOIS;->memoizedSerializedSize:I

    .line 4201
    return-void
.end method

.method synthetic constructor <init>(Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$SubPOIS$Builder;Lcom/mapabc/mapapi/geocoder/c;)V
    .locals 0

    .prologue
    .line 4195
    invoke-direct {p0, p1}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$SubPOIS;-><init>(Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$SubPOIS$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 1

    .prologue
    const/4 v0, -0x1

    .line 4202
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage;-><init>()V

    .line 4247
    iput-byte v0, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$SubPOIS;->memoizedIsInitialized:B

    .line 4265
    iput v0, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$SubPOIS;->memoizedSerializedSize:I

    .line 4202
    return-void
.end method

.method static synthetic access$6500()Z
    .locals 1

    .prologue
    .line 4195
    sget-boolean v0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$SubPOIS;->alwaysUseFieldBuilders:Z

    return v0
.end method

.method static synthetic access$6700(Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$SubPOIS;)Ljava/util/List;
    .locals 1

    .prologue
    .line 4195
    iget-object v0, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$SubPOIS;->subpoi_:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$6702(Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$SubPOIS;Ljava/util/List;)Ljava/util/List;
    .locals 0

    .prologue
    .line 4195
    iput-object p1, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$SubPOIS;->subpoi_:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$6800()Z
    .locals 1

    .prologue
    .line 4195
    sget-boolean v0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$SubPOIS;->alwaysUseFieldBuilders:Z

    return v0
.end method

.method public static getDefaultInstance()Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$SubPOIS;
    .locals 1

    .prologue
    .line 4206
    sget-object v0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$SubPOIS;->defaultInstance:Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$SubPOIS;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 4215
    # getter for: Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf;->internal_static_SubPOIS_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;
    invoke-static {}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf;->access$6000()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method private initFields()V
    .locals 1

    .prologue
    .line 4245
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$SubPOIS;->subpoi_:Ljava/util/List;

    .line 4246
    return-void
.end method

.method public static newBuilder()Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$SubPOIS$Builder;
    .locals 1

    .prologue
    .line 4354
    # invokes: Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$SubPOIS$Builder;->create()Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$SubPOIS$Builder;
    invoke-static {}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$SubPOIS$Builder;->access$6300()Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$SubPOIS$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$SubPOIS;)Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$SubPOIS$Builder;
    .locals 1

    .prologue
    .line 4357
    invoke-static {}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$SubPOIS;->newBuilder()Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$SubPOIS$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$SubPOIS$Builder;->mergeFrom(Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$SubPOIS;)Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$SubPOIS$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$SubPOIS;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 4323
    invoke-static {}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$SubPOIS;->newBuilder()Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$SubPOIS$Builder;

    move-result-object v0

    .line 4324
    invoke-virtual {v0, p0}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$SubPOIS$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4325
    # invokes: Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$SubPOIS$Builder;->buildParsed()Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$SubPOIS;
    invoke-static {v0}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$SubPOIS$Builder;->access$6200(Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$SubPOIS$Builder;)Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$SubPOIS;

    move-result-object v0

    .line 4327
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$SubPOIS;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 4334
    invoke-static {}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$SubPOIS;->newBuilder()Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$SubPOIS$Builder;

    move-result-object v0

    .line 4335
    invoke-virtual {v0, p0, p1}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$SubPOIS$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4336
    # invokes: Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$SubPOIS$Builder;->buildParsed()Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$SubPOIS;
    invoke-static {v0}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$SubPOIS$Builder;->access$6200(Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$SubPOIS$Builder;)Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$SubPOIS;

    move-result-object v0

    .line 4338
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$SubPOIS;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 4290
    invoke-static {}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$SubPOIS;->newBuilder()Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$SubPOIS$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$SubPOIS$Builder;->mergeFrom(Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$SubPOIS$Builder;

    # invokes: Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$SubPOIS$Builder;->buildParsed()Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$SubPOIS;
    invoke-static {v0}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$SubPOIS$Builder;->access$6200(Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$SubPOIS$Builder;)Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$SubPOIS;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$SubPOIS;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 4296
    invoke-static {}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$SubPOIS;->newBuilder()Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$SubPOIS$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$SubPOIS$Builder;->mergeFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$SubPOIS$Builder;

    # invokes: Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$SubPOIS$Builder;->buildParsed()Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$SubPOIS;
    invoke-static {v0}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$SubPOIS$Builder;->access$6200(Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$SubPOIS$Builder;)Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$SubPOIS;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$SubPOIS;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 4344
    invoke-static {}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$SubPOIS;->newBuilder()Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$SubPOIS$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$SubPOIS$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$SubPOIS$Builder;

    # invokes: Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$SubPOIS$Builder;->buildParsed()Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$SubPOIS;
    invoke-static {v0}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$SubPOIS$Builder;->access$6200(Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$SubPOIS$Builder;)Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$SubPOIS;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$SubPOIS;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 4350
    invoke-static {}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$SubPOIS;->newBuilder()Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$SubPOIS$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$SubPOIS$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$SubPOIS$Builder;

    move-result-object v0

    # invokes: Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$SubPOIS$Builder;->buildParsed()Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$SubPOIS;
    invoke-static {v0}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$SubPOIS$Builder;->access$6200(Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$SubPOIS$Builder;)Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$SubPOIS;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$SubPOIS;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 4312
    invoke-static {}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$SubPOIS;->newBuilder()Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$SubPOIS$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$SubPOIS$Builder;->mergeFrom(Ljava/io/InputStream;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$SubPOIS$Builder;

    # invokes: Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$SubPOIS$Builder;->buildParsed()Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$SubPOIS;
    invoke-static {v0}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$SubPOIS$Builder;->access$6200(Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$SubPOIS$Builder;)Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$SubPOIS;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$SubPOIS;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 4318
    invoke-static {}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$SubPOIS;->newBuilder()Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$SubPOIS$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$SubPOIS$Builder;->mergeFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$SubPOIS$Builder;

    # invokes: Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$SubPOIS$Builder;->buildParsed()Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$SubPOIS;
    invoke-static {v0}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$SubPOIS$Builder;->access$6200(Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$SubPOIS$Builder;)Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$SubPOIS;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$SubPOIS;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 4301
    invoke-static {}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$SubPOIS;->newBuilder()Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$SubPOIS$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$SubPOIS$Builder;->mergeFrom([B)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$SubPOIS$Builder;

    # invokes: Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$SubPOIS$Builder;->buildParsed()Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$SubPOIS;
    invoke-static {v0}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$SubPOIS$Builder;->access$6200(Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$SubPOIS$Builder;)Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$SubPOIS;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$SubPOIS;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 4307
    invoke-static {}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$SubPOIS;->newBuilder()Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$SubPOIS$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$SubPOIS$Builder;->mergeFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$SubPOIS$Builder;

    # invokes: Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$SubPOIS$Builder;->buildParsed()Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$SubPOIS;
    invoke-static {v0}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$SubPOIS$Builder;->access$6200(Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$SubPOIS$Builder;)Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$SubPOIS;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 4195
    invoke-virtual {p0}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$SubPOIS;->getDefaultInstanceForType()Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$SubPOIS;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 4195
    invoke-virtual {p0}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$SubPOIS;->getDefaultInstanceForType()Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$SubPOIS;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$SubPOIS;
    .locals 1

    .prologue
    .line 4210
    sget-object v0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$SubPOIS;->defaultInstance:Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$SubPOIS;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 4267
    iget v1, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$SubPOIS;->memoizedSerializedSize:I

    .line 4268
    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    move v0, v1

    .line 4277
    :goto_0
    return v0

    :cond_0
    move v1, v0

    move v2, v0

    .line 4271
    :goto_1
    iget-object v0, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$SubPOIS;->subpoi_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    .line 4272
    const/4 v3, 0x1

    iget-object v0, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$SubPOIS;->subpoi_:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/MessageLite;

    invoke-static {v3, v0}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v0

    add-int/2addr v2, v0

    .line 4271
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    .line 4275
    :cond_1
    invoke-virtual {p0}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$SubPOIS;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/UnknownFieldSet;->getSerializedSize()I

    move-result v0

    add-int/2addr v0, v2

    .line 4276
    iput v0, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$SubPOIS;->memoizedSerializedSize:I

    goto :goto_0
.end method

.method public getSubpoi(I)Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$SubPOI;
    .locals 1

    .prologue
    .line 4237
    iget-object v0, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$SubPOIS;->subpoi_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$SubPOI;

    return-object v0
.end method

.method public getSubpoiCount()I
    .locals 1

    .prologue
    .line 4234
    iget-object v0, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$SubPOIS;->subpoi_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getSubpoiList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$SubPOI;",
            ">;"
        }
    .end annotation

    .prologue
    .line 4227
    iget-object v0, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$SubPOIS;->subpoi_:Ljava/util/List;

    return-object v0
.end method

.method public getSubpoiOrBuilder(I)Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$SubPOIOrBuilder;
    .locals 1

    .prologue
    .line 4241
    iget-object v0, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$SubPOIS;->subpoi_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$SubPOIOrBuilder;

    return-object v0
.end method

.method public getSubpoiOrBuilderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<+",
            "Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$SubPOIOrBuilder;",
            ">;"
        }
    .end annotation

    .prologue
    .line 4231
    iget-object v0, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$SubPOIS;->subpoi_:Ljava/util/List;

    return-object v0
.end method

.method protected internalGetFieldAccessorTable()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 1

    .prologue
    .line 4220
    # getter for: Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf;->internal_static_SubPOIS_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    invoke-static {}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf;->access$6100()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 4249
    iget-byte v1, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$SubPOIS;->memoizedIsInitialized:B

    .line 4250
    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    if-ne v1, v0, :cond_0

    .line 4253
    :goto_0
    return v0

    .line 4250
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 4252
    :cond_1
    iput-byte v0, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$SubPOIS;->memoizedIsInitialized:B

    goto :goto_0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 4195
    invoke-virtual {p0}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$SubPOIS;->newBuilderForType()Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$SubPOIS$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic newBuilderForType(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 4195
    invoke-virtual {p0, p1}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$SubPOIS;->newBuilderForType(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$SubPOIS$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 4195
    invoke-virtual {p0}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$SubPOIS;->newBuilderForType()Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$SubPOIS$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$SubPOIS$Builder;
    .locals 1

    .prologue
    .line 4355
    invoke-static {}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$SubPOIS;->newBuilder()Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$SubPOIS$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected newBuilderForType(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$SubPOIS$Builder;
    .locals 2

    .prologue
    .line 4364
    new-instance v0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$SubPOIS$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$SubPOIS$Builder;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;Lcom/mapabc/mapapi/geocoder/c;)V

    .line 4365
    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 4195
    invoke-virtual {p0}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$SubPOIS;->toBuilder()Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$SubPOIS$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 4195
    invoke-virtual {p0}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$SubPOIS;->toBuilder()Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$SubPOIS$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$SubPOIS$Builder;
    .locals 1

    .prologue
    .line 4359
    invoke-static {p0}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$SubPOIS;->newBuilder(Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$SubPOIS;)Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$SubPOIS$Builder;

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
    .line 4284
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
    .line 4258
    invoke-virtual {p0}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$SubPOIS;->getSerializedSize()I

    .line 4259
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$SubPOIS;->subpoi_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 4260
    const/4 v2, 0x1

    iget-object v0, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$SubPOIS;->subpoi_:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/MessageLite;

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 4259
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 4262
    :cond_0
    invoke-virtual {p0}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$SubPOIS;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/UnknownFieldSet;->writeTo(Lcom/google/protobuf/CodedOutputStream;)V

    .line 4263
    return-void
.end method
