.class public final Lcom/mapabc/mapapi/core/CommonProtoBuf$Spellcorrect;
.super Lcom/google/protobuf/GeneratedMessage;
.source "CommonProtoBuf.java"

# interfaces
.implements Lcom/mapabc/mapapi/core/CommonProtoBuf$SpellcorrectOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mapabc/mapapi/core/CommonProtoBuf;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Spellcorrect"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mapabc/mapapi/core/CommonProtoBuf$Spellcorrect$Builder;
    }
.end annotation


# static fields
.field public static final DATA_FIELD_NUMBER:I = 0x1

.field private static final defaultInstance:Lcom/mapabc/mapapi/core/CommonProtoBuf$Spellcorrect;

.field private static final serialVersionUID:J


# instance fields
.field private data_:Lcom/google/protobuf/LazyStringList;

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 3463
    new-instance v0, Lcom/mapabc/mapapi/core/CommonProtoBuf$Spellcorrect;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/mapabc/mapapi/core/CommonProtoBuf$Spellcorrect;-><init>(Z)V

    sput-object v0, Lcom/mapabc/mapapi/core/CommonProtoBuf$Spellcorrect;->defaultInstance:Lcom/mapabc/mapapi/core/CommonProtoBuf$Spellcorrect;

    .line 3464
    sget-object v0, Lcom/mapabc/mapapi/core/CommonProtoBuf$Spellcorrect;->defaultInstance:Lcom/mapabc/mapapi/core/CommonProtoBuf$Spellcorrect;

    invoke-direct {v0}, Lcom/mapabc/mapapi/core/CommonProtoBuf$Spellcorrect;->initFields()V

    .line 3465
    return-void
.end method

.method private constructor <init>(Lcom/mapabc/mapapi/core/CommonProtoBuf$Spellcorrect$Builder;)V
    .locals 1

    .prologue
    const/4 v0, -0x1

    .line 3094
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessage;-><init>(Lcom/google/protobuf/GeneratedMessage$Builder;)V

    .line 3134
    iput-byte v0, p0, Lcom/mapabc/mapapi/core/CommonProtoBuf$Spellcorrect;->memoizedIsInitialized:B

    .line 3152
    iput v0, p0, Lcom/mapabc/mapapi/core/CommonProtoBuf$Spellcorrect;->memoizedSerializedSize:I

    .line 3095
    return-void
.end method

.method synthetic constructor <init>(Lcom/mapabc/mapapi/core/CommonProtoBuf$Spellcorrect$Builder;Lcom/mapabc/mapapi/core/b;)V
    .locals 0

    .prologue
    .line 3089
    invoke-direct {p0, p1}, Lcom/mapabc/mapapi/core/CommonProtoBuf$Spellcorrect;-><init>(Lcom/mapabc/mapapi/core/CommonProtoBuf$Spellcorrect$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 1

    .prologue
    const/4 v0, -0x1

    .line 3096
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage;-><init>()V

    .line 3134
    iput-byte v0, p0, Lcom/mapabc/mapapi/core/CommonProtoBuf$Spellcorrect;->memoizedIsInitialized:B

    .line 3152
    iput v0, p0, Lcom/mapabc/mapapi/core/CommonProtoBuf$Spellcorrect;->memoizedSerializedSize:I

    .line 3096
    return-void
.end method

.method static synthetic access$4700()Z
    .locals 1

    .prologue
    .line 3089
    sget-boolean v0, Lcom/mapabc/mapapi/core/CommonProtoBuf$Spellcorrect;->alwaysUseFieldBuilders:Z

    return v0
.end method

.method static synthetic access$4900(Lcom/mapabc/mapapi/core/CommonProtoBuf$Spellcorrect;)Lcom/google/protobuf/LazyStringList;
    .locals 1

    .prologue
    .line 3089
    iget-object v0, p0, Lcom/mapabc/mapapi/core/CommonProtoBuf$Spellcorrect;->data_:Lcom/google/protobuf/LazyStringList;

    return-object v0
.end method

.method static synthetic access$4902(Lcom/mapabc/mapapi/core/CommonProtoBuf$Spellcorrect;Lcom/google/protobuf/LazyStringList;)Lcom/google/protobuf/LazyStringList;
    .locals 0

    .prologue
    .line 3089
    iput-object p1, p0, Lcom/mapabc/mapapi/core/CommonProtoBuf$Spellcorrect;->data_:Lcom/google/protobuf/LazyStringList;

    return-object p1
.end method

.method public static getDefaultInstance()Lcom/mapabc/mapapi/core/CommonProtoBuf$Spellcorrect;
    .locals 1

    .prologue
    .line 3100
    sget-object v0, Lcom/mapabc/mapapi/core/CommonProtoBuf$Spellcorrect;->defaultInstance:Lcom/mapabc/mapapi/core/CommonProtoBuf$Spellcorrect;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 3109
    # getter for: Lcom/mapabc/mapapi/core/CommonProtoBuf;->internal_static_Spellcorrect_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;
    invoke-static {}, Lcom/mapabc/mapapi/core/CommonProtoBuf;->access$4200()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method private initFields()V
    .locals 1

    .prologue
    .line 3132
    sget-object v0, Lcom/google/protobuf/LazyStringArrayList;->EMPTY:Lcom/google/protobuf/LazyStringList;

    iput-object v0, p0, Lcom/mapabc/mapapi/core/CommonProtoBuf$Spellcorrect;->data_:Lcom/google/protobuf/LazyStringList;

    .line 3133
    return-void
.end method

.method public static newBuilder()Lcom/mapabc/mapapi/core/CommonProtoBuf$Spellcorrect$Builder;
    .locals 1

    .prologue
    .line 3246
    # invokes: Lcom/mapabc/mapapi/core/CommonProtoBuf$Spellcorrect$Builder;->create()Lcom/mapabc/mapapi/core/CommonProtoBuf$Spellcorrect$Builder;
    invoke-static {}, Lcom/mapabc/mapapi/core/CommonProtoBuf$Spellcorrect$Builder;->access$4500()Lcom/mapabc/mapapi/core/CommonProtoBuf$Spellcorrect$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/mapabc/mapapi/core/CommonProtoBuf$Spellcorrect;)Lcom/mapabc/mapapi/core/CommonProtoBuf$Spellcorrect$Builder;
    .locals 1

    .prologue
    .line 3249
    invoke-static {}, Lcom/mapabc/mapapi/core/CommonProtoBuf$Spellcorrect;->newBuilder()Lcom/mapabc/mapapi/core/CommonProtoBuf$Spellcorrect$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/mapabc/mapapi/core/CommonProtoBuf$Spellcorrect$Builder;->mergeFrom(Lcom/mapabc/mapapi/core/CommonProtoBuf$Spellcorrect;)Lcom/mapabc/mapapi/core/CommonProtoBuf$Spellcorrect$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/mapabc/mapapi/core/CommonProtoBuf$Spellcorrect;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 3215
    invoke-static {}, Lcom/mapabc/mapapi/core/CommonProtoBuf$Spellcorrect;->newBuilder()Lcom/mapabc/mapapi/core/CommonProtoBuf$Spellcorrect$Builder;

    move-result-object v0

    .line 3216
    invoke-virtual {v0, p0}, Lcom/mapabc/mapapi/core/CommonProtoBuf$Spellcorrect$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3217
    # invokes: Lcom/mapabc/mapapi/core/CommonProtoBuf$Spellcorrect$Builder;->buildParsed()Lcom/mapabc/mapapi/core/CommonProtoBuf$Spellcorrect;
    invoke-static {v0}, Lcom/mapabc/mapapi/core/CommonProtoBuf$Spellcorrect$Builder;->access$4400(Lcom/mapabc/mapapi/core/CommonProtoBuf$Spellcorrect$Builder;)Lcom/mapabc/mapapi/core/CommonProtoBuf$Spellcorrect;

    move-result-object v0

    .line 3219
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/mapabc/mapapi/core/CommonProtoBuf$Spellcorrect;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 3226
    invoke-static {}, Lcom/mapabc/mapapi/core/CommonProtoBuf$Spellcorrect;->newBuilder()Lcom/mapabc/mapapi/core/CommonProtoBuf$Spellcorrect$Builder;

    move-result-object v0

    .line 3227
    invoke-virtual {v0, p0, p1}, Lcom/mapabc/mapapi/core/CommonProtoBuf$Spellcorrect$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3228
    # invokes: Lcom/mapabc/mapapi/core/CommonProtoBuf$Spellcorrect$Builder;->buildParsed()Lcom/mapabc/mapapi/core/CommonProtoBuf$Spellcorrect;
    invoke-static {v0}, Lcom/mapabc/mapapi/core/CommonProtoBuf$Spellcorrect$Builder;->access$4400(Lcom/mapabc/mapapi/core/CommonProtoBuf$Spellcorrect$Builder;)Lcom/mapabc/mapapi/core/CommonProtoBuf$Spellcorrect;

    move-result-object v0

    .line 3230
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/mapabc/mapapi/core/CommonProtoBuf$Spellcorrect;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 3182
    invoke-static {}, Lcom/mapabc/mapapi/core/CommonProtoBuf$Spellcorrect;->newBuilder()Lcom/mapabc/mapapi/core/CommonProtoBuf$Spellcorrect$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/mapabc/mapapi/core/CommonProtoBuf$Spellcorrect$Builder;->mergeFrom(Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/mapabc/mapapi/core/CommonProtoBuf$Spellcorrect$Builder;

    # invokes: Lcom/mapabc/mapapi/core/CommonProtoBuf$Spellcorrect$Builder;->buildParsed()Lcom/mapabc/mapapi/core/CommonProtoBuf$Spellcorrect;
    invoke-static {v0}, Lcom/mapabc/mapapi/core/CommonProtoBuf$Spellcorrect$Builder;->access$4400(Lcom/mapabc/mapapi/core/CommonProtoBuf$Spellcorrect$Builder;)Lcom/mapabc/mapapi/core/CommonProtoBuf$Spellcorrect;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/mapabc/mapapi/core/CommonProtoBuf$Spellcorrect;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 3188
    invoke-static {}, Lcom/mapabc/mapapi/core/CommonProtoBuf$Spellcorrect;->newBuilder()Lcom/mapabc/mapapi/core/CommonProtoBuf$Spellcorrect$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/mapabc/mapapi/core/CommonProtoBuf$Spellcorrect$Builder;->mergeFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/mapabc/mapapi/core/CommonProtoBuf$Spellcorrect$Builder;

    # invokes: Lcom/mapabc/mapapi/core/CommonProtoBuf$Spellcorrect$Builder;->buildParsed()Lcom/mapabc/mapapi/core/CommonProtoBuf$Spellcorrect;
    invoke-static {v0}, Lcom/mapabc/mapapi/core/CommonProtoBuf$Spellcorrect$Builder;->access$4400(Lcom/mapabc/mapapi/core/CommonProtoBuf$Spellcorrect$Builder;)Lcom/mapabc/mapapi/core/CommonProtoBuf$Spellcorrect;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/mapabc/mapapi/core/CommonProtoBuf$Spellcorrect;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 3236
    invoke-static {}, Lcom/mapabc/mapapi/core/CommonProtoBuf$Spellcorrect;->newBuilder()Lcom/mapabc/mapapi/core/CommonProtoBuf$Spellcorrect$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/mapabc/mapapi/core/CommonProtoBuf$Spellcorrect$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/mapabc/mapapi/core/CommonProtoBuf$Spellcorrect$Builder;

    # invokes: Lcom/mapabc/mapapi/core/CommonProtoBuf$Spellcorrect$Builder;->buildParsed()Lcom/mapabc/mapapi/core/CommonProtoBuf$Spellcorrect;
    invoke-static {v0}, Lcom/mapabc/mapapi/core/CommonProtoBuf$Spellcorrect$Builder;->access$4400(Lcom/mapabc/mapapi/core/CommonProtoBuf$Spellcorrect$Builder;)Lcom/mapabc/mapapi/core/CommonProtoBuf$Spellcorrect;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/mapabc/mapapi/core/CommonProtoBuf$Spellcorrect;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 3242
    invoke-static {}, Lcom/mapabc/mapapi/core/CommonProtoBuf$Spellcorrect;->newBuilder()Lcom/mapabc/mapapi/core/CommonProtoBuf$Spellcorrect$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/mapabc/mapapi/core/CommonProtoBuf$Spellcorrect$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/mapabc/mapapi/core/CommonProtoBuf$Spellcorrect$Builder;

    move-result-object v0

    # invokes: Lcom/mapabc/mapapi/core/CommonProtoBuf$Spellcorrect$Builder;->buildParsed()Lcom/mapabc/mapapi/core/CommonProtoBuf$Spellcorrect;
    invoke-static {v0}, Lcom/mapabc/mapapi/core/CommonProtoBuf$Spellcorrect$Builder;->access$4400(Lcom/mapabc/mapapi/core/CommonProtoBuf$Spellcorrect$Builder;)Lcom/mapabc/mapapi/core/CommonProtoBuf$Spellcorrect;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/mapabc/mapapi/core/CommonProtoBuf$Spellcorrect;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 3204
    invoke-static {}, Lcom/mapabc/mapapi/core/CommonProtoBuf$Spellcorrect;->newBuilder()Lcom/mapabc/mapapi/core/CommonProtoBuf$Spellcorrect$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/mapabc/mapapi/core/CommonProtoBuf$Spellcorrect$Builder;->mergeFrom(Ljava/io/InputStream;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/mapabc/mapapi/core/CommonProtoBuf$Spellcorrect$Builder;

    # invokes: Lcom/mapabc/mapapi/core/CommonProtoBuf$Spellcorrect$Builder;->buildParsed()Lcom/mapabc/mapapi/core/CommonProtoBuf$Spellcorrect;
    invoke-static {v0}, Lcom/mapabc/mapapi/core/CommonProtoBuf$Spellcorrect$Builder;->access$4400(Lcom/mapabc/mapapi/core/CommonProtoBuf$Spellcorrect$Builder;)Lcom/mapabc/mapapi/core/CommonProtoBuf$Spellcorrect;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/mapabc/mapapi/core/CommonProtoBuf$Spellcorrect;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 3210
    invoke-static {}, Lcom/mapabc/mapapi/core/CommonProtoBuf$Spellcorrect;->newBuilder()Lcom/mapabc/mapapi/core/CommonProtoBuf$Spellcorrect$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/mapabc/mapapi/core/CommonProtoBuf$Spellcorrect$Builder;->mergeFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/mapabc/mapapi/core/CommonProtoBuf$Spellcorrect$Builder;

    # invokes: Lcom/mapabc/mapapi/core/CommonProtoBuf$Spellcorrect$Builder;->buildParsed()Lcom/mapabc/mapapi/core/CommonProtoBuf$Spellcorrect;
    invoke-static {v0}, Lcom/mapabc/mapapi/core/CommonProtoBuf$Spellcorrect$Builder;->access$4400(Lcom/mapabc/mapapi/core/CommonProtoBuf$Spellcorrect$Builder;)Lcom/mapabc/mapapi/core/CommonProtoBuf$Spellcorrect;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/mapabc/mapapi/core/CommonProtoBuf$Spellcorrect;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 3193
    invoke-static {}, Lcom/mapabc/mapapi/core/CommonProtoBuf$Spellcorrect;->newBuilder()Lcom/mapabc/mapapi/core/CommonProtoBuf$Spellcorrect$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/mapabc/mapapi/core/CommonProtoBuf$Spellcorrect$Builder;->mergeFrom([B)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/mapabc/mapapi/core/CommonProtoBuf$Spellcorrect$Builder;

    # invokes: Lcom/mapabc/mapapi/core/CommonProtoBuf$Spellcorrect$Builder;->buildParsed()Lcom/mapabc/mapapi/core/CommonProtoBuf$Spellcorrect;
    invoke-static {v0}, Lcom/mapabc/mapapi/core/CommonProtoBuf$Spellcorrect$Builder;->access$4400(Lcom/mapabc/mapapi/core/CommonProtoBuf$Spellcorrect$Builder;)Lcom/mapabc/mapapi/core/CommonProtoBuf$Spellcorrect;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/mapabc/mapapi/core/CommonProtoBuf$Spellcorrect;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 3199
    invoke-static {}, Lcom/mapabc/mapapi/core/CommonProtoBuf$Spellcorrect;->newBuilder()Lcom/mapabc/mapapi/core/CommonProtoBuf$Spellcorrect$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/mapabc/mapapi/core/CommonProtoBuf$Spellcorrect$Builder;->mergeFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/mapabc/mapapi/core/CommonProtoBuf$Spellcorrect$Builder;

    # invokes: Lcom/mapabc/mapapi/core/CommonProtoBuf$Spellcorrect$Builder;->buildParsed()Lcom/mapabc/mapapi/core/CommonProtoBuf$Spellcorrect;
    invoke-static {v0}, Lcom/mapabc/mapapi/core/CommonProtoBuf$Spellcorrect$Builder;->access$4400(Lcom/mapabc/mapapi/core/CommonProtoBuf$Spellcorrect$Builder;)Lcom/mapabc/mapapi/core/CommonProtoBuf$Spellcorrect;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getData(I)Ljava/lang/String;
    .locals 1

    .prologue
    .line 3128
    iget-object v0, p0, Lcom/mapabc/mapapi/core/CommonProtoBuf$Spellcorrect;->data_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/LazyStringList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getDataCount()I
    .locals 1

    .prologue
    .line 3125
    iget-object v0, p0, Lcom/mapabc/mapapi/core/CommonProtoBuf$Spellcorrect;->data_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0}, Lcom/google/protobuf/LazyStringList;->size()I

    move-result v0

    return v0
.end method

.method public getDataList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 3122
    iget-object v0, p0, Lcom/mapabc/mapapi/core/CommonProtoBuf$Spellcorrect;->data_:Lcom/google/protobuf/LazyStringList;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 3089
    invoke-virtual {p0}, Lcom/mapabc/mapapi/core/CommonProtoBuf$Spellcorrect;->getDefaultInstanceForType()Lcom/mapabc/mapapi/core/CommonProtoBuf$Spellcorrect;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 3089
    invoke-virtual {p0}, Lcom/mapabc/mapapi/core/CommonProtoBuf$Spellcorrect;->getDefaultInstanceForType()Lcom/mapabc/mapapi/core/CommonProtoBuf$Spellcorrect;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/mapabc/mapapi/core/CommonProtoBuf$Spellcorrect;
    .locals 1

    .prologue
    .line 3104
    sget-object v0, Lcom/mapabc/mapapi/core/CommonProtoBuf$Spellcorrect;->defaultInstance:Lcom/mapabc/mapapi/core/CommonProtoBuf$Spellcorrect;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 3154
    iget v0, p0, Lcom/mapabc/mapapi/core/CommonProtoBuf$Spellcorrect;->memoizedSerializedSize:I

    .line 3155
    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    .line 3169
    :goto_0
    return v0

    :cond_0
    move v0, v1

    move v2, v1

    .line 3160
    :goto_1
    iget-object v3, p0, Lcom/mapabc/mapapi/core/CommonProtoBuf$Spellcorrect;->data_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v3}, Lcom/google/protobuf/LazyStringList;->size()I

    move-result v3

    if-ge v0, v3, :cond_1

    .line 3161
    iget-object v3, p0, Lcom/mapabc/mapapi/core/CommonProtoBuf$Spellcorrect;->data_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v3, v0}, Lcom/google/protobuf/LazyStringList;->getByteString(I)Lcom/google/protobuf/ByteString;

    move-result-object v3

    invoke-static {v3}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSizeNoTag(Lcom/google/protobuf/ByteString;)I

    move-result v3

    add-int/2addr v2, v3

    .line 3160
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 3164
    :cond_1
    add-int v0, v1, v2

    .line 3165
    invoke-virtual {p0}, Lcom/mapabc/mapapi/core/CommonProtoBuf$Spellcorrect;->getDataList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    mul-int/lit8 v1, v1, 0x1

    add-int/2addr v0, v1

    .line 3167
    invoke-virtual {p0}, Lcom/mapabc/mapapi/core/CommonProtoBuf$Spellcorrect;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protobuf/UnknownFieldSet;->getSerializedSize()I

    move-result v1

    add-int/2addr v0, v1

    .line 3168
    iput v0, p0, Lcom/mapabc/mapapi/core/CommonProtoBuf$Spellcorrect;->memoizedSerializedSize:I

    goto :goto_0
.end method

.method protected internalGetFieldAccessorTable()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 1

    .prologue
    .line 3114
    # getter for: Lcom/mapabc/mapapi/core/CommonProtoBuf;->internal_static_Spellcorrect_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    invoke-static {}, Lcom/mapabc/mapapi/core/CommonProtoBuf;->access$4300()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 3136
    iget-byte v1, p0, Lcom/mapabc/mapapi/core/CommonProtoBuf$Spellcorrect;->memoizedIsInitialized:B

    .line 3137
    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    if-ne v1, v0, :cond_0

    .line 3140
    :goto_0
    return v0

    .line 3137
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 3139
    :cond_1
    iput-byte v0, p0, Lcom/mapabc/mapapi/core/CommonProtoBuf$Spellcorrect;->memoizedIsInitialized:B

    goto :goto_0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 3089
    invoke-virtual {p0}, Lcom/mapabc/mapapi/core/CommonProtoBuf$Spellcorrect;->newBuilderForType()Lcom/mapabc/mapapi/core/CommonProtoBuf$Spellcorrect$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic newBuilderForType(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 3089
    invoke-virtual {p0, p1}, Lcom/mapabc/mapapi/core/CommonProtoBuf$Spellcorrect;->newBuilderForType(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)Lcom/mapabc/mapapi/core/CommonProtoBuf$Spellcorrect$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 3089
    invoke-virtual {p0}, Lcom/mapabc/mapapi/core/CommonProtoBuf$Spellcorrect;->newBuilderForType()Lcom/mapabc/mapapi/core/CommonProtoBuf$Spellcorrect$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lcom/mapabc/mapapi/core/CommonProtoBuf$Spellcorrect$Builder;
    .locals 1

    .prologue
    .line 3247
    invoke-static {}, Lcom/mapabc/mapapi/core/CommonProtoBuf$Spellcorrect;->newBuilder()Lcom/mapabc/mapapi/core/CommonProtoBuf$Spellcorrect$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected newBuilderForType(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)Lcom/mapabc/mapapi/core/CommonProtoBuf$Spellcorrect$Builder;
    .locals 2

    .prologue
    .line 3256
    new-instance v0, Lcom/mapabc/mapapi/core/CommonProtoBuf$Spellcorrect$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/mapabc/mapapi/core/CommonProtoBuf$Spellcorrect$Builder;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;Lcom/mapabc/mapapi/core/b;)V

    .line 3257
    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 3089
    invoke-virtual {p0}, Lcom/mapabc/mapapi/core/CommonProtoBuf$Spellcorrect;->toBuilder()Lcom/mapabc/mapapi/core/CommonProtoBuf$Spellcorrect$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 3089
    invoke-virtual {p0}, Lcom/mapabc/mapapi/core/CommonProtoBuf$Spellcorrect;->toBuilder()Lcom/mapabc/mapapi/core/CommonProtoBuf$Spellcorrect$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/mapabc/mapapi/core/CommonProtoBuf$Spellcorrect$Builder;
    .locals 1

    .prologue
    .line 3251
    invoke-static {p0}, Lcom/mapabc/mapapi/core/CommonProtoBuf$Spellcorrect;->newBuilder(Lcom/mapabc/mapapi/core/CommonProtoBuf$Spellcorrect;)Lcom/mapabc/mapapi/core/CommonProtoBuf$Spellcorrect$Builder;

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
    .line 3176
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
    .line 3145
    invoke-virtual {p0}, Lcom/mapabc/mapapi/core/CommonProtoBuf$Spellcorrect;->getSerializedSize()I

    .line 3146
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/mapabc/mapapi/core/CommonProtoBuf$Spellcorrect;->data_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v1}, Lcom/google/protobuf/LazyStringList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 3147
    const/4 v1, 0x1

    iget-object v2, p0, Lcom/mapabc/mapapi/core/CommonProtoBuf$Spellcorrect;->data_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v2, v0}, Lcom/google/protobuf/LazyStringList;->getByteString(I)Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 3146
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 3149
    :cond_0
    invoke-virtual {p0}, Lcom/mapabc/mapapi/core/CommonProtoBuf$Spellcorrect;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/UnknownFieldSet;->writeTo(Lcom/google/protobuf/CodedOutputStream;)V

    .line 3150
    return-void
.end method
