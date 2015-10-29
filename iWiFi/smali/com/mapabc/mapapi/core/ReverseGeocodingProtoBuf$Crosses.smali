.class public final Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Crosses;
.super Lcom/google/protobuf/GeneratedMessage;
.source "ReverseGeocodingProtoBuf.java"

# interfaces
.implements Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$CrossesOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Crosses"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Crosses$Builder;
    }
.end annotation


# static fields
.field public static final CROSS_FIELD_NUMBER:I = 0x1

.field private static final defaultInstance:Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Crosses;

.field private static final serialVersionUID:J


# instance fields
.field private cross_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Cross;",
            ">;"
        }
    .end annotation
.end field

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 6775
    new-instance v0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Crosses;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Crosses;-><init>(Z)V

    sput-object v0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Crosses;->defaultInstance:Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Crosses;

    .line 6776
    sget-object v0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Crosses;->defaultInstance:Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Crosses;

    invoke-direct {v0}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Crosses;->initFields()V

    .line 6777
    return-void
.end method

.method private constructor <init>(Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Crosses$Builder;)V
    .locals 1

    .prologue
    const/4 v0, -0x1

    .line 6237
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessage;-><init>(Lcom/google/protobuf/GeneratedMessage$Builder;)V

    .line 6284
    iput-byte v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Crosses;->memoizedIsInitialized:B

    .line 6308
    iput v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Crosses;->memoizedSerializedSize:I

    .line 6238
    return-void
.end method

.method synthetic constructor <init>(Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Crosses$Builder;Lcom/mapabc/mapapi/core/z;)V
    .locals 0

    .prologue
    .line 6232
    invoke-direct {p0, p1}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Crosses;-><init>(Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Crosses$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 1

    .prologue
    const/4 v0, -0x1

    .line 6239
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage;-><init>()V

    .line 6284
    iput-byte v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Crosses;->memoizedIsInitialized:B

    .line 6308
    iput v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Crosses;->memoizedSerializedSize:I

    .line 6239
    return-void
.end method

.method static synthetic access$10500()Z
    .locals 1

    .prologue
    .line 6232
    sget-boolean v0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Crosses;->alwaysUseFieldBuilders:Z

    return v0
.end method

.method static synthetic access$10700(Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Crosses;)Ljava/util/List;
    .locals 1

    .prologue
    .line 6232
    iget-object v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Crosses;->cross_:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$10702(Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Crosses;Ljava/util/List;)Ljava/util/List;
    .locals 0

    .prologue
    .line 6232
    iput-object p1, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Crosses;->cross_:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$10800()Z
    .locals 1

    .prologue
    .line 6232
    sget-boolean v0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Crosses;->alwaysUseFieldBuilders:Z

    return v0
.end method

.method public static getDefaultInstance()Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Crosses;
    .locals 1

    .prologue
    .line 6243
    sget-object v0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Crosses;->defaultInstance:Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Crosses;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 6252
    # getter for: Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf;->internal_static_Crosses_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;
    invoke-static {}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf;->access$10000()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method private initFields()V
    .locals 1

    .prologue
    .line 6282
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Crosses;->cross_:Ljava/util/List;

    .line 6283
    return-void
.end method

.method public static newBuilder()Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Crosses$Builder;
    .locals 1

    .prologue
    .line 6397
    # invokes: Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Crosses$Builder;->create()Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Crosses$Builder;
    invoke-static {}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Crosses$Builder;->access$10300()Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Crosses$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Crosses;)Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Crosses$Builder;
    .locals 1

    .prologue
    .line 6400
    invoke-static {}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Crosses;->newBuilder()Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Crosses$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Crosses$Builder;->mergeFrom(Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Crosses;)Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Crosses$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Crosses;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 6366
    invoke-static {}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Crosses;->newBuilder()Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Crosses$Builder;

    move-result-object v0

    .line 6367
    invoke-virtual {v0, p0}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Crosses$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 6368
    # invokes: Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Crosses$Builder;->buildParsed()Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Crosses;
    invoke-static {v0}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Crosses$Builder;->access$10200(Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Crosses$Builder;)Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Crosses;

    move-result-object v0

    .line 6370
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Crosses;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 6377
    invoke-static {}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Crosses;->newBuilder()Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Crosses$Builder;

    move-result-object v0

    .line 6378
    invoke-virtual {v0, p0, p1}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Crosses$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 6379
    # invokes: Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Crosses$Builder;->buildParsed()Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Crosses;
    invoke-static {v0}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Crosses$Builder;->access$10200(Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Crosses$Builder;)Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Crosses;

    move-result-object v0

    .line 6381
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Crosses;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 6333
    invoke-static {}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Crosses;->newBuilder()Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Crosses$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Crosses$Builder;->mergeFrom(Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Crosses$Builder;

    # invokes: Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Crosses$Builder;->buildParsed()Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Crosses;
    invoke-static {v0}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Crosses$Builder;->access$10200(Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Crosses$Builder;)Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Crosses;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Crosses;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 6339
    invoke-static {}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Crosses;->newBuilder()Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Crosses$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Crosses$Builder;->mergeFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Crosses$Builder;

    # invokes: Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Crosses$Builder;->buildParsed()Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Crosses;
    invoke-static {v0}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Crosses$Builder;->access$10200(Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Crosses$Builder;)Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Crosses;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Crosses;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 6387
    invoke-static {}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Crosses;->newBuilder()Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Crosses$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Crosses$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Crosses$Builder;

    # invokes: Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Crosses$Builder;->buildParsed()Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Crosses;
    invoke-static {v0}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Crosses$Builder;->access$10200(Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Crosses$Builder;)Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Crosses;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Crosses;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 6393
    invoke-static {}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Crosses;->newBuilder()Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Crosses$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Crosses$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Crosses$Builder;

    move-result-object v0

    # invokes: Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Crosses$Builder;->buildParsed()Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Crosses;
    invoke-static {v0}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Crosses$Builder;->access$10200(Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Crosses$Builder;)Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Crosses;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Crosses;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 6355
    invoke-static {}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Crosses;->newBuilder()Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Crosses$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Crosses$Builder;->mergeFrom(Ljava/io/InputStream;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Crosses$Builder;

    # invokes: Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Crosses$Builder;->buildParsed()Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Crosses;
    invoke-static {v0}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Crosses$Builder;->access$10200(Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Crosses$Builder;)Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Crosses;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Crosses;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 6361
    invoke-static {}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Crosses;->newBuilder()Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Crosses$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Crosses$Builder;->mergeFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Crosses$Builder;

    # invokes: Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Crosses$Builder;->buildParsed()Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Crosses;
    invoke-static {v0}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Crosses$Builder;->access$10200(Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Crosses$Builder;)Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Crosses;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Crosses;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 6344
    invoke-static {}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Crosses;->newBuilder()Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Crosses$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Crosses$Builder;->mergeFrom([B)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Crosses$Builder;

    # invokes: Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Crosses$Builder;->buildParsed()Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Crosses;
    invoke-static {v0}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Crosses$Builder;->access$10200(Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Crosses$Builder;)Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Crosses;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Crosses;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 6350
    invoke-static {}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Crosses;->newBuilder()Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Crosses$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Crosses$Builder;->mergeFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Crosses$Builder;

    # invokes: Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Crosses$Builder;->buildParsed()Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Crosses;
    invoke-static {v0}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Crosses$Builder;->access$10200(Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Crosses$Builder;)Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Crosses;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getCross(I)Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Cross;
    .locals 1

    .prologue
    .line 6274
    iget-object v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Crosses;->cross_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Cross;

    return-object v0
.end method

.method public getCrossCount()I
    .locals 1

    .prologue
    .line 6271
    iget-object v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Crosses;->cross_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getCrossList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Cross;",
            ">;"
        }
    .end annotation

    .prologue
    .line 6264
    iget-object v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Crosses;->cross_:Ljava/util/List;

    return-object v0
.end method

.method public getCrossOrBuilder(I)Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$CrossOrBuilder;
    .locals 1

    .prologue
    .line 6278
    iget-object v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Crosses;->cross_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$CrossOrBuilder;

    return-object v0
.end method

.method public getCrossOrBuilderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<+",
            "Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$CrossOrBuilder;",
            ">;"
        }
    .end annotation

    .prologue
    .line 6268
    iget-object v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Crosses;->cross_:Ljava/util/List;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 6232
    invoke-virtual {p0}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Crosses;->getDefaultInstanceForType()Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Crosses;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 6232
    invoke-virtual {p0}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Crosses;->getDefaultInstanceForType()Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Crosses;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Crosses;
    .locals 1

    .prologue
    .line 6247
    sget-object v0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Crosses;->defaultInstance:Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Crosses;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 6310
    iget v1, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Crosses;->memoizedSerializedSize:I

    .line 6311
    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    move v0, v1

    .line 6320
    :goto_0
    return v0

    :cond_0
    move v1, v0

    move v2, v0

    .line 6314
    :goto_1
    iget-object v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Crosses;->cross_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    .line 6315
    const/4 v3, 0x1

    iget-object v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Crosses;->cross_:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/MessageLite;

    invoke-static {v3, v0}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v0

    add-int/2addr v2, v0

    .line 6314
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    .line 6318
    :cond_1
    invoke-virtual {p0}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Crosses;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/UnknownFieldSet;->getSerializedSize()I

    move-result v0

    add-int/2addr v0, v2

    .line 6319
    iput v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Crosses;->memoizedSerializedSize:I

    goto :goto_0
.end method

.method protected internalGetFieldAccessorTable()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 1

    .prologue
    .line 6257
    # getter for: Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf;->internal_static_Crosses_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    invoke-static {}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf;->access$10100()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 6286
    iget-byte v2, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Crosses;->memoizedIsInitialized:B

    .line 6287
    const/4 v3, -0x1

    if-eq v2, v3, :cond_1

    if-ne v2, v0, :cond_0

    .line 6296
    :goto_0
    return v0

    :cond_0
    move v0, v1

    .line 6287
    goto :goto_0

    :cond_1
    move v2, v1

    .line 6289
    :goto_1
    invoke-virtual {p0}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Crosses;->getCrossCount()I

    move-result v3

    if-ge v2, v3, :cond_3

    .line 6290
    invoke-virtual {p0, v2}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Crosses;->getCross(I)Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Cross;

    move-result-object v3

    invoke-virtual {v3}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Cross;->isInitialized()Z

    move-result v3

    if-nez v3, :cond_2

    .line 6291
    iput-byte v1, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Crosses;->memoizedIsInitialized:B

    move v0, v1

    .line 6292
    goto :goto_0

    .line 6289
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 6295
    :cond_3
    iput-byte v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Crosses;->memoizedIsInitialized:B

    goto :goto_0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 6232
    invoke-virtual {p0}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Crosses;->newBuilderForType()Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Crosses$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic newBuilderForType(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 6232
    invoke-virtual {p0, p1}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Crosses;->newBuilderForType(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Crosses$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 6232
    invoke-virtual {p0}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Crosses;->newBuilderForType()Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Crosses$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Crosses$Builder;
    .locals 1

    .prologue
    .line 6398
    invoke-static {}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Crosses;->newBuilder()Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Crosses$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected newBuilderForType(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Crosses$Builder;
    .locals 2

    .prologue
    .line 6407
    new-instance v0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Crosses$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Crosses$Builder;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;Lcom/mapabc/mapapi/core/z;)V

    .line 6408
    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 6232
    invoke-virtual {p0}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Crosses;->toBuilder()Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Crosses$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 6232
    invoke-virtual {p0}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Crosses;->toBuilder()Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Crosses$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Crosses$Builder;
    .locals 1

    .prologue
    .line 6402
    invoke-static {p0}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Crosses;->newBuilder(Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Crosses;)Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Crosses$Builder;

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
    .line 6327
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
    .line 6301
    invoke-virtual {p0}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Crosses;->getSerializedSize()I

    .line 6302
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Crosses;->cross_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 6303
    const/4 v2, 0x1

    iget-object v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Crosses;->cross_:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/MessageLite;

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 6302
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 6305
    :cond_0
    invoke-virtual {p0}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Crosses;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/UnknownFieldSet;->writeTo(Lcom/google/protobuf/CodedOutputStream;)V

    .line 6306
    return-void
.end method
