.class public Lcom/cat/tools/BPUtil;
.super Ljava/lang/Object;
.source "BPUtil.java"


# static fields
.field private static final BASE_PADDING_LEFT:I = 0x5

.field private static final BASE_PADDING_TOP:I = 0xf

.field private static final CHARS:[C

.field private static final DEFAULT_CODE_LENGTH:I = 0x4

.field private static final DEFAULT_FONT_SIZE:I = 0x14

.field private static final DEFAULT_HEIGHT:I = 0x1e

.field private static final DEFAULT_LINE_NUMBER:I = 0x3

.field private static final DEFAULT_WIDTH:I = 0x3c

.field private static final RANGE_PADDING_LEFT:I = 0xa

.field private static final RANGE_PADDING_TOP:I = 0xa

.field private static bpUtil:Lcom/cat/tools/BPUtil;


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
    const/16 v0, 0x3e

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    sput-object v0, Lcom/cat/tools/BPUtil;->CHARS:[C

    .line 43
    return-void

    .line 13
    :array_0
    .array-data 2
        0x30s
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
        0x69s
        0x6as
        0x6bs
        0x6cs
        0x6ds
        0x6es
        0x6fs
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
        0x41s
        0x42s
        0x43s
        0x44s
        0x45s
        0x46s
        0x47s
        0x48s
        0x49s
        0x4as
        0x4bs
        0x4cs
        0x4ds
        0x4es
        0x4fs
        0x50s
        0x51s
        0x52s
        0x53s
        0x54s
        0x55s
        0x56s
        0x57s
        0x58s
        0x59s
        0x5as
    .end array-data
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/16 v1, 0xa

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    const/16 v0, 0x3c

    iput v0, p0, Lcom/cat/tools/BPUtil;->width:I

    const/16 v0, 0x1e

    iput v0, p0, Lcom/cat/tools/BPUtil;->height:I

    .line 50
    const/4 v0, 0x5

    iput v0, p0, Lcom/cat/tools/BPUtil;->base_padding_left:I

    .line 51
    iput v1, p0, Lcom/cat/tools/BPUtil;->range_padding_left:I

    .line 52
    const/16 v0, 0xf

    iput v0, p0, Lcom/cat/tools/BPUtil;->base_padding_top:I

    .line 53
    iput v1, p0, Lcom/cat/tools/BPUtil;->range_padding_top:I

    .line 56
    const/4 v0, 0x4

    iput v0, p0, Lcom/cat/tools/BPUtil;->codeLength:I

    .line 57
    const/4 v0, 0x3

    iput v0, p0, Lcom/cat/tools/BPUtil;->line_number:I

    const/16 v0, 0x14

    iput v0, p0, Lcom/cat/tools/BPUtil;->font_size:I

    .line 62
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    iput-object v0, p0, Lcom/cat/tools/BPUtil;->random:Ljava/util/Random;

    .line 11
    return-void
.end method

.method private createCode()Ljava/lang/String;
    .locals 5

    .prologue
    .line 96
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 97
    .local v0, "buffer":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget v2, p0, Lcom/cat/tools/BPUtil;->codeLength:I

    if-lt v1, v2, :cond_0

    .line 100
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 98
    :cond_0
    sget-object v2, Lcom/cat/tools/BPUtil;->CHARS:[C

    iget-object v3, p0, Lcom/cat/tools/BPUtil;->random:Ljava/util/Random;

    sget-object v4, Lcom/cat/tools/BPUtil;->CHARS:[C

    array-length v4, v4

    invoke-virtual {v3, v4}, Ljava/util/Random;->nextInt(I)I

    move-result v3

    aget-char v2, v2, v3

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 97
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private drawLine(Landroid/graphics/Canvas;Landroid/graphics/Paint;)V
    .locals 11
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "paint"    # Landroid/graphics/Paint;

    .prologue
    .line 104
    invoke-direct {p0}, Lcom/cat/tools/BPUtil;->randomColor()I

    move-result v6

    .line 105
    .local v6, "color":I
    iget-object v0, p0, Lcom/cat/tools/BPUtil;->random:Ljava/util/Random;

    iget v1, p0, Lcom/cat/tools/BPUtil;->width:I

    invoke-virtual {v0, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v7

    .line 106
    .local v7, "startX":I
    iget-object v0, p0, Lcom/cat/tools/BPUtil;->random:Ljava/util/Random;

    iget v1, p0, Lcom/cat/tools/BPUtil;->height:I

    invoke-virtual {v0, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v8

    .line 107
    .local v8, "startY":I
    iget-object v0, p0, Lcom/cat/tools/BPUtil;->random:Ljava/util/Random;

    iget v1, p0, Lcom/cat/tools/BPUtil;->width:I

    invoke-virtual {v0, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v9

    .line 108
    .local v9, "stopX":I
    iget-object v0, p0, Lcom/cat/tools/BPUtil;->random:Ljava/util/Random;

    iget v1, p0, Lcom/cat/tools/BPUtil;->height:I

    invoke-virtual {v0, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v10

    .line 109
    .local v10, "stopY":I
    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 110
    invoke-virtual {p2, v6}, Landroid/graphics/Paint;->setColor(I)V

    .line 111
    int-to-float v1, v7

    int-to-float v2, v8

    int-to-float v3, v9

    int-to-float v4, v10

    move-object v0, p1

    move-object v5, p2

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 112
    return-void
.end method

.method public static getInstance()Lcom/cat/tools/BPUtil;
    .locals 1

    .prologue
    .line 23
    sget-object v0, Lcom/cat/tools/BPUtil;->bpUtil:Lcom/cat/tools/BPUtil;

    if-nez v0, :cond_0

    .line 24
    new-instance v0, Lcom/cat/tools/BPUtil;

    invoke-direct {v0}, Lcom/cat/tools/BPUtil;-><init>()V

    sput-object v0, Lcom/cat/tools/BPUtil;->bpUtil:Lcom/cat/tools/BPUtil;

    .line 25
    :cond_0
    sget-object v0, Lcom/cat/tools/BPUtil;->bpUtil:Lcom/cat/tools/BPUtil;

    return-object v0
.end method

.method private randomColor()I
    .locals 1

    .prologue
    .line 115
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/cat/tools/BPUtil;->randomColor(I)I

    move-result v0

    return v0
.end method

.method private randomColor(I)I
    .locals 5
    .param p1, "rate"    # I

    .prologue
    const/16 v4, 0x100

    .line 119
    iget-object v3, p0, Lcom/cat/tools/BPUtil;->random:Ljava/util/Random;

    invoke-virtual {v3, v4}, Ljava/util/Random;->nextInt(I)I

    move-result v3

    div-int v2, v3, p1

    .line 120
    .local v2, "red":I
    iget-object v3, p0, Lcom/cat/tools/BPUtil;->random:Ljava/util/Random;

    invoke-virtual {v3, v4}, Ljava/util/Random;->nextInt(I)I

    move-result v3

    div-int v1, v3, p1

    .line 121
    .local v1, "green":I
    iget-object v3, p0, Lcom/cat/tools/BPUtil;->random:Ljava/util/Random;

    invoke-virtual {v3, v4}, Ljava/util/Random;->nextInt(I)I

    move-result v3

    div-int v0, v3, p1

    .line 122
    .local v0, "blue":I
    invoke-static {v2, v1, v0}, Landroid/graphics/Color;->rgb(III)I

    move-result v3

    return v3
.end method

.method private randomPadding()V
    .locals 4

    .prologue
    .line 137
    iget v0, p0, Lcom/cat/tools/BPUtil;->padding_left:I

    iget v1, p0, Lcom/cat/tools/BPUtil;->base_padding_left:I

    iget-object v2, p0, Lcom/cat/tools/BPUtil;->random:Ljava/util/Random;

    iget v3, p0, Lcom/cat/tools/BPUtil;->range_padding_left:I

    invoke-virtual {v2, v3}, Ljava/util/Random;->nextInt(I)I

    move-result v2

    add-int/2addr v1, v2

    add-int/2addr v0, v1

    iput v0, p0, Lcom/cat/tools/BPUtil;->padding_left:I

    .line 138
    iget v0, p0, Lcom/cat/tools/BPUtil;->base_padding_top:I

    iget-object v1, p0, Lcom/cat/tools/BPUtil;->random:Ljava/util/Random;

    iget v2, p0, Lcom/cat/tools/BPUtil;->range_padding_top:I

    invoke-virtual {v1, v2}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/cat/tools/BPUtil;->padding_top:I

    .line 139
    return-void
.end method

.method private randomTextStyle(Landroid/graphics/Paint;)V
    .locals 4
    .param p1, "paint"    # Landroid/graphics/Paint;

    .prologue
    .line 126
    invoke-direct {p0}, Lcom/cat/tools/BPUtil;->randomColor()I

    move-result v0

    .line 127
    .local v0, "color":I
    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 128
    iget-object v2, p0, Lcom/cat/tools/BPUtil;->random:Ljava/util/Random;

    invoke-virtual {v2}, Ljava/util/Random;->nextBoolean()Z

    move-result v2

    invoke-virtual {p1, v2}, Landroid/graphics/Paint;->setFakeBoldText(Z)V

    .line 129
    iget-object v2, p0, Lcom/cat/tools/BPUtil;->random:Ljava/util/Random;

    const/16 v3, 0xb

    invoke-virtual {v2, v3}, Ljava/util/Random;->nextInt(I)I

    move-result v2

    div-int/lit8 v2, v2, 0xa

    int-to-float v1, v2

    .line 130
    .local v1, "skewX":F
    iget-object v2, p0, Lcom/cat/tools/BPUtil;->random:Ljava/util/Random;

    invoke-virtual {v2}, Ljava/util/Random;->nextBoolean()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 131
    :goto_0
    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setTextSkewX(F)V

    .line 134
    return-void

    .line 130
    :cond_0
    neg-float v1, v1

    goto :goto_0
.end method


# virtual methods
.method public createBitmap()Landroid/graphics/Bitmap;
    .locals 7

    .prologue
    .line 65
    const/4 v4, 0x0

    iput v4, p0, Lcom/cat/tools/BPUtil;->padding_left:I

    .line 67
    iget v4, p0, Lcom/cat/tools/BPUtil;->width:I

    iget v5, p0, Lcom/cat/tools/BPUtil;->height:I

    sget-object v6, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v4, v5, v6}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 68
    .local v0, "bp":Landroid/graphics/Bitmap;
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 70
    .local v1, "c":Landroid/graphics/Canvas;
    invoke-direct {p0}, Lcom/cat/tools/BPUtil;->createCode()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/cat/tools/BPUtil;->code:Ljava/lang/String;

    .line 72
    const/4 v4, -0x1

    invoke-virtual {v1, v4}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 73
    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3}, Landroid/graphics/Paint;-><init>()V

    .line 74
    .local v3, "paint":Landroid/graphics/Paint;
    iget v4, p0, Lcom/cat/tools/BPUtil;->font_size:I

    int-to-float v4, v4

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 76
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget-object v4, p0, Lcom/cat/tools/BPUtil;->code:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-lt v2, v4, :cond_0

    .line 82
    const/4 v2, 0x0

    :goto_1
    iget v4, p0, Lcom/cat/tools/BPUtil;->line_number:I

    if-lt v2, v4, :cond_1

    .line 86
    const/16 v4, 0x1f

    invoke-virtual {v1, v4}, Landroid/graphics/Canvas;->save(I)I

    .line 87
    invoke-virtual {v1}, Landroid/graphics/Canvas;->restore()V

    .line 88
    return-object v0

    .line 77
    :cond_0
    invoke-direct {p0, v3}, Lcom/cat/tools/BPUtil;->randomTextStyle(Landroid/graphics/Paint;)V

    .line 78
    invoke-direct {p0}, Lcom/cat/tools/BPUtil;->randomPadding()V

    .line 79
    new-instance v4, Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/cat/tools/BPUtil;->code:Ljava/lang/String;

    invoke-virtual {v5, v2}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iget v5, p0, Lcom/cat/tools/BPUtil;->padding_left:I

    int-to-float v5, v5

    iget v6, p0, Lcom/cat/tools/BPUtil;->padding_top:I

    int-to-float v6, v6

    invoke-virtual {v1, v4, v5, v6, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 76
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 83
    :cond_1
    invoke-direct {p0, v1, v3}, Lcom/cat/tools/BPUtil;->drawLine(Landroid/graphics/Canvas;Landroid/graphics/Paint;)V

    .line 82
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method public getCode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lcom/cat/tools/BPUtil;->code:Ljava/lang/String;

    return-object v0
.end method
