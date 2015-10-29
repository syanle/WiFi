.class public final Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCRequest$Builder;
.super Lcom/google/protobuf/GeneratedMessage$Builder;
.source "RGCProtoBuf.java"

# interfaces
.implements Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCRequestOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessage$Builder",
        "<",
        "Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCRequest$Builder;",
        ">;",
        "Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCRequestOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private commonBuilder_:Lcom/google/protobuf/SingleFieldBuilder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/SingleFieldBuilder",
            "<",
            "Lcom/mapabc/mapapi/core/CommonProtoBuf$Common;",
            "Lcom/mapabc/mapapi/core/CommonProtoBuf$Common$Builder;",
            "Lcom/mapabc/mapapi/core/CommonProtoBuf$CommonOrBuilder;",
            ">;"
        }
    .end annotation
.end field

.field private common_:Lcom/mapabc/mapapi/core/CommonProtoBuf$Common;

.field private coors_:Ljava/lang/Object;

.field private cr_:Ljava/lang/Object;

.field private flag_:Ljava/lang/Object;

.field private ts_:Ljava/lang/Object;

.field private type_:Ljava/lang/Object;

.field private x1_:Ljava/lang/Object;

.field private x2_:Ljava/lang/Object;

.field private y1_:Ljava/lang/Object;

.field private y2_:Ljava/lang/Object;

.field private z_:Ljava/lang/Object;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 646
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;-><init>()V

    .line 931
    invoke-static {}, Lcom/mapabc/mapapi/core/CommonProtoBuf$Common;->getDefaultInstance()Lcom/mapabc/mapapi/core/CommonProtoBuf$Common;

    move-result-object v0

    iput-object v0, p0, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCRequest$Builder;->common_:Lcom/mapabc/mapapi/core/CommonProtoBuf$Common;

    .line 1021
    const-string v0, ""

    iput-object v0, p0, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCRequest$Builder;->x1_:Ljava/lang/Object;

    .line 1057
    const-string v0, ""

    iput-object v0, p0, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCRequest$Builder;->y1_:Ljava/lang/Object;

    .line 1093
    const-string v0, ""

    iput-object v0, p0, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCRequest$Builder;->x2_:Ljava/lang/Object;

    .line 1129
    const-string v0, ""

    iput-object v0, p0, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCRequest$Builder;->y2_:Ljava/lang/Object;

    .line 1165
    const-string v0, ""

    iput-object v0, p0, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCRequest$Builder;->coors_:Ljava/lang/Object;

    .line 1201
    const-string v0, ""

    iput-object v0, p0, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCRequest$Builder;->cr_:Ljava/lang/Object;

    .line 1237
    const-string v0, ""

    iput-object v0, p0, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCRequest$Builder;->flag_:Ljava/lang/Object;

    .line 1273
    const-string v0, ""

    iput-object v0, p0, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCRequest$Builder;->type_:Ljava/lang/Object;

    .line 1309
    const-string v0, ""

    iput-object v0, p0, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCRequest$Builder;->z_:Ljava/lang/Object;

    .line 1345
    const-string v0, ""

    iput-object v0, p0, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCRequest$Builder;->ts_:Ljava/lang/Object;

    .line 647
    invoke-direct {p0}, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCRequest$Builder;->maybeForceBuilderInitialization()V

    .line 648
    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V
    .locals 1

    .prologue
    .line 651
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessage$Builder;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V

    .line 931
    invoke-static {}, Lcom/mapabc/mapapi/core/CommonProtoBuf$Common;->getDefaultInstance()Lcom/mapabc/mapapi/core/CommonProtoBuf$Common;

    move-result-object v0

    iput-object v0, p0, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCRequest$Builder;->common_:Lcom/mapabc/mapapi/core/CommonProtoBuf$Common;

    .line 1021
    const-string v0, ""

    iput-object v0, p0, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCRequest$Builder;->x1_:Ljava/lang/Object;

    .line 1057
    const-string v0, ""

    iput-object v0, p0, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCRequest$Builder;->y1_:Ljava/lang/Object;

    .line 1093
    const-string v0, ""

    iput-object v0, p0, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCRequest$Builder;->x2_:Ljava/lang/Object;

    .line 1129
    const-string v0, ""

    iput-object v0, p0, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCRequest$Builder;->y2_:Ljava/lang/Object;

    .line 1165
    const-string v0, ""

    iput-object v0, p0, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCRequest$Builder;->coors_:Ljava/lang/Object;

    .line 1201
    const-string v0, ""

    iput-object v0, p0, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCRequest$Builder;->cr_:Ljava/lang/Object;

    .line 1237
    const-string v0, ""

    iput-object v0, p0, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCRequest$Builder;->flag_:Ljava/lang/Object;

    .line 1273
    const-string v0, ""

    iput-object v0, p0, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCRequest$Builder;->type_:Ljava/lang/Object;

    .line 1309
    const-string v0, ""

    iput-object v0, p0, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCRequest$Builder;->z_:Ljava/lang/Object;

    .line 1345
    const-string v0, ""

    iput-object v0, p0, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCRequest$Builder;->ts_:Ljava/lang/Object;

    .line 652
    invoke-direct {p0}, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCRequest$Builder;->maybeForceBuilderInitialization()V

    .line 653
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;Lcom/mapabc/mapapi/core/v;)V
    .locals 0

    .prologue
    .line 632
    invoke-direct {p0, p1}, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCRequest$Builder;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V

    return-void
.end method

.method static synthetic access$200(Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCRequest$Builder;)Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCRequest;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 632
    invoke-direct {p0}, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCRequest$Builder;->buildParsed()Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCRequest;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300()Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCRequest$Builder;
    .locals 1

    .prologue
    .line 632
    invoke-static {}, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCRequest$Builder;->create()Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method private buildParsed()Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCRequest;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 717
    invoke-virtual {p0}, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCRequest$Builder;->buildPartial()Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCRequest;

    move-result-object v0

    .line 718
    invoke-virtual {v0}, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCRequest;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_0

    .line 719
    invoke-static {v0}, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCRequest$Builder;->newUninitializedMessageException(Lcom/google/protobuf/Message;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/UninitializedMessageException;->asInvalidProtocolBufferException()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0

    .line 722
    :cond_0
    return-object v0
.end method

.method private static create()Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCRequest$Builder;
    .locals 1

    .prologue
    .line 660
    new-instance v0, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCRequest$Builder;

    invoke-direct {v0}, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCRequest$Builder;-><init>()V

    return-object v0
.end method

.method private getCommonFieldBuilder()Lcom/google/protobuf/SingleFieldBuilder;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/SingleFieldBuilder",
            "<",
            "Lcom/mapabc/mapapi/core/CommonProtoBuf$Common;",
            "Lcom/mapabc/mapapi/core/CommonProtoBuf$Common$Builder;",
            "Lcom/mapabc/mapapi/core/CommonProtoBuf$CommonOrBuilder;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1009
    iget-object v0, p0, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCRequest$Builder;->commonBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_0

    .line 1010
    new-instance v0, Lcom/google/protobuf/SingleFieldBuilder;

    iget-object v1, p0, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCRequest$Builder;->common_:Lcom/mapabc/mapapi/core/CommonProtoBuf$Common;

    invoke-virtual {p0}, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCRequest$Builder;->getParentForChildren()Lcom/google/protobuf/GeneratedMessage$BuilderParent;

    move-result-object v2

    invoke-virtual {p0}, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCRequest$Builder;->isClean()Z

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lcom/google/protobuf/SingleFieldBuilder;-><init>(Lcom/google/protobuf/GeneratedMessage;Lcom/google/protobuf/GeneratedMessage$BuilderParent;Z)V

    iput-object v0, p0, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCRequest$Builder;->commonBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    .line 1015
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCRequest$Builder;->common_:Lcom/mapabc/mapapi/core/CommonProtoBuf$Common;

    .line 1017
    :cond_0
    iget-object v0, p0, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCRequest$Builder;->commonBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 637
    # getter for: Lcom/mapabc/mapapi/core/RGCProtoBuf;->internal_static_RGCRequest_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;
    invoke-static {}, Lcom/mapabc/mapapi/core/RGCProtoBuf;->access$000()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .locals 1

    .prologue
    .line 655
    # getter for: Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCRequest;->alwaysUseFieldBuilders:Z
    invoke-static {}, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCRequest;->access$500()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 656
    invoke-direct {p0}, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCRequest$Builder;->getCommonFieldBuilder()Lcom/google/protobuf/SingleFieldBuilder;

    .line 658
    :cond_0
    return-void
.end method


# virtual methods
.method public bridge synthetic build()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 632
    invoke-virtual {p0}, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCRequest$Builder;->build()Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCRequest;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 632
    invoke-virtual {p0}, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCRequest$Builder;->build()Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCRequest;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCRequest;
    .locals 2

    .prologue
    .line 708
    invoke-virtual {p0}, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCRequest$Builder;->buildPartial()Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCRequest;

    move-result-object v0

    .line 709
    invoke-virtual {v0}, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCRequest;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_0

    .line 710
    invoke-static {v0}, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCRequest$Builder;->newUninitializedMessageException(Lcom/google/protobuf/Message;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0

    .line 712
    :cond_0
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 632
    invoke-virtual {p0}, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCRequest$Builder;->buildPartial()Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCRequest;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 632
    invoke-virtual {p0}, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCRequest$Builder;->buildPartial()Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCRequest;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCRequest;
    .locals 5

    .prologue
    const/4 v0, 0x1

    .line 726
    new-instance v2, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCRequest;

    const/4 v1, 0x0

    invoke-direct {v2, p0, v1}, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCRequest;-><init>(Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCRequest$Builder;Lcom/mapabc/mapapi/core/v;)V

    .line 727
    iget v3, p0, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCRequest$Builder;->bitField0_:I

    .line 728
    const/4 v1, 0x0

    .line 729
    and-int/lit8 v4, v3, 0x1

    if-ne v4, v0, :cond_0

    move v1, v0

    .line 732
    :cond_0
    iget-object v0, p0, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCRequest$Builder;->commonBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_b

    .line 733
    iget-object v0, p0, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCRequest$Builder;->common_:Lcom/mapabc/mapapi/core/CommonProtoBuf$Common;

    # setter for: Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCRequest;->common_:Lcom/mapabc/mapapi/core/CommonProtoBuf$Common;
    invoke-static {v2, v0}, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCRequest;->access$702(Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCRequest;Lcom/mapabc/mapapi/core/CommonProtoBuf$Common;)Lcom/mapabc/mapapi/core/CommonProtoBuf$Common;

    .line 737
    :goto_0
    and-int/lit8 v0, v3, 0x2

    const/4 v4, 0x2

    if-ne v0, v4, :cond_1

    .line 738
    or-int/lit8 v1, v1, 0x2

    .line 740
    :cond_1
    iget-object v0, p0, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCRequest$Builder;->x1_:Ljava/lang/Object;

    # setter for: Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCRequest;->x1_:Ljava/lang/Object;
    invoke-static {v2, v0}, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCRequest;->access$802(Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCRequest;Ljava/lang/Object;)Ljava/lang/Object;

    .line 741
    and-int/lit8 v0, v3, 0x4

    const/4 v4, 0x4

    if-ne v0, v4, :cond_2

    .line 742
    or-int/lit8 v1, v1, 0x4

    .line 744
    :cond_2
    iget-object v0, p0, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCRequest$Builder;->y1_:Ljava/lang/Object;

    # setter for: Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCRequest;->y1_:Ljava/lang/Object;
    invoke-static {v2, v0}, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCRequest;->access$902(Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCRequest;Ljava/lang/Object;)Ljava/lang/Object;

    .line 745
    and-int/lit8 v0, v3, 0x8

    const/16 v4, 0x8

    if-ne v0, v4, :cond_3

    .line 746
    or-int/lit8 v1, v1, 0x8

    .line 748
    :cond_3
    iget-object v0, p0, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCRequest$Builder;->x2_:Ljava/lang/Object;

    # setter for: Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCRequest;->x2_:Ljava/lang/Object;
    invoke-static {v2, v0}, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCRequest;->access$1002(Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCRequest;Ljava/lang/Object;)Ljava/lang/Object;

    .line 749
    and-int/lit8 v0, v3, 0x10

    const/16 v4, 0x10

    if-ne v0, v4, :cond_4

    .line 750
    or-int/lit8 v1, v1, 0x10

    .line 752
    :cond_4
    iget-object v0, p0, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCRequest$Builder;->y2_:Ljava/lang/Object;

    # setter for: Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCRequest;->y2_:Ljava/lang/Object;
    invoke-static {v2, v0}, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCRequest;->access$1102(Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCRequest;Ljava/lang/Object;)Ljava/lang/Object;

    .line 753
    and-int/lit8 v0, v3, 0x20

    const/16 v4, 0x20

    if-ne v0, v4, :cond_5

    .line 754
    or-int/lit8 v1, v1, 0x20

    .line 756
    :cond_5
    iget-object v0, p0, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCRequest$Builder;->coors_:Ljava/lang/Object;

    # setter for: Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCRequest;->coors_:Ljava/lang/Object;
    invoke-static {v2, v0}, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCRequest;->access$1202(Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCRequest;Ljava/lang/Object;)Ljava/lang/Object;

    .line 757
    and-int/lit8 v0, v3, 0x40

    const/16 v4, 0x40

    if-ne v0, v4, :cond_6

    .line 758
    or-int/lit8 v1, v1, 0x40

    .line 760
    :cond_6
    iget-object v0, p0, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCRequest$Builder;->cr_:Ljava/lang/Object;

    # setter for: Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCRequest;->cr_:Ljava/lang/Object;
    invoke-static {v2, v0}, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCRequest;->access$1302(Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCRequest;Ljava/lang/Object;)Ljava/lang/Object;

    .line 761
    and-int/lit16 v0, v3, 0x80

    const/16 v4, 0x80

    if-ne v0, v4, :cond_7

    .line 762
    or-int/lit16 v1, v1, 0x80

    .line 764
    :cond_7
    iget-object v0, p0, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCRequest$Builder;->flag_:Ljava/lang/Object;

    # setter for: Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCRequest;->flag_:Ljava/lang/Object;
    invoke-static {v2, v0}, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCRequest;->access$1402(Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCRequest;Ljava/lang/Object;)Ljava/lang/Object;

    .line 765
    and-int/lit16 v0, v3, 0x100

    const/16 v4, 0x100

    if-ne v0, v4, :cond_8

    .line 766
    or-int/lit16 v1, v1, 0x100

    .line 768
    :cond_8
    iget-object v0, p0, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCRequest$Builder;->type_:Ljava/lang/Object;

    # setter for: Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCRequest;->type_:Ljava/lang/Object;
    invoke-static {v2, v0}, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCRequest;->access$1502(Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCRequest;Ljava/lang/Object;)Ljava/lang/Object;

    .line 769
    and-int/lit16 v0, v3, 0x200

    const/16 v4, 0x200

    if-ne v0, v4, :cond_9

    .line 770
    or-int/lit16 v1, v1, 0x200

    .line 772
    :cond_9
    iget-object v0, p0, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCRequest$Builder;->z_:Ljava/lang/Object;

    # setter for: Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCRequest;->z_:Ljava/lang/Object;
    invoke-static {v2, v0}, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCRequest;->access$1602(Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCRequest;Ljava/lang/Object;)Ljava/lang/Object;

    .line 773
    and-int/lit16 v0, v3, 0x400

    const/16 v3, 0x400

    if-ne v0, v3, :cond_a

    .line 774
    or-int/lit16 v1, v1, 0x400

    .line 776
    :cond_a
    iget-object v0, p0, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCRequest$Builder;->ts_:Ljava/lang/Object;

    # setter for: Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCRequest;->ts_:Ljava/lang/Object;
    invoke-static {v2, v0}, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCRequest;->access$1702(Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCRequest;Ljava/lang/Object;)Ljava/lang/Object;

    .line 777
    # setter for: Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCRequest;->bitField0_:I
    invoke-static {v2, v1}, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCRequest;->access$1802(Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCRequest;I)I

    .line 778
    invoke-virtual {p0}, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCRequest$Builder;->onBuilt()V

    .line 779
    return-object v2

    .line 735
    :cond_b
    iget-object v0, p0, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCRequest$Builder;->commonBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilder;->build()Lcom/google/protobuf/GeneratedMessage;

    move-result-object v0

    check-cast v0, Lcom/mapabc/mapapi/core/CommonProtoBuf$Common;

    # setter for: Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCRequest;->common_:Lcom/mapabc/mapapi/core/CommonProtoBuf$Common;
    invoke-static {v2, v0}, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCRequest;->access$702(Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCRequest;Lcom/mapabc/mapapi/core/CommonProtoBuf$Common;)Lcom/mapabc/mapapi/core/CommonProtoBuf$Common;

    goto/16 :goto_0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 632
    invoke-virtual {p0}, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCRequest$Builder;->clear()Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessage$Builder;
    .locals 1

    .prologue
    .line 632
    invoke-virtual {p0}, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCRequest$Builder;->clear()Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 632
    invoke-virtual {p0}, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCRequest$Builder;->clear()Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 632
    invoke-virtual {p0}, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCRequest$Builder;->clear()Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCRequest$Builder;
    .locals 1

    .prologue
    .line 664
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->clear()Lcom/google/protobuf/GeneratedMessage$Builder;

    .line 665
    iget-object v0, p0, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCRequest$Builder;->commonBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_0

    .line 666
    invoke-static {}, Lcom/mapabc/mapapi/core/CommonProtoBuf$Common;->getDefaultInstance()Lcom/mapabc/mapapi/core/CommonProtoBuf$Common;

    move-result-object v0

    iput-object v0, p0, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCRequest$Builder;->common_:Lcom/mapabc/mapapi/core/CommonProtoBuf$Common;

    .line 670
    :goto_0
    iget v0, p0, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCRequest$Builder;->bitField0_:I

    .line 671
    const-string v0, ""

    iput-object v0, p0, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCRequest$Builder;->x1_:Ljava/lang/Object;

    .line 672
    iget v0, p0, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCRequest$Builder;->bitField0_:I

    .line 673
    const-string v0, ""

    iput-object v0, p0, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCRequest$Builder;->y1_:Ljava/lang/Object;

    .line 674
    iget v0, p0, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCRequest$Builder;->bitField0_:I

    .line 675
    const-string v0, ""

    iput-object v0, p0, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCRequest$Builder;->x2_:Ljava/lang/Object;

    .line 676
    iget v0, p0, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCRequest$Builder;->bitField0_:I

    .line 677
    const-string v0, ""

    iput-object v0, p0, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCRequest$Builder;->y2_:Ljava/lang/Object;

    .line 678
    iget v0, p0, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCRequest$Builder;->bitField0_:I

    .line 679
    const-string v0, ""

    iput-object v0, p0, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCRequest$Builder;->coors_:Ljava/lang/Object;

    .line 680
    iget v0, p0, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCRequest$Builder;->bitField0_:I

    .line 681
    const-string v0, ""

    iput-object v0, p0, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCRequest$Builder;->cr_:Ljava/lang/Object;

    .line 682
    iget v0, p0, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x41

    iput v0, p0, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCRequest$Builder;->bitField0_:I

    .line 683
    const-string v0, ""

    iput-object v0, p0, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCRequest$Builder;->flag_:Ljava/lang/Object;

    .line 684
    iget v0, p0, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCRequest$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x81

    iput v0, p0, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCRequest$Builder;->bitField0_:I

    .line 685
    const-string v0, ""

    iput-object v0, p0, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCRequest$Builder;->type_:Ljava/lang/Object;

    .line 686
    iget v0, p0, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCRequest$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x101

    iput v0, p0, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCRequest$Builder;->bitField0_:I

    .line 687
    const-string v0, ""

    iput-object v0, p0, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCRequest$Builder;->z_:Ljava/lang/Object;

    .line 688
    iget v0, p0, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCRequest$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x201

    iput v0, p0, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCRequest$Builder;->bitField0_:I

    .line 689
    const-string v0, ""

    iput-object v0, p0, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCRequest$Builder;->ts_:Ljava/lang/Object;

    .line 690
    iget v0, p0, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCRequest$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x401

    iput v0, p0, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCRequest$Builder;->bitField0_:I

    .line 691
    return-object p0

    .line 668
    :cond_0
    iget-object v0, p0, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCRequest$Builder;->commonBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilder;->clear()Lcom/google/protobuf/SingleFieldBuilder;

    goto :goto_0
.end method

.method public clearCommon()Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCRequest$Builder;
    .locals 1

    .prologue
    .line 985
    iget-object v0, p0, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCRequest$Builder;->commonBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_0

    .line 986
    invoke-static {}, Lcom/mapabc/mapapi/core/CommonProtoBuf$Common;->getDefaultInstance()Lcom/mapabc/mapapi/core/CommonProtoBuf$Common;

    move-result-object v0

    iput-object v0, p0, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCRequest$Builder;->common_:Lcom/mapabc/mapapi/core/CommonProtoBuf$Common;

    .line 987
    invoke-virtual {p0}, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCRequest$Builder;->onChanged()V

    .line 991
    :goto_0
    iget v0, p0, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCRequest$Builder;->bitField0_:I

    .line 992
    return-object p0

    .line 989
    :cond_0
    iget-object v0, p0, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCRequest$Builder;->commonBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilder;->clear()Lcom/google/protobuf/SingleFieldBuilder;

    goto :goto_0
.end method

.method public clearCoors()Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCRequest$Builder;
    .locals 1

    .prologue
    .line 1189
    iget v0, p0, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCRequest$Builder;->bitField0_:I

    .line 1190
    invoke-static {}, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCRequest;->getDefaultInstance()Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCRequest;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCRequest;->getCoors()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCRequest$Builder;->coors_:Ljava/lang/Object;

    .line 1191
    invoke-virtual {p0}, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCRequest$Builder;->onChanged()V

    .line 1192
    return-object p0
.end method

.method public clearCr()Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCRequest$Builder;
    .locals 1

    .prologue
    .line 1225
    iget v0, p0, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x41

    iput v0, p0, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCRequest$Builder;->bitField0_:I

    .line 1226
    invoke-static {}, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCRequest;->getDefaultInstance()Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCRequest;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCRequest;->getCr()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCRequest$Builder;->cr_:Ljava/lang/Object;

    .line 1227
    invoke-virtual {p0}, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCRequest$Builder;->onChanged()V

    .line 1228
    return-object p0
.end method

.method public clearFlag()Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCRequest$Builder;
    .locals 1

    .prologue
    .line 1261
    iget v0, p0, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCRequest$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x81

    iput v0, p0, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCRequest$Builder;->bitField0_:I

    .line 1262
    invoke-static {}, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCRequest;->getDefaultInstance()Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCRequest;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCRequest;->getFlag()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCRequest$Builder;->flag_:Ljava/lang/Object;

    .line 1263
    invoke-virtual {p0}, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCRequest$Builder;->onChanged()V

    .line 1264
    return-object p0
.end method

.method public clearTs()Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCRequest$Builder;
    .locals 1

    .prologue
    .line 1369
    iget v0, p0, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCRequest$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x401

    iput v0, p0, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCRequest$Builder;->bitField0_:I

    .line 1370
    invoke-static {}, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCRequest;->getDefaultInstance()Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCRequest;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCRequest;->getTs()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCRequest$Builder;->ts_:Ljava/lang/Object;

    .line 1371
    invoke-virtual {p0}, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCRequest$Builder;->onChanged()V

    .line 1372
    return-object p0
.end method

.method public clearType()Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCRequest$Builder;
    .locals 1

    .prologue
    .line 1297
    iget v0, p0, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCRequest$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x101

    iput v0, p0, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCRequest$Builder;->bitField0_:I

    .line 1298
    invoke-static {}, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCRequest;->getDefaultInstance()Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCRequest;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCRequest;->getType()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCRequest$Builder;->type_:Ljava/lang/Object;

    .line 1299
    invoke-virtual {p0}, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCRequest$Builder;->onChanged()V

    .line 1300
    return-object p0
.end method

.method public clearX1()Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCRequest$Builder;
    .locals 1

    .prologue
    .line 1045
    iget v0, p0, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCRequest$Builder;->bitField0_:I

    .line 1046
    invoke-static {}, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCRequest;->getDefaultInstance()Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCRequest;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCRequest;->getX1()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCRequest$Builder;->x1_:Ljava/lang/Object;

    .line 1047
    invoke-virtual {p0}, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCRequest$Builder;->onChanged()V

    .line 1048
    return-object p0
.end method

.method public clearX2()Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCRequest$Builder;
    .locals 1

    .prologue
    .line 1117
    iget v0, p0, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCRequest$Builder;->bitField0_:I

    .line 1118
    invoke-static {}, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCRequest;->getDefaultInstance()Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCRequest;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCRequest;->getX2()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCRequest$Builder;->x2_:Ljava/lang/Object;

    .line 1119
    invoke-virtual {p0}, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCRequest$Builder;->onChanged()V

    .line 1120
    return-object p0
.end method

.method public clearY1()Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCRequest$Builder;
    .locals 1

    .prologue
    .line 1081
    iget v0, p0, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCRequest$Builder;->bitField0_:I

    .line 1082
    invoke-static {}, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCRequest;->getDefaultInstance()Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCRequest;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCRequest;->getY1()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCRequest$Builder;->y1_:Ljava/lang/Object;

    .line 1083
    invoke-virtual {p0}, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCRequest$Builder;->onChanged()V

    .line 1084
    return-object p0
.end method

.method public clearY2()Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCRequest$Builder;
    .locals 1

    .prologue
    .line 1153
    iget v0, p0, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCRequest$Builder;->bitField0_:I

    .line 1154
    invoke-static {}, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCRequest;->getDefaultInstance()Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCRequest;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCRequest;->getY2()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCRequest$Builder;->y2_:Ljava/lang/Object;

    .line 1155
    invoke-virtual {p0}, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCRequest$Builder;->onChanged()V

    .line 1156
    return-object p0
.end method

.method public clearZ()Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCRequest$Builder;
    .locals 1

    .prologue
    .line 1333
    iget v0, p0, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCRequest$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x201

    iput v0, p0, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCRequest$Builder;->bitField0_:I

    .line 1334
    invoke-static {}, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCRequest;->getDefaultInstance()Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCRequest;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCRequest;->getZ()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCRequest$Builder;->z_:Ljava/lang/Object;

    .line 1335
    invoke-virtual {p0}, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCRequest$Builder;->onChanged()V

    .line 1336
    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 632
    invoke-virtual {p0}, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCRequest$Builder;->clone()Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .prologue
    .line 632
    invoke-virtual {p0}, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCRequest$Builder;->clone()Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessage$Builder;
    .locals 1

    .prologue
    .line 632
    invoke-virtual {p0}, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCRequest$Builder;->clone()Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 632
    invoke-virtual {p0}, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCRequest$Builder;->clone()Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 632
    invoke-virtual {p0}, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCRequest$Builder;->clone()Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCRequest$Builder;
    .locals 2

    .prologue
    .line 695
    invoke-static {}, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCRequest$Builder;->create()Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCRequest$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCRequest$Builder;->buildPartial()Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCRequest;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCRequest$Builder;->mergeFrom(Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCRequest;)Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCRequest$Builder;

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
    .line 632
    invoke-virtual {p0}, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCRequest$Builder;->clone()Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getCommon()Lcom/mapabc/mapapi/core/CommonProtoBuf$Common;
    .locals 1

    .prologue
    .line 938
    iget-object v0, p0, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCRequest$Builder;->commonBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_0

    .line 939
    iget-object v0, p0, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCRequest$Builder;->common_:Lcom/mapabc/mapapi/core/CommonProtoBuf$Common;

    .line 941
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCRequest$Builder;->commonBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilder;->getMessage()Lcom/google/protobuf/GeneratedMessage;

    move-result-object v0

    check-cast v0, Lcom/mapabc/mapapi/core/CommonProtoBuf$Common;

    goto :goto_0
.end method

.method public getCommonBuilder()Lcom/mapabc/mapapi/core/CommonProtoBuf$Common$Builder;
    .locals 1

    .prologue
    .line 995
    iget v0, p0, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCRequest$Builder;->bitField0_:I

    .line 996
    invoke-virtual {p0}, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCRequest$Builder;->onChanged()V

    .line 997
    invoke-direct {p0}, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCRequest$Builder;->getCommonFieldBuilder()Lcom/google/protobuf/SingleFieldBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilder;->getBuilder()Lcom/google/protobuf/GeneratedMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/mapabc/mapapi/core/CommonProtoBuf$Common$Builder;

    return-object v0
.end method

.method public getCommonOrBuilder()Lcom/mapabc/mapapi/core/CommonProtoBuf$CommonOrBuilder;
    .locals 1

    .prologue
    .line 1000
    iget-object v0, p0, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCRequest$Builder;->commonBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-eqz v0, :cond_0

    .line 1001
    iget-object v0, p0, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCRequest$Builder;->commonBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilder;->getMessageOrBuilder()Lcom/google/protobuf/MessageOrBuilder;

    move-result-object v0

    check-cast v0, Lcom/mapabc/mapapi/core/CommonProtoBuf$CommonOrBuilder;

    .line 1003
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCRequest$Builder;->common_:Lcom/mapabc/mapapi/core/CommonProtoBuf$Common;

    goto :goto_0
.end method

.method public getCoors()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1170
    iget-object v0, p0, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCRequest$Builder;->coors_:Ljava/lang/Object;

    .line 1171
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_0

    .line 1172
    check-cast v0, Lcom/google/protobuf/ByteString;

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 1173
    iput-object v0, p0, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCRequest$Builder;->coors_:Ljava/lang/Object;

    .line 1176
    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Ljava/lang/String;

    goto :goto_0
.end method

.method public getCr()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1206
    iget-object v0, p0, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCRequest$Builder;->cr_:Ljava/lang/Object;

    .line 1207
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_0

    .line 1208
    check-cast v0, Lcom/google/protobuf/ByteString;

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 1209
    iput-object v0, p0, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCRequest$Builder;->cr_:Ljava/lang/Object;

    .line 1212
    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Ljava/lang/String;

    goto :goto_0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 632
    invoke-virtual {p0}, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCRequest$Builder;->getDefaultInstanceForType()Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCRequest;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 632
    invoke-virtual {p0}, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCRequest$Builder;->getDefaultInstanceForType()Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCRequest;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCRequest;
    .locals 1

    .prologue
    .line 704
    invoke-static {}, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCRequest;->getDefaultInstance()Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCRequest;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 700
    invoke-static {}, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCRequest;->getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public getFlag()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1242
    iget-object v0, p0, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCRequest$Builder;->flag_:Ljava/lang/Object;

    .line 1243
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_0

    .line 1244
    check-cast v0, Lcom/google/protobuf/ByteString;

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 1245
    iput-object v0, p0, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCRequest$Builder;->flag_:Ljava/lang/Object;

    .line 1248
    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Ljava/lang/String;

    goto :goto_0
.end method

.method public getTs()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1350
    iget-object v0, p0, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCRequest$Builder;->ts_:Ljava/lang/Object;

    .line 1351
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_0

    .line 1352
    check-cast v0, Lcom/google/protobuf/ByteString;

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 1353
    iput-object v0, p0, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCRequest$Builder;->ts_:Ljava/lang/Object;

    .line 1356
    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Ljava/lang/String;

    goto :goto_0
.end method

.method public getType()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1278
    iget-object v0, p0, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCRequest$Builder;->type_:Ljava/lang/Object;

    .line 1279
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_0

    .line 1280
    check-cast v0, Lcom/google/protobuf/ByteString;

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 1281
    iput-object v0, p0, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCRequest$Builder;->type_:Ljava/lang/Object;

    .line 1284
    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Ljava/lang/String;

    goto :goto_0
.end method

.method public getX1()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1026
    iget-object v0, p0, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCRequest$Builder;->x1_:Ljava/lang/Object;

    .line 1027
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_0

    .line 1028
    check-cast v0, Lcom/google/protobuf/ByteString;

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 1029
    iput-object v0, p0, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCRequest$Builder;->x1_:Ljava/lang/Object;

    .line 1032
    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Ljava/lang/String;

    goto :goto_0
.end method

.method public getX2()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1098
    iget-object v0, p0, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCRequest$Builder;->x2_:Ljava/lang/Object;

    .line 1099
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_0

    .line 1100
    check-cast v0, Lcom/google/protobuf/ByteString;

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 1101
    iput-object v0, p0, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCRequest$Builder;->x2_:Ljava/lang/Object;

    .line 1104
    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Ljava/lang/String;

    goto :goto_0
.end method

.method public getY1()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1062
    iget-object v0, p0, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCRequest$Builder;->y1_:Ljava/lang/Object;

    .line 1063
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_0

    .line 1064
    check-cast v0, Lcom/google/protobuf/ByteString;

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 1065
    iput-object v0, p0, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCRequest$Builder;->y1_:Ljava/lang/Object;

    .line 1068
    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Ljava/lang/String;

    goto :goto_0
.end method

.method public getY2()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1134
    iget-object v0, p0, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCRequest$Builder;->y2_:Ljava/lang/Object;

    .line 1135
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_0

    .line 1136
    check-cast v0, Lcom/google/protobuf/ByteString;

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 1137
    iput-object v0, p0, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCRequest$Builder;->y2_:Ljava/lang/Object;

    .line 1140
    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Ljava/lang/String;

    goto :goto_0
.end method

.method public getZ()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1314
    iget-object v0, p0, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCRequest$Builder;->z_:Ljava/lang/Object;

    .line 1315
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_0

    .line 1316
    check-cast v0, Lcom/google/protobuf/ByteString;

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 1317
    iput-object v0, p0, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCRequest$Builder;->z_:Ljava/lang/Object;

    .line 1320
    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Ljava/lang/String;

    goto :goto_0
.end method

.method public hasCommon()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 935
    iget v1, p0, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCRequest$Builder;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasCoors()Z
    .locals 2

    .prologue
    .line 1167
    iget v0, p0, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCRequest$Builder;->bitField0_:I

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

.method public hasCr()Z
    .locals 2

    .prologue
    .line 1203
    iget v0, p0, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCRequest$Builder;->bitField0_:I

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

.method public hasFlag()Z
    .locals 2

    .prologue
    .line 1239
    iget v0, p0, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCRequest$Builder;->bitField0_:I

    and-int/lit16 v0, v0, 0x80

    const/16 v1, 0x80

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasTs()Z
    .locals 2

    .prologue
    .line 1347
    iget v0, p0, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCRequest$Builder;->bitField0_:I

    and-int/lit16 v0, v0, 0x400

    const/16 v1, 0x400

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasType()Z
    .locals 2

    .prologue
    .line 1275
    iget v0, p0, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCRequest$Builder;->bitField0_:I

    and-int/lit16 v0, v0, 0x100

    const/16 v1, 0x100

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasX1()Z
    .locals 2

    .prologue
    .line 1023
    iget v0, p0, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCRequest$Builder;->bitField0_:I

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

.method public hasX2()Z
    .locals 2

    .prologue
    .line 1095
    iget v0, p0, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCRequest$Builder;->bitField0_:I

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

.method public hasY1()Z
    .locals 2

    .prologue
    .line 1059
    iget v0, p0, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCRequest$Builder;->bitField0_:I

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

.method public hasY2()Z
    .locals 2

    .prologue
    .line 1131
    iget v0, p0, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCRequest$Builder;->bitField0_:I

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

.method public hasZ()Z
    .locals 2

    .prologue
    .line 1311
    iget v0, p0, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCRequest$Builder;->bitField0_:I

    and-int/lit16 v0, v0, 0x200

    const/16 v1, 0x200

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
    .line 642
    # getter for: Lcom/mapabc/mapapi/core/RGCProtoBuf;->internal_static_RGCRequest_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    invoke-static {}, Lcom/mapabc/mapapi/core/RGCProtoBuf;->access$100()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 831
    invoke-virtual {p0}, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCRequest$Builder;->hasCommon()Z

    move-result v1

    if-nez v1, :cond_1

    .line 839
    :cond_0
    :goto_0
    return v0

    .line 835
    :cond_1
    invoke-virtual {p0}, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCRequest$Builder;->getCommon()Lcom/mapabc/mapapi/core/CommonProtoBuf$Common;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mapabc/mapapi/core/CommonProtoBuf$Common;->isInitialized()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 839
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public mergeCommon(Lcom/mapabc/mapapi/core/CommonProtoBuf$Common;)Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCRequest$Builder;
    .locals 2

    .prologue
    .line 969
    iget-object v0, p0, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCRequest$Builder;->commonBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_1

    .line 970
    iget v0, p0, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCRequest$Builder;->common_:Lcom/mapabc/mapapi/core/CommonProtoBuf$Common;

    invoke-static {}, Lcom/mapabc/mapapi/core/CommonProtoBuf$Common;->getDefaultInstance()Lcom/mapabc/mapapi/core/CommonProtoBuf$Common;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 972
    iget-object v0, p0, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCRequest$Builder;->common_:Lcom/mapabc/mapapi/core/CommonProtoBuf$Common;

    invoke-static {v0}, Lcom/mapabc/mapapi/core/CommonProtoBuf$Common;->newBuilder(Lcom/mapabc/mapapi/core/CommonProtoBuf$Common;)Lcom/mapabc/mapapi/core/CommonProtoBuf$Common$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/mapabc/mapapi/core/CommonProtoBuf$Common$Builder;->mergeFrom(Lcom/mapabc/mapapi/core/CommonProtoBuf$Common;)Lcom/mapabc/mapapi/core/CommonProtoBuf$Common$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mapabc/mapapi/core/CommonProtoBuf$Common$Builder;->buildPartial()Lcom/mapabc/mapapi/core/CommonProtoBuf$Common;

    move-result-object v0

    iput-object v0, p0, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCRequest$Builder;->common_:Lcom/mapabc/mapapi/core/CommonProtoBuf$Common;

    .line 977
    :goto_0
    invoke-virtual {p0}, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCRequest$Builder;->onChanged()V

    .line 981
    :goto_1
    iget v0, p0, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCRequest$Builder;->bitField0_:I

    .line 982
    return-object p0

    .line 975
    :cond_0
    iput-object p1, p0, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCRequest$Builder;->common_:Lcom/mapabc/mapapi/core/CommonProtoBuf$Common;

    goto :goto_0

    .line 979
    :cond_1
    iget-object v0, p0, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCRequest$Builder;->commonBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/SingleFieldBuilder;->mergeFrom(Lcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/SingleFieldBuilder;

    goto :goto_1
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 632
    invoke-virtual {p0, p1, p2}, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCRequest$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 632
    invoke-virtual {p0, p1}, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCRequest$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCRequest$Builder;

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
    .line 632
    invoke-virtual {p0, p1, p2}, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCRequest$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCRequest$Builder;

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
    .line 632
    invoke-virtual {p0, p1, p2}, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCRequest$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 632
    invoke-virtual {p0, p1}, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCRequest$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCRequest$Builder;

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
    .line 632
    invoke-virtual {p0, p1, p2}, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCRequest$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCRequest$Builder;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 846
    invoke-virtual {p0}, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCRequest$Builder;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v0

    invoke-static {v0}, Lcom/google/protobuf/UnknownFieldSet;->newBuilder(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/UnknownFieldSet$Builder;

    move-result-object v0

    .line 850
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v1

    .line 851
    sparse-switch v1, :sswitch_data_0

    .line 857
    invoke-virtual {p0, p1, v0, p2, v1}, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCRequest$Builder;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/UnknownFieldSet$Builder;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 859
    invoke-virtual {v0}, Lcom/google/protobuf/UnknownFieldSet$Builder;->build()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCRequest$Builder;->setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessage$Builder;

    .line 860
    invoke-virtual {p0}, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCRequest$Builder;->onChanged()V

    .line 861
    :goto_1
    return-object p0

    .line 853
    :sswitch_0
    invoke-virtual {v0}, Lcom/google/protobuf/UnknownFieldSet$Builder;->build()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCRequest$Builder;->setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessage$Builder;

    .line 854
    invoke-virtual {p0}, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCRequest$Builder;->onChanged()V

    goto :goto_1

    .line 866
    :sswitch_1
    invoke-static {}, Lcom/mapabc/mapapi/core/CommonProtoBuf$Common;->newBuilder()Lcom/mapabc/mapapi/core/CommonProtoBuf$Common$Builder;

    move-result-object v1

    .line 867
    invoke-virtual {p0}, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCRequest$Builder;->hasCommon()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 868
    invoke-virtual {p0}, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCRequest$Builder;->getCommon()Lcom/mapabc/mapapi/core/CommonProtoBuf$Common;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/mapabc/mapapi/core/CommonProtoBuf$Common$Builder;->mergeFrom(Lcom/mapabc/mapapi/core/CommonProtoBuf$Common;)Lcom/mapabc/mapapi/core/CommonProtoBuf$Common$Builder;

    .line 870
    :cond_1
    invoke-virtual {p1, v1, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 871
    invoke-virtual {v1}, Lcom/mapabc/mapapi/core/CommonProtoBuf$Common$Builder;->buildPartial()Lcom/mapabc/mapapi/core/CommonProtoBuf$Common;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCRequest$Builder;->setCommon(Lcom/mapabc/mapapi/core/CommonProtoBuf$Common;)Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCRequest$Builder;

    goto :goto_0

    .line 875
    :sswitch_2
    iget v1, p0, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCRequest$Builder;->bitField0_:I

    or-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCRequest$Builder;->bitField0_:I

    .line 876
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    iput-object v1, p0, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCRequest$Builder;->x1_:Ljava/lang/Object;

    goto :goto_0

    .line 880
    :sswitch_3
    iget v1, p0, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCRequest$Builder;->bitField0_:I

    or-int/lit8 v1, v1, 0x4

    iput v1, p0, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCRequest$Builder;->bitField0_:I

    .line 881
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    iput-object v1, p0, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCRequest$Builder;->y1_:Ljava/lang/Object;

    goto :goto_0

    .line 885
    :sswitch_4
    iget v1, p0, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCRequest$Builder;->bitField0_:I

    or-int/lit8 v1, v1, 0x8

    iput v1, p0, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCRequest$Builder;->bitField0_:I

    .line 886
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    iput-object v1, p0, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCRequest$Builder;->x2_:Ljava/lang/Object;

    goto :goto_0

    .line 890
    :sswitch_5
    iget v1, p0, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCRequest$Builder;->bitField0_:I

    or-int/lit8 v1, v1, 0x10

    iput v1, p0, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCRequest$Builder;->bitField0_:I

    .line 891
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    iput-object v1, p0, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCRequest$Builder;->y2_:Ljava/lang/Object;

    goto :goto_0

    .line 895
    :sswitch_6
    iget v1, p0, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCRequest$Builder;->bitField0_:I

    or-int/lit8 v1, v1, 0x20

    iput v1, p0, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCRequest$Builder;->bitField0_:I

    .line 896
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    iput-object v1, p0, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCRequest$Builder;->coors_:Ljava/lang/Object;

    goto :goto_0

    .line 900
    :sswitch_7
    iget v1, p0, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCRequest$Builder;->bitField0_:I

    or-int/lit8 v1, v1, 0x40

    iput v1, p0, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCRequest$Builder;->bitField0_:I

    .line 901
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    iput-object v1, p0, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCRequest$Builder;->cr_:Ljava/lang/Object;

    goto/16 :goto_0

    .line 905
    :sswitch_8
    iget v1, p0, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCRequest$Builder;->bitField0_:I

    or-int/lit16 v1, v1, 0x80

    iput v1, p0, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCRequest$Builder;->bitField0_:I

    .line 906
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    iput-object v1, p0, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCRequest$Builder;->flag_:Ljava/lang/Object;

    goto/16 :goto_0

    .line 910
    :sswitch_9
    iget v1, p0, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCRequest$Builder;->bitField0_:I

    or-int/lit16 v1, v1, 0x100

    iput v1, p0, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCRequest$Builder;->bitField0_:I

    .line 911
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    iput-object v1, p0, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCRequest$Builder;->type_:Ljava/lang/Object;

    goto/16 :goto_0

    .line 915
    :sswitch_a
    iget v1, p0, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCRequest$Builder;->bitField0_:I

    or-int/lit16 v1, v1, 0x200

    iput v1, p0, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCRequest$Builder;->bitField0_:I

    .line 916
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    iput-object v1, p0, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCRequest$Builder;->z_:Ljava/lang/Object;

    goto/16 :goto_0

    .line 920
    :sswitch_b
    iget v1, p0, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCRequest$Builder;->bitField0_:I

    or-int/lit16 v1, v1, 0x400

    iput v1, p0, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCRequest$Builder;->bitField0_:I

    .line 921
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    iput-object v1, p0, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCRequest$Builder;->ts_:Ljava/lang/Object;

    goto/16 :goto_0

    .line 851
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
        0x1a -> :sswitch_3
        0x22 -> :sswitch_4
        0x2a -> :sswitch_5
        0x32 -> :sswitch_6
        0x3a -> :sswitch_7
        0x42 -> :sswitch_8
        0x4a -> :sswitch_9
        0x52 -> :sswitch_a
        0x5a -> :sswitch_b
    .end sparse-switch
.end method

.method public mergeFrom(Lcom/google/protobuf/Message;)Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCRequest$Builder;
    .locals 1

    .prologue
    .line 783
    instance-of v0, p1, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCRequest;

    if-eqz v0, :cond_0

    .line 784
    check-cast p1, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCRequest;

    invoke-virtual {p0, p1}, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCRequest$Builder;->mergeFrom(Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCRequest;)Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCRequest$Builder;

    move-result-object p0

    .line 787
    :goto_0
    return-object p0

    .line 786
    :cond_0
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessage$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;

    goto :goto_0
.end method

.method public mergeFrom(Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCRequest;)Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCRequest$Builder;
    .locals 1

    .prologue
    .line 792
    invoke-static {}, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCRequest;->getDefaultInstance()Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCRequest;

    move-result-object v0

    if-ne p1, v0, :cond_0

    .line 827
    :goto_0
    return-object p0

    .line 793
    :cond_0
    invoke-virtual {p1}, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCRequest;->hasCommon()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 794
    invoke-virtual {p1}, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCRequest;->getCommon()Lcom/mapabc/mapapi/core/CommonProtoBuf$Common;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCRequest$Builder;->mergeCommon(Lcom/mapabc/mapapi/core/CommonProtoBuf$Common;)Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCRequest$Builder;

    .line 796
    :cond_1
    invoke-virtual {p1}, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCRequest;->hasX1()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 797
    invoke-virtual {p1}, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCRequest;->getX1()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCRequest$Builder;->setX1(Ljava/lang/String;)Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCRequest$Builder;

    .line 799
    :cond_2
    invoke-virtual {p1}, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCRequest;->hasY1()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 800
    invoke-virtual {p1}, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCRequest;->getY1()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCRequest$Builder;->setY1(Ljava/lang/String;)Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCRequest$Builder;

    .line 802
    :cond_3
    invoke-virtual {p1}, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCRequest;->hasX2()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 803
    invoke-virtual {p1}, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCRequest;->getX2()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCRequest$Builder;->setX2(Ljava/lang/String;)Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCRequest$Builder;

    .line 805
    :cond_4
    invoke-virtual {p1}, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCRequest;->hasY2()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 806
    invoke-virtual {p1}, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCRequest;->getY2()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCRequest$Builder;->setY2(Ljava/lang/String;)Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCRequest$Builder;

    .line 808
    :cond_5
    invoke-virtual {p1}, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCRequest;->hasCoors()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 809
    invoke-virtual {p1}, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCRequest;->getCoors()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCRequest$Builder;->setCoors(Ljava/lang/String;)Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCRequest$Builder;

    .line 811
    :cond_6
    invoke-virtual {p1}, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCRequest;->hasCr()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 812
    invoke-virtual {p1}, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCRequest;->getCr()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCRequest$Builder;->setCr(Ljava/lang/String;)Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCRequest$Builder;

    .line 814
    :cond_7
    invoke-virtual {p1}, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCRequest;->hasFlag()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 815
    invoke-virtual {p1}, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCRequest;->getFlag()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCRequest$Builder;->setFlag(Ljava/lang/String;)Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCRequest$Builder;

    .line 817
    :cond_8
    invoke-virtual {p1}, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCRequest;->hasType()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 818
    invoke-virtual {p1}, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCRequest;->getType()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCRequest$Builder;->setType(Ljava/lang/String;)Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCRequest$Builder;

    .line 820
    :cond_9
    invoke-virtual {p1}, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCRequest;->hasZ()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 821
    invoke-virtual {p1}, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCRequest;->getZ()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCRequest$Builder;->setZ(Ljava/lang/String;)Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCRequest$Builder;

    .line 823
    :cond_a
    invoke-virtual {p1}, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCRequest;->hasTs()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 824
    invoke-virtual {p1}, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCRequest;->getTs()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCRequest$Builder;->setTs(Ljava/lang/String;)Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCRequest$Builder;

    .line 826
    :cond_b
    invoke-virtual {p1}, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCRequest;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCRequest$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessage$Builder;

    goto/16 :goto_0
.end method

.method public setCommon(Lcom/mapabc/mapapi/core/CommonProtoBuf$Common$Builder;)Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCRequest$Builder;
    .locals 2

    .prologue
    .line 959
    iget-object v0, p0, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCRequest$Builder;->commonBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_0

    .line 960
    invoke-virtual {p1}, Lcom/mapabc/mapapi/core/CommonProtoBuf$Common$Builder;->build()Lcom/mapabc/mapapi/core/CommonProtoBuf$Common;

    move-result-object v0

    iput-object v0, p0, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCRequest$Builder;->common_:Lcom/mapabc/mapapi/core/CommonProtoBuf$Common;

    .line 961
    invoke-virtual {p0}, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCRequest$Builder;->onChanged()V

    .line 965
    :goto_0
    iget v0, p0, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCRequest$Builder;->bitField0_:I

    .line 966
    return-object p0

    .line 963
    :cond_0
    iget-object v0, p0, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCRequest$Builder;->commonBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    invoke-virtual {p1}, Lcom/mapabc/mapapi/core/CommonProtoBuf$Common$Builder;->build()Lcom/mapabc/mapapi/core/CommonProtoBuf$Common;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/protobuf/SingleFieldBuilder;->setMessage(Lcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/SingleFieldBuilder;

    goto :goto_0
.end method

.method public setCommon(Lcom/mapabc/mapapi/core/CommonProtoBuf$Common;)Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCRequest$Builder;
    .locals 1

    .prologue
    .line 945
    iget-object v0, p0, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCRequest$Builder;->commonBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_1

    .line 946
    if-nez p1, :cond_0

    .line 947
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 949
    :cond_0
    iput-object p1, p0, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCRequest$Builder;->common_:Lcom/mapabc/mapapi/core/CommonProtoBuf$Common;

    .line 950
    invoke-virtual {p0}, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCRequest$Builder;->onChanged()V

    .line 954
    :goto_0
    iget v0, p0, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCRequest$Builder;->bitField0_:I

    .line 955
    return-object p0

    .line 952
    :cond_1
    iget-object v0, p0, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCRequest$Builder;->commonBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/SingleFieldBuilder;->setMessage(Lcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/SingleFieldBuilder;

    goto :goto_0
.end method

.method public setCoors(Ljava/lang/String;)Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCRequest$Builder;
    .locals 1

    .prologue
    .line 1180
    if-nez p1, :cond_0

    .line 1181
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1183
    :cond_0
    iget v0, p0, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCRequest$Builder;->bitField0_:I

    .line 1184
    iput-object p1, p0, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCRequest$Builder;->coors_:Ljava/lang/Object;

    .line 1185
    invoke-virtual {p0}, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCRequest$Builder;->onChanged()V

    .line 1186
    return-object p0
.end method

.method setCoors(Lcom/google/protobuf/ByteString;)V
    .locals 1

    .prologue
    .line 1195
    iget v0, p0, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCRequest$Builder;->bitField0_:I

    .line 1196
    iput-object p1, p0, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCRequest$Builder;->coors_:Ljava/lang/Object;

    .line 1197
    invoke-virtual {p0}, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCRequest$Builder;->onChanged()V

    .line 1198
    return-void
.end method

.method public setCr(Ljava/lang/String;)Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCRequest$Builder;
    .locals 1

    .prologue
    .line 1216
    if-nez p1, :cond_0

    .line 1217
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1219
    :cond_0
    iget v0, p0, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCRequest$Builder;->bitField0_:I

    .line 1220
    iput-object p1, p0, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCRequest$Builder;->cr_:Ljava/lang/Object;

    .line 1221
    invoke-virtual {p0}, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCRequest$Builder;->onChanged()V

    .line 1222
    return-object p0
.end method

.method setCr(Lcom/google/protobuf/ByteString;)V
    .locals 1

    .prologue
    .line 1231
    iget v0, p0, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCRequest$Builder;->bitField0_:I

    .line 1232
    iput-object p1, p0, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCRequest$Builder;->cr_:Ljava/lang/Object;

    .line 1233
    invoke-virtual {p0}, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCRequest$Builder;->onChanged()V

    .line 1234
    return-void
.end method

.method public setFlag(Ljava/lang/String;)Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCRequest$Builder;
    .locals 1

    .prologue
    .line 1252
    if-nez p1, :cond_0

    .line 1253
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1255
    :cond_0
    iget v0, p0, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCRequest$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x80

    iput v0, p0, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCRequest$Builder;->bitField0_:I

    .line 1256
    iput-object p1, p0, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCRequest$Builder;->flag_:Ljava/lang/Object;

    .line 1257
    invoke-virtual {p0}, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCRequest$Builder;->onChanged()V

    .line 1258
    return-object p0
.end method

.method setFlag(Lcom/google/protobuf/ByteString;)V
    .locals 1

    .prologue
    .line 1267
    iget v0, p0, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCRequest$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x80

    iput v0, p0, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCRequest$Builder;->bitField0_:I

    .line 1268
    iput-object p1, p0, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCRequest$Builder;->flag_:Ljava/lang/Object;

    .line 1269
    invoke-virtual {p0}, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCRequest$Builder;->onChanged()V

    .line 1270
    return-void
.end method

.method public setTs(Ljava/lang/String;)Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCRequest$Builder;
    .locals 1

    .prologue
    .line 1360
    if-nez p1, :cond_0

    .line 1361
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1363
    :cond_0
    iget v0, p0, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCRequest$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x400

    iput v0, p0, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCRequest$Builder;->bitField0_:I

    .line 1364
    iput-object p1, p0, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCRequest$Builder;->ts_:Ljava/lang/Object;

    .line 1365
    invoke-virtual {p0}, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCRequest$Builder;->onChanged()V

    .line 1366
    return-object p0
.end method

.method setTs(Lcom/google/protobuf/ByteString;)V
    .locals 1

    .prologue
    .line 1375
    iget v0, p0, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCRequest$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x400

    iput v0, p0, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCRequest$Builder;->bitField0_:I

    .line 1376
    iput-object p1, p0, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCRequest$Builder;->ts_:Ljava/lang/Object;

    .line 1377
    invoke-virtual {p0}, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCRequest$Builder;->onChanged()V

    .line 1378
    return-void
.end method

.method public setType(Ljava/lang/String;)Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCRequest$Builder;
    .locals 1

    .prologue
    .line 1288
    if-nez p1, :cond_0

    .line 1289
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1291
    :cond_0
    iget v0, p0, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCRequest$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x100

    iput v0, p0, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCRequest$Builder;->bitField0_:I

    .line 1292
    iput-object p1, p0, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCRequest$Builder;->type_:Ljava/lang/Object;

    .line 1293
    invoke-virtual {p0}, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCRequest$Builder;->onChanged()V

    .line 1294
    return-object p0
.end method

.method setType(Lcom/google/protobuf/ByteString;)V
    .locals 1

    .prologue
    .line 1303
    iget v0, p0, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCRequest$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x100

    iput v0, p0, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCRequest$Builder;->bitField0_:I

    .line 1304
    iput-object p1, p0, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCRequest$Builder;->type_:Ljava/lang/Object;

    .line 1305
    invoke-virtual {p0}, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCRequest$Builder;->onChanged()V

    .line 1306
    return-void
.end method

.method public setX1(Ljava/lang/String;)Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCRequest$Builder;
    .locals 1

    .prologue
    .line 1036
    if-nez p1, :cond_0

    .line 1037
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1039
    :cond_0
    iget v0, p0, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCRequest$Builder;->bitField0_:I

    .line 1040
    iput-object p1, p0, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCRequest$Builder;->x1_:Ljava/lang/Object;

    .line 1041
    invoke-virtual {p0}, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCRequest$Builder;->onChanged()V

    .line 1042
    return-object p0
.end method

.method setX1(Lcom/google/protobuf/ByteString;)V
    .locals 1

    .prologue
    .line 1051
    iget v0, p0, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCRequest$Builder;->bitField0_:I

    .line 1052
    iput-object p1, p0, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCRequest$Builder;->x1_:Ljava/lang/Object;

    .line 1053
    invoke-virtual {p0}, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCRequest$Builder;->onChanged()V

    .line 1054
    return-void
.end method

.method public setX2(Ljava/lang/String;)Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCRequest$Builder;
    .locals 1

    .prologue
    .line 1108
    if-nez p1, :cond_0

    .line 1109
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1111
    :cond_0
    iget v0, p0, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCRequest$Builder;->bitField0_:I

    .line 1112
    iput-object p1, p0, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCRequest$Builder;->x2_:Ljava/lang/Object;

    .line 1113
    invoke-virtual {p0}, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCRequest$Builder;->onChanged()V

    .line 1114
    return-object p0
.end method

.method setX2(Lcom/google/protobuf/ByteString;)V
    .locals 1

    .prologue
    .line 1123
    iget v0, p0, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCRequest$Builder;->bitField0_:I

    .line 1124
    iput-object p1, p0, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCRequest$Builder;->x2_:Ljava/lang/Object;

    .line 1125
    invoke-virtual {p0}, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCRequest$Builder;->onChanged()V

    .line 1126
    return-void
.end method

.method public setY1(Ljava/lang/String;)Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCRequest$Builder;
    .locals 1

    .prologue
    .line 1072
    if-nez p1, :cond_0

    .line 1073
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1075
    :cond_0
    iget v0, p0, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCRequest$Builder;->bitField0_:I

    .line 1076
    iput-object p1, p0, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCRequest$Builder;->y1_:Ljava/lang/Object;

    .line 1077
    invoke-virtual {p0}, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCRequest$Builder;->onChanged()V

    .line 1078
    return-object p0
.end method

.method setY1(Lcom/google/protobuf/ByteString;)V
    .locals 1

    .prologue
    .line 1087
    iget v0, p0, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCRequest$Builder;->bitField0_:I

    .line 1088
    iput-object p1, p0, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCRequest$Builder;->y1_:Ljava/lang/Object;

    .line 1089
    invoke-virtual {p0}, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCRequest$Builder;->onChanged()V

    .line 1090
    return-void
.end method

.method public setY2(Ljava/lang/String;)Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCRequest$Builder;
    .locals 1

    .prologue
    .line 1144
    if-nez p1, :cond_0

    .line 1145
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1147
    :cond_0
    iget v0, p0, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCRequest$Builder;->bitField0_:I

    .line 1148
    iput-object p1, p0, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCRequest$Builder;->y2_:Ljava/lang/Object;

    .line 1149
    invoke-virtual {p0}, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCRequest$Builder;->onChanged()V

    .line 1150
    return-object p0
.end method

.method setY2(Lcom/google/protobuf/ByteString;)V
    .locals 1

    .prologue
    .line 1159
    iget v0, p0, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCRequest$Builder;->bitField0_:I

    .line 1160
    iput-object p1, p0, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCRequest$Builder;->y2_:Ljava/lang/Object;

    .line 1161
    invoke-virtual {p0}, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCRequest$Builder;->onChanged()V

    .line 1162
    return-void
.end method

.method public setZ(Ljava/lang/String;)Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCRequest$Builder;
    .locals 1

    .prologue
    .line 1324
    if-nez p1, :cond_0

    .line 1325
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1327
    :cond_0
    iget v0, p0, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCRequest$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x200

    iput v0, p0, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCRequest$Builder;->bitField0_:I

    .line 1328
    iput-object p1, p0, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCRequest$Builder;->z_:Ljava/lang/Object;

    .line 1329
    invoke-virtual {p0}, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCRequest$Builder;->onChanged()V

    .line 1330
    return-object p0
.end method

.method setZ(Lcom/google/protobuf/ByteString;)V
    .locals 1

    .prologue
    .line 1339
    iget v0, p0, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCRequest$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x200

    iput v0, p0, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCRequest$Builder;->bitField0_:I

    .line 1340
    iput-object p1, p0, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCRequest$Builder;->z_:Ljava/lang/Object;

    .line 1341
    invoke-virtual {p0}, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCRequest$Builder;->onChanged()V

    .line 1342
    return-void
.end method
