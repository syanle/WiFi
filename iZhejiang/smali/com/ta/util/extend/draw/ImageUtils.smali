.class public Lcom/ta/util/extend/draw/ImageUtils;
.super Ljava/lang/Object;
.source "ImageUtils.java"


# static fields
.field private static carray:[F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 43
    const/16 v0, 0x14

    new-array v0, v0, [F

    sput-object v0, Lcom/ta/util/extend/draw/ImageUtils;->carray:[F

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createReflectedImage(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 26
    .param p0, "originalImage"    # Landroid/graphics/Bitmap;

    .prologue
    .line 197
    const/16 v24, 0x4

    .line 198
    .local v24, "reflectionGap":I
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    .line 199
    .local v4, "width":I
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v22

    .line 201
    .local v22, "height":I
    new-instance v6, Landroid/graphics/Matrix;

    invoke-direct {v6}, Landroid/graphics/Matrix;-><init>()V

    .line 202
    .local v6, "matrix":Landroid/graphics/Matrix;
    const/high16 v1, 0x3f800000    # 1.0f

    const/high16 v2, -0x40800000    # -1.0f

    invoke-virtual {v6, v1, v2}, Landroid/graphics/Matrix;->preScale(FF)Z

    .line 204
    const/4 v2, 0x0

    .line 205
    div-int/lit8 v3, v22, 0x2

    div-int/lit8 v5, v22, 0x2

    const/4 v7, 0x0

    move-object/from16 v1, p0

    .line 204
    invoke-static/range {v1 .. v7}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v25

    .line 208
    .local v25, "reflectionImage":Landroid/graphics/Bitmap;
    div-int/lit8 v1, v22, 0x2

    add-int v1, v1, v22

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 207
    invoke-static {v4, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v21

    .line 210
    .local v21, "bitmapWithReflection":Landroid/graphics/Bitmap;
    new-instance v7, Landroid/graphics/Canvas;

    move-object/from16 v0, v21

    invoke-direct {v7, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 212
    .local v7, "canvas":Landroid/graphics/Canvas;
    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v7, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 214
    new-instance v12, Landroid/graphics/Paint;

    invoke-direct {v12}, Landroid/graphics/Paint;-><init>()V

    .line 215
    .local v12, "defaultPaint":Landroid/graphics/Paint;
    const/4 v8, 0x0

    move/from16 v0, v22

    int-to-float v9, v0

    int-to-float v10, v4

    add-int/lit8 v1, v22, 0x4

    int-to-float v11, v1

    invoke-virtual/range {v7 .. v12}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 217
    const/4 v1, 0x0

    add-int/lit8 v2, v22, 0x4

    int-to-float v2, v2

    const/4 v3, 0x0

    move-object/from16 v0, v25

    invoke-virtual {v7, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 219
    new-instance v23, Landroid/graphics/Paint;

    invoke-direct/range {v23 .. v23}, Landroid/graphics/Paint;-><init>()V

    .line 220
    .local v23, "paint":Landroid/graphics/Paint;
    new-instance v13, Landroid/graphics/LinearGradient;

    const/4 v14, 0x0

    .line 221
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    int-to-float v15, v1

    const/16 v16, 0x0

    invoke-virtual/range {v21 .. v21}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    .line 222
    add-int/lit8 v1, v1, 0x4

    int-to-float v0, v1

    move/from16 v17, v0

    const v18, 0x70ffffff

    const v19, 0xffffff

    .line 223
    sget-object v20, Landroid/graphics/Shader$TileMode;->MIRROR:Landroid/graphics/Shader$TileMode;

    .line 220
    invoke-direct/range {v13 .. v20}, Landroid/graphics/LinearGradient;-><init>(FFFFIILandroid/graphics/Shader$TileMode;)V

    .line 225
    .local v13, "shader":Landroid/graphics/LinearGradient;
    move-object/from16 v0, v23

    invoke-virtual {v0, v13}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 227
    new-instance v1, Landroid/graphics/PorterDuffXfermode;

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->DST_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v2}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    move-object/from16 v0, v23

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 229
    const/4 v15, 0x0

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v16, v0

    int-to-float v0, v4

    move/from16 v17, v0

    invoke-virtual/range {v21 .. v21}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    .line 230
    add-int/lit8 v1, v1, 0x4

    int-to-float v0, v1

    move/from16 v18, v0

    move-object v14, v7

    move-object/from16 v19, v23

    .line 229
    invoke-virtual/range {v14 .. v19}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 232
    return-object v21
.end method

.method private static getValueBlackAndWhite()V
    .locals 6

    .prologue
    const v5, 0x3f1be76d    # 0.609f

    const v4, 0x3e9db22d    # 0.308f

    const v2, 0x3da7ef9e    # 0.082f

    const/4 v3, 0x0

    .line 103
    sget-object v0, Lcom/ta/util/extend/draw/ImageUtils;->carray:[F

    const/4 v1, 0x0

    aput v4, v0, v1

    .line 104
    sget-object v0, Lcom/ta/util/extend/draw/ImageUtils;->carray:[F

    const/4 v1, 0x1

    aput v5, v0, v1

    .line 105
    sget-object v0, Lcom/ta/util/extend/draw/ImageUtils;->carray:[F

    const/4 v1, 0x2

    aput v2, v0, v1

    .line 106
    sget-object v0, Lcom/ta/util/extend/draw/ImageUtils;->carray:[F

    const/4 v1, 0x3

    aput v3, v0, v1

    .line 107
    sget-object v0, Lcom/ta/util/extend/draw/ImageUtils;->carray:[F

    const/4 v1, 0x4

    aput v3, v0, v1

    .line 108
    sget-object v0, Lcom/ta/util/extend/draw/ImageUtils;->carray:[F

    const/4 v1, 0x5

    aput v4, v0, v1

    .line 109
    sget-object v0, Lcom/ta/util/extend/draw/ImageUtils;->carray:[F

    const/4 v1, 0x6

    aput v5, v0, v1

    .line 110
    sget-object v0, Lcom/ta/util/extend/draw/ImageUtils;->carray:[F

    const/4 v1, 0x7

    aput v2, v0, v1

    .line 111
    sget-object v0, Lcom/ta/util/extend/draw/ImageUtils;->carray:[F

    const/16 v1, 0x8

    aput v3, v0, v1

    .line 112
    sget-object v0, Lcom/ta/util/extend/draw/ImageUtils;->carray:[F

    const/16 v1, 0x9

    aput v3, v0, v1

    .line 113
    sget-object v0, Lcom/ta/util/extend/draw/ImageUtils;->carray:[F

    const/16 v1, 0xa

    aput v4, v0, v1

    .line 114
    sget-object v0, Lcom/ta/util/extend/draw/ImageUtils;->carray:[F

    const/16 v1, 0xb

    aput v5, v0, v1

    .line 115
    sget-object v0, Lcom/ta/util/extend/draw/ImageUtils;->carray:[F

    const/16 v1, 0xc

    aput v2, v0, v1

    .line 116
    sget-object v0, Lcom/ta/util/extend/draw/ImageUtils;->carray:[F

    const/16 v1, 0xd

    aput v3, v0, v1

    .line 117
    sget-object v0, Lcom/ta/util/extend/draw/ImageUtils;->carray:[F

    const/16 v1, 0xe

    aput v3, v0, v1

    .line 118
    sget-object v0, Lcom/ta/util/extend/draw/ImageUtils;->carray:[F

    const/16 v1, 0xf

    aput v3, v0, v1

    .line 119
    sget-object v0, Lcom/ta/util/extend/draw/ImageUtils;->carray:[F

    const/16 v1, 0x10

    aput v3, v0, v1

    .line 120
    sget-object v0, Lcom/ta/util/extend/draw/ImageUtils;->carray:[F

    const/16 v1, 0x11

    aput v3, v0, v1

    .line 121
    sget-object v0, Lcom/ta/util/extend/draw/ImageUtils;->carray:[F

    const/16 v1, 0x12

    const/high16 v2, 0x3f800000    # 1.0f

    aput v2, v0, v1

    .line 122
    sget-object v0, Lcom/ta/util/extend/draw/ImageUtils;->carray:[F

    const/16 v1, 0x13

    aput v3, v0, v1

    .line 123
    return-void
.end method

.method public static getValueSaturation()V
    .locals 5

    .prologue
    const/high16 v4, 0x40a00000    # 5.0f

    const/high16 v3, -0x3c820000    # -254.0f

    const/4 v2, 0x0

    .line 76
    sget-object v0, Lcom/ta/util/extend/draw/ImageUtils;->carray:[F

    const/4 v1, 0x0

    aput v4, v0, v1

    .line 77
    sget-object v0, Lcom/ta/util/extend/draw/ImageUtils;->carray:[F

    const/4 v1, 0x1

    aput v2, v0, v1

    .line 78
    sget-object v0, Lcom/ta/util/extend/draw/ImageUtils;->carray:[F

    const/4 v1, 0x2

    aput v2, v0, v1

    .line 79
    sget-object v0, Lcom/ta/util/extend/draw/ImageUtils;->carray:[F

    const/4 v1, 0x3

    aput v2, v0, v1

    .line 80
    sget-object v0, Lcom/ta/util/extend/draw/ImageUtils;->carray:[F

    const/4 v1, 0x4

    aput v3, v0, v1

    .line 81
    sget-object v0, Lcom/ta/util/extend/draw/ImageUtils;->carray:[F

    const/4 v1, 0x5

    aput v2, v0, v1

    .line 82
    sget-object v0, Lcom/ta/util/extend/draw/ImageUtils;->carray:[F

    const/4 v1, 0x6

    aput v4, v0, v1

    .line 83
    sget-object v0, Lcom/ta/util/extend/draw/ImageUtils;->carray:[F

    const/4 v1, 0x7

    aput v2, v0, v1

    .line 84
    sget-object v0, Lcom/ta/util/extend/draw/ImageUtils;->carray:[F

    const/16 v1, 0x8

    aput v2, v0, v1

    .line 85
    sget-object v0, Lcom/ta/util/extend/draw/ImageUtils;->carray:[F

    const/16 v1, 0x9

    aput v3, v0, v1

    .line 86
    sget-object v0, Lcom/ta/util/extend/draw/ImageUtils;->carray:[F

    const/16 v1, 0xa

    aput v2, v0, v1

    .line 87
    sget-object v0, Lcom/ta/util/extend/draw/ImageUtils;->carray:[F

    const/16 v1, 0xb

    aput v2, v0, v1

    .line 88
    sget-object v0, Lcom/ta/util/extend/draw/ImageUtils;->carray:[F

    const/16 v1, 0xc

    aput v4, v0, v1

    .line 89
    sget-object v0, Lcom/ta/util/extend/draw/ImageUtils;->carray:[F

    const/16 v1, 0xd

    aput v2, v0, v1

    .line 90
    sget-object v0, Lcom/ta/util/extend/draw/ImageUtils;->carray:[F

    const/16 v1, 0xe

    aput v3, v0, v1

    .line 91
    sget-object v0, Lcom/ta/util/extend/draw/ImageUtils;->carray:[F

    const/16 v1, 0xf

    aput v2, v0, v1

    .line 92
    sget-object v0, Lcom/ta/util/extend/draw/ImageUtils;->carray:[F

    const/16 v1, 0x10

    aput v2, v0, v1

    .line 93
    sget-object v0, Lcom/ta/util/extend/draw/ImageUtils;->carray:[F

    const/16 v1, 0x11

    aput v2, v0, v1

    .line 94
    sget-object v0, Lcom/ta/util/extend/draw/ImageUtils;->carray:[F

    const/16 v1, 0x12

    aput v4, v0, v1

    .line 95
    sget-object v0, Lcom/ta/util/extend/draw/ImageUtils;->carray:[F

    const/16 v1, 0x13

    aput v3, v0, v1

    .line 97
    return-void
.end method

.method public static toGrayscale(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 9
    .param p0, "bmpOriginal"    # Landroid/graphics/Bitmap;

    .prologue
    const/4 v8, 0x0

    .line 56
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    .line 57
    .local v4, "height":I
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    .line 59
    .local v6, "width":I
    sget-object v7, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    .line 58
    invoke-static {v6, v4, v7}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 60
    .local v0, "bmpGrayscale":Landroid/graphics/Bitmap;
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 61
    .local v1, "c":Landroid/graphics/Canvas;
    new-instance v5, Landroid/graphics/Paint;

    invoke-direct {v5}, Landroid/graphics/Paint;-><init>()V

    .line 62
    .local v5, "paint":Landroid/graphics/Paint;
    const/4 v7, 0x0

    invoke-virtual {v5, v7}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 63
    invoke-virtual {v1, v0, v8, v8, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 64
    new-instance v2, Landroid/graphics/ColorMatrix;

    invoke-direct {v2}, Landroid/graphics/ColorMatrix;-><init>()V

    .line 65
    .local v2, "cm":Landroid/graphics/ColorMatrix;
    invoke-static {}, Lcom/ta/util/extend/draw/ImageUtils;->getValueBlackAndWhite()V

    .line 66
    sget-object v7, Lcom/ta/util/extend/draw/ImageUtils;->carray:[F

    invoke-virtual {v2, v7}, Landroid/graphics/ColorMatrix;->set([F)V

    .line 67
    new-instance v3, Landroid/graphics/ColorMatrixColorFilter;

    invoke-direct {v3, v2}, Landroid/graphics/ColorMatrixColorFilter;-><init>(Landroid/graphics/ColorMatrix;)V

    .line 68
    .local v3, "f":Landroid/graphics/ColorMatrixColorFilter;
    invoke-virtual {v5, v3}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 69
    invoke-virtual {v1, p0, v8, v8, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 70
    return-object v0
.end method

.method public static toGrayscale(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
    .locals 1
    .param p0, "bmpOriginal"    # Landroid/graphics/Bitmap;
    .param p1, "pixels"    # I

    .prologue
    .line 137
    invoke-static {p0}, Lcom/ta/util/extend/draw/ImageUtils;->toGrayscale(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/ta/util/extend/draw/ImageUtils;->toRoundCorner(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public static toRoundCorner(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
    .locals 11
    .param p0, "bitmap"    # Landroid/graphics/Bitmap;
    .param p1, "pixels"    # I

    .prologue
    const/4 v10, 0x0

    .line 152
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    .line 153
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    sget-object v9, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 152
    invoke-static {v7, v8, v9}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 154
    .local v2, "output":Landroid/graphics/Bitmap;
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 156
    .local v0, "canvas":Landroid/graphics/Canvas;
    const v1, -0xbdbdbe

    .line 157
    .local v1, "color":I
    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3}, Landroid/graphics/Paint;-><init>()V

    .line 158
    .local v3, "paint":Landroid/graphics/Paint;
    new-instance v4, Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    invoke-direct {v4, v10, v10, v7, v8}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 159
    .local v4, "rect":Landroid/graphics/Rect;
    new-instance v5, Landroid/graphics/RectF;

    invoke-direct {v5, v4}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    .line 160
    .local v5, "rectF":Landroid/graphics/RectF;
    int-to-float v6, p1

    .line 162
    .local v6, "roundPx":F
    const/4 v7, 0x1

    invoke-virtual {v3, v7}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 163
    invoke-virtual {v0, v10, v10, v10, v10}, Landroid/graphics/Canvas;->drawARGB(IIII)V

    .line 164
    const v7, -0xbdbdbe

    invoke-virtual {v3, v7}, Landroid/graphics/Paint;->setColor(I)V

    .line 165
    invoke-virtual {v0, v5, v6, v6, v3}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 167
    new-instance v7, Landroid/graphics/PorterDuffXfermode;

    sget-object v8, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v7, v8}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v3, v7}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 168
    invoke-virtual {v0, p0, v4, v4, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 170
    return-object v2
.end method

.method public static toRoundCorner(Landroid/graphics/drawable/BitmapDrawable;I)Landroid/graphics/drawable/BitmapDrawable;
    .locals 2
    .param p0, "bitmapDrawable"    # Landroid/graphics/drawable/BitmapDrawable;
    .param p1, "pixels"    # I

    .prologue
    .line 183
    invoke-virtual {p0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 184
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    new-instance p0, Landroid/graphics/drawable/BitmapDrawable;

    .end local p0    # "bitmapDrawable":Landroid/graphics/drawable/BitmapDrawable;
    invoke-static {v0, p1}, Lcom/ta/util/extend/draw/ImageUtils;->toRoundCorner(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-direct {p0, v1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    .line 185
    .restart local p0    # "bitmapDrawable":Landroid/graphics/drawable/BitmapDrawable;
    return-object p0
.end method
