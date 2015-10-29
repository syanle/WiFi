.class public final Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCItem;
.super Lcom/google/protobuf/GeneratedMessage;
.source "RGCProtoBuf.java"

# interfaces
.implements Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCItemOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mapabc/mapapi/core/RGCProtoBuf;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "RGCItem"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCItem$Builder;
    }
.end annotation


# static fields
.field public static final GRIDCODE_FIELD_NUMBER:I = 0x3

.field public static final X_FIELD_NUMBER:I = 0x1

.field public static final Y_FIELD_NUMBER:I = 0x2

.field private static final defaultInstance:Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCItem;

.field private static final serialVersionUID:J


# instance fields
.field private bitField0_:I

.field private gridcode_:Ljava/lang/Object;

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I

.field private x_:Ljava/lang/Object;

.field private y_:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 2518
    new-instance v0, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCItem;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCItem;-><init>(Z)V

    sput-object v0, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCItem;->defaultInstance:Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCItem;

    .line 2519
    sget-object v0, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCItem;->defaultInstance:Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCItem;

    invoke-direct {v0}, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCItem;->initFields()V

    .line 2520
    return-void
.end method

.method private constructor <init>(Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCItem$Builder;)V
    .locals 1

    .prologue
    const/4 v0, -0x1

    .line 1974
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessage;-><init>(Lcom/google/protobuf/GeneratedMessage$Builder;)V

    .line 2099
    iput-byte v0, p0, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCItem;->memoizedIsInitialized:B

    .line 2127
    iput v0, p0, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCItem;->memoizedSerializedSize:I

    .line 1975
    return-void
.end method

.method synthetic constructor <init>(Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCItem$Builder;Lcom/mapabc/mapapi/core/v;)V
    .locals 0

    .prologue
    .line 1969
    invoke-direct {p0, p1}, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCItem;-><init>(Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCItem$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 1

    .prologue
    const/4 v0, -0x1

    .line 1976
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage;-><init>()V

    .line 2099
    iput-byte v0, p0, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCItem;->memoizedIsInitialized:B

    .line 2127
    iput v0, p0, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCItem;->memoizedSerializedSize:I

    .line 1976
    return-void
.end method

.method static synthetic access$3300()Z
    .locals 1

    .prologue
    .line 1969
    sget-boolean v0, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCItem;->alwaysUseFieldBuilders:Z

    return v0
.end method

.method static synthetic access$3502(Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCItem;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .prologue
    .line 1969
    iput-object p1, p0, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCItem;->x_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$3602(Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCItem;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .prologue
    .line 1969
    iput-object p1, p0, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCItem;->y_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$3702(Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCItem;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .prologue
    .line 1969
    iput-object p1, p0, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCItem;->gridcode_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$3802(Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCItem;I)I
    .locals 0

    .prologue
    .line 1969
    iput p1, p0, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCItem;->bitField0_:I

    return p1
.end method

.method public static getDefaultInstance()Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCItem;
    .locals 1

    .prologue
    .line 1980
    sget-object v0, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCItem;->defaultInstance:Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCItem;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 1989
    # getter for: Lcom/mapabc/mapapi/core/RGCProtoBuf;->internal_static_RGCItem_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;
    invoke-static {}, Lcom/mapabc/mapapi/core/RGCProtoBuf;->access$2800()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method private getGridcodeBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .prologue
    .line 2083
    iget-object v0, p0, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCItem;->gridcode_:Ljava/lang/Object;

    .line 2084
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 2085
    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 2087
    iput-object v0, p0, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCItem;->gridcode_:Ljava/lang/Object;

    .line 2090
    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    goto :goto_0
.end method

.method private getXBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .prologue
    .line 2019
    iget-object v0, p0, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCItem;->x_:Ljava/lang/Object;

    .line 2020
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 2021
    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 2023
    iput-object v0, p0, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCItem;->x_:Ljava/lang/Object;

    .line 2026
    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    goto :goto_0
.end method

.method private getYBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .prologue
    .line 2051
    iget-object v0, p0, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCItem;->y_:Ljava/lang/Object;

    .line 2052
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 2053
    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 2055
    iput-object v0, p0, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCItem;->y_:Ljava/lang/Object;

    .line 2058
    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    goto :goto_0
.end method

.method private initFields()V
    .locals 1

    .prologue
    .line 2095
    const-string v0, ""

    iput-object v0, p0, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCItem;->x_:Ljava/lang/Object;

    .line 2096
    const-string v0, ""

    iput-object v0, p0, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCItem;->y_:Ljava/lang/Object;

    .line 2097
    const-string v0, ""

    iput-object v0, p0, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCItem;->gridcode_:Ljava/lang/Object;

    .line 2098
    return-void
.end method

.method public static newBuilder()Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCItem$Builder;
    .locals 1

    .prologue
    .line 2224
    # invokes: Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCItem$Builder;->create()Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCItem$Builder;
    invoke-static {}, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCItem$Builder;->access$3100()Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCItem$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCItem;)Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCItem$Builder;
    .locals 1

    .prologue
    .line 2227
    invoke-static {}, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCItem;->newBuilder()Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCItem$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCItem$Builder;->mergeFrom(Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCItem;)Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCItem$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCItem;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2193
    invoke-static {}, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCItem;->newBuilder()Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCItem$Builder;

    move-result-object v0

    .line 2194
    invoke-virtual {v0, p0}, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCItem$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2195
    # invokes: Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCItem$Builder;->buildParsed()Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCItem;
    invoke-static {v0}, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCItem$Builder;->access$3000(Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCItem$Builder;)Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCItem;

    move-result-object v0

    .line 2197
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCItem;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2204
    invoke-static {}, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCItem;->newBuilder()Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCItem$Builder;

    move-result-object v0

    .line 2205
    invoke-virtual {v0, p0, p1}, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCItem$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2206
    # invokes: Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCItem$Builder;->buildParsed()Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCItem;
    invoke-static {v0}, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCItem$Builder;->access$3000(Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCItem$Builder;)Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCItem;

    move-result-object v0

    .line 2208
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCItem;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 2160
    invoke-static {}, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCItem;->newBuilder()Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCItem$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCItem$Builder;->mergeFrom(Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCItem$Builder;

    # invokes: Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCItem$Builder;->buildParsed()Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCItem;
    invoke-static {v0}, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCItem$Builder;->access$3000(Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCItem$Builder;)Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCItem;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCItem;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 2166
    invoke-static {}, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCItem;->newBuilder()Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCItem$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCItem$Builder;->mergeFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCItem$Builder;

    # invokes: Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCItem$Builder;->buildParsed()Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCItem;
    invoke-static {v0}, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCItem$Builder;->access$3000(Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCItem$Builder;)Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCItem;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCItem;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2214
    invoke-static {}, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCItem;->newBuilder()Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCItem$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCItem$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCItem$Builder;

    # invokes: Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCItem$Builder;->buildParsed()Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCItem;
    invoke-static {v0}, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCItem$Builder;->access$3000(Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCItem$Builder;)Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCItem;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCItem;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2220
    invoke-static {}, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCItem;->newBuilder()Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCItem$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCItem$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCItem$Builder;

    move-result-object v0

    # invokes: Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCItem$Builder;->buildParsed()Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCItem;
    invoke-static {v0}, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCItem$Builder;->access$3000(Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCItem$Builder;)Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCItem;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCItem;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2182
    invoke-static {}, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCItem;->newBuilder()Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCItem$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCItem$Builder;->mergeFrom(Ljava/io/InputStream;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCItem$Builder;

    # invokes: Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCItem$Builder;->buildParsed()Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCItem;
    invoke-static {v0}, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCItem$Builder;->access$3000(Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCItem$Builder;)Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCItem;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCItem;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2188
    invoke-static {}, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCItem;->newBuilder()Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCItem$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCItem$Builder;->mergeFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCItem$Builder;

    # invokes: Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCItem$Builder;->buildParsed()Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCItem;
    invoke-static {v0}, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCItem$Builder;->access$3000(Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCItem$Builder;)Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCItem;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCItem;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 2171
    invoke-static {}, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCItem;->newBuilder()Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCItem$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCItem$Builder;->mergeFrom([B)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCItem$Builder;

    # invokes: Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCItem$Builder;->buildParsed()Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCItem;
    invoke-static {v0}, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCItem$Builder;->access$3000(Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCItem$Builder;)Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCItem;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCItem;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 2177
    invoke-static {}, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCItem;->newBuilder()Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCItem$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCItem$Builder;->mergeFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCItem$Builder;

    # invokes: Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCItem$Builder;->buildParsed()Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCItem;
    invoke-static {v0}, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCItem$Builder;->access$3000(Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCItem$Builder;)Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCItem;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 1969
    invoke-virtual {p0}, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCItem;->getDefaultInstanceForType()Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCItem;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 1969
    invoke-virtual {p0}, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCItem;->getDefaultInstanceForType()Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCItem;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCItem;
    .locals 1

    .prologue
    .line 1984
    sget-object v0, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCItem;->defaultInstance:Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCItem;

    return-object v0
.end method

.method public getGridcode()Ljava/lang/String;
    .locals 2

    .prologue
    .line 2069
    iget-object v0, p0, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCItem;->gridcode_:Ljava/lang/Object;

    .line 2070
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 2071
    check-cast v0, Ljava/lang/String;

    .line 2079
    :goto_0
    return-object v0

    .line 2073
    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 2075
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 2076
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2077
    iput-object v1, p0, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCItem;->gridcode_:Ljava/lang/Object;

    :cond_1
    move-object v0, v1

    .line 2079
    goto :goto_0
.end method

.method public getSerializedSize()I
    .locals 4

    .prologue
    const/4 v3, 0x2

    const/4 v2, 0x1

    .line 2129
    iget v0, p0, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCItem;->memoizedSerializedSize:I

    .line 2130
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 2147
    :goto_0
    return v0

    .line 2132
    :cond_0
    const/4 v0, 0x0

    .line 2133
    iget v1, p0, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCItem;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v2, :cond_1

    .line 2134
    invoke-direct {p0}, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCItem;->getXBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v1

    add-int/2addr v0, v1

    .line 2137
    :cond_1
    iget v1, p0, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCItem;->bitField0_:I

    and-int/lit8 v1, v1, 0x2

    if-ne v1, v3, :cond_2

    .line 2138
    invoke-direct {p0}, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCItem;->getYBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v1

    add-int/2addr v0, v1

    .line 2141
    :cond_2
    iget v1, p0, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCItem;->bitField0_:I

    and-int/lit8 v1, v1, 0x4

    const/4 v2, 0x4

    if-ne v1, v2, :cond_3

    .line 2142
    const/4 v1, 0x3

    invoke-direct {p0}, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCItem;->getGridcodeBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v1

    add-int/2addr v0, v1

    .line 2145
    :cond_3
    invoke-virtual {p0}, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCItem;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protobuf/UnknownFieldSet;->getSerializedSize()I

    move-result v1

    add-int/2addr v0, v1

    .line 2146
    iput v0, p0, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCItem;->memoizedSerializedSize:I

    goto :goto_0
.end method

.method public getX()Ljava/lang/String;
    .locals 2

    .prologue
    .line 2005
    iget-object v0, p0, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCItem;->x_:Ljava/lang/Object;

    .line 2006
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 2007
    check-cast v0, Ljava/lang/String;

    .line 2015
    :goto_0
    return-object v0

    .line 2009
    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 2011
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 2012
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2013
    iput-object v1, p0, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCItem;->x_:Ljava/lang/Object;

    :cond_1
    move-object v0, v1

    .line 2015
    goto :goto_0
.end method

.method public getY()Ljava/lang/String;
    .locals 2

    .prologue
    .line 2037
    iget-object v0, p0, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCItem;->y_:Ljava/lang/Object;

    .line 2038
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 2039
    check-cast v0, Ljava/lang/String;

    .line 2047
    :goto_0
    return-object v0

    .line 2041
    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 2043
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 2044
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2045
    iput-object v1, p0, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCItem;->y_:Ljava/lang/Object;

    :cond_1
    move-object v0, v1

    .line 2047
    goto :goto_0
.end method

.method public hasGridcode()Z
    .locals 2

    .prologue
    .line 2066
    iget v0, p0, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCItem;->bitField0_:I

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

.method public hasX()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 2002
    iget v1, p0, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCItem;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasY()Z
    .locals 2

    .prologue
    .line 2034
    iget v0, p0, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCItem;->bitField0_:I

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
    .line 1994
    # getter for: Lcom/mapabc/mapapi/core/RGCProtoBuf;->internal_static_RGCItem_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    invoke-static {}, Lcom/mapabc/mapapi/core/RGCProtoBuf;->access$2900()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 2101
    iget-byte v2, p0, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCItem;->memoizedIsInitialized:B

    .line 2102
    const/4 v3, -0x1

    if-eq v2, v3, :cond_1

    if-ne v2, v0, :cond_0

    .line 2109
    :goto_0
    return v0

    :cond_0
    move v0, v1

    .line 2102
    goto :goto_0

    .line 2104
    :cond_1
    invoke-virtual {p0}, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCItem;->hasGridcode()Z

    move-result v2

    if-nez v2, :cond_2

    .line 2105
    iput-byte v1, p0, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCItem;->memoizedIsInitialized:B

    move v0, v1

    .line 2106
    goto :goto_0

    .line 2108
    :cond_2
    iput-byte v0, p0, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCItem;->memoizedIsInitialized:B

    goto :goto_0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 1969
    invoke-virtual {p0}, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCItem;->newBuilderForType()Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCItem$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic newBuilderForType(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 1969
    invoke-virtual {p0, p1}, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCItem;->newBuilderForType(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCItem$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 1969
    invoke-virtual {p0}, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCItem;->newBuilderForType()Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCItem$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCItem$Builder;
    .locals 1

    .prologue
    .line 2225
    invoke-static {}, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCItem;->newBuilder()Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCItem$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected newBuilderForType(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCItem$Builder;
    .locals 2

    .prologue
    .line 2234
    new-instance v0, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCItem$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCItem$Builder;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;Lcom/mapabc/mapapi/core/v;)V

    .line 2235
    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 1969
    invoke-virtual {p0}, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCItem;->toBuilder()Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCItem$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 1969
    invoke-virtual {p0}, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCItem;->toBuilder()Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCItem$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCItem$Builder;
    .locals 1

    .prologue
    .line 2229
    invoke-static {p0}, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCItem;->newBuilder(Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCItem;)Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCItem$Builder;

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
    .line 2154
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

    .line 2114
    invoke-virtual {p0}, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCItem;->getSerializedSize()I

    .line 2115
    iget v0, p0, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCItem;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_0

    .line 2116
    invoke-direct {p0}, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCItem;->getXBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 2118
    :cond_0
    iget v0, p0, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCItem;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-ne v0, v2, :cond_1

    .line 2119
    invoke-direct {p0}, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCItem;->getYBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 2121
    :cond_1
    iget v0, p0, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCItem;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    const/4 v1, 0x4

    if-ne v0, v1, :cond_2

    .line 2122
    const/4 v0, 0x3

    invoke-direct {p0}, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCItem;->getGridcodeBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 2124
    :cond_2
    invoke-virtual {p0}, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCItem;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/UnknownFieldSet;->writeTo(Lcom/google/protobuf/CodedOutputStream;)V

    .line 2125
    return-void
.end method
