.class public final Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCRequest;
.super Lcom/google/protobuf/GeneratedMessage;
.source "RGCProtoBuf.java"

# interfaces
.implements Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCRequestOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mapabc/mapapi/core/RGCProtoBuf;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "RGCRequest"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCRequest$Builder;
    }
.end annotation


# static fields
.field public static final COMMON_FIELD_NUMBER:I = 0x1

.field public static final COORS_FIELD_NUMBER:I = 0x6

.field public static final CR_FIELD_NUMBER:I = 0x7

.field public static final FLAG_FIELD_NUMBER:I = 0x8

.field public static final TS_FIELD_NUMBER:I = 0xb

.field public static final TYPE_FIELD_NUMBER:I = 0x9

.field public static final X1_FIELD_NUMBER:I = 0x2

.field public static final X2_FIELD_NUMBER:I = 0x4

.field public static final Y1_FIELD_NUMBER:I = 0x3

.field public static final Y2_FIELD_NUMBER:I = 0x5

.field public static final Z_FIELD_NUMBER:I = 0xa

.field private static final defaultInstance:Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCRequest;

.field private static final serialVersionUID:J


# instance fields
.field private bitField0_:I

.field private common_:Lcom/mapabc/mapapi/core/CommonProtoBuf$Common;

.field private coors_:Ljava/lang/Object;

.field private cr_:Ljava/lang/Object;

.field private flag_:Ljava/lang/Object;

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I

.field private ts_:Ljava/lang/Object;

.field private type_:Ljava/lang/Object;

.field private x1_:Ljava/lang/Object;

.field private x2_:Ljava/lang/Object;

.field private y1_:Ljava/lang/Object;

.field private y2_:Ljava/lang/Object;

.field private z_:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 1384
    new-instance v0, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCRequest;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCRequest;-><init>(Z)V

    sput-object v0, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCRequest;->defaultInstance:Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCRequest;

    .line 1385
    sget-object v0, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCRequest;->defaultInstance:Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCRequest;

    invoke-direct {v0}, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCRequest;->initFields()V

    .line 1386
    return-void
.end method

.method private constructor <init>(Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCRequest$Builder;)V
    .locals 1

    .prologue
    const/4 v0, -0x1

    .line 64
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessage;-><init>(Lcom/google/protobuf/GeneratedMessage$Builder;)V

    .line 434
    iput-byte v0, p0, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCRequest;->memoizedIsInitialized:B

    .line 490
    iput v0, p0, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCRequest;->memoizedSerializedSize:I

    .line 65
    return-void
.end method

.method synthetic constructor <init>(Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCRequest$Builder;Lcom/mapabc/mapapi/core/v;)V
    .locals 0

    .prologue
    .line 59
    invoke-direct {p0, p1}, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCRequest;-><init>(Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCRequest$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 1

    .prologue
    const/4 v0, -0x1

    .line 66
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage;-><init>()V

    .line 434
    iput-byte v0, p0, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCRequest;->memoizedIsInitialized:B

    .line 490
    iput v0, p0, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCRequest;->memoizedSerializedSize:I

    .line 66
    return-void
.end method

.method static synthetic access$1002(Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCRequest;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .prologue
    .line 59
    iput-object p1, p0, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCRequest;->x2_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$1102(Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCRequest;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .prologue
    .line 59
    iput-object p1, p0, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCRequest;->y2_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$1202(Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCRequest;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .prologue
    .line 59
    iput-object p1, p0, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCRequest;->coors_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$1302(Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCRequest;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .prologue
    .line 59
    iput-object p1, p0, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCRequest;->cr_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$1402(Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCRequest;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .prologue
    .line 59
    iput-object p1, p0, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCRequest;->flag_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$1502(Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCRequest;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .prologue
    .line 59
    iput-object p1, p0, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCRequest;->type_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$1602(Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCRequest;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .prologue
    .line 59
    iput-object p1, p0, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCRequest;->z_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$1702(Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCRequest;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .prologue
    .line 59
    iput-object p1, p0, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCRequest;->ts_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$1802(Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCRequest;I)I
    .locals 0

    .prologue
    .line 59
    iput p1, p0, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCRequest;->bitField0_:I

    return p1
.end method

.method static synthetic access$500()Z
    .locals 1

    .prologue
    .line 59
    sget-boolean v0, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCRequest;->alwaysUseFieldBuilders:Z

    return v0
.end method

.method static synthetic access$702(Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCRequest;Lcom/mapabc/mapapi/core/CommonProtoBuf$Common;)Lcom/mapabc/mapapi/core/CommonProtoBuf$Common;
    .locals 0

    .prologue
    .line 59
    iput-object p1, p0, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCRequest;->common_:Lcom/mapabc/mapapi/core/CommonProtoBuf$Common;

    return-object p1
.end method

.method static synthetic access$802(Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCRequest;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .prologue
    .line 59
    iput-object p1, p0, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCRequest;->x1_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$902(Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCRequest;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .prologue
    .line 59
    iput-object p1, p0, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCRequest;->y1_:Ljava/lang/Object;

    return-object p1
.end method

.method private getCoorsBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .prologue
    .line 250
    iget-object v0, p0, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCRequest;->coors_:Ljava/lang/Object;

    .line 251
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 252
    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 254
    iput-object v0, p0, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCRequest;->coors_:Ljava/lang/Object;

    .line 257
    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    goto :goto_0
.end method

.method private getCrBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .prologue
    .line 282
    iget-object v0, p0, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCRequest;->cr_:Ljava/lang/Object;

    .line 283
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 284
    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 286
    iput-object v0, p0, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCRequest;->cr_:Ljava/lang/Object;

    .line 289
    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    goto :goto_0
.end method

.method public static getDefaultInstance()Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCRequest;
    .locals 1

    .prologue
    .line 70
    sget-object v0, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCRequest;->defaultInstance:Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCRequest;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 79
    # getter for: Lcom/mapabc/mapapi/core/RGCProtoBuf;->internal_static_RGCRequest_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;
    invoke-static {}, Lcom/mapabc/mapapi/core/RGCProtoBuf;->access$000()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method private getFlagBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .prologue
    .line 314
    iget-object v0, p0, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCRequest;->flag_:Ljava/lang/Object;

    .line 315
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 316
    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 318
    iput-object v0, p0, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCRequest;->flag_:Ljava/lang/Object;

    .line 321
    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    goto :goto_0
.end method

.method private getTsBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .prologue
    .line 410
    iget-object v0, p0, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCRequest;->ts_:Ljava/lang/Object;

    .line 411
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 412
    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 414
    iput-object v0, p0, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCRequest;->ts_:Ljava/lang/Object;

    .line 417
    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    goto :goto_0
.end method

.method private getTypeBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .prologue
    .line 346
    iget-object v0, p0, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCRequest;->type_:Ljava/lang/Object;

    .line 347
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 348
    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 350
    iput-object v0, p0, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCRequest;->type_:Ljava/lang/Object;

    .line 353
    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    goto :goto_0
.end method

.method private getX1Bytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .prologue
    .line 122
    iget-object v0, p0, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCRequest;->x1_:Ljava/lang/Object;

    .line 123
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 124
    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 126
    iput-object v0, p0, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCRequest;->x1_:Ljava/lang/Object;

    .line 129
    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    goto :goto_0
.end method

.method private getX2Bytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .prologue
    .line 186
    iget-object v0, p0, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCRequest;->x2_:Ljava/lang/Object;

    .line 187
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 188
    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 190
    iput-object v0, p0, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCRequest;->x2_:Ljava/lang/Object;

    .line 193
    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    goto :goto_0
.end method

.method private getY1Bytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .prologue
    .line 154
    iget-object v0, p0, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCRequest;->y1_:Ljava/lang/Object;

    .line 155
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 156
    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 158
    iput-object v0, p0, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCRequest;->y1_:Ljava/lang/Object;

    .line 161
    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    goto :goto_0
.end method

.method private getY2Bytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .prologue
    .line 218
    iget-object v0, p0, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCRequest;->y2_:Ljava/lang/Object;

    .line 219
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 220
    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 222
    iput-object v0, p0, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCRequest;->y2_:Ljava/lang/Object;

    .line 225
    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    goto :goto_0
.end method

.method private getZBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .prologue
    .line 378
    iget-object v0, p0, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCRequest;->z_:Ljava/lang/Object;

    .line 379
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 380
    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 382
    iput-object v0, p0, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCRequest;->z_:Ljava/lang/Object;

    .line 385
    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    goto :goto_0
.end method

.method private initFields()V
    .locals 1

    .prologue
    .line 422
    invoke-static {}, Lcom/mapabc/mapapi/core/CommonProtoBuf$Common;->getDefaultInstance()Lcom/mapabc/mapapi/core/CommonProtoBuf$Common;

    move-result-object v0

    iput-object v0, p0, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCRequest;->common_:Lcom/mapabc/mapapi/core/CommonProtoBuf$Common;

    .line 423
    const-string v0, ""

    iput-object v0, p0, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCRequest;->x1_:Ljava/lang/Object;

    .line 424
    const-string v0, ""

    iput-object v0, p0, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCRequest;->y1_:Ljava/lang/Object;

    .line 425
    const-string v0, ""

    iput-object v0, p0, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCRequest;->x2_:Ljava/lang/Object;

    .line 426
    const-string v0, ""

    iput-object v0, p0, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCRequest;->y2_:Ljava/lang/Object;

    .line 427
    const-string v0, ""

    iput-object v0, p0, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCRequest;->coors_:Ljava/lang/Object;

    .line 428
    const-string v0, ""

    iput-object v0, p0, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCRequest;->cr_:Ljava/lang/Object;

    .line 429
    const-string v0, ""

    iput-object v0, p0, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCRequest;->flag_:Ljava/lang/Object;

    .line 430
    const-string v0, ""

    iput-object v0, p0, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCRequest;->type_:Ljava/lang/Object;

    .line 431
    const-string v0, ""

    iput-object v0, p0, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCRequest;->z_:Ljava/lang/Object;

    .line 432
    const-string v0, ""

    iput-object v0, p0, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCRequest;->ts_:Ljava/lang/Object;

    .line 433
    return-void
.end method

.method public static newBuilder()Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCRequest$Builder;
    .locals 1

    .prologue
    .line 619
    # invokes: Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCRequest$Builder;->create()Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCRequest$Builder;
    invoke-static {}, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCRequest$Builder;->access$300()Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCRequest;)Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCRequest$Builder;
    .locals 1

    .prologue
    .line 622
    invoke-static {}, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCRequest;->newBuilder()Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCRequest$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCRequest$Builder;->mergeFrom(Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCRequest;)Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCRequest;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 588
    invoke-static {}, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCRequest;->newBuilder()Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCRequest$Builder;

    move-result-object v0

    .line 589
    invoke-virtual {v0, p0}, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCRequest$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 590
    # invokes: Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCRequest$Builder;->buildParsed()Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCRequest;
    invoke-static {v0}, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCRequest$Builder;->access$200(Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCRequest$Builder;)Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCRequest;

    move-result-object v0

    .line 592
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCRequest;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 599
    invoke-static {}, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCRequest;->newBuilder()Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCRequest$Builder;

    move-result-object v0

    .line 600
    invoke-virtual {v0, p0, p1}, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCRequest$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 601
    # invokes: Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCRequest$Builder;->buildParsed()Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCRequest;
    invoke-static {v0}, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCRequest$Builder;->access$200(Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCRequest$Builder;)Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCRequest;

    move-result-object v0

    .line 603
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCRequest;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 555
    invoke-static {}, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCRequest;->newBuilder()Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCRequest$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCRequest$Builder;->mergeFrom(Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCRequest$Builder;

    # invokes: Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCRequest$Builder;->buildParsed()Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCRequest;
    invoke-static {v0}, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCRequest$Builder;->access$200(Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCRequest$Builder;)Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCRequest;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCRequest;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 561
    invoke-static {}, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCRequest;->newBuilder()Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCRequest$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCRequest$Builder;->mergeFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCRequest$Builder;

    # invokes: Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCRequest$Builder;->buildParsed()Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCRequest;
    invoke-static {v0}, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCRequest$Builder;->access$200(Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCRequest$Builder;)Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCRequest;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCRequest;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 609
    invoke-static {}, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCRequest;->newBuilder()Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCRequest$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCRequest$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCRequest$Builder;

    # invokes: Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCRequest$Builder;->buildParsed()Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCRequest;
    invoke-static {v0}, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCRequest$Builder;->access$200(Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCRequest$Builder;)Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCRequest;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCRequest;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 615
    invoke-static {}, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCRequest;->newBuilder()Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCRequest$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCRequest$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCRequest$Builder;

    move-result-object v0

    # invokes: Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCRequest$Builder;->buildParsed()Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCRequest;
    invoke-static {v0}, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCRequest$Builder;->access$200(Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCRequest$Builder;)Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCRequest;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCRequest;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 577
    invoke-static {}, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCRequest;->newBuilder()Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCRequest$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCRequest$Builder;->mergeFrom(Ljava/io/InputStream;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCRequest$Builder;

    # invokes: Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCRequest$Builder;->buildParsed()Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCRequest;
    invoke-static {v0}, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCRequest$Builder;->access$200(Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCRequest$Builder;)Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCRequest;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCRequest;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 583
    invoke-static {}, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCRequest;->newBuilder()Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCRequest$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCRequest$Builder;->mergeFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCRequest$Builder;

    # invokes: Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCRequest$Builder;->buildParsed()Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCRequest;
    invoke-static {v0}, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCRequest$Builder;->access$200(Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCRequest$Builder;)Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCRequest;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCRequest;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 566
    invoke-static {}, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCRequest;->newBuilder()Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCRequest$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCRequest$Builder;->mergeFrom([B)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCRequest$Builder;

    # invokes: Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCRequest$Builder;->buildParsed()Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCRequest;
    invoke-static {v0}, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCRequest$Builder;->access$200(Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCRequest$Builder;)Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCRequest;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCRequest;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 572
    invoke-static {}, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCRequest;->newBuilder()Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCRequest$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCRequest$Builder;->mergeFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCRequest$Builder;

    # invokes: Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCRequest$Builder;->buildParsed()Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCRequest;
    invoke-static {v0}, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCRequest$Builder;->access$200(Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCRequest$Builder;)Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCRequest;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getCommon()Lcom/mapabc/mapapi/core/CommonProtoBuf$Common;
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCRequest;->common_:Lcom/mapabc/mapapi/core/CommonProtoBuf$Common;

    return-object v0
.end method

.method public getCommonOrBuilder()Lcom/mapabc/mapapi/core/CommonProtoBuf$CommonOrBuilder;
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCRequest;->common_:Lcom/mapabc/mapapi/core/CommonProtoBuf$Common;

    return-object v0
.end method

.method public getCoors()Ljava/lang/String;
    .locals 2

    .prologue
    .line 236
    iget-object v0, p0, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCRequest;->coors_:Ljava/lang/Object;

    .line 237
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 238
    check-cast v0, Ljava/lang/String;

    .line 246
    :goto_0
    return-object v0

    .line 240
    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 242
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 243
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 244
    iput-object v1, p0, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCRequest;->coors_:Ljava/lang/Object;

    :cond_1
    move-object v0, v1

    .line 246
    goto :goto_0
.end method

.method public getCr()Ljava/lang/String;
    .locals 2

    .prologue
    .line 268
    iget-object v0, p0, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCRequest;->cr_:Ljava/lang/Object;

    .line 269
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 270
    check-cast v0, Ljava/lang/String;

    .line 278
    :goto_0
    return-object v0

    .line 272
    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 274
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 275
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 276
    iput-object v1, p0, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCRequest;->cr_:Ljava/lang/Object;

    :cond_1
    move-object v0, v1

    .line 278
    goto :goto_0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 59
    invoke-virtual {p0}, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCRequest;->getDefaultInstanceForType()Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCRequest;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 59
    invoke-virtual {p0}, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCRequest;->getDefaultInstanceForType()Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCRequest;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCRequest;
    .locals 1

    .prologue
    .line 74
    sget-object v0, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCRequest;->defaultInstance:Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCRequest;

    return-object v0
.end method

.method public getFlag()Ljava/lang/String;
    .locals 2

    .prologue
    .line 300
    iget-object v0, p0, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCRequest;->flag_:Ljava/lang/Object;

    .line 301
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 302
    check-cast v0, Ljava/lang/String;

    .line 310
    :goto_0
    return-object v0

    .line 304
    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 306
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 307
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 308
    iput-object v1, p0, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCRequest;->flag_:Ljava/lang/Object;

    :cond_1
    move-object v0, v1

    .line 310
    goto :goto_0
.end method

.method public getSerializedSize()I
    .locals 6

    .prologue
    const/16 v5, 0x8

    const/4 v4, 0x4

    const/4 v3, 0x2

    const/4 v2, 0x1

    .line 492
    iget v0, p0, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCRequest;->memoizedSerializedSize:I

    .line 493
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 542
    :goto_0
    return v0

    .line 495
    :cond_0
    const/4 v0, 0x0

    .line 496
    iget v1, p0, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCRequest;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v2, :cond_1

    .line 497
    iget-object v1, p0, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCRequest;->common_:Lcom/mapabc/mapapi/core/CommonProtoBuf$Common;

    invoke-static {v2, v1}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v1

    add-int/2addr v0, v1

    .line 500
    :cond_1
    iget v1, p0, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCRequest;->bitField0_:I

    and-int/lit8 v1, v1, 0x2

    if-ne v1, v3, :cond_2

    .line 501
    invoke-direct {p0}, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCRequest;->getX1Bytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v1

    add-int/2addr v0, v1

    .line 504
    :cond_2
    iget v1, p0, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCRequest;->bitField0_:I

    and-int/lit8 v1, v1, 0x4

    if-ne v1, v4, :cond_3

    .line 505
    const/4 v1, 0x3

    invoke-direct {p0}, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCRequest;->getY1Bytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v1

    add-int/2addr v0, v1

    .line 508
    :cond_3
    iget v1, p0, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCRequest;->bitField0_:I

    and-int/lit8 v1, v1, 0x8

    if-ne v1, v5, :cond_4

    .line 509
    invoke-direct {p0}, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCRequest;->getX2Bytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-static {v4, v1}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v1

    add-int/2addr v0, v1

    .line 512
    :cond_4
    iget v1, p0, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCRequest;->bitField0_:I

    and-int/lit8 v1, v1, 0x10

    const/16 v2, 0x10

    if-ne v1, v2, :cond_5

    .line 513
    const/4 v1, 0x5

    invoke-direct {p0}, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCRequest;->getY2Bytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v1

    add-int/2addr v0, v1

    .line 516
    :cond_5
    iget v1, p0, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCRequest;->bitField0_:I

    and-int/lit8 v1, v1, 0x20

    const/16 v2, 0x20

    if-ne v1, v2, :cond_6

    .line 517
    const/4 v1, 0x6

    invoke-direct {p0}, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCRequest;->getCoorsBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v1

    add-int/2addr v0, v1

    .line 520
    :cond_6
    iget v1, p0, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCRequest;->bitField0_:I

    and-int/lit8 v1, v1, 0x40

    const/16 v2, 0x40

    if-ne v1, v2, :cond_7

    .line 521
    const/4 v1, 0x7

    invoke-direct {p0}, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCRequest;->getCrBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v1

    add-int/2addr v0, v1

    .line 524
    :cond_7
    iget v1, p0, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCRequest;->bitField0_:I

    and-int/lit16 v1, v1, 0x80

    const/16 v2, 0x80

    if-ne v1, v2, :cond_8

    .line 525
    invoke-direct {p0}, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCRequest;->getFlagBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-static {v5, v1}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v1

    add-int/2addr v0, v1

    .line 528
    :cond_8
    iget v1, p0, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCRequest;->bitField0_:I

    and-int/lit16 v1, v1, 0x100

    const/16 v2, 0x100

    if-ne v1, v2, :cond_9

    .line 529
    const/16 v1, 0x9

    invoke-direct {p0}, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCRequest;->getTypeBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v1

    add-int/2addr v0, v1

    .line 532
    :cond_9
    iget v1, p0, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCRequest;->bitField0_:I

    and-int/lit16 v1, v1, 0x200

    const/16 v2, 0x200

    if-ne v1, v2, :cond_a

    .line 533
    const/16 v1, 0xa

    invoke-direct {p0}, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCRequest;->getZBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v1

    add-int/2addr v0, v1

    .line 536
    :cond_a
    iget v1, p0, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCRequest;->bitField0_:I

    and-int/lit16 v1, v1, 0x400

    const/16 v2, 0x400

    if-ne v1, v2, :cond_b

    .line 537
    const/16 v1, 0xb

    invoke-direct {p0}, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCRequest;->getTsBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v1

    add-int/2addr v0, v1

    .line 540
    :cond_b
    invoke-virtual {p0}, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCRequest;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protobuf/UnknownFieldSet;->getSerializedSize()I

    move-result v1

    add-int/2addr v0, v1

    .line 541
    iput v0, p0, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCRequest;->memoizedSerializedSize:I

    goto/16 :goto_0
.end method

.method public getTs()Ljava/lang/String;
    .locals 2

    .prologue
    .line 396
    iget-object v0, p0, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCRequest;->ts_:Ljava/lang/Object;

    .line 397
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 398
    check-cast v0, Ljava/lang/String;

    .line 406
    :goto_0
    return-object v0

    .line 400
    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 402
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 403
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 404
    iput-object v1, p0, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCRequest;->ts_:Ljava/lang/Object;

    :cond_1
    move-object v0, v1

    .line 406
    goto :goto_0
.end method

.method public getType()Ljava/lang/String;
    .locals 2

    .prologue
    .line 332
    iget-object v0, p0, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCRequest;->type_:Ljava/lang/Object;

    .line 333
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 334
    check-cast v0, Ljava/lang/String;

    .line 342
    :goto_0
    return-object v0

    .line 336
    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 338
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 339
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 340
    iput-object v1, p0, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCRequest;->type_:Ljava/lang/Object;

    :cond_1
    move-object v0, v1

    .line 342
    goto :goto_0
.end method

.method public getX1()Ljava/lang/String;
    .locals 2

    .prologue
    .line 108
    iget-object v0, p0, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCRequest;->x1_:Ljava/lang/Object;

    .line 109
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 110
    check-cast v0, Ljava/lang/String;

    .line 118
    :goto_0
    return-object v0

    .line 112
    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 114
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 115
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 116
    iput-object v1, p0, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCRequest;->x1_:Ljava/lang/Object;

    :cond_1
    move-object v0, v1

    .line 118
    goto :goto_0
.end method

.method public getX2()Ljava/lang/String;
    .locals 2

    .prologue
    .line 172
    iget-object v0, p0, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCRequest;->x2_:Ljava/lang/Object;

    .line 173
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 174
    check-cast v0, Ljava/lang/String;

    .line 182
    :goto_0
    return-object v0

    .line 176
    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 178
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 179
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 180
    iput-object v1, p0, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCRequest;->x2_:Ljava/lang/Object;

    :cond_1
    move-object v0, v1

    .line 182
    goto :goto_0
.end method

.method public getY1()Ljava/lang/String;
    .locals 2

    .prologue
    .line 140
    iget-object v0, p0, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCRequest;->y1_:Ljava/lang/Object;

    .line 141
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 142
    check-cast v0, Ljava/lang/String;

    .line 150
    :goto_0
    return-object v0

    .line 144
    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 146
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 147
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 148
    iput-object v1, p0, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCRequest;->y1_:Ljava/lang/Object;

    :cond_1
    move-object v0, v1

    .line 150
    goto :goto_0
.end method

.method public getY2()Ljava/lang/String;
    .locals 2

    .prologue
    .line 204
    iget-object v0, p0, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCRequest;->y2_:Ljava/lang/Object;

    .line 205
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 206
    check-cast v0, Ljava/lang/String;

    .line 214
    :goto_0
    return-object v0

    .line 208
    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 210
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 211
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 212
    iput-object v1, p0, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCRequest;->y2_:Ljava/lang/Object;

    :cond_1
    move-object v0, v1

    .line 214
    goto :goto_0
.end method

.method public getZ()Ljava/lang/String;
    .locals 2

    .prologue
    .line 364
    iget-object v0, p0, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCRequest;->z_:Ljava/lang/Object;

    .line 365
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 366
    check-cast v0, Ljava/lang/String;

    .line 374
    :goto_0
    return-object v0

    .line 368
    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 370
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 371
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 372
    iput-object v1, p0, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCRequest;->z_:Ljava/lang/Object;

    :cond_1
    move-object v0, v1

    .line 374
    goto :goto_0
.end method

.method public hasCommon()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 92
    iget v1, p0, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCRequest;->bitField0_:I

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
    .line 233
    iget v0, p0, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCRequest;->bitField0_:I

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
    .line 265
    iget v0, p0, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCRequest;->bitField0_:I

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
    .line 297
    iget v0, p0, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCRequest;->bitField0_:I

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
    .line 393
    iget v0, p0, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCRequest;->bitField0_:I

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
    .line 329
    iget v0, p0, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCRequest;->bitField0_:I

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
    .line 105
    iget v0, p0, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCRequest;->bitField0_:I

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
    .line 169
    iget v0, p0, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCRequest;->bitField0_:I

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
    .line 137
    iget v0, p0, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCRequest;->bitField0_:I

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
    .line 201
    iget v0, p0, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCRequest;->bitField0_:I

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
    .line 361
    iget v0, p0, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCRequest;->bitField0_:I

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
    .line 84
    # getter for: Lcom/mapabc/mapapi/core/RGCProtoBuf;->internal_static_RGCRequest_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    invoke-static {}, Lcom/mapabc/mapapi/core/RGCProtoBuf;->access$100()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 436
    iget-byte v2, p0, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCRequest;->memoizedIsInitialized:B

    .line 437
    const/4 v3, -0x1

    if-eq v2, v3, :cond_1

    if-ne v2, v0, :cond_0

    .line 448
    :goto_0
    return v0

    :cond_0
    move v0, v1

    .line 437
    goto :goto_0

    .line 439
    :cond_1
    invoke-virtual {p0}, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCRequest;->hasCommon()Z

    move-result v2

    if-nez v2, :cond_2

    .line 440
    iput-byte v1, p0, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCRequest;->memoizedIsInitialized:B

    move v0, v1

    .line 441
    goto :goto_0

    .line 443
    :cond_2
    invoke-virtual {p0}, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCRequest;->getCommon()Lcom/mapabc/mapapi/core/CommonProtoBuf$Common;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mapabc/mapapi/core/CommonProtoBuf$Common;->isInitialized()Z

    move-result v2

    if-nez v2, :cond_3

    .line 444
    iput-byte v1, p0, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCRequest;->memoizedIsInitialized:B

    move v0, v1

    .line 445
    goto :goto_0

    .line 447
    :cond_3
    iput-byte v0, p0, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCRequest;->memoizedIsInitialized:B

    goto :goto_0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 59
    invoke-virtual {p0}, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCRequest;->newBuilderForType()Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic newBuilderForType(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 59
    invoke-virtual {p0, p1}, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCRequest;->newBuilderForType(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 59
    invoke-virtual {p0}, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCRequest;->newBuilderForType()Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCRequest$Builder;
    .locals 1

    .prologue
    .line 620
    invoke-static {}, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCRequest;->newBuilder()Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected newBuilderForType(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCRequest$Builder;
    .locals 2

    .prologue
    .line 629
    new-instance v0, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCRequest$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCRequest$Builder;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;Lcom/mapabc/mapapi/core/v;)V

    .line 630
    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 59
    invoke-virtual {p0}, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCRequest;->toBuilder()Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 59
    invoke-virtual {p0}, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCRequest;->toBuilder()Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCRequest$Builder;
    .locals 1

    .prologue
    .line 624
    invoke-static {p0}, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCRequest;->newBuilder(Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCRequest;)Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCRequest$Builder;

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
    .line 549
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessage;->writeReplace()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public writeTo(Lcom/google/protobuf/CodedOutputStream;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v4, 0x8

    const/4 v3, 0x4

    const/4 v2, 0x2

    const/4 v1, 0x1

    .line 453
    invoke-virtual {p0}, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCRequest;->getSerializedSize()I

    .line 454
    iget v0, p0, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCRequest;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_0

    .line 455
    iget-object v0, p0, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCRequest;->common_:Lcom/mapabc/mapapi/core/CommonProtoBuf$Common;

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 457
    :cond_0
    iget v0, p0, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCRequest;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-ne v0, v2, :cond_1

    .line 458
    invoke-direct {p0}, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCRequest;->getX1Bytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 460
    :cond_1
    iget v0, p0, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCRequest;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-ne v0, v3, :cond_2

    .line 461
    const/4 v0, 0x3

    invoke-direct {p0}, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCRequest;->getY1Bytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 463
    :cond_2
    iget v0, p0, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCRequest;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    if-ne v0, v4, :cond_3

    .line 464
    invoke-direct {p0}, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCRequest;->getX2Bytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p1, v3, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 466
    :cond_3
    iget v0, p0, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCRequest;->bitField0_:I

    and-int/lit8 v0, v0, 0x10

    const/16 v1, 0x10

    if-ne v0, v1, :cond_4

    .line 467
    const/4 v0, 0x5

    invoke-direct {p0}, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCRequest;->getY2Bytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 469
    :cond_4
    iget v0, p0, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCRequest;->bitField0_:I

    and-int/lit8 v0, v0, 0x20

    const/16 v1, 0x20

    if-ne v0, v1, :cond_5

    .line 470
    const/4 v0, 0x6

    invoke-direct {p0}, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCRequest;->getCoorsBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 472
    :cond_5
    iget v0, p0, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCRequest;->bitField0_:I

    and-int/lit8 v0, v0, 0x40

    const/16 v1, 0x40

    if-ne v0, v1, :cond_6

    .line 473
    const/4 v0, 0x7

    invoke-direct {p0}, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCRequest;->getCrBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 475
    :cond_6
    iget v0, p0, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCRequest;->bitField0_:I

    and-int/lit16 v0, v0, 0x80

    const/16 v1, 0x80

    if-ne v0, v1, :cond_7

    .line 476
    invoke-direct {p0}, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCRequest;->getFlagBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p1, v4, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 478
    :cond_7
    iget v0, p0, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCRequest;->bitField0_:I

    and-int/lit16 v0, v0, 0x100

    const/16 v1, 0x100

    if-ne v0, v1, :cond_8

    .line 479
    const/16 v0, 0x9

    invoke-direct {p0}, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCRequest;->getTypeBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 481
    :cond_8
    iget v0, p0, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCRequest;->bitField0_:I

    and-int/lit16 v0, v0, 0x200

    const/16 v1, 0x200

    if-ne v0, v1, :cond_9

    .line 482
    const/16 v0, 0xa

    invoke-direct {p0}, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCRequest;->getZBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 484
    :cond_9
    iget v0, p0, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCRequest;->bitField0_:I

    and-int/lit16 v0, v0, 0x400

    const/16 v1, 0x400

    if-ne v0, v1, :cond_a

    .line 485
    const/16 v0, 0xb

    invoke-direct {p0}, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCRequest;->getTsBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 487
    :cond_a
    invoke-virtual {p0}, Lcom/mapabc/mapapi/core/RGCProtoBuf$RGCRequest;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/UnknownFieldSet;->writeTo(Lcom/google/protobuf/CodedOutputStream;)V

    .line 488
    return-void
.end method
