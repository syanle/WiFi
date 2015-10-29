.class public final Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCResponse$Builder;
.super Lcom/google/protobuf/GeneratedMessage$Builder;
.source "RGCProtoBuf.java"

# interfaces
.implements Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCResponseOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessage$Builder",
        "<",
        "Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCResponse$Builder;",
        ">;",
        "Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCResponseOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private rgcItemBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/RepeatedFieldBuilder",
            "<",
            "Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCItem;",
            "Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCItem$Builder;",
            "Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCItemOrBuilder;",
            ">;"
        }
    .end annotation
.end field

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
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 1596
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;-><init>()V

    .line 1758
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCResponse$Builder;->rgcItem_:Ljava/util/List;

    .line 1597
    invoke-direct {p0}, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCResponse$Builder;->maybeForceBuilderInitialization()V

    .line 1598
    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V
    .locals 1

    .prologue
    .line 1601
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessage$Builder;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V

    .line 1758
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCResponse$Builder;->rgcItem_:Ljava/util/List;

    .line 1602
    invoke-direct {p0}, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCResponse$Builder;->maybeForceBuilderInitialization()V

    .line 1603
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;Lcom/mapabc/mapapi/core/v;)V
    .locals 0

    .prologue
    .line 1582
    invoke-direct {p0, p1}, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCResponse$Builder;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V

    return-void
.end method

.method static synthetic access$2100(Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCResponse$Builder;)Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCResponse;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 1582
    invoke-direct {p0}, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCResponse$Builder;->buildParsed()Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCResponse;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2200()Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCResponse$Builder;
    .locals 1

    .prologue
    .line 1582
    invoke-static {}, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCResponse$Builder;->create()Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method private buildParsed()Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCResponse;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 1647
    invoke-virtual {p0}, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCResponse$Builder;->buildPartial()Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCResponse;

    move-result-object v0

    .line 1648
    invoke-virtual {v0}, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCResponse;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1649
    invoke-static {v0}, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCResponse$Builder;->newUninitializedMessageException(Lcom/google/protobuf/Message;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/UninitializedMessageException;->asInvalidProtocolBufferException()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0

    .line 1652
    :cond_0
    return-object v0
.end method

.method private static create()Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCResponse$Builder;
    .locals 1

    .prologue
    .line 1610
    new-instance v0, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCResponse$Builder;

    invoke-direct {v0}, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCResponse$Builder;-><init>()V

    return-object v0
.end method

.method private ensureRgcItemIsMutable()V
    .locals 2

    .prologue
    .line 1761
    iget v0, p0, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 1762
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCResponse$Builder;->rgcItem_:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCResponse$Builder;->rgcItem_:Ljava/util/List;

    .line 1763
    iget v0, p0, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCResponse$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCResponse$Builder;->bitField0_:I

    .line 1765
    :cond_0
    return-void
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 1587
    # getter for: Lcom/mapabc/mapapi/core/RGCProtoBuf;->internal_static_RGCResponse_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;
    invoke-static {}, Lcom/mapabc/mapapi/core/RGCProtoBuf;->access$1900()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method private getRgcItemFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilder;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/RepeatedFieldBuilder",
            "<",
            "Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCItem;",
            "Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCItem$Builder;",
            "Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCItemOrBuilder;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v0, 0x1

    .line 1931
    iget-object v1, p0, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCResponse$Builder;->rgcItemBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v1, :cond_0

    .line 1932
    new-instance v1, Lcom/google/protobuf/RepeatedFieldBuilder;

    iget-object v2, p0, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCResponse$Builder;->rgcItem_:Ljava/util/List;

    iget v3, p0, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCResponse$Builder;->bitField0_:I

    and-int/lit8 v3, v3, 0x1

    if-ne v3, v0, :cond_1

    :goto_0
    invoke-virtual {p0}, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCResponse$Builder;->getParentForChildren()Lcom/google/protobuf/GeneratedMessage$BuilderParent;

    move-result-object v3

    invoke-virtual {p0}, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCResponse$Builder;->isClean()Z

    move-result v4

    invoke-direct {v1, v2, v0, v3, v4}, Lcom/google/protobuf/RepeatedFieldBuilder;-><init>(Ljava/util/List;ZLcom/google/protobuf/GeneratedMessage$BuilderParent;Z)V

    iput-object v1, p0, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCResponse$Builder;->rgcItemBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    .line 1938
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCResponse$Builder;->rgcItem_:Ljava/util/List;

    .line 1940
    :cond_0
    iget-object v0, p0, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCResponse$Builder;->rgcItemBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    return-object v0

    .line 1932
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private maybeForceBuilderInitialization()V
    .locals 1

    .prologue
    .line 1605
    # getter for: Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCResponse;->alwaysUseFieldBuilders:Z
    invoke-static {}, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCResponse;->access$2400()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1606
    invoke-direct {p0}, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCResponse$Builder;->getRgcItemFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilder;

    .line 1608
    :cond_0
    return-void
.end method


# virtual methods
.method public addAllRgcItem(Ljava/lang/Iterable;)Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCResponse$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<+",
            "Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCItem;",
            ">;)",
            "Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCResponse$Builder;"
        }
    .end annotation

    .prologue
    .line 1867
    iget-object v0, p0, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCResponse$Builder;->rgcItemBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 1868
    invoke-direct {p0}, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCResponse$Builder;->ensureRgcItemIsMutable()V

    .line 1869
    iget-object v0, p0, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCResponse$Builder;->rgcItem_:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/google/protobuf/GeneratedMessage$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    .line 1870
    invoke-virtual {p0}, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCResponse$Builder;->onChanged()V

    .line 1874
    :goto_0
    return-object p0

    .line 1872
    :cond_0
    iget-object v0, p0, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCResponse$Builder;->rgcItemBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilder;->addAllMessages(Ljava/lang/Iterable;)Lcom/google/protobuf/RepeatedFieldBuilder;

    goto :goto_0
.end method

.method public addRgcItem(ILcom/mapabc/mapapi/core/RGCProtoBuf$RGCItem$Builder;)Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCResponse$Builder;
    .locals 2

    .prologue
    .line 1856
    iget-object v0, p0, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCResponse$Builder;->rgcItemBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 1857
    invoke-direct {p0}, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCResponse$Builder;->ensureRgcItemIsMutable()V

    .line 1858
    iget-object v0, p0, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCResponse$Builder;->rgcItem_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCItem$Builder;->build()Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCItem;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 1859
    invoke-virtual {p0}, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCResponse$Builder;->onChanged()V

    .line 1863
    :goto_0
    return-object p0

    .line 1861
    :cond_0
    iget-object v0, p0, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCResponse$Builder;->rgcItemBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {p2}, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCItem$Builder;->build()Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCItem;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/google/protobuf/RepeatedFieldBuilder;->addMessage(ILcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/RepeatedFieldBuilder;

    goto :goto_0
.end method

.method public addRgcItem(ILcom/mapabc/mapapi/core/RGCProtoBuf$RGCItem;)Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCResponse$Builder;
    .locals 1

    .prologue
    .line 1831
    iget-object v0, p0, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCResponse$Builder;->rgcItemBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_1

    .line 1832
    if-nez p2, :cond_0

    .line 1833
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1835
    :cond_0
    invoke-direct {p0}, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCResponse$Builder;->ensureRgcItemIsMutable()V

    .line 1836
    iget-object v0, p0, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCResponse$Builder;->rgcItem_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 1837
    invoke-virtual {p0}, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCResponse$Builder;->onChanged()V

    .line 1841
    :goto_0
    return-object p0

    .line 1839
    :cond_1
    iget-object v0, p0, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCResponse$Builder;->rgcItemBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0, p1, p2}, Lcom/google/protobuf/RepeatedFieldBuilder;->addMessage(ILcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/RepeatedFieldBuilder;

    goto :goto_0
.end method

.method public addRgcItem(Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCItem$Builder;)Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCResponse$Builder;
    .locals 2

    .prologue
    .line 1845
    iget-object v0, p0, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCResponse$Builder;->rgcItemBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 1846
    invoke-direct {p0}, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCResponse$Builder;->ensureRgcItemIsMutable()V

    .line 1847
    iget-object v0, p0, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCResponse$Builder;->rgcItem_:Ljava/util/List;

    invoke-virtual {p1}, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCItem$Builder;->build()Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCItem;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1848
    invoke-virtual {p0}, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCResponse$Builder;->onChanged()V

    .line 1852
    :goto_0
    return-object p0

    .line 1850
    :cond_0
    iget-object v0, p0, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCResponse$Builder;->rgcItemBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {p1}, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCItem$Builder;->build()Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCItem;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/protobuf/RepeatedFieldBuilder;->addMessage(Lcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/RepeatedFieldBuilder;

    goto :goto_0
.end method

.method public addRgcItem(Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCItem;)Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCResponse$Builder;
    .locals 1

    .prologue
    .line 1817
    iget-object v0, p0, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCResponse$Builder;->rgcItemBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_1

    .line 1818
    if-nez p1, :cond_0

    .line 1819
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1821
    :cond_0
    invoke-direct {p0}, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCResponse$Builder;->ensureRgcItemIsMutable()V

    .line 1822
    iget-object v0, p0, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCResponse$Builder;->rgcItem_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1823
    invoke-virtual {p0}, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCResponse$Builder;->onChanged()V

    .line 1827
    :goto_0
    return-object p0

    .line 1825
    :cond_1
    iget-object v0, p0, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCResponse$Builder;->rgcItemBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilder;->addMessage(Lcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/RepeatedFieldBuilder;

    goto :goto_0
.end method

.method public addRgcItemBuilder()Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCItem$Builder;
    .locals 2

    .prologue
    .line 1916
    invoke-direct {p0}, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCResponse$Builder;->getRgcItemFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilder;

    move-result-object v0

    invoke-static {}, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCItem;->getDefaultInstance()Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCItem;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/protobuf/RepeatedFieldBuilder;->addBuilder(Lcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/GeneratedMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCItem$Builder;

    return-object v0
.end method

.method public addRgcItemBuilder(I)Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCItem$Builder;
    .locals 2

    .prologue
    .line 1921
    invoke-direct {p0}, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCResponse$Builder;->getRgcItemFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilder;

    move-result-object v0

    invoke-static {}, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCItem;->getDefaultInstance()Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCItem;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/google/protobuf/RepeatedFieldBuilder;->addBuilder(ILcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/GeneratedMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCItem$Builder;

    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 1582
    invoke-virtual {p0}, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCResponse$Builder;->build()Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCResponse;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 1582
    invoke-virtual {p0}, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCResponse$Builder;->build()Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCResponse;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCResponse;
    .locals 2

    .prologue
    .line 1638
    invoke-virtual {p0}, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCResponse$Builder;->buildPartial()Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCResponse;

    move-result-object v0

    .line 1639
    invoke-virtual {v0}, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCResponse;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1640
    invoke-static {v0}, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCResponse$Builder;->newUninitializedMessageException(Lcom/google/protobuf/Message;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0

    .line 1642
    :cond_0
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 1582
    invoke-virtual {p0}, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCResponse$Builder;->buildPartial()Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCResponse;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 1582
    invoke-virtual {p0}, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCResponse$Builder;->buildPartial()Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCResponse;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCResponse;
    .locals 3

    .prologue
    .line 1656
    new-instance v0, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCResponse;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCResponse;-><init>(Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCResponse$Builder;Lcom/mapabc/mapapi/core/v;)V

    .line 1657
    iget v1, p0, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCResponse$Builder;->bitField0_:I

    .line 1658
    iget-object v1, p0, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCResponse$Builder;->rgcItemBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v1, :cond_1

    .line 1659
    iget v1, p0, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCResponse$Builder;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 1660
    iget-object v1, p0, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCResponse$Builder;->rgcItem_:Ljava/util/List;

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCResponse$Builder;->rgcItem_:Ljava/util/List;

    .line 1661
    iget v1, p0, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCResponse$Builder;->bitField0_:I

    and-int/lit8 v1, v1, -0x2

    iput v1, p0, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCResponse$Builder;->bitField0_:I

    .line 1663
    :cond_0
    iget-object v1, p0, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCResponse$Builder;->rgcItem_:Ljava/util/List;

    # setter for: Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCResponse;->rgcItem_:Ljava/util/List;
    invoke-static {v0, v1}, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCResponse;->access$2602(Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCResponse;Ljava/util/List;)Ljava/util/List;

    .line 1667
    :goto_0
    invoke-virtual {p0}, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCResponse$Builder;->onBuilt()V

    .line 1668
    return-object v0

    .line 1665
    :cond_1
    iget-object v1, p0, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCResponse$Builder;->rgcItemBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v1}, Lcom/google/protobuf/RepeatedFieldBuilder;->build()Ljava/util/List;

    move-result-object v1

    # setter for: Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCResponse;->rgcItem_:Ljava/util/List;
    invoke-static {v0, v1}, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCResponse;->access$2602(Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCResponse;Ljava/util/List;)Ljava/util/List;

    goto :goto_0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 1582
    invoke-virtual {p0}, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCResponse$Builder;->clear()Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessage$Builder;
    .locals 1

    .prologue
    .line 1582
    invoke-virtual {p0}, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCResponse$Builder;->clear()Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 1582
    invoke-virtual {p0}, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCResponse$Builder;->clear()Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 1582
    invoke-virtual {p0}, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCResponse$Builder;->clear()Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCResponse$Builder;
    .locals 1

    .prologue
    .line 1614
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->clear()Lcom/google/protobuf/GeneratedMessage$Builder;

    .line 1615
    iget-object v0, p0, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCResponse$Builder;->rgcItemBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 1616
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCResponse$Builder;->rgcItem_:Ljava/util/List;

    .line 1617
    iget v0, p0, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCResponse$Builder;->bitField0_:I

    .line 1621
    :goto_0
    return-object p0

    .line 1619
    :cond_0
    iget-object v0, p0, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCResponse$Builder;->rgcItemBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilder;->clear()V

    goto :goto_0
.end method

.method public clearRgcItem()Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCResponse$Builder;
    .locals 1

    .prologue
    .line 1877
    iget-object v0, p0, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCResponse$Builder;->rgcItemBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 1878
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCResponse$Builder;->rgcItem_:Ljava/util/List;

    .line 1879
    iget v0, p0, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCResponse$Builder;->bitField0_:I

    .line 1880
    invoke-virtual {p0}, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCResponse$Builder;->onChanged()V

    .line 1884
    :goto_0
    return-object p0

    .line 1882
    :cond_0
    iget-object v0, p0, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCResponse$Builder;->rgcItemBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilder;->clear()V

    goto :goto_0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 1582
    invoke-virtual {p0}, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCResponse$Builder;->clone()Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .prologue
    .line 1582
    invoke-virtual {p0}, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCResponse$Builder;->clone()Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessage$Builder;
    .locals 1

    .prologue
    .line 1582
    invoke-virtual {p0}, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCResponse$Builder;->clone()Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 1582
    invoke-virtual {p0}, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCResponse$Builder;->clone()Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 1582
    invoke-virtual {p0}, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCResponse$Builder;->clone()Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCResponse$Builder;
    .locals 2

    .prologue
    .line 1625
    invoke-static {}, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCResponse$Builder;->create()Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCResponse$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCResponse$Builder;->buildPartial()Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCResponse;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCResponse$Builder;->mergeFrom(Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCResponse;)Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCResponse$Builder;

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
    .line 1582
    invoke-virtual {p0}, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCResponse$Builder;->clone()Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 1582
    invoke-virtual {p0}, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCResponse$Builder;->getDefaultInstanceForType()Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCResponse;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 1582
    invoke-virtual {p0}, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCResponse$Builder;->getDefaultInstanceForType()Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCResponse;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCResponse;
    .locals 1

    .prologue
    .line 1634
    invoke-static {}, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCResponse;->getDefaultInstance()Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCResponse;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 1630
    invoke-static {}, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCResponse;->getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public getRgcItem(I)Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCItem;
    .locals 1

    .prologue
    .line 1785
    iget-object v0, p0, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCResponse$Builder;->rgcItemBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 1786
    iget-object v0, p0, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCResponse$Builder;->rgcItem_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCItem;

    .line 1788
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCResponse$Builder;->rgcItemBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilder;->getMessage(I)Lcom/google/protobuf/GeneratedMessage;

    move-result-object v0

    check-cast v0, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCItem;

    goto :goto_0
.end method

.method public getRgcItemBuilder(I)Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCItem$Builder;
    .locals 1

    .prologue
    .line 1898
    invoke-direct {p0}, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCResponse$Builder;->getRgcItemFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilder;->getBuilder(I)Lcom/google/protobuf/GeneratedMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCItem$Builder;

    return-object v0
.end method

.method public getRgcItemBuilderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCItem$Builder;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1926
    invoke-direct {p0}, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCResponse$Builder;->getRgcItemFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilder;->getBuilderList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getRgcItemCount()I
    .locals 1

    .prologue
    .line 1778
    iget-object v0, p0, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCResponse$Builder;->rgcItemBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 1779
    iget-object v0, p0, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCResponse$Builder;->rgcItem_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 1781
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCResponse$Builder;->rgcItemBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilder;->getCount()I

    move-result v0

    goto :goto_0
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
    .line 1771
    iget-object v0, p0, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCResponse$Builder;->rgcItemBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 1772
    iget-object v0, p0, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCResponse$Builder;->rgcItem_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 1774
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCResponse$Builder;->rgcItemBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilder;->getMessageList()Ljava/util/List;

    move-result-object v0

    goto :goto_0
.end method

.method public getRgcItemOrBuilder(I)Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCItemOrBuilder;
    .locals 1

    .prologue
    .line 1902
    iget-object v0, p0, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCResponse$Builder;->rgcItemBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 1903
    iget-object v0, p0, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCResponse$Builder;->rgcItem_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCItemOrBuilder;

    .line 1904
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCResponse$Builder;->rgcItemBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilder;->getMessageOrBuilder(I)Lcom/google/protobuf/MessageOrBuilder;

    move-result-object v0

    check-cast v0, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCItemOrBuilder;

    goto :goto_0
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
    .line 1909
    iget-object v0, p0, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCResponse$Builder;->rgcItemBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-eqz v0, :cond_0

    .line 1910
    iget-object v0, p0, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCResponse$Builder;->rgcItemBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilder;->getMessageOrBuilderList()Ljava/util/List;

    move-result-object v0

    .line 1912
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCResponse$Builder;->rgcItem_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    goto :goto_0
.end method

.method protected internalGetFieldAccessorTable()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 1

    .prologue
    .line 1592
    # getter for: Lcom/mapabc/mapapi/core/RGCProtoBuf;->internal_static_RGCResponse_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    invoke-static {}, Lcom/mapabc/mapapi/core/RGCProtoBuf;->access$2000()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 1713
    move v0, v1

    :goto_0
    invoke-virtual {p0}, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCResponse$Builder;->getRgcItemCount()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 1714
    invoke-virtual {p0, v0}, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCResponse$Builder;->getRgcItem(I)Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCItem;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCItem;->isInitialized()Z

    move-result v2

    if-nez v2, :cond_0

    .line 1719
    :goto_1
    return v1

    .line 1713
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1719
    :cond_1
    const/4 v1, 0x1

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
    .line 1582
    invoke-virtual {p0, p1, p2}, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCResponse$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 1582
    invoke-virtual {p0, p1}, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCResponse$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCResponse$Builder;

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
    .line 1582
    invoke-virtual {p0, p1, p2}, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCResponse$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCResponse$Builder;

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
    .line 1582
    invoke-virtual {p0, p1, p2}, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCResponse$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 1582
    invoke-virtual {p0, p1}, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCResponse$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCResponse$Builder;

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
    .line 1582
    invoke-virtual {p0, p1, p2}, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCResponse$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCResponse$Builder;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1726
    invoke-virtual {p0}, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCResponse$Builder;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v0

    invoke-static {v0}, Lcom/google/protobuf/UnknownFieldSet;->newBuilder(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/UnknownFieldSet$Builder;

    move-result-object v0

    .line 1730
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v1

    .line 1731
    sparse-switch v1, :sswitch_data_0

    .line 1737
    invoke-virtual {p0, p1, v0, p2, v1}, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCResponse$Builder;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/UnknownFieldSet$Builder;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1739
    invoke-virtual {v0}, Lcom/google/protobuf/UnknownFieldSet$Builder;->build()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCResponse$Builder;->setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessage$Builder;

    .line 1740
    invoke-virtual {p0}, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCResponse$Builder;->onChanged()V

    .line 1741
    :goto_1
    return-object p0

    .line 1733
    :sswitch_0
    invoke-virtual {v0}, Lcom/google/protobuf/UnknownFieldSet$Builder;->build()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCResponse$Builder;->setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessage$Builder;

    .line 1734
    invoke-virtual {p0}, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCResponse$Builder;->onChanged()V

    goto :goto_1

    .line 1746
    :sswitch_1
    invoke-static {}, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCItem;->newBuilder()Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCItem$Builder;

    move-result-object v1

    .line 1747
    invoke-virtual {p1, v1, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 1748
    invoke-virtual {v1}, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCItem$Builder;->buildPartial()Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCItem;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCResponse$Builder;->addRgcItem(Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCItem;)Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCResponse$Builder;

    goto :goto_0

    .line 1731
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
    .end sparse-switch
.end method

.method public mergeFrom(Lcom/google/protobuf/Message;)Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCResponse$Builder;
    .locals 1

    .prologue
    .line 1672
    instance-of v0, p1, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCResponse;

    if-eqz v0, :cond_0

    .line 1673
    check-cast p1, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCResponse;

    invoke-virtual {p0, p1}, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCResponse$Builder;->mergeFrom(Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCResponse;)Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCResponse$Builder;

    move-result-object p0

    .line 1676
    :goto_0
    return-object p0

    .line 1675
    :cond_0
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessage$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;

    goto :goto_0
.end method

.method public mergeFrom(Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCResponse;)Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCResponse$Builder;
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 1681
    invoke-static {}, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCResponse;->getDefaultInstance()Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCResponse;

    move-result-object v1

    if-ne p1, v1, :cond_0

    .line 1709
    :goto_0
    return-object p0

    .line 1682
    :cond_0
    iget-object v1, p0, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCResponse$Builder;->rgcItemBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v1, :cond_3

    .line 1683
    # getter for: Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCResponse;->rgcItem_:Ljava/util/List;
    invoke-static {p1}, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCResponse;->access$2600(Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCResponse;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1684
    iget-object v0, p0, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCResponse$Builder;->rgcItem_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1685
    # getter for: Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCResponse;->rgcItem_:Ljava/util/List;
    invoke-static {p1}, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCResponse;->access$2600(Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCResponse;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCResponse$Builder;->rgcItem_:Ljava/util/List;

    .line 1686
    iget v0, p0, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCResponse$Builder;->bitField0_:I

    .line 1691
    :goto_1
    invoke-virtual {p0}, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCResponse$Builder;->onChanged()V

    .line 1708
    :cond_1
    :goto_2
    invoke-virtual {p1}, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCResponse;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCResponse$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessage$Builder;

    goto :goto_0

    .line 1688
    :cond_2
    invoke-direct {p0}, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCResponse$Builder;->ensureRgcItemIsMutable()V

    .line 1689
    iget-object v0, p0, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCResponse$Builder;->rgcItem_:Ljava/util/List;

    # getter for: Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCResponse;->rgcItem_:Ljava/util/List;
    invoke-static {p1}, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCResponse;->access$2600(Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCResponse;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_1

    .line 1694
    :cond_3
    # getter for: Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCResponse;->rgcItem_:Ljava/util/List;
    invoke-static {p1}, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCResponse;->access$2600(Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCResponse;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 1695
    iget-object v1, p0, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCResponse$Builder;->rgcItemBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v1}, Lcom/google/protobuf/RepeatedFieldBuilder;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 1696
    iget-object v1, p0, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCResponse$Builder;->rgcItemBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v1}, Lcom/google/protobuf/RepeatedFieldBuilder;->dispose()V

    .line 1697
    iput-object v0, p0, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCResponse$Builder;->rgcItemBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    .line 1698
    # getter for: Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCResponse;->rgcItem_:Ljava/util/List;
    invoke-static {p1}, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCResponse;->access$2600(Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCResponse;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCResponse$Builder;->rgcItem_:Ljava/util/List;

    .line 1699
    iget v1, p0, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCResponse$Builder;->bitField0_:I

    and-int/lit8 v1, v1, -0x2

    iput v1, p0, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCResponse$Builder;->bitField0_:I

    .line 1700
    # getter for: Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCResponse;->alwaysUseFieldBuilders:Z
    invoke-static {}, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCResponse;->access$2700()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-direct {p0}, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCResponse$Builder;->getRgcItemFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilder;

    move-result-object v0

    :cond_4
    iput-object v0, p0, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCResponse$Builder;->rgcItemBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    goto :goto_2

    .line 1704
    :cond_5
    iget-object v0, p0, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCResponse$Builder;->rgcItemBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    # getter for: Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCResponse;->rgcItem_:Ljava/util/List;
    invoke-static {p1}, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCResponse;->access$2600(Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCResponse;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/protobuf/RepeatedFieldBuilder;->addAllMessages(Ljava/lang/Iterable;)Lcom/google/protobuf/RepeatedFieldBuilder;

    goto :goto_2
.end method

.method public removeRgcItem(I)Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCResponse$Builder;
    .locals 1

    .prologue
    .line 1887
    iget-object v0, p0, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCResponse$Builder;->rgcItemBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 1888
    invoke-direct {p0}, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCResponse$Builder;->ensureRgcItemIsMutable()V

    .line 1889
    iget-object v0, p0, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCResponse$Builder;->rgcItem_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 1890
    invoke-virtual {p0}, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCResponse$Builder;->onChanged()V

    .line 1894
    :goto_0
    return-object p0

    .line 1892
    :cond_0
    iget-object v0, p0, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCResponse$Builder;->rgcItemBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilder;->remove(I)V

    goto :goto_0
.end method

.method public setRgcItem(ILcom/mapabc/mapapi/core/RGCProtoBuf$RGCItem$Builder;)Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCResponse$Builder;
    .locals 2

    .prologue
    .line 1807
    iget-object v0, p0, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCResponse$Builder;->rgcItemBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 1808
    invoke-direct {p0}, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCResponse$Builder;->ensureRgcItemIsMutable()V

    .line 1809
    iget-object v0, p0, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCResponse$Builder;->rgcItem_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCItem$Builder;->build()Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCItem;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1810
    invoke-virtual {p0}, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCResponse$Builder;->onChanged()V

    .line 1814
    :goto_0
    return-object p0

    .line 1812
    :cond_0
    iget-object v0, p0, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCResponse$Builder;->rgcItemBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {p2}, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCItem$Builder;->build()Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCItem;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/google/protobuf/RepeatedFieldBuilder;->setMessage(ILcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/RepeatedFieldBuilder;

    goto :goto_0
.end method

.method public setRgcItem(ILcom/mapabc/mapapi/core/RGCProtoBuf$RGCItem;)Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCResponse$Builder;
    .locals 1

    .prologue
    .line 1793
    iget-object v0, p0, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCResponse$Builder;->rgcItemBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_1

    .line 1794
    if-nez p2, :cond_0

    .line 1795
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1797
    :cond_0
    invoke-direct {p0}, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCResponse$Builder;->ensureRgcItemIsMutable()V

    .line 1798
    iget-object v0, p0, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCResponse$Builder;->rgcItem_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1799
    invoke-virtual {p0}, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCResponse$Builder;->onChanged()V

    .line 1803
    :goto_0
    return-object p0

    .line 1801
    :cond_1
    iget-object v0, p0, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCResponse$Builder;->rgcItemBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0, p1, p2}, Lcom/google/protobuf/RepeatedFieldBuilder;->setMessage(ILcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/RepeatedFieldBuilder;

    goto :goto_0
.end method
