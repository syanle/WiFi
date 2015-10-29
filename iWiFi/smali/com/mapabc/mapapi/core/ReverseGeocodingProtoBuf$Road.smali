.class public final Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Road;
.super Lcom/google/protobuf/GeneratedMessage;
.source "ReverseGeocodingProtoBuf.java"

# interfaces
.implements Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$RoadOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Road"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Road$Builder;
    }
.end annotation


# static fields
.field public static final DIRECTION_FIELD_NUMBER:I = 0x7

.field public static final DISTANCE_FIELD_NUMBER:I = 0x6

.field public static final ENAME_FIELD_NUMBER:I = 0x3

.field public static final ID_FIELD_NUMBER:I = 0x1

.field public static final LEVEL_FIELD_NUMBER:I = 0x5

.field public static final NAME_FIELD_NUMBER:I = 0x2

.field public static final WIDTH_FIELD_NUMBER:I = 0x4

.field private static final defaultInstance:Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Road;

.field private static final serialVersionUID:J


# instance fields
.field private bitField0_:I

.field private direction_:Ljava/lang/Object;

.field private distance_:Ljava/lang/Object;

.field private ename_:Ljava/lang/Object;

.field private id_:Ljava/lang/Object;

.field private level_:Ljava/lang/Object;

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I

.field private name_:Ljava/lang/Object;

.field private width_:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 5649
    new-instance v0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Road;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Road;-><init>(Z)V

    sput-object v0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Road;->defaultInstance:Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Road;

    .line 5650
    sget-object v0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Road;->defaultInstance:Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Road;

    invoke-direct {v0}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Road;->initFields()V

    .line 5651
    return-void
.end method

.method private constructor <init>(Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Road$Builder;)V
    .locals 1

    .prologue
    const/4 v0, -0x1

    .line 4697
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessage;-><init>(Lcom/google/protobuf/GeneratedMessage$Builder;)V

    .line 4954
    iput-byte v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Road;->memoizedIsInitialized:B

    .line 5018
    iput v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Road;->memoizedSerializedSize:I

    .line 4698
    return-void
.end method

.method synthetic constructor <init>(Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Road$Builder;Lcom/mapabc/mapapi/core/z;)V
    .locals 0

    .prologue
    .line 4692
    invoke-direct {p0, p1}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Road;-><init>(Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Road$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 1

    .prologue
    const/4 v0, -0x1

    .line 4699
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage;-><init>()V

    .line 4954
    iput-byte v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Road;->memoizedIsInitialized:B

    .line 5018
    iput v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Road;->memoizedSerializedSize:I

    .line 4699
    return-void
.end method

.method static synthetic access$8100()Z
    .locals 1

    .prologue
    .line 4692
    sget-boolean v0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Road;->alwaysUseFieldBuilders:Z

    return v0
.end method

.method static synthetic access$8302(Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Road;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .prologue
    .line 4692
    iput-object p1, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Road;->id_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$8402(Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Road;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .prologue
    .line 4692
    iput-object p1, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Road;->name_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$8502(Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Road;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .prologue
    .line 4692
    iput-object p1, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Road;->ename_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$8602(Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Road;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .prologue
    .line 4692
    iput-object p1, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Road;->width_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$8702(Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Road;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .prologue
    .line 4692
    iput-object p1, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Road;->level_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$8802(Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Road;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .prologue
    .line 4692
    iput-object p1, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Road;->distance_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$8902(Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Road;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .prologue
    .line 4692
    iput-object p1, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Road;->direction_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$9002(Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Road;I)I
    .locals 0

    .prologue
    .line 4692
    iput p1, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Road;->bitField0_:I

    return p1
.end method

.method public static getDefaultInstance()Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Road;
    .locals 1

    .prologue
    .line 4703
    sget-object v0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Road;->defaultInstance:Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Road;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 4712
    # getter for: Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf;->internal_static_Road_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;
    invoke-static {}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf;->access$7600()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method private getDirectionBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .prologue
    .line 4934
    iget-object v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Road;->direction_:Ljava/lang/Object;

    .line 4935
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 4936
    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 4938
    iput-object v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Road;->direction_:Ljava/lang/Object;

    .line 4941
    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    goto :goto_0
.end method

.method private getDistanceBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .prologue
    .line 4902
    iget-object v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Road;->distance_:Ljava/lang/Object;

    .line 4903
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 4904
    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 4906
    iput-object v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Road;->distance_:Ljava/lang/Object;

    .line 4909
    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    goto :goto_0
.end method

.method private getEnameBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .prologue
    .line 4806
    iget-object v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Road;->ename_:Ljava/lang/Object;

    .line 4807
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 4808
    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 4810
    iput-object v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Road;->ename_:Ljava/lang/Object;

    .line 4813
    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    goto :goto_0
.end method

.method private getIdBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .prologue
    .line 4742
    iget-object v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Road;->id_:Ljava/lang/Object;

    .line 4743
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 4744
    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 4746
    iput-object v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Road;->id_:Ljava/lang/Object;

    .line 4749
    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    goto :goto_0
.end method

.method private getLevelBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .prologue
    .line 4870
    iget-object v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Road;->level_:Ljava/lang/Object;

    .line 4871
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 4872
    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 4874
    iput-object v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Road;->level_:Ljava/lang/Object;

    .line 4877
    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    goto :goto_0
.end method

.method private getNameBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .prologue
    .line 4774
    iget-object v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Road;->name_:Ljava/lang/Object;

    .line 4775
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 4776
    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 4778
    iput-object v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Road;->name_:Ljava/lang/Object;

    .line 4781
    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    goto :goto_0
.end method

.method private getWidthBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .prologue
    .line 4838
    iget-object v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Road;->width_:Ljava/lang/Object;

    .line 4839
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 4840
    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 4842
    iput-object v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Road;->width_:Ljava/lang/Object;

    .line 4845
    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    goto :goto_0
.end method

.method private initFields()V
    .locals 1

    .prologue
    .line 4946
    const-string v0, ""

    iput-object v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Road;->id_:Ljava/lang/Object;

    .line 4947
    const-string v0, ""

    iput-object v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Road;->name_:Ljava/lang/Object;

    .line 4948
    const-string v0, ""

    iput-object v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Road;->ename_:Ljava/lang/Object;

    .line 4949
    const-string v0, ""

    iput-object v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Road;->width_:Ljava/lang/Object;

    .line 4950
    const-string v0, ""

    iput-object v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Road;->level_:Ljava/lang/Object;

    .line 4951
    const-string v0, ""

    iput-object v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Road;->distance_:Ljava/lang/Object;

    .line 4952
    const-string v0, ""

    iput-object v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Road;->direction_:Ljava/lang/Object;

    .line 4953
    return-void
.end method

.method public static newBuilder()Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Road$Builder;
    .locals 1

    .prologue
    .line 5131
    # invokes: Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Road$Builder;->create()Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Road$Builder;
    invoke-static {}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Road$Builder;->access$7900()Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Road$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Road;)Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Road$Builder;
    .locals 1

    .prologue
    .line 5134
    invoke-static {}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Road;->newBuilder()Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Road$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Road$Builder;->mergeFrom(Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Road;)Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Road$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Road;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 5100
    invoke-static {}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Road;->newBuilder()Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Road$Builder;

    move-result-object v0

    .line 5101
    invoke-virtual {v0, p0}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Road$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 5102
    # invokes: Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Road$Builder;->buildParsed()Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Road;
    invoke-static {v0}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Road$Builder;->access$7800(Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Road$Builder;)Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Road;

    move-result-object v0

    .line 5104
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Road;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 5111
    invoke-static {}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Road;->newBuilder()Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Road$Builder;

    move-result-object v0

    .line 5112
    invoke-virtual {v0, p0, p1}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Road$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 5113
    # invokes: Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Road$Builder;->buildParsed()Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Road;
    invoke-static {v0}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Road$Builder;->access$7800(Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Road$Builder;)Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Road;

    move-result-object v0

    .line 5115
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Road;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 5067
    invoke-static {}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Road;->newBuilder()Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Road$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Road$Builder;->mergeFrom(Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Road$Builder;

    # invokes: Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Road$Builder;->buildParsed()Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Road;
    invoke-static {v0}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Road$Builder;->access$7800(Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Road$Builder;)Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Road;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Road;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 5073
    invoke-static {}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Road;->newBuilder()Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Road$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Road$Builder;->mergeFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Road$Builder;

    # invokes: Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Road$Builder;->buildParsed()Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Road;
    invoke-static {v0}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Road$Builder;->access$7800(Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Road$Builder;)Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Road;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Road;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 5121
    invoke-static {}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Road;->newBuilder()Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Road$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Road$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Road$Builder;

    # invokes: Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Road$Builder;->buildParsed()Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Road;
    invoke-static {v0}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Road$Builder;->access$7800(Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Road$Builder;)Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Road;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Road;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 5127
    invoke-static {}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Road;->newBuilder()Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Road$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Road$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Road$Builder;

    move-result-object v0

    # invokes: Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Road$Builder;->buildParsed()Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Road;
    invoke-static {v0}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Road$Builder;->access$7800(Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Road$Builder;)Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Road;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Road;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 5089
    invoke-static {}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Road;->newBuilder()Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Road$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Road$Builder;->mergeFrom(Ljava/io/InputStream;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Road$Builder;

    # invokes: Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Road$Builder;->buildParsed()Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Road;
    invoke-static {v0}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Road$Builder;->access$7800(Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Road$Builder;)Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Road;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Road;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 5095
    invoke-static {}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Road;->newBuilder()Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Road$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Road$Builder;->mergeFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Road$Builder;

    # invokes: Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Road$Builder;->buildParsed()Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Road;
    invoke-static {v0}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Road$Builder;->access$7800(Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Road$Builder;)Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Road;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Road;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 5078
    invoke-static {}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Road;->newBuilder()Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Road$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Road$Builder;->mergeFrom([B)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Road$Builder;

    # invokes: Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Road$Builder;->buildParsed()Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Road;
    invoke-static {v0}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Road$Builder;->access$7800(Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Road$Builder;)Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Road;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Road;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 5084
    invoke-static {}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Road;->newBuilder()Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Road$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Road$Builder;->mergeFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Road$Builder;

    # invokes: Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Road$Builder;->buildParsed()Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Road;
    invoke-static {v0}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Road$Builder;->access$7800(Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Road$Builder;)Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Road;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 4692
    invoke-virtual {p0}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Road;->getDefaultInstanceForType()Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Road;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 4692
    invoke-virtual {p0}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Road;->getDefaultInstanceForType()Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Road;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Road;
    .locals 1

    .prologue
    .line 4707
    sget-object v0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Road;->defaultInstance:Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Road;

    return-object v0
.end method

.method public getDirection()Ljava/lang/String;
    .locals 2

    .prologue
    .line 4920
    iget-object v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Road;->direction_:Ljava/lang/Object;

    .line 4921
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 4922
    check-cast v0, Ljava/lang/String;

    .line 4930
    :goto_0
    return-object v0

    .line 4924
    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 4926
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 4927
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4928
    iput-object v1, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Road;->direction_:Ljava/lang/Object;

    :cond_1
    move-object v0, v1

    .line 4930
    goto :goto_0
.end method

.method public getDistance()Ljava/lang/String;
    .locals 2

    .prologue
    .line 4888
    iget-object v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Road;->distance_:Ljava/lang/Object;

    .line 4889
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 4890
    check-cast v0, Ljava/lang/String;

    .line 4898
    :goto_0
    return-object v0

    .line 4892
    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 4894
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 4895
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4896
    iput-object v1, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Road;->distance_:Ljava/lang/Object;

    :cond_1
    move-object v0, v1

    .line 4898
    goto :goto_0
.end method

.method public getEname()Ljava/lang/String;
    .locals 2

    .prologue
    .line 4792
    iget-object v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Road;->ename_:Ljava/lang/Object;

    .line 4793
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 4794
    check-cast v0, Ljava/lang/String;

    .line 4802
    :goto_0
    return-object v0

    .line 4796
    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 4798
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 4799
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4800
    iput-object v1, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Road;->ename_:Ljava/lang/Object;

    :cond_1
    move-object v0, v1

    .line 4802
    goto :goto_0
.end method

.method public getId()Ljava/lang/String;
    .locals 2

    .prologue
    .line 4728
    iget-object v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Road;->id_:Ljava/lang/Object;

    .line 4729
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 4730
    check-cast v0, Ljava/lang/String;

    .line 4738
    :goto_0
    return-object v0

    .line 4732
    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 4734
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 4735
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4736
    iput-object v1, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Road;->id_:Ljava/lang/Object;

    :cond_1
    move-object v0, v1

    .line 4738
    goto :goto_0
.end method

.method public getLevel()Ljava/lang/String;
    .locals 2

    .prologue
    .line 4856
    iget-object v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Road;->level_:Ljava/lang/Object;

    .line 4857
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 4858
    check-cast v0, Ljava/lang/String;

    .line 4866
    :goto_0
    return-object v0

    .line 4860
    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 4862
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 4863
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4864
    iput-object v1, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Road;->level_:Ljava/lang/Object;

    :cond_1
    move-object v0, v1

    .line 4866
    goto :goto_0
.end method

.method public getName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 4760
    iget-object v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Road;->name_:Ljava/lang/Object;

    .line 4761
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 4762
    check-cast v0, Ljava/lang/String;

    .line 4770
    :goto_0
    return-object v0

    .line 4764
    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 4766
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 4767
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4768
    iput-object v1, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Road;->name_:Ljava/lang/Object;

    :cond_1
    move-object v0, v1

    .line 4770
    goto :goto_0
.end method

.method public getSerializedSize()I
    .locals 5

    .prologue
    const/4 v4, 0x4

    const/4 v3, 0x2

    const/4 v2, 0x1

    .line 5020
    iget v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Road;->memoizedSerializedSize:I

    .line 5021
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 5054
    :goto_0
    return v0

    .line 5023
    :cond_0
    const/4 v0, 0x0

    .line 5024
    iget v1, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Road;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v2, :cond_1

    .line 5025
    invoke-direct {p0}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Road;->getIdBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v1

    add-int/2addr v0, v1

    .line 5028
    :cond_1
    iget v1, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Road;->bitField0_:I

    and-int/lit8 v1, v1, 0x2

    if-ne v1, v3, :cond_2

    .line 5029
    invoke-direct {p0}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Road;->getNameBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v1

    add-int/2addr v0, v1

    .line 5032
    :cond_2
    iget v1, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Road;->bitField0_:I

    and-int/lit8 v1, v1, 0x4

    if-ne v1, v4, :cond_3

    .line 5033
    const/4 v1, 0x3

    invoke-direct {p0}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Road;->getEnameBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v1

    add-int/2addr v0, v1

    .line 5036
    :cond_3
    iget v1, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Road;->bitField0_:I

    and-int/lit8 v1, v1, 0x8

    const/16 v2, 0x8

    if-ne v1, v2, :cond_4

    .line 5037
    invoke-direct {p0}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Road;->getWidthBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-static {v4, v1}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v1

    add-int/2addr v0, v1

    .line 5040
    :cond_4
    iget v1, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Road;->bitField0_:I

    and-int/lit8 v1, v1, 0x10

    const/16 v2, 0x10

    if-ne v1, v2, :cond_5

    .line 5041
    const/4 v1, 0x5

    invoke-direct {p0}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Road;->getLevelBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v1

    add-int/2addr v0, v1

    .line 5044
    :cond_5
    iget v1, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Road;->bitField0_:I

    and-int/lit8 v1, v1, 0x20

    const/16 v2, 0x20

    if-ne v1, v2, :cond_6

    .line 5045
    const/4 v1, 0x6

    invoke-direct {p0}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Road;->getDistanceBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v1

    add-int/2addr v0, v1

    .line 5048
    :cond_6
    iget v1, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Road;->bitField0_:I

    and-int/lit8 v1, v1, 0x40

    const/16 v2, 0x40

    if-ne v1, v2, :cond_7

    .line 5049
    const/4 v1, 0x7

    invoke-direct {p0}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Road;->getDirectionBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v1

    add-int/2addr v0, v1

    .line 5052
    :cond_7
    invoke-virtual {p0}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Road;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protobuf/UnknownFieldSet;->getSerializedSize()I

    move-result v1

    add-int/2addr v0, v1

    .line 5053
    iput v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Road;->memoizedSerializedSize:I

    goto/16 :goto_0
.end method

.method public getWidth()Ljava/lang/String;
    .locals 2

    .prologue
    .line 4824
    iget-object v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Road;->width_:Ljava/lang/Object;

    .line 4825
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 4826
    check-cast v0, Ljava/lang/String;

    .line 4834
    :goto_0
    return-object v0

    .line 4828
    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 4830
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 4831
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4832
    iput-object v1, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Road;->width_:Ljava/lang/Object;

    :cond_1
    move-object v0, v1

    .line 4834
    goto :goto_0
.end method

.method public hasDirection()Z
    .locals 2

    .prologue
    .line 4917
    iget v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Road;->bitField0_:I

    and-int/lit8 v0, v0, 0x40

    const/16 v1, 0x40

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasDistance()Z
    .locals 2

    .prologue
    .line 4885
    iget v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Road;->bitField0_:I

    and-int/lit8 v0, v0, 0x20

    const/16 v1, 0x20

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasEname()Z
    .locals 2

    .prologue
    .line 4789
    iget v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Road;->bitField0_:I

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

.method public hasId()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 4725
    iget v1, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Road;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasLevel()Z
    .locals 2

    .prologue
    .line 4853
    iget v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Road;->bitField0_:I

    and-int/lit8 v0, v0, 0x10

    const/16 v1, 0x10

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
    .line 4757
    iget v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Road;->bitField0_:I

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

.method public hasWidth()Z
    .locals 2

    .prologue
    .line 4821
    iget v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Road;->bitField0_:I

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
    .line 4717
    # getter for: Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf;->internal_static_Road_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    invoke-static {}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf;->access$7700()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 4956
    iget-byte v2, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Road;->memoizedIsInitialized:B

    .line 4957
    const/4 v3, -0x1

    if-eq v2, v3, :cond_1

    if-ne v2, v0, :cond_0

    :goto_0
    move v1, v0

    .line 4988
    :goto_1
    return v1

    :cond_0
    move v0, v1

    .line 4957
    goto :goto_0

    .line 4959
    :cond_1
    invoke-virtual {p0}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Road;->hasId()Z

    move-result v2

    if-nez v2, :cond_2

    .line 4960
    iput-byte v1, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Road;->memoizedIsInitialized:B

    goto :goto_1

    .line 4963
    :cond_2
    invoke-virtual {p0}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Road;->hasName()Z

    move-result v2

    if-nez v2, :cond_3

    .line 4964
    iput-byte v1, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Road;->memoizedIsInitialized:B

    goto :goto_1

    .line 4967
    :cond_3
    invoke-virtual {p0}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Road;->hasEname()Z

    move-result v2

    if-nez v2, :cond_4

    .line 4968
    iput-byte v1, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Road;->memoizedIsInitialized:B

    goto :goto_1

    .line 4971
    :cond_4
    invoke-virtual {p0}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Road;->hasWidth()Z

    move-result v2

    if-nez v2, :cond_5

    .line 4972
    iput-byte v1, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Road;->memoizedIsInitialized:B

    goto :goto_1

    .line 4975
    :cond_5
    invoke-virtual {p0}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Road;->hasLevel()Z

    move-result v2

    if-nez v2, :cond_6

    .line 4976
    iput-byte v1, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Road;->memoizedIsInitialized:B

    goto :goto_1

    .line 4979
    :cond_6
    invoke-virtual {p0}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Road;->hasDistance()Z

    move-result v2

    if-nez v2, :cond_7

    .line 4980
    iput-byte v1, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Road;->memoizedIsInitialized:B

    goto :goto_1

    .line 4983
    :cond_7
    invoke-virtual {p0}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Road;->hasDirection()Z

    move-result v2

    if-nez v2, :cond_8

    .line 4984
    iput-byte v1, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Road;->memoizedIsInitialized:B

    goto :goto_1

    .line 4987
    :cond_8
    iput-byte v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Road;->memoizedIsInitialized:B

    move v1, v0

    .line 4988
    goto :goto_1
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 4692
    invoke-virtual {p0}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Road;->newBuilderForType()Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Road$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic newBuilderForType(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 4692
    invoke-virtual {p0, p1}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Road;->newBuilderForType(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Road$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 4692
    invoke-virtual {p0}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Road;->newBuilderForType()Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Road$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Road$Builder;
    .locals 1

    .prologue
    .line 5132
    invoke-static {}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Road;->newBuilder()Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Road$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected newBuilderForType(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Road$Builder;
    .locals 2

    .prologue
    .line 5141
    new-instance v0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Road$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Road$Builder;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;Lcom/mapabc/mapapi/core/z;)V

    .line 5142
    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 4692
    invoke-virtual {p0}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Road;->toBuilder()Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Road$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 4692
    invoke-virtual {p0}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Road;->toBuilder()Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Road$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Road$Builder;
    .locals 1

    .prologue
    .line 5136
    invoke-static {p0}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Road;->newBuilder(Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Road;)Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Road$Builder;

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
    .line 5061
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

    .line 4993
    invoke-virtual {p0}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Road;->getSerializedSize()I

    .line 4994
    iget v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Road;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_0

    .line 4995
    invoke-direct {p0}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Road;->getIdBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 4997
    :cond_0
    iget v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Road;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-ne v0, v2, :cond_1

    .line 4998
    invoke-direct {p0}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Road;->getNameBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 5000
    :cond_1
    iget v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Road;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-ne v0, v3, :cond_2

    .line 5001
    const/4 v0, 0x3

    invoke-direct {p0}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Road;->getEnameBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 5003
    :cond_2
    iget v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Road;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    const/16 v1, 0x8

    if-ne v0, v1, :cond_3

    .line 5004
    invoke-direct {p0}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Road;->getWidthBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p1, v3, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 5006
    :cond_3
    iget v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Road;->bitField0_:I

    and-int/lit8 v0, v0, 0x10

    const/16 v1, 0x10

    if-ne v0, v1, :cond_4

    .line 5007
    const/4 v0, 0x5

    invoke-direct {p0}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Road;->getLevelBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 5009
    :cond_4
    iget v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Road;->bitField0_:I

    and-int/lit8 v0, v0, 0x20

    const/16 v1, 0x20

    if-ne v0, v1, :cond_5

    .line 5010
    const/4 v0, 0x6

    invoke-direct {p0}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Road;->getDistanceBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 5012
    :cond_5
    iget v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Road;->bitField0_:I

    and-int/lit8 v0, v0, 0x40

    const/16 v1, 0x40

    if-ne v0, v1, :cond_6

    .line 5013
    const/4 v0, 0x7

    invoke-direct {p0}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Road;->getDirectionBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 5015
    :cond_6
    invoke-virtual {p0}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Road;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/UnknownFieldSet;->writeTo(Lcom/google/protobuf/CodedOutputStream;)V

    .line 5016
    return-void
.end method
