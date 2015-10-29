.class public Lcom/ta/util/resoperate/TAAssetsOperateUtils;
.super Ljava/lang/Object;
.source "TAAssetsOperateUtils.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "TAAssetsOperateUtils"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getBitmapForName(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "fileName"    # Ljava/lang/String;

    .prologue
    .line 103
    const/4 v0, 0x0

    .line 104
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    const/4 v2, 0x0

    .line 107
    .local v2, "inputStream":Ljava/io/InputStream;
    :try_start_0
    invoke-static {p0, p1}, Lcom/ta/util/resoperate/TAAssetsOperateUtils;->getInputStreamForName(Landroid/content/Context;Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v2

    .line 108
    invoke-static {v2}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 109
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 114
    :goto_0
    return-object v0

    .line 110
    :catch_0
    move-exception v1

    .line 112
    .local v1, "e":Ljava/io/IOException;
    const-string v3, "TAAssetsOperateUtils"

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/ta/util/TALogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static getInputStreamForName(Landroid/content/Context;Ljava/lang/String;)Ljava/io/InputStream;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "fileName"    # Ljava/lang/String;

    .prologue
    .line 51
    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    .line 52
    .local v0, "assetManager":Landroid/content/res/AssetManager;
    const/4 v2, 0x0

    .line 55
    .local v2, "inputStream":Ljava/io/InputStream;
    :try_start_0
    invoke-virtual {v0, p1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 60
    :goto_0
    return-object v2

    .line 56
    :catch_0
    move-exception v1

    .line 58
    .local v1, "e":Ljava/io/IOException;
    const-string v3, "TAAssetsOperateUtils"

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/ta/util/TALogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static getStringForName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "fileName"    # Ljava/lang/String;

    .prologue
    .line 73
    const/4 v2, 0x0

    .line 74
    .local v2, "inputStream":Ljava/io/InputStream;
    new-instance v4, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v4}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 75
    .local v4, "outputStream":Ljava/io/ByteArrayOutputStream;
    const/16 v5, 0x400

    new-array v0, v5, [B

    .line 79
    .local v0, "buf":[B
    :try_start_0
    invoke-static {p0, p1}, Lcom/ta/util/resoperate/TAAssetsOperateUtils;->getInputStreamForName(Landroid/content/Context;Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v2

    .line 80
    :goto_0
    invoke-virtual {v2, v0}, Ljava/io/InputStream;->read([B)I

    move-result v3

    .local v3, "len":I
    const/4 v5, -0x1

    if-ne v3, v5, :cond_0

    .line 84
    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 85
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 90
    .end local v3    # "len":I
    :goto_1
    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5

    .line 82
    .restart local v3    # "len":I
    :cond_0
    const/4 v5, 0x0

    :try_start_1
    invoke-virtual {v4, v0, v5, v3}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 86
    .end local v3    # "len":I
    :catch_0
    move-exception v1

    .line 88
    .local v1, "e":Ljava/io/IOException;
    const-string v5, "TAAssetsOperateUtils"

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/ta/util/TALogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method
