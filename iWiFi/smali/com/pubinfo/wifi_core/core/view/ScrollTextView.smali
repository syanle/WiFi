.class public Lcom/pubinfo/wifi_core/core/view/ScrollTextView;
.super Landroid/widget/TextView;
.source "ScrollTextView.java"


# static fields
.field public static final performUpScrollStateDistance:J = 0x5L


# instance fields
.field absloutHeight:F

.field currentY:F

.field delayTime:I

.field public distanceX:F

.field public distanceY:F

.field private exactlyHeight:I

.field private exactlyWidth:I

.field handler:Landroid/os/Handler;

.field lastY:F

.field lineStrings:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field needStop:Z

.field scrollText:Ljava/lang/String;

.field scrolling:Z

.field speed:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, -0x1

    const/4 v1, 0x0

    .line 81
    invoke-direct {p0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 31
    const-string v0, ""

    iput-object v0, p0, Lcom/pubinfo/wifi_core/core/view/ScrollTextView;->scrollText:Ljava/lang/String;

    .line 37
    iput v2, p0, Lcom/pubinfo/wifi_core/core/view/ScrollTextView;->exactlyWidth:I

    .line 42
    iput v2, p0, Lcom/pubinfo/wifi_core/core/view/ScrollTextView;->exactlyHeight:I

    .line 88
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/pubinfo/wifi_core/core/view/ScrollTextView;->scrolling:Z

    .line 93
    iput v1, p0, Lcom/pubinfo/wifi_core/core/view/ScrollTextView;->absloutHeight:F

    .line 98
    const/16 v0, 0xa

    iput v0, p0, Lcom/pubinfo/wifi_core/core/view/ScrollTextView;->delayTime:I

    .line 103
    const/high16 v0, 0x3f000000    # 0.5f

    iput v0, p0, Lcom/pubinfo/wifi_core/core/view/ScrollTextView;->speed:F

    .line 158
    iput v1, p0, Lcom/pubinfo/wifi_core/core/view/ScrollTextView;->lastY:F

    .line 220
    iput v1, p0, Lcom/pubinfo/wifi_core/core/view/ScrollTextView;->distanceY:F

    .line 222
    iput v1, p0, Lcom/pubinfo/wifi_core/core/view/ScrollTextView;->distanceX:F

    .line 82
    invoke-virtual {p0}, Lcom/pubinfo/wifi_core/core/view/ScrollTextView;->init()V

    .line 83
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v2, -0x1

    const/4 v1, 0x0

    .line 64
    invoke-direct {p0, p1, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 31
    const-string v0, ""

    iput-object v0, p0, Lcom/pubinfo/wifi_core/core/view/ScrollTextView;->scrollText:Ljava/lang/String;

    .line 37
    iput v2, p0, Lcom/pubinfo/wifi_core/core/view/ScrollTextView;->exactlyWidth:I

    .line 42
    iput v2, p0, Lcom/pubinfo/wifi_core/core/view/ScrollTextView;->exactlyHeight:I

    .line 88
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/pubinfo/wifi_core/core/view/ScrollTextView;->scrolling:Z

    .line 93
    iput v1, p0, Lcom/pubinfo/wifi_core/core/view/ScrollTextView;->absloutHeight:F

    .line 98
    const/16 v0, 0xa

    iput v0, p0, Lcom/pubinfo/wifi_core/core/view/ScrollTextView;->delayTime:I

    .line 103
    const/high16 v0, 0x3f000000    # 0.5f

    iput v0, p0, Lcom/pubinfo/wifi_core/core/view/ScrollTextView;->speed:F

    .line 158
    iput v1, p0, Lcom/pubinfo/wifi_core/core/view/ScrollTextView;->lastY:F

    .line 220
    iput v1, p0, Lcom/pubinfo/wifi_core/core/view/ScrollTextView;->distanceY:F

    .line 222
    iput v1, p0, Lcom/pubinfo/wifi_core/core/view/ScrollTextView;->distanceX:F

    .line 66
    invoke-virtual {p0}, Lcom/pubinfo/wifi_core/core/view/ScrollTextView;->init()V

    .line 67
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v2, -0x1

    const/4 v1, 0x0

    .line 76
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 31
    const-string v0, ""

    iput-object v0, p0, Lcom/pubinfo/wifi_core/core/view/ScrollTextView;->scrollText:Ljava/lang/String;

    .line 37
    iput v2, p0, Lcom/pubinfo/wifi_core/core/view/ScrollTextView;->exactlyWidth:I

    .line 42
    iput v2, p0, Lcom/pubinfo/wifi_core/core/view/ScrollTextView;->exactlyHeight:I

    .line 88
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/pubinfo/wifi_core/core/view/ScrollTextView;->scrolling:Z

    .line 93
    iput v1, p0, Lcom/pubinfo/wifi_core/core/view/ScrollTextView;->absloutHeight:F

    .line 98
    const/16 v0, 0xa

    iput v0, p0, Lcom/pubinfo/wifi_core/core/view/ScrollTextView;->delayTime:I

    .line 103
    const/high16 v0, 0x3f000000    # 0.5f

    iput v0, p0, Lcom/pubinfo/wifi_core/core/view/ScrollTextView;->speed:F

    .line 158
    iput v1, p0, Lcom/pubinfo/wifi_core/core/view/ScrollTextView;->lastY:F

    .line 220
    iput v1, p0, Lcom/pubinfo/wifi_core/core/view/ScrollTextView;->distanceY:F

    .line 222
    iput v1, p0, Lcom/pubinfo/wifi_core/core/view/ScrollTextView;->distanceX:F

    .line 77
    invoke-virtual {p0}, Lcom/pubinfo/wifi_core/core/view/ScrollTextView;->init()V

    .line 78
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "text"    # Ljava/lang/String;

    .prologue
    const/4 v2, -0x1

    const/4 v1, 0x0

    .line 70
    invoke-direct {p0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 31
    const-string v0, ""

    iput-object v0, p0, Lcom/pubinfo/wifi_core/core/view/ScrollTextView;->scrollText:Ljava/lang/String;

    .line 37
    iput v2, p0, Lcom/pubinfo/wifi_core/core/view/ScrollTextView;->exactlyWidth:I

    .line 42
    iput v2, p0, Lcom/pubinfo/wifi_core/core/view/ScrollTextView;->exactlyHeight:I

    .line 88
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/pubinfo/wifi_core/core/view/ScrollTextView;->scrolling:Z

    .line 93
    iput v1, p0, Lcom/pubinfo/wifi_core/core/view/ScrollTextView;->absloutHeight:F

    .line 98
    const/16 v0, 0xa

    iput v0, p0, Lcom/pubinfo/wifi_core/core/view/ScrollTextView;->delayTime:I

    .line 103
    const/high16 v0, 0x3f000000    # 0.5f

    iput v0, p0, Lcom/pubinfo/wifi_core/core/view/ScrollTextView;->speed:F

    .line 158
    iput v1, p0, Lcom/pubinfo/wifi_core/core/view/ScrollTextView;->lastY:F

    .line 220
    iput v1, p0, Lcom/pubinfo/wifi_core/core/view/ScrollTextView;->distanceY:F

    .line 222
    iput v1, p0, Lcom/pubinfo/wifi_core/core/view/ScrollTextView;->distanceX:F

    .line 71
    iput-object p2, p0, Lcom/pubinfo/wifi_core/core/view/ScrollTextView;->scrollText:Ljava/lang/String;

    .line 72
    invoke-virtual {p0}, Lcom/pubinfo/wifi_core/core/view/ScrollTextView;->init()V

    .line 73
    return-void
.end method

.method private MeasureHeight(II)I
    .locals 5
    .param p1, "width"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 317
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v2

    .line 318
    .local v2, "mode":I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    .line 319
    .local v0, "height":I
    invoke-virtual {p0, p1}, Lcom/pubinfo/wifi_core/core/view/ScrollTextView;->generateTextList(I)V

    .line 320
    iget-object v3, p0, Lcom/pubinfo/wifi_core/core/view/ScrollTextView;->lineStrings:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 322
    .local v1, "lines":I
    invoke-virtual {p0}, Lcom/pubinfo/wifi_core/core/view/ScrollTextView;->getLineHeight()I

    move-result v3

    mul-int/2addr v3, v1

    invoke-virtual {p0}, Lcom/pubinfo/wifi_core/core/view/ScrollTextView;->getPaddingBottom()I

    move-result v4

    add-int/2addr v3, v4

    invoke-virtual {p0}, Lcom/pubinfo/wifi_core/core/view/ScrollTextView;->getPaddingTop()I

    move-result v4

    add-int/2addr v3, v4

    int-to-float v3, v3

    iput v3, p0, Lcom/pubinfo/wifi_core/core/view/ScrollTextView;->absloutHeight:F

    .line 324
    const/high16 v3, -0x80000000

    if-ne v2, v3, :cond_1

    .line 326
    iget v3, p0, Lcom/pubinfo/wifi_core/core/view/ScrollTextView;->absloutHeight:F

    int-to-float v4, v0

    invoke-static {v3, v4}, Ljava/lang/Math;->min(FF)F

    move-result v3

    float-to-int v0, v3

    .line 327
    const/4 v3, -0x1

    iput v3, p0, Lcom/pubinfo/wifi_core/core/view/ScrollTextView;->exactlyHeight:I

    .line 332
    :cond_0
    :goto_0
    return v0

    .line 329
    :cond_1
    const/high16 v3, 0x40000000    # 2.0f

    if-ne v2, v3, :cond_0

    .line 330
    iput v0, p0, Lcom/pubinfo/wifi_core/core/view/ScrollTextView;->exactlyHeight:I

    goto :goto_0
.end method

.method private MeasureWidth(I)I
    .locals 6
    .param p1, "widthMeasureSpec"    # I

    .prologue
    .line 293
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v2

    .line 294
    .local v2, "mode":I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v3

    .line 296
    .local v3, "width":I
    const/high16 v4, -0x80000000

    if-ne v2, v4, :cond_0

    .line 298
    invoke-virtual {p0}, Lcom/pubinfo/wifi_core/core/view/ScrollTextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v4

    iget-object v5, p0, Lcom/pubinfo/wifi_core/core/view/ScrollTextView;->scrollText:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v4

    float-to-double v0, v4

    .line 300
    .local v0, "abwidth":D
    invoke-static {v0, v1}, Ljava/lang/Math;->rint(D)D

    move-result-wide v4

    double-to-int v4, v4

    invoke-static {v4, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 301
    const/4 v4, -0x1

    iput v4, p0, Lcom/pubinfo/wifi_core/core/view/ScrollTextView;->exactlyWidth:I

    .line 303
    .end local v0    # "abwidth":D
    :cond_0
    const/high16 v4, 0x40000000    # 2.0f

    if-ne v2, v4, :cond_1

    .line 304
    iput v3, p0, Lcom/pubinfo/wifi_core/core/view/ScrollTextView;->exactlyWidth:I

    .line 306
    :cond_1
    return v3
.end method

.method private getLineText(ILjava/lang/String;)Ljava/lang/String;
    .locals 10
    .param p1, "MaxWidth"    # I
    .param p2, "str"    # Ljava/lang/String;

    .prologue
    .line 363
    new-instance v6, Ljava/lang/StringBuffer;

    invoke-direct {v6}, Ljava/lang/StringBuffer;-><init>()V

    .line 365
    .local v6, "trueStringBuffer":Ljava/lang/StringBuffer;
    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    .line 367
    .local v5, "tempStringBuffer":Ljava/lang/StringBuffer;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v8

    if-lt v2, v8, :cond_1

    .line 402
    :cond_0
    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v8

    return-object v8

    .line 368
    :cond_1
    invoke-virtual {p2, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 369
    .local v1, "c":C
    const-string v0, ""

    .line 371
    .local v0, "add":Ljava/lang/String;
    invoke-static {v1}, Lcom/pubinfo/wifi_core/core/view/ScrollTextView;->isChinese(C)Z

    move-result v8

    if-nez v8, :cond_4

    invoke-virtual {p0, p2, v2}, Lcom/pubinfo/wifi_core/core/view/ScrollTextView;->isENWordStart(Ljava/lang/String;I)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 373
    invoke-virtual {p0, v2, p2}, Lcom/pubinfo/wifi_core/core/view/ScrollTextView;->getNextSpecePlace(ILjava/lang/String;)I

    move-result v3

    .line 375
    .local v3, "place":I
    const/4 v8, -0x1

    if-le v3, v8, :cond_3

    .line 376
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-virtual {p2, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v9, " "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 377
    invoke-virtual {p0}, Lcom/pubinfo/wifi_core/core/view/ScrollTextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v8

    invoke-virtual {v8, v0}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v8

    int-to-float v9, p1

    cmpl-float v8, v8, v9

    if-lez v8, :cond_2

    .line 378
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 389
    .end local v3    # "place":I
    :goto_1
    invoke-virtual {v5, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 390
    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    .line 391
    .local v4, "temp":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/pubinfo/wifi_core/core/view/ScrollTextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v8

    invoke-virtual {v4}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v7

    .line 393
    .local v7, "width":F
    int-to-float v8, p1

    cmpg-float v8, v7, v8

    if-gtz v8, :cond_0

    .line 395
    invoke-virtual {v6, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 367
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 380
    .end local v4    # "temp":Ljava/lang/String;
    .end local v7    # "width":F
    .restart local v3    # "place":I
    :cond_2
    move v2, v3

    .line 382
    goto :goto_1

    .line 383
    :cond_3
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 385
    goto :goto_1

    .line 386
    .end local v3    # "place":I
    :cond_4
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method

.method private static final isChinese(C)Z
    .locals 2
    .param p0, "c"    # C

    .prologue
    .line 484
    invoke-static {p0}, Ljava/lang/Character$UnicodeBlock;->of(C)Ljava/lang/Character$UnicodeBlock;

    move-result-object v0

    .line 485
    .local v0, "ub":Ljava/lang/Character$UnicodeBlock;
    sget-object v1, Ljava/lang/Character$UnicodeBlock;->CJK_UNIFIED_IDEOGRAPHS:Ljava/lang/Character$UnicodeBlock;

    if-eq v0, v1, :cond_0

    .line 486
    sget-object v1, Ljava/lang/Character$UnicodeBlock;->CJK_COMPATIBILITY_IDEOGRAPHS:Ljava/lang/Character$UnicodeBlock;

    if-eq v0, v1, :cond_0

    .line 487
    sget-object v1, Ljava/lang/Character$UnicodeBlock;->CJK_UNIFIED_IDEOGRAPHS_EXTENSION_A:Ljava/lang/Character$UnicodeBlock;

    if-eq v0, v1, :cond_0

    .line 488
    sget-object v1, Ljava/lang/Character$UnicodeBlock;->GENERAL_PUNCTUATION:Ljava/lang/Character$UnicodeBlock;

    if-eq v0, v1, :cond_0

    .line 489
    sget-object v1, Ljava/lang/Character$UnicodeBlock;->CJK_SYMBOLS_AND_PUNCTUATION:Ljava/lang/Character$UnicodeBlock;

    if-eq v0, v1, :cond_0

    .line 490
    sget-object v1, Ljava/lang/Character$UnicodeBlock;->HALFWIDTH_AND_FULLWIDTH_FORMS:Ljava/lang/Character$UnicodeBlock;

    if-ne v0, v1, :cond_1

    .line 491
    :cond_0
    const/4 v1, 0x1

    .line 493
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private reset()V
    .locals 1

    .prologue
    .line 57
    invoke-virtual {p0}, Lcom/pubinfo/wifi_core/core/view/ScrollTextView;->requestLayout()V

    .line 58
    invoke-virtual {p0}, Lcom/pubinfo/wifi_core/core/view/ScrollTextView;->invalidate()V

    .line 59
    const/4 v0, 0x0

    iput v0, p0, Lcom/pubinfo/wifi_core/core/view/ScrollTextView;->currentY:F

    .line 61
    return-void
.end method


# virtual methods
.method public cal()V
    .locals 5

    .prologue
    .line 272
    const/16 v2, 0x50

    .line 273
    .local v2, "width":I
    const/16 v0, 0x28

    .line 274
    .local v0, "height":I
    invoke-virtual {p0, v2}, Lcom/pubinfo/wifi_core/core/view/ScrollTextView;->generateTextList(I)V

    .line 275
    iget-object v3, p0, Lcom/pubinfo/wifi_core/core/view/ScrollTextView;->lineStrings:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 277
    .local v1, "lines":I
    invoke-virtual {p0}, Lcom/pubinfo/wifi_core/core/view/ScrollTextView;->getLineHeight()I

    move-result v3

    mul-int/2addr v3, v1

    invoke-virtual {p0}, Lcom/pubinfo/wifi_core/core/view/ScrollTextView;->getPaddingBottom()I

    move-result v4

    add-int/2addr v3, v4

    invoke-virtual {p0}, Lcom/pubinfo/wifi_core/core/view/ScrollTextView;->getPaddingTop()I

    move-result v4

    add-int/2addr v3, v4

    int-to-float v3, v3

    iput v3, p0, Lcom/pubinfo/wifi_core/core/view/ScrollTextView;->absloutHeight:F

    .line 278
    const/4 v3, 0x0

    iput v3, p0, Lcom/pubinfo/wifi_core/core/view/ScrollTextView;->currentY:F

    .line 279
    int-to-float v3, v0

    iget v4, p0, Lcom/pubinfo/wifi_core/core/view/ScrollTextView;->absloutHeight:F

    cmpg-float v3, v3, v4

    if-gez v3, :cond_0

    .line 280
    invoke-virtual {p0}, Lcom/pubinfo/wifi_core/core/view/ScrollTextView;->play()V

    .line 284
    :goto_0
    return-void

    .line 282
    :cond_0
    invoke-virtual {p0}, Lcom/pubinfo/wifi_core/core/view/ScrollTextView;->stop()V

    goto :goto_0
.end method

.method public generateTextList(I)V
    .locals 4
    .param p1, "MaxWidth"    # I

    .prologue
    .line 431
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/pubinfo/wifi_core/core/view/ScrollTextView;->lineStrings:Ljava/util/ArrayList;

    .line 432
    iget-object v1, p0, Lcom/pubinfo/wifi_core/core/view/ScrollTextView;->scrollText:Ljava/lang/String;

    .line 434
    .local v1, "remain":Ljava/lang/String;
    :goto_0
    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 440
    return-void

    .line 435
    :cond_0
    invoke-direct {p0, p1, v1}, Lcom/pubinfo/wifi_core/core/view/ScrollTextView;->getLineText(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 436
    .local v0, "line":Ljava/lang/String;
    iget-object v2, p0, Lcom/pubinfo/wifi_core/core/view/ScrollTextView;->lineStrings:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 437
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method getNextSpecePlace(ILjava/lang/String;)I
    .locals 3
    .param p1, "i"    # I
    .param p2, "str"    # Ljava/lang/String;

    .prologue
    .line 415
    move v1, p1

    .local v1, "j":I
    :goto_0
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    if-lt v1, v2, :cond_1

    .line 422
    const/4 v1, -0x1

    .end local v1    # "j":I
    :cond_0
    return v1

    .line 416
    .restart local v1    # "j":I
    :cond_1
    invoke-virtual {p2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 417
    .local v0, "c":C
    const/16 v2, 0x20

    if-eq v0, v2, :cond_0

    .line 415
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public getScrollText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/pubinfo/wifi_core/core/view/ScrollTextView;->scrollText:Ljava/lang/String;

    return-object v0
.end method

.method public goOn()V
    .locals 1

    .prologue
    .line 175
    iget-boolean v0, p0, Lcom/pubinfo/wifi_core/core/view/ScrollTextView;->needStop:Z

    if-eqz v0, :cond_0

    .line 176
    invoke-virtual {p0}, Lcom/pubinfo/wifi_core/core/view/ScrollTextView;->play()V

    .line 177
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/pubinfo/wifi_core/core/view/ScrollTextView;->needStop:Z

    .line 179
    :cond_0
    return-void
.end method

.method init()V
    .locals 1

    .prologue
    .line 110
    invoke-virtual {p0}, Lcom/pubinfo/wifi_core/core/view/ScrollTextView;->cal()V

    .line 112
    new-instance v0, Lcom/pubinfo/wifi_core/core/view/ScrollTextView$1;

    invoke-direct {v0, p0}, Lcom/pubinfo/wifi_core/core/view/ScrollTextView$1;-><init>(Lcom/pubinfo/wifi_core/core/view/ScrollTextView;)V

    iput-object v0, p0, Lcom/pubinfo/wifi_core/core/view/ScrollTextView;->handler:Landroid/os/Handler;

    .line 153
    return-void
.end method

.method isENWordStart(Ljava/lang/String;I)Z
    .locals 3
    .param p1, "str"    # Ljava/lang/String;
    .param p2, "i"    # I

    .prologue
    const/4 v0, 0x1

    .line 344
    if-nez p2, :cond_1

    .line 350
    :cond_0
    :goto_0
    return v0

    .line 347
    :cond_1
    add-int/lit8 v1, p2, -0x1

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x20

    if-eq v1, v2, :cond_0

    .line 350
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 9
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 445
    invoke-super {p0, p1}, Landroid/widget/TextView;->onDraw(Landroid/graphics/Canvas;)V

    .line 446
    invoke-virtual {p0}, Lcom/pubinfo/wifi_core/core/view/ScrollTextView;->getPaddingLeft()I

    move-result v6

    int-to-float v4, v6

    .line 447
    .local v4, "x":F
    invoke-virtual {p0}, Lcom/pubinfo/wifi_core/core/view/ScrollTextView;->getPaddingTop()I

    move-result v6

    int-to-float v5, v6

    .line 449
    .local v5, "y":F
    invoke-virtual {p0}, Lcom/pubinfo/wifi_core/core/view/ScrollTextView;->getLineHeight()I

    move-result v6

    int-to-float v1, v6

    .line 450
    .local v1, "lineHeight":F
    invoke-virtual {p0}, Lcom/pubinfo/wifi_core/core/view/ScrollTextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v6

    invoke-virtual {v6}, Landroid/text/TextPaint;->getTextSize()F

    move-result v3

    .line 452
    .local v3, "textSize":F
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v6, p0, Lcom/pubinfo/wifi_core/core/view/ScrollTextView;->lineStrings:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-lt v0, v6, :cond_0

    .line 475
    return-void

    .line 453
    :cond_0
    int-to-float v6, v0

    mul-float/2addr v6, v1

    add-float/2addr v6, v3

    iget v7, p0, Lcom/pubinfo/wifi_core/core/view/ScrollTextView;->currentY:F

    add-float v5, v6, v7

    .line 455
    const/4 v2, 0x0

    .line 456
    .local v2, "min":F
    iget v6, p0, Lcom/pubinfo/wifi_core/core/view/ScrollTextView;->exactlyHeight:I

    const/4 v7, -0x1

    if-le v6, v7, :cond_1

    .line 457
    iget v6, p0, Lcom/pubinfo/wifi_core/core/view/ScrollTextView;->exactlyHeight:I

    int-to-float v6, v6

    iget v7, p0, Lcom/pubinfo/wifi_core/core/view/ScrollTextView;->absloutHeight:F

    sub-float/2addr v6, v7

    invoke-static {v2, v6}, Ljava/lang/Math;->min(FF)F

    move-result v2

    .line 459
    :cond_1
    cmpg-float v6, v5, v2

    if-gez v6, :cond_4

    .line 461
    iget v6, p0, Lcom/pubinfo/wifi_core/core/view/ScrollTextView;->absloutHeight:F

    add-float/2addr v5, v6

    .line 468
    :cond_2
    :goto_1
    iget v6, p0, Lcom/pubinfo/wifi_core/core/view/ScrollTextView;->absloutHeight:F

    cmpl-float v6, v5, v6

    if-ltz v6, :cond_3

    .line 470
    iget-object v6, p0, Lcom/pubinfo/wifi_core/core/view/ScrollTextView;->lineStrings:Ljava/util/ArrayList;

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {p0}, Lcom/pubinfo/wifi_core/core/view/ScrollTextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v7

    invoke-virtual {p1, v6, v4, v5, v7}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 471
    iget v6, p0, Lcom/pubinfo/wifi_core/core/view/ScrollTextView;->absloutHeight:F

    sub-float/2addr v5, v6

    .line 473
    :cond_3
    iget-object v6, p0, Lcom/pubinfo/wifi_core/core/view/ScrollTextView;->lineStrings:Ljava/util/ArrayList;

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {p0}, Lcom/pubinfo/wifi_core/core/view/ScrollTextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v7

    invoke-virtual {p1, v6, v4, v5, v7}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 452
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 463
    :cond_4
    cmpl-float v6, v5, v2

    if-ltz v6, :cond_2

    add-float v6, v3, v2

    cmpg-float v6, v5, v6

    if-gez v6, :cond_2

    .line 466
    iget-object v6, p0, Lcom/pubinfo/wifi_core/core/view/ScrollTextView;->lineStrings:Ljava/util/ArrayList;

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    iget v7, p0, Lcom/pubinfo/wifi_core/core/view/ScrollTextView;->absloutHeight:F

    add-float/2addr v7, v5

    invoke-virtual {p0}, Lcom/pubinfo/wifi_core/core/view/ScrollTextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v8

    invoke-virtual {p1, v6, v4, v7, v8}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto :goto_1
.end method

.method protected onMeasure(II)V
    .locals 4
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 259
    invoke-direct {p0, p1}, Lcom/pubinfo/wifi_core/core/view/ScrollTextView;->MeasureWidth(I)I

    move-result v1

    .line 260
    .local v1, "width":I
    invoke-direct {p0, v1, p2}, Lcom/pubinfo/wifi_core/core/view/ScrollTextView;->MeasureHeight(II)I

    move-result v0

    .line 261
    .local v0, "height":I
    invoke-virtual {p0, v1, v0}, Lcom/pubinfo/wifi_core/core/view/ScrollTextView;->setMeasuredDimension(II)V

    .line 262
    const/4 v2, 0x0

    iput v2, p0, Lcom/pubinfo/wifi_core/core/view/ScrollTextView;->currentY:F

    .line 263
    int-to-float v2, v0

    iget v3, p0, Lcom/pubinfo/wifi_core/core/view/ScrollTextView;->absloutHeight:F

    cmpg-float v2, v2, v3

    if-gez v2, :cond_0

    .line 264
    invoke-virtual {p0}, Lcom/pubinfo/wifi_core/core/view/ScrollTextView;->play()V

    .line 269
    :goto_0
    return-void

    .line 266
    :cond_0
    invoke-virtual {p0}, Lcom/pubinfo/wifi_core/core/view/ScrollTextView;->stop()V

    goto :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 9
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v4, 0x1

    .line 184
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v5

    packed-switch v5, :pswitch_data_0

    .line 212
    invoke-super {p0, p1}, Landroid/widget/TextView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v4

    :cond_0
    :goto_0
    return v4

    .line 186
    :pswitch_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    iput v5, p0, Lcom/pubinfo/wifi_core/core/view/ScrollTextView;->lastY:F

    iput v5, p0, Lcom/pubinfo/wifi_core/core/view/ScrollTextView;->distanceY:F

    .line 187
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    iput v5, p0, Lcom/pubinfo/wifi_core/core/view/ScrollTextView;->distanceX:F

    .line 188
    invoke-virtual {p0}, Lcom/pubinfo/wifi_core/core/view/ScrollTextView;->pause()V

    goto :goto_0

    .line 192
    :pswitch_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    iget v6, p0, Lcom/pubinfo/wifi_core/core/view/ScrollTextView;->lastY:F

    sub-float v0, v5, v6

    .line 193
    .local v0, "dy":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    iput v5, p0, Lcom/pubinfo/wifi_core/core/view/ScrollTextView;->lastY:F

    .line 195
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    .line 196
    .local v1, "msg":Landroid/os/Message;
    iput v4, v1, Landroid/os/Message;->what:I

    .line 197
    float-to-int v5, v0

    iput v5, v1, Landroid/os/Message;->arg1:I

    .line 198
    iget-object v5, p0, Lcom/pubinfo/wifi_core/core/view/ScrollTextView;->handler:Landroid/os/Handler;

    invoke-virtual {v5, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 202
    .end local v0    # "dy":F
    .end local v1    # "msg":Landroid/os/Message;
    :pswitch_2
    invoke-virtual {p0}, Lcom/pubinfo/wifi_core/core/view/ScrollTextView;->goOn()V

    .line 203
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    iget v6, p0, Lcom/pubinfo/wifi_core/core/view/ScrollTextView;->distanceY:F

    sub-float v3, v5, v6

    .line 204
    .local v3, "y":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    iget v6, p0, Lcom/pubinfo/wifi_core/core/view/ScrollTextView;->distanceX:F

    sub-float v2, v5, v6

    .line 206
    .local v2, "x":F
    mul-float v5, v3, v3

    mul-float v6, v2, v2

    add-float/2addr v5, v6

    float-to-double v5, v5

    invoke-static {v5, v6}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v5

    const-wide/high16 v7, 0x4014000000000000L    # 5.0

    cmpg-double v5, v5, v7

    if-gez v5, :cond_0

    .line 207
    invoke-virtual {p0}, Lcom/pubinfo/wifi_core/core/view/ScrollTextView;->updateScrollStatus()V

    goto :goto_0

    .line 184
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public pause()V
    .locals 1

    .prologue
    .line 166
    iget-boolean v0, p0, Lcom/pubinfo/wifi_core/core/view/ScrollTextView;->scrolling:Z

    if-eqz v0, :cond_0

    .line 168
    invoke-virtual {p0}, Lcom/pubinfo/wifi_core/core/view/ScrollTextView;->stop()V

    .line 169
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/pubinfo/wifi_core/core/view/ScrollTextView;->needStop:Z

    .line 171
    :cond_0
    return-void
.end method

.method public play()V
    .locals 2

    .prologue
    .line 241
    iget-boolean v0, p0, Lcom/pubinfo/wifi_core/core/view/ScrollTextView;->scrolling:Z

    if-nez v0, :cond_0

    .line 242
    iget-object v0, p0, Lcom/pubinfo/wifi_core/core/view/ScrollTextView;->handler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 243
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/pubinfo/wifi_core/core/view/ScrollTextView;->scrolling:Z

    .line 245
    :cond_0
    return-void
.end method

.method public setScrollText(Ljava/lang/String;)V
    .locals 0
    .param p1, "scrollText"    # Ljava/lang/String;

    .prologue
    .line 49
    iput-object p1, p0, Lcom/pubinfo/wifi_core/core/view/ScrollTextView;->scrollText:Ljava/lang/String;

    .line 50
    invoke-direct {p0}, Lcom/pubinfo/wifi_core/core/view/ScrollTextView;->reset()V

    .line 51
    return-void
.end method

.method public stop()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 251
    iget-boolean v0, p0, Lcom/pubinfo/wifi_core/core/view/ScrollTextView;->scrolling:Z

    if-eqz v0, :cond_0

    .line 252
    iget-object v0, p0, Lcom/pubinfo/wifi_core/core/view/ScrollTextView;->handler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 253
    iput-boolean v1, p0, Lcom/pubinfo/wifi_core/core/view/ScrollTextView;->scrolling:Z

    .line 255
    :cond_0
    return-void
.end method

.method public updateScrollStatus()V
    .locals 1

    .prologue
    .line 229
    iget-boolean v0, p0, Lcom/pubinfo/wifi_core/core/view/ScrollTextView;->scrolling:Z

    if-eqz v0, :cond_0

    .line 230
    invoke-virtual {p0}, Lcom/pubinfo/wifi_core/core/view/ScrollTextView;->stop()V

    .line 234
    :goto_0
    return-void

    .line 232
    :cond_0
    invoke-virtual {p0}, Lcom/pubinfo/wifi_core/core/view/ScrollTextView;->play()V

    goto :goto_0
.end method
