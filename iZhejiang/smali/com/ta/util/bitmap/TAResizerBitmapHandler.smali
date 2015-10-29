.class public Lcom/ta/util/bitmap/TAResizerBitmapHandler;
.super Lcom/ta/util/bitmap/TAProcessBitmapHandler;
.source "TAResizerBitmapHandler.java"


# instance fields
.field protected mImageHeight:I

.field protected mImageWidth:I

.field protected mResources:Landroid/content/res/Resources;


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "imageSize"    # I

    .prologue
    .line 52
    invoke-direct {p0}, Lcom/ta/util/bitmap/TAProcessBitmapHandler;-><init>()V

    .line 54
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcom/ta/util/bitmap/TAResizerBitmapHandler;->mResources:Landroid/content/res/Resources;

    .line 55
    invoke-virtual {p0, p2}, Lcom/ta/util/bitmap/TAResizerBitmapHandler;->setImageSize(I)V

    .line 56
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;II)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "imageWidth"    # I
    .param p3, "imageHeight"    # I

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/ta/util/bitmap/TAProcessBitmapHandler;-><init>()V

    .line 42
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcom/ta/util/bitmap/TAResizerBitmapHandler;->mResources:Landroid/content/res/Resources;

    .line 43
    invoke-virtual {p0, p2, p3}, Lcom/ta/util/bitmap/TAResizerBitmapHandler;->setImageSize(II)V

    .line 44
    return-void
.end method

.method public static calculateInSampleSize(Landroid/graphics/BitmapFactory$Options;II)I
    .locals 7
    .param p0, "options"    # Landroid/graphics/BitmapFactory$Options;
    .param p1, "reqWidth"    # I
    .param p2, "reqHeight"    # I

    .prologue
    .line 211
    iget v0, p0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 212
    .local v0, "height":I
    iget v4, p0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 213
    .local v4, "width":I
    const/4 v1, 0x1

    .line 215
    .local v1, "inSampleSize":I
    if-gt v0, p2, :cond_0

    if-le v4, p1, :cond_1

    .line 217
    :cond_0
    if-le v4, v0, :cond_2

    .line 219
    int-to-float v5, v0

    int-to-float v6, p2

    div-float/2addr v5, v6

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v1

    .line 232
    :goto_0
    mul-int v5, v4, v0

    int-to-float v2, v5

    .line 236
    .local v2, "totalPixels":F
    mul-int v5, p1, p2

    mul-int/lit8 v5, v5, 0x2

    int-to-float v3, v5

    .line 238
    .local v3, "totalReqPixelsCap":F
    :goto_1
    mul-int v5, v1, v1

    int-to-float v5, v5

    div-float v5, v2, v5

    cmpl-float v5, v5, v3

    if-gtz v5, :cond_3

    .line 243
    .end local v2    # "totalPixels":F
    .end local v3    # "totalReqPixelsCap":F
    :cond_1
    return v1

    .line 222
    :cond_2
    int-to-float v5, v4

    int-to-float v6, p1

    div-float/2addr v5, v6

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v1

    goto :goto_0

    .line 240
    .restart local v2    # "totalPixels":F
    .restart local v3    # "totalReqPixelsCap":F
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method public static decodeSampledBitmapFromDescriptor(Ljava/io/FileDescriptor;II)Landroid/graphics/Bitmap;
    .locals 3
    .param p0, "fileDescriptor"    # Ljava/io/FileDescriptor;
    .param p1, "reqWidth"    # I
    .param p2, "reqHeight"    # I

    .prologue
    const/4 v2, 0x0

    .line 174
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 175
    .local v0, "options":Landroid/graphics/BitmapFactory$Options;
    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 176
    invoke-static {p0, v2, v0}, Landroid/graphics/BitmapFactory;->decodeFileDescriptor(Ljava/io/FileDescriptor;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 179
    invoke-static {v0, p1, p2}, Lcom/ta/util/bitmap/TAResizerBitmapHandler;->calculateInSampleSize(Landroid/graphics/BitmapFactory$Options;II)I

    move-result v1

    iput v1, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 183
    const/4 v1, 0x0

    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 185
    invoke-static {p0, v2, v0}, Landroid/graphics/BitmapFactory;->decodeFileDescriptor(Ljava/io/FileDescriptor;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 184
    return-object v1
.end method

.method public static decodeSampledBitmapFromFile(Ljava/lang/String;II)Landroid/graphics/Bitmap;
    .locals 2
    .param p0, "filename"    # Ljava/lang/String;
    .param p1, "reqWidth"    # I
    .param p2, "reqHeight"    # I

    .prologue
    .line 148
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 149
    .local v0, "options":Landroid/graphics/BitmapFactory$Options;
    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 150
    invoke-static {p0, v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 153
    invoke-static {v0, p1, p2}, Lcom/ta/util/bitmap/TAResizerBitmapHandler;->calculateInSampleSize(Landroid/graphics/BitmapFactory$Options;II)I

    move-result v1

    iput v1, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 157
    const/4 v1, 0x0

    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 158
    invoke-static {p0, v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v1

    return-object v1
.end method

.method public static decodeSampledBitmapFromResource(Landroid/content/res/Resources;III)Landroid/graphics/Bitmap;
    .locals 2
    .param p0, "res"    # Landroid/content/res/Resources;
    .param p1, "resId"    # I
    .param p2, "reqWidth"    # I
    .param p3, "reqHeight"    # I

    .prologue
    .line 119
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 120
    .local v0, "options":Landroid/graphics/BitmapFactory$Options;
    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 121
    invoke-static {p0, p1, v0}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 124
    invoke-static {v0, p2, p3}, Lcom/ta/util/bitmap/TAResizerBitmapHandler;->calculateInSampleSize(Landroid/graphics/BitmapFactory$Options;II)I

    move-result v1

    iput v1, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 128
    const/4 v1, 0x0

    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 129
    invoke-static {p0, p1, v0}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v1

    return-object v1
.end method

.method private processBitmap(I)Landroid/graphics/Bitmap;
    .locals 3
    .param p1, "resId"    # I

    .prologue
    .line 91
    iget-object v0, p0, Lcom/ta/util/bitmap/TAResizerBitmapHandler;->mResources:Landroid/content/res/Resources;

    iget v1, p0, Lcom/ta/util/bitmap/TAResizerBitmapHandler;->mImageWidth:I

    .line 92
    iget v2, p0, Lcom/ta/util/bitmap/TAResizerBitmapHandler;->mImageHeight:I

    .line 91
    invoke-static {v0, p1, v1, v2}, Lcom/ta/util/bitmap/TAResizerBitmapHandler;->decodeSampledBitmapFromResource(Landroid/content/res/Resources;III)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method protected processBitmap(Ljava/lang/Object;)Landroid/graphics/Bitmap;
    .locals 1
    .param p1, "data"    # Ljava/lang/Object;

    .prologue
    .line 98
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/ta/util/bitmap/TAResizerBitmapHandler;->processBitmap(I)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public setImageSize(I)V
    .locals 0
    .param p1, "size"    # I

    .prologue
    .line 77
    invoke-virtual {p0, p1, p1}, Lcom/ta/util/bitmap/TAResizerBitmapHandler;->setImageSize(II)V

    .line 78
    return-void
.end method

.method public setImageSize(II)V
    .locals 0
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    .line 66
    iput p1, p0, Lcom/ta/util/bitmap/TAResizerBitmapHandler;->mImageWidth:I

    .line 67
    iput p2, p0, Lcom/ta/util/bitmap/TAResizerBitmapHandler;->mImageHeight:I

    .line 68
    return-void
.end method
