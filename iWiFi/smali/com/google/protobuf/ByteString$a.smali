.class final Lcom/google/protobuf/ByteString$a;
.super Ljava/lang/Object;
.source "ByteString.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protobuf/ByteString;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "a"
.end annotation


# instance fields
.field private final a:Lcom/google/protobuf/CodedOutputStream;

.field private final b:[B


# direct methods
.method private constructor <init>(I)V
    .locals 1

    .prologue
    .line 385
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 386
    new-array v0, p1, [B

    iput-object v0, p0, Lcom/google/protobuf/ByteString$a;->b:[B

    .line 387
    iget-object v0, p0, Lcom/google/protobuf/ByteString$a;->b:[B

    invoke-static {v0}, Lcom/google/protobuf/CodedOutputStream;->newInstance([B)Lcom/google/protobuf/CodedOutputStream;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/ByteString$a;->a:Lcom/google/protobuf/CodedOutputStream;

    .line 388
    return-void
.end method

.method synthetic constructor <init>(ILcom/google/protobuf/ByteString$1;)V
    .locals 0

    .prologue
    .line 381
    invoke-direct {p0, p1}, Lcom/google/protobuf/ByteString$a;-><init>(I)V

    return-void
.end method


# virtual methods
.method public a()Lcom/google/protobuf/ByteString;
    .locals 3

    .prologue
    .line 391
    iget-object v0, p0, Lcom/google/protobuf/ByteString$a;->a:Lcom/google/protobuf/CodedOutputStream;

    invoke-virtual {v0}, Lcom/google/protobuf/CodedOutputStream;->checkNoSpaceLeft()V

    .line 396
    new-instance v0, Lcom/google/protobuf/ByteString;

    iget-object v1, p0, Lcom/google/protobuf/ByteString$a;->b:[B

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/protobuf/ByteString;-><init>([BLcom/google/protobuf/ByteString$1;)V

    return-object v0
.end method

.method public b()Lcom/google/protobuf/CodedOutputStream;
    .locals 1

    .prologue
    .line 400
    iget-object v0, p0, Lcom/google/protobuf/ByteString$a;->a:Lcom/google/protobuf/CodedOutputStream;

    return-object v0
.end method
