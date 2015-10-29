.class public Lcom/cat/tools/Code;
.super Ljava/lang/Object;
.source "Code.java"


# static fields
.field private static final BASE_PADDING_LEFT:I = 0x5

.field private static final BASE_PADDING_TOP:I = 0xf

.field private static final CHARS:[C

.field private static final DEFAULT_CODE_LENGTH:I = 0x4

.field private static final DEFAULT_FONT_SIZE:I = 0x14

.field private static final DEFAULT_HEIGHT:I = 0x28

.field private static final DEFAULT_LINE_NUMBER:I = 0x3

.field private static final DEFAULT_WIDTH:I = 0x50

.field private static final RANGE_PADDING_LEFT:I = 0xa

.field private static final RANGE_PADDING_TOP:I = 0xa

.field private static bmpCode:Lcom/cat/tools/Code;


# instance fields
.field private base_padding_left:I

.field private base_padding_top:I

.field private code:Ljava/lang/String;

.field private codeLength:I

.field private font_size:I

.field private height:I

.field private line_number:I

.field private padding_left:I

.field private padding_top:I

.field private random:Ljava/util/Random;

.field private range_padding_left:I

.field private range_padding_top:I

.field private width:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 13
    const/16 v0, 0x21

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    sput-object v0, Lcom/cat/tools/Code;->CHARS:[C

    .line 35
    return-void

    .line 13
    :array_0
    .array-data 2
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x61s
        0x62s
        0x63s
        0x64s
        0x65s
        0x66s
        0x67s
        0x68s
        0x6as
        0x6bs
        0x6cs
        0x6ds
        0x6es
        0x70s
        0x71s
        0x72s
        0x73s
        0x74s
        0x75s
        0x76s
        0x77s
        0x78s
        0x79s
        0x7as
    .end array-data
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/16 v1, 0xa

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    const/16 v0, 0x50

    iput v0, p0, Lcom/cat/tools/Code;->width:I

    const/16 v0, 0x28

    iput v0, p0, Lcom/cat/tools/Code;->height:I

    .line 42
    const/4 v0, 0x5

    iput v0, p0, Lcom/cat/tools/Code;->base_padding_left:I

    .line 43
    iput v1, p0, Lcom/cat/tools/Code;->range_padding_left:I

    .line 44
    const/16 v0, 0xf

    iput v0, p0, Lcom/cat/tools/Code;->base_padding_top:I

    .line 45
    iput v1, p0, Lcom/cat/tools/Code;->range_padding_top:I

    .line 48
    const/4 v0, 0x4

    iput v0, p0, Lcom/cat/tools/Code;->codeLength:I

    .line 49
    const/4 v0, 0x3

    iput v0, p0, Lcom/cat/tools/Code;->line_number:I

    const/16 v0, 0x14

    iput v0, p0, Lcom/cat/tools/Code;->font_size:I

    .line 54
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    iput-object v0, p0, Lcom/cat/tools/Code;->random:Ljava/util/Random;

    .line 11
    return-void
.end method

.method private createCode()Ljava/lang/String;
    .locals 5

    .prologue
    .line 90
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 91
    .local v0, "buffer":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget v2, p0, Lcom/cat/tools/Code;->codeLength:I

    if-lt v1, v2, :cond_0

    .line 94
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 92
    :cond_0
    sget-object v2, Lcom/cat/tools/Code;->CHARS:[C

    iget-object v3, p0, Lcom/cat/tools/Code;->random:Ljava/util/Random;

    sget-object v4, Lcom/cat/tools/Code;->CHARS:[C

    array-length v4, v4

    invoke-virtual {v3, v4}, Ljava/util/Random;->nextInt(I)I

    move-result v3

    aget-char v2, v2, v3

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 91
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private drawLine(Landroid/graphics/Canvas;Landroid/graphics/Paint;)V
    .locals 11
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "paint"    # Landroid/graphics/Paint;

    .prologue
    .line 98
    invoke-direct {p0}, Lcom/cat/tools/Code;->randomColor()I

    move-result v6

    .line 99
    .local v6, "color":I
    iget-object v0, p0, Lcom/cat/tools/Code;->random:Ljava/util/Random;

    iget v1, p0, Lcom/cat/tools/Code;->width:I

    invoke-virtual {v0, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v7

    .line 100
    .local v7, "startX":I
    iget-object v0, p0, Lcom/cat/tools/Code;->random:Ljava/util/Random;

    iget v1, p0, Lcom/cat/tools/Code;->height:I

    invoke-virtual {v0, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v8

    .line 101
    .local v8, "startY":I
    iget-object v0, p0, Lcom/cat/tools/Code;->random:Ljava/util/Random;

    iget v1, p0, Lcom/cat/tools/Code;->width:I

    invoke-virtual {v0, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v9

    .line 102
    .local v9, "stopX":I
    iget-object v0, p0, Lcom/cat/tools/Code;->random:Ljava/util/Random;

    iget v1, p0, Lcom/cat/tools/Code;->height:I

    invoke-virtual {v0, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v10

    .line 103
    .local v10, "stopY":I
    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 104
    invoke-virtual {p2, v6}, Landroid/graphics/Paint;->setColor(I)V

    .line 105
    int-to-float v1, v7

    int-to-float v2, v8

    int-to-float v3, v9

    int-to-float v4, v10

    move-object v0, p1

    move-object v5, p2

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 106
    return-void
.end method

.method public static getInstance()Lcom/cat/tools/Code;
    .locals 1

    .prologue
    .line 24
    sget-object v0, Lcom/cat/tools/Code;->bmpCode:Lcom/cat/tools/Code;

    if-nez v0, :cond_0

    .line 25
    new-instance v0, Lcom/cat/tools/Code;

    invoke-direct {v0}, Lcom/cat/tools/Code;-><init>()V

    sput-object v0, Lcom/cat/tools/Code;->bmpCode:Lcom/cat/tools/Code;

    .line 26
    :cond_0
    sget-object v0, Lcom/cat/tools/Code;->bmpCode:Lcom/cat/tools/Code;

    return-object v0
.end method

.method private randomColor()I
    .locals 1

    .prologue
    .line 109
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/cat/tools/Code;->randomColor(I)I

    move-result v0

    return v0
.end method

.method private randomColor(I)I
    .locals 5
    .param p1, "rate"    # I

    .prologue
    const/16 v4, 0x100

    .line 113
    iget-object v3, p0, Lcom/cat/tools/Code;->random:Ljava/util/Random;

    invoke-virtual {v3, v4}, Ljava/util/Random;->nextInt(I)I

    move-result v3

    div-int v2, v3, p1

    .line 114
    .local v2, "red":I
    iget-object v3, p0, Lcom/cat/tools/Code;->random:Ljava/util/Random;

    invoke-virtual {v3, v4}, Ljava/util/Random;->nextInt(I)I

    move-result v3

    div-int v1, v3, p1

    .line 115
    .local v1, "green":I
    iget-object v3, p0, Lcom/cat/tools/Code;->random:Ljava/util/Random;

    invoke-virtual {v3, v4}, Ljava/util/Random;->nextInt(I)I

    move-result v3

    div-int v0, v3, p1

    .line 116
    .local v0, "blue":I
    invoke-static {v2, v1, v0}, Landroid/graphics/Color;->rgb(III)I

    move-result v3

    return v3
.end method

.method private randomPadding()V
    .locals 4

    .prologue
    .line 131
    iget v0, p0, Lcom/cat/tools/Code;->padding_left:I

    iget v1, p0, Lcom/cat/tools/Code;->base_padding_left:I

    iget-object v2, p0, Lcom/cat/tools/Code;->random:Ljava/util/Random;

    iget v3, p0, Lcom/cat/tools/Code;->range_padding_left:I

    invoke-virtual {v2, v3}, Ljava/util/Random;->nextInt(I)I

    move-result v2

    add-int/2addr v1, v2

    add-int/2addr v0, v1

    iput v0, p0, Lcom/cat/tools/Code;->padding_left:I

    .line 132
    iget v0, p0, Lcom/cat/tools/Code;->base_padding_top:I

    iget-object v1, p0, Lcom/cat/tools/Code;->random:Ljava/util/Random;

    iget v2, p0, Lcom/cat/tools/Code;->range_padding_top:I

    invoke-virtual {v1, v2}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/cat/tools/Code;->padding_top:I

    .line 133
    return-void
.end method

.method private randomTextStyle(Landroid/graphics/Paint;)V
    .locals 4
    .param p1, "paint"    # Landroid/graphics/Paint;

    .prologue
    .line 120
    invoke-direct {p0}, Lcom/cat/tools/Code;->randomColor()I

    move-result v0

    .line 121
    .local v0, "color":I
    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 122
    iget-object v2, p0, Lcom/cat/tools/Code;->random:Ljava/util/Random;

    invoke-virtual {v2}, Ljava/util/Random;->nextBoolean()Z

    move-result v2

    invoke-virtual {p1, v2}, Landroid/graphics/Paint;->setFakeBoldText(Z)V

    .line 123
    iget-object v2, p0, Lcom/cat/tools/Code;->random:Ljava/util/Random;

    const/16 v3, 0xb

    invoke-virtual {v2, v3}, Ljava/util/Random;->nextInt(I)I

    move-result v2

    div-int/lit8 v2, v2, 0xa

    int-to-float v1, v2

    .line 124
    .local v1, "skewX":F
    iget-object v2, p0, Lcom/cat/tools/Code;->random:Ljava/util/Random;

    invoke-virtual {v2}, Ljava/util/Random;->nextBoolean()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 125
    :goto_0
    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setTextSkewX(F)V

    .line 128
    return-void

    .line 124
    :cond_0
    neg-float v1, v1

    goto :goto_0
.end method


# virtual methods
.method public createBitmap()Landroid/graphics/Bitmap;
    .locals 7

    .prologue
    .line 58
    const/4 v4, 0x0

    iput v4, p0, Lcom/cat/tools/Code;->padding_left:I

    .line 60
    iget v4, p0, Lcom/cat/tools/Code;->width:I

    iget v5, p0, Lcom/cat/tools/Code;->height:I

    sget-object v6, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v4, v5, v6}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 61
    .local v0, "bp":Landroid/graphics/Bitmap;
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 63
    .local v1, "c":Landroid/graphics/Canvas;
    invoke-direct {p0}, Lcom/cat/tools/Code;->createCode()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/cat/tools/Code;->code:Ljava/lang/String;

    .line 65
    const/4 v4, -0x1

    invoke-virtual {v1, v4}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 66
    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3}, Landroid/graphics/Paint;-><init>()V

    .line 67
    .local v3, "paint":Landroid/graphics/Paint;
    iget v4, p0, Lcom/cat/tools/Code;->font_size:I

    int-to-float v4, v4

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 69
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget-object v4, p0, Lcom/cat/tools/Code;->code:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-lt v2, v4, :cond_0

    .line 75
    const/4 v2, 0x0

    :goto_1
    iget v4, p0, Lcom/cat/tools/Code;->line_number:I

    if-lt v2, v4, :cond_1

    .line 79
    const/16 v4, 0x1f

    invoke-virtual {v1, v4}, Landroid/graphics/Canvas;->save(I)I

    .line 80
    invoke-virtual {v1}, Landroid/graphics/Canvas;->restore()V

    .line 81
    return-object v0

    .line 70
    :cond_0
    invoke-direct {p0, v3}, Lcom/cat/tools/Code;->randomTextStyle(Landroid/graphics/Paint;)V

    .line 71
    invoke-direct {p0}, Lcom/cat/tools/Code;->randomPadding()V

    .line 72
    new-instance v4, Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/cat/tools/Code;->code:Ljava/lang/String;

    invoke-virtual {v5, v2}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    mul-int/lit8 v5, v2, 0xf

    add-int/lit8 v5, v5, 0xa

    int-to-float v5, v5

    const/high16 v6, 0x41f00000    # 30.0f

    invoke-virtual {v1, v4, v5, v6, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 69
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 76
    :cond_1
    invoke-direct {p0, v1, v3}, Lcom/cat/tools/Code;->drawLine(Landroid/graphics/Canvas;Landroid/graphics/Paint;)V

    .line 75
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method public getCode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lcom/cat/tools/Code;->code:Ljava/lang/String;

    return-object v0
.end method
