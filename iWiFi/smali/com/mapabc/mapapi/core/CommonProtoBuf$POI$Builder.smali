.class public final Lcom/mapabc/mapapi/core/CommonProtoBuf$POI$Builder;
.super Lcom/google/protobuf/GeneratedMessage$Builder;
.source "CommonProtoBuf.java"

# interfaces
.implements Lcom/mapabc/mapapi/core/CommonProtoBuf$POIOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mapabc/mapapi/core/CommonProtoBuf$POI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessage$Builder",
        "<",
        "Lcom/mapabc/mapapi/core/CommonProtoBuf$POI$Builder;",
        ">;",
        "Lcom/mapabc/mapapi/core/CommonProtoBuf$POIOrBuilder;"
    }
.end annotation


# instance fields
.field private address_:Ljava/lang/Object;

.field private bitField0_:I

.field private buscode_:Ljava/lang/Object;

.field private citycode_:Ljava/lang/Object;

.field private code_:Ljava/lang/Object;

.field private distance_:Ljava/lang/Object;

.field private drivedistance_:Ljava/lang/Object;

.field private gridcode_:Ljava/lang/Object;

.field private imageid_:Ljava/lang/Object;

.field private linkid_:Ljava/lang/Object;

.field private match_:Ljava/lang/Object;

.field private name_:Ljava/lang/Object;

.field private newtype_:Ljava/lang/Object;

.field private pguid_:Ljava/lang/Object;

.field private srctype_:Ljava/lang/Object;

.field private tel_:Ljava/lang/Object;

.field private timestamp_:Ljava/lang/Object;

.field private type_:Ljava/lang/Object;

.field private typecode_:Ljava/lang/Object;

.field private url_:Ljava/lang/Object;

.field private x_:Ljava/lang/Object;

.field private xml_:Ljava/lang/Object;

.field private y_:Ljava/lang/Object;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 1837
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;-><init>()V

    .line 2279
    const-string v0, ""

    iput-object v0, p0, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI$Builder;->pguid_:Ljava/lang/Object;

    .line 2315
    const-string v0, ""

    iput-object v0, p0, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI$Builder;->name_:Ljava/lang/Object;

    .line 2351
    const-string v0, ""

    iput-object v0, p0, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI$Builder;->type_:Ljava/lang/Object;

    .line 2387
    const-string v0, ""

    iput-object v0, p0, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI$Builder;->x_:Ljava/lang/Object;

    .line 2423
    const-string v0, ""

    iput-object v0, p0, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI$Builder;->y_:Ljava/lang/Object;

    .line 2459
    const-string v0, ""

    iput-object v0, p0, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI$Builder;->srctype_:Ljava/lang/Object;

    .line 2495
    const-string v0, ""

    iput-object v0, p0, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI$Builder;->address_:Ljava/lang/Object;

    .line 2531
    const-string v0, ""

    iput-object v0, p0, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI$Builder;->timestamp_:Ljava/lang/Object;

    .line 2567
    const-string v0, ""

    iput-object v0, p0, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI$Builder;->match_:Ljava/lang/Object;

    .line 2603
    const-string v0, ""

    iput-object v0, p0, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI$Builder;->code_:Ljava/lang/Object;

    .line 2639
    const-string v0, ""

    iput-object v0, p0, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI$Builder;->newtype_:Ljava/lang/Object;

    .line 2675
    const-string v0, ""

    iput-object v0, p0, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI$Builder;->citycode_:Ljava/lang/Object;

    .line 2711
    const-string v0, ""

    iput-object v0, p0, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI$Builder;->typecode_:Ljava/lang/Object;

    .line 2747
    const-string v0, ""

    iput-object v0, p0, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI$Builder;->gridcode_:Ljava/lang/Object;

    .line 2783
    const-string v0, ""

    iput-object v0, p0, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI$Builder;->buscode_:Ljava/lang/Object;

    .line 2819
    const-string v0, ""

    iput-object v0, p0, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI$Builder;->url_:Ljava/lang/Object;

    .line 2855
    const-string v0, ""

    iput-object v0, p0, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI$Builder;->xml_:Ljava/lang/Object;

    .line 2891
    const-string v0, ""

    iput-object v0, p0, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI$Builder;->imageid_:Ljava/lang/Object;

    .line 2927
    const-string v0, ""

    iput-object v0, p0, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI$Builder;->tel_:Ljava/lang/Object;

    .line 2963
    const-string v0, ""

    iput-object v0, p0, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI$Builder;->linkid_:Ljava/lang/Object;

    .line 2999
    const-string v0, ""

    iput-object v0, p0, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI$Builder;->distance_:Ljava/lang/Object;

    .line 3035
    const-string v0, ""

    iput-object v0, p0, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI$Builder;->drivedistance_:Ljava/lang/Object;

    .line 1838
    invoke-direct {p0}, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI$Builder;->maybeForceBuilderInitialization()V

    .line 1839
    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V
    .locals 1

    .prologue
    .line 1842
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessage$Builder;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V

    .line 2279
    const-string v0, ""

    iput-object v0, p0, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI$Builder;->pguid_:Ljava/lang/Object;

    .line 2315
    const-string v0, ""

    iput-object v0, p0, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI$Builder;->name_:Ljava/lang/Object;

    .line 2351
    const-string v0, ""

    iput-object v0, p0, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI$Builder;->type_:Ljava/lang/Object;

    .line 2387
    const-string v0, ""

    iput-object v0, p0, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI$Builder;->x_:Ljava/lang/Object;

    .line 2423
    const-string v0, ""

    iput-object v0, p0, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI$Builder;->y_:Ljava/lang/Object;

    .line 2459
    const-string v0, ""

    iput-object v0, p0, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI$Builder;->srctype_:Ljava/lang/Object;

    .line 2495
    const-string v0, ""

    iput-object v0, p0, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI$Builder;->address_:Ljava/lang/Object;

    .line 2531
    const-string v0, ""

    iput-object v0, p0, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI$Builder;->timestamp_:Ljava/lang/Object;

    .line 2567
    const-string v0, ""

    iput-object v0, p0, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI$Builder;->match_:Ljava/lang/Object;

    .line 2603
    const-string v0, ""

    iput-object v0, p0, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI$Builder;->code_:Ljava/lang/Object;

    .line 2639
    const-string v0, ""

    iput-object v0, p0, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI$Builder;->newtype_:Ljava/lang/Object;

    .line 2675
    const-string v0, ""

    iput-object v0, p0, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI$Builder;->citycode_:Ljava/lang/Object;

    .line 2711
    const-string v0, ""

    iput-object v0, p0, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI$Builder;->typecode_:Ljava/lang/Object;

    .line 2747
    const-string v0, ""

    iput-object v0, p0, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI$Builder;->gridcode_:Ljava/lang/Object;

    .line 2783
    const-string v0, ""

    iput-object v0, p0, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI$Builder;->buscode_:Ljava/lang/Object;

    .line 2819
    const-string v0, ""

    iput-object v0, p0, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI$Builder;->url_:Ljava/lang/Object;

    .line 2855
    const-string v0, ""

    iput-object v0, p0, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI$Builder;->xml_:Ljava/lang/Object;

    .line 2891
    const-string v0, ""

    iput-object v0, p0, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI$Builder;->imageid_:Ljava/lang/Object;

    .line 2927
    const-string v0, ""

    iput-object v0, p0, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI$Builder;->tel_:Ljava/lang/Object;

    .line 2963
    const-string v0, ""

    iput-object v0, p0, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI$Builder;->linkid_:Ljava/lang/Object;

    .line 2999
    const-string v0, ""

    iput-object v0, p0, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI$Builder;->distance_:Ljava/lang/Object;

    .line 3035
    const-string v0, ""

    iput-object v0, p0, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI$Builder;->drivedistance_:Ljava/lang/Object;

    .line 1843
    invoke-direct {p0}, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI$Builder;->maybeForceBuilderInitialization()V

    .line 1844
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;Lcom/mapabc/mapapi/core/b;)V
    .locals 0

    .prologue
    .line 1823
    invoke-direct {p0, p1}, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI$Builder;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V

    return-void
.end method

.method static synthetic access$1400(Lcom/mapabc/mapapi/core/CommonProtoBuf$POI$Builder;)Lcom/mapabc/mapapi/core/CommonProtoBuf$POI;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 1823
    invoke-direct {p0}, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI$Builder;->buildParsed()Lcom/mapabc/mapapi/core/CommonProtoBuf$POI;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1500()Lcom/mapabc/mapapi/core/CommonProtoBuf$POI$Builder;
    .locals 1

    .prologue
    .line 1823
    invoke-static {}, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI$Builder;->create()Lcom/mapabc/mapapi/core/CommonProtoBuf$POI$Builder;

    move-result-object v0

    return-object v0
.end method

.method private buildParsed()Lcom/mapabc/mapapi/core/CommonProtoBuf$POI;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 1925
    invoke-virtual {p0}, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI$Builder;->buildPartial()Lcom/mapabc/mapapi/core/CommonProtoBuf$POI;

    move-result-object v0

    .line 1926
    invoke-virtual {v0}, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1927
    invoke-static {v0}, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI$Builder;->newUninitializedMessageException(Lcom/google/protobuf/Message;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/UninitializedMessageException;->asInvalidProtocolBufferException()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0

    .line 1930
    :cond_0
    return-object v0
.end method

.method private static create()Lcom/mapabc/mapapi/core/CommonProtoBuf$POI$Builder;
    .locals 1

    .prologue
    .line 1850
    new-instance v0, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI$Builder;

    invoke-direct {v0}, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI$Builder;-><init>()V

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 1828
    # getter for: Lcom/mapabc/mapapi/core/CommonProtoBuf;->internal_static_POI_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;
    invoke-static {}, Lcom/mapabc/mapapi/core/CommonProtoBuf;->access$1200()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .locals 1

    .prologue
    .line 1846
    # getter for: Lcom/mapabc/mapapi/core/CommonProtoBuf$POI;->alwaysUseFieldBuilders:Z
    invoke-static {}, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI;->access$1700()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1848
    :cond_0
    return-void
.end method


# virtual methods
.method public bridge synthetic build()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 1823
    invoke-virtual {p0}, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI$Builder;->build()Lcom/mapabc/mapapi/core/CommonProtoBuf$POI;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 1823
    invoke-virtual {p0}, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI$Builder;->build()Lcom/mapabc/mapapi/core/CommonProtoBuf$POI;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/mapabc/mapapi/core/CommonProtoBuf$POI;
    .locals 2

    .prologue
    .line 1916
    invoke-virtual {p0}, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI$Builder;->buildPartial()Lcom/mapabc/mapapi/core/CommonProtoBuf$POI;

    move-result-object v0

    .line 1917
    invoke-virtual {v0}, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1918
    invoke-static {v0}, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI$Builder;->newUninitializedMessageException(Lcom/google/protobuf/Message;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0

    .line 1920
    :cond_0
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 1823
    invoke-virtual {p0}, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI$Builder;->buildPartial()Lcom/mapabc/mapapi/core/CommonProtoBuf$POI;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 1823
    invoke-virtual {p0}, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI$Builder;->buildPartial()Lcom/mapabc/mapapi/core/CommonProtoBuf$POI;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/mapabc/mapapi/core/CommonProtoBuf$POI;
    .locals 10

    .prologue
    const/high16 v9, 0x80000

    const/high16 v8, 0x40000

    const/high16 v7, 0x20000

    const/high16 v6, 0x10000

    const v5, 0x8000

    .line 1934
    new-instance v1, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI;

    const/4 v0, 0x0

    invoke-direct {v1, p0, v0}, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI;-><init>(Lcom/mapabc/mapapi/core/CommonProtoBuf$POI$Builder;Lcom/mapabc/mapapi/core/b;)V

    .line 1935
    iget v2, p0, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI$Builder;->bitField0_:I

    .line 1936
    const/4 v0, 0x0

    .line 1937
    and-int/lit8 v3, v2, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 1938
    const/4 v0, 0x1

    .line 1940
    :cond_0
    iget-object v3, p0, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI$Builder;->pguid_:Ljava/lang/Object;

    # setter for: Lcom/mapabc/mapapi/core/CommonProtoBuf$POI;->pguid_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI;->access$1902(Lcom/mapabc/mapapi/core/CommonProtoBuf$POI;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1941
    and-int/lit8 v3, v2, 0x2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1

    .line 1942
    or-int/lit8 v0, v0, 0x2

    .line 1944
    :cond_1
    iget-object v3, p0, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI$Builder;->name_:Ljava/lang/Object;

    # setter for: Lcom/mapabc/mapapi/core/CommonProtoBuf$POI;->name_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI;->access$2002(Lcom/mapabc/mapapi/core/CommonProtoBuf$POI;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1945
    and-int/lit8 v3, v2, 0x4

    const/4 v4, 0x4

    if-ne v3, v4, :cond_2

    .line 1946
    or-int/lit8 v0, v0, 0x4

    .line 1948
    :cond_2
    iget-object v3, p0, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI$Builder;->type_:Ljava/lang/Object;

    # setter for: Lcom/mapabc/mapapi/core/CommonProtoBuf$POI;->type_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI;->access$2102(Lcom/mapabc/mapapi/core/CommonProtoBuf$POI;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1949
    and-int/lit8 v3, v2, 0x8

    const/16 v4, 0x8

    if-ne v3, v4, :cond_3

    .line 1950
    or-int/lit8 v0, v0, 0x8

    .line 1952
    :cond_3
    iget-object v3, p0, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI$Builder;->x_:Ljava/lang/Object;

    # setter for: Lcom/mapabc/mapapi/core/CommonProtoBuf$POI;->x_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI;->access$2202(Lcom/mapabc/mapapi/core/CommonProtoBuf$POI;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1953
    and-int/lit8 v3, v2, 0x10

    const/16 v4, 0x10

    if-ne v3, v4, :cond_4

    .line 1954
    or-int/lit8 v0, v0, 0x10

    .line 1956
    :cond_4
    iget-object v3, p0, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI$Builder;->y_:Ljava/lang/Object;

    # setter for: Lcom/mapabc/mapapi/core/CommonProtoBuf$POI;->y_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI;->access$2302(Lcom/mapabc/mapapi/core/CommonProtoBuf$POI;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1957
    and-int/lit8 v3, v2, 0x20

    const/16 v4, 0x20

    if-ne v3, v4, :cond_5

    .line 1958
    or-int/lit8 v0, v0, 0x20

    .line 1960
    :cond_5
    iget-object v3, p0, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI$Builder;->srctype_:Ljava/lang/Object;

    # setter for: Lcom/mapabc/mapapi/core/CommonProtoBuf$POI;->srctype_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI;->access$2402(Lcom/mapabc/mapapi/core/CommonProtoBuf$POI;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1961
    and-int/lit8 v3, v2, 0x40

    const/16 v4, 0x40

    if-ne v3, v4, :cond_6

    .line 1962
    or-int/lit8 v0, v0, 0x40

    .line 1964
    :cond_6
    iget-object v3, p0, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI$Builder;->address_:Ljava/lang/Object;

    # setter for: Lcom/mapabc/mapapi/core/CommonProtoBuf$POI;->address_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI;->access$2502(Lcom/mapabc/mapapi/core/CommonProtoBuf$POI;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1965
    and-int/lit16 v3, v2, 0x80

    const/16 v4, 0x80

    if-ne v3, v4, :cond_7

    .line 1966
    or-int/lit16 v0, v0, 0x80

    .line 1968
    :cond_7
    iget-object v3, p0, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI$Builder;->timestamp_:Ljava/lang/Object;

    # setter for: Lcom/mapabc/mapapi/core/CommonProtoBuf$POI;->timestamp_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI;->access$2602(Lcom/mapabc/mapapi/core/CommonProtoBuf$POI;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1969
    and-int/lit16 v3, v2, 0x100

    const/16 v4, 0x100

    if-ne v3, v4, :cond_8

    .line 1970
    or-int/lit16 v0, v0, 0x100

    .line 1972
    :cond_8
    iget-object v3, p0, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI$Builder;->match_:Ljava/lang/Object;

    # setter for: Lcom/mapabc/mapapi/core/CommonProtoBuf$POI;->match_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI;->access$2702(Lcom/mapabc/mapapi/core/CommonProtoBuf$POI;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1973
    and-int/lit16 v3, v2, 0x200

    const/16 v4, 0x200

    if-ne v3, v4, :cond_9

    .line 1974
    or-int/lit16 v0, v0, 0x200

    .line 1976
    :cond_9
    iget-object v3, p0, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI$Builder;->code_:Ljava/lang/Object;

    # setter for: Lcom/mapabc/mapapi/core/CommonProtoBuf$POI;->code_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI;->access$2802(Lcom/mapabc/mapapi/core/CommonProtoBuf$POI;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1977
    and-int/lit16 v3, v2, 0x400

    const/16 v4, 0x400

    if-ne v3, v4, :cond_a

    .line 1978
    or-int/lit16 v0, v0, 0x400

    .line 1980
    :cond_a
    iget-object v3, p0, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI$Builder;->newtype_:Ljava/lang/Object;

    # setter for: Lcom/mapabc/mapapi/core/CommonProtoBuf$POI;->newtype_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI;->access$2902(Lcom/mapabc/mapapi/core/CommonProtoBuf$POI;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1981
    and-int/lit16 v3, v2, 0x800

    const/16 v4, 0x800

    if-ne v3, v4, :cond_b

    .line 1982
    or-int/lit16 v0, v0, 0x800

    .line 1984
    :cond_b
    iget-object v3, p0, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI$Builder;->citycode_:Ljava/lang/Object;

    # setter for: Lcom/mapabc/mapapi/core/CommonProtoBuf$POI;->citycode_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI;->access$3002(Lcom/mapabc/mapapi/core/CommonProtoBuf$POI;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1985
    and-int/lit16 v3, v2, 0x1000

    const/16 v4, 0x1000

    if-ne v3, v4, :cond_c

    .line 1986
    or-int/lit16 v0, v0, 0x1000

    .line 1988
    :cond_c
    iget-object v3, p0, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI$Builder;->typecode_:Ljava/lang/Object;

    # setter for: Lcom/mapabc/mapapi/core/CommonProtoBuf$POI;->typecode_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI;->access$3102(Lcom/mapabc/mapapi/core/CommonProtoBuf$POI;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1989
    and-int/lit16 v3, v2, 0x2000

    const/16 v4, 0x2000

    if-ne v3, v4, :cond_d

    .line 1990
    or-int/lit16 v0, v0, 0x2000

    .line 1992
    :cond_d
    iget-object v3, p0, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI$Builder;->gridcode_:Ljava/lang/Object;

    # setter for: Lcom/mapabc/mapapi/core/CommonProtoBuf$POI;->gridcode_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI;->access$3202(Lcom/mapabc/mapapi/core/CommonProtoBuf$POI;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1993
    and-int/lit16 v3, v2, 0x4000

    const/16 v4, 0x4000

    if-ne v3, v4, :cond_e

    .line 1994
    or-int/lit16 v0, v0, 0x4000

    .line 1996
    :cond_e
    iget-object v3, p0, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI$Builder;->buscode_:Ljava/lang/Object;

    # setter for: Lcom/mapabc/mapapi/core/CommonProtoBuf$POI;->buscode_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI;->access$3302(Lcom/mapabc/mapapi/core/CommonProtoBuf$POI;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1997
    and-int v3, v2, v5

    if-ne v3, v5, :cond_f

    .line 1998
    or-int/2addr v0, v5

    .line 2000
    :cond_f
    iget-object v3, p0, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI$Builder;->url_:Ljava/lang/Object;

    # setter for: Lcom/mapabc/mapapi/core/CommonProtoBuf$POI;->url_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI;->access$3402(Lcom/mapabc/mapapi/core/CommonProtoBuf$POI;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2001
    and-int v3, v2, v6

    if-ne v3, v6, :cond_10

    .line 2002
    or-int/2addr v0, v6

    .line 2004
    :cond_10
    iget-object v3, p0, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI$Builder;->xml_:Ljava/lang/Object;

    # setter for: Lcom/mapabc/mapapi/core/CommonProtoBuf$POI;->xml_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI;->access$3502(Lcom/mapabc/mapapi/core/CommonProtoBuf$POI;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2005
    and-int v3, v2, v7

    if-ne v3, v7, :cond_11

    .line 2006
    or-int/2addr v0, v7

    .line 2008
    :cond_11
    iget-object v3, p0, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI$Builder;->imageid_:Ljava/lang/Object;

    # setter for: Lcom/mapabc/mapapi/core/CommonProtoBuf$POI;->imageid_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI;->access$3602(Lcom/mapabc/mapapi/core/CommonProtoBuf$POI;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2009
    and-int v3, v2, v8

    if-ne v3, v8, :cond_12

    .line 2010
    or-int/2addr v0, v8

    .line 2012
    :cond_12
    iget-object v3, p0, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI$Builder;->tel_:Ljava/lang/Object;

    # setter for: Lcom/mapabc/mapapi/core/CommonProtoBuf$POI;->tel_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI;->access$3702(Lcom/mapabc/mapapi/core/CommonProtoBuf$POI;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2013
    and-int v3, v2, v9

    if-ne v3, v9, :cond_13

    .line 2014
    or-int/2addr v0, v9

    .line 2016
    :cond_13
    iget-object v3, p0, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI$Builder;->linkid_:Ljava/lang/Object;

    # setter for: Lcom/mapabc/mapapi/core/CommonProtoBuf$POI;->linkid_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI;->access$3802(Lcom/mapabc/mapapi/core/CommonProtoBuf$POI;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2017
    const/high16 v3, 0x100000

    and-int/2addr v3, v2

    const/high16 v4, 0x100000

    if-ne v3, v4, :cond_14

    .line 2018
    const/high16 v3, 0x100000

    or-int/2addr v0, v3

    .line 2020
    :cond_14
    iget-object v3, p0, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI$Builder;->distance_:Ljava/lang/Object;

    # setter for: Lcom/mapabc/mapapi/core/CommonProtoBuf$POI;->distance_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI;->access$3902(Lcom/mapabc/mapapi/core/CommonProtoBuf$POI;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2021
    const/high16 v3, 0x200000

    and-int/2addr v2, v3

    const/high16 v3, 0x200000

    if-ne v2, v3, :cond_15

    .line 2022
    const/high16 v2, 0x200000

    or-int/2addr v0, v2

    .line 2024
    :cond_15
    iget-object v2, p0, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI$Builder;->drivedistance_:Ljava/lang/Object;

    # setter for: Lcom/mapabc/mapapi/core/CommonProtoBuf$POI;->drivedistance_:Ljava/lang/Object;
    invoke-static {v1, v2}, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI;->access$4002(Lcom/mapabc/mapapi/core/CommonProtoBuf$POI;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2025
    # setter for: Lcom/mapabc/mapapi/core/CommonProtoBuf$POI;->bitField0_:I
    invoke-static {v1, v0}, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI;->access$4102(Lcom/mapabc/mapapi/core/CommonProtoBuf$POI;I)I

    .line 2026
    invoke-virtual {p0}, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI$Builder;->onBuilt()V

    .line 2027
    return-object v1
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 1823
    invoke-virtual {p0}, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI$Builder;->clear()Lcom/mapabc/mapapi/core/CommonProtoBuf$POI$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessage$Builder;
    .locals 1

    .prologue
    .line 1823
    invoke-virtual {p0}, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI$Builder;->clear()Lcom/mapabc/mapapi/core/CommonProtoBuf$POI$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 1823
    invoke-virtual {p0}, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI$Builder;->clear()Lcom/mapabc/mapapi/core/CommonProtoBuf$POI$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 1823
    invoke-virtual {p0}, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI$Builder;->clear()Lcom/mapabc/mapapi/core/CommonProtoBuf$POI$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/mapabc/mapapi/core/CommonProtoBuf$POI$Builder;
    .locals 2

    .prologue
    .line 1854
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->clear()Lcom/google/protobuf/GeneratedMessage$Builder;

    .line 1855
    const-string v0, ""

    iput-object v0, p0, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI$Builder;->pguid_:Ljava/lang/Object;

    .line 1856
    iget v0, p0, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI$Builder;->bitField0_:I

    .line 1857
    const-string v0, ""

    iput-object v0, p0, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI$Builder;->name_:Ljava/lang/Object;

    .line 1858
    iget v0, p0, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI$Builder;->bitField0_:I

    .line 1859
    const-string v0, ""

    iput-object v0, p0, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI$Builder;->type_:Ljava/lang/Object;

    .line 1860
    iget v0, p0, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI$Builder;->bitField0_:I

    .line 1861
    const-string v0, ""

    iput-object v0, p0, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI$Builder;->x_:Ljava/lang/Object;

    .line 1862
    iget v0, p0, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI$Builder;->bitField0_:I

    .line 1863
    const-string v0, ""

    iput-object v0, p0, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI$Builder;->y_:Ljava/lang/Object;

    .line 1864
    iget v0, p0, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI$Builder;->bitField0_:I

    .line 1865
    const-string v0, ""

    iput-object v0, p0, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI$Builder;->srctype_:Ljava/lang/Object;

    .line 1866
    iget v0, p0, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI$Builder;->bitField0_:I

    .line 1867
    const-string v0, ""

    iput-object v0, p0, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI$Builder;->address_:Ljava/lang/Object;

    .line 1868
    iget v0, p0, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x41

    iput v0, p0, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI$Builder;->bitField0_:I

    .line 1869
    const-string v0, ""

    iput-object v0, p0, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI$Builder;->timestamp_:Ljava/lang/Object;

    .line 1870
    iget v0, p0, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x81

    iput v0, p0, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI$Builder;->bitField0_:I

    .line 1871
    const-string v0, ""

    iput-object v0, p0, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI$Builder;->match_:Ljava/lang/Object;

    .line 1872
    iget v0, p0, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x101

    iput v0, p0, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI$Builder;->bitField0_:I

    .line 1873
    const-string v0, ""

    iput-object v0, p0, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI$Builder;->code_:Ljava/lang/Object;

    .line 1874
    iget v0, p0, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x201

    iput v0, p0, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI$Builder;->bitField0_:I

    .line 1875
    const-string v0, ""

    iput-object v0, p0, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI$Builder;->newtype_:Ljava/lang/Object;

    .line 1876
    iget v0, p0, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x401

    iput v0, p0, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI$Builder;->bitField0_:I

    .line 1877
    const-string v0, ""

    iput-object v0, p0, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI$Builder;->citycode_:Ljava/lang/Object;

    .line 1878
    iget v0, p0, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x801

    iput v0, p0, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI$Builder;->bitField0_:I

    .line 1879
    const-string v0, ""

    iput-object v0, p0, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI$Builder;->typecode_:Ljava/lang/Object;

    .line 1880
    iget v0, p0, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x1001

    iput v0, p0, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI$Builder;->bitField0_:I

    .line 1881
    const-string v0, ""

    iput-object v0, p0, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI$Builder;->gridcode_:Ljava/lang/Object;

    .line 1882
    iget v0, p0, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x2001

    iput v0, p0, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI$Builder;->bitField0_:I

    .line 1883
    const-string v0, ""

    iput-object v0, p0, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI$Builder;->buscode_:Ljava/lang/Object;

    .line 1884
    iget v0, p0, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x4001

    iput v0, p0, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI$Builder;->bitField0_:I

    .line 1885
    const-string v0, ""

    iput-object v0, p0, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI$Builder;->url_:Ljava/lang/Object;

    .line 1886
    iget v0, p0, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI$Builder;->bitField0_:I

    const v1, -0x8001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI$Builder;->bitField0_:I

    .line 1887
    const-string v0, ""

    iput-object v0, p0, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI$Builder;->xml_:Ljava/lang/Object;

    .line 1888
    iget v0, p0, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI$Builder;->bitField0_:I

    const v1, -0x10001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI$Builder;->bitField0_:I

    .line 1889
    const-string v0, ""

    iput-object v0, p0, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI$Builder;->imageid_:Ljava/lang/Object;

    .line 1890
    iget v0, p0, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI$Builder;->bitField0_:I

    const v1, -0x20001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI$Builder;->bitField0_:I

    .line 1891
    const-string v0, ""

    iput-object v0, p0, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI$Builder;->tel_:Ljava/lang/Object;

    .line 1892
    iget v0, p0, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI$Builder;->bitField0_:I

    const v1, -0x40001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI$Builder;->bitField0_:I

    .line 1893
    const-string v0, ""

    iput-object v0, p0, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI$Builder;->linkid_:Ljava/lang/Object;

    .line 1894
    iget v0, p0, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI$Builder;->bitField0_:I

    const v1, -0x80001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI$Builder;->bitField0_:I

    .line 1895
    const-string v0, ""

    iput-object v0, p0, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI$Builder;->distance_:Ljava/lang/Object;

    .line 1896
    iget v0, p0, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI$Builder;->bitField0_:I

    const v1, -0x100001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI$Builder;->bitField0_:I

    .line 1897
    const-string v0, ""

    iput-object v0, p0, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI$Builder;->drivedistance_:Ljava/lang/Object;

    .line 1898
    iget v0, p0, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI$Builder;->bitField0_:I

    const v1, -0x200001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI$Builder;->bitField0_:I

    .line 1899
    return-object p0
.end method

.method public clearAddress()Lcom/mapabc/mapapi/core/CommonProtoBuf$POI$Builder;
    .locals 1

    .prologue
    .line 2519
    iget v0, p0, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x41

    iput v0, p0, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI$Builder;->bitField0_:I

    .line 2520
    invoke-static {}, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI;->getDefaultInstance()Lcom/mapabc/mapapi/core/CommonProtoBuf$POI;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI;->getAddress()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI$Builder;->address_:Ljava/lang/Object;

    .line 2521
    invoke-virtual {p0}, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI$Builder;->onChanged()V

    .line 2522
    return-object p0
.end method

.method public clearBuscode()Lcom/mapabc/mapapi/core/CommonProtoBuf$POI$Builder;
    .locals 1

    .prologue
    .line 2807
    iget v0, p0, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x4001

    iput v0, p0, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI$Builder;->bitField0_:I

    .line 2808
    invoke-static {}, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI;->getDefaultInstance()Lcom/mapabc/mapapi/core/CommonProtoBuf$POI;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI;->getBuscode()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI$Builder;->buscode_:Ljava/lang/Object;

    .line 2809
    invoke-virtual {p0}, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI$Builder;->onChanged()V

    .line 2810
    return-object p0
.end method

.method public clearCitycode()Lcom/mapabc/mapapi/core/CommonProtoBuf$POI$Builder;
    .locals 1

    .prologue
    .line 2699
    iget v0, p0, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x801

    iput v0, p0, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI$Builder;->bitField0_:I

    .line 2700
    invoke-static {}, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI;->getDefaultInstance()Lcom/mapabc/mapapi/core/CommonProtoBuf$POI;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI;->getCitycode()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI$Builder;->citycode_:Ljava/lang/Object;

    .line 2701
    invoke-virtual {p0}, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI$Builder;->onChanged()V

    .line 2702
    return-object p0
.end method

.method public clearCode()Lcom/mapabc/mapapi/core/CommonProtoBuf$POI$Builder;
    .locals 1

    .prologue
    .line 2627
    iget v0, p0, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x201

    iput v0, p0, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI$Builder;->bitField0_:I

    .line 2628
    invoke-static {}, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI;->getDefaultInstance()Lcom/mapabc/mapapi/core/CommonProtoBuf$POI;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI;->getCode()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI$Builder;->code_:Ljava/lang/Object;

    .line 2629
    invoke-virtual {p0}, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI$Builder;->onChanged()V

    .line 2630
    return-object p0
.end method

.method public clearDistance()Lcom/mapabc/mapapi/core/CommonProtoBuf$POI$Builder;
    .locals 2

    .prologue
    .line 3023
    iget v0, p0, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI$Builder;->bitField0_:I

    const v1, -0x100001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI$Builder;->bitField0_:I

    .line 3024
    invoke-static {}, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI;->getDefaultInstance()Lcom/mapabc/mapapi/core/CommonProtoBuf$POI;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI;->getDistance()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI$Builder;->distance_:Ljava/lang/Object;

    .line 3025
    invoke-virtual {p0}, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI$Builder;->onChanged()V

    .line 3026
    return-object p0
.end method

.method public clearDrivedistance()Lcom/mapabc/mapapi/core/CommonProtoBuf$POI$Builder;
    .locals 2

    .prologue
    .line 3059
    iget v0, p0, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI$Builder;->bitField0_:I

    const v1, -0x200001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI$Builder;->bitField0_:I

    .line 3060
    invoke-static {}, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI;->getDefaultInstance()Lcom/mapabc/mapapi/core/CommonProtoBuf$POI;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI;->getDrivedistance()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI$Builder;->drivedistance_:Ljava/lang/Object;

    .line 3061
    invoke-virtual {p0}, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI$Builder;->onChanged()V

    .line 3062
    return-object p0
.end method

.method public clearGridcode()Lcom/mapabc/mapapi/core/CommonProtoBuf$POI$Builder;
    .locals 1

    .prologue
    .line 2771
    iget v0, p0, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x2001

    iput v0, p0, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI$Builder;->bitField0_:I

    .line 2772
    invoke-static {}, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI;->getDefaultInstance()Lcom/mapabc/mapapi/core/CommonProtoBuf$POI;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI;->getGridcode()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI$Builder;->gridcode_:Ljava/lang/Object;

    .line 2773
    invoke-virtual {p0}, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI$Builder;->onChanged()V

    .line 2774
    return-object p0
.end method

.method public clearImageid()Lcom/mapabc/mapapi/core/CommonProtoBuf$POI$Builder;
    .locals 2

    .prologue
    .line 2915
    iget v0, p0, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI$Builder;->bitField0_:I

    const v1, -0x20001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI$Builder;->bitField0_:I

    .line 2916
    invoke-static {}, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI;->getDefaultInstance()Lcom/mapabc/mapapi/core/CommonProtoBuf$POI;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI;->getImageid()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI$Builder;->imageid_:Ljava/lang/Object;

    .line 2917
    invoke-virtual {p0}, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI$Builder;->onChanged()V

    .line 2918
    return-object p0
.end method

.method public clearLinkid()Lcom/mapabc/mapapi/core/CommonProtoBuf$POI$Builder;
    .locals 2

    .prologue
    .line 2987
    iget v0, p0, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI$Builder;->bitField0_:I

    const v1, -0x80001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI$Builder;->bitField0_:I

    .line 2988
    invoke-static {}, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI;->getDefaultInstance()Lcom/mapabc/mapapi/core/CommonProtoBuf$POI;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI;->getLinkid()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI$Builder;->linkid_:Ljava/lang/Object;

    .line 2989
    invoke-virtual {p0}, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI$Builder;->onChanged()V

    .line 2990
    return-object p0
.end method

.method public clearMatch()Lcom/mapabc/mapapi/core/CommonProtoBuf$POI$Builder;
    .locals 1

    .prologue
    .line 2591
    iget v0, p0, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x101

    iput v0, p0, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI$Builder;->bitField0_:I

    .line 2592
    invoke-static {}, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI;->getDefaultInstance()Lcom/mapabc/mapapi/core/CommonProtoBuf$POI;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI;->getMatch()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI$Builder;->match_:Ljava/lang/Object;

    .line 2593
    invoke-virtual {p0}, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI$Builder;->onChanged()V

    .line 2594
    return-object p0
.end method

.method public clearName()Lcom/mapabc/mapapi/core/CommonProtoBuf$POI$Builder;
    .locals 1

    .prologue
    .line 2339
    iget v0, p0, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI$Builder;->bitField0_:I

    .line 2340
    invoke-static {}, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI;->getDefaultInstance()Lcom/mapabc/mapapi/core/CommonProtoBuf$POI;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI$Builder;->name_:Ljava/lang/Object;

    .line 2341
    invoke-virtual {p0}, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI$Builder;->onChanged()V

    .line 2342
    return-object p0
.end method

.method public clearNewtype()Lcom/mapabc/mapapi/core/CommonProtoBuf$POI$Builder;
    .locals 1

    .prologue
    .line 2663
    iget v0, p0, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x401

    iput v0, p0, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI$Builder;->bitField0_:I

    .line 2664
    invoke-static {}, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI;->getDefaultInstance()Lcom/mapabc/mapapi/core/CommonProtoBuf$POI;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI;->getNewtype()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI$Builder;->newtype_:Ljava/lang/Object;

    .line 2665
    invoke-virtual {p0}, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI$Builder;->onChanged()V

    .line 2666
    return-object p0
.end method

.method public clearPguid()Lcom/mapabc/mapapi/core/CommonProtoBuf$POI$Builder;
    .locals 1

    .prologue
    .line 2303
    iget v0, p0, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI$Builder;->bitField0_:I

    .line 2304
    invoke-static {}, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI;->getDefaultInstance()Lcom/mapabc/mapapi/core/CommonProtoBuf$POI;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI;->getPguid()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI$Builder;->pguid_:Ljava/lang/Object;

    .line 2305
    invoke-virtual {p0}, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI$Builder;->onChanged()V

    .line 2306
    return-object p0
.end method

.method public clearSrctype()Lcom/mapabc/mapapi/core/CommonProtoBuf$POI$Builder;
    .locals 1

    .prologue
    .line 2483
    iget v0, p0, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI$Builder;->bitField0_:I

    .line 2484
    invoke-static {}, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI;->getDefaultInstance()Lcom/mapabc/mapapi/core/CommonProtoBuf$POI;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI;->getSrctype()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI$Builder;->srctype_:Ljava/lang/Object;

    .line 2485
    invoke-virtual {p0}, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI$Builder;->onChanged()V

    .line 2486
    return-object p0
.end method

.method public clearTel()Lcom/mapabc/mapapi/core/CommonProtoBuf$POI$Builder;
    .locals 2

    .prologue
    .line 2951
    iget v0, p0, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI$Builder;->bitField0_:I

    const v1, -0x40001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI$Builder;->bitField0_:I

    .line 2952
    invoke-static {}, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI;->getDefaultInstance()Lcom/mapabc/mapapi/core/CommonProtoBuf$POI;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI;->getTel()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI$Builder;->tel_:Ljava/lang/Object;

    .line 2953
    invoke-virtual {p0}, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI$Builder;->onChanged()V

    .line 2954
    return-object p0
.end method

.method public clearTimestamp()Lcom/mapabc/mapapi/core/CommonProtoBuf$POI$Builder;
    .locals 1

    .prologue
    .line 2555
    iget v0, p0, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x81

    iput v0, p0, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI$Builder;->bitField0_:I

    .line 2556
    invoke-static {}, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI;->getDefaultInstance()Lcom/mapabc/mapapi/core/CommonProtoBuf$POI;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI;->getTimestamp()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI$Builder;->timestamp_:Ljava/lang/Object;

    .line 2557
    invoke-virtual {p0}, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI$Builder;->onChanged()V

    .line 2558
    return-object p0
.end method

.method public clearType()Lcom/mapabc/mapapi/core/CommonProtoBuf$POI$Builder;
    .locals 1

    .prologue
    .line 2375
    iget v0, p0, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI$Builder;->bitField0_:I

    .line 2376
    invoke-static {}, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI;->getDefaultInstance()Lcom/mapabc/mapapi/core/CommonProtoBuf$POI;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI;->getType()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI$Builder;->type_:Ljava/lang/Object;

    .line 2377
    invoke-virtual {p0}, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI$Builder;->onChanged()V

    .line 2378
    return-object p0
.end method

.method public clearTypecode()Lcom/mapabc/mapapi/core/CommonProtoBuf$POI$Builder;
    .locals 1

    .prologue
    .line 2735
    iget v0, p0, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x1001

    iput v0, p0, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI$Builder;->bitField0_:I

    .line 2736
    invoke-static {}, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI;->getDefaultInstance()Lcom/mapabc/mapapi/core/CommonProtoBuf$POI;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI;->getTypecode()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI$Builder;->typecode_:Ljava/lang/Object;

    .line 2737
    invoke-virtual {p0}, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI$Builder;->onChanged()V

    .line 2738
    return-object p0
.end method

.method public clearUrl()Lcom/mapabc/mapapi/core/CommonProtoBuf$POI$Builder;
    .locals 2

    .prologue
    .line 2843
    iget v0, p0, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI$Builder;->bitField0_:I

    const v1, -0x8001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI$Builder;->bitField0_:I

    .line 2844
    invoke-static {}, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI;->getDefaultInstance()Lcom/mapabc/mapapi/core/CommonProtoBuf$POI;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI;->getUrl()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI$Builder;->url_:Ljava/lang/Object;

    .line 2845
    invoke-virtual {p0}, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI$Builder;->onChanged()V

    .line 2846
    return-object p0
.end method

.method public clearX()Lcom/mapabc/mapapi/core/CommonProtoBuf$POI$Builder;
    .locals 1

    .prologue
    .line 2411
    iget v0, p0, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI$Builder;->bitField0_:I

    .line 2412
    invoke-static {}, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI;->getDefaultInstance()Lcom/mapabc/mapapi/core/CommonProtoBuf$POI;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI;->getX()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI$Builder;->x_:Ljava/lang/Object;

    .line 2413
    invoke-virtual {p0}, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI$Builder;->onChanged()V

    .line 2414
    return-object p0
.end method

.method public clearXml()Lcom/mapabc/mapapi/core/CommonProtoBuf$POI$Builder;
    .locals 2

    .prologue
    .line 2879
    iget v0, p0, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI$Builder;->bitField0_:I

    const v1, -0x10001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI$Builder;->bitField0_:I

    .line 2880
    invoke-static {}, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI;->getDefaultInstance()Lcom/mapabc/mapapi/core/CommonProtoBuf$POI;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI;->getXml()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI$Builder;->xml_:Ljava/lang/Object;

    .line 2881
    invoke-virtual {p0}, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI$Builder;->onChanged()V

    .line 2882
    return-object p0
.end method

.method public clearY()Lcom/mapabc/mapapi/core/CommonProtoBuf$POI$Builder;
    .locals 1

    .prologue
    .line 2447
    iget v0, p0, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI$Builder;->bitField0_:I

    .line 2448
    invoke-static {}, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI;->getDefaultInstance()Lcom/mapabc/mapapi/core/CommonProtoBuf$POI;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI;->getY()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI$Builder;->y_:Ljava/lang/Object;

    .line 2449
    invoke-virtual {p0}, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI$Builder;->onChanged()V

    .line 2450
    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 1823
    invoke-virtual {p0}, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI$Builder;->clone()Lcom/mapabc/mapapi/core/CommonProtoBuf$POI$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .prologue
    .line 1823
    invoke-virtual {p0}, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI$Builder;->clone()Lcom/mapabc/mapapi/core/CommonProtoBuf$POI$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessage$Builder;
    .locals 1

    .prologue
    .line 1823
    invoke-virtual {p0}, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI$Builder;->clone()Lcom/mapabc/mapapi/core/CommonProtoBuf$POI$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 1823
    invoke-virtual {p0}, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI$Builder;->clone()Lcom/mapabc/mapapi/core/CommonProtoBuf$POI$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 1823
    invoke-virtual {p0}, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI$Builder;->clone()Lcom/mapabc/mapapi/core/CommonProtoBuf$POI$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/mapabc/mapapi/core/CommonProtoBuf$POI$Builder;
    .locals 2

    .prologue
    .line 1903
    invoke-static {}, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI$Builder;->create()Lcom/mapabc/mapapi/core/CommonProtoBuf$POI$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI$Builder;->buildPartial()Lcom/mapabc/mapapi/core/CommonProtoBuf$POI;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI$Builder;->mergeFrom(Lcom/mapabc/mapapi/core/CommonProtoBuf$POI;)Lcom/mapabc/mapapi/core/CommonProtoBuf$POI$Builder;

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
    .line 1823
    invoke-virtual {p0}, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI$Builder;->clone()Lcom/mapabc/mapapi/core/CommonProtoBuf$POI$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getAddress()Ljava/lang/String;
    .locals 2

    .prologue
    .line 2500
    iget-object v0, p0, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI$Builder;->address_:Ljava/lang/Object;

    .line 2501
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_0

    .line 2502
    check-cast v0, Lcom/google/protobuf/ByteString;

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 2503
    iput-object v0, p0, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI$Builder;->address_:Ljava/lang/Object;

    .line 2506
    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Ljava/lang/String;

    goto :goto_0
.end method

.method public getBuscode()Ljava/lang/String;
    .locals 2

    .prologue
    .line 2788
    iget-object v0, p0, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI$Builder;->buscode_:Ljava/lang/Object;

    .line 2789
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_0

    .line 2790
    check-cast v0, Lcom/google/protobuf/ByteString;

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 2791
    iput-object v0, p0, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI$Builder;->buscode_:Ljava/lang/Object;

    .line 2794
    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Ljava/lang/String;

    goto :goto_0
.end method

.method public getCitycode()Ljava/lang/String;
    .locals 2

    .prologue
    .line 2680
    iget-object v0, p0, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI$Builder;->citycode_:Ljava/lang/Object;

    .line 2681
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_0

    .line 2682
    check-cast v0, Lcom/google/protobuf/ByteString;

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 2683
    iput-object v0, p0, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI$Builder;->citycode_:Ljava/lang/Object;

    .line 2686
    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Ljava/lang/String;

    goto :goto_0
.end method

.method public getCode()Ljava/lang/String;
    .locals 2

    .prologue
    .line 2608
    iget-object v0, p0, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI$Builder;->code_:Ljava/lang/Object;

    .line 2609
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_0

    .line 2610
    check-cast v0, Lcom/google/protobuf/ByteString;

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 2611
    iput-object v0, p0, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI$Builder;->code_:Ljava/lang/Object;

    .line 2614
    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Ljava/lang/String;

    goto :goto_0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 1823
    invoke-virtual {p0}, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI$Builder;->getDefaultInstanceForType()Lcom/mapabc/mapapi/core/CommonProtoBuf$POI;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 1823
    invoke-virtual {p0}, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI$Builder;->getDefaultInstanceForType()Lcom/mapabc/mapapi/core/CommonProtoBuf$POI;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/mapabc/mapapi/core/CommonProtoBuf$POI;
    .locals 1

    .prologue
    .line 1912
    invoke-static {}, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI;->getDefaultInstance()Lcom/mapabc/mapapi/core/CommonProtoBuf$POI;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 1908
    invoke-static {}, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI;->getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public getDistance()Ljava/lang/String;
    .locals 2

    .prologue
    .line 3004
    iget-object v0, p0, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI$Builder;->distance_:Ljava/lang/Object;

    .line 3005
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_0

    .line 3006
    check-cast v0, Lcom/google/protobuf/ByteString;

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 3007
    iput-object v0, p0, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI$Builder;->distance_:Ljava/lang/Object;

    .line 3010
    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Ljava/lang/String;

    goto :goto_0
.end method

.method public getDrivedistance()Ljava/lang/String;
    .locals 2

    .prologue
    .line 3040
    iget-object v0, p0, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI$Builder;->drivedistance_:Ljava/lang/Object;

    .line 3041
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_0

    .line 3042
    check-cast v0, Lcom/google/protobuf/ByteString;

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 3043
    iput-object v0, p0, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI$Builder;->drivedistance_:Ljava/lang/Object;

    .line 3046
    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Ljava/lang/String;

    goto :goto_0
.end method

.method public getGridcode()Ljava/lang/String;
    .locals 2

    .prologue
    .line 2752
    iget-object v0, p0, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI$Builder;->gridcode_:Ljava/lang/Object;

    .line 2753
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_0

    .line 2754
    check-cast v0, Lcom/google/protobuf/ByteString;

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 2755
    iput-object v0, p0, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI$Builder;->gridcode_:Ljava/lang/Object;

    .line 2758
    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Ljava/lang/String;

    goto :goto_0
.end method

.method public getImageid()Ljava/lang/String;
    .locals 2

    .prologue
    .line 2896
    iget-object v0, p0, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI$Builder;->imageid_:Ljava/lang/Object;

    .line 2897
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_0

    .line 2898
    check-cast v0, Lcom/google/protobuf/ByteString;

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 2899
    iput-object v0, p0, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI$Builder;->imageid_:Ljava/lang/Object;

    .line 2902
    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Ljava/lang/String;

    goto :goto_0
.end method

.method public getLinkid()Ljava/lang/String;
    .locals 2

    .prologue
    .line 2968
    iget-object v0, p0, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI$Builder;->linkid_:Ljava/lang/Object;

    .line 2969
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_0

    .line 2970
    check-cast v0, Lcom/google/protobuf/ByteString;

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 2971
    iput-object v0, p0, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI$Builder;->linkid_:Ljava/lang/Object;

    .line 2974
    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Ljava/lang/String;

    goto :goto_0
.end method

.method public getMatch()Ljava/lang/String;
    .locals 2

    .prologue
    .line 2572
    iget-object v0, p0, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI$Builder;->match_:Ljava/lang/Object;

    .line 2573
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_0

    .line 2574
    check-cast v0, Lcom/google/protobuf/ByteString;

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 2575
    iput-object v0, p0, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI$Builder;->match_:Ljava/lang/Object;

    .line 2578
    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Ljava/lang/String;

    goto :goto_0
.end method

.method public getName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 2320
    iget-object v0, p0, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI$Builder;->name_:Ljava/lang/Object;

    .line 2321
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_0

    .line 2322
    check-cast v0, Lcom/google/protobuf/ByteString;

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 2323
    iput-object v0, p0, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI$Builder;->name_:Ljava/lang/Object;

    .line 2326
    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Ljava/lang/String;

    goto :goto_0
.end method

.method public getNewtype()Ljava/lang/String;
    .locals 2

    .prologue
    .line 2644
    iget-object v0, p0, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI$Builder;->newtype_:Ljava/lang/Object;

    .line 2645
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_0

    .line 2646
    check-cast v0, Lcom/google/protobuf/ByteString;

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 2647
    iput-object v0, p0, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI$Builder;->newtype_:Ljava/lang/Object;

    .line 2650
    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Ljava/lang/String;

    goto :goto_0
.end method

.method public getPguid()Ljava/lang/String;
    .locals 2

    .prologue
    .line 2284
    iget-object v0, p0, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI$Builder;->pguid_:Ljava/lang/Object;

    .line 2285
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_0

    .line 2286
    check-cast v0, Lcom/google/protobuf/ByteString;

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 2287
    iput-object v0, p0, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI$Builder;->pguid_:Ljava/lang/Object;

    .line 2290
    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Ljava/lang/String;

    goto :goto_0
.end method

.method public getSrctype()Ljava/lang/String;
    .locals 2

    .prologue
    .line 2464
    iget-object v0, p0, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI$Builder;->srctype_:Ljava/lang/Object;

    .line 2465
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_0

    .line 2466
    check-cast v0, Lcom/google/protobuf/ByteString;

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 2467
    iput-object v0, p0, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI$Builder;->srctype_:Ljava/lang/Object;

    .line 2470
    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Ljava/lang/String;

    goto :goto_0
.end method

.method public getTel()Ljava/lang/String;
    .locals 2

    .prologue
    .line 2932
    iget-object v0, p0, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI$Builder;->tel_:Ljava/lang/Object;

    .line 2933
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_0

    .line 2934
    check-cast v0, Lcom/google/protobuf/ByteString;

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 2935
    iput-object v0, p0, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI$Builder;->tel_:Ljava/lang/Object;

    .line 2938
    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Ljava/lang/String;

    goto :goto_0
.end method

.method public getTimestamp()Ljava/lang/String;
    .locals 2

    .prologue
    .line 2536
    iget-object v0, p0, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI$Builder;->timestamp_:Ljava/lang/Object;

    .line 2537
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_0

    .line 2538
    check-cast v0, Lcom/google/protobuf/ByteString;

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 2539
    iput-object v0, p0, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI$Builder;->timestamp_:Ljava/lang/Object;

    .line 2542
    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Ljava/lang/String;

    goto :goto_0
.end method

.method public getType()Ljava/lang/String;
    .locals 2

    .prologue
    .line 2356
    iget-object v0, p0, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI$Builder;->type_:Ljava/lang/Object;

    .line 2357
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_0

    .line 2358
    check-cast v0, Lcom/google/protobuf/ByteString;

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 2359
    iput-object v0, p0, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI$Builder;->type_:Ljava/lang/Object;

    .line 2362
    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Ljava/lang/String;

    goto :goto_0
.end method

.method public getTypecode()Ljava/lang/String;
    .locals 2

    .prologue
    .line 2716
    iget-object v0, p0, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI$Builder;->typecode_:Ljava/lang/Object;

    .line 2717
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_0

    .line 2718
    check-cast v0, Lcom/google/protobuf/ByteString;

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 2719
    iput-object v0, p0, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI$Builder;->typecode_:Ljava/lang/Object;

    .line 2722
    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Ljava/lang/String;

    goto :goto_0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 2

    .prologue
    .line 2824
    iget-object v0, p0, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI$Builder;->url_:Ljava/lang/Object;

    .line 2825
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_0

    .line 2826
    check-cast v0, Lcom/google/protobuf/ByteString;

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 2827
    iput-object v0, p0, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI$Builder;->url_:Ljava/lang/Object;

    .line 2830
    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Ljava/lang/String;

    goto :goto_0
.end method

.method public getX()Ljava/lang/String;
    .locals 2

    .prologue
    .line 2392
    iget-object v0, p0, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI$Builder;->x_:Ljava/lang/Object;

    .line 2393
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_0

    .line 2394
    check-cast v0, Lcom/google/protobuf/ByteString;

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 2395
    iput-object v0, p0, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI$Builder;->x_:Ljava/lang/Object;

    .line 2398
    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Ljava/lang/String;

    goto :goto_0
.end method

.method public getXml()Ljava/lang/String;
    .locals 2

    .prologue
    .line 2860
    iget-object v0, p0, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI$Builder;->xml_:Ljava/lang/Object;

    .line 2861
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_0

    .line 2862
    check-cast v0, Lcom/google/protobuf/ByteString;

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 2863
    iput-object v0, p0, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI$Builder;->xml_:Ljava/lang/Object;

    .line 2866
    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Ljava/lang/String;

    goto :goto_0
.end method

.method public getY()Ljava/lang/String;
    .locals 2

    .prologue
    .line 2428
    iget-object v0, p0, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI$Builder;->y_:Ljava/lang/Object;

    .line 2429
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_0

    .line 2430
    check-cast v0, Lcom/google/protobuf/ByteString;

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 2431
    iput-object v0, p0, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI$Builder;->y_:Ljava/lang/Object;

    .line 2434
    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Ljava/lang/String;

    goto :goto_0
.end method

.method public hasAddress()Z
    .locals 2

    .prologue
    .line 2497
    iget v0, p0, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI$Builder;->bitField0_:I

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

.method public hasBuscode()Z
    .locals 2

    .prologue
    .line 2785
    iget v0, p0, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI$Builder;->bitField0_:I

    and-int/lit16 v0, v0, 0x4000

    const/16 v1, 0x4000

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasCitycode()Z
    .locals 2

    .prologue
    .line 2677
    iget v0, p0, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI$Builder;->bitField0_:I

    and-int/lit16 v0, v0, 0x800

    const/16 v1, 0x800

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
    .line 2605
    iget v0, p0, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI$Builder;->bitField0_:I

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

.method public hasDistance()Z
    .locals 2

    .prologue
    const/high16 v1, 0x100000

    .line 3001
    iget v0, p0, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI$Builder;->bitField0_:I

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasDrivedistance()Z
    .locals 2

    .prologue
    const/high16 v1, 0x200000

    .line 3037
    iget v0, p0, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI$Builder;->bitField0_:I

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasGridcode()Z
    .locals 2

    .prologue
    .line 2749
    iget v0, p0, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI$Builder;->bitField0_:I

    and-int/lit16 v0, v0, 0x2000

    const/16 v1, 0x2000

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasImageid()Z
    .locals 2

    .prologue
    const/high16 v1, 0x20000

    .line 2893
    iget v0, p0, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI$Builder;->bitField0_:I

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasLinkid()Z
    .locals 2

    .prologue
    const/high16 v1, 0x80000

    .line 2965
    iget v0, p0, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI$Builder;->bitField0_:I

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasMatch()Z
    .locals 2

    .prologue
    .line 2569
    iget v0, p0, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI$Builder;->bitField0_:I

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

.method public hasName()Z
    .locals 2

    .prologue
    .line 2317
    iget v0, p0, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI$Builder;->bitField0_:I

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

.method public hasNewtype()Z
    .locals 2

    .prologue
    .line 2641
    iget v0, p0, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI$Builder;->bitField0_:I

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

.method public hasPguid()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 2281
    iget v1, p0, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI$Builder;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasSrctype()Z
    .locals 2

    .prologue
    .line 2461
    iget v0, p0, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI$Builder;->bitField0_:I

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

.method public hasTel()Z
    .locals 2

    .prologue
    const/high16 v1, 0x40000

    .line 2929
    iget v0, p0, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI$Builder;->bitField0_:I

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasTimestamp()Z
    .locals 2

    .prologue
    .line 2533
    iget v0, p0, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI$Builder;->bitField0_:I

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

.method public hasType()Z
    .locals 2

    .prologue
    .line 2353
    iget v0, p0, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI$Builder;->bitField0_:I

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

.method public hasTypecode()Z
    .locals 2

    .prologue
    .line 2713
    iget v0, p0, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI$Builder;->bitField0_:I

    and-int/lit16 v0, v0, 0x1000

    const/16 v1, 0x1000

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasUrl()Z
    .locals 2

    .prologue
    const v1, 0x8000

    .line 2821
    iget v0, p0, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI$Builder;->bitField0_:I

    and-int/2addr v0, v1

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
    .line 2389
    iget v0, p0, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI$Builder;->bitField0_:I

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

.method public hasXml()Z
    .locals 2

    .prologue
    const/high16 v1, 0x10000

    .line 2857
    iget v0, p0, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI$Builder;->bitField0_:I

    and-int/2addr v0, v1

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
    .line 2425
    iget v0, p0, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI$Builder;->bitField0_:I

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

.method protected internalGetFieldAccessorTable()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 1

    .prologue
    .line 1833
    # getter for: Lcom/mapabc/mapapi/core/CommonProtoBuf;->internal_static_POI_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    invoke-static {}, Lcom/mapabc/mapapi/core/CommonProtoBuf;->access$1300()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 2112
    invoke-virtual {p0}, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI$Builder;->hasPguid()Z

    move-result v1

    if-nez v1, :cond_1

    .line 2136
    :cond_0
    :goto_0
    return v0

    .line 2116
    :cond_1
    invoke-virtual {p0}, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI$Builder;->hasName()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2120
    invoke-virtual {p0}, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI$Builder;->hasType()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2124
    invoke-virtual {p0}, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI$Builder;->hasX()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2128
    invoke-virtual {p0}, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI$Builder;->hasY()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2132
    invoke-virtual {p0}, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI$Builder;->hasSrctype()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2136
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1823
    invoke-virtual {p0, p1, p2}, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/mapabc/mapapi/core/CommonProtoBuf$POI$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 1823
    invoke-virtual {p0, p1}, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/mapabc/mapapi/core/CommonProtoBuf$POI$Builder;

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
    .line 1823
    invoke-virtual {p0, p1, p2}, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/mapabc/mapapi/core/CommonProtoBuf$POI$Builder;

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
    .line 1823
    invoke-virtual {p0, p1, p2}, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/mapabc/mapapi/core/CommonProtoBuf$POI$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 1823
    invoke-virtual {p0, p1}, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/mapabc/mapapi/core/CommonProtoBuf$POI$Builder;

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
    .line 1823
    invoke-virtual {p0, p1, p2}, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/mapabc/mapapi/core/CommonProtoBuf$POI$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/mapabc/mapapi/core/CommonProtoBuf$POI$Builder;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2143
    invoke-virtual {p0}, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI$Builder;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v0

    invoke-static {v0}, Lcom/google/protobuf/UnknownFieldSet;->newBuilder(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/UnknownFieldSet$Builder;

    move-result-object v0

    .line 2147
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v1

    .line 2148
    sparse-switch v1, :sswitch_data_0

    .line 2154
    invoke-virtual {p0, p1, v0, p2, v1}, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI$Builder;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/UnknownFieldSet$Builder;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 2156
    invoke-virtual {v0}, Lcom/google/protobuf/UnknownFieldSet$Builder;->build()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI$Builder;->setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessage$Builder;

    .line 2157
    invoke-virtual {p0}, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI$Builder;->onChanged()V

    .line 2158
    :goto_1
    return-object p0

    .line 2150
    :sswitch_0
    invoke-virtual {v0}, Lcom/google/protobuf/UnknownFieldSet$Builder;->build()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI$Builder;->setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessage$Builder;

    .line 2151
    invoke-virtual {p0}, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI$Builder;->onChanged()V

    goto :goto_1

    .line 2163
    :sswitch_1
    iget v1, p0, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI$Builder;->bitField0_:I

    or-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI$Builder;->bitField0_:I

    .line 2164
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    iput-object v1, p0, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI$Builder;->pguid_:Ljava/lang/Object;

    goto :goto_0

    .line 2168
    :sswitch_2
    iget v1, p0, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI$Builder;->bitField0_:I

    or-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI$Builder;->bitField0_:I

    .line 2169
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    iput-object v1, p0, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI$Builder;->name_:Ljava/lang/Object;

    goto :goto_0

    .line 2173
    :sswitch_3
    iget v1, p0, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI$Builder;->bitField0_:I

    or-int/lit8 v1, v1, 0x4

    iput v1, p0, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI$Builder;->bitField0_:I

    .line 2174
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    iput-object v1, p0, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI$Builder;->type_:Ljava/lang/Object;

    goto :goto_0

    .line 2178
    :sswitch_4
    iget v1, p0, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI$Builder;->bitField0_:I

    or-int/lit8 v1, v1, 0x8

    iput v1, p0, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI$Builder;->bitField0_:I

    .line 2179
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    iput-object v1, p0, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI$Builder;->x_:Ljava/lang/Object;

    goto :goto_0

    .line 2183
    :sswitch_5
    iget v1, p0, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI$Builder;->bitField0_:I

    or-int/lit8 v1, v1, 0x10

    iput v1, p0, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI$Builder;->bitField0_:I

    .line 2184
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    iput-object v1, p0, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI$Builder;->y_:Ljava/lang/Object;

    goto :goto_0

    .line 2188
    :sswitch_6
    iget v1, p0, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI$Builder;->bitField0_:I

    or-int/lit8 v1, v1, 0x20

    iput v1, p0, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI$Builder;->bitField0_:I

    .line 2189
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    iput-object v1, p0, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI$Builder;->srctype_:Ljava/lang/Object;

    goto :goto_0

    .line 2193
    :sswitch_7
    iget v1, p0, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI$Builder;->bitField0_:I

    or-int/lit8 v1, v1, 0x40

    iput v1, p0, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI$Builder;->bitField0_:I

    .line 2194
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    iput-object v1, p0, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI$Builder;->address_:Ljava/lang/Object;

    goto :goto_0

    .line 2198
    :sswitch_8
    iget v1, p0, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI$Builder;->bitField0_:I

    or-int/lit16 v1, v1, 0x80

    iput v1, p0, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI$Builder;->bitField0_:I

    .line 2199
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    iput-object v1, p0, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI$Builder;->timestamp_:Ljava/lang/Object;

    goto/16 :goto_0

    .line 2203
    :sswitch_9
    iget v1, p0, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI$Builder;->bitField0_:I

    or-int/lit16 v1, v1, 0x100

    iput v1, p0, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI$Builder;->bitField0_:I

    .line 2204
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    iput-object v1, p0, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI$Builder;->match_:Ljava/lang/Object;

    goto/16 :goto_0

    .line 2208
    :sswitch_a
    iget v1, p0, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI$Builder;->bitField0_:I

    or-int/lit16 v1, v1, 0x200

    iput v1, p0, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI$Builder;->bitField0_:I

    .line 2209
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    iput-object v1, p0, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI$Builder;->code_:Ljava/lang/Object;

    goto/16 :goto_0

    .line 2213
    :sswitch_b
    iget v1, p0, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI$Builder;->bitField0_:I

    or-int/lit16 v1, v1, 0x400

    iput v1, p0, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI$Builder;->bitField0_:I

    .line 2214
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    iput-object v1, p0, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI$Builder;->newtype_:Ljava/lang/Object;

    goto/16 :goto_0

    .line 2218
    :sswitch_c
    iget v1, p0, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI$Builder;->bitField0_:I

    or-int/lit16 v1, v1, 0x800

    iput v1, p0, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI$Builder;->bitField0_:I

    .line 2219
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    iput-object v1, p0, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI$Builder;->citycode_:Ljava/lang/Object;

    goto/16 :goto_0

    .line 2223
    :sswitch_d
    iget v1, p0, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI$Builder;->bitField0_:I

    or-int/lit16 v1, v1, 0x1000

    iput v1, p0, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI$Builder;->bitField0_:I

    .line 2224
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    iput-object v1, p0, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI$Builder;->typecode_:Ljava/lang/Object;

    goto/16 :goto_0

    .line 2228
    :sswitch_e
    iget v1, p0, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI$Builder;->bitField0_:I

    or-int/lit16 v1, v1, 0x2000

    iput v1, p0, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI$Builder;->bitField0_:I

    .line 2229
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    iput-object v1, p0, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI$Builder;->gridcode_:Ljava/lang/Object;

    goto/16 :goto_0

    .line 2233
    :sswitch_f
    iget v1, p0, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI$Builder;->bitField0_:I

    or-int/lit16 v1, v1, 0x4000

    iput v1, p0, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI$Builder;->bitField0_:I

    .line 2234
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    iput-object v1, p0, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI$Builder;->buscode_:Ljava/lang/Object;

    goto/16 :goto_0

    .line 2238
    :sswitch_10
    iget v1, p0, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI$Builder;->bitField0_:I

    const v2, 0x8000

    or-int/2addr v1, v2

    iput v1, p0, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI$Builder;->bitField0_:I

    .line 2239
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    iput-object v1, p0, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI$Builder;->url_:Ljava/lang/Object;

    goto/16 :goto_0

    .line 2243
    :sswitch_11
    iget v1, p0, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI$Builder;->bitField0_:I

    const/high16 v2, 0x10000

    or-int/2addr v1, v2

    iput v1, p0, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI$Builder;->bitField0_:I

    .line 2244
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    iput-object v1, p0, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI$Builder;->xml_:Ljava/lang/Object;

    goto/16 :goto_0

    .line 2248
    :sswitch_12
    iget v1, p0, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI$Builder;->bitField0_:I

    const/high16 v2, 0x20000

    or-int/2addr v1, v2

    iput v1, p0, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI$Builder;->bitField0_:I

    .line 2249
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    iput-object v1, p0, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI$Builder;->imageid_:Ljava/lang/Object;

    goto/16 :goto_0

    .line 2253
    :sswitch_13
    iget v1, p0, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI$Builder;->bitField0_:I

    const/high16 v2, 0x40000

    or-int/2addr v1, v2

    iput v1, p0, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI$Builder;->bitField0_:I

    .line 2254
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    iput-object v1, p0, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI$Builder;->tel_:Ljava/lang/Object;

    goto/16 :goto_0

    .line 2258
    :sswitch_14
    iget v1, p0, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI$Builder;->bitField0_:I

    const/high16 v2, 0x80000

    or-int/2addr v1, v2

    iput v1, p0, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI$Builder;->bitField0_:I

    .line 2259
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    iput-object v1, p0, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI$Builder;->linkid_:Ljava/lang/Object;

    goto/16 :goto_0

    .line 2263
    :sswitch_15
    iget v1, p0, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI$Builder;->bitField0_:I

    const/high16 v2, 0x100000

    or-int/2addr v1, v2

    iput v1, p0, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI$Builder;->bitField0_:I

    .line 2264
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    iput-object v1, p0, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI$Builder;->distance_:Ljava/lang/Object;

    goto/16 :goto_0

    .line 2268
    :sswitch_16
    iget v1, p0, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI$Builder;->bitField0_:I

    const/high16 v2, 0x200000

    or-int/2addr v1, v2

    iput v1, p0, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI$Builder;->bitField0_:I

    .line 2269
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    iput-object v1, p0, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI$Builder;->drivedistance_:Ljava/lang/Object;

    goto/16 :goto_0

    .line 2148
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
        0x62 -> :sswitch_c
        0x6a -> :sswitch_d
        0x72 -> :sswitch_e
        0x7a -> :sswitch_f
        0x82 -> :sswitch_10
        0x8a -> :sswitch_11
        0x92 -> :sswitch_12
        0x9a -> :sswitch_13
        0xa2 -> :sswitch_14
        0xaa -> :sswitch_15
        0xb2 -> :sswitch_16
    .end sparse-switch
.end method

.method public mergeFrom(Lcom/google/protobuf/Message;)Lcom/mapabc/mapapi/core/CommonProtoBuf$POI$Builder;
    .locals 1

    .prologue
    .line 2031
    instance-of v0, p1, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI;

    if-eqz v0, :cond_0

    .line 2032
    check-cast p1, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI;

    invoke-virtual {p0, p1}, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI$Builder;->mergeFrom(Lcom/mapabc/mapapi/core/CommonProtoBuf$POI;)Lcom/mapabc/mapapi/core/CommonProtoBuf$POI$Builder;

    move-result-object p0

    .line 2035
    :goto_0
    return-object p0

    .line 2034
    :cond_0
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessage$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;

    goto :goto_0
.end method

.method public mergeFrom(Lcom/mapabc/mapapi/core/CommonProtoBuf$POI;)Lcom/mapabc/mapapi/core/CommonProtoBuf$POI$Builder;
    .locals 1

    .prologue
    .line 2040
    invoke-static {}, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI;->getDefaultInstance()Lcom/mapabc/mapapi/core/CommonProtoBuf$POI;

    move-result-object v0

    if-ne p1, v0, :cond_0

    .line 2108
    :goto_0
    return-object p0

    .line 2041
    :cond_0
    invoke-virtual {p1}, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI;->hasPguid()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2042
    invoke-virtual {p1}, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI;->getPguid()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI$Builder;->setPguid(Ljava/lang/String;)Lcom/mapabc/mapapi/core/CommonProtoBuf$POI$Builder;

    .line 2044
    :cond_1
    invoke-virtual {p1}, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI;->hasName()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2045
    invoke-virtual {p1}, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI$Builder;->setName(Ljava/lang/String;)Lcom/mapabc/mapapi/core/CommonProtoBuf$POI$Builder;

    .line 2047
    :cond_2
    invoke-virtual {p1}, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI;->hasType()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2048
    invoke-virtual {p1}, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI;->getType()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI$Builder;->setType(Ljava/lang/String;)Lcom/mapabc/mapapi/core/CommonProtoBuf$POI$Builder;

    .line 2050
    :cond_3
    invoke-virtual {p1}, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI;->hasX()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 2051
    invoke-virtual {p1}, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI;->getX()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI$Builder;->setX(Ljava/lang/String;)Lcom/mapabc/mapapi/core/CommonProtoBuf$POI$Builder;

    .line 2053
    :cond_4
    invoke-virtual {p1}, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI;->hasY()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 2054
    invoke-virtual {p1}, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI;->getY()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI$Builder;->setY(Ljava/lang/String;)Lcom/mapabc/mapapi/core/CommonProtoBuf$POI$Builder;

    .line 2056
    :cond_5
    invoke-virtual {p1}, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI;->hasSrctype()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 2057
    invoke-virtual {p1}, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI;->getSrctype()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI$Builder;->setSrctype(Ljava/lang/String;)Lcom/mapabc/mapapi/core/CommonProtoBuf$POI$Builder;

    .line 2059
    :cond_6
    invoke-virtual {p1}, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI;->hasAddress()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 2060
    invoke-virtual {p1}, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI;->getAddress()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI$Builder;->setAddress(Ljava/lang/String;)Lcom/mapabc/mapapi/core/CommonProtoBuf$POI$Builder;

    .line 2062
    :cond_7
    invoke-virtual {p1}, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI;->hasTimestamp()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 2063
    invoke-virtual {p1}, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI;->getTimestamp()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI$Builder;->setTimestamp(Ljava/lang/String;)Lcom/mapabc/mapapi/core/CommonProtoBuf$POI$Builder;

    .line 2065
    :cond_8
    invoke-virtual {p1}, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI;->hasMatch()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 2066
    invoke-virtual {p1}, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI;->getMatch()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI$Builder;->setMatch(Ljava/lang/String;)Lcom/mapabc/mapapi/core/CommonProtoBuf$POI$Builder;

    .line 2068
    :cond_9
    invoke-virtual {p1}, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI;->hasCode()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 2069
    invoke-virtual {p1}, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI;->getCode()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI$Builder;->setCode(Ljava/lang/String;)Lcom/mapabc/mapapi/core/CommonProtoBuf$POI$Builder;

    .line 2071
    :cond_a
    invoke-virtual {p1}, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI;->hasNewtype()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 2072
    invoke-virtual {p1}, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI;->getNewtype()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI$Builder;->setNewtype(Ljava/lang/String;)Lcom/mapabc/mapapi/core/CommonProtoBuf$POI$Builder;

    .line 2074
    :cond_b
    invoke-virtual {p1}, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI;->hasCitycode()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 2075
    invoke-virtual {p1}, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI;->getCitycode()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI$Builder;->setCitycode(Ljava/lang/String;)Lcom/mapabc/mapapi/core/CommonProtoBuf$POI$Builder;

    .line 2077
    :cond_c
    invoke-virtual {p1}, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI;->hasTypecode()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 2078
    invoke-virtual {p1}, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI;->getTypecode()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI$Builder;->setTypecode(Ljava/lang/String;)Lcom/mapabc/mapapi/core/CommonProtoBuf$POI$Builder;

    .line 2080
    :cond_d
    invoke-virtual {p1}, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI;->hasGridcode()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 2081
    invoke-virtual {p1}, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI;->getGridcode()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI$Builder;->setGridcode(Ljava/lang/String;)Lcom/mapabc/mapapi/core/CommonProtoBuf$POI$Builder;

    .line 2083
    :cond_e
    invoke-virtual {p1}, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI;->hasBuscode()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 2084
    invoke-virtual {p1}, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI;->getBuscode()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI$Builder;->setBuscode(Ljava/lang/String;)Lcom/mapabc/mapapi/core/CommonProtoBuf$POI$Builder;

    .line 2086
    :cond_f
    invoke-virtual {p1}, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI;->hasUrl()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 2087
    invoke-virtual {p1}, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI;->getUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI$Builder;->setUrl(Ljava/lang/String;)Lcom/mapabc/mapapi/core/CommonProtoBuf$POI$Builder;

    .line 2089
    :cond_10
    invoke-virtual {p1}, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI;->hasXml()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 2090
    invoke-virtual {p1}, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI;->getXml()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI$Builder;->setXml(Ljava/lang/String;)Lcom/mapabc/mapapi/core/CommonProtoBuf$POI$Builder;

    .line 2092
    :cond_11
    invoke-virtual {p1}, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI;->hasImageid()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 2093
    invoke-virtual {p1}, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI;->getImageid()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI$Builder;->setImageid(Ljava/lang/String;)Lcom/mapabc/mapapi/core/CommonProtoBuf$POI$Builder;

    .line 2095
    :cond_12
    invoke-virtual {p1}, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI;->hasTel()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 2096
    invoke-virtual {p1}, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI;->getTel()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI$Builder;->setTel(Ljava/lang/String;)Lcom/mapabc/mapapi/core/CommonProtoBuf$POI$Builder;

    .line 2098
    :cond_13
    invoke-virtual {p1}, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI;->hasLinkid()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 2099
    invoke-virtual {p1}, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI;->getLinkid()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI$Builder;->setLinkid(Ljava/lang/String;)Lcom/mapabc/mapapi/core/CommonProtoBuf$POI$Builder;

    .line 2101
    :cond_14
    invoke-virtual {p1}, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI;->hasDistance()Z

    move-result v0

    if-eqz v0, :cond_15

    .line 2102
    invoke-virtual {p1}, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI;->getDistance()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI$Builder;->setDistance(Ljava/lang/String;)Lcom/mapabc/mapapi/core/CommonProtoBuf$POI$Builder;

    .line 2104
    :cond_15
    invoke-virtual {p1}, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI;->hasDrivedistance()Z

    move-result v0

    if-eqz v0, :cond_16

    .line 2105
    invoke-virtual {p1}, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI;->getDrivedistance()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI$Builder;->setDrivedistance(Ljava/lang/String;)Lcom/mapabc/mapapi/core/CommonProtoBuf$POI$Builder;

    .line 2107
    :cond_16
    invoke-virtual {p1}, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessage$Builder;

    goto/16 :goto_0
.end method

.method public setAddress(Ljava/lang/String;)Lcom/mapabc/mapapi/core/CommonProtoBuf$POI$Builder;
    .locals 1

    .prologue
    .line 2510
    if-nez p1, :cond_0

    .line 2511
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2513
    :cond_0
    iget v0, p0, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI$Builder;->bitField0_:I

    .line 2514
    iput-object p1, p0, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI$Builder;->address_:Ljava/lang/Object;

    .line 2515
    invoke-virtual {p0}, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI$Builder;->onChanged()V

    .line 2516
    return-object p0
.end method

.method setAddress(Lcom/google/protobuf/ByteString;)V
    .locals 1

    .prologue
    .line 2525
    iget v0, p0, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI$Builder;->bitField0_:I

    .line 2526
    iput-object p1, p0, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI$Builder;->address_:Ljava/lang/Object;

    .line 2527
    invoke-virtual {p0}, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI$Builder;->onChanged()V

    .line 2528
    return-void
.end method

.method public setBuscode(Ljava/lang/String;)Lcom/mapabc/mapapi/core/CommonProtoBuf$POI$Builder;
    .locals 1

    .prologue
    .line 2798
    if-nez p1, :cond_0

    .line 2799
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2801
    :cond_0
    iget v0, p0, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x4000

    iput v0, p0, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI$Builder;->bitField0_:I

    .line 2802
    iput-object p1, p0, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI$Builder;->buscode_:Ljava/lang/Object;

    .line 2803
    invoke-virtual {p0}, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI$Builder;->onChanged()V

    .line 2804
    return-object p0
.end method

.method setBuscode(Lcom/google/protobuf/ByteString;)V
    .locals 1

    .prologue
    .line 2813
    iget v0, p0, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x4000

    iput v0, p0, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI$Builder;->bitField0_:I

    .line 2814
    iput-object p1, p0, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI$Builder;->buscode_:Ljava/lang/Object;

    .line 2815
    invoke-virtual {p0}, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI$Builder;->onChanged()V

    .line 2816
    return-void
.end method

.method public setCitycode(Ljava/lang/String;)Lcom/mapabc/mapapi/core/CommonProtoBuf$POI$Builder;
    .locals 1

    .prologue
    .line 2690
    if-nez p1, :cond_0

    .line 2691
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2693
    :cond_0
    iget v0, p0, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x800

    iput v0, p0, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI$Builder;->bitField0_:I

    .line 2694
    iput-object p1, p0, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI$Builder;->citycode_:Ljava/lang/Object;

    .line 2695
    invoke-virtual {p0}, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI$Builder;->onChanged()V

    .line 2696
    return-object p0
.end method

.method setCitycode(Lcom/google/protobuf/ByteString;)V
    .locals 1

    .prologue
    .line 2705
    iget v0, p0, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x800

    iput v0, p0, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI$Builder;->bitField0_:I

    .line 2706
    iput-object p1, p0, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI$Builder;->citycode_:Ljava/lang/Object;

    .line 2707
    invoke-virtual {p0}, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI$Builder;->onChanged()V

    .line 2708
    return-void
.end method

.method public setCode(Ljava/lang/String;)Lcom/mapabc/mapapi/core/CommonProtoBuf$POI$Builder;
    .locals 1

    .prologue
    .line 2618
    if-nez p1, :cond_0

    .line 2619
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2621
    :cond_0
    iget v0, p0, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x200

    iput v0, p0, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI$Builder;->bitField0_:I

    .line 2622
    iput-object p1, p0, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI$Builder;->code_:Ljava/lang/Object;

    .line 2623
    invoke-virtual {p0}, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI$Builder;->onChanged()V

    .line 2624
    return-object p0
.end method

.method setCode(Lcom/google/protobuf/ByteString;)V
    .locals 1

    .prologue
    .line 2633
    iget v0, p0, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x200

    iput v0, p0, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI$Builder;->bitField0_:I

    .line 2634
    iput-object p1, p0, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI$Builder;->code_:Ljava/lang/Object;

    .line 2635
    invoke-virtual {p0}, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI$Builder;->onChanged()V

    .line 2636
    return-void
.end method

.method public setDistance(Ljava/lang/String;)Lcom/mapabc/mapapi/core/CommonProtoBuf$POI$Builder;
    .locals 2

    .prologue
    .line 3014
    if-nez p1, :cond_0

    .line 3015
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 3017
    :cond_0
    iget v0, p0, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI$Builder;->bitField0_:I

    const/high16 v1, 0x100000

    or-int/2addr v0, v1

    iput v0, p0, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI$Builder;->bitField0_:I

    .line 3018
    iput-object p1, p0, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI$Builder;->distance_:Ljava/lang/Object;

    .line 3019
    invoke-virtual {p0}, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI$Builder;->onChanged()V

    .line 3020
    return-object p0
.end method

.method setDistance(Lcom/google/protobuf/ByteString;)V
    .locals 2

    .prologue
    .line 3029
    iget v0, p0, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI$Builder;->bitField0_:I

    const/high16 v1, 0x100000

    or-int/2addr v0, v1

    iput v0, p0, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI$Builder;->bitField0_:I

    .line 3030
    iput-object p1, p0, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI$Builder;->distance_:Ljava/lang/Object;

    .line 3031
    invoke-virtual {p0}, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI$Builder;->onChanged()V

    .line 3032
    return-void
.end method

.method public setDrivedistance(Ljava/lang/String;)Lcom/mapabc/mapapi/core/CommonProtoBuf$POI$Builder;
    .locals 2

    .prologue
    .line 3050
    if-nez p1, :cond_0

    .line 3051
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 3053
    :cond_0
    iget v0, p0, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI$Builder;->bitField0_:I

    const/high16 v1, 0x200000

    or-int/2addr v0, v1

    iput v0, p0, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI$Builder;->bitField0_:I

    .line 3054
    iput-object p1, p0, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI$Builder;->drivedistance_:Ljava/lang/Object;

    .line 3055
    invoke-virtual {p0}, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI$Builder;->onChanged()V

    .line 3056
    return-object p0
.end method

.method setDrivedistance(Lcom/google/protobuf/ByteString;)V
    .locals 2

    .prologue
    .line 3065
    iget v0, p0, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI$Builder;->bitField0_:I

    const/high16 v1, 0x200000

    or-int/2addr v0, v1

    iput v0, p0, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI$Builder;->bitField0_:I

    .line 3066
    iput-object p1, p0, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI$Builder;->drivedistance_:Ljava/lang/Object;

    .line 3067
    invoke-virtual {p0}, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI$Builder;->onChanged()V

    .line 3068
    return-void
.end method

.method public setGridcode(Ljava/lang/String;)Lcom/mapabc/mapapi/core/CommonProtoBuf$POI$Builder;
    .locals 1

    .prologue
    .line 2762
    if-nez p1, :cond_0

    .line 2763
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2765
    :cond_0
    iget v0, p0, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x2000

    iput v0, p0, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI$Builder;->bitField0_:I

    .line 2766
    iput-object p1, p0, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI$Builder;->gridcode_:Ljava/lang/Object;

    .line 2767
    invoke-virtual {p0}, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI$Builder;->onChanged()V

    .line 2768
    return-object p0
.end method

.method setGridcode(Lcom/google/protobuf/ByteString;)V
    .locals 1

    .prologue
    .line 2777
    iget v0, p0, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x2000

    iput v0, p0, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI$Builder;->bitField0_:I

    .line 2778
    iput-object p1, p0, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI$Builder;->gridcode_:Ljava/lang/Object;

    .line 2779
    invoke-virtual {p0}, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI$Builder;->onChanged()V

    .line 2780
    return-void
.end method

.method public setImageid(Ljava/lang/String;)Lcom/mapabc/mapapi/core/CommonProtoBuf$POI$Builder;
    .locals 2

    .prologue
    .line 2906
    if-nez p1, :cond_0

    .line 2907
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2909
    :cond_0
    iget v0, p0, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI$Builder;->bitField0_:I

    const/high16 v1, 0x20000

    or-int/2addr v0, v1

    iput v0, p0, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI$Builder;->bitField0_:I

    .line 2910
    iput-object p1, p0, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI$Builder;->imageid_:Ljava/lang/Object;

    .line 2911
    invoke-virtual {p0}, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI$Builder;->onChanged()V

    .line 2912
    return-object p0
.end method

.method setImageid(Lcom/google/protobuf/ByteString;)V
    .locals 2

    .prologue
    .line 2921
    iget v0, p0, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI$Builder;->bitField0_:I

    const/high16 v1, 0x20000

    or-int/2addr v0, v1

    iput v0, p0, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI$Builder;->bitField0_:I

    .line 2922
    iput-object p1, p0, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI$Builder;->imageid_:Ljava/lang/Object;

    .line 2923
    invoke-virtual {p0}, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI$Builder;->onChanged()V

    .line 2924
    return-void
.end method

.method public setLinkid(Ljava/lang/String;)Lcom/mapabc/mapapi/core/CommonProtoBuf$POI$Builder;
    .locals 2

    .prologue
    .line 2978
    if-nez p1, :cond_0

    .line 2979
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2981
    :cond_0
    iget v0, p0, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI$Builder;->bitField0_:I

    const/high16 v1, 0x80000

    or-int/2addr v0, v1

    iput v0, p0, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI$Builder;->bitField0_:I

    .line 2982
    iput-object p1, p0, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI$Builder;->linkid_:Ljava/lang/Object;

    .line 2983
    invoke-virtual {p0}, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI$Builder;->onChanged()V

    .line 2984
    return-object p0
.end method

.method setLinkid(Lcom/google/protobuf/ByteString;)V
    .locals 2

    .prologue
    .line 2993
    iget v0, p0, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI$Builder;->bitField0_:I

    const/high16 v1, 0x80000

    or-int/2addr v0, v1

    iput v0, p0, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI$Builder;->bitField0_:I

    .line 2994
    iput-object p1, p0, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI$Builder;->linkid_:Ljava/lang/Object;

    .line 2995
    invoke-virtual {p0}, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI$Builder;->onChanged()V

    .line 2996
    return-void
.end method

.method public setMatch(Ljava/lang/String;)Lcom/mapabc/mapapi/core/CommonProtoBuf$POI$Builder;
    .locals 1

    .prologue
    .line 2582
    if-nez p1, :cond_0

    .line 2583
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2585
    :cond_0
    iget v0, p0, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x100

    iput v0, p0, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI$Builder;->bitField0_:I

    .line 2586
    iput-object p1, p0, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI$Builder;->match_:Ljava/lang/Object;

    .line 2587
    invoke-virtual {p0}, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI$Builder;->onChanged()V

    .line 2588
    return-object p0
.end method

.method setMatch(Lcom/google/protobuf/ByteString;)V
    .locals 1

    .prologue
    .line 2597
    iget v0, p0, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x100

    iput v0, p0, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI$Builder;->bitField0_:I

    .line 2598
    iput-object p1, p0, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI$Builder;->match_:Ljava/lang/Object;

    .line 2599
    invoke-virtual {p0}, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI$Builder;->onChanged()V

    .line 2600
    return-void
.end method

.method public setName(Ljava/lang/String;)Lcom/mapabc/mapapi/core/CommonProtoBuf$POI$Builder;
    .locals 1

    .prologue
    .line 2330
    if-nez p1, :cond_0

    .line 2331
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2333
    :cond_0
    iget v0, p0, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI$Builder;->bitField0_:I

    .line 2334
    iput-object p1, p0, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI$Builder;->name_:Ljava/lang/Object;

    .line 2335
    invoke-virtual {p0}, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI$Builder;->onChanged()V

    .line 2336
    return-object p0
.end method

.method setName(Lcom/google/protobuf/ByteString;)V
    .locals 1

    .prologue
    .line 2345
    iget v0, p0, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI$Builder;->bitField0_:I

    .line 2346
    iput-object p1, p0, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI$Builder;->name_:Ljava/lang/Object;

    .line 2347
    invoke-virtual {p0}, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI$Builder;->onChanged()V

    .line 2348
    return-void
.end method

.method public setNewtype(Ljava/lang/String;)Lcom/mapabc/mapapi/core/CommonProtoBuf$POI$Builder;
    .locals 1

    .prologue
    .line 2654
    if-nez p1, :cond_0

    .line 2655
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2657
    :cond_0
    iget v0, p0, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x400

    iput v0, p0, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI$Builder;->bitField0_:I

    .line 2658
    iput-object p1, p0, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI$Builder;->newtype_:Ljava/lang/Object;

    .line 2659
    invoke-virtual {p0}, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI$Builder;->onChanged()V

    .line 2660
    return-object p0
.end method

.method setNewtype(Lcom/google/protobuf/ByteString;)V
    .locals 1

    .prologue
    .line 2669
    iget v0, p0, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x400

    iput v0, p0, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI$Builder;->bitField0_:I

    .line 2670
    iput-object p1, p0, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI$Builder;->newtype_:Ljava/lang/Object;

    .line 2671
    invoke-virtual {p0}, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI$Builder;->onChanged()V

    .line 2672
    return-void
.end method

.method public setPguid(Ljava/lang/String;)Lcom/mapabc/mapapi/core/CommonProtoBuf$POI$Builder;
    .locals 1

    .prologue
    .line 2294
    if-nez p1, :cond_0

    .line 2295
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2297
    :cond_0
    iget v0, p0, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI$Builder;->bitField0_:I

    .line 2298
    iput-object p1, p0, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI$Builder;->pguid_:Ljava/lang/Object;

    .line 2299
    invoke-virtual {p0}, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI$Builder;->onChanged()V

    .line 2300
    return-object p0
.end method

.method setPguid(Lcom/google/protobuf/ByteString;)V
    .locals 1

    .prologue
    .line 2309
    iget v0, p0, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI$Builder;->bitField0_:I

    .line 2310
    iput-object p1, p0, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI$Builder;->pguid_:Ljava/lang/Object;

    .line 2311
    invoke-virtual {p0}, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI$Builder;->onChanged()V

    .line 2312
    return-void
.end method

.method public setSrctype(Ljava/lang/String;)Lcom/mapabc/mapapi/core/CommonProtoBuf$POI$Builder;
    .locals 1

    .prologue
    .line 2474
    if-nez p1, :cond_0

    .line 2475
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2477
    :cond_0
    iget v0, p0, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI$Builder;->bitField0_:I

    .line 2478
    iput-object p1, p0, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI$Builder;->srctype_:Ljava/lang/Object;

    .line 2479
    invoke-virtual {p0}, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI$Builder;->onChanged()V

    .line 2480
    return-object p0
.end method

.method setSrctype(Lcom/google/protobuf/ByteString;)V
    .locals 1

    .prologue
    .line 2489
    iget v0, p0, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI$Builder;->bitField0_:I

    .line 2490
    iput-object p1, p0, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI$Builder;->srctype_:Ljava/lang/Object;

    .line 2491
    invoke-virtual {p0}, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI$Builder;->onChanged()V

    .line 2492
    return-void
.end method

.method public setTel(Ljava/lang/String;)Lcom/mapabc/mapapi/core/CommonProtoBuf$POI$Builder;
    .locals 2

    .prologue
    .line 2942
    if-nez p1, :cond_0

    .line 2943
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2945
    :cond_0
    iget v0, p0, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI$Builder;->bitField0_:I

    const/high16 v1, 0x40000

    or-int/2addr v0, v1

    iput v0, p0, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI$Builder;->bitField0_:I

    .line 2946
    iput-object p1, p0, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI$Builder;->tel_:Ljava/lang/Object;

    .line 2947
    invoke-virtual {p0}, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI$Builder;->onChanged()V

    .line 2948
    return-object p0
.end method

.method setTel(Lcom/google/protobuf/ByteString;)V
    .locals 2

    .prologue
    .line 2957
    iget v0, p0, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI$Builder;->bitField0_:I

    const/high16 v1, 0x40000

    or-int/2addr v0, v1

    iput v0, p0, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI$Builder;->bitField0_:I

    .line 2958
    iput-object p1, p0, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI$Builder;->tel_:Ljava/lang/Object;

    .line 2959
    invoke-virtual {p0}, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI$Builder;->onChanged()V

    .line 2960
    return-void
.end method

.method public setTimestamp(Ljava/lang/String;)Lcom/mapabc/mapapi/core/CommonProtoBuf$POI$Builder;
    .locals 1

    .prologue
    .line 2546
    if-nez p1, :cond_0

    .line 2547
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2549
    :cond_0
    iget v0, p0, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x80

    iput v0, p0, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI$Builder;->bitField0_:I

    .line 2550
    iput-object p1, p0, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI$Builder;->timestamp_:Ljava/lang/Object;

    .line 2551
    invoke-virtual {p0}, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI$Builder;->onChanged()V

    .line 2552
    return-object p0
.end method

.method setTimestamp(Lcom/google/protobuf/ByteString;)V
    .locals 1

    .prologue
    .line 2561
    iget v0, p0, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x80

    iput v0, p0, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI$Builder;->bitField0_:I

    .line 2562
    iput-object p1, p0, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI$Builder;->timestamp_:Ljava/lang/Object;

    .line 2563
    invoke-virtual {p0}, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI$Builder;->onChanged()V

    .line 2564
    return-void
.end method

.method public setType(Ljava/lang/String;)Lcom/mapabc/mapapi/core/CommonProtoBuf$POI$Builder;
    .locals 1

    .prologue
    .line 2366
    if-nez p1, :cond_0

    .line 2367
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2369
    :cond_0
    iget v0, p0, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI$Builder;->bitField0_:I

    .line 2370
    iput-object p1, p0, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI$Builder;->type_:Ljava/lang/Object;

    .line 2371
    invoke-virtual {p0}, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI$Builder;->onChanged()V

    .line 2372
    return-object p0
.end method

.method setType(Lcom/google/protobuf/ByteString;)V
    .locals 1

    .prologue
    .line 2381
    iget v0, p0, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI$Builder;->bitField0_:I

    .line 2382
    iput-object p1, p0, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI$Builder;->type_:Ljava/lang/Object;

    .line 2383
    invoke-virtual {p0}, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI$Builder;->onChanged()V

    .line 2384
    return-void
.end method

.method public setTypecode(Ljava/lang/String;)Lcom/mapabc/mapapi/core/CommonProtoBuf$POI$Builder;
    .locals 1

    .prologue
    .line 2726
    if-nez p1, :cond_0

    .line 2727
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2729
    :cond_0
    iget v0, p0, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x1000

    iput v0, p0, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI$Builder;->bitField0_:I

    .line 2730
    iput-object p1, p0, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI$Builder;->typecode_:Ljava/lang/Object;

    .line 2731
    invoke-virtual {p0}, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI$Builder;->onChanged()V

    .line 2732
    return-object p0
.end method

.method setTypecode(Lcom/google/protobuf/ByteString;)V
    .locals 1

    .prologue
    .line 2741
    iget v0, p0, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x1000

    iput v0, p0, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI$Builder;->bitField0_:I

    .line 2742
    iput-object p1, p0, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI$Builder;->typecode_:Ljava/lang/Object;

    .line 2743
    invoke-virtual {p0}, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI$Builder;->onChanged()V

    .line 2744
    return-void
.end method

.method public setUrl(Ljava/lang/String;)Lcom/mapabc/mapapi/core/CommonProtoBuf$POI$Builder;
    .locals 2

    .prologue
    .line 2834
    if-nez p1, :cond_0

    .line 2835
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2837
    :cond_0
    iget v0, p0, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI$Builder;->bitField0_:I

    const v1, 0x8000

    or-int/2addr v0, v1

    iput v0, p0, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI$Builder;->bitField0_:I

    .line 2838
    iput-object p1, p0, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI$Builder;->url_:Ljava/lang/Object;

    .line 2839
    invoke-virtual {p0}, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI$Builder;->onChanged()V

    .line 2840
    return-object p0
.end method

.method setUrl(Lcom/google/protobuf/ByteString;)V
    .locals 2

    .prologue
    .line 2849
    iget v0, p0, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI$Builder;->bitField0_:I

    const v1, 0x8000

    or-int/2addr v0, v1

    iput v0, p0, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI$Builder;->bitField0_:I

    .line 2850
    iput-object p1, p0, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI$Builder;->url_:Ljava/lang/Object;

    .line 2851
    invoke-virtual {p0}, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI$Builder;->onChanged()V

    .line 2852
    return-void
.end method

.method public setX(Ljava/lang/String;)Lcom/mapabc/mapapi/core/CommonProtoBuf$POI$Builder;
    .locals 1

    .prologue
    .line 2402
    if-nez p1, :cond_0

    .line 2403
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2405
    :cond_0
    iget v0, p0, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI$Builder;->bitField0_:I

    .line 2406
    iput-object p1, p0, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI$Builder;->x_:Ljava/lang/Object;

    .line 2407
    invoke-virtual {p0}, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI$Builder;->onChanged()V

    .line 2408
    return-object p0
.end method

.method setX(Lcom/google/protobuf/ByteString;)V
    .locals 1

    .prologue
    .line 2417
    iget v0, p0, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI$Builder;->bitField0_:I

    .line 2418
    iput-object p1, p0, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI$Builder;->x_:Ljava/lang/Object;

    .line 2419
    invoke-virtual {p0}, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI$Builder;->onChanged()V

    .line 2420
    return-void
.end method

.method public setXml(Ljava/lang/String;)Lcom/mapabc/mapapi/core/CommonProtoBuf$POI$Builder;
    .locals 2

    .prologue
    .line 2870
    if-nez p1, :cond_0

    .line 2871
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2873
    :cond_0
    iget v0, p0, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI$Builder;->bitField0_:I

    const/high16 v1, 0x10000

    or-int/2addr v0, v1

    iput v0, p0, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI$Builder;->bitField0_:I

    .line 2874
    iput-object p1, p0, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI$Builder;->xml_:Ljava/lang/Object;

    .line 2875
    invoke-virtual {p0}, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI$Builder;->onChanged()V

    .line 2876
    return-object p0
.end method

.method setXml(Lcom/google/protobuf/ByteString;)V
    .locals 2

    .prologue
    .line 2885
    iget v0, p0, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI$Builder;->bitField0_:I

    const/high16 v1, 0x10000

    or-int/2addr v0, v1

    iput v0, p0, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI$Builder;->bitField0_:I

    .line 2886
    iput-object p1, p0, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI$Builder;->xml_:Ljava/lang/Object;

    .line 2887
    invoke-virtual {p0}, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI$Builder;->onChanged()V

    .line 2888
    return-void
.end method

.method public setY(Ljava/lang/String;)Lcom/mapabc/mapapi/core/CommonProtoBuf$POI$Builder;
    .locals 1

    .prologue
    .line 2438
    if-nez p1, :cond_0

    .line 2439
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2441
    :cond_0
    iget v0, p0, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI$Builder;->bitField0_:I

    .line 2442
    iput-object p1, p0, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI$Builder;->y_:Ljava/lang/Object;

    .line 2443
    invoke-virtual {p0}, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI$Builder;->onChanged()V

    .line 2444
    return-object p0
.end method

.method setY(Lcom/google/protobuf/ByteString;)V
    .locals 1

    .prologue
    .line 2453
    iget v0, p0, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI$Builder;->bitField0_:I

    .line 2454
    iput-object p1, p0, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI$Builder;->y_:Ljava/lang/Object;

    .line 2455
    invoke-virtual {p0}, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI$Builder;->onChanged()V

    .line 2456
    return-void
.end method
