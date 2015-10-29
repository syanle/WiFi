.class public Lcom/pubinfo/wifi_core/core/view/AdvertisingImageView;
.super Landroid/widget/ImageView;
.source "AdvertisingImageView.java"


# instance fields
.field bit:Landroid/graphics/Bitmap;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 19
    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 17
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/pubinfo/wifi_core/core/view/AdvertisingImageView;->bit:Landroid/graphics/Bitmap;

    .line 20
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 28
    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 17
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/pubinfo/wifi_core/core/view/AdvertisingImageView;->bit:Landroid/graphics/Bitmap;

    .line 29
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 24
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 17
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/pubinfo/wifi_core/core/view/AdvertisingImageView;->bit:Landroid/graphics/Bitmap;

    .line 25
    return-void
.end method

.method private downLoadBitmap(Ljava/lang/String;)V
    .locals 6
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    .line 41
    :try_start_0
    new-instance v2, Ljava/net/URL;

    invoke-direct {v2, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 42
    .local v2, "url":Ljava/net/URL;
    invoke-virtual {v2}, Ljava/net/URL;->openStream()Ljava/io/InputStream;

    move-result-object v1

    .line 43
    .local v1, "in":Ljava/io/InputStream;
    invoke-static {v1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v3

    iput-object v3, p0, Lcom/pubinfo/wifi_core/core/view/AdvertisingImageView;->bit:Landroid/graphics/Bitmap;

    .line 44
    new-instance v3, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v4, p0, Lcom/pubinfo/wifi_core/core/view/AdvertisingImageView;->bit:Landroid/graphics/Bitmap;

    invoke-direct {v3, v4}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {p0, v3}, Lcom/pubinfo/wifi_core/core/view/AdvertisingImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 50
    .end local v1    # "in":Ljava/io/InputStream;
    .end local v2    # "url":Ljava/net/URL;
    :goto_0
    return-void

    .line 45
    :catch_0
    move-exception v0

    .line 46
    .local v0, "e":Ljava/net/MalformedURLException;
    iput-object v5, p0, Lcom/pubinfo/wifi_core/core/view/AdvertisingImageView;->bit:Landroid/graphics/Bitmap;

    goto :goto_0

    .line 47
    .end local v0    # "e":Ljava/net/MalformedURLException;
    :catch_1
    move-exception v0

    .line 48
    .local v0, "e":Ljava/io/IOException;
    iput-object v5, p0, Lcom/pubinfo/wifi_core/core/view/AdvertisingImageView;->bit:Landroid/graphics/Bitmap;

    goto :goto_0
.end method


# virtual methods
.method public setBg(Ljava/lang/String;)V
    .locals 0
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 36
    invoke-direct {p0, p1}, Lcom/pubinfo/wifi_core/core/view/AdvertisingImageView;->downLoadBitmap(Ljava/lang/String;)V

    .line 37
    return-void
.end method
