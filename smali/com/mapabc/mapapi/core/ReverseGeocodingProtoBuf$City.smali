.class public final Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$City;
.super Lcom/google/protobuf/GeneratedMessage;
.source "ReverseGeocodingProtoBuf.java"

# interfaces
.implements Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$CityOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "City"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$City$Builder;
    }
.end annotation


# static fields
.field public static final CODE_FIELD_NUMBER:I = 0x2

.field public static final NAME_FIELD_NUMBER:I = 0x1

.field public static final TEL_FIELD_NUMBER:I = 0x3

.field private static final defaultInstance:Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$City;

.field private static final serialVersionUID:J


# instance fields
.field private bitField0_:I

.field private code_:Ljava/lang/Object;

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I

.field private name_:Ljava/lang/Object;

.field private tel_:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 3340
    new-instance v0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$City;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$City;-><init>(Z)V

    sput-object v0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$City;->defaultInstance:Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$City;

    .line 3341
    sget-object v0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$City;->defaultInstance:Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$City;

    invoke-direct {v0}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$City;->initFields()V

    .line 3342
    return-void
.end method

.method private constructor <init>(Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$City$Builder;)V
    .locals 1

    .prologue
    const/4 v0, -0x1

    .line 2804
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessage;-><init>(Lcom/google/protobuf/GeneratedMessage$Builder;)V

    .line 2929
    iput-byte v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$City;->memoizedIsInitialized:B

    .line 2953
    iput v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$City;->memoizedSerializedSize:I

    .line 2805
    return-void
.end method

.method synthetic constructor <init>(Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$City$Builder;Lcom/mapabc/mapapi/core/z;)V
    .locals 0

    .prologue
    .line 2799
    invoke-direct {p0, p1}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$City;-><init>(Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$City$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 1

    .prologue
    const/4 v0, -0x1

    .line 2806
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage;-><init>()V

    .line 2929
    iput-byte v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$City;->memoizedIsInitialized:B

    .line 2953
    iput v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$City;->memoizedSerializedSize:I

    .line 2806
    return-void
.end method

.method static synthetic access$4800()Z
    .locals 1

    .prologue
    .line 2799
    sget-boolean v0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$City;->alwaysUseFieldBuilders:Z

    return v0
.end method

.method static synthetic access$5002(Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$City;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .prologue
    .line 2799
    iput-object p1, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$City;->name_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$5102(Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$City;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .prologue
    .line 2799
    iput-object p1, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$City;->code_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$5202(Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$City;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .prologue
    .line 2799
    iput-object p1, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$City;->tel_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$5302(Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$City;I)I
    .locals 0

    .prologue
    .line 2799
    iput p1, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$City;->bitField0_:I

    return p1
.end method

.method private getCodeBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .prologue
    .line 2881
    iget-object v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$City;->code_:Ljava/lang/Object;

    .line 2882
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 2883
    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 2885
    iput-object v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$City;->code_:Ljava/lang/Object;

    .line 2888
    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    goto :goto_0
.end method

.method public static getDefaultInstance()Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$City;
    .locals 1

    .prologue
    .line 2810
    sget-object v0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$City;->defaultInstance:Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$City;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 2819
    # getter for: Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf;->internal_static_City_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;
    invoke-static {}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf;->access$4300()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method private getNameBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .prologue
    .line 2849
    iget-object v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$City;->name_:Ljava/lang/Object;

    .line 2850
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 2851
    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 2853
    iput-object v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$City;->name_:Ljava/lang/Object;

    .line 2856
    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    goto :goto_0
.end method

.method private getTelBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .prologue
    .line 2913
    iget-object v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$City;->tel_:Ljava/lang/Object;

    .line 2914
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 2915
    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 2917
    iput-object v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$City;->tel_:Ljava/lang/Object;

    .line 2920
    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    goto :goto_0
.end method

.method private initFields()V
    .locals 1

    .prologue
    .line 2925
    const-string v0, ""

    iput-object v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$City;->name_:Ljava/lang/Object;

    .line 2926
    const-string v0, ""

    iput-object v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$City;->code_:Ljava/lang/Object;

    .line 2927
    const-string v0, ""

    iput-object v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$City;->tel_:Ljava/lang/Object;

    .line 2928
    return-void
.end method

.method public static newBuilder()Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$City$Builder;
    .locals 1

    .prologue
    .line 3050
    # invokes: Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$City$Builder;->create()Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$City$Builder;
    invoke-static {}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$City$Builder;->access$4600()Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$City$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$City;)Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$City$Builder;
    .locals 1

    .prologue
    .line 3053
    invoke-static {}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$City;->newBuilder()Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$City$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$City$Builder;->mergeFrom(Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$City;)Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$City$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$City;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 3019
    invoke-static {}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$City;->newBuilder()Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$City$Builder;

    move-result-object v0

    .line 3020
    invoke-virtual {v0, p0}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$City$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3021
    # invokes: Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$City$Builder;->buildParsed()Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$City;
    invoke-static {v0}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$City$Builder;->access$4500(Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$City$Builder;)Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$City;

    move-result-object v0

    .line 3023
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$City;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 3030
    invoke-static {}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$City;->newBuilder()Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$City$Builder;

    move-result-object v0

    .line 3031
    invoke-virtual {v0, p0, p1}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$City$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3032
    # invokes: Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$City$Builder;->buildParsed()Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$City;
    invoke-static {v0}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$City$Builder;->access$4500(Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$City$Builder;)Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$City;

    move-result-object v0

    .line 3034
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$City;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 2986
    invoke-static {}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$City;->newBuilder()Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$City$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$City$Builder;->mergeFrom(Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$City$Builder;

    # invokes: Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$City$Builder;->buildParsed()Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$City;
    invoke-static {v0}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$City$Builder;->access$4500(Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$City$Builder;)Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$City;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$City;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 2992
    invoke-static {}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$City;->newBuilder()Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$City$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$City$Builder;->mergeFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$City$Builder;

    # invokes: Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$City$Builder;->buildParsed()Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$City;
    invoke-static {v0}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$City$Builder;->access$4500(Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$City$Builder;)Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$City;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$City;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 3040
    invoke-static {}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$City;->newBuilder()Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$City$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$City$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$City$Builder;

    # invokes: Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$City$Builder;->buildParsed()Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$City;
    invoke-static {v0}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$City$Builder;->access$4500(Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$City$Builder;)Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$City;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$City;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 3046
    invoke-static {}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$City;->newBuilder()Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$City$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$City$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$City$Builder;

    move-result-object v0

    # invokes: Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$City$Builder;->buildParsed()Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$City;
    invoke-static {v0}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$City$Builder;->access$4500(Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$City$Builder;)Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$City;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$City;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 3008
    invoke-static {}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$City;->newBuilder()Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$City$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$City$Builder;->mergeFrom(Ljava/io/InputStream;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$City$Builder;

    # invokes: Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$City$Builder;->buildParsed()Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$City;
    invoke-static {v0}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$City$Builder;->access$4500(Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$City$Builder;)Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$City;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$City;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 3014
    invoke-static {}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$City;->newBuilder()Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$City$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$City$Builder;->mergeFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$City$Builder;

    # invokes: Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$City$Builder;->buildParsed()Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$City;
    invoke-static {v0}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$City$Builder;->access$4500(Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$City$Builder;)Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$City;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$City;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 2997
    invoke-static {}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$City;->newBuilder()Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$City$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$City$Builder;->mergeFrom([B)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$City$Builder;

    # invokes: Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$City$Builder;->buildParsed()Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$City;
    invoke-static {v0}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$City$Builder;->access$4500(Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$City$Builder;)Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$City;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$City;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 3003
    invoke-static {}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$City;->newBuilder()Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$City$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$City$Builder;->mergeFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$City$Builder;

    # invokes: Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$City$Builder;->buildParsed()Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$City;
    invoke-static {v0}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$City$Builder;->access$4500(Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$City$Builder;)Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$City;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getCode()Ljava/lang/String;
    .locals 2

    .prologue
    .line 2867
    iget-object v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$City;->code_:Ljava/lang/Object;

    .line 2868
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 2869
    check-cast v0, Ljava/lang/String;

    .line 2877
    :goto_0
    return-object v0

    .line 2871
    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 2873
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 2874
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2875
    iput-object v1, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$City;->code_:Ljava/lang/Object;

    :cond_1
    move-object v0, v1

    .line 2877
    goto :goto_0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 2799
    invoke-virtual {p0}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$City;->getDefaultInstanceForType()Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$City;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 2799
    invoke-virtual {p0}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$City;->getDefaultInstanceForType()Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$City;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$City;
    .locals 1

    .prologue
    .line 2814
    sget-object v0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$City;->defaultInstance:Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$City;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 2835
    iget-object v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$City;->name_:Ljava/lang/Object;

    .line 2836
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 2837
    check-cast v0, Ljava/lang/String;

    .line 2845
    :goto_0
    return-object v0

    .line 2839
    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 2841
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 2842
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2843
    iput-object v1, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$City;->name_:Ljava/lang/Object;

    :cond_1
    move-object v0, v1

    .line 2845
    goto :goto_0
.end method

.method public getSerializedSize()I
    .locals 4

    .prologue
    const/4 v3, 0x2

    const/4 v2, 0x1

    .line 2955
    iget v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$City;->memoizedSerializedSize:I

    .line 2956
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 2973
    :goto_0
    return v0

    .line 2958
    :cond_0
    const/4 v0, 0x0

    .line 2959
    iget v1, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$City;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v2, :cond_1

    .line 2960
    invoke-direct {p0}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$City;->getNameBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v1

    add-int/2addr v0, v1

    .line 2963
    :cond_1
    iget v1, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$City;->bitField0_:I

    and-int/lit8 v1, v1, 0x2

    if-ne v1, v3, :cond_2

    .line 2964
    invoke-direct {p0}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$City;->getCodeBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v1

    add-int/2addr v0, v1

    .line 2967
    :cond_2
    iget v1, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$City;->bitField0_:I

    and-int/lit8 v1, v1, 0x4

    const/4 v2, 0x4

    if-ne v1, v2, :cond_3

    .line 2968
    const/4 v1, 0x3

    invoke-direct {p0}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$City;->getTelBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v1

    add-int/2addr v0, v1

    .line 2971
    :cond_3
    invoke-virtual {p0}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$City;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protobuf/UnknownFieldSet;->getSerializedSize()I

    move-result v1

    add-int/2addr v0, v1

    .line 2972
    iput v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$City;->memoizedSerializedSize:I

    goto :goto_0
.end method

.method public getTel()Ljava/lang/String;
    .locals 2

    .prologue
    .line 2899
    iget-object v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$City;->tel_:Ljava/lang/Object;

    .line 2900
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 2901
    check-cast v0, Ljava/lang/String;

    .line 2909
    :goto_0
    return-object v0

    .line 2903
    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 2905
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 2906
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2907
    iput-object v1, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$City;->tel_:Ljava/lang/Object;

    :cond_1
    move-object v0, v1

    .line 2909
    goto :goto_0
.end method

.method public hasCode()Z
    .locals 2

    .prologue
    .line 2864
    iget v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$City;->bitField0_:I

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

    .line 2832
    iget v1, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$City;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasTel()Z
    .locals 2

    .prologue
    .line 2896
    iget v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$City;->bitField0_:I

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
    .line 2824
    # getter for: Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf;->internal_static_City_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    invoke-static {}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf;->access$4400()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 2931
    iget-byte v1, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$City;->memoizedIsInitialized:B

    .line 2932
    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    if-ne v1, v0, :cond_0

    .line 2935
    :goto_0
    return v0

    .line 2932
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 2934
    :cond_1
    iput-byte v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$City;->memoizedIsInitialized:B

    goto :goto_0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 2799
    invoke-virtual {p0}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$City;->newBuilderForType()Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$City$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic newBuilderForType(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 2799
    invoke-virtual {p0, p1}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$City;->newBuilderForType(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$City$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 2799
    invoke-virtual {p0}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$City;->newBuilderForType()Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$City$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$City$Builder;
    .locals 1

    .prologue
    .line 3051
    invoke-static {}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$City;->newBuilder()Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$City$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected newBuilderForType(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$City$Builder;
    .locals 2

    .prologue
    .line 3060
    new-instance v0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$City$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$City$Builder;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;Lcom/mapabc/mapapi/core/z;)V

    .line 3061
    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 2799
    invoke-virtual {p0}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$City;->toBuilder()Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$City$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 2799
    invoke-virtual {p0}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$City;->toBuilder()Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$City$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$City$Builder;
    .locals 1

    .prologue
    .line 3055
    invoke-static {p0}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$City;->newBuilder(Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$City;)Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$City$Builder;

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
    .line 2980
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

    .line 2940
    invoke-virtual {p0}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$City;->getSerializedSize()I

    .line 2941
    iget v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$City;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_0

    .line 2942
    invoke-direct {p0}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$City;->getNameBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 2944
    :cond_0
    iget v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$City;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-ne v0, v2, :cond_1

    .line 2945
    invoke-direct {p0}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$City;->getCodeBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 2947
    :cond_1
    iget v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$City;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    const/4 v1, 0x4

    if-ne v0, v1, :cond_2

    .line 2948
    const/4 v0, 0x3

    invoke-direct {p0}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$City;->getTelBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 2950
    :cond_2
    invoke-virtual {p0}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$City;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/UnknownFieldSet;->writeTo(Lcom/google/protobuf/CodedOutputStream;)V

    .line 2951
    return-void
.end method
