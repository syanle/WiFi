.class public final Lcom/mapabc/mapapi/core/CommonProtoBuf$Common;
.super Lcom/google/protobuf/GeneratedMessage;
.source "CommonProtoBuf.java"

# interfaces
.implements Lcom/mapabc/mapapi/core/CommonProtoBuf$CommonOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mapabc/mapapi/core/CommonProtoBuf;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Common"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mapabc/mapapi/core/CommonProtoBuf$Common$Builder;
    }
.end annotation


# static fields
.field public static final A_K_FIELD_NUMBER:I = 0x2

.field public static final CONFIG_FIELD_NUMBER:I = 0x1

.field public static final ENC_FIELD_NUMBER:I = 0x4

.field public static final RESTYPE_FIELD_NUMBER:I = 0x3

.field private static final defaultInstance:Lcom/mapabc/mapapi/core/CommonProtoBuf$Common;

.field private static final serialVersionUID:J


# instance fields
.field private aK_:Ljava/lang/Object;

.field private bitField0_:I

.field private config_:Ljava/lang/Object;

.field private enc_:Ljava/lang/Object;

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I

.field private resType_:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 677
    new-instance v0, Lcom/mapabc/mapapi/core/CommonProtoBuf$Common;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/mapabc/mapapi/core/CommonProtoBuf$Common;-><init>(Z)V

    sput-object v0, Lcom/mapabc/mapapi/core/CommonProtoBuf$Common;->defaultInstance:Lcom/mapabc/mapapi/core/CommonProtoBuf$Common;

    .line 678
    sget-object v0, Lcom/mapabc/mapapi/core/CommonProtoBuf$Common;->defaultInstance:Lcom/mapabc/mapapi/core/CommonProtoBuf$Common;

    invoke-direct {v0}, Lcom/mapabc/mapapi/core/CommonProtoBuf$Common;->initFields()V

    .line 679
    return-void
.end method

.method private constructor <init>(Lcom/mapabc/mapapi/core/CommonProtoBuf$Common$Builder;)V
    .locals 1

    .prologue
    const/4 v0, -0x1

    .line 35
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessage;-><init>(Lcom/google/protobuf/GeneratedMessage$Builder;)V

    .line 193
    iput-byte v0, p0, Lcom/mapabc/mapapi/core/CommonProtoBuf$Common;->memoizedIsInitialized:B

    .line 228
    iput v0, p0, Lcom/mapabc/mapapi/core/CommonProtoBuf$Common;->memoizedSerializedSize:I

    .line 36
    return-void
.end method

.method synthetic constructor <init>(Lcom/mapabc/mapapi/core/CommonProtoBuf$Common$Builder;Lcom/mapabc/mapapi/core/b;)V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0, p1}, Lcom/mapabc/mapapi/core/CommonProtoBuf$Common;-><init>(Lcom/mapabc/mapapi/core/CommonProtoBuf$Common$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 1

    .prologue
    const/4 v0, -0x1

    .line 37
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage;-><init>()V

    .line 193
    iput-byte v0, p0, Lcom/mapabc/mapapi/core/CommonProtoBuf$Common;->memoizedIsInitialized:B

    .line 228
    iput v0, p0, Lcom/mapabc/mapapi/core/CommonProtoBuf$Common;->memoizedSerializedSize:I

    .line 37
    return-void
.end method

.method static synthetic access$1002(Lcom/mapabc/mapapi/core/CommonProtoBuf$Common;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .prologue
    .line 30
    iput-object p1, p0, Lcom/mapabc/mapapi/core/CommonProtoBuf$Common;->enc_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$1102(Lcom/mapabc/mapapi/core/CommonProtoBuf$Common;I)I
    .locals 0

    .prologue
    .line 30
    iput p1, p0, Lcom/mapabc/mapapi/core/CommonProtoBuf$Common;->bitField0_:I

    return p1
.end method

.method static synthetic access$500()Z
    .locals 1

    .prologue
    .line 30
    sget-boolean v0, Lcom/mapabc/mapapi/core/CommonProtoBuf$Common;->alwaysUseFieldBuilders:Z

    return v0
.end method

.method static synthetic access$702(Lcom/mapabc/mapapi/core/CommonProtoBuf$Common;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .prologue
    .line 30
    iput-object p1, p0, Lcom/mapabc/mapapi/core/CommonProtoBuf$Common;->config_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$802(Lcom/mapabc/mapapi/core/CommonProtoBuf$Common;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .prologue
    .line 30
    iput-object p1, p0, Lcom/mapabc/mapapi/core/CommonProtoBuf$Common;->aK_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$902(Lcom/mapabc/mapapi/core/CommonProtoBuf$Common;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .prologue
    .line 30
    iput-object p1, p0, Lcom/mapabc/mapapi/core/CommonProtoBuf$Common;->resType_:Ljava/lang/Object;

    return-object p1
.end method

.method private getAKBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .prologue
    .line 112
    iget-object v0, p0, Lcom/mapabc/mapapi/core/CommonProtoBuf$Common;->aK_:Ljava/lang/Object;

    .line 113
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 114
    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 116
    iput-object v0, p0, Lcom/mapabc/mapapi/core/CommonProtoBuf$Common;->aK_:Ljava/lang/Object;

    .line 119
    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    goto :goto_0
.end method

.method private getConfigBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .prologue
    .line 80
    iget-object v0, p0, Lcom/mapabc/mapapi/core/CommonProtoBuf$Common;->config_:Ljava/lang/Object;

    .line 81
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 82
    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 84
    iput-object v0, p0, Lcom/mapabc/mapapi/core/CommonProtoBuf$Common;->config_:Ljava/lang/Object;

    .line 87
    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    goto :goto_0
.end method

.method public static getDefaultInstance()Lcom/mapabc/mapapi/core/CommonProtoBuf$Common;
    .locals 1

    .prologue
    .line 41
    sget-object v0, Lcom/mapabc/mapapi/core/CommonProtoBuf$Common;->defaultInstance:Lcom/mapabc/mapapi/core/CommonProtoBuf$Common;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 50
    # getter for: Lcom/mapabc/mapapi/core/CommonProtoBuf;->internal_static_Common_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;
    invoke-static {}, Lcom/mapabc/mapapi/core/CommonProtoBuf;->access$000()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method private getEncBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .prologue
    .line 176
    iget-object v0, p0, Lcom/mapabc/mapapi/core/CommonProtoBuf$Common;->enc_:Ljava/lang/Object;

    .line 177
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 178
    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 180
    iput-object v0, p0, Lcom/mapabc/mapapi/core/CommonProtoBuf$Common;->enc_:Ljava/lang/Object;

    .line 183
    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    goto :goto_0
.end method

.method private getResTypeBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .prologue
    .line 144
    iget-object v0, p0, Lcom/mapabc/mapapi/core/CommonProtoBuf$Common;->resType_:Ljava/lang/Object;

    .line 145
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 146
    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 148
    iput-object v0, p0, Lcom/mapabc/mapapi/core/CommonProtoBuf$Common;->resType_:Ljava/lang/Object;

    .line 151
    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    goto :goto_0
.end method

.method private initFields()V
    .locals 1

    .prologue
    .line 188
    const-string v0, ""

    iput-object v0, p0, Lcom/mapabc/mapapi/core/CommonProtoBuf$Common;->config_:Ljava/lang/Object;

    .line 189
    const-string v0, ""

    iput-object v0, p0, Lcom/mapabc/mapapi/core/CommonProtoBuf$Common;->aK_:Ljava/lang/Object;

    .line 190
    const-string v0, ""

    iput-object v0, p0, Lcom/mapabc/mapapi/core/CommonProtoBuf$Common;->resType_:Ljava/lang/Object;

    .line 191
    const-string v0, ""

    iput-object v0, p0, Lcom/mapabc/mapapi/core/CommonProtoBuf$Common;->enc_:Ljava/lang/Object;

    .line 192
    return-void
.end method

.method public static newBuilder()Lcom/mapabc/mapapi/core/CommonProtoBuf$Common$Builder;
    .locals 1

    .prologue
    .line 329
    # invokes: Lcom/mapabc/mapapi/core/CommonProtoBuf$Common$Builder;->create()Lcom/mapabc/mapapi/core/CommonProtoBuf$Common$Builder;
    invoke-static {}, Lcom/mapabc/mapapi/core/CommonProtoBuf$Common$Builder;->access$300()Lcom/mapabc/mapapi/core/CommonProtoBuf$Common$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/mapabc/mapapi/core/CommonProtoBuf$Common;)Lcom/mapabc/mapapi/core/CommonProtoBuf$Common$Builder;
    .locals 1

    .prologue
    .line 332
    invoke-static {}, Lcom/mapabc/mapapi/core/CommonProtoBuf$Common;->newBuilder()Lcom/mapabc/mapapi/core/CommonProtoBuf$Common$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/mapabc/mapapi/core/CommonProtoBuf$Common$Builder;->mergeFrom(Lcom/mapabc/mapapi/core/CommonProtoBuf$Common;)Lcom/mapabc/mapapi/core/CommonProtoBuf$Common$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/mapabc/mapapi/core/CommonProtoBuf$Common;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 298
    invoke-static {}, Lcom/mapabc/mapapi/core/CommonProtoBuf$Common;->newBuilder()Lcom/mapabc/mapapi/core/CommonProtoBuf$Common$Builder;

    move-result-object v0

    .line 299
    invoke-virtual {v0, p0}, Lcom/mapabc/mapapi/core/CommonProtoBuf$Common$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 300
    # invokes: Lcom/mapabc/mapapi/core/CommonProtoBuf$Common$Builder;->buildParsed()Lcom/mapabc/mapapi/core/CommonProtoBuf$Common;
    invoke-static {v0}, Lcom/mapabc/mapapi/core/CommonProtoBuf$Common$Builder;->access$200(Lcom/mapabc/mapapi/core/CommonProtoBuf$Common$Builder;)Lcom/mapabc/mapapi/core/CommonProtoBuf$Common;

    move-result-object v0

    .line 302
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/mapabc/mapapi/core/CommonProtoBuf$Common;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 309
    invoke-static {}, Lcom/mapabc/mapapi/core/CommonProtoBuf$Common;->newBuilder()Lcom/mapabc/mapapi/core/CommonProtoBuf$Common$Builder;

    move-result-object v0

    .line 310
    invoke-virtual {v0, p0, p1}, Lcom/mapabc/mapapi/core/CommonProtoBuf$Common$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 311
    # invokes: Lcom/mapabc/mapapi/core/CommonProtoBuf$Common$Builder;->buildParsed()Lcom/mapabc/mapapi/core/CommonProtoBuf$Common;
    invoke-static {v0}, Lcom/mapabc/mapapi/core/CommonProtoBuf$Common$Builder;->access$200(Lcom/mapabc/mapapi/core/CommonProtoBuf$Common$Builder;)Lcom/mapabc/mapapi/core/CommonProtoBuf$Common;

    move-result-object v0

    .line 313
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/mapabc/mapapi/core/CommonProtoBuf$Common;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 265
    invoke-static {}, Lcom/mapabc/mapapi/core/CommonProtoBuf$Common;->newBuilder()Lcom/mapabc/mapapi/core/CommonProtoBuf$Common$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/mapabc/mapapi/core/CommonProtoBuf$Common$Builder;->mergeFrom(Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/mapabc/mapapi/core/CommonProtoBuf$Common$Builder;

    # invokes: Lcom/mapabc/mapapi/core/CommonProtoBuf$Common$Builder;->buildParsed()Lcom/mapabc/mapapi/core/CommonProtoBuf$Common;
    invoke-static {v0}, Lcom/mapabc/mapapi/core/CommonProtoBuf$Common$Builder;->access$200(Lcom/mapabc/mapapi/core/CommonProtoBuf$Common$Builder;)Lcom/mapabc/mapapi/core/CommonProtoBuf$Common;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/mapabc/mapapi/core/CommonProtoBuf$Common;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 271
    invoke-static {}, Lcom/mapabc/mapapi/core/CommonProtoBuf$Common;->newBuilder()Lcom/mapabc/mapapi/core/CommonProtoBuf$Common$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/mapabc/mapapi/core/CommonProtoBuf$Common$Builder;->mergeFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/mapabc/mapapi/core/CommonProtoBuf$Common$Builder;

    # invokes: Lcom/mapabc/mapapi/core/CommonProtoBuf$Common$Builder;->buildParsed()Lcom/mapabc/mapapi/core/CommonProtoBuf$Common;
    invoke-static {v0}, Lcom/mapabc/mapapi/core/CommonProtoBuf$Common$Builder;->access$200(Lcom/mapabc/mapapi/core/CommonProtoBuf$Common$Builder;)Lcom/mapabc/mapapi/core/CommonProtoBuf$Common;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/mapabc/mapapi/core/CommonProtoBuf$Common;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 319
    invoke-static {}, Lcom/mapabc/mapapi/core/CommonProtoBuf$Common;->newBuilder()Lcom/mapabc/mapapi/core/CommonProtoBuf$Common$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/mapabc/mapapi/core/CommonProtoBuf$Common$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/mapabc/mapapi/core/CommonProtoBuf$Common$Builder;

    # invokes: Lcom/mapabc/mapapi/core/CommonProtoBuf$Common$Builder;->buildParsed()Lcom/mapabc/mapapi/core/CommonProtoBuf$Common;
    invoke-static {v0}, Lcom/mapabc/mapapi/core/CommonProtoBuf$Common$Builder;->access$200(Lcom/mapabc/mapapi/core/CommonProtoBuf$Common$Builder;)Lcom/mapabc/mapapi/core/CommonProtoBuf$Common;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/mapabc/mapapi/core/CommonProtoBuf$Common;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 325
    invoke-static {}, Lcom/mapabc/mapapi/core/CommonProtoBuf$Common;->newBuilder()Lcom/mapabc/mapapi/core/CommonProtoBuf$Common$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/mapabc/mapapi/core/CommonProtoBuf$Common$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/mapabc/mapapi/core/CommonProtoBuf$Common$Builder;

    move-result-object v0

    # invokes: Lcom/mapabc/mapapi/core/CommonProtoBuf$Common$Builder;->buildParsed()Lcom/mapabc/mapapi/core/CommonProtoBuf$Common;
    invoke-static {v0}, Lcom/mapabc/mapapi/core/CommonProtoBuf$Common$Builder;->access$200(Lcom/mapabc/mapapi/core/CommonProtoBuf$Common$Builder;)Lcom/mapabc/mapapi/core/CommonProtoBuf$Common;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/mapabc/mapapi/core/CommonProtoBuf$Common;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 287
    invoke-static {}, Lcom/mapabc/mapapi/core/CommonProtoBuf$Common;->newBuilder()Lcom/mapabc/mapapi/core/CommonProtoBuf$Common$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/mapabc/mapapi/core/CommonProtoBuf$Common$Builder;->mergeFrom(Ljava/io/InputStream;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/mapabc/mapapi/core/CommonProtoBuf$Common$Builder;

    # invokes: Lcom/mapabc/mapapi/core/CommonProtoBuf$Common$Builder;->buildParsed()Lcom/mapabc/mapapi/core/CommonProtoBuf$Common;
    invoke-static {v0}, Lcom/mapabc/mapapi/core/CommonProtoBuf$Common$Builder;->access$200(Lcom/mapabc/mapapi/core/CommonProtoBuf$Common$Builder;)Lcom/mapabc/mapapi/core/CommonProtoBuf$Common;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/mapabc/mapapi/core/CommonProtoBuf$Common;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 293
    invoke-static {}, Lcom/mapabc/mapapi/core/CommonProtoBuf$Common;->newBuilder()Lcom/mapabc/mapapi/core/CommonProtoBuf$Common$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/mapabc/mapapi/core/CommonProtoBuf$Common$Builder;->mergeFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/mapabc/mapapi/core/CommonProtoBuf$Common$Builder;

    # invokes: Lcom/mapabc/mapapi/core/CommonProtoBuf$Common$Builder;->buildParsed()Lcom/mapabc/mapapi/core/CommonProtoBuf$Common;
    invoke-static {v0}, Lcom/mapabc/mapapi/core/CommonProtoBuf$Common$Builder;->access$200(Lcom/mapabc/mapapi/core/CommonProtoBuf$Common$Builder;)Lcom/mapabc/mapapi/core/CommonProtoBuf$Common;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/mapabc/mapapi/core/CommonProtoBuf$Common;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 276
    invoke-static {}, Lcom/mapabc/mapapi/core/CommonProtoBuf$Common;->newBuilder()Lcom/mapabc/mapapi/core/CommonProtoBuf$Common$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/mapabc/mapapi/core/CommonProtoBuf$Common$Builder;->mergeFrom([B)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/mapabc/mapapi/core/CommonProtoBuf$Common$Builder;

    # invokes: Lcom/mapabc/mapapi/core/CommonProtoBuf$Common$Builder;->buildParsed()Lcom/mapabc/mapapi/core/CommonProtoBuf$Common;
    invoke-static {v0}, Lcom/mapabc/mapapi/core/CommonProtoBuf$Common$Builder;->access$200(Lcom/mapabc/mapapi/core/CommonProtoBuf$Common$Builder;)Lcom/mapabc/mapapi/core/CommonProtoBuf$Common;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/mapabc/mapapi/core/CommonProtoBuf$Common;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 282
    invoke-static {}, Lcom/mapabc/mapapi/core/CommonProtoBuf$Common;->newBuilder()Lcom/mapabc/mapapi/core/CommonProtoBuf$Common$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/mapabc/mapapi/core/CommonProtoBuf$Common$Builder;->mergeFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/mapabc/mapapi/core/CommonProtoBuf$Common$Builder;

    # invokes: Lcom/mapabc/mapapi/core/CommonProtoBuf$Common$Builder;->buildParsed()Lcom/mapabc/mapapi/core/CommonProtoBuf$Common;
    invoke-static {v0}, Lcom/mapabc/mapapi/core/CommonProtoBuf$Common$Builder;->access$200(Lcom/mapabc/mapapi/core/CommonProtoBuf$Common$Builder;)Lcom/mapabc/mapapi/core/CommonProtoBuf$Common;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getAK()Ljava/lang/String;
    .locals 2

    .prologue
    .line 98
    iget-object v0, p0, Lcom/mapabc/mapapi/core/CommonProtoBuf$Common;->aK_:Ljava/lang/Object;

    .line 99
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 100
    check-cast v0, Ljava/lang/String;

    .line 108
    :goto_0
    return-object v0

    .line 102
    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 104
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 105
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 106
    iput-object v1, p0, Lcom/mapabc/mapapi/core/CommonProtoBuf$Common;->aK_:Ljava/lang/Object;

    :cond_1
    move-object v0, v1

    .line 108
    goto :goto_0
.end method

.method public getConfig()Ljava/lang/String;
    .locals 2

    .prologue
    .line 66
    iget-object v0, p0, Lcom/mapabc/mapapi/core/CommonProtoBuf$Common;->config_:Ljava/lang/Object;

    .line 67
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 68
    check-cast v0, Ljava/lang/String;

    .line 76
    :goto_0
    return-object v0

    .line 70
    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 72
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 73
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 74
    iput-object v1, p0, Lcom/mapabc/mapapi/core/CommonProtoBuf$Common;->config_:Ljava/lang/Object;

    :cond_1
    move-object v0, v1

    .line 76
    goto :goto_0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 30
    invoke-virtual {p0}, Lcom/mapabc/mapapi/core/CommonProtoBuf$Common;->getDefaultInstanceForType()Lcom/mapabc/mapapi/core/CommonProtoBuf$Common;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 30
    invoke-virtual {p0}, Lcom/mapabc/mapapi/core/CommonProtoBuf$Common;->getDefaultInstanceForType()Lcom/mapabc/mapapi/core/CommonProtoBuf$Common;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/mapabc/mapapi/core/CommonProtoBuf$Common;
    .locals 1

    .prologue
    .line 45
    sget-object v0, Lcom/mapabc/mapapi/core/CommonProtoBuf$Common;->defaultInstance:Lcom/mapabc/mapapi/core/CommonProtoBuf$Common;

    return-object v0
.end method

.method public getEnc()Ljava/lang/String;
    .locals 2

    .prologue
    .line 162
    iget-object v0, p0, Lcom/mapabc/mapapi/core/CommonProtoBuf$Common;->enc_:Ljava/lang/Object;

    .line 163
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 164
    check-cast v0, Ljava/lang/String;

    .line 172
    :goto_0
    return-object v0

    .line 166
    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 168
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 169
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 170
    iput-object v1, p0, Lcom/mapabc/mapapi/core/CommonProtoBuf$Common;->enc_:Ljava/lang/Object;

    :cond_1
    move-object v0, v1

    .line 172
    goto :goto_0
.end method

.method public getResType()Ljava/lang/String;
    .locals 2

    .prologue
    .line 130
    iget-object v0, p0, Lcom/mapabc/mapapi/core/CommonProtoBuf$Common;->resType_:Ljava/lang/Object;

    .line 131
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 132
    check-cast v0, Ljava/lang/String;

    .line 140
    :goto_0
    return-object v0

    .line 134
    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 136
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 137
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 138
    iput-object v1, p0, Lcom/mapabc/mapapi/core/CommonProtoBuf$Common;->resType_:Ljava/lang/Object;

    :cond_1
    move-object v0, v1

    .line 140
    goto :goto_0
.end method

.method public getSerializedSize()I
    .locals 5

    .prologue
    const/4 v4, 0x4

    const/4 v3, 0x2

    const/4 v2, 0x1

    .line 230
    iget v0, p0, Lcom/mapabc/mapapi/core/CommonProtoBuf$Common;->memoizedSerializedSize:I

    .line 231
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 252
    :goto_0
    return v0

    .line 233
    :cond_0
    const/4 v0, 0x0

    .line 234
    iget v1, p0, Lcom/mapabc/mapapi/core/CommonProtoBuf$Common;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v2, :cond_1

    .line 235
    invoke-direct {p0}, Lcom/mapabc/mapapi/core/CommonProtoBuf$Common;->getConfigBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v1

    add-int/2addr v0, v1

    .line 238
    :cond_1
    iget v1, p0, Lcom/mapabc/mapapi/core/CommonProtoBuf$Common;->bitField0_:I

    and-int/lit8 v1, v1, 0x2

    if-ne v1, v3, :cond_2

    .line 239
    invoke-direct {p0}, Lcom/mapabc/mapapi/core/CommonProtoBuf$Common;->getAKBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v1

    add-int/2addr v0, v1

    .line 242
    :cond_2
    iget v1, p0, Lcom/mapabc/mapapi/core/CommonProtoBuf$Common;->bitField0_:I

    and-int/lit8 v1, v1, 0x4

    if-ne v1, v4, :cond_3

    .line 243
    const/4 v1, 0x3

    invoke-direct {p0}, Lcom/mapabc/mapapi/core/CommonProtoBuf$Common;->getResTypeBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v1

    add-int/2addr v0, v1

    .line 246
    :cond_3
    iget v1, p0, Lcom/mapabc/mapapi/core/CommonProtoBuf$Common;->bitField0_:I

    and-int/lit8 v1, v1, 0x8

    const/16 v2, 0x8

    if-ne v1, v2, :cond_4

    .line 247
    invoke-direct {p0}, Lcom/mapabc/mapapi/core/CommonProtoBuf$Common;->getEncBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-static {v4, v1}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v1

    add-int/2addr v0, v1

    .line 250
    :cond_4
    invoke-virtual {p0}, Lcom/mapabc/mapapi/core/CommonProtoBuf$Common;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protobuf/UnknownFieldSet;->getSerializedSize()I

    move-result v1

    add-int/2addr v0, v1

    .line 251
    iput v0, p0, Lcom/mapabc/mapapi/core/CommonProtoBuf$Common;->memoizedSerializedSize:I

    goto :goto_0
.end method

.method public hasAK()Z
    .locals 2

    .prologue
    .line 95
    iget v0, p0, Lcom/mapabc/mapapi/core/CommonProtoBuf$Common;->bitField0_:I

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

.method public hasConfig()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 63
    iget v1, p0, Lcom/mapabc/mapapi/core/CommonProtoBuf$Common;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasEnc()Z
    .locals 2

    .prologue
    .line 159
    iget v0, p0, Lcom/mapabc/mapapi/core/CommonProtoBuf$Common;->bitField0_:I

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

.method public hasResType()Z
    .locals 2

    .prologue
    .line 127
    iget v0, p0, Lcom/mapabc/mapapi/core/CommonProtoBuf$Common;->bitField0_:I

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
    .line 55
    # getter for: Lcom/mapabc/mapapi/core/CommonProtoBuf;->internal_static_Common_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    invoke-static {}, Lcom/mapabc/mapapi/core/CommonProtoBuf;->access$100()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 195
    iget-byte v2, p0, Lcom/mapabc/mapapi/core/CommonProtoBuf$Common;->memoizedIsInitialized:B

    .line 196
    const/4 v3, -0x1

    if-eq v2, v3, :cond_1

    if-ne v2, v0, :cond_0

    .line 207
    :goto_0
    return v0

    :cond_0
    move v0, v1

    .line 196
    goto :goto_0

    .line 198
    :cond_1
    invoke-virtual {p0}, Lcom/mapabc/mapapi/core/CommonProtoBuf$Common;->hasConfig()Z

    move-result v2

    if-nez v2, :cond_2

    .line 199
    iput-byte v1, p0, Lcom/mapabc/mapapi/core/CommonProtoBuf$Common;->memoizedIsInitialized:B

    move v0, v1

    .line 200
    goto :goto_0

    .line 202
    :cond_2
    invoke-virtual {p0}, Lcom/mapabc/mapapi/core/CommonProtoBuf$Common;->hasAK()Z

    move-result v2

    if-nez v2, :cond_3

    .line 203
    iput-byte v1, p0, Lcom/mapabc/mapapi/core/CommonProtoBuf$Common;->memoizedIsInitialized:B

    move v0, v1

    .line 204
    goto :goto_0

    .line 206
    :cond_3
    iput-byte v0, p0, Lcom/mapabc/mapapi/core/CommonProtoBuf$Common;->memoizedIsInitialized:B

    goto :goto_0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 30
    invoke-virtual {p0}, Lcom/mapabc/mapapi/core/CommonProtoBuf$Common;->newBuilderForType()Lcom/mapabc/mapapi/core/CommonProtoBuf$Common$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic newBuilderForType(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 30
    invoke-virtual {p0, p1}, Lcom/mapabc/mapapi/core/CommonProtoBuf$Common;->newBuilderForType(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)Lcom/mapabc/mapapi/core/CommonProtoBuf$Common$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 30
    invoke-virtual {p0}, Lcom/mapabc/mapapi/core/CommonProtoBuf$Common;->newBuilderForType()Lcom/mapabc/mapapi/core/CommonProtoBuf$Common$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lcom/mapabc/mapapi/core/CommonProtoBuf$Common$Builder;
    .locals 1

    .prologue
    .line 330
    invoke-static {}, Lcom/mapabc/mapapi/core/CommonProtoBuf$Common;->newBuilder()Lcom/mapabc/mapapi/core/CommonProtoBuf$Common$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected newBuilderForType(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)Lcom/mapabc/mapapi/core/CommonProtoBuf$Common$Builder;
    .locals 2

    .prologue
    .line 339
    new-instance v0, Lcom/mapabc/mapapi/core/CommonProtoBuf$Common$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/mapabc/mapapi/core/CommonProtoBuf$Common$Builder;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;Lcom/mapabc/mapapi/core/b;)V

    .line 340
    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 30
    invoke-virtual {p0}, Lcom/mapabc/mapapi/core/CommonProtoBuf$Common;->toBuilder()Lcom/mapabc/mapapi/core/CommonProtoBuf$Common$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 30
    invoke-virtual {p0}, Lcom/mapabc/mapapi/core/CommonProtoBuf$Common;->toBuilder()Lcom/mapabc/mapapi/core/CommonProtoBuf$Common$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/mapabc/mapapi/core/CommonProtoBuf$Common$Builder;
    .locals 1

    .prologue
    .line 334
    invoke-static {p0}, Lcom/mapabc/mapapi/core/CommonProtoBuf$Common;->newBuilder(Lcom/mapabc/mapapi/core/CommonProtoBuf$Common;)Lcom/mapabc/mapapi/core/CommonProtoBuf$Common$Builder;

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
    .line 259
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

    .line 212
    invoke-virtual {p0}, Lcom/mapabc/mapapi/core/CommonProtoBuf$Common;->getSerializedSize()I

    .line 213
    iget v0, p0, Lcom/mapabc/mapapi/core/CommonProtoBuf$Common;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_0

    .line 214
    invoke-direct {p0}, Lcom/mapabc/mapapi/core/CommonProtoBuf$Common;->getConfigBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 216
    :cond_0
    iget v0, p0, Lcom/mapabc/mapapi/core/CommonProtoBuf$Common;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-ne v0, v2, :cond_1

    .line 217
    invoke-direct {p0}, Lcom/mapabc/mapapi/core/CommonProtoBuf$Common;->getAKBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 219
    :cond_1
    iget v0, p0, Lcom/mapabc/mapapi/core/CommonProtoBuf$Common;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-ne v0, v3, :cond_2

    .line 220
    const/4 v0, 0x3

    invoke-direct {p0}, Lcom/mapabc/mapapi/core/CommonProtoBuf$Common;->getResTypeBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 222
    :cond_2
    iget v0, p0, Lcom/mapabc/mapapi/core/CommonProtoBuf$Common;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    const/16 v1, 0x8

    if-ne v0, v1, :cond_3

    .line 223
    invoke-direct {p0}, Lcom/mapabc/mapapi/core/CommonProtoBuf$Common;->getEncBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p1, v3, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 225
    :cond_3
    invoke-virtual {p0}, Lcom/mapabc/mapapi/core/CommonProtoBuf$Common;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/UnknownFieldSet;->writeTo(Lcom/google/protobuf/CodedOutputStream;)V

    .line 226
    return-void
.end method
