.class public final Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$SubPOI;
.super Lcom/google/protobuf/GeneratedMessage;
.source "GeocodingProtoBuf.java"

# interfaces
.implements Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$SubPOIOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SubPOI"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$SubPOI$Builder;
    }
.end annotation


# static fields
.field public static final ENAME_FIELD_NUMBER:I = 0x2

.field public static final NAME_FIELD_NUMBER:I = 0x1

.field public static final X_FIELD_NUMBER:I = 0x3

.field public static final Y_FIELD_NUMBER:I = 0x4

.field private static final defaultInstance:Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$SubPOI;

.field private static final serialVersionUID:J


# instance fields
.field private bitField0_:I

.field private ename_:Ljava/lang/Object;

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I

.field private name_:Ljava/lang/Object;

.field private x_:Ljava/lang/Object;

.field private y_:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 5383
    new-instance v0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$SubPOI;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$SubPOI;-><init>(Z)V

    sput-object v0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$SubPOI;->defaultInstance:Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$SubPOI;

    .line 5384
    sget-object v0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$SubPOI;->defaultInstance:Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$SubPOI;

    invoke-direct {v0}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$SubPOI;->initFields()V

    .line 5385
    return-void
.end method

.method private constructor <init>(Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$SubPOI$Builder;)V
    .locals 1

    .prologue
    const/4 v0, -0x1

    .line 4757
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessage;-><init>(Lcom/google/protobuf/GeneratedMessage$Builder;)V

    .line 4915
    iput-byte v0, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$SubPOI;->memoizedIsInitialized:B

    .line 4942
    iput v0, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$SubPOI;->memoizedSerializedSize:I

    .line 4758
    return-void
.end method

.method synthetic constructor <init>(Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$SubPOI$Builder;Lcom/mapabc/mapapi/geocoder/c;)V
    .locals 0

    .prologue
    .line 4752
    invoke-direct {p0, p1}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$SubPOI;-><init>(Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$SubPOI$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 1

    .prologue
    const/4 v0, -0x1

    .line 4759
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage;-><init>()V

    .line 4915
    iput-byte v0, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$SubPOI;->memoizedIsInitialized:B

    .line 4942
    iput v0, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$SubPOI;->memoizedSerializedSize:I

    .line 4759
    return-void
.end method

.method static synthetic access$7400()Z
    .locals 1

    .prologue
    .line 4752
    sget-boolean v0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$SubPOI;->alwaysUseFieldBuilders:Z

    return v0
.end method

.method static synthetic access$7602(Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$SubPOI;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .prologue
    .line 4752
    iput-object p1, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$SubPOI;->name_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$7702(Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$SubPOI;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .prologue
    .line 4752
    iput-object p1, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$SubPOI;->ename_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$7802(Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$SubPOI;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .prologue
    .line 4752
    iput-object p1, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$SubPOI;->x_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$7902(Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$SubPOI;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .prologue
    .line 4752
    iput-object p1, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$SubPOI;->y_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$8002(Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$SubPOI;I)I
    .locals 0

    .prologue
    .line 4752
    iput p1, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$SubPOI;->bitField0_:I

    return p1
.end method

.method public static getDefaultInstance()Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$SubPOI;
    .locals 1

    .prologue
    .line 4763
    sget-object v0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$SubPOI;->defaultInstance:Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$SubPOI;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 4772
    # getter for: Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf;->internal_static_SubPOI_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;
    invoke-static {}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf;->access$6900()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method private getEnameBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .prologue
    .line 4834
    iget-object v0, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$SubPOI;->ename_:Ljava/lang/Object;

    .line 4835
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 4836
    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 4838
    iput-object v0, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$SubPOI;->ename_:Ljava/lang/Object;

    .line 4841
    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    goto :goto_0
.end method

.method private getNameBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .prologue
    .line 4802
    iget-object v0, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$SubPOI;->name_:Ljava/lang/Object;

    .line 4803
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 4804
    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 4806
    iput-object v0, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$SubPOI;->name_:Ljava/lang/Object;

    .line 4809
    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    goto :goto_0
.end method

.method private getXBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .prologue
    .line 4866
    iget-object v0, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$SubPOI;->x_:Ljava/lang/Object;

    .line 4867
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 4868
    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 4870
    iput-object v0, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$SubPOI;->x_:Ljava/lang/Object;

    .line 4873
    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    goto :goto_0
.end method

.method private getYBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .prologue
    .line 4898
    iget-object v0, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$SubPOI;->y_:Ljava/lang/Object;

    .line 4899
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 4900
    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 4902
    iput-object v0, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$SubPOI;->y_:Ljava/lang/Object;

    .line 4905
    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    goto :goto_0
.end method

.method private initFields()V
    .locals 1

    .prologue
    .line 4910
    const-string v0, ""

    iput-object v0, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$SubPOI;->name_:Ljava/lang/Object;

    .line 4911
    const-string v0, ""

    iput-object v0, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$SubPOI;->ename_:Ljava/lang/Object;

    .line 4912
    const-string v0, ""

    iput-object v0, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$SubPOI;->x_:Ljava/lang/Object;

    .line 4913
    const-string v0, ""

    iput-object v0, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$SubPOI;->y_:Ljava/lang/Object;

    .line 4914
    return-void
.end method

.method public static newBuilder()Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$SubPOI$Builder;
    .locals 1

    .prologue
    .line 5043
    # invokes: Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$SubPOI$Builder;->create()Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$SubPOI$Builder;
    invoke-static {}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$SubPOI$Builder;->access$7200()Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$SubPOI$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$SubPOI;)Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$SubPOI$Builder;
    .locals 1

    .prologue
    .line 5046
    invoke-static {}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$SubPOI;->newBuilder()Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$SubPOI$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$SubPOI$Builder;->mergeFrom(Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$SubPOI;)Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$SubPOI$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$SubPOI;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 5012
    invoke-static {}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$SubPOI;->newBuilder()Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$SubPOI$Builder;

    move-result-object v0

    .line 5013
    invoke-virtual {v0, p0}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$SubPOI$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 5014
    # invokes: Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$SubPOI$Builder;->buildParsed()Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$SubPOI;
    invoke-static {v0}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$SubPOI$Builder;->access$7100(Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$SubPOI$Builder;)Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$SubPOI;

    move-result-object v0

    .line 5016
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$SubPOI;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 5023
    invoke-static {}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$SubPOI;->newBuilder()Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$SubPOI$Builder;

    move-result-object v0

    .line 5024
    invoke-virtual {v0, p0, p1}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$SubPOI$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 5025
    # invokes: Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$SubPOI$Builder;->buildParsed()Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$SubPOI;
    invoke-static {v0}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$SubPOI$Builder;->access$7100(Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$SubPOI$Builder;)Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$SubPOI;

    move-result-object v0

    .line 5027
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$SubPOI;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 4979
    invoke-static {}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$SubPOI;->newBuilder()Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$SubPOI$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$SubPOI$Builder;->mergeFrom(Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$SubPOI$Builder;

    # invokes: Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$SubPOI$Builder;->buildParsed()Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$SubPOI;
    invoke-static {v0}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$SubPOI$Builder;->access$7100(Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$SubPOI$Builder;)Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$SubPOI;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$SubPOI;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 4985
    invoke-static {}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$SubPOI;->newBuilder()Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$SubPOI$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$SubPOI$Builder;->mergeFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$SubPOI$Builder;

    # invokes: Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$SubPOI$Builder;->buildParsed()Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$SubPOI;
    invoke-static {v0}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$SubPOI$Builder;->access$7100(Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$SubPOI$Builder;)Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$SubPOI;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$SubPOI;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 5033
    invoke-static {}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$SubPOI;->newBuilder()Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$SubPOI$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$SubPOI$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$SubPOI$Builder;

    # invokes: Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$SubPOI$Builder;->buildParsed()Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$SubPOI;
    invoke-static {v0}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$SubPOI$Builder;->access$7100(Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$SubPOI$Builder;)Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$SubPOI;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$SubPOI;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 5039
    invoke-static {}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$SubPOI;->newBuilder()Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$SubPOI$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$SubPOI$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$SubPOI$Builder;

    move-result-object v0

    # invokes: Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$SubPOI$Builder;->buildParsed()Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$SubPOI;
    invoke-static {v0}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$SubPOI$Builder;->access$7100(Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$SubPOI$Builder;)Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$SubPOI;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$SubPOI;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 5001
    invoke-static {}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$SubPOI;->newBuilder()Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$SubPOI$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$SubPOI$Builder;->mergeFrom(Ljava/io/InputStream;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$SubPOI$Builder;

    # invokes: Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$SubPOI$Builder;->buildParsed()Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$SubPOI;
    invoke-static {v0}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$SubPOI$Builder;->access$7100(Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$SubPOI$Builder;)Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$SubPOI;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$SubPOI;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 5007
    invoke-static {}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$SubPOI;->newBuilder()Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$SubPOI$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$SubPOI$Builder;->mergeFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$SubPOI$Builder;

    # invokes: Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$SubPOI$Builder;->buildParsed()Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$SubPOI;
    invoke-static {v0}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$SubPOI$Builder;->access$7100(Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$SubPOI$Builder;)Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$SubPOI;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$SubPOI;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 4990
    invoke-static {}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$SubPOI;->newBuilder()Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$SubPOI$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$SubPOI$Builder;->mergeFrom([B)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$SubPOI$Builder;

    # invokes: Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$SubPOI$Builder;->buildParsed()Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$SubPOI;
    invoke-static {v0}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$SubPOI$Builder;->access$7100(Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$SubPOI$Builder;)Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$SubPOI;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$SubPOI;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 4996
    invoke-static {}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$SubPOI;->newBuilder()Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$SubPOI$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$SubPOI$Builder;->mergeFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$SubPOI$Builder;

    # invokes: Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$SubPOI$Builder;->buildParsed()Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$SubPOI;
    invoke-static {v0}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$SubPOI$Builder;->access$7100(Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$SubPOI$Builder;)Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$SubPOI;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 4752
    invoke-virtual {p0}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$SubPOI;->getDefaultInstanceForType()Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$SubPOI;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 4752
    invoke-virtual {p0}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$SubPOI;->getDefaultInstanceForType()Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$SubPOI;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$SubPOI;
    .locals 1

    .prologue
    .line 4767
    sget-object v0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$SubPOI;->defaultInstance:Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$SubPOI;

    return-object v0
.end method

.method public getEname()Ljava/lang/String;
    .locals 2

    .prologue
    .line 4820
    iget-object v0, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$SubPOI;->ename_:Ljava/lang/Object;

    .line 4821
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 4822
    check-cast v0, Ljava/lang/String;

    .line 4830
    :goto_0
    return-object v0

    .line 4824
    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 4826
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 4827
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4828
    iput-object v1, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$SubPOI;->ename_:Ljava/lang/Object;

    :cond_1
    move-object v0, v1

    .line 4830
    goto :goto_0
.end method

.method public getName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 4788
    iget-object v0, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$SubPOI;->name_:Ljava/lang/Object;

    .line 4789
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 4790
    check-cast v0, Ljava/lang/String;

    .line 4798
    :goto_0
    return-object v0

    .line 4792
    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 4794
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 4795
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4796
    iput-object v1, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$SubPOI;->name_:Ljava/lang/Object;

    :cond_1
    move-object v0, v1

    .line 4798
    goto :goto_0
.end method

.method public getSerializedSize()I
    .locals 5

    .prologue
    const/4 v4, 0x4

    const/4 v3, 0x2

    const/4 v2, 0x1

    .line 4944
    iget v0, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$SubPOI;->memoizedSerializedSize:I

    .line 4945
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 4966
    :goto_0
    return v0

    .line 4947
    :cond_0
    const/4 v0, 0x0

    .line 4948
    iget v1, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$SubPOI;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v2, :cond_1

    .line 4949
    invoke-direct {p0}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$SubPOI;->getNameBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v1

    add-int/2addr v0, v1

    .line 4952
    :cond_1
    iget v1, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$SubPOI;->bitField0_:I

    and-int/lit8 v1, v1, 0x2

    if-ne v1, v3, :cond_2

    .line 4953
    invoke-direct {p0}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$SubPOI;->getEnameBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v1

    add-int/2addr v0, v1

    .line 4956
    :cond_2
    iget v1, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$SubPOI;->bitField0_:I

    and-int/lit8 v1, v1, 0x4

    if-ne v1, v4, :cond_3

    .line 4957
    const/4 v1, 0x3

    invoke-direct {p0}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$SubPOI;->getXBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v1

    add-int/2addr v0, v1

    .line 4960
    :cond_3
    iget v1, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$SubPOI;->bitField0_:I

    and-int/lit8 v1, v1, 0x8

    const/16 v2, 0x8

    if-ne v1, v2, :cond_4

    .line 4961
    invoke-direct {p0}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$SubPOI;->getYBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-static {v4, v1}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v1

    add-int/2addr v0, v1

    .line 4964
    :cond_4
    invoke-virtual {p0}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$SubPOI;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protobuf/UnknownFieldSet;->getSerializedSize()I

    move-result v1

    add-int/2addr v0, v1

    .line 4965
    iput v0, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$SubPOI;->memoizedSerializedSize:I

    goto :goto_0
.end method

.method public getX()Ljava/lang/String;
    .locals 2

    .prologue
    .line 4852
    iget-object v0, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$SubPOI;->x_:Ljava/lang/Object;

    .line 4853
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 4854
    check-cast v0, Ljava/lang/String;

    .line 4862
    :goto_0
    return-object v0

    .line 4856
    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 4858
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 4859
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4860
    iput-object v1, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$SubPOI;->x_:Ljava/lang/Object;

    :cond_1
    move-object v0, v1

    .line 4862
    goto :goto_0
.end method

.method public getY()Ljava/lang/String;
    .locals 2

    .prologue
    .line 4884
    iget-object v0, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$SubPOI;->y_:Ljava/lang/Object;

    .line 4885
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 4886
    check-cast v0, Ljava/lang/String;

    .line 4894
    :goto_0
    return-object v0

    .line 4888
    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 4890
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 4891
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4892
    iput-object v1, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$SubPOI;->y_:Ljava/lang/Object;

    :cond_1
    move-object v0, v1

    .line 4894
    goto :goto_0
.end method

.method public hasEname()Z
    .locals 2

    .prologue
    .line 4817
    iget v0, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$SubPOI;->bitField0_:I

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

    .line 4785
    iget v1, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$SubPOI;->bitField0_:I

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
    .line 4849
    iget v0, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$SubPOI;->bitField0_:I

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

.method public hasY()Z
    .locals 2

    .prologue
    .line 4881
    iget v0, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$SubPOI;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    const/16 v1, 0x8

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
    .line 4777
    # getter for: Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf;->internal_static_SubPOI_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    invoke-static {}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf;->access$7000()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 4917
    iget-byte v1, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$SubPOI;->memoizedIsInitialized:B

    .line 4918
    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    if-ne v1, v0, :cond_0

    .line 4921
    :goto_0
    return v0

    .line 4918
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 4920
    :cond_1
    iput-byte v0, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$SubPOI;->memoizedIsInitialized:B

    goto :goto_0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 4752
    invoke-virtual {p0}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$SubPOI;->newBuilderForType()Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$SubPOI$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic newBuilderForType(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 4752
    invoke-virtual {p0, p1}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$SubPOI;->newBuilderForType(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$SubPOI$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 4752
    invoke-virtual {p0}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$SubPOI;->newBuilderForType()Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$SubPOI$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$SubPOI$Builder;
    .locals 1

    .prologue
    .line 5044
    invoke-static {}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$SubPOI;->newBuilder()Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$SubPOI$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected newBuilderForType(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$SubPOI$Builder;
    .locals 2

    .prologue
    .line 5053
    new-instance v0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$SubPOI$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$SubPOI$Builder;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;Lcom/mapabc/mapapi/geocoder/c;)V

    .line 5054
    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 4752
    invoke-virtual {p0}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$SubPOI;->toBuilder()Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$SubPOI$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 4752
    invoke-virtual {p0}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$SubPOI;->toBuilder()Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$SubPOI$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$SubPOI$Builder;
    .locals 1

    .prologue
    .line 5048
    invoke-static {p0}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$SubPOI;->newBuilder(Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$SubPOI;)Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$SubPOI$Builder;

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
    .line 4973
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessage;->writeReplace()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public writeTo(Lcom/google/protobuf/CodedOutputStream;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x4

    const/4 v2, 0x2

    const/4 v1, 0x1

    .line 4926
    invoke-virtual {p0}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$SubPOI;->getSerializedSize()I

    .line 4927
    iget v0, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$SubPOI;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_0

    .line 4928
    invoke-direct {p0}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$SubPOI;->getNameBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 4930
    :cond_0
    iget v0, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$SubPOI;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-ne v0, v2, :cond_1

    .line 4931
    invoke-direct {p0}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$SubPOI;->getEnameBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 4933
    :cond_1
    iget v0, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$SubPOI;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-ne v0, v3, :cond_2

    .line 4934
    const/4 v0, 0x3

    invoke-direct {p0}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$SubPOI;->getXBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 4936
    :cond_2
    iget v0, p0, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$SubPOI;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    const/16 v1, 0x8

    if-ne v0, v1, :cond_3

    .line 4937
    invoke-direct {p0}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$SubPOI;->getYBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p1, v3, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 4939
    :cond_3
    invoke-virtual {p0}, Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$SubPOI;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/UnknownFieldSet;->writeTo(Lcom/google/protobuf/CodedOutputStream;)V

    .line 4940
    return-void
.end method
