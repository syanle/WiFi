.class public Lcom/cat/picture/ClipImageBorderView;
.super Landroid/view/View;
.source "ClipImageBorderView.java"


# instance fields
.field private mBorderColor:I

.field private mBorderWidth:I

.field private mHorizontalPadding:I

.field private mPaint:Landroid/graphics/Paint;

.field private mVerticalPadding:I

.field private mWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 43
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/cat/picture/ClipImageBorderView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 44
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 48
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/cat/picture/ClipImageBorderView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 49
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v2, 0x1

    .line 53
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 33
    const-string v0, "#FFFFFF"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/cat/picture/ClipImageBorderView;->mBorderColor:I

    .line 37
    iput v2, p0, Lcom/cat/picture/ClipImageBorderView;->mBorderWidth:I

    .line 56
    iget v0, p0, Lcom/cat/picture/ClipImageBorderView;->mBorderWidth:I

    int-to-float v0, v0

    invoke-virtual {p0}, Lcom/cat/picture/ClipImageBorderView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 57
    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    .line 55
    invoke-static {v2, v0, v1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/cat/picture/ClipImageBorderView;->mBorderWidth:I

    .line 58
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/cat/picture/ClipImageBorderView;->mPaint:Landroid/graphics/Paint;

    .line 59
    iget-object v0, p0, Lcom/cat/picture/ClipImageBorderView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 60
    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 8
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v1, 0x0

    .line 65
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 67
    invoke-virtual {p0}, Lcom/cat/picture/ClipImageBorderView;->getWidth()I

    move-result v0

    iget v2, p0, Lcom/cat/picture/ClipImageBorderView;->mHorizontalPadding:I

    mul-int/lit8 v2, v2, 0x2

    sub-int/2addr v0, v2

    iput v0, p0, Lcom/cat/picture/ClipImageBorderView;->mWidth:I

    .line 69
    invoke-virtual {p0}, Lcom/cat/picture/ClipImageBorderView;->getHeight()I

    move-result v0

    iget v2, p0, Lcom/cat/picture/ClipImageBorderView;->mWidth:I

    sub-int/2addr v0, v2

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/cat/picture/ClipImageBorderView;->mVerticalPadding:I

    .line 70
    iget-object v0, p0, Lcom/cat/picture/ClipImageBorderView;->mPaint:Landroid/graphics/Paint;

    const-string v2, "#aa000000"

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 71
    iget-object v0, p0, Lcom/cat/picture/ClipImageBorderView;->mPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 73
    iget v0, p0, Lcom/cat/picture/ClipImageBorderView;->mHorizontalPadding:I

    int-to-float v3, v0

    invoke-virtual {p0}, Lcom/cat/picture/ClipImageBorderView;->getHeight()I

    move-result v0

    int-to-float v4, v0

    iget-object v5, p0, Lcom/cat/picture/ClipImageBorderView;->mPaint:Landroid/graphics/Paint;

    move-object v0, p1

    move v2, v1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 75
    invoke-virtual {p0}, Lcom/cat/picture/ClipImageBorderView;->getWidth()I

    move-result v0

    iget v2, p0, Lcom/cat/picture/ClipImageBorderView;->mHorizontalPadding:I

    sub-int/2addr v0, v2

    int-to-float v3, v0

    invoke-virtual {p0}, Lcom/cat/picture/ClipImageBorderView;->getWidth()I

    move-result v0

    int-to-float v5, v0

    .line 76
    invoke-virtual {p0}, Lcom/cat/picture/ClipImageBorderView;->getHeight()I

    move-result v0

    int-to-float v6, v0

    iget-object v7, p0, Lcom/cat/picture/ClipImageBorderView;->mPaint:Landroid/graphics/Paint;

    move-object v2, p1

    move v4, v1

    .line 75
    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 78
    iget v0, p0, Lcom/cat/picture/ClipImageBorderView;->mHorizontalPadding:I

    int-to-float v3, v0

    invoke-virtual {p0}, Lcom/cat/picture/ClipImageBorderView;->getWidth()I

    move-result v0

    iget v2, p0, Lcom/cat/picture/ClipImageBorderView;->mHorizontalPadding:I

    sub-int/2addr v0, v2

    int-to-float v5, v0

    .line 79
    iget v0, p0, Lcom/cat/picture/ClipImageBorderView;->mVerticalPadding:I

    int-to-float v6, v0

    iget-object v7, p0, Lcom/cat/picture/ClipImageBorderView;->mPaint:Landroid/graphics/Paint;

    move-object v2, p1

    move v4, v1

    .line 78
    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 81
    iget v0, p0, Lcom/cat/picture/ClipImageBorderView;->mHorizontalPadding:I

    int-to-float v1, v0

    invoke-virtual {p0}, Lcom/cat/picture/ClipImageBorderView;->getHeight()I

    move-result v0

    iget v2, p0, Lcom/cat/picture/ClipImageBorderView;->mVerticalPadding:I

    sub-int/2addr v0, v2

    int-to-float v2, v0

    .line 82
    invoke-virtual {p0}, Lcom/cat/picture/ClipImageBorderView;->getWidth()I

    move-result v0

    iget v3, p0, Lcom/cat/picture/ClipImageBorderView;->mHorizontalPadding:I

    sub-int/2addr v0, v3

    int-to-float v3, v0

    invoke-virtual {p0}, Lcom/cat/picture/ClipImageBorderView;->getHeight()I

    move-result v0

    int-to-float v4, v0

    iget-object v5, p0, Lcom/cat/picture/ClipImageBorderView;->mPaint:Landroid/graphics/Paint;

    move-object v0, p1

    .line 81
    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 84
    iget-object v0, p0, Lcom/cat/picture/ClipImageBorderView;->mPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/cat/picture/ClipImageBorderView;->mBorderColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 85
    iget-object v0, p0, Lcom/cat/picture/ClipImageBorderView;->mPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/cat/picture/ClipImageBorderView;->mBorderWidth:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 86
    iget-object v0, p0, Lcom/cat/picture/ClipImageBorderView;->mPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 87
    iget v0, p0, Lcom/cat/picture/ClipImageBorderView;->mHorizontalPadding:I

    int-to-float v1, v0

    iget v0, p0, Lcom/cat/picture/ClipImageBorderView;->mVerticalPadding:I

    int-to-float v2, v0

    invoke-virtual {p0}, Lcom/cat/picture/ClipImageBorderView;->getWidth()I

    move-result v0

    .line 88
    iget v3, p0, Lcom/cat/picture/ClipImageBorderView;->mHorizontalPadding:I

    sub-int/2addr v0, v3

    int-to-float v3, v0

    invoke-virtual {p0}, Lcom/cat/picture/ClipImageBorderView;->getHeight()I

    move-result v0

    iget v4, p0, Lcom/cat/picture/ClipImageBorderView;->mVerticalPadding:I

    sub-int/2addr v0, v4

    int-to-float v4, v0

    iget-object v5, p0, Lcom/cat/picture/ClipImageBorderView;->mPaint:Landroid/graphics/Paint;

    move-object v0, p1

    .line 87
    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 90
    return-void
.end method

.method public setHorizontalPadding(I)V
    .locals 0
    .param p1, "mHorizontalPadding"    # I

    .prologue
    .line 94
    iput p1, p0, Lcom/cat/picture/ClipImageBorderView;->mHorizontalPadding:I

    .line 96
    return-void
.end method
