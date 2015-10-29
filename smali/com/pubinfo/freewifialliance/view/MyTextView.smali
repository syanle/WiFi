.class public Lcom/pubinfo/freewifialliance/view/MyTextView;
.super Landroid/widget/TextView;
.source "MyTextView.java"


# instance fields
.field private paddingLeft:F

.field private paddingRight:F

.field private paint1:Landroid/graphics/Paint;

.field private text:Ljava/lang/String;

.field private textColor:I

.field private textShowWidth:F

.field private textSize:F


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 25
    invoke-direct {p0, p1, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 21
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/pubinfo/freewifialliance/view/MyTextView;->paint1:Landroid/graphics/Paint;

    .line 26
    invoke-virtual {p0}, Lcom/pubinfo/freewifialliance/view/MyTextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/pubinfo/freewifialliance/view/MyTextView;->text:Ljava/lang/String;

    .line 27
    invoke-virtual {p0}, Lcom/pubinfo/freewifialliance/view/MyTextView;->getTextSize()F

    move-result v0

    iput v0, p0, Lcom/pubinfo/freewifialliance/view/MyTextView;->textSize:F

    .line 28
    invoke-virtual {p0}, Lcom/pubinfo/freewifialliance/view/MyTextView;->getTextColors()Landroid/content/res/ColorStateList;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v0

    iput v0, p0, Lcom/pubinfo/freewifialliance/view/MyTextView;->textColor:I

    .line 29
    invoke-virtual {p0}, Lcom/pubinfo/freewifialliance/view/MyTextView;->getPaddingLeft()I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/pubinfo/freewifialliance/view/MyTextView;->paddingLeft:F

    .line 30
    invoke-virtual {p0}, Lcom/pubinfo/freewifialliance/view/MyTextView;->getPaddingRight()I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/pubinfo/freewifialliance/view/MyTextView;->paddingRight:F

    .line 31
    iget-object v0, p0, Lcom/pubinfo/freewifialliance/view/MyTextView;->paint1:Landroid/graphics/Paint;

    iget v1, p0, Lcom/pubinfo/freewifialliance/view/MyTextView;->textSize:F

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 32
    iget-object v0, p0, Lcom/pubinfo/freewifialliance/view/MyTextView;->paint1:Landroid/graphics/Paint;

    iget v1, p0, Lcom/pubinfo/freewifialliance/view/MyTextView;->textColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 33
    iget-object v0, p0, Lcom/pubinfo/freewifialliance/view/MyTextView;->paint1:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 34
    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 10
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v3, 0x1

    .line 38
    invoke-virtual {p0}, Lcom/pubinfo/freewifialliance/view/MyTextView;->getMeasuredWidth()I

    move-result v0

    int-to-float v0, v0

    iget v4, p0, Lcom/pubinfo/freewifialliance/view/MyTextView;->paddingLeft:F

    sub-float/2addr v0, v4

    iget v4, p0, Lcom/pubinfo/freewifialliance/view/MyTextView;->paddingRight:F

    sub-float/2addr v0, v4

    iput v0, p0, Lcom/pubinfo/freewifialliance/view/MyTextView;->textShowWidth:F

    .line 39
    const/4 v9, 0x0

    .line 40
    .local v9, "lineCount":I
    invoke-virtual {p0}, Lcom/pubinfo/freewifialliance/view/MyTextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/pubinfo/freewifialliance/view/MyTextView;->text:Ljava/lang/String;

    .line 41
    iget-object v0, p0, Lcom/pubinfo/freewifialliance/view/MyTextView;->text:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 62
    :goto_0
    return-void

    .line 43
    :cond_0
    iget-object v0, p0, Lcom/pubinfo/freewifialliance/view/MyTextView;->text:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    .line 44
    .local v1, "textCharArray":[C
    const/4 v8, 0x0

    .line 46
    .local v8, "drawedWidth":F
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    array-length v0, v1

    if-lt v2, v0, :cond_1

    .line 61
    add-int/lit8 v0, v9, 0x1

    iget v3, p0, Lcom/pubinfo/freewifialliance/view/MyTextView;->textSize:F

    float-to-int v3, v3

    mul-int/2addr v0, v3

    invoke-virtual {p0, v0}, Lcom/pubinfo/freewifialliance/view/MyTextView;->setHeight(I)V

    goto :goto_0

    .line 47
    :cond_1
    iget-object v0, p0, Lcom/pubinfo/freewifialliance/view/MyTextView;->paint1:Landroid/graphics/Paint;

    invoke-virtual {v0, v1, v2, v3}, Landroid/graphics/Paint;->measureText([CII)F

    move-result v7

    .line 48
    .local v7, "charWidth":F
    aget-char v0, v1, v2

    const/16 v4, 0xa

    if-ne v0, v4, :cond_2

    .line 49
    add-int/lit8 v9, v9, 0x1

    .line 50
    const/4 v8, 0x0

    .line 46
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 53
    :cond_2
    iget v0, p0, Lcom/pubinfo/freewifialliance/view/MyTextView;->textShowWidth:F

    sub-float/2addr v0, v8

    cmpg-float v0, v0, v7

    if-gez v0, :cond_3

    .line 54
    add-int/lit8 v9, v9, 0x1

    .line 55
    const/4 v8, 0x0

    .line 57
    :cond_3
    iget v0, p0, Lcom/pubinfo/freewifialliance/view/MyTextView;->paddingLeft:F

    add-float v4, v0, v8

    .line 58
    add-int/lit8 v0, v9, 0x1

    int-to-float v0, v0

    iget v5, p0, Lcom/pubinfo/freewifialliance/view/MyTextView;->textSize:F

    mul-float/2addr v5, v0

    iget-object v6, p0, Lcom/pubinfo/freewifialliance/view/MyTextView;->paint1:Landroid/graphics/Paint;

    move-object v0, p1

    .line 57
    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Canvas;->drawText([CIIFFLandroid/graphics/Paint;)V

    .line 59
    add-float/2addr v8, v7

    goto :goto_2
.end method
