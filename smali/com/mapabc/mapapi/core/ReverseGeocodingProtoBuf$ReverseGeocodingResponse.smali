.class public final Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$ReverseGeocodingResponse;
.super Lcom/google/protobuf/GeneratedMessage;
.source "ReverseGeocodingProtoBuf.java"

# interfaces
.implements Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$ReverseGeocodingResponseOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ReverseGeocodingResponse"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$ReverseGeocodingResponse$Builder;
    }
.end annotation


# static fields
.field public static final SPATIAL_FIELD_NUMBER:I = 0x1

.field private static final defaultInstance:Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$ReverseGeocodingResponse;

.field private static final serialVersionUID:J


# instance fields
.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I

.field private spatial_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Spatial;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 1109
    new-instance v0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$ReverseGeocodingResponse;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$ReverseGeocodingResponse;-><init>(Z)V

    sput-object v0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$ReverseGeocodingResponse;->defaultInstance:Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$ReverseGeocodingResponse;

    .line 1110
    sget-object v0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$ReverseGeocodingResponse;->defaultInstance:Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$ReverseGeocodingResponse;

    invoke-direct {v0}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$ReverseGeocodingResponse;->initFields()V

    .line 1111
    return-void
.end method

.method private constructor <init>(Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$ReverseGeocodingResponse$Builder;)V
    .locals 1

    .prologue
    const/4 v0, -0x1

    .line 571
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessage;-><init>(Lcom/google/protobuf/GeneratedMessage$Builder;)V

    .line 618
    iput-byte v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$ReverseGeocodingResponse;->memoizedIsInitialized:B

    .line 642
    iput v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$ReverseGeocodingResponse;->memoizedSerializedSize:I

    .line 572
    return-void
.end method

.method synthetic constructor <init>(Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$ReverseGeocodingResponse$Builder;Lcom/mapabc/mapapi/core/z;)V
    .locals 0

    .prologue
    .line 566
    invoke-direct {p0, p1}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$ReverseGeocodingResponse;-><init>(Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$ReverseGeocodingResponse$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 1

    .prologue
    const/4 v0, -0x1

    .line 573
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage;-><init>()V

    .line 618
    iput-byte v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$ReverseGeocodingResponse;->memoizedIsInitialized:B

    .line 642
    iput v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$ReverseGeocodingResponse;->memoizedSerializedSize:I

    .line 573
    return-void
.end method

.method static synthetic access$1500()Z
    .locals 1

    .prologue
    .line 566
    sget-boolean v0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$ReverseGeocodingResponse;->alwaysUseFieldBuilders:Z

    return v0
.end method

.method static synthetic access$1700(Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$ReverseGeocodingResponse;)Ljava/util/List;
    .locals 1

    .prologue
    .line 566
    iget-object v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$ReverseGeocodingResponse;->spatial_:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$1702(Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$ReverseGeocodingResponse;Ljava/util/List;)Ljava/util/List;
    .locals 0

    .prologue
    .line 566
    iput-object p1, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$ReverseGeocodingResponse;->spatial_:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$1800()Z
    .locals 1

    .prologue
    .line 566
    sget-boolean v0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$ReverseGeocodingResponse;->alwaysUseFieldBuilders:Z

    return v0
.end method

.method public static getDefaultInstance()Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$ReverseGeocodingResponse;
    .locals 1

    .prologue
    .line 577
    sget-object v0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$ReverseGeocodingResponse;->defaultInstance:Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$ReverseGeocodingResponse;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 586
    # getter for: Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf;->internal_static_ReverseGeocodingResponse_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;
    invoke-static {}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf;->access$1000()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method private initFields()V
    .locals 1

    .prologue
    .line 616
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$ReverseGeocodingResponse;->spatial_:Ljava/util/List;

    .line 617
    return-void
.end method

.method public static newBuilder()Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$ReverseGeocodingResponse$Builder;
    .locals 1

    .prologue
    .line 731
    # invokes: Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$ReverseGeocodingResponse$Builder;->create()Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$ReverseGeocodingResponse$Builder;
    invoke-static {}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$ReverseGeocodingResponse$Builder;->access$1300()Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$ReverseGeocodingResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$ReverseGeocodingResponse;)Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$ReverseGeocodingResponse$Builder;
    .locals 1

    .prologue
    .line 734
    invoke-static {}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$ReverseGeocodingResponse;->newBuilder()Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$ReverseGeocodingResponse$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$ReverseGeocodingResponse$Builder;->mergeFrom(Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$ReverseGeocodingResponse;)Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$ReverseGeocodingResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$ReverseGeocodingResponse;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 700
    invoke-static {}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$ReverseGeocodingResponse;->newBuilder()Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$ReverseGeocodingResponse$Builder;

    move-result-object v0

    .line 701
    invoke-virtual {v0, p0}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$ReverseGeocodingResponse$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 702
    # invokes: Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$ReverseGeocodingResponse$Builder;->buildParsed()Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$ReverseGeocodingResponse;
    invoke-static {v0}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$ReverseGeocodingResponse$Builder;->access$1200(Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$ReverseGeocodingResponse$Builder;)Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$ReverseGeocodingResponse;

    move-result-object v0

    .line 704
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$ReverseGeocodingResponse;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 711
    invoke-static {}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$ReverseGeocodingResponse;->newBuilder()Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$ReverseGeocodingResponse$Builder;

    move-result-object v0

    .line 712
    invoke-virtual {v0, p0, p1}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$ReverseGeocodingResponse$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 713
    # invokes: Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$ReverseGeocodingResponse$Builder;->buildParsed()Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$ReverseGeocodingResponse;
    invoke-static {v0}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$ReverseGeocodingResponse$Builder;->access$1200(Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$ReverseGeocodingResponse$Builder;)Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$ReverseGeocodingResponse;

    move-result-object v0

    .line 715
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$ReverseGeocodingResponse;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 667
    invoke-static {}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$ReverseGeocodingResponse;->newBuilder()Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$ReverseGeocodingResponse$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$ReverseGeocodingResponse$Builder;->mergeFrom(Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$ReverseGeocodingResponse$Builder;

    # invokes: Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$ReverseGeocodingResponse$Builder;->buildParsed()Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$ReverseGeocodingResponse;
    invoke-static {v0}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$ReverseGeocodingResponse$Builder;->access$1200(Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$ReverseGeocodingResponse$Builder;)Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$ReverseGeocodingResponse;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$ReverseGeocodingResponse;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 673
    invoke-static {}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$ReverseGeocodingResponse;->newBuilder()Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$ReverseGeocodingResponse$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$ReverseGeocodingResponse$Builder;->mergeFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$ReverseGeocodingResponse$Builder;

    # invokes: Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$ReverseGeocodingResponse$Builder;->buildParsed()Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$ReverseGeocodingResponse;
    invoke-static {v0}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$ReverseGeocodingResponse$Builder;->access$1200(Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$ReverseGeocodingResponse$Builder;)Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$ReverseGeocodingResponse;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$ReverseGeocodingResponse;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 721
    invoke-static {}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$ReverseGeocodingResponse;->newBuilder()Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$ReverseGeocodingResponse$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$ReverseGeocodingResponse$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$ReverseGeocodingResponse$Builder;

    # invokes: Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$ReverseGeocodingResponse$Builder;->buildParsed()Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$ReverseGeocodingResponse;
    invoke-static {v0}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$ReverseGeocodingResponse$Builder;->access$1200(Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$ReverseGeocodingResponse$Builder;)Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$ReverseGeocodingResponse;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$ReverseGeocodingResponse;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 727
    invoke-static {}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$ReverseGeocodingResponse;->newBuilder()Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$ReverseGeocodingResponse$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$ReverseGeocodingResponse$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$ReverseGeocodingResponse$Builder;

    move-result-object v0

    # invokes: Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$ReverseGeocodingResponse$Builder;->buildParsed()Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$ReverseGeocodingResponse;
    invoke-static {v0}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$ReverseGeocodingResponse$Builder;->access$1200(Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$ReverseGeocodingResponse$Builder;)Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$ReverseGeocodingResponse;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$ReverseGeocodingResponse;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 689
    invoke-static {}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$ReverseGeocodingResponse;->newBuilder()Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$ReverseGeocodingResponse$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$ReverseGeocodingResponse$Builder;->mergeFrom(Ljava/io/InputStream;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$ReverseGeocodingResponse$Builder;

    # invokes: Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$ReverseGeocodingResponse$Builder;->buildParsed()Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$ReverseGeocodingResponse;
    invoke-static {v0}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$ReverseGeocodingResponse$Builder;->access$1200(Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$ReverseGeocodingResponse$Builder;)Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$ReverseGeocodingResponse;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$ReverseGeocodingResponse;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 695
    invoke-static {}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$ReverseGeocodingResponse;->newBuilder()Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$ReverseGeocodingResponse$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$ReverseGeocodingResponse$Builder;->mergeFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$ReverseGeocodingResponse$Builder;

    # invokes: Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$ReverseGeocodingResponse$Builder;->buildParsed()Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$ReverseGeocodingResponse;
    invoke-static {v0}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$ReverseGeocodingResponse$Builder;->access$1200(Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$ReverseGeocodingResponse$Builder;)Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$ReverseGeocodingResponse;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$ReverseGeocodingResponse;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 678
    invoke-static {}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$ReverseGeocodingResponse;->newBuilder()Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$ReverseGeocodingResponse$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$ReverseGeocodingResponse$Builder;->mergeFrom([B)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$ReverseGeocodingResponse$Builder;

    # invokes: Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$ReverseGeocodingResponse$Builder;->buildParsed()Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$ReverseGeocodingResponse;
    invoke-static {v0}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$ReverseGeocodingResponse$Builder;->access$1200(Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$ReverseGeocodingResponse$Builder;)Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$ReverseGeocodingResponse;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$ReverseGeocodingResponse;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 684
    invoke-static {}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$ReverseGeocodingResponse;->newBuilder()Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$ReverseGeocodingResponse$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$ReverseGeocodingResponse$Builder;->mergeFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$ReverseGeocodingResponse$Builder;

    # invokes: Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$ReverseGeocodingResponse$Builder;->buildParsed()Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$ReverseGeocodingResponse;
    invoke-static {v0}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$ReverseGeocodingResponse$Builder;->access$1200(Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$ReverseGeocodingResponse$Builder;)Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$ReverseGeocodingResponse;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 566
    invoke-virtual {p0}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$ReverseGeocodingResponse;->getDefaultInstanceForType()Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$ReverseGeocodingResponse;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 566
    invoke-virtual {p0}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$ReverseGeocodingResponse;->getDefaultInstanceForType()Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$ReverseGeocodingResponse;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$ReverseGeocodingResponse;
    .locals 1

    .prologue
    .line 581
    sget-object v0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$ReverseGeocodingResponse;->defaultInstance:Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$ReverseGeocodingResponse;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 644
    iget v1, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$ReverseGeocodingResponse;->memoizedSerializedSize:I

    .line 645
    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    move v0, v1

    .line 654
    :goto_0
    return v0

    :cond_0
    move v1, v0

    move v2, v0

    .line 648
    :goto_1
    iget-object v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$ReverseGeocodingResponse;->spatial_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    .line 649
    const/4 v3, 0x1

    iget-object v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$ReverseGeocodingResponse;->spatial_:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/MessageLite;

    invoke-static {v3, v0}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v0

    add-int/2addr v2, v0

    .line 648
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    .line 652
    :cond_1
    invoke-virtual {p0}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$ReverseGeocodingResponse;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/UnknownFieldSet;->getSerializedSize()I

    move-result v0

    add-int/2addr v0, v2

    .line 653
    iput v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$ReverseGeocodingResponse;->memoizedSerializedSize:I

    goto :goto_0
.end method

.method public getSpatial(I)Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Spatial;
    .locals 1

    .prologue
    .line 608
    iget-object v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$ReverseGeocodingResponse;->spatial_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Spatial;

    return-object v0
.end method

.method public getSpatialCount()I
    .locals 1

    .prologue
    .line 605
    iget-object v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$ReverseGeocodingResponse;->spatial_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getSpatialList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Spatial;",
            ">;"
        }
    .end annotation

    .prologue
    .line 598
    iget-object v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$ReverseGeocodingResponse;->spatial_:Ljava/util/List;

    return-object v0
.end method

.method public getSpatialOrBuilder(I)Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$SpatialOrBuilder;
    .locals 1

    .prologue
    .line 612
    iget-object v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$ReverseGeocodingResponse;->spatial_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$SpatialOrBuilder;

    return-object v0
.end method

.method public getSpatialOrBuilderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<+",
            "Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$SpatialOrBuilder;",
            ">;"
        }
    .end annotation

    .prologue
    .line 602
    iget-object v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$ReverseGeocodingResponse;->spatial_:Ljava/util/List;

    return-object v0
.end method

.method protected internalGetFieldAccessorTable()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 1

    .prologue
    .line 591
    # getter for: Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf;->internal_static_ReverseGeocodingResponse_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    invoke-static {}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf;->access$1100()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 620
    iget-byte v2, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$ReverseGeocodingResponse;->memoizedIsInitialized:B

    .line 621
    const/4 v3, -0x1

    if-eq v2, v3, :cond_1

    if-ne v2, v0, :cond_0

    .line 630
    :goto_0
    return v0

    :cond_0
    move v0, v1

    .line 621
    goto :goto_0

    :cond_1
    move v2, v1

    .line 623
    :goto_1
    invoke-virtual {p0}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$ReverseGeocodingResponse;->getSpatialCount()I

    move-result v3

    if-ge v2, v3, :cond_3

    .line 624
    invoke-virtual {p0, v2}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$ReverseGeocodingResponse;->getSpatial(I)Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Spatial;

    move-result-object v3

    invoke-virtual {v3}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Spatial;->isInitialized()Z

    move-result v3

    if-nez v3, :cond_2

    .line 625
    iput-byte v1, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$ReverseGeocodingResponse;->memoizedIsInitialized:B

    move v0, v1

    .line 626
    goto :goto_0

    .line 623
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 629
    :cond_3
    iput-byte v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$ReverseGeocodingResponse;->memoizedIsInitialized:B

    goto :goto_0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 566
    invoke-virtual {p0}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$ReverseGeocodingResponse;->newBuilderForType()Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$ReverseGeocodingResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic newBuilderForType(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 566
    invoke-virtual {p0, p1}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$ReverseGeocodingResponse;->newBuilderForType(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$ReverseGeocodingResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 566
    invoke-virtual {p0}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$ReverseGeocodingResponse;->newBuilderForType()Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$ReverseGeocodingResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$ReverseGeocodingResponse$Builder;
    .locals 1

    .prologue
    .line 732
    invoke-static {}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$ReverseGeocodingResponse;->newBuilder()Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$ReverseGeocodingResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected newBuilderForType(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$ReverseGeocodingResponse$Builder;
    .locals 2

    .prologue
    .line 741
    new-instance v0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$ReverseGeocodingResponse$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$ReverseGeocodingResponse$Builder;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;Lcom/mapabc/mapapi/core/z;)V

    .line 742
    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 566
    invoke-virtual {p0}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$ReverseGeocodingResponse;->toBuilder()Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$ReverseGeocodingResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 566
    invoke-virtual {p0}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$ReverseGeocodingResponse;->toBuilder()Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$ReverseGeocodingResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$ReverseGeocodingResponse$Builder;
    .locals 1

    .prologue
    .line 736
    invoke-static {p0}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$ReverseGeocodingResponse;->newBuilder(Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$ReverseGeocodingResponse;)Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$ReverseGeocodingResponse$Builder;

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
    .line 661
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
    .line 635
    invoke-virtual {p0}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$ReverseGeocodingResponse;->getSerializedSize()I

    .line 636
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$ReverseGeocodingResponse;->spatial_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 637
    const/4 v2, 0x1

    iget-object v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$ReverseGeocodingResponse;->spatial_:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/MessageLite;

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 636
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 639
    :cond_0
    invoke-virtual {p0}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$ReverseGeocodingResponse;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/UnknownFieldSet;->writeTo(Lcom/google/protobuf/CodedOutputStream;)V

    .line 640
    return-void
.end method
