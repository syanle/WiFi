.class Lcom/pubinfo/wifi_core/core/util/BaseFileHelper$FlushedInputStream;
.super Ljava/io/FilterInputStream;
.source "BaseFileHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pubinfo/wifi_core/core/util/BaseFileHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "FlushedInputStream"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pubinfo/wifi_core/core/util/BaseFileHelper;


# direct methods
.method public constructor <init>(Lcom/pubinfo/wifi_core/core/util/BaseFileHelper;Ljava/io/InputStream;)V
    .locals 0
    .param p2, "inputStream"    # Ljava/io/InputStream;

    .prologue
    .line 205
    iput-object p1, p0, Lcom/pubinfo/wifi_core/core/util/BaseFileHelper$FlushedInputStream;->this$0:Lcom/pubinfo/wifi_core/core/util/BaseFileHelper;

    .line 206
    invoke-direct {p0, p2}, Ljava/io/FilterInputStream;-><init>(Ljava/io/InputStream;)V

    .line 207
    return-void
.end method


# virtual methods
.method public skip(J)J
    .locals 8
    .param p1, "n"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 211
    const-wide/16 v3, 0x0

    .line 212
    .local v3, "totalBytesSkipped":J
    :goto_0
    cmp-long v5, v3, p1

    if-ltz v5, :cond_1

    .line 224
    :cond_0
    return-wide v3

    .line 213
    :cond_1
    iget-object v5, p0, Lcom/pubinfo/wifi_core/core/util/BaseFileHelper$FlushedInputStream;->in:Ljava/io/InputStream;

    sub-long v6, p1, v3

    invoke-virtual {v5, v6, v7}, Ljava/io/InputStream;->skip(J)J

    move-result-wide v1

    .line 214
    .local v1, "bytesSkipped":J
    const-wide/16 v5, 0x0

    cmp-long v5, v1, v5

    if-nez v5, :cond_2

    .line 215
    invoke-virtual {p0}, Lcom/pubinfo/wifi_core/core/util/BaseFileHelper$FlushedInputStream;->read()I

    move-result v0

    .line 216
    .local v0, "bt":I
    if-ltz v0, :cond_0

    .line 219
    const-wide/16 v1, 0x1

    .line 222
    .end local v0    # "bt":I
    :cond_2
    add-long/2addr v3, v1

    goto :goto_0
.end method
