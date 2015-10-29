.class public abstract Lcom/ta/util/bitmap/TAProcessBitmapHandler;
.super Lcom/ta/util/cache/TAProcessDataHandler;
.source "TAProcessBitmapHandler.java"


# static fields
.field private static final DEFAULT_COMPRESS_FORMAT:Landroid/graphics/Bitmap$CompressFormat;

.field private static final DEFAULT_COMPRESS_QUALITY:I = 0x46


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 31
    sget-object v0, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    sput-object v0, Lcom/ta/util/bitmap/TAProcessBitmapHandler;->DEFAULT_COMPRESS_FORMAT:Landroid/graphics/Bitmap$CompressFormat;

    .line 32
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/ta/util/cache/TAProcessDataHandler;-><init>()V

    return-void
.end method

.method public static readStream(Ljava/io/InputStream;)[B
    .locals 4
    .param p0, "inStream"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 65
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 66
    .local v2, "outStream":Ljava/io/ByteArrayOutputStream;
    const/16 v3, 0x400

    new-array v0, v3, [B

    .line 67
    .local v0, "buffer":[B
    const/4 v1, 0x0

    .line 68
    .local v1, "len":I
    :goto_0
    invoke-virtual {p0, v0}, Ljava/io/InputStream;->read([B)I

    move-result v1

    const/4 v3, -0x1

    if-ne v1, v3, :cond_0

    .line 72
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 73
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    return-object v3

    .line 70
    :cond_0
    const/4 v3, 0x0

    invoke-virtual {v2, v0, v3, v1}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_0
.end method


# virtual methods
.method protected abstract processBitmap(Ljava/lang/Object;)Landroid/graphics/Bitmap;
.end method

.method public processData(Ljava/lang/Object;)[B
    .locals 7
    .param p1, "data"    # Ljava/lang/Object;

    .prologue
    .line 38
    const/4 v2, 0x0

    .line 39
    .local v2, "buffer":[B
    invoke-virtual {p0, p1}, Lcom/ta/util/bitmap/TAProcessBitmapHandler;->processBitmap(Ljava/lang/Object;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 40
    .local v1, "bitmap":Landroid/graphics/Bitmap;
    const/4 v4, 0x0

    .line 41
    .local v4, "is":Ljava/io/InputStream;
    if-eqz v1, :cond_0

    .line 43
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 44
    .local v0, "baos":Ljava/io/ByteArrayOutputStream;
    sget-object v5, Lcom/ta/util/bitmap/TAProcessBitmapHandler;->DEFAULT_COMPRESS_FORMAT:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v6, 0x46

    invoke-virtual {v1, v5, v6, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 46
    new-instance v4, Ljava/io/ByteArrayInputStream;

    .end local v4    # "is":Ljava/io/InputStream;
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 49
    .restart local v4    # "is":Ljava/io/InputStream;
    :try_start_0
    invoke-static {v4}, Lcom/ta/util/bitmap/TAProcessBitmapHandler;->readStream(Ljava/io/InputStream;)[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 57
    .end local v0    # "baos":Ljava/io/ByteArrayOutputStream;
    :cond_0
    :goto_0
    return-object v2

    .line 50
    .restart local v0    # "baos":Ljava/io/ByteArrayOutputStream;
    :catch_0
    move-exception v3

    .line 53
    .local v3, "e":Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    .line 54
    const-string v5, "processData\u5931\u8d25"

    invoke-static {p0, v5}, Lcom/ta/util/TALogger;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0
.end method
