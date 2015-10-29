.class public final Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$POIS;
.super Lcom/google/protobuf/GeneratedMessage;
.source "ReverseGeocodingProtoBuf.java"

# interfaces
.implements Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$POISOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "POIS"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$POIS$Builder;
    }
.end annotation


# static fields
.field public static final POI_FIELD_NUMBER:I = 0x1

.field private static final defaultInstance:Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$POIS;

.field private static final serialVersionUID:J


# instance fields
.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I

.field private poi_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/mapabc/mapapi/core/CommonProtoBuf$POI;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 6212
    new-instance v0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$POIS;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$POIS;-><init>(Z)V

    sput-object v0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$POIS;->defaultInstance:Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$POIS;

    .line 6213
    sget-object v0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$POIS;->defaultInstance:Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$POIS;

    invoke-direct {v0}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$POIS;->initFields()V

    .line 6214
    return-void
.end method

.method private constructor <init>(Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$POIS$Builder;)V
    .locals 1

    .prologue
    const/4 v0, -0x1

    .line 5674
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessage;-><init>(Lcom/google/protobuf/GeneratedMessage$Builder;)V

    .line 5721
    iput-byte v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$POIS;->memoizedIsInitialized:B

    .line 5745
    iput v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$POIS;->memoizedSerializedSize:I

    .line 5675
    return-void
.end method

.method synthetic constructor <init>(Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$POIS$Builder;Lcom/mapabc/mapapi/core/z;)V
    .locals 0

    .prologue
    .line 5669
    invoke-direct {p0, p1}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$POIS;-><init>(Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$POIS$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 1

    .prologue
    const/4 v0, -0x1

    .line 5676
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage;-><init>()V

    .line 5721
    iput-byte v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$POIS;->memoizedIsInitialized:B

    .line 5745
    iput v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$POIS;->memoizedSerializedSize:I

    .line 5676
    return-void
.end method

.method static synthetic access$9600()Z
    .locals 1

    .prologue
    .line 5669
    sget-boolean v0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$POIS;->alwaysUseFieldBuilders:Z

    return v0
.end method

.method static synthetic access$9800(Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$POIS;)Ljava/util/List;
    .locals 1

    .prologue
    .line 5669
    iget-object v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$POIS;->poi_:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$9802(Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$POIS;Ljava/util/List;)Ljava/util/List;
    .locals 0

    .prologue
    .line 5669
    iput-object p1, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$POIS;->poi_:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$9900()Z
    .locals 1

    .prologue
    .line 5669
    sget-boolean v0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$POIS;->alwaysUseFieldBuilders:Z

    return v0
.end method

.method public static getDefaultInstance()Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$POIS;
    .locals 1

    .prologue
    .line 5680
    sget-object v0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$POIS;->defaultInstance:Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$POIS;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 5689
    # getter for: Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf;->internal_static_POIS_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;
    invoke-static {}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf;->access$9100()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method private initFields()V
    .locals 1

    .prologue
    .line 5719
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$POIS;->poi_:Ljava/util/List;

    .line 5720
    return-void
.end method

.method public static newBuilder()Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$POIS$Builder;
    .locals 1

    .prologue
    .line 5834
    # invokes: Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$POIS$Builder;->create()Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$POIS$Builder;
    invoke-static {}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$POIS$Builder;->access$9400()Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$POIS$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$POIS;)Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$POIS$Builder;
    .locals 1

    .prologue
    .line 5837
    invoke-static {}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$POIS;->newBuilder()Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$POIS$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$POIS$Builder;->mergeFrom(Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$POIS;)Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$POIS$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$POIS;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 5803
    invoke-static {}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$POIS;->newBuilder()Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$POIS$Builder;

    move-result-object v0

    .line 5804
    invoke-virtual {v0, p0}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$POIS$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 5805
    # invokes: Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$POIS$Builder;->buildParsed()Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$POIS;
    invoke-static {v0}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$POIS$Builder;->access$9300(Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$POIS$Builder;)Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$POIS;

    move-result-object v0

    .line 5807
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$POIS;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 5814
    invoke-static {}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$POIS;->newBuilder()Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$POIS$Builder;

    move-result-object v0

    .line 5815
    invoke-virtual {v0, p0, p1}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$POIS$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 5816
    # invokes: Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$POIS$Builder;->buildParsed()Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$POIS;
    invoke-static {v0}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$POIS$Builder;->access$9300(Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$POIS$Builder;)Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$POIS;

    move-result-object v0

    .line 5818
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$POIS;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 5770
    invoke-static {}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$POIS;->newBuilder()Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$POIS$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$POIS$Builder;->mergeFrom(Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$POIS$Builder;

    # invokes: Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$POIS$Builder;->buildParsed()Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$POIS;
    invoke-static {v0}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$POIS$Builder;->access$9300(Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$POIS$Builder;)Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$POIS;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$POIS;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 5776
    invoke-static {}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$POIS;->newBuilder()Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$POIS$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$POIS$Builder;->mergeFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$POIS$Builder;

    # invokes: Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$POIS$Builder;->buildParsed()Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$POIS;
    invoke-static {v0}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$POIS$Builder;->access$9300(Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$POIS$Builder;)Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$POIS;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$POIS;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 5824
    invoke-static {}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$POIS;->newBuilder()Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$POIS$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$POIS$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$POIS$Builder;

    # invokes: Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$POIS$Builder;->buildParsed()Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$POIS;
    invoke-static {v0}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$POIS$Builder;->access$9300(Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$POIS$Builder;)Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$POIS;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$POIS;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 5830
    invoke-static {}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$POIS;->newBuilder()Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$POIS$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$POIS$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$POIS$Builder;

    move-result-object v0

    # invokes: Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$POIS$Builder;->buildParsed()Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$POIS;
    invoke-static {v0}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$POIS$Builder;->access$9300(Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$POIS$Builder;)Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$POIS;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$POIS;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 5792
    invoke-static {}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$POIS;->newBuilder()Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$POIS$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$POIS$Builder;->mergeFrom(Ljava/io/InputStream;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$POIS$Builder;

    # invokes: Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$POIS$Builder;->buildParsed()Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$POIS;
    invoke-static {v0}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$POIS$Builder;->access$9300(Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$POIS$Builder;)Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$POIS;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$POIS;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 5798
    invoke-static {}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$POIS;->newBuilder()Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$POIS$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$POIS$Builder;->mergeFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$POIS$Builder;

    # invokes: Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$POIS$Builder;->buildParsed()Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$POIS;
    invoke-static {v0}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$POIS$Builder;->access$9300(Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$POIS$Builder;)Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$POIS;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$POIS;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 5781
    invoke-static {}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$POIS;->newBuilder()Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$POIS$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$POIS$Builder;->mergeFrom([B)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$POIS$Builder;

    # invokes: Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$POIS$Builder;->buildParsed()Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$POIS;
    invoke-static {v0}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$POIS$Builder;->access$9300(Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$POIS$Builder;)Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$POIS;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$POIS;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 5787
    invoke-static {}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$POIS;->newBuilder()Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$POIS$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$POIS$Builder;->mergeFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$POIS$Builder;

    # invokes: Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$POIS$Builder;->buildParsed()Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$POIS;
    invoke-static {v0}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$POIS$Builder;->access$9300(Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$POIS$Builder;)Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$POIS;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 5669
    invoke-virtual {p0}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$POIS;->getDefaultInstanceForType()Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$POIS;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 5669
    invoke-virtual {p0}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$POIS;->getDefaultInstanceForType()Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$POIS;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$POIS;
    .locals 1

    .prologue
    .line 5684
    sget-object v0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$POIS;->defaultInstance:Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$POIS;

    return-object v0
.end method

.method public getPoi(I)Lcom/mapabc/mapapi/core/CommonProtoBuf$POI;
    .locals 1

    .prologue
    .line 5711
    iget-object v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$POIS;->poi_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI;

    return-object v0
.end method

.method public getPoiCount()I
    .locals 1

    .prologue
    .line 5708
    iget-object v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$POIS;->poi_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getPoiList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/mapabc/mapapi/core/CommonProtoBuf$POI;",
            ">;"
        }
    .end annotation

    .prologue
    .line 5701
    iget-object v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$POIS;->poi_:Ljava/util/List;

    return-object v0
.end method

.method public getPoiOrBuilder(I)Lcom/mapabc/mapapi/core/CommonProtoBuf$POIOrBuilder;
    .locals 1

    .prologue
    .line 5715
    iget-object v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$POIS;->poi_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mapabc/mapapi/core/CommonProtoBuf$POIOrBuilder;

    return-object v0
.end method

.method public getPoiOrBuilderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<+",
            "Lcom/mapabc/mapapi/core/CommonProtoBuf$POIOrBuilder;",
            ">;"
        }
    .end annotation

    .prologue
    .line 5705
    iget-object v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$POIS;->poi_:Ljava/util/List;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 5747
    iget v1, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$POIS;->memoizedSerializedSize:I

    .line 5748
    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    move v0, v1

    .line 5757
    :goto_0
    return v0

    :cond_0
    move v1, v0

    move v2, v0

    .line 5751
    :goto_1
    iget-object v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$POIS;->poi_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    .line 5752
    const/4 v3, 0x1

    iget-object v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$POIS;->poi_:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/MessageLite;

    invoke-static {v3, v0}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v0

    add-int/2addr v2, v0

    .line 5751
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    .line 5755
    :cond_1
    invoke-virtual {p0}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$POIS;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/UnknownFieldSet;->getSerializedSize()I

    move-result v0

    add-int/2addr v0, v2

    .line 5756
    iput v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$POIS;->memoizedSerializedSize:I

    goto :goto_0
.end method

.method protected internalGetFieldAccessorTable()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 1

    .prologue
    .line 5694
    # getter for: Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf;->internal_static_POIS_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    invoke-static {}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf;->access$9200()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 5723
    iget-byte v2, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$POIS;->memoizedIsInitialized:B

    .line 5724
    const/4 v3, -0x1

    if-eq v2, v3, :cond_1

    if-ne v2, v0, :cond_0

    .line 5733
    :goto_0
    return v0

    :cond_0
    move v0, v1

    .line 5724
    goto :goto_0

    :cond_1
    move v2, v1

    .line 5726
    :goto_1
    invoke-virtual {p0}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$POIS;->getPoiCount()I

    move-result v3

    if-ge v2, v3, :cond_3

    .line 5727
    invoke-virtual {p0, v2}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$POIS;->getPoi(I)Lcom/mapabc/mapapi/core/CommonProtoBuf$POI;

    move-result-object v3

    invoke-virtual {v3}, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI;->isInitialized()Z

    move-result v3

    if-nez v3, :cond_2

    .line 5728
    iput-byte v1, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$POIS;->memoizedIsInitialized:B

    move v0, v1

    .line 5729
    goto :goto_0

    .line 5726
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 5732
    :cond_3
    iput-byte v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$POIS;->memoizedIsInitialized:B

    goto :goto_0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 5669
    invoke-virtual {p0}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$POIS;->newBuilderForType()Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$POIS$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic newBuilderForType(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 5669
    invoke-virtual {p0, p1}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$POIS;->newBuilderForType(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$POIS$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 5669
    invoke-virtual {p0}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$POIS;->newBuilderForType()Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$POIS$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$POIS$Builder;
    .locals 1

    .prologue
    .line 5835
    invoke-static {}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$POIS;->newBuilder()Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$POIS$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected newBuilderForType(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$POIS$Builder;
    .locals 2

    .prologue
    .line 5844
    new-instance v0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$POIS$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$POIS$Builder;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;Lcom/mapabc/mapapi/core/z;)V

    .line 5845
    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 5669
    invoke-virtual {p0}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$POIS;->toBuilder()Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$POIS$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 5669
    invoke-virtual {p0}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$POIS;->toBuilder()Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$POIS$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$POIS$Builder;
    .locals 1

    .prologue
    .line 5839
    invoke-static {p0}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$POIS;->newBuilder(Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$POIS;)Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$POIS$Builder;

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
    .line 5764
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
    .line 5738
    invoke-virtual {p0}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$POIS;->getSerializedSize()I

    .line 5739
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$POIS;->poi_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 5740
    const/4 v2, 0x1

    iget-object v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$POIS;->poi_:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/MessageLite;

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 5739
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 5742
    :cond_0
    invoke-virtual {p0}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$POIS;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/UnknownFieldSet;->writeTo(Lcom/google/protobuf/CodedOutputStream;)V

    .line 5743
    return-void
.end method
