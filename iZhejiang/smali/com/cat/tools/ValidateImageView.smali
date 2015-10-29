.class public Lcom/cat/tools/ValidateImageView;
.super Landroid/view/View;
.source "ValidateImageView.java"


# instance fields
.field private TAG:Ljava/lang/String;

.field private bitmap:Landroid/graphics/Bitmap;

.field private content:[Ljava/lang/String;

.field private paint:Landroid/graphics/Paint;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 39
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 23
    const-string v0, "ValidateImageView"

    iput-object v0, p0, Lcom/cat/tools/ValidateImageView;->TAG:Ljava/lang/String;

    .line 24
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/cat/tools/ValidateImageView;->paint:Landroid/graphics/Paint;

    .line 28
    iput-object v1, p0, Lcom/cat/tools/ValidateImageView;->content:[Ljava/lang/String;

    .line 32
    iput-object v1, p0, Lcom/cat/tools/ValidateImageView;->bitmap:Landroid/graphics/Bitmap;

    .line 40
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v1, 0x0

    .line 35
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 23
    const-string v0, "ValidateImageView"

    iput-object v0, p0, Lcom/cat/tools/ValidateImageView;->TAG:Ljava/lang/String;

    .line 24
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/cat/tools/ValidateImageView;->paint:Landroid/graphics/Paint;

    .line 28
    iput-object v1, p0, Lcom/cat/tools/ValidateImageView;->content:[Ljava/lang/String;

    .line 32
    iput-object v1, p0, Lcom/cat/tools/ValidateImageView;->bitmap:Landroid/graphics/Bitmap;

    .line 36
    return-void
.end method

.method private generageRadom([Ljava/lang/String;)[Ljava/lang/String;
    .locals 9
    .param p1, "strContent"    # [Ljava/lang/String;

    .prologue
    .line 143
    const/4 v7, 0x4

    new-array v6, v7, [Ljava/lang/String;

    .line 145
    .local v6, "str":[Ljava/lang/String;
    array-length v0, p1

    .line 147
    .local v0, "count":I
    new-instance v1, Ljava/util/Random;

    invoke-direct {v1}, Ljava/util/Random;-><init>()V

    .line 148
    .local v1, "random":Ljava/util/Random;
    invoke-virtual {v1, v0}, Ljava/util/Random;->nextInt(I)I

    move-result v2

    .line 149
    .local v2, "randomResFirst":I
    invoke-virtual {v1, v0}, Ljava/util/Random;->nextInt(I)I

    move-result v4

    .line 150
    .local v4, "randomResSecond":I
    invoke-virtual {v1, v0}, Ljava/util/Random;->nextInt(I)I

    move-result v5

    .line 151
    .local v5, "randomResThird":I
    invoke-virtual {v1, v0}, Ljava/util/Random;->nextInt(I)I

    move-result v3

    .line 153
    .local v3, "randomResFourth":I
    const/4 v7, 0x0

    aget-object v8, p1, v2

    invoke-virtual {v8}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    .line 154
    const/4 v7, 0x1

    aget-object v8, p1, v4

    invoke-virtual {v8}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    .line 155
    const/4 v7, 0x2

    aget-object v8, p1, v5

    invoke-virtual {v8}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    .line 156
    const/4 v7, 0x3

    aget-object v8, p1, v3

    invoke-virtual {v8}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    .line 157
    return-object v6
.end method

.method private generageRadomStr([Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .param p1, "strContent"    # [Ljava/lang/String;

    .prologue
    .line 167
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 169
    .local v6, "str":Ljava/lang/StringBuilder;
    array-length v0, p1

    .line 171
    .local v0, "count":I
    new-instance v1, Ljava/util/Random;

    invoke-direct {v1}, Ljava/util/Random;-><init>()V

    .line 172
    .local v1, "random":Ljava/util/Random;
    invoke-virtual {v1, v0}, Ljava/util/Random;->nextInt(I)I

    move-result v2

    .line 173
    .local v2, "randomResFirst":I
    invoke-virtual {v1, v0}, Ljava/util/Random;->nextInt(I)I

    move-result v4

    .line 174
    .local v4, "randomResSecond":I
    invoke-virtual {v1, v0}, Ljava/util/Random;->nextInt(I)I

    move-result v5

    .line 175
    .local v5, "randomResThird":I
    invoke-virtual {v1, v0}, Ljava/util/Random;->nextInt(I)I

    move-result v3

    .line 177
    .local v3, "randomResFourth":I
    aget-object v7, p1, v2

    invoke-virtual {v7}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 178
    aget-object v7, p1, v4

    invoke-virtual {v7}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 179
    aget-object v7, p1, v5

    invoke-virtual {v7}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 180
    aget-object v7, p1, v3

    invoke-virtual {v7}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 181
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    return-object v7
.end method

.method private generateValidate([Ljava/lang/String;[Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 18
    .param p1, "strContent"    # [Ljava/lang/String;
    .param p2, "strRes"    # [Ljava/lang/String;

    .prologue
    .line 77
    const/16 v17, 0x78

    .local v17, "width":I
    const/16 v8, 0x32

    .line 79
    .local v8, "height":I
    invoke-direct/range {p0 .. p1}, Lcom/cat/tools/ValidateImageView;->isStrContent([Ljava/lang/String;)I

    move-result v10

    .line 80
    .local v10, "isRes":I
    if-nez v10, :cond_0

    .line 81
    const/4 v12, 0x0

    .line 125
    :goto_0
    return-object v12

    .line 85
    :cond_0
    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 84
    move/from16 v0, v17

    invoke-static {v0, v8, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v12

    .line 86
    .local v12, "sourceBitmap":Landroid/graphics/Bitmap;
    new-instance v2, Landroid/graphics/Canvas;

    invoke-direct {v2, v12}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 87
    .local v2, "canvas":Landroid/graphics/Canvas;
    new-instance v7, Landroid/graphics/Paint;

    invoke-direct {v7}, Landroid/graphics/Paint;-><init>()V

    .line 88
    .local v7, "p":Landroid/graphics/Paint;
    const/16 v3, 0x19

    int-to-float v3, v3

    invoke-virtual {v7, v3}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 89
    const/4 v3, 0x1

    invoke-virtual {v7, v3}, Landroid/graphics/Paint;->setFakeBoldText(Z)V

    .line 91
    const/16 v3, 0xc8

    const/16 v4, 0xe6

    const/16 v5, 0xaa

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4, v5}, Lcom/cat/tools/ValidateImageView;->getRandColor(III)I

    move-result v3

    invoke-virtual {v7, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 92
    const/4 v3, 0x0

    aget-object v3, p2, v3

    const/high16 v4, 0x41200000    # 10.0f

    const/16 v5, 0x19

    int-to-float v5, v5

    invoke-virtual {v2, v3, v4, v5, v7}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 93
    new-instance v11, Landroid/graphics/Matrix;

    invoke-direct {v11}, Landroid/graphics/Matrix;-><init>()V

    .line 94
    .local v11, "m1":Landroid/graphics/Matrix;
    const/high16 v3, 0x41700000    # 15.0f

    invoke-virtual {v11, v3}, Landroid/graphics/Matrix;->setRotate(F)V

    .line 95
    invoke-virtual {v2, v11}, Landroid/graphics/Canvas;->setMatrix(Landroid/graphics/Matrix;)V

    .line 97
    const/16 v3, 0xc8

    const/16 v4, 0xe6

    const/16 v5, 0xaa

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4, v5}, Lcom/cat/tools/ValidateImageView;->getRandColor(III)I

    move-result v3

    invoke-virtual {v7, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 98
    const/4 v3, 0x1

    aget-object v3, p2, v3

    const/high16 v4, 0x42200000    # 40.0f

    const/16 v5, 0x19

    int-to-float v5, v5

    invoke-virtual {v2, v3, v4, v5, v7}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 99
    const/high16 v3, 0x41200000    # 10.0f

    invoke-virtual {v11, v3}, Landroid/graphics/Matrix;->setRotate(F)V

    .line 100
    invoke-virtual {v2, v11}, Landroid/graphics/Canvas;->setMatrix(Landroid/graphics/Matrix;)V

    .line 102
    const/16 v3, 0xc8

    const/16 v4, 0xe6

    const/16 v5, 0xaa

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4, v5}, Lcom/cat/tools/ValidateImageView;->getRandColor(III)I

    move-result v3

    invoke-virtual {v7, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 103
    const/4 v3, 0x2

    aget-object v3, p2, v3

    const/high16 v4, 0x428c0000    # 70.0f

    const/16 v5, 0xf

    int-to-float v5, v5

    invoke-virtual {v2, v3, v4, v5, v7}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 104
    const/high16 v3, 0x41700000    # 15.0f

    invoke-virtual {v11, v3}, Landroid/graphics/Matrix;->setRotate(F)V

    .line 105
    invoke-virtual {v2, v11}, Landroid/graphics/Canvas;->setMatrix(Landroid/graphics/Matrix;)V

    .line 107
    const/16 v3, 0xc8

    const/16 v4, 0xe6

    const/16 v5, 0xaa

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4, v5}, Lcom/cat/tools/ValidateImageView;->getRandColor(III)I

    move-result v3

    invoke-virtual {v7, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 108
    const/4 v3, 0x3

    aget-object v3, p2, v3

    const/high16 v4, 0x42c80000    # 100.0f

    const/16 v5, 0xa

    int-to-float v5, v5

    invoke-virtual {v2, v3, v4, v5, v7}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 109
    const/high16 v3, 0x41a00000    # 20.0f

    invoke-virtual {v11, v3}, Landroid/graphics/Matrix;->setRotate(F)V

    .line 110
    invoke-virtual {v2, v11}, Landroid/graphics/Canvas;->setMatrix(Landroid/graphics/Matrix;)V

    .line 113
    const/4 v13, 0x0

    .local v13, "startX":I
    const/4 v14, 0x0

    .local v14, "startY":I
    const/4 v15, 0x0

    .local v15, "stopX":I
    const/16 v16, 0x0

    .line 114
    .local v16, "stopY":I
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_1
    const/16 v3, 0x37

    if-lt v9, v3, :cond_1

    .line 124
    invoke-virtual {v2}, Landroid/graphics/Canvas;->save()I

    goto/16 :goto_0

    .line 115
    :cond_1
    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/cat/tools/ValidateImageView;->pointRadom(I)I

    move-result v13

    .line 116
    move-object/from16 v0, p0

    invoke-direct {v0, v8}, Lcom/cat/tools/ValidateImageView;->pointRadom(I)I

    move-result v14

    .line 117
    const/16 v3, 0xf

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/cat/tools/ValidateImageView;->pointRadom(I)I

    move-result v15

    .line 118
    const/16 v3, 0xf

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/cat/tools/ValidateImageView;->pointRadom(I)I

    move-result v16

    .line 119
    const/16 v3, 0xc8

    const/16 v4, 0xe6

    const/16 v5, 0xdc

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4, v5}, Lcom/cat/tools/ValidateImageView;->getRandColor(III)I

    move-result v3

    invoke-virtual {v7, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 120
    int-to-float v3, v13

    add-int/lit8 v4, v14, -0x14

    int-to-float v4, v4

    add-int v5, v13, v15

    int-to-float v5, v5

    add-int v6, v14, v16

    .line 121
    add-int/lit8 v6, v6, -0x14

    int-to-float v6, v6

    .line 120
    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 114
    add-int/lit8 v9, v9, 0x1

    goto :goto_1
.end method

.method private isStrContent([Ljava/lang/String;)I
    .locals 1
    .param p1, "strContent"    # [Ljava/lang/String;

    .prologue
    .line 129
    if-eqz p1, :cond_0

    array-length v0, p1

    if-gtz v0, :cond_1

    .line 130
    :cond_0
    const/4 v0, 0x0

    .line 132
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private pointRadom(I)I
    .locals 2
    .param p1, "n"    # I

    .prologue
    .line 185
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    .line 186
    .local v0, "r":Ljava/util/Random;
    invoke-virtual {v0, p1}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    return v1
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 4
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v2, 0x0

    .line 45
    iget-object v0, p0, Lcom/cat/tools/ValidateImageView;->bitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 46
    iget-object v0, p0, Lcom/cat/tools/ValidateImageView;->bitmap:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/cat/tools/ValidateImageView;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v2, v2, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 52
    :goto_0
    invoke-super {p0, p1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    .line 53
    return-void

    .line 48
    :cond_0
    iget-object v0, p0, Lcom/cat/tools/ValidateImageView;->paint:Landroid/graphics/Paint;

    const v1, -0x777778

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 49
    iget-object v0, p0, Lcom/cat/tools/ValidateImageView;->paint:Landroid/graphics/Paint;

    const/high16 v1, 0x41a00000    # 20.0f

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 50
    const-string v0, "\u70b9\u51fb\u6362\u4e00\u6362"

    const/high16 v1, 0x41200000    # 10.0f

    const/high16 v2, 0x41f00000    # 30.0f

    iget-object v3, p0, Lcom/cat/tools/ValidateImageView;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto :goto_0
.end method

.method public getRandColor(III)I
    .locals 5
    .param p1, "rc"    # I
    .param p2, "gc"    # I
    .param p3, "bc"    # I

    .prologue
    const/16 v4, 0xff

    .line 201
    new-instance v3, Ljava/util/Random;

    invoke-direct {v3}, Ljava/util/Random;-><init>()V

    .line 202
    .local v3, "random":Ljava/util/Random;
    if-le p1, v4, :cond_0

    .line 203
    const/16 p1, 0xff

    .line 204
    :cond_0
    if-le p2, v4, :cond_1

    .line 205
    const/16 p2, 0xff

    .line 206
    :cond_1
    if-le p3, v4, :cond_2

    .line 207
    const/16 p3, 0xff

    .line 208
    :cond_2
    invoke-virtual {v3, p1}, Ljava/util/Random;->nextInt(I)I

    move-result v4

    add-int v2, p1, v4

    .line 209
    .local v2, "r":I
    invoke-virtual {v3, p2}, Ljava/util/Random;->nextInt(I)I

    move-result v4

    add-int v1, p2, v4

    .line 210
    .local v1, "g":I
    invoke-virtual {v3, p3}, Ljava/util/Random;->nextInt(I)I

    move-result v4

    add-int v0, p3, v4

    .line 211
    .local v0, "b":I
    invoke-static {v2, v1, v0}, Landroid/graphics/Color;->rgb(III)I

    move-result v4

    return v4
.end method

.method public getRandomInteger()[Ljava/lang/String;
    .locals 7

    .prologue
    const/4 v6, 0x4

    .line 216
    new-array v1, v6, [Ljava/lang/String;

    .line 217
    .local v1, "reuestArray":[Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-lt v0, v6, :cond_0

    .line 220
    return-object v1

    .line 218
    :cond_0
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v2

    const-wide/high16 v4, 0x4022000000000000L    # 9.0

    mul-double/2addr v2, v4

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    add-double/2addr v2, v4

    double-to-int v2, v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v0

    .line 217
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public getResponseStr([Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "response"    # [Ljava/lang/String;

    .prologue
    .line 224
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 225
    .local v1, "stringBuffer":Ljava/lang/StringBuffer;
    array-length v3, p1

    const/4 v2, 0x0

    :goto_0
    if-lt v2, v3, :cond_0

    .line 228
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 225
    :cond_0
    aget-object v0, p1, v2

    .line 226
    .local v0, "str":Ljava/lang/String;
    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 225
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public getValidataAndSetImage([Ljava/lang/String;)[Ljava/lang/String;
    .locals 4
    .param p1, "strContent"    # [Ljava/lang/String;

    .prologue
    .line 63
    iput-object p1, p0, Lcom/cat/tools/ValidateImageView;->content:[Ljava/lang/String;

    .line 65
    invoke-direct {p0, p1}, Lcom/cat/tools/ValidateImageView;->generageRadom([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 66
    .local v0, "strRes":[Ljava/lang/String;
    iget-object v1, p0, Lcom/cat/tools/ValidateImageView;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "generate validate code: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v3, 0x0

    aget-object v3, v0, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v3, 0x1

    aget-object v3, v0, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 67
    const/4 v3, 0x2

    aget-object v3, v0, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v3, 0x3

    aget-object v3, v0, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 66
    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    iget-object v1, p0, Lcom/cat/tools/ValidateImageView;->content:[Ljava/lang/String;

    invoke-direct {p0, v1, v0}, Lcom/cat/tools/ValidateImageView;->generateValidate([Ljava/lang/String;[Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/cat/tools/ValidateImageView;->bitmap:Landroid/graphics/Bitmap;

    .line 71
    invoke-virtual {p0}, Lcom/cat/tools/ValidateImageView;->invalidate()V

    .line 73
    return-object v0
.end method
