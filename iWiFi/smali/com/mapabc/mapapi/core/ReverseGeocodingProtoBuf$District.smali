.class public final Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$District;
.super Lcom/google/protobuf/GeneratedMessage;
.source "ReverseGeocodingProtoBuf.java"

# interfaces
.implements Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$DistrictOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "District"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$District$Builder;
    }
.end annotation


# static fields
.field public static final BOUNDS_FIELD_NUMBER:I = 0x5

.field public static final CODE_FIELD_NUMBER:I = 0x2

.field public static final NAME_FIELD_NUMBER:I = 0x1

.field public static final X_FIELD_NUMBER:I = 0x3

.field public static final Y_FIELD_NUMBER:I = 0x4

.field private static final defaultInstance:Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$District;

.field private static final serialVersionUID:J


# instance fields
.field private bitField0_:I

.field private bounds_:Ljava/lang/Object;

.field private code_:Ljava/lang/Object;

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I

.field private name_:Ljava/lang/Object;

.field private x_:Ljava/lang/Object;

.field private y_:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 4091
    new-instance v0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$District;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$District;-><init>(Z)V

    sput-object v0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$District;->defaultInstance:Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$District;

    .line 4092
    sget-object v0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$District;->defaultInstance:Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$District;

    invoke-direct {v0}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$District;->initFields()V

    .line 4093
    return-void
.end method

.method private constructor <init>(Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$District$Builder;)V
    .locals 1

    .prologue
    const/4 v0, -0x1

    .line 3375
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessage;-><init>(Lcom/google/protobuf/GeneratedMessage$Builder;)V

    .line 3566
    iput-byte v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$District;->memoizedIsInitialized:B

    .line 3596
    iput v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$District;->memoizedSerializedSize:I

    .line 3376
    return-void
.end method

.method synthetic constructor <init>(Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$District$Builder;Lcom/mapabc/mapapi/core/z;)V
    .locals 0

    .prologue
    .line 3370
    invoke-direct {p0, p1}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$District;-><init>(Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$District$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 1

    .prologue
    const/4 v0, -0x1

    .line 3377
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage;-><init>()V

    .line 3566
    iput-byte v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$District;->memoizedIsInitialized:B

    .line 3596
    iput v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$District;->memoizedSerializedSize:I

    .line 3377
    return-void
.end method

.method static synthetic access$5900()Z
    .locals 1

    .prologue
    .line 3370
    sget-boolean v0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$District;->alwaysUseFieldBuilders:Z

    return v0
.end method

.method static synthetic access$6102(Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$District;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .prologue
    .line 3370
    iput-object p1, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$District;->name_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$6202(Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$District;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .prologue
    .line 3370
    iput-object p1, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$District;->code_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$6302(Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$District;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .prologue
    .line 3370
    iput-object p1, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$District;->x_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$6402(Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$District;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .prologue
    .line 3370
    iput-object p1, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$District;->y_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$6502(Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$District;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .prologue
    .line 3370
    iput-object p1, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$District;->bounds_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$6602(Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$District;I)I
    .locals 0

    .prologue
    .line 3370
    iput p1, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$District;->bitField0_:I

    return p1
.end method

.method private getBoundsBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .prologue
    .line 3548
    iget-object v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$District;->bounds_:Ljava/lang/Object;

    .line 3549
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 3550
    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 3552
    iput-object v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$District;->bounds_:Ljava/lang/Object;

    .line 3555
    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    goto :goto_0
.end method

.method private getCodeBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .prologue
    .line 3452
    iget-object v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$District;->code_:Ljava/lang/Object;

    .line 3453
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 3454
    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 3456
    iput-object v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$District;->code_:Ljava/lang/Object;

    .line 3459
    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    goto :goto_0
.end method

.method public static getDefaultInstance()Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$District;
    .locals 1

    .prologue
    .line 3381
    sget-object v0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$District;->defaultInstance:Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$District;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 3390
    # getter for: Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf;->internal_static_District_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;
    invoke-static {}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf;->access$5400()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method private getNameBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .prologue
    .line 3420
    iget-object v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$District;->name_:Ljava/lang/Object;

    .line 3421
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 3422
    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 3424
    iput-object v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$District;->name_:Ljava/lang/Object;

    .line 3427
    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    goto :goto_0
.end method

.method private getXBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .prologue
    .line 3484
    iget-object v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$District;->x_:Ljava/lang/Object;

    .line 3485
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 3486
    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 3488
    iput-object v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$District;->x_:Ljava/lang/Object;

    .line 3491
    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    goto :goto_0
.end method

.method private getYBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .prologue
    .line 3516
    iget-object v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$District;->y_:Ljava/lang/Object;

    .line 3517
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 3518
    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 3520
    iput-object v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$District;->y_:Ljava/lang/Object;

    .line 3523
    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    goto :goto_0
.end method

.method private initFields()V
    .locals 1

    .prologue
    .line 3560
    const-string v0, ""

    iput-object v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$District;->name_:Ljava/lang/Object;

    .line 3561
    const-string v0, ""

    iput-object v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$District;->code_:Ljava/lang/Object;

    .line 3562
    const-string v0, ""

    iput-object v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$District;->x_:Ljava/lang/Object;

    .line 3563
    const-string v0, ""

    iput-object v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$District;->y_:Ljava/lang/Object;

    .line 3564
    const-string v0, ""

    iput-object v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$District;->bounds_:Ljava/lang/Object;

    .line 3565
    return-void
.end method

.method public static newBuilder()Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$District$Builder;
    .locals 1

    .prologue
    .line 3701
    # invokes: Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$District$Builder;->create()Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$District$Builder;
    invoke-static {}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$District$Builder;->access$5700()Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$District$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$District;)Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$District$Builder;
    .locals 1

    .prologue
    .line 3704
    invoke-static {}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$District;->newBuilder()Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$District$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$District$Builder;->mergeFrom(Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$District;)Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$District$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$District;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 3670
    invoke-static {}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$District;->newBuilder()Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$District$Builder;

    move-result-object v0

    .line 3671
    invoke-virtual {v0, p0}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$District$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3672
    # invokes: Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$District$Builder;->buildParsed()Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$District;
    invoke-static {v0}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$District$Builder;->access$5600(Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$District$Builder;)Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$District;

    move-result-object v0

    .line 3674
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$District;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 3681
    invoke-static {}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$District;->newBuilder()Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$District$Builder;

    move-result-object v0

    .line 3682
    invoke-virtual {v0, p0, p1}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$District$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3683
    # invokes: Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$District$Builder;->buildParsed()Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$District;
    invoke-static {v0}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$District$Builder;->access$5600(Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$District$Builder;)Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$District;

    move-result-object v0

    .line 3685
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$District;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 3637
    invoke-static {}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$District;->newBuilder()Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$District$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$District$Builder;->mergeFrom(Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$District$Builder;

    # invokes: Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$District$Builder;->buildParsed()Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$District;
    invoke-static {v0}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$District$Builder;->access$5600(Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$District$Builder;)Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$District;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$District;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 3643
    invoke-static {}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$District;->newBuilder()Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$District$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$District$Builder;->mergeFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$District$Builder;

    # invokes: Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$District$Builder;->buildParsed()Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$District;
    invoke-static {v0}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$District$Builder;->access$5600(Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$District$Builder;)Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$District;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$District;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 3691
    invoke-static {}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$District;->newBuilder()Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$District$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$District$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$District$Builder;

    # invokes: Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$District$Builder;->buildParsed()Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$District;
    invoke-static {v0}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$District$Builder;->access$5600(Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$District$Builder;)Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$District;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$District;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 3697
    invoke-static {}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$District;->newBuilder()Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$District$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$District$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$District$Builder;

    move-result-object v0

    # invokes: Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$District$Builder;->buildParsed()Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$District;
    invoke-static {v0}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$District$Builder;->access$5600(Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$District$Builder;)Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$District;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$District;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 3659
    invoke-static {}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$District;->newBuilder()Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$District$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$District$Builder;->mergeFrom(Ljava/io/InputStream;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$District$Builder;

    # invokes: Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$District$Builder;->buildParsed()Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$District;
    invoke-static {v0}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$District$Builder;->access$5600(Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$District$Builder;)Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$District;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$District;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 3665
    invoke-static {}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$District;->newBuilder()Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$District$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$District$Builder;->mergeFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$District$Builder;

    # invokes: Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$District$Builder;->buildParsed()Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$District;
    invoke-static {v0}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$District$Builder;->access$5600(Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$District$Builder;)Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$District;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$District;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 3648
    invoke-static {}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$District;->newBuilder()Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$District$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$District$Builder;->mergeFrom([B)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$District$Builder;

    # invokes: Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$District$Builder;->buildParsed()Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$District;
    invoke-static {v0}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$District$Builder;->access$5600(Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$District$Builder;)Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$District;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$District;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 3654
    invoke-static {}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$District;->newBuilder()Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$District$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$District$Builder;->mergeFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$District$Builder;

    # invokes: Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$District$Builder;->buildParsed()Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$District;
    invoke-static {v0}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$District$Builder;->access$5600(Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$District$Builder;)Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$District;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getBounds()Ljava/lang/String;
    .locals 2

    .prologue
    .line 3534
    iget-object v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$District;->bounds_:Ljava/lang/Object;

    .line 3535
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 3536
    check-cast v0, Ljava/lang/String;

    .line 3544
    :goto_0
    return-object v0

    .line 3538
    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 3540
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 3541
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3542
    iput-object v1, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$District;->bounds_:Ljava/lang/Object;

    :cond_1
    move-object v0, v1

    .line 3544
    goto :goto_0
.end method

.method public getCode()Ljava/lang/String;
    .locals 2

    .prologue
    .line 3438
    iget-object v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$District;->code_:Ljava/lang/Object;

    .line 3439
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 3440
    check-cast v0, Ljava/lang/String;

    .line 3448
    :goto_0
    return-object v0

    .line 3442
    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 3444
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 3445
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3446
    iput-object v1, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$District;->code_:Ljava/lang/Object;

    :cond_1
    move-object v0, v1

    .line 3448
    goto :goto_0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 3370
    invoke-virtual {p0}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$District;->getDefaultInstanceForType()Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$District;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 3370
    invoke-virtual {p0}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$District;->getDefaultInstanceForType()Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$District;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$District;
    .locals 1

    .prologue
    .line 3385
    sget-object v0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$District;->defaultInstance:Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$District;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 3406
    iget-object v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$District;->name_:Ljava/lang/Object;

    .line 3407
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 3408
    check-cast v0, Ljava/lang/String;

    .line 3416
    :goto_0
    return-object v0

    .line 3410
    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 3412
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 3413
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3414
    iput-object v1, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$District;->name_:Ljava/lang/Object;

    :cond_1
    move-object v0, v1

    .line 3416
    goto :goto_0
.end method

.method public getSerializedSize()I
    .locals 5

    .prologue
    const/4 v4, 0x4

    const/4 v3, 0x2

    const/4 v2, 0x1

    .line 3598
    iget v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$District;->memoizedSerializedSize:I

    .line 3599
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 3624
    :goto_0
    return v0

    .line 3601
    :cond_0
    const/4 v0, 0x0

    .line 3602
    iget v1, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$District;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v2, :cond_1

    .line 3603
    invoke-direct {p0}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$District;->getNameBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v1

    add-int/2addr v0, v1

    .line 3606
    :cond_1
    iget v1, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$District;->bitField0_:I

    and-int/lit8 v1, v1, 0x2

    if-ne v1, v3, :cond_2

    .line 3607
    invoke-direct {p0}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$District;->getCodeBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v1

    add-int/2addr v0, v1

    .line 3610
    :cond_2
    iget v1, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$District;->bitField0_:I

    and-int/lit8 v1, v1, 0x4

    if-ne v1, v4, :cond_3

    .line 3611
    const/4 v1, 0x3

    invoke-direct {p0}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$District;->getXBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v1

    add-int/2addr v0, v1

    .line 3614
    :cond_3
    iget v1, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$District;->bitField0_:I

    and-int/lit8 v1, v1, 0x8

    const/16 v2, 0x8

    if-ne v1, v2, :cond_4

    .line 3615
    invoke-direct {p0}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$District;->getYBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-static {v4, v1}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v1

    add-int/2addr v0, v1

    .line 3618
    :cond_4
    iget v1, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$District;->bitField0_:I

    and-int/lit8 v1, v1, 0x10

    const/16 v2, 0x10

    if-ne v1, v2, :cond_5

    .line 3619
    const/4 v1, 0x5

    invoke-direct {p0}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$District;->getBoundsBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v1

    add-int/2addr v0, v1

    .line 3622
    :cond_5
    invoke-virtual {p0}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$District;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protobuf/UnknownFieldSet;->getSerializedSize()I

    move-result v1

    add-int/2addr v0, v1

    .line 3623
    iput v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$District;->memoizedSerializedSize:I

    goto :goto_0
.end method

.method public getX()Ljava/lang/String;
    .locals 2

    .prologue
    .line 3470
    iget-object v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$District;->x_:Ljava/lang/Object;

    .line 3471
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 3472
    check-cast v0, Ljava/lang/String;

    .line 3480
    :goto_0
    return-object v0

    .line 3474
    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 3476
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 3477
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3478
    iput-object v1, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$District;->x_:Ljava/lang/Object;

    :cond_1
    move-object v0, v1

    .line 3480
    goto :goto_0
.end method

.method public getY()Ljava/lang/String;
    .locals 2

    .prologue
    .line 3502
    iget-object v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$District;->y_:Ljava/lang/Object;

    .line 3503
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 3504
    check-cast v0, Ljava/lang/String;

    .line 3512
    :goto_0
    return-object v0

    .line 3506
    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 3508
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 3509
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3510
    iput-object v1, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$District;->y_:Ljava/lang/Object;

    :cond_1
    move-object v0, v1

    .line 3512
    goto :goto_0
.end method

.method public hasBounds()Z
    .locals 2

    .prologue
    .line 3531
    iget v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$District;->bitField0_:I

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

.method public hasCode()Z
    .locals 2

    .prologue
    .line 3435
    iget v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$District;->bitField0_:I

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

    .line 3403
    iget v1, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$District;->bitField0_:I

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
    .line 3467
    iget v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$District;->bitField0_:I

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
    .line 3499
    iget v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$District;->bitField0_:I

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
    .line 3395
    # getter for: Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf;->internal_static_District_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    invoke-static {}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf;->access$5500()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 3568
    iget-byte v1, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$District;->memoizedIsInitialized:B

    .line 3569
    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    if-ne v1, v0, :cond_0

    .line 3572
    :goto_0
    return v0

    .line 3569
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 3571
    :cond_1
    iput-byte v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$District;->memoizedIsInitialized:B

    goto :goto_0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 3370
    invoke-virtual {p0}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$District;->newBuilderForType()Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$District$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic newBuilderForType(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 3370
    invoke-virtual {p0, p1}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$District;->newBuilderForType(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$District$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 3370
    invoke-virtual {p0}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$District;->newBuilderForType()Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$District$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$District$Builder;
    .locals 1

    .prologue
    .line 3702
    invoke-static {}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$District;->newBuilder()Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$District$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected newBuilderForType(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$District$Builder;
    .locals 2

    .prologue
    .line 3711
    new-instance v0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$District$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$District$Builder;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;Lcom/mapabc/mapapi/core/z;)V

    .line 3712
    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 3370
    invoke-virtual {p0}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$District;->toBuilder()Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$District$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 3370
    invoke-virtual {p0}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$District;->toBuilder()Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$District$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$District$Builder;
    .locals 1

    .prologue
    .line 3706
    invoke-static {p0}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$District;->newBuilder(Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$District;)Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$District$Builder;

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
    .line 3631
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

    .line 3577
    invoke-virtual {p0}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$District;->getSerializedSize()I

    .line 3578
    iget v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$District;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_0

    .line 3579
    invoke-direct {p0}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$District;->getNameBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 3581
    :cond_0
    iget v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$District;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-ne v0, v2, :cond_1

    .line 3582
    invoke-direct {p0}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$District;->getCodeBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 3584
    :cond_1
    iget v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$District;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-ne v0, v3, :cond_2

    .line 3585
    const/4 v0, 0x3

    invoke-direct {p0}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$District;->getXBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 3587
    :cond_2
    iget v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$District;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    const/16 v1, 0x8

    if-ne v0, v1, :cond_3

    .line 3588
    invoke-direct {p0}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$District;->getYBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p1, v3, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 3590
    :cond_3
    iget v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$District;->bitField0_:I

    and-int/lit8 v0, v0, 0x10

    const/16 v1, 0x10

    if-ne v0, v1, :cond_4

    .line 3591
    const/4 v0, 0x5

    invoke-direct {p0}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$District;->getBoundsBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 3593
    :cond_4
    invoke-virtual {p0}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$District;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/UnknownFieldSet;->writeTo(Lcom/google/protobuf/CodedOutputStream;)V

    .line 3594
    return-void
.end method
