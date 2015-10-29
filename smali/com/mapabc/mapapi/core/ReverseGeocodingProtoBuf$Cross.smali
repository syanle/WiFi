.class public final Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Cross;
.super Lcom/google/protobuf/GeneratedMessage;
.source "ReverseGeocodingProtoBuf.java"

# interfaces
.implements Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$CrossOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Cross"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Cross$Builder;
    }
.end annotation


# static fields
.field public static final NAME_FIELD_NUMBER:I = 0x1

.field public static final X_FIELD_NUMBER:I = 0x2

.field public static final Y_FIELD_NUMBER:I = 0x3

.field private static final defaultInstance:Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Cross;

.field private static final serialVersionUID:J


# instance fields
.field private bitField0_:I

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I

.field private name_:Ljava/lang/Object;

.field private x_:Ljava/lang/Object;

.field private y_:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 7362
    new-instance v0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Cross;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Cross;-><init>(Z)V

    sput-object v0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Cross;->defaultInstance:Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Cross;

    .line 7363
    sget-object v0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Cross;->defaultInstance:Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Cross;

    invoke-direct {v0}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Cross;->initFields()V

    .line 7364
    return-void
.end method

.method private constructor <init>(Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Cross$Builder;)V
    .locals 1

    .prologue
    const/4 v0, -0x1

    .line 6802
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessage;-><init>(Lcom/google/protobuf/GeneratedMessage$Builder;)V

    .line 6927
    iput-byte v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Cross;->memoizedIsInitialized:B

    .line 6963
    iput v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Cross;->memoizedSerializedSize:I

    .line 6803
    return-void
.end method

.method synthetic constructor <init>(Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Cross$Builder;Lcom/mapabc/mapapi/core/z;)V
    .locals 0

    .prologue
    .line 6797
    invoke-direct {p0, p1}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Cross;-><init>(Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Cross$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 1

    .prologue
    const/4 v0, -0x1

    .line 6804
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage;-><init>()V

    .line 6927
    iput-byte v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Cross;->memoizedIsInitialized:B

    .line 6963
    iput v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Cross;->memoizedSerializedSize:I

    .line 6804
    return-void
.end method

.method static synthetic access$11400()Z
    .locals 1

    .prologue
    .line 6797
    sget-boolean v0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Cross;->alwaysUseFieldBuilders:Z

    return v0
.end method

.method static synthetic access$11602(Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Cross;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .prologue
    .line 6797
    iput-object p1, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Cross;->name_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$11702(Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Cross;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .prologue
    .line 6797
    iput-object p1, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Cross;->x_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$11802(Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Cross;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .prologue
    .line 6797
    iput-object p1, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Cross;->y_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$11902(Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Cross;I)I
    .locals 0

    .prologue
    .line 6797
    iput p1, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Cross;->bitField0_:I

    return p1
.end method

.method public static getDefaultInstance()Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Cross;
    .locals 1

    .prologue
    .line 6808
    sget-object v0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Cross;->defaultInstance:Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Cross;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 6817
    # getter for: Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf;->internal_static_Cross_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;
    invoke-static {}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf;->access$10900()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method private getNameBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .prologue
    .line 6847
    iget-object v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Cross;->name_:Ljava/lang/Object;

    .line 6848
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 6849
    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 6851
    iput-object v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Cross;->name_:Ljava/lang/Object;

    .line 6854
    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    goto :goto_0
.end method

.method private getXBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .prologue
    .line 6879
    iget-object v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Cross;->x_:Ljava/lang/Object;

    .line 6880
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 6881
    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 6883
    iput-object v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Cross;->x_:Ljava/lang/Object;

    .line 6886
    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    goto :goto_0
.end method

.method private getYBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .prologue
    .line 6911
    iget-object v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Cross;->y_:Ljava/lang/Object;

    .line 6912
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 6913
    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 6915
    iput-object v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Cross;->y_:Ljava/lang/Object;

    .line 6918
    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    goto :goto_0
.end method

.method private initFields()V
    .locals 1

    .prologue
    .line 6923
    const-string v0, ""

    iput-object v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Cross;->name_:Ljava/lang/Object;

    .line 6924
    const-string v0, ""

    iput-object v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Cross;->x_:Ljava/lang/Object;

    .line 6925
    const-string v0, ""

    iput-object v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Cross;->y_:Ljava/lang/Object;

    .line 6926
    return-void
.end method

.method public static newBuilder()Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Cross$Builder;
    .locals 1

    .prologue
    .line 7060
    # invokes: Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Cross$Builder;->create()Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Cross$Builder;
    invoke-static {}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Cross$Builder;->access$11200()Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Cross$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Cross;)Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Cross$Builder;
    .locals 1

    .prologue
    .line 7063
    invoke-static {}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Cross;->newBuilder()Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Cross$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Cross$Builder;->mergeFrom(Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Cross;)Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Cross$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Cross;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 7029
    invoke-static {}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Cross;->newBuilder()Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Cross$Builder;

    move-result-object v0

    .line 7030
    invoke-virtual {v0, p0}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Cross$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 7031
    # invokes: Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Cross$Builder;->buildParsed()Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Cross;
    invoke-static {v0}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Cross$Builder;->access$11100(Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Cross$Builder;)Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Cross;

    move-result-object v0

    .line 7033
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Cross;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 7040
    invoke-static {}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Cross;->newBuilder()Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Cross$Builder;

    move-result-object v0

    .line 7041
    invoke-virtual {v0, p0, p1}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Cross$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 7042
    # invokes: Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Cross$Builder;->buildParsed()Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Cross;
    invoke-static {v0}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Cross$Builder;->access$11100(Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Cross$Builder;)Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Cross;

    move-result-object v0

    .line 7044
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Cross;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 6996
    invoke-static {}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Cross;->newBuilder()Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Cross$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Cross$Builder;->mergeFrom(Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Cross$Builder;

    # invokes: Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Cross$Builder;->buildParsed()Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Cross;
    invoke-static {v0}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Cross$Builder;->access$11100(Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Cross$Builder;)Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Cross;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Cross;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 7002
    invoke-static {}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Cross;->newBuilder()Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Cross$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Cross$Builder;->mergeFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Cross$Builder;

    # invokes: Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Cross$Builder;->buildParsed()Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Cross;
    invoke-static {v0}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Cross$Builder;->access$11100(Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Cross$Builder;)Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Cross;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Cross;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 7050
    invoke-static {}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Cross;->newBuilder()Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Cross$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Cross$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Cross$Builder;

    # invokes: Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Cross$Builder;->buildParsed()Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Cross;
    invoke-static {v0}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Cross$Builder;->access$11100(Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Cross$Builder;)Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Cross;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Cross;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 7056
    invoke-static {}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Cross;->newBuilder()Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Cross$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Cross$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Cross$Builder;

    move-result-object v0

    # invokes: Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Cross$Builder;->buildParsed()Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Cross;
    invoke-static {v0}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Cross$Builder;->access$11100(Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Cross$Builder;)Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Cross;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Cross;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 7018
    invoke-static {}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Cross;->newBuilder()Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Cross$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Cross$Builder;->mergeFrom(Ljava/io/InputStream;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Cross$Builder;

    # invokes: Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Cross$Builder;->buildParsed()Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Cross;
    invoke-static {v0}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Cross$Builder;->access$11100(Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Cross$Builder;)Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Cross;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Cross;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 7024
    invoke-static {}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Cross;->newBuilder()Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Cross$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Cross$Builder;->mergeFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Cross$Builder;

    # invokes: Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Cross$Builder;->buildParsed()Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Cross;
    invoke-static {v0}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Cross$Builder;->access$11100(Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Cross$Builder;)Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Cross;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Cross;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 7007
    invoke-static {}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Cross;->newBuilder()Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Cross$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Cross$Builder;->mergeFrom([B)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Cross$Builder;

    # invokes: Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Cross$Builder;->buildParsed()Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Cross;
    invoke-static {v0}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Cross$Builder;->access$11100(Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Cross$Builder;)Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Cross;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Cross;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 7013
    invoke-static {}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Cross;->newBuilder()Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Cross$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Cross$Builder;->mergeFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Cross$Builder;

    # invokes: Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Cross$Builder;->buildParsed()Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Cross;
    invoke-static {v0}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Cross$Builder;->access$11100(Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Cross$Builder;)Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Cross;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 6797
    invoke-virtual {p0}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Cross;->getDefaultInstanceForType()Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Cross;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 6797
    invoke-virtual {p0}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Cross;->getDefaultInstanceForType()Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Cross;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Cross;
    .locals 1

    .prologue
    .line 6812
    sget-object v0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Cross;->defaultInstance:Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Cross;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 6833
    iget-object v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Cross;->name_:Ljava/lang/Object;

    .line 6834
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 6835
    check-cast v0, Ljava/lang/String;

    .line 6843
    :goto_0
    return-object v0

    .line 6837
    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 6839
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 6840
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 6841
    iput-object v1, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Cross;->name_:Ljava/lang/Object;

    :cond_1
    move-object v0, v1

    .line 6843
    goto :goto_0
.end method

.method public getSerializedSize()I
    .locals 4

    .prologue
    const/4 v3, 0x2

    const/4 v2, 0x1

    .line 6965
    iget v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Cross;->memoizedSerializedSize:I

    .line 6966
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 6983
    :goto_0
    return v0

    .line 6968
    :cond_0
    const/4 v0, 0x0

    .line 6969
    iget v1, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Cross;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v2, :cond_1

    .line 6970
    invoke-direct {p0}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Cross;->getNameBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v1

    add-int/2addr v0, v1

    .line 6973
    :cond_1
    iget v1, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Cross;->bitField0_:I

    and-int/lit8 v1, v1, 0x2

    if-ne v1, v3, :cond_2

    .line 6974
    invoke-direct {p0}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Cross;->getXBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v1

    add-int/2addr v0, v1

    .line 6977
    :cond_2
    iget v1, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Cross;->bitField0_:I

    and-int/lit8 v1, v1, 0x4

    const/4 v2, 0x4

    if-ne v1, v2, :cond_3

    .line 6978
    const/4 v1, 0x3

    invoke-direct {p0}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Cross;->getYBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v1

    add-int/2addr v0, v1

    .line 6981
    :cond_3
    invoke-virtual {p0}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Cross;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protobuf/UnknownFieldSet;->getSerializedSize()I

    move-result v1

    add-int/2addr v0, v1

    .line 6982
    iput v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Cross;->memoizedSerializedSize:I

    goto :goto_0
.end method

.method public getX()Ljava/lang/String;
    .locals 2

    .prologue
    .line 6865
    iget-object v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Cross;->x_:Ljava/lang/Object;

    .line 6866
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 6867
    check-cast v0, Ljava/lang/String;

    .line 6875
    :goto_0
    return-object v0

    .line 6869
    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 6871
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 6872
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 6873
    iput-object v1, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Cross;->x_:Ljava/lang/Object;

    :cond_1
    move-object v0, v1

    .line 6875
    goto :goto_0
.end method

.method public getY()Ljava/lang/String;
    .locals 2

    .prologue
    .line 6897
    iget-object v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Cross;->y_:Ljava/lang/Object;

    .line 6898
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 6899
    check-cast v0, Ljava/lang/String;

    .line 6907
    :goto_0
    return-object v0

    .line 6901
    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 6903
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 6904
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 6905
    iput-object v1, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Cross;->y_:Ljava/lang/Object;

    :cond_1
    move-object v0, v1

    .line 6907
    goto :goto_0
.end method

.method public hasName()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 6830
    iget v1, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Cross;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasX()Z
    .locals 2

    .prologue
    .line 6862
    iget v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Cross;->bitField0_:I

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

.method public hasY()Z
    .locals 2

    .prologue
    .line 6894
    iget v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Cross;->bitField0_:I

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
    .line 6822
    # getter for: Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf;->internal_static_Cross_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    invoke-static {}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf;->access$11000()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 6929
    iget-byte v2, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Cross;->memoizedIsInitialized:B

    .line 6930
    const/4 v3, -0x1

    if-eq v2, v3, :cond_1

    if-ne v2, v0, :cond_0

    :goto_0
    move v1, v0

    .line 6945
    :goto_1
    return v1

    :cond_0
    move v0, v1

    .line 6930
    goto :goto_0

    .line 6932
    :cond_1
    invoke-virtual {p0}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Cross;->hasName()Z

    move-result v2

    if-nez v2, :cond_2

    .line 6933
    iput-byte v1, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Cross;->memoizedIsInitialized:B

    goto :goto_1

    .line 6936
    :cond_2
    invoke-virtual {p0}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Cross;->hasX()Z

    move-result v2

    if-nez v2, :cond_3

    .line 6937
    iput-byte v1, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Cross;->memoizedIsInitialized:B

    goto :goto_1

    .line 6940
    :cond_3
    invoke-virtual {p0}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Cross;->hasY()Z

    move-result v2

    if-nez v2, :cond_4

    .line 6941
    iput-byte v1, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Cross;->memoizedIsInitialized:B

    goto :goto_1

    .line 6944
    :cond_4
    iput-byte v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Cross;->memoizedIsInitialized:B

    move v1, v0

    .line 6945
    goto :goto_1
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 6797
    invoke-virtual {p0}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Cross;->newBuilderForType()Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Cross$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic newBuilderForType(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 6797
    invoke-virtual {p0, p1}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Cross;->newBuilderForType(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Cross$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 6797
    invoke-virtual {p0}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Cross;->newBuilderForType()Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Cross$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Cross$Builder;
    .locals 1

    .prologue
    .line 7061
    invoke-static {}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Cross;->newBuilder()Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Cross$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected newBuilderForType(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Cross$Builder;
    .locals 2

    .prologue
    .line 7070
    new-instance v0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Cross$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Cross$Builder;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;Lcom/mapabc/mapapi/core/z;)V

    .line 7071
    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 6797
    invoke-virtual {p0}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Cross;->toBuilder()Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Cross$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 6797
    invoke-virtual {p0}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Cross;->toBuilder()Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Cross$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Cross$Builder;
    .locals 1

    .prologue
    .line 7065
    invoke-static {p0}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Cross;->newBuilder(Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Cross;)Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Cross$Builder;

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
    .line 6990
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

    .line 6950
    invoke-virtual {p0}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Cross;->getSerializedSize()I

    .line 6951
    iget v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Cross;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_0

    .line 6952
    invoke-direct {p0}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Cross;->getNameBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 6954
    :cond_0
    iget v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Cross;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-ne v0, v2, :cond_1

    .line 6955
    invoke-direct {p0}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Cross;->getXBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 6957
    :cond_1
    iget v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Cross;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    const/4 v1, 0x4

    if-ne v0, v1, :cond_2

    .line 6958
    const/4 v0, 0x3

    invoke-direct {p0}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Cross;->getYBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 6960
    :cond_2
    invoke-virtual {p0}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Cross;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/UnknownFieldSet;->writeTo(Lcom/google/protobuf/CodedOutputStream;)V

    .line 6961
    return-void
.end method
