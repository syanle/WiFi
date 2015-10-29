.class public final Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCResponse;
.super Lcom/google/protobuf/GeneratedMessage;
.source "RGCProtoBuf.java"

# interfaces
.implements Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCResponseOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mapabc/mapapi/core/RGCProtoBuf;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "RGCResponse"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCResponse$Builder;
    }
.end annotation


# static fields
.field public static final RGCITEM_FIELD_NUMBER:I = 0x1

.field private static final defaultInstance:Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCResponse;

.field private static final serialVersionUID:J


# instance fields
.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I

.field private rgcItem_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCItem;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 1947
    new-instance v0, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCResponse;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCResponse;-><init>(Z)V

    sput-object v0, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCResponse;->defaultInstance:Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCResponse;

    .line 1948
    sget-object v0, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCResponse;->defaultInstance:Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCResponse;

    invoke-direct {v0}, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCResponse;->initFields()V

    .line 1949
    return-void
.end method

.method private constructor <init>(Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCResponse$Builder;)V
    .locals 1

    .prologue
    const/4 v0, -0x1

    .line 1409
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessage;-><init>(Lcom/google/protobuf/GeneratedMessage$Builder;)V

    .line 1456
    iput-byte v0, p0, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCResponse;->memoizedIsInitialized:B

    .line 1480
    iput v0, p0, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCResponse;->memoizedSerializedSize:I

    .line 1410
    return-void
.end method

.method synthetic constructor <init>(Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCResponse$Builder;Lcom/mapabc/mapapi/core/v;)V
    .locals 0

    .prologue
    .line 1404
    invoke-direct {p0, p1}, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCResponse;-><init>(Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCResponse$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 1

    .prologue
    const/4 v0, -0x1

    .line 1411
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage;-><init>()V

    .line 1456
    iput-byte v0, p0, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCResponse;->memoizedIsInitialized:B

    .line 1480
    iput v0, p0, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCResponse;->memoizedSerializedSize:I

    .line 1411
    return-void
.end method

.method static synthetic access$2400()Z
    .locals 1

    .prologue
    .line 1404
    sget-boolean v0, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCResponse;->alwaysUseFieldBuilders:Z

    return v0
.end method

.method static synthetic access$2600(Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCResponse;)Ljava/util/List;
    .locals 1

    .prologue
    .line 1404
    iget-object v0, p0, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCResponse;->rgcItem_:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$2602(Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCResponse;Ljava/util/List;)Ljava/util/List;
    .locals 0

    .prologue
    .line 1404
    iput-object p1, p0, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCResponse;->rgcItem_:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$2700()Z
    .locals 1

    .prologue
    .line 1404
    sget-boolean v0, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCResponse;->alwaysUseFieldBuilders:Z

    return v0
.end method

.method public static getDefaultInstance()Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCResponse;
    .locals 1

    .prologue
    .line 1415
    sget-object v0, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCResponse;->defaultInstance:Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCResponse;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 1424
    # getter for: Lcom/mapabc/mapapi/core/RGCProtoBuf;->internal_static_RGCResponse_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;
    invoke-static {}, Lcom/mapabc/mapapi/core/RGCProtoBuf;->access$1900()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method private initFields()V
    .locals 1

    .prologue
    .line 1454
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCResponse;->rgcItem_:Ljava/util/List;

    .line 1455
    return-void
.end method

.method public static newBuilder()Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCResponse$Builder;
    .locals 1

    .prologue
    .line 1569
    # invokes: Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCResponse$Builder;->create()Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCResponse$Builder;
    invoke-static {}, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCResponse$Builder;->access$2200()Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCResponse;)Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCResponse$Builder;
    .locals 1

    .prologue
    .line 1572
    invoke-static {}, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCResponse;->newBuilder()Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCResponse$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCResponse$Builder;->mergeFrom(Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCResponse;)Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCResponse;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1538
    invoke-static {}, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCResponse;->newBuilder()Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCResponse$Builder;

    move-result-object v0

    .line 1539
    invoke-virtual {v0, p0}, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCResponse$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1540
    # invokes: Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCResponse$Builder;->buildParsed()Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCResponse;
    invoke-static {v0}, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCResponse$Builder;->access$2100(Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCResponse$Builder;)Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCResponse;

    move-result-object v0

    .line 1542
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCResponse;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1549
    invoke-static {}, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCResponse;->newBuilder()Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCResponse$Builder;

    move-result-object v0

    .line 1550
    invoke-virtual {v0, p0, p1}, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCResponse$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1551
    # invokes: Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCResponse$Builder;->buildParsed()Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCResponse;
    invoke-static {v0}, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCResponse$Builder;->access$2100(Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCResponse$Builder;)Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCResponse;

    move-result-object v0

    .line 1553
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCResponse;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 1505
    invoke-static {}, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCResponse;->newBuilder()Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCResponse$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCResponse$Builder;->mergeFrom(Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCResponse$Builder;

    # invokes: Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCResponse$Builder;->buildParsed()Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCResponse;
    invoke-static {v0}, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCResponse$Builder;->access$2100(Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCResponse$Builder;)Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCResponse;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCResponse;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 1511
    invoke-static {}, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCResponse;->newBuilder()Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCResponse$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCResponse$Builder;->mergeFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCResponse$Builder;

    # invokes: Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCResponse$Builder;->buildParsed()Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCResponse;
    invoke-static {v0}, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCResponse$Builder;->access$2100(Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCResponse$Builder;)Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCResponse;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCResponse;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1559
    invoke-static {}, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCResponse;->newBuilder()Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCResponse$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCResponse$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCResponse$Builder;

    # invokes: Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCResponse$Builder;->buildParsed()Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCResponse;
    invoke-static {v0}, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCResponse$Builder;->access$2100(Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCResponse$Builder;)Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCResponse;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCResponse;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1565
    invoke-static {}, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCResponse;->newBuilder()Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCResponse$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCResponse$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCResponse$Builder;

    move-result-object v0

    # invokes: Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCResponse$Builder;->buildParsed()Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCResponse;
    invoke-static {v0}, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCResponse$Builder;->access$2100(Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCResponse$Builder;)Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCResponse;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCResponse;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1527
    invoke-static {}, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCResponse;->newBuilder()Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCResponse$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCResponse$Builder;->mergeFrom(Ljava/io/InputStream;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCResponse$Builder;

    # invokes: Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCResponse$Builder;->buildParsed()Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCResponse;
    invoke-static {v0}, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCResponse$Builder;->access$2100(Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCResponse$Builder;)Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCResponse;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCResponse;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1533
    invoke-static {}, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCResponse;->newBuilder()Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCResponse$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCResponse$Builder;->mergeFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCResponse$Builder;

    # invokes: Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCResponse$Builder;->buildParsed()Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCResponse;
    invoke-static {v0}, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCResponse$Builder;->access$2100(Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCResponse$Builder;)Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCResponse;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCResponse;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 1516
    invoke-static {}, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCResponse;->newBuilder()Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCResponse$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCResponse$Builder;->mergeFrom([B)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCResponse$Builder;

    # invokes: Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCResponse$Builder;->buildParsed()Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCResponse;
    invoke-static {v0}, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCResponse$Builder;->access$2100(Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCResponse$Builder;)Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCResponse;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCResponse;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 1522
    invoke-static {}, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCResponse;->newBuilder()Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCResponse$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCResponse$Builder;->mergeFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCResponse$Builder;

    # invokes: Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCResponse$Builder;->buildParsed()Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCResponse;
    invoke-static {v0}, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCResponse$Builder;->access$2100(Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCResponse$Builder;)Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCResponse;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 1404
    invoke-virtual {p0}, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCResponse;->getDefaultInstanceForType()Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCResponse;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 1404
    invoke-virtual {p0}, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCResponse;->getDefaultInstanceForType()Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCResponse;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCResponse;
    .locals 1

    .prologue
    .line 1419
    sget-object v0, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCResponse;->defaultInstance:Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCResponse;

    return-object v0
.end method

.method public getRgcItem(I)Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCItem;
    .locals 1

    .prologue
    .line 1446
    iget-object v0, p0, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCResponse;->rgcItem_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCItem;

    return-object v0
.end method

.method public getRgcItemCount()I
    .locals 1

    .prologue
    .line 1443
    iget-object v0, p0, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCResponse;->rgcItem_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getRgcItemList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1436
    iget-object v0, p0, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCResponse;->rgcItem_:Ljava/util/List;

    return-object v0
.end method

.method public getRgcItemOrBuilder(I)Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCItemOrBuilder;
    .locals 1

    .prologue
    .line 1450
    iget-object v0, p0, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCResponse;->rgcItem_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCItemOrBuilder;

    return-object v0
.end method

.method public getRgcItemOrBuilderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<+",
            "Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCItemOrBuilder;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1440
    iget-object v0, p0, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCResponse;->rgcItem_:Ljava/util/List;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 1482
    iget v1, p0, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCResponse;->memoizedSerializedSize:I

    .line 1483
    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    move v0, v1

    .line 1492
    :goto_0
    return v0

    :cond_0
    move v1, v0

    move v2, v0

    .line 1486
    :goto_1
    iget-object v0, p0, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCResponse;->rgcItem_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    .line 1487
    const/4 v3, 0x1

    iget-object v0, p0, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCResponse;->rgcItem_:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/MessageLite;

    invoke-static {v3, v0}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v0

    add-int/2addr v2, v0

    .line 1486
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    .line 1490
    :cond_1
    invoke-virtual {p0}, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCResponse;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/UnknownFieldSet;->getSerializedSize()I

    move-result v0

    add-int/2addr v0, v2

    .line 1491
    iput v0, p0, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCResponse;->memoizedSerializedSize:I

    goto :goto_0
.end method

.method protected internalGetFieldAccessorTable()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 1

    .prologue
    .line 1429
    # getter for: Lcom/mapabc/mapapi/core/RGCProtoBuf;->internal_static_RGCResponse_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    invoke-static {}, Lcom/mapabc/mapapi/core/RGCProtoBuf;->access$2000()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1458
    iget-byte v2, p0, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCResponse;->memoizedIsInitialized:B

    .line 1459
    const/4 v3, -0x1

    if-eq v2, v3, :cond_1

    if-ne v2, v0, :cond_0

    .line 1468
    :goto_0
    return v0

    :cond_0
    move v0, v1

    .line 1459
    goto :goto_0

    :cond_1
    move v2, v1

    .line 1461
    :goto_1
    invoke-virtual {p0}, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCResponse;->getRgcItemCount()I

    move-result v3

    if-ge v2, v3, :cond_3

    .line 1462
    invoke-virtual {p0, v2}, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCResponse;->getRgcItem(I)Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCItem;

    move-result-object v3

    invoke-virtual {v3}, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCItem;->isInitialized()Z

    move-result v3

    if-nez v3, :cond_2

    .line 1463
    iput-byte v1, p0, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCResponse;->memoizedIsInitialized:B

    move v0, v1

    .line 1464
    goto :goto_0

    .line 1461
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1467
    :cond_3
    iput-byte v0, p0, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCResponse;->memoizedIsInitialized:B

    goto :goto_0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 1404
    invoke-virtual {p0}, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCResponse;->newBuilderForType()Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic newBuilderForType(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 1404
    invoke-virtual {p0, p1}, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCResponse;->newBuilderForType(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 1404
    invoke-virtual {p0}, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCResponse;->newBuilderForType()Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCResponse$Builder;
    .locals 1

    .prologue
    .line 1570
    invoke-static {}, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCResponse;->newBuilder()Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected newBuilderForType(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCResponse$Builder;
    .locals 2

    .prologue
    .line 1579
    new-instance v0, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCResponse$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCResponse$Builder;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;Lcom/mapabc/mapapi/core/v;)V

    .line 1580
    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 1404
    invoke-virtual {p0}, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCResponse;->toBuilder()Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 1404
    invoke-virtual {p0}, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCResponse;->toBuilder()Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCResponse$Builder;
    .locals 1

    .prologue
    .line 1574
    invoke-static {p0}, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCResponse;->newBuilder(Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCResponse;)Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCResponse$Builder;

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
    .line 1499
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
    .line 1473
    invoke-virtual {p0}, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCResponse;->getSerializedSize()I

    .line 1474
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCResponse;->rgcItem_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 1475
    const/4 v2, 0x1

    iget-object v0, p0, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCResponse;->rgcItem_:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/MessageLite;

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 1474
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 1477
    :cond_0
    invoke-virtual {p0}, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCResponse;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/UnknownFieldSet;->writeTo(Lcom/google/protobuf/CodedOutputStream;)V

    .line 1478
    return-void
.end method
