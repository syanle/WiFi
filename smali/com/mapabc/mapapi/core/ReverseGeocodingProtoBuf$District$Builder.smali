.class public final Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$District$Builder;
.super Lcom/google/protobuf/GeneratedMessage$Builder;
.source "ReverseGeocodingProtoBuf.java"

# interfaces
.implements Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$DistrictOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$District;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessage$Builder",
        "<",
        "Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$District$Builder;",
        ">;",
        "Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$DistrictOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private bounds_:Ljava/lang/Object;

.field private code_:Ljava/lang/Object;

.field private name_:Ljava/lang/Object;

.field private x_:Ljava/lang/Object;

.field private y_:Ljava/lang/Object;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 3728
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;-><init>()V

    .line 3908
    const-string v0, ""

    iput-object v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$District$Builder;->name_:Ljava/lang/Object;

    .line 3944
    const-string v0, ""

    iput-object v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$District$Builder;->code_:Ljava/lang/Object;

    .line 3980
    const-string v0, ""

    iput-object v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$District$Builder;->x_:Ljava/lang/Object;

    .line 4016
    const-string v0, ""

    iput-object v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$District$Builder;->y_:Ljava/lang/Object;

    .line 4052
    const-string v0, ""

    iput-object v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$District$Builder;->bounds_:Ljava/lang/Object;

    .line 3729
    invoke-direct {p0}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$District$Builder;->maybeForceBuilderInitialization()V

    .line 3730
    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V
    .locals 1

    .prologue
    .line 3733
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessage$Builder;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V

    .line 3908
    const-string v0, ""

    iput-object v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$District$Builder;->name_:Ljava/lang/Object;

    .line 3944
    const-string v0, ""

    iput-object v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$District$Builder;->code_:Ljava/lang/Object;

    .line 3980
    const-string v0, ""

    iput-object v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$District$Builder;->x_:Ljava/lang/Object;

    .line 4016
    const-string v0, ""

    iput-object v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$District$Builder;->y_:Ljava/lang/Object;

    .line 4052
    const-string v0, ""

    iput-object v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$District$Builder;->bounds_:Ljava/lang/Object;

    .line 3734
    invoke-direct {p0}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$District$Builder;->maybeForceBuilderInitialization()V

    .line 3735
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;Lcom/mapabc/mapapi/core/z;)V
    .locals 0

    .prologue
    .line 3714
    invoke-direct {p0, p1}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$District$Builder;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V

    return-void
.end method

.method static synthetic access$5600(Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$District$Builder;)Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$District;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 3714
    invoke-direct {p0}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$District$Builder;->buildParsed()Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$District;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$5700()Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$District$Builder;
    .locals 1

    .prologue
    .line 3714
    invoke-static {}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$District$Builder;->create()Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$District$Builder;

    move-result-object v0

    return-object v0
.end method

.method private buildParsed()Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$District;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 3782
    invoke-virtual {p0}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$District$Builder;->buildPartial()Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$District;

    move-result-object v0

    .line 3783
    invoke-virtual {v0}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$District;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_0

    .line 3784
    invoke-static {v0}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$District$Builder;->newUninitializedMessageException(Lcom/google/protobuf/Message;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/UninitializedMessageException;->asInvalidProtocolBufferException()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0

    .line 3787
    :cond_0
    return-object v0
.end method

.method private static create()Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$District$Builder;
    .locals 1

    .prologue
    .line 3741
    new-instance v0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$District$Builder;

    invoke-direct {v0}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$District$Builder;-><init>()V

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 3719
    # getter for: Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf;->internal_static_District_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;
    invoke-static {}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf;->access$5400()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .locals 1

    .prologue
    .line 3737
    # getter for: Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$District;->alwaysUseFieldBuilders:Z
    invoke-static {}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$District;->access$5900()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3739
    :cond_0
    return-void
.end method


# virtual methods
.method public bridge synthetic build()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 3714
    invoke-virtual {p0}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$District$Builder;->build()Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$District;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 3714
    invoke-virtual {p0}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$District$Builder;->build()Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$District;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$District;
    .locals 2

    .prologue
    .line 3773
    invoke-virtual {p0}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$District$Builder;->buildPartial()Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$District;

    move-result-object v0

    .line 3774
    invoke-virtual {v0}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$District;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_0

    .line 3775
    invoke-static {v0}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$District$Builder;->newUninitializedMessageException(Lcom/google/protobuf/Message;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0

    .line 3777
    :cond_0
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 3714
    invoke-virtual {p0}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$District$Builder;->buildPartial()Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$District;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 3714
    invoke-virtual {p0}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$District$Builder;->buildPartial()Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$District;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$District;
    .locals 5

    .prologue
    const/4 v0, 0x1

    .line 3791
    new-instance v2, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$District;

    const/4 v1, 0x0

    invoke-direct {v2, p0, v1}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$District;-><init>(Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$District$Builder;Lcom/mapabc/mapapi/core/z;)V

    .line 3792
    iget v3, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$District$Builder;->bitField0_:I

    .line 3793
    const/4 v1, 0x0

    .line 3794
    and-int/lit8 v4, v3, 0x1

    if-ne v4, v0, :cond_4

    .line 3797
    :goto_0
    iget-object v1, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$District$Builder;->name_:Ljava/lang/Object;

    # setter for: Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$District;->name_:Ljava/lang/Object;
    invoke-static {v2, v1}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$District;->access$6102(Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$District;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3798
    and-int/lit8 v1, v3, 0x2

    const/4 v4, 0x2

    if-ne v1, v4, :cond_0

    .line 3799
    or-int/lit8 v0, v0, 0x2

    .line 3801
    :cond_0
    iget-object v1, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$District$Builder;->code_:Ljava/lang/Object;

    # setter for: Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$District;->code_:Ljava/lang/Object;
    invoke-static {v2, v1}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$District;->access$6202(Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$District;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3802
    and-int/lit8 v1, v3, 0x4

    const/4 v4, 0x4

    if-ne v1, v4, :cond_1

    .line 3803
    or-int/lit8 v0, v0, 0x4

    .line 3805
    :cond_1
    iget-object v1, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$District$Builder;->x_:Ljava/lang/Object;

    # setter for: Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$District;->x_:Ljava/lang/Object;
    invoke-static {v2, v1}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$District;->access$6302(Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$District;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3806
    and-int/lit8 v1, v3, 0x8

    const/16 v4, 0x8

    if-ne v1, v4, :cond_2

    .line 3807
    or-int/lit8 v0, v0, 0x8

    .line 3809
    :cond_2
    iget-object v1, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$District$Builder;->y_:Ljava/lang/Object;

    # setter for: Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$District;->y_:Ljava/lang/Object;
    invoke-static {v2, v1}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$District;->access$6402(Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$District;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3810
    and-int/lit8 v1, v3, 0x10

    const/16 v3, 0x10

    if-ne v1, v3, :cond_3

    .line 3811
    or-int/lit8 v0, v0, 0x10

    .line 3813
    :cond_3
    iget-object v1, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$District$Builder;->bounds_:Ljava/lang/Object;

    # setter for: Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$District;->bounds_:Ljava/lang/Object;
    invoke-static {v2, v1}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$District;->access$6502(Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$District;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3814
    # setter for: Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$District;->bitField0_:I
    invoke-static {v2, v0}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$District;->access$6602(Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$District;I)I

    .line 3815
    invoke-virtual {p0}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$District$Builder;->onBuilt()V

    .line 3816
    return-object v2

    :cond_4
    move v0, v1

    goto :goto_0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 3714
    invoke-virtual {p0}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$District$Builder;->clear()Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$District$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessage$Builder;
    .locals 1

    .prologue
    .line 3714
    invoke-virtual {p0}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$District$Builder;->clear()Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$District$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 3714
    invoke-virtual {p0}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$District$Builder;->clear()Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$District$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 3714
    invoke-virtual {p0}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$District$Builder;->clear()Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$District$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$District$Builder;
    .locals 1

    .prologue
    .line 3745
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->clear()Lcom/google/protobuf/GeneratedMessage$Builder;

    .line 3746
    const-string v0, ""

    iput-object v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$District$Builder;->name_:Ljava/lang/Object;

    .line 3747
    iget v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$District$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$District$Builder;->bitField0_:I

    .line 3748
    const-string v0, ""

    iput-object v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$District$Builder;->code_:Ljava/lang/Object;

    .line 3749
    iget v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$District$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$District$Builder;->bitField0_:I

    .line 3750
    const-string v0, ""

    iput-object v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$District$Builder;->x_:Ljava/lang/Object;

    .line 3751
    iget v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$District$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$District$Builder;->bitField0_:I

    .line 3752
    const-string v0, ""

    iput-object v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$District$Builder;->y_:Ljava/lang/Object;

    .line 3753
    iget v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$District$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$District$Builder;->bitField0_:I

    .line 3754
    const-string v0, ""

    iput-object v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$District$Builder;->bounds_:Ljava/lang/Object;

    .line 3755
    iget v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$District$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$District$Builder;->bitField0_:I

    .line 3756
    return-object p0
.end method

.method public clearBounds()Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$District$Builder;
    .locals 1

    .prologue
    .line 4076
    iget v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$District$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$District$Builder;->bitField0_:I

    .line 4077
    invoke-static {}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$District;->getDefaultInstance()Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$District;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$District;->getBounds()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$District$Builder;->bounds_:Ljava/lang/Object;

    .line 4078
    invoke-virtual {p0}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$District$Builder;->onChanged()V

    .line 4079
    return-object p0
.end method

.method public clearCode()Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$District$Builder;
    .locals 1

    .prologue
    .line 3968
    iget v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$District$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$District$Builder;->bitField0_:I

    .line 3969
    invoke-static {}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$District;->getDefaultInstance()Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$District;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$District;->getCode()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$District$Builder;->code_:Ljava/lang/Object;

    .line 3970
    invoke-virtual {p0}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$District$Builder;->onChanged()V

    .line 3971
    return-object p0
.end method

.method public clearName()Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$District$Builder;
    .locals 1

    .prologue
    .line 3932
    iget v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$District$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$District$Builder;->bitField0_:I

    .line 3933
    invoke-static {}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$District;->getDefaultInstance()Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$District;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$District;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$District$Builder;->name_:Ljava/lang/Object;

    .line 3934
    invoke-virtual {p0}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$District$Builder;->onChanged()V

    .line 3935
    return-object p0
.end method

.method public clearX()Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$District$Builder;
    .locals 1

    .prologue
    .line 4004
    iget v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$District$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$District$Builder;->bitField0_:I

    .line 4005
    invoke-static {}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$District;->getDefaultInstance()Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$District;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$District;->getX()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$District$Builder;->x_:Ljava/lang/Object;

    .line 4006
    invoke-virtual {p0}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$District$Builder;->onChanged()V

    .line 4007
    return-object p0
.end method

.method public clearY()Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$District$Builder;
    .locals 1

    .prologue
    .line 4040
    iget v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$District$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$District$Builder;->bitField0_:I

    .line 4041
    invoke-static {}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$District;->getDefaultInstance()Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$District;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$District;->getY()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$District$Builder;->y_:Ljava/lang/Object;

    .line 4042
    invoke-virtual {p0}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$District$Builder;->onChanged()V

    .line 4043
    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 3714
    invoke-virtual {p0}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$District$Builder;->clone()Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$District$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .prologue
    .line 3714
    invoke-virtual {p0}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$District$Builder;->clone()Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$District$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessage$Builder;
    .locals 1

    .prologue
    .line 3714
    invoke-virtual {p0}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$District$Builder;->clone()Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$District$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 3714
    invoke-virtual {p0}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$District$Builder;->clone()Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$District$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 3714
    invoke-virtual {p0}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$District$Builder;->clone()Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$District$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$District$Builder;
    .locals 2

    .prologue
    .line 3760
    invoke-static {}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$District$Builder;->create()Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$District$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$District$Builder;->buildPartial()Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$District;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$District$Builder;->mergeFrom(Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$District;)Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$District$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 3714
    invoke-virtual {p0}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$District$Builder;->clone()Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$District$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getBounds()Ljava/lang/String;
    .locals 2

    .prologue
    .line 4057
    iget-object v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$District$Builder;->bounds_:Ljava/lang/Object;

    .line 4058
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_0

    .line 4059
    check-cast v0, Lcom/google/protobuf/ByteString;

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 4060
    iput-object v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$District$Builder;->bounds_:Ljava/lang/Object;

    .line 4063
    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Ljava/lang/String;

    goto :goto_0
.end method

.method public getCode()Ljava/lang/String;
    .locals 2

    .prologue
    .line 3949
    iget-object v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$District$Builder;->code_:Ljava/lang/Object;

    .line 3950
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_0

    .line 3951
    check-cast v0, Lcom/google/protobuf/ByteString;

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 3952
    iput-object v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$District$Builder;->code_:Ljava/lang/Object;

    .line 3955
    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Ljava/lang/String;

    goto :goto_0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 3714
    invoke-virtual {p0}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$District$Builder;->getDefaultInstanceForType()Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$District;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 3714
    invoke-virtual {p0}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$District$Builder;->getDefaultInstanceForType()Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$District;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$District;
    .locals 1

    .prologue
    .line 3769
    invoke-static {}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$District;->getDefaultInstance()Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$District;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 3765
    invoke-static {}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$District;->getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 3913
    iget-object v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$District$Builder;->name_:Ljava/lang/Object;

    .line 3914
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_0

    .line 3915
    check-cast v0, Lcom/google/protobuf/ByteString;

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 3916
    iput-object v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$District$Builder;->name_:Ljava/lang/Object;

    .line 3919
    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Ljava/lang/String;

    goto :goto_0
.end method

.method public getX()Ljava/lang/String;
    .locals 2

    .prologue
    .line 3985
    iget-object v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$District$Builder;->x_:Ljava/lang/Object;

    .line 3986
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_0

    .line 3987
    check-cast v0, Lcom/google/protobuf/ByteString;

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 3988
    iput-object v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$District$Builder;->x_:Ljava/lang/Object;

    .line 3991
    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Ljava/lang/String;

    goto :goto_0
.end method

.method public getY()Ljava/lang/String;
    .locals 2

    .prologue
    .line 4021
    iget-object v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$District$Builder;->y_:Ljava/lang/Object;

    .line 4022
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_0

    .line 4023
    check-cast v0, Lcom/google/protobuf/ByteString;

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 4024
    iput-object v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$District$Builder;->y_:Ljava/lang/Object;

    .line 4027
    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Ljava/lang/String;

    goto :goto_0
.end method

.method public hasBounds()Z
    .locals 2

    .prologue
    .line 4054
    iget v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$District$Builder;->bitField0_:I

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
    .line 3946
    iget v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$District$Builder;->bitField0_:I

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

    .line 3910
    iget v1, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$District$Builder;->bitField0_:I

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
    .line 3982
    iget v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$District$Builder;->bitField0_:I

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
    .line 4018
    iget v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$District$Builder;->bitField0_:I

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
    .line 3724
    # getter for: Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf;->internal_static_District_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    invoke-static {}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf;->access$5500()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 1

    .prologue
    .line 3850
    const/4 v0, 0x1

    return v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 3714
    invoke-virtual {p0, p1, p2}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$District$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$District$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 3714
    invoke-virtual {p0, p1}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$District$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$District$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 3714
    invoke-virtual {p0, p1, p2}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$District$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$District$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/Message$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 3714
    invoke-virtual {p0, p1, p2}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$District$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$District$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 3714
    invoke-virtual {p0, p1}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$District$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$District$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 3714
    invoke-virtual {p0, p1, p2}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$District$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$District$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$District$Builder;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 3857
    invoke-virtual {p0}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$District$Builder;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v0

    invoke-static {v0}, Lcom/google/protobuf/UnknownFieldSet;->newBuilder(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/UnknownFieldSet$Builder;

    move-result-object v0

    .line 3861
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v1

    .line 3862
    sparse-switch v1, :sswitch_data_0

    .line 3868
    invoke-virtual {p0, p1, v0, p2, v1}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$District$Builder;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/UnknownFieldSet$Builder;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 3870
    invoke-virtual {v0}, Lcom/google/protobuf/UnknownFieldSet$Builder;->build()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$District$Builder;->setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessage$Builder;

    .line 3871
    invoke-virtual {p0}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$District$Builder;->onChanged()V

    .line 3872
    :goto_1
    return-object p0

    .line 3864
    :sswitch_0
    invoke-virtual {v0}, Lcom/google/protobuf/UnknownFieldSet$Builder;->build()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$District$Builder;->setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessage$Builder;

    .line 3865
    invoke-virtual {p0}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$District$Builder;->onChanged()V

    goto :goto_1

    .line 3877
    :sswitch_1
    iget v1, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$District$Builder;->bitField0_:I

    or-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$District$Builder;->bitField0_:I

    .line 3878
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    iput-object v1, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$District$Builder;->name_:Ljava/lang/Object;

    goto :goto_0

    .line 3882
    :sswitch_2
    iget v1, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$District$Builder;->bitField0_:I

    or-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$District$Builder;->bitField0_:I

    .line 3883
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    iput-object v1, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$District$Builder;->code_:Ljava/lang/Object;

    goto :goto_0

    .line 3887
    :sswitch_3
    iget v1, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$District$Builder;->bitField0_:I

    or-int/lit8 v1, v1, 0x4

    iput v1, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$District$Builder;->bitField0_:I

    .line 3888
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    iput-object v1, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$District$Builder;->x_:Ljava/lang/Object;

    goto :goto_0

    .line 3892
    :sswitch_4
    iget v1, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$District$Builder;->bitField0_:I

    or-int/lit8 v1, v1, 0x8

    iput v1, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$District$Builder;->bitField0_:I

    .line 3893
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    iput-object v1, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$District$Builder;->y_:Ljava/lang/Object;

    goto :goto_0

    .line 3897
    :sswitch_5
    iget v1, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$District$Builder;->bitField0_:I

    or-int/lit8 v1, v1, 0x10

    iput v1, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$District$Builder;->bitField0_:I

    .line 3898
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    iput-object v1, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$District$Builder;->bounds_:Ljava/lang/Object;

    goto :goto_0

    .line 3862
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
        0x1a -> :sswitch_3
        0x22 -> :sswitch_4
        0x2a -> :sswitch_5
    .end sparse-switch
.end method

.method public mergeFrom(Lcom/google/protobuf/Message;)Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$District$Builder;
    .locals 1

    .prologue
    .line 3820
    instance-of v0, p1, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$District;

    if-eqz v0, :cond_0

    .line 3821
    check-cast p1, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$District;

    invoke-virtual {p0, p1}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$District$Builder;->mergeFrom(Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$District;)Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$District$Builder;

    move-result-object p0

    .line 3824
    :goto_0
    return-object p0

    .line 3823
    :cond_0
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessage$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;

    goto :goto_0
.end method

.method public mergeFrom(Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$District;)Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$District$Builder;
    .locals 1

    .prologue
    .line 3829
    invoke-static {}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$District;->getDefaultInstance()Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$District;

    move-result-object v0

    if-ne p1, v0, :cond_0

    .line 3846
    :goto_0
    return-object p0

    .line 3830
    :cond_0
    invoke-virtual {p1}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$District;->hasName()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3831
    invoke-virtual {p1}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$District;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$District$Builder;->setName(Ljava/lang/String;)Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$District$Builder;

    .line 3833
    :cond_1
    invoke-virtual {p1}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$District;->hasCode()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3834
    invoke-virtual {p1}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$District;->getCode()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$District$Builder;->setCode(Ljava/lang/String;)Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$District$Builder;

    .line 3836
    :cond_2
    invoke-virtual {p1}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$District;->hasX()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 3837
    invoke-virtual {p1}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$District;->getX()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$District$Builder;->setX(Ljava/lang/String;)Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$District$Builder;

    .line 3839
    :cond_3
    invoke-virtual {p1}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$District;->hasY()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 3840
    invoke-virtual {p1}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$District;->getY()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$District$Builder;->setY(Ljava/lang/String;)Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$District$Builder;

    .line 3842
    :cond_4
    invoke-virtual {p1}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$District;->hasBounds()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 3843
    invoke-virtual {p1}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$District;->getBounds()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$District$Builder;->setBounds(Ljava/lang/String;)Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$District$Builder;

    .line 3845
    :cond_5
    invoke-virtual {p1}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$District;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$District$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessage$Builder;

    goto :goto_0
.end method

.method public setBounds(Ljava/lang/String;)Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$District$Builder;
    .locals 1

    .prologue
    .line 4067
    if-nez p1, :cond_0

    .line 4068
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 4070
    :cond_0
    iget v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$District$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$District$Builder;->bitField0_:I

    .line 4071
    iput-object p1, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$District$Builder;->bounds_:Ljava/lang/Object;

    .line 4072
    invoke-virtual {p0}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$District$Builder;->onChanged()V

    .line 4073
    return-object p0
.end method

.method setBounds(Lcom/google/protobuf/ByteString;)V
    .locals 1

    .prologue
    .line 4082
    iget v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$District$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$District$Builder;->bitField0_:I

    .line 4083
    iput-object p1, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$District$Builder;->bounds_:Ljava/lang/Object;

    .line 4084
    invoke-virtual {p0}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$District$Builder;->onChanged()V

    .line 4085
    return-void
.end method

.method public setCode(Ljava/lang/String;)Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$District$Builder;
    .locals 1

    .prologue
    .line 3959
    if-nez p1, :cond_0

    .line 3960
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 3962
    :cond_0
    iget v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$District$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$District$Builder;->bitField0_:I

    .line 3963
    iput-object p1, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$District$Builder;->code_:Ljava/lang/Object;

    .line 3964
    invoke-virtual {p0}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$District$Builder;->onChanged()V

    .line 3965
    return-object p0
.end method

.method setCode(Lcom/google/protobuf/ByteString;)V
    .locals 1

    .prologue
    .line 3974
    iget v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$District$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$District$Builder;->bitField0_:I

    .line 3975
    iput-object p1, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$District$Builder;->code_:Ljava/lang/Object;

    .line 3976
    invoke-virtual {p0}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$District$Builder;->onChanged()V

    .line 3977
    return-void
.end method

.method public setName(Ljava/lang/String;)Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$District$Builder;
    .locals 1

    .prologue
    .line 3923
    if-nez p1, :cond_0

    .line 3924
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 3926
    :cond_0
    iget v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$District$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$District$Builder;->bitField0_:I

    .line 3927
    iput-object p1, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$District$Builder;->name_:Ljava/lang/Object;

    .line 3928
    invoke-virtual {p0}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$District$Builder;->onChanged()V

    .line 3929
    return-object p0
.end method

.method setName(Lcom/google/protobuf/ByteString;)V
    .locals 1

    .prologue
    .line 3938
    iget v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$District$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$District$Builder;->bitField0_:I

    .line 3939
    iput-object p1, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$District$Builder;->name_:Ljava/lang/Object;

    .line 3940
    invoke-virtual {p0}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$District$Builder;->onChanged()V

    .line 3941
    return-void
.end method

.method public setX(Ljava/lang/String;)Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$District$Builder;
    .locals 1

    .prologue
    .line 3995
    if-nez p1, :cond_0

    .line 3996
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 3998
    :cond_0
    iget v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$District$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$District$Builder;->bitField0_:I

    .line 3999
    iput-object p1, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$District$Builder;->x_:Ljava/lang/Object;

    .line 4000
    invoke-virtual {p0}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$District$Builder;->onChanged()V

    .line 4001
    return-object p0
.end method

.method setX(Lcom/google/protobuf/ByteString;)V
    .locals 1

    .prologue
    .line 4010
    iget v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$District$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$District$Builder;->bitField0_:I

    .line 4011
    iput-object p1, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$District$Builder;->x_:Ljava/lang/Object;

    .line 4012
    invoke-virtual {p0}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$District$Builder;->onChanged()V

    .line 4013
    return-void
.end method

.method public setY(Ljava/lang/String;)Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$District$Builder;
    .locals 1

    .prologue
    .line 4031
    if-nez p1, :cond_0

    .line 4032
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 4034
    :cond_0
    iget v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$District$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$District$Builder;->bitField0_:I

    .line 4035
    iput-object p1, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$District$Builder;->y_:Ljava/lang/Object;

    .line 4036
    invoke-virtual {p0}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$District$Builder;->onChanged()V

    .line 4037
    return-object p0
.end method

.method setY(Lcom/google/protobuf/ByteString;)V
    .locals 1

    .prologue
    .line 4046
    iget v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$District$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$District$Builder;->bitField0_:I

    .line 4047
    iput-object p1, p0, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$District$Builder;->y_:Ljava/lang/Object;

    .line 4048
    invoke-virtual {p0}, Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$District$Builder;->onChanged()V

    .line 4049
    return-void
.end method
